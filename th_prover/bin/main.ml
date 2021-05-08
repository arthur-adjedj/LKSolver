open Mylib.Formule
open Mylib.Sequent
open Mylib.Tactiques

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")


let () = 	print_sequent ([||],[|Imp(Var 'a',Var 'b')|]); print_endline "";
					print_hypos (imp_droite 0 ([||],[|Imp(Var 'a',Var 'b')|])); print_endline "";
					print_formule (Imp(Imp(Not (Var 'b'),Not (Var 'a')),Imp(Var 'a',Var 'b')));print_endline "";
					print_sequent ( [|(Imp (Not(Var 'b') , Not(Var 'a')))|] , [| Imp(Var 'a',Var 'b') |] );print_endline "";















