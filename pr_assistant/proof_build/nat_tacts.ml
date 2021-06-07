open Tactiques
open Sequent
open Formule
open Nat

let refl s =
  if is_s_equiv ([||],[|Nat_comp (Equal(Var_nat 'a',Var_nat 'b'))|])  s 
    then ([],"refl")
  else 
    raise (Wrong_sequent ([s],"wrong_sequent, refl"))
  
let sym s i = 
  if 

  else 
    raise (Wrong_sequent ([s],"wrong_sequent,sym"))