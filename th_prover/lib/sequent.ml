open Formule

type sequent = (Formule.formule) array * Formule.formule 

(*On suppose lf1 et lf2 triées par Array.fast_sort*)
let eq_seq ((lf1,f1):sequent) ((lf2,f2):sequent):bool =
  (Array.for_all2 eq_formule lf1 lf2) && (Formule.eq_formule f1 f2)

