(* The type of the abstract syntax tree (AST). *)

type expr =
  | Var of string
  | Int of int
  | QualVar of string*string
  | Add of expr*expr
  | Sub of expr*expr
  | Mul of expr*expr
  | Div of expr*expr
  | Let of string*expr*expr
  | IsZero of expr
  | ITE of expr*expr*expr
  | Proc of string*texpr*expr
  | App of expr*expr
  | Letrec of texpr*string*string*texpr*expr*expr
  | Set of string*expr
  | BeginEnd of expr list
  | NewRef of expr
  | DeRef of expr
  | SetRef of expr*expr
  | Unit
  | Open of string*expr
  | Debug of expr
and
  texpr =
  | IntType
  | BoolType
  | UnitType
  | FuncType of texpr*texpr
  | RefType of texpr
and
  vdecl = string*texpr
and
  vdef = string*expr

type interface = ASimpleInterface of vdecl list
type module_body = AModBody of vdef list
type module_decl = AModDecl of string*interface*module_body
type prog = AProg of (module_decl list)*expr


let rec string_of_expr e =
  match e with
  | Var s -> "Var "^s
  | Int n -> "Int "^string_of_int n
  | QualVar(mid,vid) -> "QualVar(" ^ mid ^ "," ^ mid ^ ")"
  | Add(e1,e2) -> "Add(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Sub(e1,e2) -> "Sub(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Mul(e1,e2) -> "Mul(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Div(e1,e2) -> "Div(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Open(x,e) -> "Open(" ^x^","^ (string_of_expr e) ^ ")"
  | NewRef(e) -> "NewRef(" ^ (string_of_expr e) ^ ")"
  | DeRef(e) -> "DeRef(" ^ (string_of_expr e) ^ ")"
  | SetRef(e1,e2) -> "SetRef(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Let(x,def,body) -> "Let("^x^","^string_of_expr def ^","^ string_of_expr body ^")"
  | Proc(x,t,body) -> "Proc("^x^":"^string_of_texpr t^"," ^ string_of_expr body ^")"
  | App(e1,e2) -> "App("^string_of_expr e1 ^"," ^ string_of_expr e2^")"
  | IsZero(e) -> "Zero?("^string_of_expr e ^")"
  | ITE(e1,e2,e3) -> "IfThenElse("^string_of_expr e1^"," ^ string_of_expr e2^"," ^ string_of_expr e3  ^")"
  | Letrec(tRes,x,param,tPara, def,body) -> "Letrec("^string_of_texpr
  tRes^" "^x^","^param^":"^string_of_texpr tRes ^","^ string_of_expr def ^","^ string_of_expr body ^")"
  | Set(x,rhs) -> "Set("^x^","^string_of_expr rhs^")"
  | BeginEnd(es) -> "BeginEnd(" ^ List.fold_left (fun x y -> x^","^y)
                      "" (List.map string_of_expr es) ^")"
  | Unit -> "Unit"
  | Debug(e) -> "Debug(" ^ (string_of_expr e) ^ ")"
and string_of_texpr = function
  | IntType -> "int"
  | BoolType -> "bool"
  | UnitType -> "unit"
  | FuncType(t1,t2) -> "("^string_of_texpr t1^"->"^string_of_texpr t2^")"
  | RefType(t) -> "Ref("^string_of_texpr t^")"



let string_of_prog (AProg (ms,e))  = string_of_expr e
