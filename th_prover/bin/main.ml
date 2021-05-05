open Mylib

let test:Sequent.sequent = ([|Var 'a'|],Var 'a')

type regle = {prem : Mylib.Sequent.sequent array;
			  concl : Mylib.Sequent.sequent}

let modus_ponens:regle = {prem = [| ([|Var 'A'|] ,Var 'B' ) ;([||] , Var 'A') |];
					concl = ([||],[|Var 'B')}











