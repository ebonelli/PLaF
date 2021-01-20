(* The first section of the lexer definition, called the *header*,
   is the part that appears below between { and }.  It is code
   that will simply be copied literally into the generated lexer.ml. *)

{
open Parser

exception Error of string
}

(* The second section of the lexer definition defines *identifiers*
   that will be used later in the definition.  Each identifier is
   a *regular expression*.  We won't go into details on how regular
   expressions work.

   Below, we define regular expressions for
     - whitespace (spaces and tabs),
     - digits (0 through 9)
     - integers (nonempty sequences of digits, optionally preceded by a minus sign)
     - letters (a through z, and A through Z), and
     - identifiers (nonempty sequences of letters).

   FYI, these aren't exactly the same as the OCaml definitions of integers and
   identifiers. *)

let white = [' ' '\t' '\n']+
let digit = ['0'-'9']
let int = digit+
let letter = ['a'-'z' 'A'-'Z']
let id = letter ['a'-'z' 'A'-'Z' '0'-'9' '_']*
         
(* The final section of the lexer definition defines how to parse a character
   stream into a token stream.  Each of the rules below has the form
     | regexp { action }
   If the lexer sees the regular expression [regexp], it produces the token
   specified by the [action].  We won't go into details on how the actions
   work.  *)

rule read =
  parse
  | white    { read lexbuf }
  | "+"      { PLUS }
  | "-"      { MINUS }
  | "*"      { TIMES }
  | "/"      { DIVIDED }
  | "("      { LPAREN }
  | ")"      { RPAREN }
  | "{"      { LBRACE }
  | "}"      { RBRACE }
  | "["      { LBRACKET }
  | "]"      { RBRACKET }
  | ";"      { SEMICOLON }
  | ":"      { COLON }
  | ","      { COMMA }
  | "let"    { LET }
  | "="      { EQUALS }
  | "in"     { IN }
  | "proc"   { PROC }
  | "zero?"  { ISZERO }
  | "if"     { IF }
  | "then"   { THEN }
  | "else"   { ELSE }
  | "letrec" { LETREC }
  | "set"    { SET }
  | "begin"  { BEGIN }
  | "end"    { END }
  | "newref" { NEWREF }
  | "deref"  { DEREF }
  | "setref" { SETREF }
  | "debug" { DEBUG }
  | "module"  { MODULE }
  | "interface" { INTERFACE }
  | "body" { BODY }
  | "from" { FROM }
  | "take" { TAKE }
  | "open" { OPEN }
  | "int"    { INTTYPE }
  | "bool"   { BOOLTYPE }
  | "unit"   { UNITTYPE }
  | "->"     { ARROW }
  | "ref"    { REFTYPE }
  | "(*"     { comment lexbuf } (* activate "comment" rule *)
  | id       { ID (Lexing.lexeme lexbuf) }
  | int      { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | eof      { EOF }
  | _
      { raise (Error (Printf.sprintf
                        "At offset %d: unexpected character."
                        (Lexing.lexeme_start lexbuf))) }
and
  comment = parse
  | "*)" { read lexbuf }
  | _    { comment lexbuf }  (* skip comments *)



(* And that's the end of the lexer definition. *)
