type token =
  | SEP
  | EOF
  | CHAR of (Proof_lib.Formule.formule)
  | IMP
  | AND
  | OR
  | NOT
  | LPAREN
  | RPAREN
  | EOL
  | STR of (string)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string * Proof_lib.Formule.formule
