open Parser_plaf.Ast
open Parser_plaf.Parser
open ReM
open Ds
  
let g_store = Store.empty_store 20 (NumVal 0)

let rec eval_expr : expr -> exp_val ea_result =
  fun e ->
  match e with
  | Int(n) ->
    return @@ NumVal n
  | Var(id) ->
    apply_env id
  | QualVar(module_id,var_id) -> 
    apply_env_qual module_id var_id
  | Unit -> return UnitVal
  | Add(e1,e2) ->
    eval_expr e1 >>=
    int_of_numVal >>= fun n1 ->
    eval_expr e2 >>=
    int_of_numVal >>= fun n2 ->
    return @@ NumVal (n1+n2)
  | Sub(e1,e2) ->
    eval_expr e1 >>=
    int_of_numVal >>= fun n1 ->
    eval_expr e2 >>=
    int_of_numVal >>= fun n2 ->
    return @@ NumVal (n1-n2)
  | Mul(e1,e2) ->
    eval_expr e1 >>=
    int_of_numVal >>= fun n1 ->
    eval_expr e2 >>=
    int_of_numVal >>= fun n2 ->
    return @@ NumVal (n1*n2)
  | Div(e1,e2) ->
    eval_expr e1 >>=
    int_of_numVal >>= fun n1 ->
    eval_expr e2 >>=
    int_of_numVal >>= fun n2 ->
    if n2==0
    then error "Division by zero"
    else return @@ NumVal (n1/n2)
  | Let(id,def,body) ->
    eval_expr def >>= 
    extend_env id >>+
    eval_expr body 
  | ITE(e1,e2,e3) ->
    eval_expr e1 >>=
    bool_of_boolVal >>= fun b ->
    if b 
    then eval_expr e2
    else eval_expr e3
  | IsZero(e) ->
    eval_expr e >>=
    int_of_numVal >>= fun n ->
    return @@ BoolVal (n = 0)
  | Proc(id,_t,e)  ->
    lookup_env >>= fun en ->
    return (ProcVal(id,e,en))
  | App(e1,e2)  -> 
    eval_expr e1 >>= 
    clos_of_procVal >>= fun (id,e,en) ->
    eval_expr e2 >>= fun ev ->
    return en >>+
    extend_env id ev >>+
    eval_expr e
  | Letrec([id,par,_tParam,_tRes,e],target) ->
    extend_env_rec id par e >>+
    eval_expr target 
  | BeginEnd([]) ->
    return UnitVal
  | BeginEnd(es) ->
    sequence (List.map eval_expr es) >>= fun l ->
    return (List.hd (List.rev l))  | NewRef(e) ->
    eval_expr e >>= fun ev ->
    return @@ RefVal (Store.new_ref g_store ev)
  | DeRef(e) ->
    eval_expr e >>=
    int_of_refVal >>= 
    Store.deref g_store 
  | SetRef(e1,e2) ->
    eval_expr e1 >>=
    int_of_refVal >>= fun v1 ->
    eval_expr e2 >>= fun v2 ->
    Store.set_ref g_store v1 v2 >>= fun _ ->
    return UnitVal
  | Open(id,e) ->
    lookup_module_bindings id >>= 
    extend_env_with_bindings >>+
    eval_expr e
  | Debug(_e) ->
    string_of_env >>= fun str_env ->
    Store.string_of_store string_of_expval g_store >>= fun str_store ->
    print_endline (str_env^str_store);
    error "Reached breakpoint"
  | _ -> failwith ("Not implemented: "^string_of_expr e)
and
  eval_module_definition : module_body -> env ea_result =
  fun (ModuleBody vdefs) ->
  let rec eval_body_defs glo_env vdefs =
    (match vdefs with
     | [] -> lookup_env
     | (var,decl)::t ->
       lookup_env >>+
       (append_env_rev glo_env >>+
        eval_expr decl >>=
        extend_env var) >>+
       eval_body_defs glo_env t)
  in lookup_env >>= fun glo_env -> (* grab prior module declarations  *)
  empty_env () >>+                 (* start from empty environment *)
  eval_body_defs glo_env vdefs     (* add body definitions *)
and
  eval_module_definitions : decl list -> env ea_result =
  fun ms ->
  (match ms with
  | [] -> lookup_env
  | Module(mname,_minterface,mbody)::t ->
    eval_module_definition mbody >>= 
    extend_env_mod mname >>+
    eval_module_definitions t
  | _ -> error "eval_module_definitions: not a valid module")
and
   eval_prog (AProg(ms,e)) : exp_val ea_result =
   eval_module_definitions ms >>+
   eval_expr e

(** [interp s] parses [s] and then evaluates it *)
let interp (s:string) : exp_val result =
  let c = s |> parse |> eval_prog
  in run c

(** [interpf file_name] evaluates program in file [file_name] *)
let interpf (file_name: string) : exp_val result = 
  let c = file_name |> parsef |> eval_prog in
  run c
