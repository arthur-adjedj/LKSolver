open Mylib.Proof
open Mylib.Tactiques
open Mylib.Formule

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")


let develop s l = List.fold_left apply (init s) l 

let a_imp_no_no_a = ([||],[|Imp(Var 'a',Not (Not (Var 'a')))|]) 

let tactiques = [imp_droite 0;not_droite 0;not_gauche 1] 


let p = develop a_imp_no_no_a tactiques

let () = print_bool (is_complete p)










