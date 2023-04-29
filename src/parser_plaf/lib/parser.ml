open Lexing
open Printf
open Ast
module E = MenhirLib.ErrorReports
module L = MenhirLib.LexerUtil

type parse_result = Succ of prog | LexErr of string | ParseErr of string

let firstPass s : parse_result =
  (* Read the file; allocate and initialize a lexing buffer. *)
  let lexbuf = Lexing.from_string s in
  (* Run the parser. *)
  match Grammar.prog Lexer.read lexbuf with
  | v ->
    (* Success. The parser has produced an expression [v]. *)
    Succ v
  | exception Lexer.Error msg ->
    (* A lexical error has occurred. *)
    let _ = print_endline "Lexical Error Encountered" in
    let _ = eprintf "%s%!" msg in
    LexErr "Lexing error above"
  | exception Grammar.Error ->
    (* A syntax error has occurred. *)
    ParseErr s

(* -------------------------------------------------------------------------- *)
(* This part concerns the table-based parser [UnitActionsGrammar]. *)

module I = UnitActionsGrammar.MenhirInterpreter

(* [env checkpoint] extracts a parser environment out of a checkpoint,
   which must be of the form [HandlingError env]. *)

let env checkpoint =
  match checkpoint with
  | I.HandlingError env ->
      env
  | _ ->
      assert false

(* [state checkpoint] extracts the number of the current state out of a
   checkpoint. *)

let state checkpoint : int =
  match I.top (env checkpoint) with
  | Some (I.Element (s, _, _, _)) ->
      I.number s
  | None ->
      (* Hmm... The parser is in its initial state. The incremental API
         currently lacks a way of finding out the number of the initial
         state. It is usually 0, so we return 0. This is unsatisfactory
         and should be fixed in the future. *)
      0

(* [show text (pos1, pos2)] displays a range of the input text [text]
   delimited by the positions [pos1] and [pos2]. *)

let show text positions =
  E.extract text positions
  |> E.sanitize
  |> E.compress
  |> E.shorten 20 (* max width 43 *)

(* [get text checkpoint i] extracts and shows the range of the input text that
   corresponds to the [i]-th stack cell. The top stack cell is numbered zero. *)

let get text checkpoint i =
  match I.get i (env checkpoint) with
  | Some (I.Element (_, _, pos1, pos2)) ->
      show text (pos1, pos2)
  | None ->
      (* The index is out of range. This should not happen *)
      "???"

(* [succeed v] is invoked when the parser has succeeded and produced a
   semantic value [v]. In our setting, this cannot happen, since the
   table-based parser is invoked only when we know that there is a
   syntax error in the input file. *)

let succeed _v =
  assert false


(* [fail text buffer checkpoint] is invoked when parser has encountered a
   syntax error. *)

let fail text buffer (checkpoint : _ I.checkpoint) : string =
  (* Indicate where in the input file the error occurred. *)
  let location = L.range (E.last buffer) in
  (* Show the tokens just before and just after the error. *)
  let indication = sprintf "Syntax error %s.\n" (E.show (show text) buffer) in
  (* Fetch an error message from the database. *)
  let message = ParserMessages.message (state checkpoint) in
  (* Expand away the $i keywords that might appear in the message. *)
  let message = E.expand (get text checkpoint) message in
  (* Show these three components. *)
  let _ = eprintf "%s%s%s%!" location indication message in
  "Parsing error above" (* forces string return type *)

let secondPass s : string =
  (* Allocate and initialize a lexing buffer. *)
  let lexbuf = Lexing.from_string s in
  (* Wrap the lexer and lexbuf together into a supplier, that is, a
     function of type [unit -> token * position * position]. *)
  let supplier = I.lexer_lexbuf_to_supplier Lexer.read lexbuf in
  (* Equip the supplier with a two-place buffer that records the positions
     of the last two tokens. This is useful when a syntax error occurs, as
     these are the token just before and just after the error. *)
  let buffer, supplier = E.wrap_supplier supplier in
  (* Fetch the parser's initial checkpoint. *)
  let checkpoint = UnitActionsGrammar.Incremental.prog lexbuf.lex_curr_p in
  (* Run the parser. *)
  (* We do not handle [Lexer.Error] because we know that we will not
     encounter a lexical error during this second parsing run. *)
  I.loop_handle succeed (fail s buffer) supplier checkpoint

(* Top level parser *)

let read_file (filename:string) : string = 
  let lines = ref [] in
  let chan = open_in filename in
  try
    while true do
      lines := (input_line chan) :: !lines 
    done;
    "" (* never reaches this line *)
  with End_of_file ->
    close_in chan;
    String.concat "\n" (List.rev !lines)

(** [parse s] parses string [s] into an ast 
    and prints useful errors if any are present *)
let parse (s:string): prog =
  match firstPass s with
    | Succ prog -> prog
    | LexErr msg -> failwith msg
    | ParseErr s -> failwith (secondPass s)

(** [parsef sfile_name] parses string in file [file_name] *)
let parsef (file_name: string) : prog = 
  file_name |> read_file |> parse
