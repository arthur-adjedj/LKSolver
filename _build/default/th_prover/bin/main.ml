open Mylib
open Cmdliner

let revolt () = print_endline "Revolt!"
let revolt_t = Term.(const revolt $ const ())

let () = Term.exit @@ Term.eval (revolt_t, Term.info "revolt")













let test:Sequent.sequent = ([|Var 'a'|],[|Var 'a'|])

type regle = {prem : Mylib.Sequent.sequent array;
			  concl : Mylib.Sequent.sequent}

let modus_ponens:regle = {prem = [| ([|Var 'A'|] ,[|Var 'B'|] ) ;([||] , [|Var 'A'|]) |];
					concl = ([||],[|Var 'B'|])}











