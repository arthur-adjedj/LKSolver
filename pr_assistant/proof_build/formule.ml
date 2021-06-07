open Nat

type formule =
	|B of bool
    |Var of char
    |Not of formule
    |And of formule * formule
    |Or of formule * formule
    |Imp of formule * formule
    |Nat_comp of comparison


(*Vérifie si f1 possède un pattern correspondant à la racine f2. Par exemple, f1 = And(Not (Var 'a'),Var 'b') et f2 = And(Not(B false), Or((Var 'a),Var 'b'))*)
(*A remarquer que l'ordre des arguments compte ici, f1 est le pattern et f2 la formule suivant ce pattern*)

(*Complexité O(n(f1)) avec n la fonction qui à une formule associe sa taille*)
let is_f_equiv (f1:formule) (f2:formule):bool =
    let dict = Hashtbl.create 42 in
    let rec aux o t = match o,t with
        |B a,B b -> a=b
        |Var u ,_ ->( try (if (Hashtbl.find dict u) <> t then false else (Hashtbl.replace dict u t; true))
                       with Not_found -> Hashtbl.add dict u t;true)
        |Not(a), Not(b) -> aux a b
        |And(a1,b1),And(a2,b2)|Or(a1,b1),Or(a2,b2)|Imp(a1,b1),Imp(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Nat_comp a, Nat_comp b -> is_comp_equiv a b
        |_ -> false
    in aux f1 f2;;

(*donne un string représentant une formule f*)
let rec formule_to_string ?(clean = true) f = 
    if clean then match f with
        |B false ->  "┴"
        |B true -> "⊤"
        |Var a -> Char.escaped (Char.uppercase_ascii a)
        |Not a -> "¬(" ^ (formule_to_string a) ^ ")"
        |And(a,b) ->  "("^ (formule_to_string a) ^ ")^(" ^ (formule_to_string b) ^ ")"
        |Or(a,b) -> "("^ (formule_to_string a) ^ ")v(" ^ (formule_to_string b) ^ ")"
        |Imp(a,b) -> "("^ (formule_to_string a) ^ ")->(" ^ (formule_to_string b) ^ ")"
        |Nat_comp c -> string_of_comp c
    else match f with
        |B false ->  "┴"
        |B true -> "⊤"
        |Var a -> Char.escaped a
        |Not a -> "Not(" ^ (formule_to_string ~clean:false a) ^ ")"
        |And(a,b) ->  "And("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Or(a,b) -> "Or("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Imp(a,b) -> "Imp("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Nat_comp c -> string_of_comp c

(*print *)
let print_formule f = print_string (formule_to_string f)

