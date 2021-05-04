open Mylib
open Graphics

let () = open_graph "500x500"

let test:Sequent.sequent = ([|Var 'a'|],Var 'a')

type regle = {prem : Mylib.Sequent.sequent array;
			  concl : Mylib.Sequent.sequent}

let modus_ponens:regle = {prem = [| ([|Var 'A'|] , Var 'B') ;([||] , Var 'A') |];
					concl = ([||],Var 'B')}


(*On suppose ls1 et ls2 triées par Array.fast_sort*)








