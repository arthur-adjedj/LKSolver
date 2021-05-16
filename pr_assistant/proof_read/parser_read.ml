
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | RPAREN
    | REDUC
    | ORG
    | ORD
    | OR
    | NOTG
    | NOTD
    | NOT
    | NAME of (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
  )
    | LPAREN
    | INT of (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 25 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
  )
    | IMPG
    | IMPD
    | IMP
    | EXT
    | EOL
    | EOF
    | CONTRG
    | CONTRD
    | CHAR of (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
  )
    | BEGIN
    | AXIOM
    | ANDG
    | ANDD
    | AND
    | AFFG
    | AFFD
  
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
  | MenhirState56
  | MenhirState29
  | MenhirState17
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState4
  | MenhirState3
  | MenhirState2

# 1 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
          
            open Proof_build.Formule
        
# 77 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"

let rec _menhir_goto_tacts : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 82 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195) * (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 91 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 97 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193) * (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 103 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 109 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 113 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, (_2 : (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 118 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ))) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 123 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 45 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     ( ( _2 , _3 ) )
# 127 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191) = _menhir_stack in
        let (_v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 134 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
        let (_v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 141 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        let ((_1 : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 148 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 152 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)) : 'freshtv196)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 160 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 166 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 172 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 178 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 182 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 187 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ))) = _menhir_stack in
        let _v : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 192 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 72 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    (_1::_3)
# 196 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
    | _ ->
        _menhir_fail ()

and _menhir_goto_tact : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 205 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 215 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 225 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 232 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 237 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 242 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 67 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     (_2)
# 246 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 256 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState56 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 265 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 275 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 281 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 286 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 291 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 71 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    ([_1])
# 295 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 303 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AFFD ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | AFFG ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ANDD ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ANDG ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | AXIOM ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | CONTRD ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | CONTRG ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EOF ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | EXT ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IMPD ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IMPG ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NOTD ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NOTG ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ORD ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ORG ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | REDUC ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 353 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | _ ->
        _menhir_fail ()

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 372 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 383 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 388 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 395 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 400 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 404 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 409 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 414 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 53 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.reduc _2 _3)
# 418 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 428 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 452 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 460 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 464 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 470 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 63 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.or_gauche _2)
# 474 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 497 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 505 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 509 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 515 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 64 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.or_droite _2)
# 519 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 542 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 550 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 554 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 560 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 59 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.not_gauche _2)
# 564 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 587 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 595 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 599 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 605 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 60 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.not_droite _2)
# 609 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AFFD ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | AFFG ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ANDD ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ANDG ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | AXIOM ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CONTRD ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CONTRG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | EXT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IMPD ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IMPG ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOTD ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOTG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ORD ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ORG ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | REDUC ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 675 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 683 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 687 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 693 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 65 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.imp_gauche _2)
# 697 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)) : 'freshtv132)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 720 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 728 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 732 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 738 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 66 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.imp_droite _2)
# 742 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 765 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 773 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 777 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 783 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 54 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_store.Ext_props.ext _2)
# 787 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)) : 'freshtv120)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 40 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 806 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
    ) = 
# 70 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    ([])
# 810 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
     in
    _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 826 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 837 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 842 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 849 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 854 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 858 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 863 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 868 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 57 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.contr_gauche _2 _3)
# 872 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 882 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 906 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 917 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 922 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 929 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 934 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 938 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 943 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 948 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 58 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.contr_droite _2 _3)
# 952 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)) : 'freshtv98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv99 * _menhir_state) * (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 962 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 983 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
    ) = 
# 52 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.axiom)
# 987 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
     in
    _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1003 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1011 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1015 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1021 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 61 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.and_gauche _2)
# 1025 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1048 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1056 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1060 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1066 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 62 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.and_droite _2)
# 1070 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)) : 'freshtv84)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1093 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1101 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1105 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1111 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 55 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.aff_gauche _2)
# 1115 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)) : 'freshtv78)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1138 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1146 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) : (
# 19 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (int)
# 1150 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1156 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ) = 
# 56 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.aff_droite _2)
# 1160 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv70)) : 'freshtv72)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_start : _menhir_env -> 'ttv_tail -> (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1179 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv67) * (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1187 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AFFD ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | AFFG ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ANDD ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ANDG ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | AXIOM ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | CONTRD ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | CONTRG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | EOF ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | EXT ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | IMPD ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | IMPG ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOTD ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOTG ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ORD ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ORG ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | REDUC ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv68)

and _menhir_run8 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_prop -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_prop -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_prop -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_goto_prop : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prop -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | IMP ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv31 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_prop)) = _menhir_stack in
            let _v : 'tv_prop = 
# 76 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     ( _2 )
# 1305 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_prop)), _, (_3 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 79 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    ( Or(_1,_3) )
# 1324 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AFFD | AFFG | ANDD | ANDG | AXIOM | CONTRD | CONTRG | EOF | EOL | EXT | IMP | IMPD | IMPG | LPAREN | NOTD | NOTG | ORD | ORG | REDUC | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv43 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_prop)), _, (_3 : 'tv_prop)) = _menhir_stack in
            let _v : 'tv_prop = 
# 77 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    ( Imp(_1,_3) )
# 1344 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_prop)), _, (_3 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 78 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                    ( And(_1,_3) )
# 1363 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 80 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     ( Not _2)
# 1375 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)) : 'freshtv56)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1383 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1395 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1402 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (_1 : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1407 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))), _, (_2 : 'tv_prop)) = _menhir_stack in
            let _v : (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1412 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 48 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     ( ( _1 , _2 ) )
# 1416 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _v) : 'freshtv58)) : 'freshtv60)
        | IMP ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | AFFD | AFFG | ANDD | ANDG | AXIOM | CONTRD | CONTRG | EOF | EXT | IMPD | IMPG | LPAREN | NOTD | NOTG | ORD | ORG | REDUC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1428 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (_1 : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1433 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ))), _, (_2 : 'tv_prop)) = _menhir_stack in
            let _v : (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1438 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            ) = 
# 49 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                     ( ( _1 , _2 ) )
# 1442 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
             in
            _menhir_goto_start _menhir_env _menhir_stack _v) : 'freshtv62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1452 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 41 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1467 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17) * (
# 39 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1481 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv18)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_prop)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_prop)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_prop)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1514 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv30)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAR _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NOT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1555 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1565 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
    )) : (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1569 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
    )) = _v in
    ((let _v : 'tv_prop = 
# 75 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
                                      ( _1 )
# 1574 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
     in
    _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

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
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 1593 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | NAME _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
            let (_v : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.mly"
               (string)
# 1619 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CHAR _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | NOT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv2)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv4)) : 'freshtv6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10))

# 269 "<standard.mly>"
  

# 1651 "C:\Users\aarth\IdeaProjects\Theorem_prover\pr_assistant\proof_read\parser_read.ml"
