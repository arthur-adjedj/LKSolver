type formule =
	Bottom
    |Var of char
    |Not of formule
    |And of formule * formule
    |Or of formule * formule
    |Imp of formule * formule


(* Vérifie si f1 et f2 sont égales (et non uniquement sémantiquement equivalentes\) à nom de variables près,
   dict permet de construire la correspondance entre les variables de f1 et f2 *)

let eq_formule (f1:formule) (f2:formule):bool =
    let dict = Hashtbl.create 42 in
    let rec aux = function
        |Bottom,Bottom -> true
        |Var a,Var b -> if Hashtbl.find dict a <> b then false else (Hashtbl.replace dict a b; true)
        |Not a, Not b -> aux (a,b)
        |And(a1,b1),And(a2,b2) -> (aux (a1,a2)) && (aux (b1,b2))
        |Or(a1,b1),Or(a2,b2) -> (aux (a1,a2)) && (aux (b1,b2))
        |Imp(a1,b1),Imp(a2,b2) -> (aux (a1,a2)) && (aux (b1,b2))
        |_ -> false
    in aux (f1,f2)