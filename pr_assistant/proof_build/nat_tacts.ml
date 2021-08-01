open Tactiques
open Sequent
open Formule
open Nat

let refl s =
  if is_s_equiv ([||],[|Nat_comp (Equal(Var_nat 'a',Var_nat 'a'))|])  s 
    then ([],"refl")
  else 
    raise (Wrong_sequent ([s],"wrong_sequent, refl"))
  

let sym c s i = 
  let gres = Array.copy (fst s)
  and dres = Array.copy (snd s) in 
  if c= 'l' then match (fst s).(i) with
    |Nat_comp (Equal(a,b)) -> gres.(i) <- (Nat_comp(Equal(b,a)));
     ((gres,dres),"syml")
    |_ -> raise (Wrong_sequent ([s],"wrong_sequent syml"));
else match (snd s).(i) with
   |Nat_comp (Equal(a,b)) -> dres.(i) <- (Nat_comp(Equal(b,a)));
   ((gres,dres),"symr")
   |_ -> raise (Wrong_sequent ([s],"wrong_sequent symr"))

