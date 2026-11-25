                 
type 'a result = Ok of 'a | Error of string

(* Reader+Error Monad *)

type ('a,'b) a_result = 'b -> 'a result
  
let return : 'a -> ('a,'b) a_result =
  fun v ->
  fun _env ->
  Ok v

let error : string -> ('a,'b) a_result =
  fun s ->
  fun _env ->
  Error s

let (>>=) : ('a,'c) a_result -> ('a -> ('b,'c) a_result) -> ('b,'c) a_result = fun c f env ->
  match c env with
  | Error err -> Error err
  | Ok v -> f v env

let (>>+) : ('b,'b) a_result -> ('a,'b) a_result -> ('a,'b) a_result = fun c d env ->
  match c env with
  | Error err -> Error err
  | Ok newenv -> d newenv

let sequence (cs: (('a,'b) a_result) list) : ('a list,'b) a_result  =
  let mcons p q = p >>= fun x -> q >>= fun y -> return (x::y)
  in List.fold_right mcons cs (return []) 

let mapM (f:'a -> ('b,'e) a_result) (vs:'a list)
  : ('b list,'e) a_result =
  sequence (List.map f vs)

(* Error monad *)

let returnE : 'a -> 'a result =
  fun v ->
  Ok v

let errorE : string -> 'a result =
  fun s ->
  Error s

let (>>?) : 'a result -> ('a -> 'b result) -> 'b result =
  fun c f ->
  match c with
  | Error err -> Error err
  | Ok v -> f v
