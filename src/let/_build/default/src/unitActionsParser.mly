%start prog
%token ABS
%token ARROW
%token BEGIN
%token BOOLTYPE
%token CAST
%token CLASS
%token COLON
%token COMMA
%token CONS
%token DEBUG
%token DEREF
%token DIVIDED
%token DOT
%token ELSE
%token EMPTYPRED
%token END
%token EOF
%token EQUALS
%token EXTENDS
%token FIELD
%token FST
%token HD
%token <string> ID
%token IF
%token IMPLEMENTS
%token IN
%token INSTANCEOF
%token <int> INT
%token INTERFACE
%token INTTYPE
%token ISZERO
%token LANGLE
%token LBRACE
%token LET
%token LETREC
%token LIST
%token LPAREN
%token METHOD
%token MINUS
%token NEW
%token NEWREF
%token PAIR
%token PLUS
%token PROC
%token RANGLE
%token RBRACE
%token REFTYPE
%token RPAREN
%token SELF
%token SEMICOLON
%token SEND
%token SET
%token SETREF
%token SND
%token SUPER
%token THEN
%token TIMES
%token TL
%token UNITTYPE
%token UNPAIR
%token UNTUPLE
%nonassoc ELSE EQUALS IN
%right ARROW
%left MINUS PLUS
%left DIVIDED TIMES
%left DOT
%nonassoc REFTYPE
%type <unit> prog
%%

loption_separated_nonempty_list_COMMA_ID__:
  
    {}
| separated_nonempty_list_COMMA_ID_
    {}

loption_separated_nonempty_list_COMMA_expr__:
  
    {}
| separated_nonempty_list_COMMA_expr_
    {}

loption_separated_nonempty_list_COMMA_formal_par__:
  
    {}
| separated_nonempty_list_COMMA_formal_par_
    {}

loption_separated_nonempty_list_SEMICOLON_expr__:
  
    {}
| separated_nonempty_list_SEMICOLON_expr_
    {}

loption_separated_nonempty_list_SEMICOLON_field__:
  
    {}
| separated_nonempty_list_SEMICOLON_field_
    {}

loption_separated_nonempty_list_SEMICOLON_fieldtype__:
  
    {}
| separated_nonempty_list_SEMICOLON_fieldtype_
    {}

list_abstract_method_decl_:
  
    {}
| abstract_method_decl list_abstract_method_decl_
    {}

list_iface_or_class_decl_:
  
    {}
| iface_or_class_decl list_iface_or_class_decl_
    {}

list_method_decl_:
  
    {}
| method_decl list_method_decl_
    {}

list_obj_fields_:
  
    {}
| obj_fields list_obj_fields_
    {}

separated_nonempty_list_COMMA_ID_:
  ID
    {}
| ID COMMA separated_nonempty_list_COMMA_ID_
    {}

separated_nonempty_list_COMMA_expr_:
  expr
    {}
| expr COMMA separated_nonempty_list_COMMA_expr_
    {}

separated_nonempty_list_COMMA_formal_par_:
  formal_par
    {}
| formal_par COMMA separated_nonempty_list_COMMA_formal_par_
    {}

separated_nonempty_list_SEMICOLON_expr_:
  expr
    {}
| expr SEMICOLON separated_nonempty_list_SEMICOLON_expr_
    {}

separated_nonempty_list_SEMICOLON_field_:
  field
    {}
| field SEMICOLON separated_nonempty_list_SEMICOLON_field_
    {}

separated_nonempty_list_SEMICOLON_fieldtype_:
  fieldtype
    {}
| fieldtype SEMICOLON separated_nonempty_list_SEMICOLON_fieldtype_
    {}

prog:
  list_iface_or_class_decl_ expr EOF
    {}

expr:
  INT
    {}
| ID
    {}
| DEBUG LPAREN expr RPAREN
    {}
| expr PLUS expr
    {}
| expr MINUS expr
    {}
| expr TIMES expr
    {}
| expr DIVIDED expr
    {}
| ABS LPAREN expr RPAREN
    {}
| PAIR LPAREN expr COMMA expr RPAREN
    {}
| FST LPAREN expr RPAREN
    {}
| SND LPAREN expr RPAREN
    {}
| LET ID EQUALS expr IN expr
    {}
| LETREC ID LPAREN ID RPAREN EQUALS expr IN expr
    {}
| LETREC ID LPAREN ID COLON texpr RPAREN COLON texpr EQUALS expr IN expr
    {}
| PROC LPAREN ID RPAREN LBRACE expr RBRACE
    {}
| PROC LPAREN ID COLON texpr RPAREN LBRACE expr RBRACE
    {}
| LPAREN expr expr RPAREN
    {}
| ISZERO LPAREN expr RPAREN
    {}
| NEWREF LPAREN expr RPAREN
    {}
| DEREF LPAREN expr RPAREN
    {}
| SETREF LPAREN expr COMMA expr RPAREN
    {}
| IF expr THEN expr ELSE expr
    {}
| SET ID EQUALS expr
    {}
| BEGIN exprs END
    {}
| LPAREN expr RPAREN
    {}
| LPAREN MINUS expr RPAREN
    {}
| LPAREN RPAREN
    {}
| LPAREN expr COMMA expr RPAREN
    {}
| UNPAIR LPAREN ID COMMA ID RPAREN EQUALS expr IN expr
    {}
| LANGLE loption_separated_nonempty_list_COMMA_expr__ RANGLE
    {}
| UNTUPLE LANGLE loption_separated_nonempty_list_COMMA_ID__ RANGLE EQUALS expr IN expr
    {}
| LBRACE loption_separated_nonempty_list_SEMICOLON_field__ RBRACE
    {}
| expr DOT ID
    {}
| NEW ID LPAREN loption_separated_nonempty_list_COMMA_expr__ RPAREN
    {}
| SELF
    {}
| SEND expr ID LPAREN loption_separated_nonempty_list_COMMA_expr__ RPAREN
    {}
| SUPER ID LPAREN loption_separated_nonempty_list_COMMA_expr__ RPAREN
    {}
| LIST LPAREN loption_separated_nonempty_list_COMMA_expr__ RPAREN
    {}
| HD LPAREN expr RPAREN
    {}
| TL LPAREN expr RPAREN
    {}
| EMPTYPRED LPAREN expr RPAREN
    {}
| CONS LPAREN expr COMMA expr RPAREN
    {}
| INSTANCEOF LPAREN expr COMMA ID RPAREN
    {}
| CAST LPAREN expr COMMA ID RPAREN
    {}

field:
  ID EQUALS expr
    {}

fieldtype:
  ID COLON texpr
    {}

exprs:
  loption_separated_nonempty_list_SEMICOLON_expr__
    {}

iface_or_class_decl:
  CLASS ID EXTENDS ID LBRACE list_obj_fields_ list_method_decl_ RBRACE
    {}
| CLASS ID EXTENDS ID IMPLEMENTS ID LBRACE list_obj_fields_ list_method_decl_ RBRACE
    {}
| INTERFACE ID LBRACE list_abstract_method_decl_ RBRACE
    {}

obj_fields:
  FIELD ID
    {}
| FIELD texpr ID
    {}

method_decl:
  METHOD ID LPAREN loption_separated_nonempty_list_COMMA_formal_par__ RPAREN LBRACE expr RBRACE
    {}
| METHOD texpr ID LPAREN loption_separated_nonempty_list_COMMA_formal_par__ RPAREN LBRACE expr RBRACE
    {}

abstract_method_decl:
  METHOD texpr ID LPAREN loption_separated_nonempty_list_COMMA_formal_par__ RPAREN
    {}

formal_par:
  ID
    {}
| ID COLON texpr
    {}

texpr:
  ID
    {}
| INTTYPE
    {}
| BOOLTYPE
    {}
| UNITTYPE
    {}
| texpr ARROW texpr
    {}
| texpr TIMES texpr
    {}
| LPAREN texpr RPAREN
    {}
| REFTYPE texpr
    {}
| LBRACE loption_separated_nonempty_list_SEMICOLON_fieldtype__ RBRACE
    {}

%%
