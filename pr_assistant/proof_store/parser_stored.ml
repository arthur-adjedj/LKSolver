
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | STR of (
# 9 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (string)
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
  )
    | SEP
    | RPAREN
    | OR
    | NOT
    | LPAREN
    | IMP
    | EOL
    | EOF
    | CHAR of (
# 3 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (Proof_build.Formule.formule)
# 24 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
  )
    | AND
  
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
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState6
  | MenhirState5
  | MenhirState4

let rec _menhir_goto_main : _menhir_env -> 'ttv_tail -> (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 53 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
    let (_v : (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 61 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
    let ((_1 : (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 68 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    )) : (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 72 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv68)) : 'freshtv70)

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 79 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 99 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 119 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_expr2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 139 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 149 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | IMP ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 165 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 172 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 177 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ))) = _menhir_stack in
            let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 182 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ) = 
# 23 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( _2 )
# 186 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
             in
            _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 196 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 205 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 209 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 215 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 219 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 224 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))), _, (_3 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 228 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = _menhir_stack in
        let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 233 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ) = 
# 25 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( Or (_1,_3) )
# 237 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
         in
        _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 245 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 249 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 255 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 259 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 264 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))), _, (_3 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 268 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = _menhir_stack in
        let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 273 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ) = 
# 26 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( Imp (_1,_3) )
# 277 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
         in
        _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 285 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 289 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 295 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 299 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 304 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))), _, (_3 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 308 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = _menhir_stack in
        let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 313 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ) = 
# 24 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( And (_1,_3) )
# 317 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
         in
        _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)) : 'freshtv50)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 325 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 331 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 336 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = _menhir_stack in
        let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 341 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ) = 
# 27 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( Not _2)
# 345 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
         in
        _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv65 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 353 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv57 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 365 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv55 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 371 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (_1 : 'tv_expr1)), _, (_3 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 376 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ))) = _menhir_stack in
            let _v : (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 381 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ) = 
# 15 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( (_1 , _3) )
# 385 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
             in
            _menhir_goto_main _menhir_env _menhir_stack _v) : 'freshtv56)) : 'freshtv58)
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv61 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 393 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv59 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 399 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (_1 : 'tv_expr1)), _, (_3 : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 404 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ))) = _menhir_stack in
            let _v : (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 409 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            ) = 
# 16 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( (_1 , _3) )
# 413 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
             in
            _menhir_goto_main _menhir_env _menhir_stack _v) : 'freshtv60)) : 'freshtv62)
        | IMP ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv63 * 'tv_expr1)) * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 427 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 440 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 449 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 458 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * 'tv_expr1)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (Proof_build.Formule.formule)
# 514 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 3 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (Proof_build.Formule.formule)
# 524 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    )) : (
# 3 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (Proof_build.Formule.formule)
# 528 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    )) = _v in
    ((let _v : (
# 12 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (Proof_build.Formule.formule)
# 533 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
    ) = 
# 22 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      ( _1 )
# 537 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
     in
    _menhir_goto_expr2 _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

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

and main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 11 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
              (string * Proof_build.Formule.formule)
# 556 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STR _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let (_v : (
# 9 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (string)
# 576 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let ((_1 : (
# 9 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (string)
# 584 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) : (
# 9 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
               (string)
# 588 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
        )) = _v in
        ((let _v : 'tv_expr1 = 
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.mly"
                                      (_1)
# 593 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = _menhir_stack in
        let (_v : 'tv_expr1) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * 'tv_expr1) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * 'tv_expr1) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CHAR _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv2)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3 * 'tv_expr1) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv4)) : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)) : 'freshtv16))

# 269 "<standard.mly>"
  

# 636 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_store\parser_stored.ml"
