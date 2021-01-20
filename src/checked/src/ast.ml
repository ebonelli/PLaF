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
  | Proc of string*texpr*expr
  | App of expr*expr
  | Letrec of string*string*texpr*texpr*expr*expr
  | Unit
  | Set of string*expr
  | BeginEnd of expr list
  | NewRef of expr
  | DeRef of expr
  | SetRef of expr*expr
  | Fst of expr
  | Snd of expr
  | Tuple of expr list
  | Pair of expr*expr
  | Unpair of string*string*expr*expr                        
  | Record of (string*expr) list
  | Proj of expr*string
  | Debug of expr
and
  texpr =
  | IntType
  | BoolType
  | UnitType
  | FuncType of texpr*texpr
  | RefType of texpr
  | RecordType of (string*texpr) list
  | PairType of texpr*texpr
                
type prog = AProg of expr


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
  | Proc(x,t,body) -> "Proc("^x^":"^string_of_texpr t^"," ^ string_of_expr body ^")"
  | App(e1,e2) -> "App("^string_of_expr e1 ^"," ^ string_of_expr e2^")"
  | IsZero(e) -> "Zero?("^string_of_expr e ^")"
  | ITE(e1,e2,e3) -> "IfThenElse("^string_of_expr e1^"," ^ string_of_expr e2^"," ^ string_of_expr e3  ^")"
  | Letrec(x,param,tPara,tRes,def,body) -> "Letrec("^string_of_texpr
  tRes^" "^x^","^param^":"^string_of_texpr tPara ^","^ string_of_expr def ^","^ string_of_expr body ^")"
  | Set(x,rhs) -> "Set("^x^","^string_of_expr rhs^")"
  | BeginEnd(es) -> "BeginEnd(" ^ List.fold_left (fun x y -> x^","^y)
                      "" (List.map string_of_expr es) ^")"
  | Record(fs) -> "Record("^String.concat "," (List.map (fun (id,e) ->
  id^":="^string_of_expr e)  fs)^")"
  | Proj(e,id) -> "Projection("^string_of_expr e^"."^id^")"
  | Fst(e) -> "Fst("^string_of_expr e^")"
  | Snd(e) -> "Snd("^string_of_expr e^")"
  | Pair(e1,e2) -> "Pair(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Unpair(x,y,e1,e2) -> "Unpair("^x^","^y^","^string_of_expr e1 ^","^ string_of_expr e2 ^")"
  | Debug(e) -> "Debug("^string_of_expr e^")"
  | _ -> failwith "string_of_expr: not defined"
and string_of_texpr = function
  | IntType -> "int"
  | BoolType -> "bool"
  | UnitType -> "unit"
  | FuncType(t1,t2) -> "("^string_of_texpr t1^"->"^string_of_texpr t2^")"
  | RefType(t) -> "Ref("^string_of_texpr t^")"
  | RecordType(fs) -> "RecordType(" ^ String.concat "," (List.map (fun
  (id,ty) -> id ^":"^
  string_of_texpr ty) fs) ^")" 
  | PairType(t1,t2) -> "("^string_of_texpr t1^"*"^string_of_texpr t2^")"

let string_of_prog (AProg e)  = string_of_expr e

        
