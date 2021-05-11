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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  257 (* SEP *);
    0 (* EOF *);
  259 (* IMP *);
  260 (* AND *);
  261 (* OR *);
  262 (* NOT *);
  263 (* LPAREN *);
  264 (* RPAREN *);
  265 (* EOL *);
    0|]

let yytransl_block = [|
  258 (* CHAR *);
  266 (* STR *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\003\000\003\000\003\000\003\000\
\003\000\003\000\000\000"

let yylen = "\002\000\
\005\000\004\000\004\000\001\000\001\000\003\000\003\000\003\000\
\003\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\004\000\011\000\000\000\000\000\005\000\000\000\
\000\000\000\000\010\000\000\000\002\000\000\000\000\000\000\000\
\000\000\006\000\009\000\007\000\008\000\001\000"

let yydgoto = "\002\000\
\004\000\005\000\010\000"

let yysindex = "\005\000\
\253\254\000\000\000\000\000\000\013\255\254\254\000\000\254\254\
\254\254\001\000\000\000\008\255\000\000\254\254\254\254\254\254\
\015\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\017\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\250\255"

let yytablesize = 266
let yytable = "\007\000\
\013\000\011\000\012\000\008\000\009\000\001\000\003\000\019\000\
\020\000\021\000\014\000\015\000\016\000\006\000\022\000\018\000\
\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\014\000\015\000\016\000\000\000\000\000\
\000\000\017\000"

let yycheck = "\002\001\
\000\000\008\000\009\000\006\001\007\001\001\000\010\001\014\000\
\015\000\016\000\003\001\004\001\005\001\001\001\000\000\008\001\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\003\001\004\001\005\001\255\255\255\255\
\255\255\009\001"

let yynames_const = "\
  SEP\000\
  EOF\000\
  IMP\000\
  AND\000\
  OR\000\
  NOT\000\
  LPAREN\000\
  RPAREN\000\
  EOL\000\
  "

let yynames_block = "\
  CHAR\000\
  STR\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'expr1) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr2) in
    Obj.repr(
# 15 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( (_1 , _3) )
# 161 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : string * Formule.formule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'expr1) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr2) in
    Obj.repr(
# 16 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( (_1 , _3) )
# 169 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : string * Formule.formule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'expr1) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr2) in
    Obj.repr(
# 17 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( (_1 , _3) )
# 177 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : string * Formule.formule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 20 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      (_1)
# 184 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Formule.formule) in
    Obj.repr(
# 23 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( _1 )
# 191 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr2) in
    Obj.repr(
# 24 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( _2 )
# 198 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr2) in
    Obj.repr(
# 25 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( And(_1,_3) )
# 206 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr2) in
    Obj.repr(
# 26 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( Or(_1,_3) )
# 214 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr2) in
    Obj.repr(
# 27 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( Imp(_1,_3) )
# 222 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr2) in
    Obj.repr(
# 28 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.mly"
                                      ( Not _2)
# 229 "C:\Users\aarth\IdeaProjects\Theorem_prover\th_prover\lib\parser.ml"
               : 'expr2))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : string * Formule.formule)
