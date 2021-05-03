type sequent = Formule.formule array * Formule.formule

type regle = { prem : sequent array; concl : sequent; }

val modus_ponens : regle

val eq_seq : sequent -> sequent -> bool
