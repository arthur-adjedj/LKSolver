type token =
  | SEP
  | EOF
  | CHAR of (Proof_build.Formule.formule)
  | IMP
  | AND
  | OR
  | NOT
  | LPAREN
  | RPAREN
  | EOL
  | STR of (string)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string * Proof_build.Formule.formule
