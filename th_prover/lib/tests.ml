open Tactiques
open Formule

let%test "axiom" = fst (axiom ([|Var 'a'|],[|Var 'a'|])) = [([||],[||])]
let%test "not_gauche" = fst (not_gauche 0 ([|Not (Var 'a')|],[||])) = [([||],[|Var 'a'|])]
let%test "not_droite" = fst (not_droite 0 ([||],[|Not (Var 'a')|])) = [([|Var 'a'|],[||])]
let%test "and_gauche" = fst (and_gauche 0 ([|And(Var 'a',Var 'b')|],[||])) = [([|Var 'a';Var 'b'|],[||])]
let%test "and_droite" = fst (and_droite 0 ([||],[|And(Var 'a',Var 'b')|])) = [([||],[|Var 'a'|]) ; ([||],[|Var 'b'|])]
let%test "or_gauche" = fst (or_gauche 0 ([|Or(Var 'a',Var 'b')|],[||])) = [([|Var 'a'|],[||]) ; ([|Var 'b'|],[||])]
let%test "or_droite" = fst (or_droite 0 ([||],[|Or(Var 'a',Var 'b')|])) = [([||],[|Var 'a';Var 'b'|])]
let%test "imp_gauche" = fst (imp_gauche 0 ([|Imp(Var 'a',Var 'b')|],[||])) = [([||],[|Var 'a'|]) ; ([|Var 'b'|],[||])]
let%test "imp_droite" = fst (imp_droite 0 ([||],[|Imp(Var 'a',Var 'b')|])) = [([|Var 'a'|],[|Var 'b'|])]