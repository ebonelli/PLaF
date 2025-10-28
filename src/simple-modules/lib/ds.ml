open ReM

(* This file defines expressed values and environments *)


(* expressed values and environments are defined mutually recursively *)

type exp_val =
  | NumVal of int
  | BoolVal of bool
  | ProcVal of string*Ast.expr*env
  | PairVal of exp_val*exp_val
  | TupleVal of exp_val list
  | UnitVal
  | RefVal of int
and
  env =
  | EmptyEnv
  | ExtendEnv of string*exp_val*env
  | ExtendEnvRec of string*string*Ast.expr*env
  | ExtendEnvMod of string*env*env


type 'a ea_result = ('a,env) a_result



let run (c:'a ea_result) : 'a result =
  c EmptyEnv

let sequence (cs: ('a ea_result) list) : ('a list) ea_result  =
  let mcons p q = p >>= fun x -> q >>= fun y -> return (x::y)
  in List.fold_right mcons cs (return []) 

let mapM (f:'a -> 'b ea_result) (vs:'a list) : ('b list) ea_result = sequence (List.map f vs)



(* Operations on environments *)
let empty_env : unit -> env ea_result =
  fun () ->
    return EmptyEnv

let extend_env : string -> exp_val -> env ea_result =
  fun id v env ->
    Ok (ExtendEnv(id,v,env))


let extend_env_rec : string -> string -> Ast.expr -> env ea_result =
  fun id par body env  ->
    Ok (ExtendEnvRec(id,par,body,env))


let extend_env_mod : string -> env -> env ea_result =
  fun id mod_env env  ->
    Ok (ExtendEnvMod(id,mod_env,env))


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
  | ExtendEnvMod(_moduleName,_bindings,tail) -> apply_env id tail

let lookup_env : env ea_result =
  fun env ->
  Ok env

let rec apply_env_qual : string -> string -> exp_val ea_result = fun mid id ->
  fun env ->
  match env with
  | EmptyEnv -> Error "Key not found"
  | ExtendEnv(_key,_value,env) -> apply_env_qual mid id env
  | ExtendEnvRec(_key,_param,_body,env) -> apply_env_qual mid id env
  | ExtendEnvMod(moduleName,bindings,env) ->
    if mid=moduleName
    then apply_env id bindings
    else apply_env_qual mid  id env

let rec lookup_module : string -> env ea_result = fun mid ->
  fun env ->
  match env with
  | EmptyEnv -> Error "module not found"
  | ExtendEnv (_key,_value,env) -> lookup_module mid env 
  | ExtendEnvRec(_key,_param,_body,env) -> lookup_module mid env 
  | ExtendEnvMod(moduleName,bindings,env) ->
    if mid=moduleName
    then Ok bindings
    else lookup_module mid env  


let rec append_env'(env1:env) (env2:env) : env = 
  match env1 with
  | EmptyEnv -> env2
  | ExtendEnv (key,value,env) ->
    ExtendEnv(key,value, append_env' env env2)
  | ExtendEnvRec(key,param,body,env) ->
    ExtendEnvRec(key,param,body,append_env' env env2)
  | ExtendEnvMod(moduleName,bindings,env) ->
    ExtendEnvMod(moduleName,bindings,append_env' env env2)

let append_env (env1:env) : env ea_result = fun env2 ->
  Ok (append_env' env1 env2)
    
let append_env_rev (env1:env) : env ea_result = fun env2 ->
  Ok (append_env' env2 env1)

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

let clos_of_procVal : exp_val -> (string*Ast.expr*env) ea_result =
  fun ev ->
  match ev with
  | ProcVal(id,body,en) -> return (id,body,en)
  | _ -> error "Expected a closure!"
           
let rec string_of_list_of_strings = function
  | [] -> ""
  | [id] -> id
  | id::ids -> id ^ "," ^ string_of_list_of_strings ids


let int_of_refVal =  function
  |  RefVal n -> return n
  | _ -> error "Expected a reference!"

let rec string_of_expval = function
  |  NumVal n -> "NumVal " ^ string_of_int n
  | BoolVal b -> "BoolVal " ^ string_of_bool b
  | ProcVal (id,body,env) -> "ProcVal ("^id^","^Ast.string_of_expr
                               body^","^ string_of_env' env^")"
  | PairVal(v1,v2) -> "PairVal("^string_of_expval
                        v1^","^string_of_expval v2^")"
  | TupleVal(evs) ->  "Tuple (" ^ string_of_list_of_strings (List.map
                                                   string_of_expval
                                                   evs)  ^ ")" 
  | UnitVal -> "UnitVal " 
  | RefVal i -> "RefVal ("^string_of_int i^")"
and
  string_of_env'  = function
  | EmptyEnv -> ""
  | ExtendEnv(id,v,env) -> "("^id^","^string_of_expval v^")\n"^string_of_env' env
  | ExtendEnvRec(id,param,body,env) ->
    "("^id^","^param^","^Ast.string_of_expr body^")\n"^string_of_env'
      env
  | ExtendEnvMod(id,defs,env) -> "Module "^id^"["^ (string_of_env'
                                                      defs)^"]\n"^string_of_env' env


let string_of_env : string ea_result =
  fun env ->
  Ok ("Environment:\n"^ string_of_env' env)




