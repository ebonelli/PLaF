(* Expressed Result *)
                 
type 'a result = Ok of 'a | Error of string

type ('a,'b) a_result = 'b -> 'a result
  
let return (v:'a) : ('a,'b) a_result =
  fun _env ->
  Ok v

let error (s:string) : ('a,'b) a_result =
  fun _env ->
  Error s

let (>>=) (c:('a,'c) a_result) (f: 'a -> ('b,'c) a_result) : ('b,'c) a_result =
  fun env ->
  match c env with
  | Error err -> Error err
  | Ok v -> f v env

let (>>+) (c:('b,'b) a_result) (d:('a,'b) a_result): ('a,'b) a_result =
  fun env ->
  match c env with
  | Error err -> Error err
  | Ok newenv -> d newenv
