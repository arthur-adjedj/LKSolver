open Mylib.Stored_props
open Mylib.Ext_props
open Mylib.Tactiques

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")


let () = load_stored_props;print_int (Hashtbl.length props);
	add "distrib" (And(Imp(And(Var 'a',Or(Var 'b',Var 'c')),Or(And(Var 'a', Var 'b'),And(Var 'a',Var 'c'))),Imp(Or(And(Var 'a', Var 'b'),And(Var 'a',Var 'c')),And(Var 'a',Or(Var 'b',Var 'c')))))
	[and_droite 0;ext "distrib1_droite";ext "distrib1_gauche"]