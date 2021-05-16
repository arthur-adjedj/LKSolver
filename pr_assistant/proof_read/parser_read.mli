
(* The type of tokens. *)

type token = 
  | RPAREN
  | REDUC
  | ORG
  | ORD
  | OR
  | NOTG
  | NOTD
  | NOT
  | NAME of (string)
  | LPAREN
  | INT of (int)
  | IMPG
  | IMPD
  | IMP
  | EXT
  | EOL
  | EOF
  | CONTRG
  | CONTRD
  | CHAR of (Proof_build.Formule.formule)
  | BEGIN
  | AXIOM
  | ANDG
  | ANDD
  | AND
  | AFFG
  | AFFD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list))
