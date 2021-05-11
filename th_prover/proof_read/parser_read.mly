        %{
            open Proof_build.Formule
        %}
        
        %token BEGIN
        %token <string> NAME

        %token <Proof_build.Formule.formule> CHAR
        %token EOF
        %token IMP AND OR NOT
        %token LPAREN RPAREN

        %left IMP AND OR     /* lowest precedence */
        %left NOT       /* medium precedence */
        %token EOL

        %token <int> INT
        %token AXIOM
        %token EXT
        %token AFFG
        %token AFFD
        %token CONTRG
        %token CONTRD
        %token NOTG
        %token NOTD
        %token ANDG
        %token ANDD
        %token ORG
        %token ORD
        %token IMPG
        %token IMPD

        %start main             /* the entry point */

        %type <(string * Proof_build.Formule.formule) * (Proof_build.Tactiques.tactique list)> main
        %type <string * Proof_build.Formule.formule> start
        %type <Proof_build.Tactiques.tactique list> tacts
        %type <Proof_build.Tactiques.tactique> tact

        %%
        main:
            BEGIN start tacts       { ( $2 , $3 ) }
        ;
        start:
            NAME prop EOL           { ( $1 , $2 ) }
        ;
        tact:
            | AXIOM              {Proof_build.Tactiques.axiom}
            | EXT NAME           {Proof_store.Ext_props.ext $2}
            | AFFG INT           {Proof_build.Tactiques.aff_gauche $2}
            | AFFD INT           {Proof_build.Tactiques.aff_droite $2}
            | CONTRG INT INT     {Proof_build.Tactiques.contr_gauche $2 $3}
            | CONTRD INT INT     {Proof_build.Tactiques.contr_droite $2 $3}
            | NOTG INT           {Proof_build.Tactiques.not_gauche $2}
            | NOTD INT          {Proof_build.Tactiques.not_droite $2}
            | ANDG INT          {Proof_build.Tactiques.and_gauche $2}
            | ANDD INT           {Proof_build.Tactiques.and_droite $2}
            | ORG INT           {Proof_build.Tactiques.or_gauche $2}
            | ORD INT           {Proof_build.Tactiques.or_droite $2}
            | IMPG INT           {Proof_build.Tactiques.imp_gauche $2}
            | IMPD INT          {Proof_build.Tactiques.imp_droite $2}
            | LPAREN tact RPAREN     {$2}
        ;
        tacts:
             EOF                    {[]}
            |tact EOF               {[$1]} 
            |tact EOL tacts         {$1::$3}
        ;
        prop:
            CHAR                      { $1 }
          | LPAREN prop RPAREN       { $2 }
          | prop AND prop           { And($1,$3) }
          | prop OR prop            { Or($1,$3) }
          | prop IMP prop           { Imp($1,$3) }
          | NOT prop                 { Not $2}
        ;