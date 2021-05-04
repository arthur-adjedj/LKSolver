open Formule


type sequent = ((Formule.formule) array) * Formule.formule

let eq_seq ((ls1,s1):sequent) ((ls2,s2):sequent):bool =
  (Array.for_all2 eq_formule ls1 ls2) && eq_formule s1 s2;;