type formule =
	Bottom
    |Var of char
    |Not of formule
    |And of formule * formule
    |Or of formule * formule
    |Imp of formule * formule


(*Vérifie si f1 possède un pattern contenu dans f1. Par exemple, f1 = And(Not (Var 'a'),Var 'b') et f2 = And(Not(Bottom), Or((Var 'a),Var 'b'))*)
(*A remarquer que l'ordre des arguments compte ici, f1 est le pattern et f2 la formule suivant ce pattern*)

let eq_formule (f1:formule) (f2:formule):bool =
    let dict = Hashtbl.create 42 in
    let rec aux o t = match o,t with
        |Bottom,Bottom -> true
        |Var _ ,_ ->( try (if (Hashtbl.find dict o) <> t then false else (Hashtbl.replace dict o t; true))
                       with Not_found -> Hashtbl.add dict o t;true)
        |Not(a), Not(b) -> aux a b
        |And(a1,b1),And(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Or(a1,b1),Or(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Imp(a1,b1),Imp(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |_ -> false
    in aux f1 f2;;

let rec print_formule f = match f with
    |Bottom -> print_char 'B'
    |Var a -> print_char a
    |Not a -> print_string "¬(";print_formule a;print_string ")"
    |And(a,b) -> print_string "(";print_formule a;print_string ")^(";print_formule b;print_string ")"
    |Or(a,b) -> print_string "(";print_formule a;print_string ")v(";print_formule b;print_string ")"
    |Imp(a,b) -> print_string "(";print_formule a;print_string ")->(";print_formule b;print_string ")"

