type token =
  | SEP
  | EOF
  | CHAR of (Formule.formule)
  | IMP
  | AND
  | OR
  | NOT
  | LPAREN
  | RPAREN
  | EOL
  | STR of (string)

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string * Formule.formule
