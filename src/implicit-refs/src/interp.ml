open Ast
open Ds
    
let g_store = Store.empty_store 20 (NumVal 0)

let rec apply_proc ev1 ev2 =
  match ev1 with
  | ProcVal(par,body,en) ->
    return en >>+
    extend_env par (RefVal (Store.new_ref g_store ev2)) >>+
    eval_expr body
  | _ -> error "apply_proc: Not a procVal"
and
  eval_expr : expr -> exp_val ea_result = fun e ->
  match e with
  | Int(n) -> return @@ NumVal n
  | Var(id) -> 
    apply_env id >>=  (* lookup the id in the environment *)
    int_of_refVal >>= 
    Store.deref g_store
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
    eval_expr def >>= fun ev ->
    let l = Store.new_ref g_store ev
    in extend_env v (RefVal l) >>+
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
  | Pair(e1,e2) ->
    eval_expr e1 >>= fun ev1 ->
    eval_expr e2 >>= fun ev2 ->
    return @@ PairVal(ev1,ev2)
  (* | Fst(e) ->
   *   eval_expr e >>=
   *   pair_of_pairVal >>= fun p ->
   *   return @@ fst p 
   * | Snd(e) ->
   *   eval_expr e >>=
   *   pair_of_pairVal >>= fun p ->
   *   return @@ snd p *)
  | Unpair(id1,id2,def,target) ->
    eval_expr def >>=
    pair_of_pairVal >>= fun (ev1,ev2) ->
    let l1 = Store.new_ref g_store ev1
    and l2 = Store.new_ref g_store ev2
    in 
    extend_env id1 (RefVal l1) >>+
    extend_env id2 (RefVal l2) >>+
    eval_expr target
  | Proc(id,e)  ->
    lookup_env >>= fun en ->
    return (ProcVal(id,e,en))
  | App(e1,e2)  -> 
    eval_expr e1 >>= fun v1 ->
    eval_expr e2 >>= fun v2 ->
    apply_proc v1 v2
  | Letrec(id,par,e,target) ->
    let l = Store.new_ref g_store UnitVal in
    extend_env id (RefVal l) >>+
    (lookup_env >>= fun env ->
     Store.set_ref g_store l (ProcVal(par,e,env)) >>= fun _ ->
      eval_expr target
    )
  | Set(id,e) ->
    eval_expr e >>= fun ev ->
    apply_env id >>=
    int_of_refVal >>= fun l ->
    Store.set_ref g_store l ev >>= fun _ ->
    return UnitVal
  | BeginEnd(es) ->
    List.fold_left (fun c e -> c >>= fun _ -> eval_expr e) (return UnitVal) es
  | Debug(_e) ->
        string_of_env >>= fun str_env ->
    let str_store = Store.string_of_store string_of_expval g_store 
    in (print_endline (str_env^"\n"^str_store);
        error "Debug called")
  | _ -> failwith ("Not implemented: "^string_of_expr e)



(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast

let lexer s =
  let lexbuf = Lexing.from_string s
  in Lexer.read lexbuf 


(* Interpret an expression *)
let interp (s:string) : exp_val result =
  let c = s |> parse |> eval_expr
  in run c


let ex3 = "
let x = 0
in letrec even(dummy) 
            = if zero?(x)
              then 1 
              else begin 
                    set x = x-1; 
                    (odd 888) 
                   end 
          odd(dummy) 
            = if zero?(x)
              then 0 
              else begin 
                    set x = x-1;
                    (even 888) 
                   end 
   in begin set x = 13; 
            (odd -888) 
      end "
