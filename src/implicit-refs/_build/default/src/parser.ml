
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

and _menhir_goto_separated_nonempty_list_SEMICOLON_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.expr) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : ((string * Ast.expr) list)) = _v in
        let _v : ((string * Ast.expr) list) = 
# 144 "<standard.mly>"
    ( x )
# 154 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((string * Ast.expr) list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (string * Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.expr) list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 166 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.expr list)) = _v in
        let _v : (Ast.expr list) = 
# 144 "<standard.mly>"
    ( x )
# 182 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.expr list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 194 "src/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
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

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
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

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
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

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (id : (
# 23 "src/parser.mly"
       (string)
# 360 "src/parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 172 "src/parser.mly"
                          ( Proj(e1,id) )
# 367 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
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

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.expr) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (xs : ((string * Ast.expr) list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.expr) = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 443 "src/parser.ml"
         in
        
# 171 "src/parser.mly"
                                                            ( Record(fs) )
# 448 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "src/parser.mly"
       (string)
# 461 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState55 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 596 "src/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES | UNPAIR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 148 "src/parser.mly"
                                  ( Mul(e1,e2) )
# 617 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 146 "src/parser.mly"
                                 ( Add(e1,e2) )
# 642 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | BEGIN | COMMA | DEBUG | DEREF | DIVIDED | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | TIMES | UNPAIR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 149 "src/parser.mly"
                                    ( Div(e1,e2) )
# 663 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FST | ID _ | IF | IN | INT _ | ISZERO | LBRACE | LET | LETREC | LPAREN | MINUS | NEWREF | PAIR | PLUS | PROC | RBRACE | RPAREN | SEMICOLON | SET | SETREF | SND | THEN | UNPAIR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 147 "src/parser.mly"
                                  ( Sub(e1,e2) )
# 688 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState68 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 145 "src/parser.mly"
                                    ( Debug(e) )
# 720 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState70 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 159 "src/parser.mly"
                                      ( DeRef(e) )
# 754 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState72 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 151 "src/parser.mly"
                                  ( Fst(e) )
# 788 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState74 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState76 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))), _), _, (e3 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 161 "src/parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 957 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState79 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 157 "src/parser.mly"
                                       ( IsZero(e) )
# 989 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 23 "src/parser.mly"
       (string)
# 1018 "src/parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (string * Ast.expr) = 
# 176 "src/parser.mly"
                              ( (id,e) )
# 1024 "src/parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
            | RBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (string * Ast.expr))) = _menhir_stack in
                let _v : ((string * Ast.expr) list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1048 "src/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMICOLON_field_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState88 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1149 "src/parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 153 "src/parser.mly"
                                                    ( Let(x,e1,e2) )
# 1157 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState91 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1252 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 1256 "src/parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 154 "src/parser.mly"
                                                                               ( Letrec(x,y,e1,e2) )
# 1266 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState94 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 166 "src/parser.mly"
                                      ( Sub(Int 0, e) )
# 1298 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState96 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState96 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 164 "src/parser.mly"
                               (e)
# 1410 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState99 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 168 "src/parser.mly"
                                                  ( Pair(e1,e2) )
# 1452 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState101 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 156 "src/parser.mly"
                                           ( App(e1,e2) )
# 1485 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState103 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 158 "src/parser.mly"
                                       ( NewRef(e) )
# 1519 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState105 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105)
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState107 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 150 "src/parser.mly"
                                                    ( Pair(e1,e2) )
# 1622 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState109 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1652 "src/parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 155 "src/parser.mly"
                                                             ( Proc(x,e) )
# 1662 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1691 "src/parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 162 "src/parser.mly"
                                    ( Set(x,e) )
# 1698 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState112 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState114 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 160 "src/parser.mly"
                                                          ( SetRef(e1,e2) )
# 1799 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState116 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 152 "src/parser.mly"
                                  ( Snd(e) )
# 1833 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState118 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118)
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), (x : (
# 23 "src/parser.mly"
       (string)
# 1930 "src/parser.ml"
            ))), (y : (
# 23 "src/parser.mly"
       (string)
# 1934 "src/parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 170 "src/parser.mly"
                    ( Unpair(x,y,e1,e2) )
# 1945 "src/parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DOT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState122 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 114 "src/parser.mly"
                 ( e )
# 1970 "src/parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Ast.expr)) = _v in
            Obj.magic _1
        | MINUS ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PLUS ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TIMES ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : (Ast.expr list)) = _v in
    let _v : (Ast.expr list) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 1997 "src/parser.ml"
     in
    
# 184 "src/parser.mly"
                                            ( es )
# 2002 "src/parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (es : (Ast.expr list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.expr) = 
# 163 "src/parser.mly"
                             ( BeginEnd(es) )
# 2019 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | RPAREN ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | EQUALS ->
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            (match _tok with
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
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let _menhir_stack = Obj.magic _menhir_stack in
                            let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | RPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState24 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | NEWREF ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PAIR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | PROC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState24 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.expr) = 
# 167 "src/parser.mly"
                     ( Unit )
# 2915 "src/parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | EQUALS ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
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
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState36 in
        let _v : ((string * Ast.expr) list) = 
# 142 "<standard.mly>"
    ( [] )
# 3123 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_field__ _menhir_env _menhir_stack _menhir_s _v
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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "src/parser.mly"
       (int)
# 3194 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 22 "src/parser.mly"
       (int)
# 3202 "src/parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 143 "src/parser.mly"
              ( Int i )
# 3207 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

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
# 3263 "src/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 23 "src/parser.mly"
       (string)
# 3271 "src/parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 144 "src/parser.mly"
             ( Var x )
# 3276 "src/parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState50 in
        let _v : (Ast.expr list) = 
# 142 "<standard.mly>"
    ( [] )
# 3510 "src/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
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

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 3589 "src/parser.ml"
