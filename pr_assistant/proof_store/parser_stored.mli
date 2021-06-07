
(* The type of tokens. *)

type token = 
  | STR of (string)
  | SEP
  | RPAREN
  | OR
  | NOT
  | LPAREN
  | IMP
  | EOL
  | EOF
  | CHAR of (Proof_build.Formule.formule)
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (string * Proof_build.Formule.formule)
