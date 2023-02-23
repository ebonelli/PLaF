(* Grammar
   E.B.
 *)

(* Header:
   Contents copied verbatim to output file  
 *)

%{
open Ast
%}

(* Tokens *)

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
%token SUM 
%token PROD 
%token AVG 
%token MAXL 
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
%token EMPTYLIST
%token EMPTYTREE 
%token NODE 
%token CASET 
%token ARROW  "->"  (* token alias to aid readability *)
%token OF
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
%token REFTYPE "ref"
%token EOF

(* Precedence and associativity *)

%nonassoc IN ELSE EQUALS            /* lowest precedence */
%right ARROW
%left PLUS MINUS
%left TIMES DIVIDED   
%left DOT    
%nonassoc REFTYPE                   /* highest precedence */
                          (*%nonassoc UMINUS        /* highest precedence */*)


(* Start symbol of the grammar *)

%start <Ast.prog> prog

(* The following %% ends the declarations section of the grammar definition. *)

%%

(* Productions of the grammar (called "rules" in Menhir) *)


(** EOF is a token returned by the lexer when it reaches the end of the token stream.
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
| SUM; LPAREN;es = separated_list(COMMA, expr); RPAREN { Sum(es) }
| PROD; LPAREN;es = separated_list(COMMA, expr); RPAREN { Prod(es) }
| AVG; LPAREN;es = separated_list(COMMA, expr); RPAREN { Avg(es) }
| MAXL; LPAREN;es = separated_list(COMMA, expr); RPAREN { Maxl(es) }
| PAIR; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { Pair(e1,e2) }
| FST; LPAREN; e=expr; RPAREN { Fst(e) }
| SND; LPAREN; e=expr; RPAREN { Snd(e) }
| LET; x = ID; EQUALS; e1 = expr; IN; e2 = expr { Let(x,e1,e2) }
| LETREC; decs = nonempty_list(rdecs); IN; e = expr { Letrec(decs, e) }
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
| LET; LANGLE; is = separated_list(COMMA, ID) ;RANGLE; EQUALS; e1 = expr; IN;
  e2 = expr { Untuple(is,e1,e2) }
| EMPTYTREE { EmptyTree }
| NODE; LPAREN; e1 = expr; COMMA; e2=expr; COMMA; e3=expr; RPAREN { Node(e1,e2,e3) }
| CASET; e1 = expr; OF; LBRACE; EMPTYTREE; ARROW; e2=expr; COMMA;
      NODE; LPAREN; id1 = ID; COMMA; id2=ID; COMMA; id3=ID; RPAREN;
      ARROW;  e3=expr; RBRACE { CaseT(e1,e2,id1,id2,id3,e3) }
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
| EMPTYLIST { EmptyList }
| HD; LPAREN; e = expr; RPAREN { Hd(e) }
| TL; LPAREN; e = expr; RPAREN { Tl(e) }
| EMPTYPRED; LPAREN; e = expr; RPAREN { IsEmpty(e) }
| CONS; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { Cons(e1,e2) }
| INSTANCEOF LPAREN; e=expr; COMMA; id=ID; RPAREN { IsInstanceOf(e,id) }
| CAST; LPAREN; e1=expr; COMMA; id=ID; RPAREN { Cast(e1,id) }

rdecs:
| x = ID; LPAREN; y = ID; targ=option(type_annotation); RPAREN;
  tres=option(type_annotation); EQUALS;
  e = expr  { (x, y, targ, tres, e) };
  
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
     

    
