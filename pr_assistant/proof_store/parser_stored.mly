        %token SEP
        %token EOF
        %token <Proof_build.Formule.formule> CHAR
        %token IMP AND OR NOT
        %token LPAREN RPAREN
        %token EOL
        %left IMP AND OR     /* lowest precedence */
        %left NOT       /* medium precedence */
        %token <string> STR
        %start main             /* the entry point */
        %type <string * Proof_build.Formule.formule> main
        %type <Proof_build.Formule.formule> expr2
        %%
        main:
            |expr1 SEP expr2 EOF      { ($1 , $3) }
            |expr1 SEP expr2 EOL      { ($1 , $3) }
        ;
        expr1:
            STR                       {$1}
        ;
        expr2:
            CHAR                      { $1 }
          | LPAREN expr2 RPAREN       { $2 }
          | expr2 AND expr2           { And ($1,$3) }
          | expr2 OR expr2            { Or ($1,$3) }
          | expr2 IMP expr2           { Imp ($1,$3) }
          | NOT expr2                 { Not $2}
        ;