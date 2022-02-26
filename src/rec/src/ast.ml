(* The type of the abstract syntax tree (AST). *)

type expr =
  | Var of string
  | Int of int
  | Add of expr*expr
  | Sub of expr*expr
  | Mul of expr*expr
  | Div of expr*expr
  | Let of string*expr*expr
  | Proc of string*expr
  | App of expr*expr
  | IsZero of expr
  | ITE of expr*expr*expr
  | Debug of expr
  | Letrec of string*string*expr*expr
  | Set of string*expr
  | BeginEnd of expr list
  | NewRef of expr
  | DeRef of expr
  | SetRef of expr*expr
  | Pair of expr*expr
  | Fst of expr
  | Snd of expr
  | Unpair of string*string*expr*expr
  | Tuple of expr list
  | Untuple of string list * expr*expr
  | Record of (string*expr) list
  | Proj of expr*string
  | Max of expr*expr
  | Not of expr

let rec string_of_expr e =
  match e with
  | Var s -> "Var "^s
  | Int n -> "Int "^string_of_int n
  | Add(e1,e2) -> "Add(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Sub(e1,e2) -> "Sub(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Mul(e1,e2) -> "Mul(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Div(e1,e2) -> "Div(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Debug(e) -> "Debug(" ^ (string_of_expr e) ^ ")"
  | NewRef(e) -> "NewRef(" ^ (string_of_expr e) ^ ")"
  | DeRef(e) -> "DeRef(" ^ (string_of_expr e) ^ ")"
  | SetRef(e1,e2) -> "SetRef(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Let(x,def,body) -> "Let("^x^","^string_of_expr def ^","^ string_of_expr body ^")"
  | Proc(x,body) -> "Proc("^x^"," ^ string_of_expr body ^")"
  | App(e1,e2) -> "App("^string_of_expr e1 ^"," ^ string_of_expr e2^")"
  | IsZero(e) -> "Zero?("^string_of_expr e ^")"
  | ITE(e1,e2,e3) -> "ITE("^string_of_expr e1^"," ^ string_of_expr e2^"," ^ string_of_expr e3  ^")"
  | Letrec(x,param,def,body) -> "Letrec("^x^","^ param ^","^ string_of_expr def ^","^ string_of_expr body ^")"
  | Set(x,rhs) -> "Set("^x^","^string_of_expr rhs^")"
  | BeginEnd(es) -> "BeginEnd(" ^ String.concat "," (List.map string_of_expr es) ^")"
  | Pair(e1,e2) -> "Pair("^string_of_expr e1^","^string_of_expr e2^")"
  | Fst(e) -> "Fst("^string_of_expr e^")"
  | Snd(e) -> "Snd("^string_of_expr e^")"
  | Not(e) -> "Not("^string_of_expr e^")"
  | Max(e1,e2) -> "Max("^string_of_expr e1^","^string_of_expr e2^")"
  | Unpair(id1,id2,e1,e2) -> "unpair("^id1^","^id2^")="^string_of_expr
                               e1^" in "^string_of_expr e2
  | Tuple(es) -> "<" ^ String.concat "," (List.map string_of_expr es) ^">"
  | Untuple(ids,e1,e2) -> "untuple <"^ String.concat "," ids ^ ">="^
                          string_of_expr e1 ^" in "^string_of_expr e2
  | Record(fs) -> "{"^String.concat "," (List.map (fun (id,e) ->
  id^"="^string_of_expr e) fs) ^"}"
  | Proj(e,id) -> string_of_expr e ^"."^id

