open Formule

type sequent = (Formule.formule) array * (Formule.formule array)

(*On suppose gs1,gs2,ls1 et ls2 triées par Array.fast_sort*)
let eq_seq ((gs1,ds1):sequent) ((gs2,ds2):sequent):bool =
  (Array.for_all2 eq_formule gs1 gs2) && (Array.for_all2 eq_formule ds1 ds2);;

