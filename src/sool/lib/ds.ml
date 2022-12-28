(* This file defines expressed values and environments *)
open ReM
open Parser_plaf.Ast

(* Environment Abstracted Result *)

(* This file defines expressed values and environments *)


(* expressed values and environments are defined mutually recursively *)

type exp_val =
  | NumVal of int
  | BoolVal of bool
  | ProcVal of string*expr*env
  | PairVal of exp_val*exp_val
  | TupleVal of exp_val list
  | StringVal of string
  | ListVal of exp_val list
  | RecordVal of (string*exp_val) list
  | UnitVal
  | RefVal of int
  | ObjectVal of string*env
and
  env =
  | EmptyEnv
  | ExtendEnv of string*exp_val*env
  | ExtendEnvRec of string*string*expr*env
  
type 'a ea_result = ('a,env) a_result


let run (c:'a ea_result) : 'a result =
  c EmptyEnv


(* Operations on environments *)
let empty_env : unit -> env ea_result =
  fun () ->
  return EmptyEnv

let extend_env : string -> exp_val -> env ea_result =
  fun id v ->
  fun env ->
  Ok (ExtendEnv(id,v,env))

let lookup_env : env ea_result =
  fun env ->
  Ok env

let extend_env_list : string list -> exp_val list -> env ea_result =
  fun ids vs ->
  List.fold_left2 (fun ac id v -> ac >>+ extend_env id v) lookup_env
    ids vs

let extend_env_rec : string -> string -> expr -> env ea_result =
  fun id par body ->
  fun env  ->
  Ok (ExtendEnvRec(id,par,body,env))

(* fold_left2 : ('a -> 'b -> 'c -> 'a) -> 'a -> 'b list -> 'c list -> 'a *)
      
let rec apply_env : string -> exp_val ea_result =
  fun id env ->
  match env with
  | EmptyEnv -> Error (id^" not found!")
  | ExtendEnv(v,ev,tail) ->
    if id=v
    then Ok ev
    else apply_env id tail
  | ExtendEnvRec(v,par,body,tail) ->
    if id=v
    then Ok (ProcVal (par,body,env))
    else apply_env id tail                                              




(* operations on expressed values *)
        
let int_of_numVal : exp_val -> int ea_result =  function
  |  NumVal n -> return n
  | _ -> error "Expected a number!"

let bool_of_boolVal : exp_val -> bool ea_result =  function
  |  BoolVal b -> return b
  | _ -> error "Expected a boolean!"

let pair_of_pairVal : exp_val -> (exp_val*exp_val) ea_result = function
  | PairVal(v1,v2) -> return (v1,v2)
  | _ -> error "Expected a pair!"

let tupleVal_to_list_of_evs: exp_val -> (exp_val list) ea_result = function
  | TupleVal(evs) -> return evs
  | _ -> error "Expected a tuple!"

let fields_of_recordVal: exp_val -> ((string*exp_val) list) ea_result = function
  | RecordVal(fs) -> return fs
  | _ -> error "Expected a record!"

let list_of_listVal : exp_val -> (exp_val list) ea_result = function
  | ListVal(vs) -> return vs
  | _ -> error "Expected a pair!"

let string_of_stringVal : exp_val -> string ea_result =  function
  | StringVal s -> return s
  | _ -> error "Expected a string!"

let int_of_refVal =  function
  |  RefVal n -> return n
  | _ -> error "Expected a reference!"

let clos_of_procVal : exp_val -> (string*expr*env) ea_result =
  fun ev ->
  match ev with
  | ProcVal(id,body,en) -> return (id,body,en)
  | _ -> error "Expected a closure!"
           
let obj_of_objectVal =  function
  | ObjectVal(c_name,env) -> return (c_name,env)
  | _ -> error "Expected an object!"

let rec string_of_expval = function
  |  NumVal n -> "NumVal " ^ string_of_int n
  | BoolVal b -> "BoolVal " ^ string_of_bool b
  | ProcVal (id,body,env) -> "ProcVal ("^ id ^","^string_of_expr
                               body^","^ string_of_env' []
                                             env^")"
  | PairVal(v1,v2) -> "PairVal("^string_of_expval
                        v1^","^string_of_expval v2^")"
  | TupleVal(evs) ->  "Tuple (" ^ String.concat "," (List.map
                                                   string_of_expval
                                                   evs)  ^ ")"   | UnitVal -> "UnitVal " 
  | RefVal i -> "RefVal ("^string_of_int i^")"
  | ObjectVal(id,env) -> "ObjectVal("^id ^","^string_of_env' [] env^")"
  | StringVal s -> "StringVal " ^ s
  | ListVal(evs) ->  "ListVal (" ^String.concat "," (List.map
                                                   string_of_expval
                                                   evs)  ^ ")" 
  | _ -> failwith "string_of_expval: not implemented"
and
   string_of_env' ac = function
  | EmptyEnv ->  "["^String.concat ",\n" ac^"]"
  | ExtendEnv(id,v,env) -> string_of_env' ((id^":="^string_of_expval v)::ac) env
  | ExtendEnvRec(id,param,body,env) -> string_of_env'
                                         ((id^":=Rec("^param^","^string_of_expr body^")")::ac) env
                                         
let string_of_env : string ea_result =
  fun env ->
  match env with
  | EmptyEnv -> Ok ">>Environment:\nEmpty"
  | _ -> Ok (">>Environment:\n"^ string_of_env' [] env)

let add_sool_extension s =
  let s = String.trim s      (* remove leading and trailing spaces *)
  in match String.index_opt s '.' with (* allow extension to be optional *)
  | None -> s^".sool"
  | _ -> s  

