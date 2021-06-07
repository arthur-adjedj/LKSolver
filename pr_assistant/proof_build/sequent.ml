open Formule
open Nat

exception Unequal_length of bool

type sequent = (formule array)* (formule array)


(*On suppose gf1,df1,gf2 et df2 triées par Array.fast_sort*)

(*Complexité O(Sigma(S)) *)
let is_s_equiv (gf1,df1) (gf2,df2) :bool =    
    if not ((Array.length gf1 = Array.length gf2) && (Array.length df1 = Array.length df2))
      then raise (Unequal_length  false)
  else begin 
    let dict = Hashtbl.create 64 in
    let rec aux o t = match o,t with
        |B a,B b -> a=b
        |Var u ,_ ->( try (if (Hashtbl.find dict u) <> t then false else (Hashtbl.replace dict u t; true))
                       with Not_found -> Hashtbl.add dict u t;true)
        |Not(a), Not(b) -> aux a b
        |And(a1,b1),And(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Or(a1,b1),Or(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Imp(a1,b1),Imp(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Nat_comp a, Nat_comp b -> is_comp_equiv a b
        |_ -> false
    in (Array.for_all2 aux gf1 gf2) && (Array.for_all2 aux df1 df2) end;;



let sequent_to_string (gf,df) =
  let res = ref [" "] in
  let n1 = Array.length gf
  and n2 = Array.length df in 
  for i=0 to n2-1 do 
    res := (formule_to_string df.(n2-1-i))::!res;
    if i<>(n2-1) then res:= ","::!res
  done;
  res := " ├ ":: !res ;
  for i=0 to n1-1 do 
    res := (formule_to_string gf.(n1-1-i))::!res;
    if i<>(n1-1) then res:= ","::!res
  done;
  String.concat "" !res

  let print_sequent s = print_string (sequent_to_string s)

