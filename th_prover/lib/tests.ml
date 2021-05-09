open Tactiques
open Formule
open Proof


(*tests des tactiques*)
let%test "axiom" = fst (axiom ([|Var 'a'|],[|Var 'a'|])) = []
let%test "not_gauche" = fst (not_gauche 0 ([|Not (Var 'a')|],[||])) = [([||],[|Var 'a'|])]
let%test "not_droite" = fst (not_droite 0 ([||],[|Not (Var 'a')|])) = [([|Var 'a'|],[||])]
let%test "and_gauche" = fst (and_gauche 0 ([|And(Var 'a',Var 'b')|],[||])) = [([|Var 'a';Var 'b'|],[||])]
let%test "and_droite" = fst (and_droite 0 ([||],[|And(Var 'a',Var 'b')|])) = [([||],[|Var 'a'|]) ; ([||],[|Var 'b'|])]
let%test "or_gauche" = fst (or_gauche 0 ([|Or(Var 'a',Var 'b')|],[||])) = [([|Var 'a'|],[||]) ; ([|Var 'b'|],[||])]
let%test "or_droite" = fst (or_droite 0 ([||],[|Or(Var 'a',Var 'b')|])) = [([||],[|Var 'a';Var 'b'|])]
let%test "imp_gauche" = fst (imp_gauche 0 ([|Imp(Var 'a',Var 'b')|],[||])) = [([||],[|Var 'a'|]) ; ([|Var 'b'|],[||])]
let%test "imp_droite" = fst (imp_droite 0 ([||],[|Imp(Var 'a',Var 'b')|])) = [([|Var 'a'|],[|Var 'b'|])]

(*tests de preuves classiques*)
let develop fa l = print_endline ""; List.fold_left apply (init ([||],fa)) l 

let%test "identité" = is_complete (develop [|Imp(Var 'a',Var 'a')|] [imp_droite 0;axiom])
let%test "tiers_exclu" = is_complete (develop [|Or(Var 'a',Not(Var 'a'))|] [or_droite 0;not_droite 1;axiom] )
let%test "double_négation" = is_complete (develop [|Imp(Var 'a',Not (Not (Var 'a')))|] [imp_droite 0;not_droite 0;not_gauche 1;axiom] )
let%test "double_négation_cl" = is_complete (develop [|Imp(Not (Not (Var 'a')),Var 'a')|] [imp_droite 0;not_gauche 0;not_droite 1;axiom] )
let%test "Peirce" = is_complete (develop [|Imp(Imp(Imp(Var 'a',Var 'b'),Var 'a'),Var 'a')|] [imp_droite 0;imp_gauche 0;imp_droite 1;aff_droite 1;axiom;axiom])  
let%test "non_contradiction" = is_complete(develop [|Not(And(Var 'a' , Not (Var 'a')))|]  [not_droite 0;and_gauche 0;not_gauche 1;axiom])
let%test "Morgan 1" = is_complete (develop [|Imp( Not(And(Var 'a', Var 'b')) ,And(Not(Var 'a'),Not(Var 'b')));Imp(And(Not(Var 'a'),Not(Var 'b')),Not(And(Var 'a',Var 'b')))|] [] )



