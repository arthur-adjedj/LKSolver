type formule =
    Bottom
  | Var of char
  | Not of formule
  | And of formule * formule
  | Or of formule * formule
  | Imp of formule * formule
  | Eq of formule * formule


val eq_formule : formule -> formule -> bool
