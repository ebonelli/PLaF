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
%token LLANGLE
%token RRANGLE
%token ABS
%token MIN
%token SUM 
%token PROD 
%token AVG 
%token MAXL 
%token LET
%token EQUALS
%token EQUALSMUTABLE
%token IN
%token PROC
%token ISZERO
%token ISNUMBER
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
%token MKLIST
%token CONS 
%token HD 
%token TL
%token ISEMPTY 
%token COMMA
%token DOT
%token EMPTYSTACK
%token PUSH
%token POP
%token TOP
%token SIZE
%token IMPLEMENTS
%token INSTANCEOF
%token INTERFACE
%token CAST
%token MKSET 
%token EMPTYSET 
%token INSERTSET 
%token UNIONSET 
%token ISSUBSET 
%token ISMEMBER 
%token EMPTYQUEUE 
%token ADDQ 
%token REMOVEQ 
%token TOPQ 
%token EMPTYHTBL 
%token INSERTHTBL 
%token LOOKUPHTBL 
%token REMOVEHTBL 
%token INTTYPE "int"
%token BOOLTYPE "bool"
%token UNITTYPE "unit"
%token REFTYPE "ref"
%token TREETYPE "tree"
%token LISTTYPE "list"
%token STACKTYPE "stack"
%token SETTYPE "sett"
%token QUEUETYPE "queue"
%token HTBLTYPE "htbl"
%token EOF

(* Precedence and associativity *)

%nonassoc IN ELSE EQUALS EQUALSMUTABLE  /* lowest precedence */
%right ARROW
%left PLUS MINUS LLANGLE RRANGLE  
%left TIMES DIVIDED 
%left DOT    /* highest precedence */
%nonassoc REFTYPE LISTTYPE TREETYPE
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
| ISNUMBER; LPAREN; e = expr; RPAREN { IsNumber(e) }
| e1 = expr; EQUALS; e2 = expr { IsEqual(e1,e2) }
| e1 = expr; RRANGLE; e2 = expr { IsGT(e1,e2) }
| e1 = expr; LLANGLE; e2 = expr { IsLT(e1,e2) }
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
| EMPTYTREE; LPAREN; t = option(texpr); RPAREN { EmptyTree(t) }
| NODE; LPAREN; e1 = expr; COMMA; e2=expr; COMMA; e3=expr; RPAREN { Node(e1,e2,e3) }
| CASET; e1 = expr; OF; LBRACE; EMPTYTREE; LPAREN; RPAREN; ARROW; e2=expr; COMMA;
      NODE; LPAREN; id1 = ID; COMMA; id2=ID; COMMA; id3=ID; RPAREN;
      ARROW;  e3=expr; RBRACE { CaseT(e1,e2,id1,id2,id3,e3) }
| LBRACE; fs = separated_list(SEMICOLON, field); RBRACE { Record(fs) }
| e1=expr; DOT; id=ID { Proj(e1,id) }
| e1=expr; DOT; id=ID; EQUALSMUTABLE; e=expr { SetField(e1,id,e) }
| NEW; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { NewObject(id,args) }
| SELF; { Self }
| SEND; e=expr; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { Send(e,id,args) }
| SUPER; id=ID; LPAREN; args = separated_list(COMMA, expr);
  RPAREN { Super(id,args) }
| MKLIST; LPAREN; es= separated_list(COMMA, expr); RPAREN { List(es)}
| EMPTYLIST; LPAREN; t = option(texpr); RPAREN { EmptyList(t) }
| HD; LPAREN; e = expr; RPAREN { Hd(e) }
| TL; LPAREN; e = expr; RPAREN { Tl(e) }
| ISEMPTY; LPAREN; e = expr; RPAREN { IsEmpty(e) }
| CONS; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { Cons(e1,e2) }
| INSTANCEOF LPAREN; e=expr; COMMA; id=ID; RPAREN { IsInstanceOf(e,id) }
| CAST; LPAREN; e1=expr; COMMA; id=ID; RPAREN { Cast(e1,id) }
(* Sets *)
| MKSET; LPAREN; es= separated_list(COMMA, expr); RPAREN { SetExt(es)}
| EMPTYSET; LPAREN; t = option(texpr); RPAREN { EmptySet(t) }
| INSERTSET; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { InsertSet(e1,e2) }
| UNIONSET; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { UnionSet(e1,e2) }
| ISSUBSET; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { IsSubset(e1,e2) }
| ISMEMBER; LPAREN; e1=expr; COMMA; e2=expr; RPAREN { IsMember(e1,e2) }
| SIZE; LPAREN; e1 = expr; RPAREN { Size(e1) }
(* Stacks *)
| EMPTYSTACK; LPAREN; t = option(texpr); RPAREN { EmptyStack(t) }
| PUSH; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { PushStack(e1,e2) }
| POP; LPAREN; e1 = expr; RPAREN { PopStack(e1) }
| TOP; LPAREN; e1 = expr; RPAREN { TopStack(e1) }
(* Queues *)
| EMPTYQUEUE; LPAREN; t = option(texpr); RPAREN { EmptyQueue(t) }
| ADDQ; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { AddQueue(e1,e2) }
| REMOVEQ; LPAREN; e1 = expr; RPAREN { RemoveQueue(e1) }
| TOPQ; LPAREN; e1 = expr; RPAREN { TopQueue(e1) }
(* Hashtables *)
| EMPTYHTBL; LPAREN; RPAREN { EmptyHtbl(None,None) }
| EMPTYHTBL; LPAREN; t1 = texpr; COMMA; t2=texpr; RPAREN { EmptyHtbl(Some t1,Some t2) }
| INSERTHTBL; LPAREN; e1 = expr; COMMA; e2 = expr; COMMA; e3 = expr; RPAREN { InsertHtbl(e1,e2,e3) }
| LOOKUPHTBL; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { LookupHtbl(e1,e2) }
| REMOVEHTBL; LPAREN; e1 = expr; COMMA; e2 = expr; RPAREN { RemoveHtbl(e1,e2) }

rdecs:
| x = ID; LPAREN; y = ID; targ=option(type_annotation); RPAREN;
  tres=option(type_annotation); EQUALS;
  e = expr  { (x, y, targ, tres, e) };
  
type_annotation:
| COLON; t=texpr { t } 

field:
| id = ID; EQUALS; e=expr { (id,(false,e)) }
| id = ID; EQUALSMUTABLE; e=expr { (id,(true,e)) }
    
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
| "tree"; t1 = texpr { TreeType(t1) }
| "list"; t1 = texpr { ListType(t1) }
| "sett"; LPAREN; t1 = texpr; RPAREN; { SetType(t1) }
| "queue"; LPAREN; t1 = texpr; RPAREN { QueueType(t1) }
| "stack"; LPAREN; t1 = texpr; RPAREN { StackType(t1) }
| "htbl";  LPAREN; t1 = texpr; COMMA; t2 = texpr; RPAREN { HtblType(t1,t2) }
| LBRACE; ts = separated_list(SEMICOLON, fieldtype); RBRACE { RecordType(ts) }
     

    
