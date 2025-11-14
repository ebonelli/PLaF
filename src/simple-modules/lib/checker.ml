open Parser_plaf.Ast
open Parser_plaf.Parser
open ReM
open Dst
    

(*  ;;;;;;;;;;;;;;;; type checker ;;;;;;;;;;;;;;;; *)

  
let rec
  chk_prog (AProg (ms,e)) =
  type_of_modules ms >>+
  chk_expr e
and
  (*  code for when interface of modules are not type-checked 
   *
   * add_module_type_definitions env ms:tenv =
   * List.fold_left (fun en (AModDecl(mname,minterface,mbody)) ->
   *     ExtendTEnvMod(mname,type_of_module_body en mbody,en) ) env ms *)
  type_of_modules : decl list -> tenv tea_result =
  fun mdecls ->          
  List.fold_left
    (fun curr_tenv md ->
      match md with
      | Module(mname,ModuleSimpleInterface
                               (expected_iface),mbody) ->
      curr_tenv >>+
      (type_of_module_body mbody >>= fun i_body ->
      if (is_subtype i_body expected_iface)
      then
        extend_tenv_mod mname (var_decls_to_tenv expected_iface)
      else
        error @@ "Subtype failure: "^mname)
      | _ -> error "type_of_modules: not a module declaration"
    )
    lookup_tenv
    mdecls
    
and
  type_of_module_body : module_body -> tenv tea_result =
  fun (ModuleBody vdefs) ->
  lookup_tenv >>= fun glo_tenv ->
  (List.fold_left (fun loc_tenv (ValueDef (var,decl))  ->
       loc_tenv >>+ 
       (append_tenv_rev glo_tenv >>+
        chk_expr decl >>=
        extend_tenv var))
      (empty_tenv ())
      vdefs) >>= fun tmbody ->
  return @@ reverse_tenv tmbody
and
  chk_expr : expr -> texpr tea_result =
  fun e ->
  match e with
  | Int _n          ->
    return IntType
  | Var id          ->
    apply_tenv id 
  | QualVar(module_id,var_id) -> 
    apply_tenv_qual module_id var_id 
  | Unit -> return UnitType 
  | ITE(e1, e2, e3)    ->
    chk_expr e1  >>= fun t1 ->
    chk_expr e2 >>= fun t2 ->
    chk_expr e3 >>= fun t3 ->
    if t1=BoolType && t2=t3 
    then return t2
    else error "ITE: Type error"
  | Add(e1, e2) | Mul(e1,e2) | Sub(e1,e2) | Div(e1,e2)    ->
    chk_expr e1 >>= fun t1 ->
    chk_expr e2 >>= fun t2 ->
    if t1=IntType && t2=IntType
    then return IntType
    else error "Arguments must be ints"
  | IsZero(e) ->
    chk_expr e >>= fun t1 -> 
    if t1=IntType
    then return BoolType
    else error "Zero?: argument must be int"
  | Let(x, e1, e2) ->
    chk_expr e1 >>=
    extend_tenv x >>+ 
    chk_expr e2
  | Proc(_id,None,_e)      ->
     error "proc: missing type annotation"
  | Proc(id,Some ty,e)      ->
    extend_tenv id ty >>+
    chk_expr e >>= fun tc ->
    return (FuncType(ty,tc))
  | App(e1,e2)     ->
    chk_expr e1 >>=
    args_of_funcType >>= fun (t1l,t1r) ->
    chk_expr e2  >>= fun t2 ->
    if t1l=t2
    then return t1r 
    else error "App: argument does not have correct type" 
  | Letrec([id,param,Some tParam,Some tRes,body],e) ->
    extend_tenv id (FuncType(tParam,tRes)) >>+ 
    (extend_tenv param tParam >>+
     chk_expr body >>= fun t ->
     if t=tRes 
     then chk_expr  e
     else error "LetRec: Types of recursive function does not match declaration")
  | Letrec([_id,_param,_tParam,_tRes,_body],_e) ->
    error "letrec: missing type annotations"
  | Set(_id,_e) ->
      error "EXPLICIT-REFS: Set not a valid operation"
  | BeginEnd(es) ->
    List.fold_left (fun _ e -> chk_expr e) (return UnitType) es
  | NewRef(e) ->
    chk_expr e >>= fun t ->
    return (RefType(t))
  | DeRef(e) ->
    chk_expr e >>= 
    arg_of_refType
  | SetRef(e1,e2) ->
    chk_expr e1 >>=
    arg_of_refType >>= fun tval ->
    chk_expr e2 >>= fun t2 ->
    if tval=t2
    then return UnitType
    else error "SetRef: type of LHS and RHS do not match"
  | Open(module_id,e) ->
    lookup_module_type module_id >>= 
    extend_tenv_with_tbindings >>+
    chk_expr e
  | Debug(_e) ->
    string_of_tenv >>= fun str ->
    print_endline str;
    return UnitType
  | _ -> failwith "chk_expr: not implemented"

(* Type-check an expression *)
let chk (e:string) : texpr result =
  let c = e |> parse |> chk_prog
  in run_teac c

(** Type check an expression in a file *)
let chkf (file_name: string) : texpr result = 
  let c = file_name |> parsef |> chk_prog
  in run_teac c

