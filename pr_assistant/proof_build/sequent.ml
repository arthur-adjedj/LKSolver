open Formule

exception Unequal_length of bool

type sequent = (formule array)* (formule array)


(*On suppose gf1,df1,gf2 et df2 triées par Array.fast_sort*)
let is_s_equiv (gf1,df1) (gf2,df2) :bool =    
    if not ((Array.for_all2 is_f_equiv gf1 gf2) && (Array.for_all2 is_f_equiv df1 df2))
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

