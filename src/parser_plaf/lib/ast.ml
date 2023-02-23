(* The type of the abstract syntax tree (AST). *)

type 
  prog = AProg of (cdecl list)*expr
and
  expr =
  | Var of string
  | Int of int
  | Add of expr*expr
  | Sub of expr*expr
  | Mul of expr*expr
  | Div of expr*expr
  | Abs of expr
  | Min of expr*expr
  | Sum of expr list
  | Prod of expr list
  | Avg of expr list
  | Maxl of expr list
  | Let of string*expr*expr
  | IsZero of expr
  | ITE of expr*expr*expr
  | Proc of string*texpr option*expr
  | App of expr*expr
  | Letrec of rdecs*expr
  | Unit
  | Set of string*expr
  | NewRef of expr
  | DeRef of expr
  | SetRef of expr*expr
  | BeginEnd of expr list
  | Fst of expr
  | Snd of expr
  | Tuple of expr list
  | Untuple of string list * expr*expr               
  | Pair of expr*expr
  | Unpair of string*string*expr*expr
  | EmptyTree
  | Node of expr*expr*expr
  | CaseT of expr*expr*string*string*string*expr
  | Record of (string*expr) list
  | Proj of expr*string
  | Self
  | Send of expr*string*expr list
  | Super of string*expr list
  | NewObject of string*expr list
  | EmptyList
  | Cons of expr*expr
  | Hd of expr
  | Tl of expr 
  | IsEmpty of expr
  | List of expr list
  | IsInstanceOf of expr*string
  | Cast of expr*string
  | Debug of expr
and (* recursive function declarations *)
  rdecs = (string*string*texpr option*texpr option*expr) list
and (* class declarations *)
  cdecl =
  | Class of string*string*string option*(string*texpr option) list*mdecl list
  | Interface of string*abs_mdecl list
and (* method declarations *)
  mdecl = Method of string*texpr option*(string*texpr option) list*expr
and (* abstract method declarations *)
  abs_mdecl = MethodAbs of string*texpr*(string*texpr option) list
and 
  texpr =
  | UserType of string
  | IntType
  | BoolType
  | UnitType
  | FuncType of texpr*texpr
  | RefType of texpr
  | ListType of texpr
  | RecordType of (string*texpr) list
  | PairType of texpr*texpr


let rec string_of_expr e =
  match e with
  | Var s -> "Var "^s
  | Int n -> "Int "^string_of_int n
  | Unit -> "Unit"
  | Add(e1,e2) -> "Add(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Sub(e1,e2) -> "Sub(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Mul(e1,e2) -> "Mul(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Div(e1,e2) -> "Div(" ^ (string_of_expr e1) ^ "," ^ string_of_expr
                    e2 ^ ")"
  | Abs(e) -> "Abs("^string_of_expr e^")"
  | Min(e1,e2) -> "Div(" ^ (string_of_expr e1) ^ "," ^ string_of_expr
                    e2 ^ ")"
  | Sum(es) -> "sum(" ^ String.concat "," (List.map string_of_expr es) ^")"
  | Prod(es) -> "prod(" ^ String.concat "," (List.map string_of_expr es) ^")"
  | Avg(es) -> "avg(" ^ String.concat "," (List.map string_of_expr es)^")"
  | Maxl(es) -> "maxl(" ^ String.concat "," (List.map string_of_expr es) ^")"
  | Tuple(es) -> "<" ^ String.concat "," (List.map string_of_expr es) ^">"
  | Untuple(ids,e1,e2) -> "untuple <"^ String.concat "," ids ^ ">="^
                          string_of_expr e1 ^" in "^string_of_expr e2
  | NewRef(e) -> "NewRef(" ^ (string_of_expr e) ^ ")"
  | DeRef(e) -> "DeRef(" ^ (string_of_expr e) ^ ")"
  | SetRef(e1,e2) -> "SetRef(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Let(x,def,body) -> "Let("^x^","^string_of_expr def ^","^ string_of_expr body ^")"
  | Proc(x,None,body)-> "Proc("^x^"," ^ string_of_expr body ^")"
  | Proc(x,Some t,body)-> "Proc("^x^"," ^string_of_texpr t^","^ string_of_expr body ^")"
  | App(e1,e2) -> "App("^string_of_expr e1 ^"," ^ string_of_expr e2^")"
  | IsZero(e) -> "Zero?("^string_of_expr e ^")"
  | ITE(e1,e2,e3) -> "ITE("^string_of_expr e1^"," ^ string_of_expr e2^"," ^ string_of_expr e3  ^")"
  | Letrec(rdecs,body) ->
    "Letrec("^
    String.concat "," (List.map string_of_rdecl rdecs)  ^","^ string_of_expr body ^")" 
  | Set(x,rhs) -> "Set("^x^","^string_of_expr rhs^")"
  | BeginEnd(es) -> "BeginEnd(" ^ String.concat "," (List.map string_of_expr es) ^")"
  | Debug(e) -> "Debug("^string_of_expr e^")"
  | Fst(e) -> "Fst("^string_of_expr e^")"
  | Snd(e) -> "Snd("^string_of_expr e^")"
  | Pair(e1,e2) -> "Pair(" ^ (string_of_expr e1) ^ "," ^ string_of_expr e2 ^ ")"
  | Unpair(x,y,e1,e2) -> "Unpair("^x^","^y^","^string_of_expr e1 ^","^
                         string_of_expr e2 ^")"
  | EmptyList -> "EmptyList"
  | EmptyTree -> "EmptyTree"
  | Node(e1,e2,e3) -> "Node("^string_of_expr e1^"," ^ string_of_expr
                        e2^"," ^ string_of_expr e3  ^")"
  |  CaseT(e1,e_empty,did,lid,rid,e_node) -> "CaseT "^string_of_expr e1^" of
  \n { emptytree -> "^string_of_expr e_empty^",\n"^
                                             "node("^did^","^lid^","^rid
                                             ^") -> "^string_of_expr
                                               e_node^"} "
  | Super(id,es) -> "Super("^id^","^String.concat "," (List.map string_of_expr es)^")"
  | Self -> "Self"
  | NewObject(id,es) -> "NewObj("^id^",["^String.concat "," (List.map string_of_expr es)^"])"
  | Send(e1,id,es) -> "Send("^string_of_expr e1^","^id^","^String.concat "," (List.map string_of_expr es)^")"
  | List(es) -> "List("^String.concat "," (List.map string_of_expr
                                             es)^")"
  | IsInstanceOf(e,id) -> "InstanceOf(" ^ (string_of_expr e) ^ "," ^ id ^ ")"
  | _ -> failwith "Not implemented"
and
  string_of_rdecl = function
  | (id,par,tpar_op,tres_op,def) ->
    id^"("^par^")"
    ^ (match tpar_op with
        | None -> ""
        | Some t -> string_of_texpr t)
    ^ (match tres_op with
        | None ->  ""
        | Some t ->  ":"^ string_of_texpr t) 
    ^ "="^ string_of_expr def
and
  string_of_texpr = function
  | UserType id -> id
  | IntType -> "int"
  | BoolType -> "bool"
  | UnitType -> "unit"
  | FuncType(t1,t2) -> "("^string_of_texpr t1^"->"^string_of_texpr t2^")"
  | RefType(t) -> "Ref("^string_of_texpr t^")"
  | ListType(t) -> "List("^string_of_texpr t^")"
  | RecordType(fs) -> "RecordType("^ String.concat "," (List.map (fun (id,t) ->
  id^":"^string_of_texpr t) fs) ^")"
  | PairType(t1,t2) -> "("^string_of_texpr t1^"*"^string_of_texpr t2^")"

