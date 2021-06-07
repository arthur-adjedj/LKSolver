open Nat
open Nat_tacts
open Formule
open Sequent


let%test "nat_equiv" = is_nat_equiv (Sum(Var_nat 'a',Succ(Var_nat 'a'))) (Sum(Succ(Var_nat 'a'),Succ(Succ(Var_nat 'a'))))
let%test "comp_equiv" = is_comp_equiv (Equal(Sum(Var_nat 'a',Succ(Var_nat 'a')),(Succ(Sum(Var_nat 'a',Var_nat 'a'))))) 
                        (Equal(Sum(Succ(Var_nat 'a'),Succ(Succ(Var_nat 'a'))),Succ(Sum(Succ(Var_nat 'a'),Succ(Var_nat 'a')))))
let%test "wtf" = is_s_equiv ([||],[|Nat_comp (Equal(Var_nat 'a',Var_nat 'b'))|])  ([||],[|Nat_comp (Equal(Succ(Zero),Var_nat 'a'))|])
let%test_unit  "refl" = (let _ = (refl ([||],[|Nat_comp (Equal(Succ(Zero),Var_nat 'a'))|])) in ())
