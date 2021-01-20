(* The type of the abstract syntax tree (AST). *)

type expr =
  | Var of string
  | Int of int
  | Add of expr*expr
  | Sub of expr*expr
  | Mul of expr*expr
  | Div of expr*expr
  | Let of string*expr*expr
  | IsZero of expr
  | ITE of expr*expr*expr
  | Proc of string*expr
  | App of expr*expr
  | Letrec of string*string*expr*expr
  | Unit
  | Set of string*expr
  | NewRef of expr
  | DeRef of expr
  | SetRef of expr*expr
  | BeginEnd of expr list
  | Fst of expr
  | Snd of expr
  | Tuple of expr list
  | Pair of expr*expr
  | Unpair of string*string*expr*expr
  | Record of (string*expr) list
  | Proj of expr*string              
  | Debug of expr

let rec string_of_expr e =
  match e with
  | Var s -> "Var "^s
  | Int n -> "Int "^string_of_int n
  | Unit -> "Unit"
  | Add(e1,e2) -> "Add(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Sub(e1,e2) -> "Sub(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Mul(e1,e2) -> "Mul(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Div(e1,e2) -> "Div(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | NewRef(e) -> "NewRef(" ^ (string_of_expr e) ^ ")"
  | DeRef(e) -> "DeRef(" ^ (string_of_expr e) ^ ")"
  | SetRef(e1,e2) -> "SetRef(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Let(x,def,body) -> "Let("^x^","^string_of_expr def ^","^ string_of_expr body ^")"
  | Proc(x,body) -> "Proc("^x^"," ^ string_of_expr body ^")"
  | App(e1,e2) -> "App("^string_of_expr e1 ^"," ^ string_of_expr e2^")"
  | IsZero(e) -> "Zero?("^string_of_expr e ^")"
  | ITE(e1,e2,e3) -> "IfThenElse("^string_of_expr e1^"," ^ string_of_expr e2^"," ^ string_of_expr e3  ^")"
  | Letrec(x,param,def,body) -> "Letrec("^x^","^ param ^","^ string_of_expr def ^","^ string_of_expr body ^")"
  | Set(x,rhs) -> "Set("^x^","^string_of_expr rhs^")"
  | BeginEnd(es) -> "BeginEnd(" ^ List.fold_left (fun x y -> x^","^y)
                      "" (List.map string_of_expr es) ^")"
  | Debug(e) -> "Debug("^string_of_expr e^")"
  | Fst(e) -> "Fst("^string_of_expr e^")"
  | Snd(e) -> "Snd("^string_of_expr e^")"
  | Pair(e1,e2) -> "Pair(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Unpair(x,y,e1,e2) -> "Unpair("^x^","^y^","^string_of_expr e1 ^","^ string_of_expr e2 ^")"
  | _ -> failwith "Not implemented!"

