
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNPAIR
    | TIMES
    | THEN
    | SND
    | SETREF
    | SET
    | SEMICOLON
    | RPAREN
    | RBRACE
    | PROC
    | PLUS
    | PAIR
    | NEWREF
    | MINUS
    | LPAREN
    | LETREC
    | LET
    | LBRACE
    | ISZERO
    | INT of (
# 22 "src/parser.mly"
       (int)
# 30 "src/parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "src/parser.mly"
       (string)
# 37 "src/parser.ml"
  )
    | FST
    | EQUALS
    | EOF
    | END
    | ELSE
    | DOT
    | DIVIDED
    | DEREF
    | DEBUG
    | COMMA
    | BEGIN
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState122
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState116
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState111
  | MenhirState109
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState99
  | MenhirState98
  | MenhirState96
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState86
  | MenhirState81
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState62
  | MenhirState60
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState50
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState32
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState14
  | MenhirState11
  | MenhirState9
  | MenhirState7
  | MenhirState0

# 8 "src/parser.mly"
  
open Ast

# 137 "src/parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMICOLON_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 144 "<standard.mly>"
    ( x )
# 159 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_field_) : 'tv_separated_nonempty_list_SEMICOLON_field_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 176 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)) : 'freshtv480)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 197 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_expr_) : 'tv_separated_nonempty_list_SEMICOLON_expr_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 214 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)) : 'freshtv472)
    | _ ->
        _menhir_fail ()

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv461 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 379 "src/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv459 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let ((id : (
# 23 "src/parser.mly"
       (string)
# 387 "src/parser.ml"
        )) : (
# 23 "src/parser.mly"
       (string)
# 391 "src/parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expr = 
# 172 "src/parser.mly"
                          ( Proj(e1,id) )
# 398 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_field__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv457 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_SEMICOLON_field__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 478 "src/parser.ml"
         in
        
# 171 "src/parser.mly"
                                                            ( Record(fs) )
# 483 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)) : 'freshtv454)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv455 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_field__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 497 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 509 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv448)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 563 "src/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState55 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv272)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 645 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv276)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 148 "src/parser.mly"
                                  ( Mul(e1,e2) )
# 668 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv280)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 146 "src/parser.mly"
                                 ( Add(e1,e2) )
# 695 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv284)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 149 "src/parser.mly"
                                    ( Div(e1,e2) )
# 718 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv288)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 147 "src/parser.mly"
                                  ( Sub(e1,e2) )
# 745 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv292)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 145 "src/parser.mly"
                                    ( Debug(e) )
# 781 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv298)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv303 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState70 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 159 "src/parser.mly"
                                      ( DeRef(e) )
# 819 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv304)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState72 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 151 "src/parser.mly"
                                  ( Fst(e) )
# 857 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv310)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState75
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv312)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv314)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv317 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv315 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState76 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv316)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv318)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv321 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv319 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "src/parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 1032 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv322)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv327 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv325 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState79 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv323 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 157 "src/parser.mly"
                                       ( IsZero(e) )
# 1068 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv328)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1082 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | RBRACE | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 1102 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (id : (
# 23 "src/parser.mly"
       (string)
# 1107 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_field = 
# 176 "src/parser.mly"
                              ( (id,e) )
# 1113 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv337) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_field) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv330)
            | RBRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_field)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMICOLON_field_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1144 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)) : 'freshtv338)) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv342)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv345 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1163 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv343 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1177 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv344)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv346)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv349 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1241 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv347 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1261 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1266 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 153 "src/parser.mly"
                                                    ( Let(x,e1,e2) )
# 1274 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv350)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv353 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1286 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1290 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv351 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1304 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1308 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState91 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv352)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv354)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv357 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1372 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 1376 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv355 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1396 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 1400 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1405 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 1409 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "src/parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1419 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv358)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 166 "src/parser.mly"
                                      ( Sub(Int 0, e) )
# 1455 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv364)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState96 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv366)
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState96 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 164 "src/parser.mly"
                               (e)
# 1572 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv372)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv377 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv375 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState99 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv373 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 168 "src/parser.mly"
                                                  ( Pair(e1,e2) )
# 1618 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv378)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 156 "src/parser.mly"
                                           ( App(e1,e2) )
# 1655 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv384)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "src/parser.mly"
                                       ( NewRef(e) )
# 1693 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv390)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv392)
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv394)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv399 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState107 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 150 "src/parser.mly"
                                                    ( Pair(e1,e2) )
# 1802 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv400)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv405 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1816 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv403 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1834 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv401 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 1842 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1848 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "src/parser.mly"
                                                             ( Proc(x,e) )
# 1858 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv406)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv409 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1872 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv407 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 1892 "src/parser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1897 "src/parser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 162 "src/parser.mly"
                                    ( Set(x,e) )
# 1904 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv410)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv412)
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv414)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv419 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState114 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 160 "src/parser.mly"
                                                          ( SetRef(e1,e2) )
# 2011 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv420)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv425 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv423 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState116 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 152 "src/parser.mly"
                                  ( Snd(e) )
# 2049 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv426)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv429 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2063 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2067 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv427 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2081 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 2085 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState118 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv428)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv430)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv433 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2149 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2153 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | NEWREF | PAIR | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv431 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2173 "src/parser.ml"
            ))) * (
# 23 "src/parser.mly"
       (string)
# 2177 "src/parser.ml"
            )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 2182 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 2186 "src/parser.ml"
            ))), _, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 170 "src/parser.mly"
                    ( Unpair(x,y,e1,e2) )
# 2197 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv434)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState122 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 82 "src/parser.mly"
       (Ast.expr)
# 2226 "src/parser.ml"
            ) = 
# 114 "src/parser.mly"
                 ( e )
# 2230 "src/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 82 "src/parser.mly"
       (Ast.expr)
# 2238 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 82 "src/parser.mly"
       (Ast.expr)
# 2246 "src/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 82 "src/parser.mly"
       (Ast.expr)
# 2254 "src/parser.ml"
            )) : (
# 82 "src/parser.mly"
       (Ast.expr)
# 2258 "src/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv436)) : 'freshtv438)) : 'freshtv440)) : 'freshtv442)) : 'freshtv444)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv446)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__) = _v in
    ((let _v : 'tv_exprs = let es = 
# 232 "<standard.mly>"
    ( xs )
# 2287 "src/parser.ml"
     in
    
# 184 "src/parser.mly"
                                            ( es )
# 2292 "src/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv265) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exprs) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv263 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (es : 'tv_exprs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 163 "src/parser.mly"
                             ( BeginEnd(es) )
# 2316 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state) * _menhir_state * 'tv_exprs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)) : 'freshtv270)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv127 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2340 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2344 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv129 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2353 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2357 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv131 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2366 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2370 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv137 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2399 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv143 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2408 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv145 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state)) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv163 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2462 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2466 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv165 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2475 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2479 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv167 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2488 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2492 "src/parser.ml"
        )))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv169 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2501 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv171 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2510 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv173 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2519 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_field)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 2533 "src/parser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv181 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv183 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv197 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * (
# 23 "src/parser.mly"
       (string)
# 2667 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2681 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv235 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2690 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2694 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv245 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2723 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 2732 "src/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv253 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2751 "src/parser.ml"
        ))) * (
# 23 "src/parser.mly"
       (string)
# 2755 "src/parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv256)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv117 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "src/parser.mly"
       (string)
# 2782 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv113 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2793 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv109 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2803 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    let (_v : (
# 23 "src/parser.mly"
       (string)
# 2808 "src/parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | RPAREN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv105 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2819 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 2823 "src/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | EQUALS ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv101 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2833 "src/parser.ml"
                            ))) * (
# 23 "src/parser.mly"
       (string)
# 2837 "src/parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | BEGIN ->
                                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | DEBUG ->
                                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | DEREF ->
                                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | FST ->
                                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | ID _v ->
                                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
                            | IF ->
                                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | INT _v ->
                                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
                            | ISZERO ->
                                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | LBRACE ->
                                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | LET ->
                                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | LETREC ->
                                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | LPAREN ->
                                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | NEWREF ->
                                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | PAIR ->
                                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | PROC ->
                                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | SET ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | SETREF ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | SND ->
                                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | UNPAIR ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv102)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv103 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2891 "src/parser.ml"
                            ))) * (
# 23 "src/parser.mly"
       (string)
# 2895 "src/parser.ml"
                            ))) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv107 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2906 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 2910 "src/parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv111 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2921 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv115 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 2932 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv98)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv94)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 3087 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv85 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3098 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv86)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv87 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3152 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv77 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 23 "src/parser.mly"
       (string)
# 3182 "src/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv73 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3193 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv69 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3203 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BEGIN ->
                        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | DEBUG ->
                        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | DEREF ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | FST ->
                        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | ID _v ->
                        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
                    | IF ->
                        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | INT _v ->
                        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
                    | ISZERO ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | LBRACE ->
                        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | LET ->
                        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | LETREC ->
                        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | LPAREN ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | NEWREF ->
                        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | PAIR ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | PROC ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | SET ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | SETREF ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | SND ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | UNPAIR ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv70)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv71 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3257 "src/parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv75 * _menhir_state)) * (
# 23 "src/parser.mly"
       (string)
# 3268 "src/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)) : 'freshtv78)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv79 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv66)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState24 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv56)
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState24 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_expr = 
# 167 "src/parser.mly"
                     ( Unit )
# 3511 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)) : 'freshtv60)
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 3539 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3550 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv43 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3560 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 23 "src/parser.mly"
       (string)
# 3565 "src/parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv39 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3576 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 3580 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | EQUALS ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv35 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3590 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 3594 "src/parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | BEGIN ->
                            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | DEBUG ->
                            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | DEREF ->
                            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | FST ->
                            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | ID _v ->
                            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
                        | IF ->
                            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | INT _v ->
                            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
                        | ISZERO ->
                            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | LBRACE ->
                            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | LET ->
                            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | LETREC ->
                            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | LPAREN ->
                            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | NEWREF ->
                            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | PAIR ->
                            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | PROC ->
                            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | SET ->
                            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | SETREF ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | SND ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | UNPAIR ->
                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv36)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv37 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3648 "src/parser.ml"
                        ))) * (
# 23 "src/parser.mly"
       (string)
# 3652 "src/parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv41 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3663 "src/parser.ml"
                    ))) * (
# 23 "src/parser.mly"
       (string)
# 3667 "src/parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)) : 'freshtv44)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv45 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3678 "src/parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3689 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 23 "src/parser.mly"
       (string)
# 3713 "src/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv27 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3724 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BEGIN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | DEBUG ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | DEREF ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | FST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | IF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | INT _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | ISZERO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LETREC ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LPAREN ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | NEWREF ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | PAIR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | PROC ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | SET ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | SETREF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | SND ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | UNPAIR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv29 * _menhir_state) * (
# 23 "src/parser.mly"
       (string)
# 3778 "src/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState36 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_field__ = 
# 142 "<standard.mly>"
    ( [] )
# 3805 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "src/parser.mly"
       (int)
# 3878 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 22 "src/parser.mly"
       (int)
# 3888 "src/parser.ml"
    )) : (
# 22 "src/parser.mly"
       (int)
# 3892 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 143 "src/parser.mly"
              ( Int i )
# 3897 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 3953 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 23 "src/parser.mly"
       (string)
# 3963 "src/parser.ml"
    )) : (
# 23 "src/parser.mly"
       (string)
# 3967 "src/parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 144 "src/parser.mly"
             ( Var x )
# 3972 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DEBUG ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DEREF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | IF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | INT _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | ISZERO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LETREC ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LPAREN ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | NEWREF ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PAIR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PROC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SET ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SETREF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SND ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | UNPAIR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState50 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 4213 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 82 "src/parser.mly"
       (Ast.expr)
# 4236 "src/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEBUG ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEREF ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | ISZERO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LETREC ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SET ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SETREF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SND ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNPAIR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 4301 "src/parser.ml"
