open Ast
open ReM
open Ds


(* The store *)
  
let g_store = Store.empty_store 20 (NumVal 0)

(* Initial environment *)


let rec apply_proc : exp_val -> exp_val -> exp_val ea_result = fun f a ->
  match f with
  | ProcVal (id,body,env) ->
    return env >>+
    extend_env id a >>+
    eval_expr body
  | _ -> error "apply_proc: Not a procVal"
and
  eval_expr : expr -> exp_val ea_result = fun e ->
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
  | Let(v,def,body) ->
    eval_expr def >>= 
    extend_env v >>+
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
  | Proc(id,t,e)  ->
    lookup_env >>= fun en ->
    return (ProcVal(id,e,en))
  | App(e1,e2)  -> 
    eval_expr e1 >>= fun v1 ->
    eval_expr e2 >>= fun v2 ->
    apply_proc v1 v2
  | Letrec(ty,id,par,tParam,e,target) ->
    extend_env_rec id par e >>+
    eval_expr target 
  | BeginEnd(es) ->
    List.fold_left (fun c e -> c >>= fun _ -> eval_expr e) (return UnitVal) es
  | NewRef(e) ->
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
  | Debug(e) ->
    string_of_env >>= fun str_env ->
    Store.string_of_store string_of_expval g_store >>= fun str_store ->
    print_endline (str_env^str_store);
    return UnitVal
  | _ -> error ("Not implemented: "^string_of_expr e)
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
  (List.fold_left (fun loc_env (var,decl)  ->
       loc_env >>+
       (append_env_rev glo_env >>+
        eval_expr decl >>=
        extend_env var))
      (empty_env ())
      vdefs)
and
  eval_module_definitions : module_decl list -> env ea_result = fun ms ->
  List.fold_left
    (fun curr_en (AModDecl(mname,minterface,mbody)) ->
       curr_en >>+
       (eval_module_definition mbody >>= 
        extend_env_mod mname))
    lookup_env
    ms
 and
   eval_prog (AProg(ms,e)) : exp_val ea_result =
   eval_module_definitions ms >>+
   eval_expr e



(* Code examples *)

let ex1 = "
let x = 7  
in let y = 2 
   in let y = let x = x-1 
              in x-y 
      in (x-8)- y"

let ex2 = "
   let g = 
      let counter = 0 
      in proc(d:int) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (g 11)-(g 22)"

let ex3 = "
  let g = 
     let counter = newref(0) 
     in proc (d:int) {
         begin
          setref(counter, deref(counter)+1);
          deref(counter)
         end
       }
  in (g 11) - (g 22)"

let ex4 = "
   let g = 
      let counter = 0 
      in proc(d:int) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (proc (x:int) { x + x }
(g 0))"
(* 3 in call_by-name *)
(* 2 in call_by-need *)











(*
       ;; if the interpreter always called the typechecker, or put
       ;; only declared variables in the module, this would raise an
       ;; error.  Exercise: make this modification.
*)

let ex_modules_take_one_value_but_interface_bad = "
         module m interface []  body [u = 3]
         from m take u"
         (*
; this version for permissive interp
        error 3
; this version for strict interp
;         error error
        *)

let ex_modules_take_bad_value =
  "module m interface []  body [u = 3]
         from m take x"
(*error error *)       



let ex_modules_two_vals_bad_interface_1 =
  "module m interface [u : int v : bool]  
                  body [u = 44 v = 33]
         (from m take u)-(from m take v)"
(*        error 11*)



let ex_module_extra_vals_are_ok_2 = "
          module m interface [y : int] body [x = 3 y = 4]
          from m take y"
(*         int*)

let ex_modules_two_vals_bad_interface_14 =
  "module m interface 
            [v : int 
             u : bool]
          body 
           [v = zero?(0) u = 33]
         (from m take u)-(from m take v)"
(*      error*)


let ex_modules_check_let_1 =
  "module m interface      [u : int v : int]
                  body [u = 44  v = -(u,11)]
         -(from m take u, from m take v)"
(*     int 11*)

let ex_modules_check_let_2_0 =
  "module m1 interface [u : int] body [u = 44]
         module m2 interface [v : int] 
          body 
           [v = (from m1 take u)-11]
         (from m1 take u)-(from m2 take v)"
(*     int 11*)

let ex_modules_check_let_2_05 =
  "module m1 interface [u : int] body [u = 44]
         module m2 interface [v : int] body [v = (from m1 take u)-11]
         33"
(*      int 33)                       ; doesn't actually import
        anything *)

let ex_modules_check_let_2_1 =
  "module m1 interface [u : int] body [u = 44]
         module m2   
          interface [v : int] 
          body [v = (from m1 take u)-11]
         (from m1 take u)-(from m2 take v)"
(*        int 11*)

let ex_modules_20 = "
module m2
interface [v : int] 
body
[v = (from m1 take u) - 11]
module m1 interface [u : int] body [u = 44]
(from m1 take u) - (from m2 take v)"
(* error *)

