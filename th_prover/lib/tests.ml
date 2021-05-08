open Tactiques

let%test "axiom" = axiom ([|Var 'a'|],[|Var 'a'|])
let%test "not_gauche" = not_gauche 0 ([|Not (Var 'a')|],[||]) = [([||],[|Var 'a'|])]
let%test "not_droite" = not_droite 0 ([||],[|Not (Var 'a')|]) = [([|Var 'a'|],[||])]
let%test "and_gauche" = and_gauche 0 ([|And(Var 'a',Var 'b')|],[||]) = [([|Var 'a';Var 'b'|],[||])]
let%test "and_droite" = and_droite 0 ([||],[|And(Var 'a',Var 'b')|]) = [([||],[|Var 'a'|]) ; ([||],[|Var 'b'|])]
let%test "or_gauche" = or_gauche 0 ([|Or(Var 'a',Var 'b')|],[||]) = [([|Var 'a'|],[||]) ; ([|Var 'b'|],[||])]
let%test "or_droite" = or_droite 0 ([||],[|Or(Var 'a',Var 'b')|]) = [([||],[|Var 'a';Var 'b'|])]
let%test "imp_gauche" = imp_gauche 0 ([|Imp(Var 'a',Var 'b')|],[||]) = [([||],[|Var 'a'|]) ; ([|Var 'b'|],[||])]
let%test "imp_droite" = imp_droite 0 ([||],[|Imp(Var 'a',Var 'b')|]) = [([|Var 'a'|],[|Var 'b'|])]