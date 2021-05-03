open Formule
open Sequent

type regle = {prem : Sequent.sequent array;
			  concl : sequent}

let modus_ponens = {prem = [| ([|Var 'A'|] , Var 'B') ;([||] , Var 'A') |];
					concl = ([||],Var 'B')}


(*On suppose ls1 et ls2 triées par Array.fast_sort*)








