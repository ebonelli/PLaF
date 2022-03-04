open Ast
open ReM
open Ds


  
let g_store = Store.empty_store 20 (NumVal 0)


let rec apply_clos : string*Ast.expr*env -> exp_val -> exp_val ea_result =
  fun (id,e,en) ev ->
  return en >>+
  extend_env id ev >>+
  eval_expr e
and
  eval_expr : expr -> exp_val ea_result =
  fun e ->
  match e with
  | Int(n) -> return @@ NumVal n
  | Var(id) -> apply_env id
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
    clos_of_procVal >>= fun clos ->
    eval_expr e2 >>= 
    apply_clos clos 
  | Letrec(_ty,id,par,_tParam,e,target) ->
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
    lookup_module id >>= 
    append_env >>+
    eval_expr e
  | Debug(_e) ->
    string_of_env >>= fun str_env ->
    Store.string_of_store string_of_expval g_store >>= fun str_store ->
    print_endline (str_env^str_store);
    error "Reached breakpoint"
  | _ -> failwith ("Not implemented: "^string_of_expr e)
and
  (* add_module_definition : module_body -> env ea_result = fun (AModBody vdefs) ->
   * lookup_env >>= fun en ->
   * (List.fold_left (fun p (AValDef(var,decl))  ->
   *      p >>= fun (env,renv) ->
   *      return env >>+
   *      eval_expr decl >>= fun ev ->
   *      return (ExtendEnv(var,ev,env),ExtendEnv(var,ev,renv)))
   *     (return (en,EmptyEnv))
   *     vdefs) >>= fun (_,renv) ->
   * return renv *)
  eval_module_definition : module_body -> env ea_result = fun (AModBody vdefs) ->
  lookup_env >>= fun glo_env ->
  List.fold_left (fun loc_env (var,decl)  ->
       loc_env >>+
       (append_env_rev glo_env >>+
        eval_expr decl >>=
        extend_env var))
      (empty_env ())
      vdefs
and
  eval_module_definitions : module_decl list -> env ea_result = fun ms ->
  List.fold_left
    (fun curr_en (AModDecl(mname,_minterface,mbody)) ->
       curr_en >>+
       (eval_module_definition mbody >>= 
        extend_env_mod mname))
    lookup_env
    ms
 and
   eval_prog (AProg(ms,e)) : exp_val ea_result =
   eval_module_definitions ms >>+
   eval_expr e



