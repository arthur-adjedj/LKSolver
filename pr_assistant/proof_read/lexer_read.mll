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
          | ("affg")|("wl")                                            {AFFG}
          | ("affd")|("wr")                                           {AFFD}
          | ("><g")|("cl")                                             {CONTRG}
          | ("><d")|("cr")                                               {CONTRD}
          | ("notg")|("¬g")|("notl")|("¬l")                                     {NOTG}
          | ("notd")|("¬d")|("notr")|("¬r")                                      {NOTD}
          | ("^g")|("^l")                                              {ANDG}
          | ("^d")|("^r")                                           {ANDD}
          | ("vg")|("vl")                                              {ORG}
          | ("vd")|("vr")                                              {ORD}
          | ("->g")|("->l")                                             {IMPG}
          | ("->d")|("->r")                                             {IMPD}

          | 'v'                                                 { OR }
          | (['a'-'z']|['0'-'9']|['_']|['-'])++ as s            { NAME(s) }
          | ['A'-'Z'] as c                                      { CHAR(Var (Char.lowercase_ascii c)) }
          | ("->")                                              { IMP }
          | '^'                                                 { AND }
          | ("-|")|("¬")                                        { NOT }
          | '('                                                 { LPAREN }
          | ')'                                                 { RPAREN }
          
          |eof                                                  { EOF }
