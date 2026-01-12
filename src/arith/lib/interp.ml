open Ds
open Parser_plaf.Ast
open Parser_plaf.Parser
    
(** [eval_expr e] evaluates expression [e] *)
let rec eval_expr : expr -> int result =
  fun e ->
  match e with
  | Int n      -> returnE n
  | Add(e1,e2) ->
    eval_expr e1 >>>= fun n ->
    eval_expr e2 >>>= fun m ->
    returnE (n+m)   
  | Sub(e1,e2) ->
    eval_expr e1 >>>= fun n ->
    eval_expr e2 >>>= fun m ->
    returnE (n-m)   
  | Mul(e1,e2) ->
    eval_expr e1 >>>= fun n ->
    eval_expr e2 >>>= fun m ->
    returnE (n*m)   
  | Div(e1,e2) ->
    eval_expr e1 >>>= fun n ->
    eval_expr e2 >>>= fun m ->
    if m=0
    then errorE "Division by zero"
    else returnE (n/m)
  | _ -> failwith "Not implemented yet!"

(** [eval_prog e] evaluates program [e] *)
let eval_prog (AProg(_,e)) =
  eval_expr e

(** [interp s] parses [s] and then evaluates it *)
let interp (e:string) : int result =
  e |> parse |> eval_prog



