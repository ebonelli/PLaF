open Ast
open ReM

(*  ;;;;;;;;;;;;;;;; type environments ;;;;;;;;;;;;;;;; *)
    
type tenv =
  | EmptyTEnv
  | ExtendTEnv of string*texpr*tenv
  | ExtendTEnvMod of string*tenv*tenv
                     
let rec string_of_tenv  = function
  | EmptyTEnv -> ""
  | ExtendTEnv(id,t,tenv) -> "("^id^","^string_of_texpr t^")"^string_of_tenv tenv
  | ExtendTEnvMod(id,decls,tenv) -> "( Module "^id^","^string_of_tenv
                                    decls^")"^string_of_tenv tenv


type 'a tea_result = ('a,tenv) a_result

let run_teac (c:'a tea_result) : 'a result =
  c EmptyTEnv

let lookup_tenv : tenv tea_result =
  fun tenv ->
  Ok tenv
    
let rec lookup_module_type (mid:string) : tenv tea_result =
  fun tenv ->
  match tenv with
  | EmptyTEnv -> Error "module not found"
  | ExtendTEnv (key,ty,tenv) -> lookup_module_type mid tenv
  | ExtendTEnvMod(moduleName,tbindings,tenv) ->
    if mid=moduleName
    then Ok tbindings
    else lookup_module_type mid tenv

let rec append_tenv' (tenv1:tenv) (tenv2:tenv) : tenv  =
  match tenv2 with
  | EmptyTEnv -> tenv1
  | ExtendTEnv (key,ty,tenv) -> ExtendTEnv(key,ty, append_tenv' tenv1 tenv)
  | ExtendTEnvMod(moduleName,tbindings,tenv) ->
  ExtendTEnvMod(moduleName,tbindings,append_tenv' tenv1 tenv)

let rec append_tenv  (tenv2:tenv) : tenv tea_result =
  fun tenv1->
  Ok (append_tenv' tenv1 tenv2)

let rec append_tenv'(tenv1:tenv) (tenv2:tenv) : tenv = 
  match tenv1 with
  | EmptyTEnv -> tenv2
  | ExtendTEnv (key,value,tenv) ->
    ExtendTEnv(key,value, append_tenv' tenv tenv2)
  | ExtendTEnvMod(moduleName,tbindings,tenv) ->
    ExtendTEnvMod(moduleName,tbindings,append_tenv' tenv tenv2)


let append_tenv_rev (tenv1:tenv) : tenv tea_result = fun tenv2 ->
  Ok (append_tenv' tenv2 tenv1)


exception Subtype_failure of string
                       
let empty_tenv () : tenv tea_result =
  fun tenv ->
  Ok EmptyTEnv

let extend_tenv id t : tenv tea_result =
  fun tenv ->
  Ok (ExtendTEnv(id,t,tenv))

let extend_tenv_mod id decls : tenv tea_result =
  fun tenv ->
  Ok (ExtendTEnvMod(id,decls,tenv))


let arg_of_refType : texpr -> texpr tea_result =  function
  |  RefType(t) -> return t
  | _ -> error "Expected a reference Type!"

let args_of_funcType : texpr -> (texpr*texpr) tea_result =  function
  |  FuncType(g,d) -> return (g,d)
  | _ -> error "Expected a function Type!"
           
let rec apply_tenv  (id:string): texpr tea_result =
  fun tenv ->
  match tenv with
  | EmptyTEnv -> Error "Key not found"
  | ExtendTEnv (key,value,tail) ->
    if id=key
    then Ok value
    else apply_tenv id tail
  | ExtendTEnvMod(m_name,m_type,tail) -> apply_tenv id tail

let rec apply_tenv_qual (id_module:string) (id:string)
  : texpr tea_result =
  fun tenv ->
  match tenv with
  | EmptyTEnv -> Error "Key not found"
  | ExtendTEnv (key,value,tenv1) -> apply_tenv_qual id_module id tenv1
  | ExtendTEnvMod(m_name,m_type,tail) ->
        if id_module=m_name
    then apply_tenv id m_type 
    else apply_tenv_qual id_module id tail



let rec string_of_tenv'  = function
  | EmptyTEnv -> ""
  | ExtendTEnv(id,v,env) -> "("^id^","^string_of_texpr v^")"^string_of_tenv' env
  | ExtendTEnvMod(m_name,m_type,env) ->  "module("^m_name^","^string_of_tenv' m_type^")"^string_of_tenv' env

let string_of_tenv : string tea_result =
  fun env ->
  Ok ("Environment:\n"^ string_of_tenv' env)

let reverse_tenv tenv =
  let rec reverse_tenv' acc = function
    | EmptyTEnv ->  acc
    | ExtendTEnv(id,ty,tenv_tail) -> reverse_tenv'
  (ExtendTEnv(id,ty,acc)) tenv_tail
    | ExtendTEnvMod(mid,body,tenv_tail) ->reverse_tenv'
  (ExtendTEnvMod(mid,body,acc)) tenv_tail
  in reverse_tenv' EmptyTEnv tenv

let rec is_subtype (actual:tenv) (expected: vdecl list):bool =
  match actual, expected with
  | _,[] -> true               
  | EmptyTEnv,_::_ -> false
  | ExtendTEnv(ida,tya,tenv),(ide,tye)::ys ->
    if ida=ide
    then tya=tye && is_subtype tenv ys
    else is_subtype tenv ((ide,tye)::ys)
  | _,_ -> failwith "Case not reachable"

let var_decls_to_tenv var_decls:tenv =
  List.fold_left (fun env (var,decl)  ->
      ExtendTEnv(var, decl,env)) EmptyTEnv var_decls
