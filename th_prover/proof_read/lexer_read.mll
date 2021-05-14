        {
        open Parser_read       (* The type token is defined in parser.mli *)
        exception Eof
        }
        rule token = parse
            [' ' '\t']                                          { token lexbuf }     (* skip blanks *)
          | ['\n']|("\r\n")                                     { EOL }
          | ['0'-'9'] as i                                      {INT(int_of_string (String.make 1 i))}
          | ("proof")                                           {BEGIN}
          
          | ("axiom")                                           {AXIOM}
          | ("ext")                                             {EXT}
          | ("affg")                                            {AFFG}
          | ("affd")                                            {AFFD}
          | ("><g")                                             {CONTRG}
          | ("><d")                                             {CONTRD}
          | ("notg")|("¬g")                                     {NOTG}
          | ("notd")|("¬d")                                     {NOTD}
          | ("^g")                                              {ANDG}
          | ("^d")                                              {ANDD}
          | ("vg")                                              {ORG}
          | ("vd")                                              {ORD}
          | ("->g")                                             {IMPG}
          | ("->d")                                             {IMPD}

          | 'v'                                                 { OR }
          | (['a'-'z']|['0'-'9']|['_']|['-'])++ as s            { NAME(s) }
          | ['A'-'Z'] as c                                      { CHAR(Var (Char.lowercase_ascii c)) }
          | ("->")                                              { IMP }
          | '^'                                                 { AND }
          | ("-|")|("¬")                                        { NOT }
          | '('                                                 { LPAREN }
          | ')'                                                 { RPAREN }
          
          |eof                                                  { EOF }
