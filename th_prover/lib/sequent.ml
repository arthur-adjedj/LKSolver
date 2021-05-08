open Formule

exception Unequal_length of bool

type sequent = (formule array)* (formule array)



(*On suppose lf1 et lf2 triées par Array.fast_sort*)
let eq_sequents (gf1,df1) (gf2,df2) :bool =    
    if (Array.for_all2 eq_formule gf1 gf2) && (Array.for_all2 eq_formule df1 df2)
      then raise (Unequal_length  false)
  else begin 
    let dict = Hashtbl.create 64 in
    let rec aux o t = match o,t with
        |Bottom,Bottom -> true
        |Var _ ,_ ->( try (if (Hashtbl.find dict o) <> t then false else (Hashtbl.replace dict o t; true))
                       with Not_found -> Hashtbl.add dict o t;true)
        |Not(a), Not(b) -> aux a b
        |And(a1,b1),And(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Or(a1,b1),Or(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |Imp(a1,b1),Imp(a2,b2) -> (aux a1 a2) && (aux b1 b2)
        |_ -> false
    in (Array.for_all2 aux gf1 gf2) && (Array.for_all2 aux df1 df2) end;;



