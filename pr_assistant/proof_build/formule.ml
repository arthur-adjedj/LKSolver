open Nat

type vartype = B | N
type formule =
	|Bool of bool
    |Var of char
    |Not of formule
    |And of formule * formule
    |Or of formule * formule
    |Imp of formule * formule
    |Nat_comp of comparison
    |Forall of char*vartype*formule
    |Exists of char*vartype*formule


(*Vérifie si f1 possède un pattern correspondant à la racine f2. Par exemple, f1 = And(Not (Var 'a'),Var 'b') et f2 = And(Not(B false), Or((Var 'a),Var 'b'))*)
(*A remarquer que l'ordre des arguments compte ici, f1 est le pattern et f2 la formule suivant ce pattern*)

(*Complexité O(n(f1)) avec n la fonction qui à une formule associe sa taille*)
let rec is_f_equiv (f1:formule) (f2:formule):bool =
    let dict = Hashtbl.create 42 in
    let rec aux o t = match o,t with
        |Bool a,Bool b -> a=b
        |Var u ,_ ->( try (if (Hashtbl.find dict u) <> t then false else (Hashtbl.replace dict u t; true))
                       with Not_found -> Hashtbl.add dict u t;true)
        |Not(a), Not(b) -> aux a b
        |And(a1,b1),And(a2,b2)
        |Or(a1,b1),Or(a2,b2)
        |Imp(a1,b1),Imp(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Nat_comp a, Nat_comp b -> is_comp_equiv a b
        |Forall(_,typ1,c1),Forall(_,typ2,c2) 
        |Exists(_,typ1,c1),Exists(_,typ2,c2)-> typ1=typ2 && is_f_equiv c1 c2
        |_ -> false
    in aux f1 f2;;

(*donne un string représentant une formule f*)
let rec formule_to_string ?(clean = true) f = 
    if clean then match f with
        |Bool false ->  "┴"
        |Bool true -> "⊤"
        |Var a -> Char.escaped a
        |Not a -> "¬(" ^ (formule_to_string a) ^ ")"
        |And(a,b) ->  "("^ (formule_to_string a) ^ ")^(" ^ (formule_to_string b) ^ ")"
        |Or(a,b) -> "("^ (formule_to_string a) ^ ")v(" ^ (formule_to_string b) ^ ")"
        |Imp(a,b) -> "("^ (formule_to_string a) ^ ")->(" ^ (formule_to_string b) ^ ")"
        |Nat_comp c -> string_of_comp c
        |Forall(x,B,c) -> "∀."^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Exists(x,B,c) -> "∃."^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Forall(x,N,c) -> "∀,"^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Exists(x,N,c) -> "∃,"^(Char.escaped x)^"("^(formule_to_string c)^")"            
    else match f with
        |Bool false ->  "┴"
        |Bool true -> "⊤"
        |Var a -> Char.escaped a
        |Not a -> "Not(" ^ (formule_to_string ~clean:false a) ^ ")"
        |And(a,b) ->  "And("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Or(a,b) -> "Or("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Imp(a,b) -> "Imp("^ (formule_to_string ~clean:false a) ^ "," ^ (formule_to_string ~clean:false b) ^ ")"
        |Nat_comp c -> string_of_comp c
        |Forall(x,B,c) -> "∀."^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Exists(x,B,c) -> "∃."^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Forall(x,N,c) -> "∀,"^(Char.escaped x)^"("^(formule_to_string c)^")"
        |Exists(x,N,c) -> "∃,"^(Char.escaped x)^"("^(formule_to_string c)^")"        

(*print*)
let print_formule f = print_string (formule_to_string f)

module MyVar =
    struct
        type t = char*vartype
        let compare = compare
    end
    
module VarSet = Set.Make(MyVar)  

(*présente l'ensemble des variables définies dans des ∀ et ∃, afin de vérifier si le changement de variable est sain*)
let rec unFreeVars f = match f with
    |Bool _ 
    |Var _ 
    |Nat_comp _ -> VarSet.empty
    |Not a -> unFreeVars a
    |And(a,b) 
    |Or(a,b) 
    |Imp(a,b) -> VarSet.union (unFreeVars a) (unFreeVars b)
    |Forall(x,t,c) 
    |Exists(x,t,c) -> VarSet.add (x,t) (unFreeVars c)


let rec freeVars f = match f with
    |Bool _ -> VarSet.empty
    |Var a -> VarSet.singleton (a,N)
    |Nat_comp _ -> VarSet.empty
    |Not a -> freeVars a
    |And(a,b) 
    |Or(a,b) 
    |Imp(a,b) -> VarSet.union (freeVars a) (freeVars b)
    |Forall(x,t,c) 
    |Exists(x,t,c) -> VarSet.remove (x,t) (freeVars c) 


let rec natVar n =  match n with
    |Zero -> VarSet.empty
    |Succ(a) -> natVar a
    |Sum(a,b) (*|Prod(a,b)*) -> VarSet.union (natVar a) (natVar b)
    |Var_nat(a) -> VarSet.singleton (a,N) 

let varComp c = match c with
    |Equal(a,b) 
    |Not_equal(a,b) 
    |Less_than(a,b) 
    |Less_than_strict(a,b) 
    |More_than(a,b) 
    |More_than_strict(a,b) -> VarSet.union (natVar a) (natVar b)


let rec vars f = match f with
    |Bool _  -> VarSet.empty
    |Var(a) -> VarSet.singleton (a,B) 
    |Nat_comp(a) -> varComp a
    |Not(a) -> vars a
    |And(a,b) 
    |Or(a,b) 
    |Imp(a,b) -> VarSet.union (vars a) (vars b)
    |Forall(x,t,c) 
    |Exists(x,t,c) -> VarSet.add (x,t) (vars c)   

    

let canBeChanged f t =
    VarSet.is_empty (VarSet.inter (unFreeVars f) (vars t)) 


let rec change_var_b x t f = match f with
    |Bool _ |Nat_comp _ -> f 
    |Var a -> if a=x then t else Var a   
    (*|Nat_comp a -> replace_comp x t f*)
    |Not a -> Not(change_var_b x t a)
    |And(a,b) ->And(change_var_b x t a,change_var_b x t b)
    |Or(a,b) -> Or(change_var_b x t a,change_var_b x t b)
    |Imp(a,b) -> Imp(change_var_b x t a,change_var_b x t b)
    |Forall(y,u,c) -> Forall(y,u,change_var_b x t c)
    |Exists(y,u,c) -> Exists(y,u,change_var_b x t c) 

let rec change_var_n x t f =
    match f with
    |Bool _ |Var _ -> f 
    |Nat_comp a -> Nat_comp (replace_comp x t a)
    |Not a -> Not(change_var_n x t a)
    |And(a,b) ->And(change_var_n x t a,change_var_n x t b)
    |Or(a,b) -> Or(change_var_n x t a,change_var_n x t b)
    |Imp(a,b) -> Imp(change_var_n x t a,change_var_n x t b)
    |Forall(y,u,c) -> Forall(y,u,change_var_n x t c)
    |Exists(y,u,c) -> Exists(y,u,change_var_n x t c)     


