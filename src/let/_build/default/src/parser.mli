
(* The type of tokens. *)

type token = 
  | UNTUPLE
  | UNPAIR
  | UNITTYPE
  | TL
  | TIMES
  | THEN
  | SUPER
  | SND
  | SETREF
  | SET
  | SEND
  | SEMICOLON
  | SELF
  | RPAREN
  | REFTYPE
  | RBRACE
  | RANGLE
  | PROC
  | PLUS
  | PAIR
  | NEWREF
  | NEW
  | MINUS
  | METHOD
  | LPAREN
  | LIST
  | LETREC
  | LET
  | LBRACE
  | LANGLE
  | ISZERO
  | INTTYPE
  | INTERFACE
  | INT of (int)
  | INSTANCEOF
  | IN
  | IMPLEMENTS
  | IF
  | ID of (string)
  | HD
  | FST
  | FIELD
  | EXTENDS
  | EQUALS
  | EOF
  | END
  | EMPTYPRED
  | ELSE
  | DOT
  | DIVIDED
  | DEREF
  | DEBUG
  | CONS
  | COMMA
  | COLON
  | CLASS
  | CAST
  | BOOLTYPE
  | BEGIN
  | ARROW
  | ABS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
