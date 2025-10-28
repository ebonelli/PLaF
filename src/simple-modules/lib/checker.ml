open Ast
open ReM
open Dst
    

(*  ;;;;;;;;;;;;;;;; type checker ;;;;;;;;;;;;;;;; *)


  
let rec
  type_of_prog (AProg (ms,e)) =
  type_of_modules ms >>+
  type_of_expr e
and
  (*  code for when interface of modules are not type-checked 
   *
   * add_module_type_definitions env ms:tenv =
   * List.fold_left (fun en (AModDecl(mname,minterface,mbody)) ->
   *     ExtendTEnvMod(mname,type_of_module_body en mbody,en) ) env ms *)
  type_of_modules : module_decl list -> tenv tea_result = fun mdecls ->          
  List.fold_left
    (fun curr_tenv (AModDecl(mname,ASimpleInterface(expected_iface),mbody)) ->
      curr_tenv >>+
      (type_of_module_body mbody >>= fun i_body ->
      if (is_subtype i_body expected_iface)
      then
        extend_tenv_mod mname (var_decls_to_tenv expected_iface)
      else
        error @@ "Subtype failure: "^mname)
    )
    lookup_tenv
    mdecls
    
and
  type_of_module_body : module_body -> tenv tea_result = fun (AModBody vdefs) ->
  lookup_tenv >>= fun glo_tenv ->
  (List.fold_left (fun loc_tenv (var,decl)  ->
       loc_tenv >>+
       (append_tenv_rev glo_tenv >>+
        type_of_expr decl >>=
        extend_tenv var))
      (empty_tenv ())
      vdefs) >>= fun tmbody ->
  return @@ reverse_tenv tmbody
and
  type_of_expr : expr -> texpr tea_result = fun e ->
  match e with
  | Int _n          ->
    return IntType
  | Var id          ->
    apply_tenv id 
  | QualVar(module_id,var_id) -> 
    apply_tenv_qual module_id var_id 
  | Unit -> return UnitType 
  | ITE(e1, e2, e3)    ->
    type_of_expr e1  >>= fun t1 ->
    type_of_expr e2 >>= fun t2 ->
    type_of_expr e3 >>= fun t3 ->
    if t1=BoolType && t2=t3 
    then return t2
    else error "ITE: Type error"
  | Add(e1, e2) | Mul(e1,e2) | Sub(e1,e2) | Div(e1,e2)    ->
    type_of_expr e1 >>= fun t1 ->
    type_of_expr e2 >>= fun t2 ->
    if t1=IntType && t2=IntType
    then return IntType
    else error "Arguments must be ints"
  | IsZero(e) ->
    type_of_expr e >>= fun t1 -> 
    if t1=IntType
    then return BoolType
    else error "Zero?: argument must be int"
  | Let(x, e1, e2) ->
    type_of_expr e1 >>=
    extend_tenv x >>+ 
    type_of_expr e2
  | Proc(x,ty,e)      ->
    extend_tenv x ty >>+
    type_of_expr e >>= fun tc ->
    return @@ FuncType(ty,tc)
  | App(e1,e2)     ->
    type_of_expr e1 >>=
    args_of_funcType >>= fun (t1l,t1r) ->
    type_of_expr e2  >>= fun t2 ->
    if t1l=t2
    then return t1r 
    else error "App: argument does not have correct type" 
  | Letrec(tRes,id,param,tParam,body,e) ->
    extend_tenv id (FuncType(tParam,tRes)) >>+ 
    (extend_tenv param tParam >>+
     type_of_expr body >>= fun t ->
     if t=tRes 
     then type_of_expr  e
     else error "LetRec: Types of recursive function does not match declaration")
  | Set(_id,_e) ->
      error "EXPLICIT-REFS: Set not a valid operation"
  | BeginEnd(es) ->
    List.fold_left (fun _ e -> type_of_expr e) (return UnitType) es
  | NewRef(e) ->
    type_of_expr e >>= fun t ->
    return @@ RefType(t)
  | DeRef(e) ->
    type_of_expr e >>= 
    arg_of_refType
  | SetRef(e1,e2) ->
    type_of_expr e1 >>=
    arg_of_refType >>= fun tval ->
    type_of_expr e2 >>= fun t2 ->
    if tval=t2
    then return UnitType
    else error "SetRef: type of LHS and RHS do not match"
  | Open(module_id,e) ->
    lookup_module_type module_id >>= fun tenv ->
    append_tenv tenv >>+
    type_of_expr e
  | Debug(_e) ->
    string_of_tenv >>= fun str ->
    print_endline str;
    return UnitType


