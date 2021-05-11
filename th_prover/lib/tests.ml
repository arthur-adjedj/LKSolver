open Tactiques
open Formule
open Proof
open Ext_props
open Stored_props


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

(*test de coupure (j'ai peur)*)

let%test "coupure 1" = fst ( coupure (Var 'z') ([|true;false;false;true|],[|false;false;true|]) ([|Var 'a';Var 'b';Var 'c';Var 'd'|],[|Var 'e';Var 'f';Var 'g'|]) ) = 
[([|Var 'a'; Var 'd'|],[|Var 'g';Var 'z'|]) ;([|Var 'b';Var 'c';Var 'z'|],[|Var 'e';Var 'f'|])]


(*tests de preuves classiques*)
let develop fa l = List.fold_left apply (init ([||],fa)) l

let test fa l = let p = 
  develop fa l in 
  print_proof p; print_endline "";
  is_complete p

(*ajout au stockage des propriétés booléennes standardes*)
let add_std_props = 
add "identite" (Imp(Var 'a',Var 'a')) [imp_droite 0;axiom];
add "tiers_exclu"  (Or(Var 'a',Not(Var 'a'))) [or_droite 0;not_droite 1;axiom];
add "double_negation" (Imp(Var 'a',Not (Not (Var 'a')))) [imp_droite 0;not_droite 0;not_gauche 1;axiom];
add "double_negation_cl"  (Imp(Not (Not (Var 'a')),Var 'a')) [imp_droite 0;not_gauche 0;not_droite 1;axiom];
add "peirce" (Imp(Imp(Imp(Var 'a',Var 'b'),Var 'a'),Var 'a')) [imp_droite 0;imp_gauche 0;imp_droite 1;aff_droite 1;axiom;axiom];
add "non_contradiction"  (Not(And(Var 'a' , Not (Var 'a')))) [not_droite 0;and_gauche 0;not_gauche 1;axiom];
add "morgan_1"  (And(Imp( Not(And(Var 'a', Var 'b')) ,Or(Not(Var 'a'),Not(Var 'b'))),Imp(Or(Not(Var 'a'),Not(Var 'b')),Not(And(Var 'a',Var 'b')))))
[and_droite 0;imp_droite 0;or_droite 0;not_gauche 0;not_droite 0;not_droite 0;and_droite 0;aff_gauche 1;axiom;aff_gauche 0;axiom;
imp_droite 0;not_droite 0;and_gauche 1;or_gauche 0;not_gauche 0;aff_gauche 1;axiom;not_gauche 0;aff_gauche 0;axiom]; (*c'est long*)
add "morgan_2"  (And(Imp(Not(Or(Var 'a',Var 'b')),And(Not(Var 'a'),Not(Var 'b'))),Imp(And(Not(Var 'a'),Not(Var 'b')),Not(Or(Var 'a',Var 'b'))))) 
[and_droite 0;imp_droite 0;not_gauche 0;and_droite 0;not_droite 0;or_droite 0;aff_droite 1;axiom;not_droite 0;or_droite 0;aff_droite 0;axiom;
imp_droite 0;not_droite 0;and_gauche 0;or_gauche 2;not_gauche 0;aff_gauche 0;axiom;not_gauche 1;aff_gauche 0;axiom];
add "contraposee"  (Imp(Imp(Var 'a',Var 'b'),Imp(Not(Var 'b'),Not(Var 'a')))) 
[imp_droite 0;imp_droite 0;imp_gauche 0;not_droite 0;aff_gauche 0;axiom;not_gauche 1;aff_droite 0;axiom]	;
add "modus_ponens"  (Imp(And(Imp(Var 'a',Var 'b'),Var 'a'),Var 'b')) 
[imp_droite 0;and_gauche 0;imp_gauche 0;aff_droite 0;axiom;aff_gauche 1;axiom] ;
add "modus_barbara_prop_"  (Imp(And(Imp(Var 'a',Var 'b'),Imp(Var 'b',Var 'c')),Imp(Var 'a',Var 'c')))  
[imp_droite 0;and_gauche 0;imp_droite 0;imp_gauche 0;imp_gauche 0;aff_droite 0;aff_droite 1;axiom;aff_gauche 1;aff_droite 1;axiom;imp_gauche 1;aff_gauche 1;aff_droite 0;axiom;aff_gauche 0;aff_gauche 1;axiom];
add "modus_barbara_imp"  (Imp(Imp(Var 'a', Var 'b') ,Imp(Imp(Var 'b', Var 'c'),Imp(Var 'a',Var 'c')) )) 
[imp_droite 0;imp_droite 0;imp_droite 0;imp_gauche 1;imp_gauche 0;aff_droite 0;aff_droite 0;axiom;aff_gauche 1;aff_droite 0;axiom;imp_gauche 0;aff_gauche 0;aff_droite 0;axiom;aff_gauche 0;aff_gauche 1;axiom];
add "distrib1_droite" (Imp(And(Var 'a',Or(Var 'b',Var 'c')),Or(And(Var 'a', Var 'b'),And(Var 'a',Var 'c')))) 
[imp_droite 0;or_droite 0;and_gauche 0;and_droite 0;aff_gauche 1;aff_droite 1;axiom;and_droite 1;aff_gauche 1;aff_droite 0;axiom;or_gauche 1;aff_gauche 0;aff_droite 1;axiom;
aff_gauche 0;aff_droite 0;axiom];
add "distrib1_gauche" (Imp(Or(And(Var 'a', Var 'b'),And(Var 'a',Var 'c')),And(Var 'a',Or(Var 'b',Var 'c')))) 
[imp_droite 0;and_droite 0;or_gauche 0;and_gauche 0;aff_gauche 1;axiom;and_gauche 0;aff_gauche 1;axiom;or_droite 0;or_gauche 0;and_gauche 0;aff_gauche 0;aff_droite 1;axiom;
and_gauche 0;aff_gauche 0;aff_droite 0;axiom]

