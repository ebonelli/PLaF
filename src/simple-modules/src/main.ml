open ReM
open Ast
open Ds
open Dst

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast

let lexer s =
  let lexbuf = Lexing.from_string s
  in Lexer.read lexbuf 


(* Interpret an expression *)
let interp (e:string) : exp_val result =
  let c = e |> parse |> Interp.eval_prog
  in run c


(* Type-check an expression *)
let chk (e:string) : texpr result =
  let c = e |> parse |> Checker.type_of_prog
  in run_teac c

let chkpp (e:string) : string result =
  let c = e |> parse |> Checker.type_of_prog
  in run_teac (c >>= fun t -> return @@ string_of_texpr t)


(*
let interpf (filename:string) : Ds.exp_val =
let lines = ref [] in
let chan = open_in filename in
try
  while true; do
    lines := input_line chan :: !lines
  done; UnitVal
with End_of_file ->
  close_in chan;
  List.fold_left (fun ac s -> s^ac) "" !lines |> parse |>  Interp.eval_prog 
  
*)
