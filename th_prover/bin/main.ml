open Mylib.Formule

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")


let () = print_bool (eq_formule (And(Not (Var 'a'),Var 'b')) (And(Not(Bottom), Or((Var 'a'),Var 'b'))));
				print_bool (eq_formule (And(Not (Var 'a'),Var 'a')) (And(Not(Bottom), Or((Var 'a'),Var 'b'))))













