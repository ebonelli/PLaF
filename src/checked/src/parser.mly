(* The first section of the grammar definition, called the *header*,
   is the part that appears below between %{ and %}.  It is code
   that will simply be copied literally into the generated parser.ml.
   Here we use it just to open the Ast module so that, later on
   in the grammar definition, we can write expressions like
   [Int i] instead of [Ast.Int i]. *)

%{
open Ast
%}

(* The next section of the grammar definition, called the *declarations*,
   first declares all the lexical *tokens* of the language.  These are
   all the kinds of tokens we can expect to read from the token stream.
   Note that each of these is just a descriptive name---nothing so far
   says that LPAREN really corresponds to '(', for example.  The tokens
   that have a <type> annotation appearing in them are declaring that
   they will carry some additional data along with them.  In the
   case of INT, that's an OCaml int.  In the case of ID, that's
   an OCaml string. *)

%token <int> INT
%token <string> ID
%token PLUS
%token MINUS
%token TIMES
%token DIVIDED
%token LPAREN
%token RPAREN
%token LBRACE
%token RBRACE
%token LANGLE
%token RANGLE
%token LET
%token EQUALS
%token IN
%token PROC
%token ISZERO
%token IF
%token THEN
%token ELSE
%token PAIR
%token FST
%token SND
%token UNPAIR
%token LETREC
%token SET
%token BEGIN
%token END
%token NEWREF
%token DEREF
%token SETREF
%token SEMICOLON
%token DEBUG
%token INTTYPE
%token BOOLTYPE
%token UNITTYPE
%token ARROW
%token REFTYPE
%token COMMA
%token DOT
%token COLON
%token EOF

(* After declaring the tokens, we have to provide some additional information
   about precedence and associativity.  The following declarations say that
   PLUS is left associative, that IN is not associative, and that PLUS
   has higher precedence than IN (because PLUS appears on a line after IN).

   Because PLUS is left associative, "1+2+3" will parse as "(1+2)+3"
   and not as "1+(2+3)".

   Because PLUS has higher precedence than IN, "let x=1 in x+2" will
   parse as "let x=1 in (x+2)" and not as "(let x=1 in x)+2". *)

%nonassoc  IN ELSE EQUALS            /* lowest precedence */
                                        %right ARROW
                                        %left PLUS MINUS
%left TIMES DIVIDED    /* highest precedence */
                          %left DOT    /* highest precedence */
                                            %nonassoc REFTYPE
                          (*%nonassoc UMINUS        /* highest precedence */*)


(* After declaring associativity and precedence, we need to declare what
   the starting point is for parsing the language.  The following
   declaration says to start with a rule (defined below) named [prog].
   The declaration also says that parsing a [prog] will return an OCaml
   value of type [Ast.expr]. *)

(* 
%start <Ast.prog> prog *)

%start <Ast.expr> prog

(* The following %% ends the declarations section of the grammar definition. *)

%%

(* Now begins the *rules* section of the grammar definition.  This is a list
   of rules that are essentially in Backus-Naur Form (BNF), although where in
   BNF we would write "::=" these rules simply write ":".

   The format of a rule is

     name:
       | production { action }
       | production { action }
       | etc.
       ;

    The *production* is the sequence of *symbols* that the rule matches.
    A symbol is either a token or the name of another rule.
    The *action* is the OCaml value to return if a match occurs.
    Each production can *bind* the value carried by a symbol and use
    that value in its action.  This is perhaps best understood by example... *)


(* The first rule, named [prog], has just a single production.  It says
   that a [prog] is an [expr] followed by [EOF] (which stands for end-of-file).
   EOF is a token returned by the lexer when it reaches the end of the token stream.
   The first part of the production, [e=expr], says to match an [expr] and bind
   the resulting value to [e].  The action simply says to return that value [e]. *)

prog:
(*	| e = expr; EOF { AProg e } *)
	| e = expr; EOF { e }
	;

(* The second rule, named [expr], has productions for integers, variables,
   addition expressions, let expressions, and parenthesized expressions.

   - The first production, [i = INT], says to match an [INT] token, bind the
     resulting OCaml [int] value to [i], and return AST node [Int i].

   - The second production, [x = ID], says to match an [ID] token, bind the
     resulting OCaml [string] value to [x], and return AST node [Var x].

   - The third production, [e1 = expr; PLUS; e2 = expr], says to match
     an [expr] followed by a [PLUS] token followed by another [expr].
     The first [expr] is bound to [e1] and the second to [e2].  The AST
     node returned is [Add(e1,e2)].

   - The fourth production, [LET; x = ID; EQUALS; e1 = expr; IN; e2 = expr],
     says to match a [LET] token followed by an [ID] token followed by
     an [EQUALS] token followed by an [expr] followed by an [IN] token
     followed by another [expr].  The string carried by the [ID] is bound
     to [x], and the two expressions are bound to [e1] and [e2].  The AST
     node returned is [Let(x,e1,e2)].

   - The fifth production, [LPAREN; e = expr; RPAREN] says to match an
     [LPAREN] token followed by an [expr] followed by an [RPAREN].  The
     expression is bound to [e] and returned. *)

expr:
    | i = INT { Int i }
    | x = ID { Var x }
    | DEBUG; LPAREN; e=expr; RPAREN { Debug(e) }
    | e1 = expr; PLUS; e2 = expr { Add(e1,e2) }
    | e1 = expr; MINUS; e2 = expr { Sub(e1,e2) }
    | e1 = expr; TIMES; e2 = expr { Mul(e1,e2) }
    | e1 = expr; DIVIDED; e2 = expr { Div(e1,e2) }
    | LET; x = ID; EQUALS; e1 = expr; IN; e2 = expr { Let(x,e1,e2) }
    | LETREC; x = ID; LPAREN; y = ID; COLON; targ=texpr; RPAREN; COLON
      ; tr=texpr; EQUALS; e1 = expr; IN; e2 = expr { Letrec(x,y,targ,tr,e1,e2) }
    | PROC; LPAREN; x = ID; COLON; t=texpr; RPAREN; LBRACE; e = expr; RBRACE { Proc(x,t,e) }
    | LPAREN; e1 = expr; e2 = expr; RPAREN { App(e1,e2) }
    | ISZERO; LPAREN; e = expr; RPAREN { IsZero(e) }
    | NEWREF; LPAREN; e = expr; RPAREN { NewRef(e) }
    | DEREF; LPAREN; e = expr; RPAREN { DeRef(e) }
    | SETREF; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { SetRef(e1,e2) }
    | IF; e1 = expr; THEN; e2 = expr; ELSE; e3 = expr { ITE(e1,e2,e3) }
    | SET; x = ID; EQUALS; e = expr { Set(x,e) }
    | BEGIN; es = exprs; END { BeginEnd(es) }
    | LPAREN; e = expr; RPAREN {e}
      (*    | MINUS e = expr %prec UMINUS { SubExp(IntExp 0,e) }*)
    | LPAREN; MINUS e = expr; RPAREN  { Sub(Int 0, e) }
    | LBRACE; fs = separated_list(SEMICOLON, field);
      RBRACE { Record(fs) }
    | e1=expr; DOT; id=ID { Proj(e1,id) }
    | PAIR; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { Pair(e1,e2) }
    | FST; LPAREN; e=expr; RPAREN { Fst(e) }
    | SND; LPAREN; e=expr; RPAREN { Snd(e) }
    | UNPAIR; LPAREN; x = ID; COMMA; y=ID; RPAREN; EQUALS; e1 = expr; IN; e2 = expr { Unpair(x,y,e1,e2) }

    ;

exprs:
    es = separated_list(SEMICOLON, expr)    { es } ;

field:
      id = ID; EQUALS; e=expr { (id,e) }

texpr:
    | INTTYPE { IntType }
    | BOOLTYPE { BoolType }
    | UNITTYPE { UnitType }
    | t1 = texpr; ARROW; t2 = texpr { FuncType(t1,t2) }
    | LANGLE; t1 = texpr; TIMES; t2 = texpr; RANGLE { PairType(t1,t2) }
    | LPAREN; t1 = texpr; RPAREN { t1 }
    | REFTYPE; t1 = texpr { RefType(t1) }
    | LBRACE; ts = separated_list(SEMICOLON, fieldtype); RBRACE { RecordType(ts) }

fieldtype:
      id = ID; COLON; t=texpr { (id,t) }

                                 (* And that's the end of the grammar definition. *)
