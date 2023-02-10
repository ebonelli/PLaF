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
%token ABS
%token MIN
%token LET
%token EQUALS
%token IN
%token PROC
%token ISZERO
%token IF
%token THEN
%token ELSE
%token LETREC
%token SET
%token BEGIN
%token END
%token NEWREF
%token DEREF
%token SETREF
%token SEMICOLON
%token COLON
%token FST
%token SND
%token PAIR
%token UNPAIR
%token UNTUPLE
%token DEBUG
%token SEND
%token CLASS
%token EXTENDS
%token SUPER
%token METHOD
%token SELF
%token FIELD
%token NEW
%token LIST
%token CONS 
%token HD 
%token TL
%token EMPTYPRED 
%token COMMA
%token DOT
%token IMPLEMENTS
%token INSTANCEOF
%token INTERFACE
%token CAST
%token INTTYPE "int"
%token BOOLTYPE "bool"
%token UNITTYPE "unit"
%token ARROW "->"  (* token alias to aid readability *)
%token REFTYPE "ref"
%token EOF

(* After declaring the tokens, we have to provide some additional information
   about precedence and associativity.  The following declarations say that
   PLUS is left associative, that IN is not associative, and that PLUS
   has higher precedence than IN (because PLUS appears on a line after IN).

   Because PLUS is left associative, "1+2+3" will parse as "(1+2)+3"
   and not as "1+(2+3)".

   Because PLUS has higher precedence than IN, "let x=1 in x+2" will
   parse as "let x=1 in (x+2)" and not as "(let x=1 in x)+2". *)

%nonassoc IN ELSE EQUALS            /* lowest precedence */
%right ARROW
%left PLUS MINUS
%left TIMES DIVIDED   
%left DOT    
%nonassoc REFTYPE                   /* highest precedence */
                          (*%nonassoc UMINUS        /* highest precedence */*)


(* After declaring associativity and precedence, we need to declare what
   the starting point is for parsing the language.  The following
   declaration says to start with a rule (defined below) named [prog].
   The declaration also says that parsing a [prog] will return an OCaml
   value of type [Ast.prog]. *)

%start <Ast.prog> prog

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


(** The first rule, named [prog], has just a single production.  It says
   that a [prog] is a (possibly empty) list [cls] of class declarations
   followed by the "main" expression [e] and followed by [EOF] (which stands for end-of-file).
   EOF is a token returned by the lexer when it reaches the end of the token stream.
   The action says to return value [AProg(cls,e)]. *)

prog:
 | cls = list(iface_or_class_decl); e = expr; EOF { AProg(cls,e) }

(* The remaining rules address expressions and class declarations. *)

expr:
| i = INT { Int i }
| x = ID { Var x }
| DEBUG; LPAREN; e=expr; RPAREN { Debug(e) }
| e1 = expr; PLUS; e2 = expr { Add(e1,e2) }
| e1 = expr; MINUS; e2 = expr { Sub(e1,e2) }
| e1 = expr; TIMES; e2 = expr { Mul(e1,e2) }
| e1 = expr; DIVIDED; e2 = expr { Div(e1,e2) }
| ABS; LPAREN; e=expr; RPAREN { Abs(e) }
| MIN; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { Min(e1,e2) }
| PAIR; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { Pair(e1,e2) }
| FST; LPAREN; e=expr; RPAREN { Fst(e) }
| SND; LPAREN; e=expr; RPAREN { Snd(e) }
| LET; x = ID; EQUALS; e1 = expr; IN; e2 = expr { Let(x,e1,e2) }
| LETREC; x = ID; LPAREN; y = ID; targ=option(type_annotation); RPAREN; tres=option(type_annotation); EQUALS; e1 = expr; IN;
  e2 = expr { Letrec(x,y,targ,tres,e1,e2) }
| PROC; LPAREN; x = ID; t = option(type_annotation); RPAREN; LBRACE; e = expr;
  RBRACE { Proc(x,t,e) }
| LPAREN; e1 = expr; e2 = expr; RPAREN { App(e1,e2) }
| ISZERO; LPAREN; e = expr; RPAREN { IsZero(e) }
| NEWREF; LPAREN; e = expr; RPAREN { NewRef(e) }
| DEREF; LPAREN; e = expr; RPAREN { DeRef(e) }
| SETREF; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { SetRef(e1,e2) }
| IF; e1 = expr; THEN; e2 = expr; ELSE; e3 = expr { ITE(e1,e2,e3) }
| SET; x = ID; EQUALS; e = expr { Set(x,e) }
| BEGIN; es = separated_list(SEMICOLON, expr); END { BeginEnd(es) }
| LPAREN; e = expr; RPAREN {e}
  (*    | MINUS e = expr %prec UMINUS { SubExp(IntExp 0,e) }*)
| LPAREN; MINUS e = expr; RPAREN  { Sub(Int 0, e) }
| LPAREN; RPAREN { Unit }
| LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { Pair(e1,e2) }
| UNPAIR; LPAREN; x = ID; COMMA; y=ID; RPAREN; EQUALS; e1 = expr;
  IN; e2 = expr { Unpair(x,y,e1,e2) }
| LANGLE; es = separated_list(COMMA, expr) ; RANGLE { Tuple(es) }
| UNTUPLE; LANGLE; is = separated_list(COMMA, ID) ;RANGLE; EQUALS; e1 = expr; IN;
      e2 = expr { Untuple(is,e1,e2) }
| LBRACE; fs = separated_list(SEMICOLON, field); RBRACE { Record(fs) }
| e1=expr; DOT; id=ID { Proj(e1,id) }
| NEW; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { NewObject(id,args) }
| SELF; { Self }
| SEND; e=expr; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { Send(e,id,args) }
| SUPER; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { Super(id,args) }
| LIST; LPAREN; es= separated_list(COMMA, expr); RPAREN { List(es)}
| HD; LPAREN; e = expr; RPAREN { Hd(e) }
| TL; LPAREN; e = expr; RPAREN { Tl(e) }
| EMPTYPRED; LPAREN; e = expr; RPAREN { IsEmpty(e) }
| CONS; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { Cons(e1,e2) }
| INSTANCEOF LPAREN; e=expr; COMMA; id=ID; RPAREN { IsInstanceOf(e,id) }
| CAST; LPAREN; e1=expr; COMMA; id=ID; RPAREN { Cast(e1,id) }

type_annotation:
| COLON; t=texpr { t } 

field:
| id = ID; EQUALS; e=expr { (id,e) }
    
fieldtype:
| id = ID; COLON; t=texpr { (id,t) }
      
iface_or_class_decl:
| CLASS; id1=ID; EXTENDS; id2=ID; id3=option(implements_declaration);
  LBRACE; ofs = list(obj_fields); mths = list(method_decl); RBRACE
  { Class(id1,id2,id3,ofs,mths)}
| INTERFACE; id=ID; LBRACE; amths = list(abstract_method_decl); RBRACE
  { Interface(id,amths)}

implements_declaration:
| IMPLEMENTS; id=ID { id }

obj_fields:
| FIELD; id=ID { (id,None) }
| FIELD; t=texpr; id=ID { (id,Some t) }
         
method_decl:
| METHOD; id=ID; LPAREN;
         params = separated_list(COMMA, formal_par); RPAREN; LBRACE;
         e=expr; RBRACE
         { Method(id,None,params,e) }
| METHOD; retType=texpr; id=ID; LPAREN;
       params = separated_list(COMMA, formal_par); RPAREN; LBRACE;
       e=expr; RBRACE
       { Method(id,Some retType,params,e) }
                
abstract_method_decl:
| METHOD; retType=texpr; id=ID; LPAREN; params = separated_list(COMMA, formal_par); RPAREN
         { MethodAbs(id,retType,params) }
                  
formal_par:
| id=ID; t = option(type_annotation) { (id, t) }
                  
texpr:
| id=ID { UserType(id) }
| "int" { IntType } (* tried testing the use of token aliases *)
| "bool" { BoolType }
| "unit" { UnitType }
| t1 = texpr; "->"; t2 = texpr { FuncType(t1,t2) }
| t1 = texpr; TIMES; t2 = texpr { PairType(t1,t2) }
| LPAREN; t1 = texpr; RPAREN { t1 }
| "ref"; t1 = texpr { RefType(t1) }
| LBRACE; ts = separated_list(SEMICOLON, fieldtype); RBRACE { RecordType(ts) }
     

    
