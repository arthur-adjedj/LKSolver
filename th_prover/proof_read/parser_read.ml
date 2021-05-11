
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | RPAREN
    | ORG
    | ORD
    | OR
    | NOTG
    | NOTD
    | NOT
    | NAME of (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 18 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
  )
    | LPAREN
    | INT of (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 24 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
  | MenhirState53
  | MenhirState26
  | MenhirState17
  | MenhirState12
  | MenhirState10
  | MenhirState8
  | MenhirState4
  | MenhirState3
  | MenhirState2

# 1 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
          
            open Proof_build.Formule
        
# 76 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"

let rec _menhir_goto_tacts : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 81 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183) * (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 90 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 96 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181) * (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 102 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 108 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 112 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, (_2 : (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 117 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ))) = _menhir_stack in
        let _v : (
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 122 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 42 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ( ( _2 , _3 ) )
# 126 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179) = _menhir_stack in
        let (_v : (
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 133 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
        let (_v : (
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 140 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
        let ((_1 : (
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 147 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 151 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv176)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 159 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 165 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 171 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 177 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 181 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 186 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ))) = _menhir_stack in
        let _v : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 191 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 67 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    (_1::_3)
# 195 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)
    | _ ->
        _menhir_fail ()

and _menhir_goto_tact : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 204 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 214 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state) * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 224 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 231 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 236 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 241 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ) = 
# 62 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                     (_2)
# 245 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 255 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState53 | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 264 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 274 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 280 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 285 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 290 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ) = 
# 66 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ([_1])
# 294 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
             in
            _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 302 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AFFD ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | AFFG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ANDD ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ANDG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | AXIOM ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | CONTRD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | CONTRG ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | EOF ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | EXT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | IMPD ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | IMPG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPAREN ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | NOTD ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | NOTG ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ORD ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ORG ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv171 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 350 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 374 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 382 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 386 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 392 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 58 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.or_gauche _2)
# 396 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 419 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 427 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 431 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 437 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 59 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.or_droite _2)
# 441 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 464 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 472 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 476 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 482 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 54 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.not_gauche _2)
# 486 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 509 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 517 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 521 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 527 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 55 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.not_droite _2)
# 531 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)) : 'freshtv136)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AFFD ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | AFFG ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ANDD ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ANDG ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | AXIOM ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | CONTRD ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | CONTRG ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | EXT ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IMPD ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IMPG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOTD ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOTG ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ORD ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ORG ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 595 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 603 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 607 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 613 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 60 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.imp_gauche _2)
# 617 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 640 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 648 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 652 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 658 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 61 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.imp_droite _2)
# 662 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 685 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 693 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 697 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 703 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 49 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_store.Ext_props.ext _2)
# 707 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv113) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 37 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique list)
# 726 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
    ) = 
# 65 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ([])
# 730 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
     in
    _menhir_goto_tacts _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 746 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv105 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 757 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 762 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv103 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 769 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 774 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 778 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 783 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 788 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ) = 
# 52 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.contr_gauche _2 _3)
# 792 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv107 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 802 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 826 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv95 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 837 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 842 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 849 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            let ((_3 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 854 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 858 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = _v in
            ((let ((_menhir_stack, _menhir_s), (_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 863 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ))) = _menhir_stack in
            let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 868 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ) = 
# 53 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.contr_droite _2 _3)
# 872 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
             in
            _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv97 * _menhir_state) * (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 882 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv91) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 903 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
    ) = 
# 48 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.axiom)
# 907 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
     in
    _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv92)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 923 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 931 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 935 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 941 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 56 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                (Proof_build.Tactiques.and_gauche _2)
# 945 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)) : 'freshtv88)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 968 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 976 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 980 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 986 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 57 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.and_droite _2)
# 990 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1013 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1021 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1025 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1031 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 50 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.aff_gauche _2)
# 1035 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)) : 'freshtv76)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1058 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        let ((_2 : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1066 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) : (
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (int)
# 1070 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1076 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ) = 
# 51 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                 (Proof_build.Tactiques.aff_droite _2)
# 1080 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_tact _menhir_env _menhir_stack _menhir_s _v) : 'freshtv68)) : 'freshtv70)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)

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
# 71 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                     ( _2 )
# 1165 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 73 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ( Or(_1,_3) )
# 1184 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_prop)), _, (_3 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 74 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ( Imp(_1,_3) )
# 1196 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_prop)) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_prop)), _, (_3 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 72 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ( And(_1,_3) )
# 1208 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)) : 'freshtv50)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_prop)) = _menhir_stack in
        let _v : 'tv_prop = 
# 75 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                     ( Not _2)
# 1220 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
         in
        _menhir_goto_prop _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1228 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
        | EOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv61 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1240 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1247 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (_1 : (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1252 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ))), _, (_2 : 'tv_prop)) = _menhir_stack in
            let _v : (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1257 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            ) = 
# 45 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                    ( ( _1 , _2 ) )
# 1261 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv57) = _menhir_stack in
            let (_v : (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1268 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv55) * (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1275 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AFFD ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | AFFG ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ANDD ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ANDG ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | AXIOM ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CONTRD ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | CONTRG ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | EOF ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | EXT ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | IMPD ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | IMPG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | LPAREN ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NOTD ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | NOTG ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ORD ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | ORG ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv56)) : 'freshtv58)) : 'freshtv60)) : 'freshtv62)
        | IMP ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv63 * (
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1327 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
            )) * _menhir_state * 'tv_prop) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state * (
# 38 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (Proof_build.Tactiques.tactique)
# 1342 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17) * (
# 36 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              (string * Proof_build.Formule.formule)
# 1356 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1389 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1430 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1440 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
    )) : (
# 8 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (Proof_build.Formule.formule)
# 1444 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
    )) = _v in
    ((let _v : 'tv_prop = 
# 70 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
                                      ( _1 )
# 1449 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 35 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
              ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
# 1468 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
# 6 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.mly"
               (string)
# 1494 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
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
  

# 1526 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\proof_read\parser_read.ml"
