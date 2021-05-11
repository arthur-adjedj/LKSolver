(* File lexer.mll *)
        {
        open Parser        (* The type token is defined in parser.mli *)
        exception Eof
        }
        rule token = parse
            [' ' '\t']                                          { token lexbuf }     (* skip blanks *)
          | [':']                                               { SEP }
          | ['\n']                                              { EOL }
          | 'v'                                                 { OR }
          | (['a'-'z']|['0'-'9']|['_']|['-'])++ as s   { STR(s) }
          | ['A'-'Z'] as c                                      { CHAR(Var c) }
          | '^'                                                 { AND }
          | ("-|")|("¬")                                        { NOT }
          | ("->")                                              { IMP }
          | '('                                                 { LPAREN }
          | ')'                                                 { RPAREN }
          |eof                                                  { EOF }