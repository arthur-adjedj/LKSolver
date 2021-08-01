open Nat
open Nat_tacts
open Formule
open Sequent
open Tactiques


let%test "nat_equiv" = is_nat_equiv (Sum(Var_nat 'a',Succ(Var_nat 'a'))) (Sum(Succ(Var_nat 'a'),Succ(Succ(Var_nat 'a'))))
let%test "comp_equiv" = is_comp_equiv (Equal(Sum(Var_nat 'a',Succ(Var_nat 'a')),(Succ(Sum(Var_nat 'a',Var_nat 'a'))))) 
                        (Equal(Sum(Succ(Var_nat 'a'),Succ(Succ(Var_nat 'a'))),Succ(Sum(Succ(Var_nat 'a'),Succ(Var_nat 'a')))))
let%test "wtf" = is_s_equiv ([||],[|Nat_comp (Equal(Var_nat 'a',Var_nat 'b'))|])  ([||],[|Nat_comp (Equal(Succ(Zero),Var_nat 'a'))|])
let%test_unit  "refl" = (let _ = (refl ([||],[|Nat_comp (Equal(Succ(Zero),Var_nat 'a'))|])) in ())

let%test "forall_g_B,true" = fst (forall_g_b ([|Forall('x',B,Imp(Var 'x',Var 'x'))|],[||]) 0 (And(Var 'a',Var 'b'))) =  [([|Imp(And(Var 'a',Var 'b'),And(Var 'a',Var 'b'))|],[||])]
let%test "forall_g_B,false" = try (fst (forall_g_b ([|Forall('x',B,Forall('y',B,Imp(Var 'x',Var 'x')))|],[||]) 0 (And(Var 'y',Var 'b'))) =  [([|Forall('y',B,Imp(And(Var 'a',Var 'b'),And(Var 'a',Var 'b')))|],[||])])
                              with _ -> true                
let%test "forall_d" = fst (forall_d ([||],[|Forall('x',B,Imp(Var 'x',Var 'x'))|]) 0) =  [([||],[|Imp(Var 'x',Var 'x')|])]
let%test "existst_b" = fst (exists_g ([|Exists('x',B,Imp(Var 'x',Var 'x'))|],[||]) 0) =  [([|Imp(Var 'x',Var 'x')|],[||])]
let%test "exists_d_B,true" =  fst (exists_d_b ([||],[|Exists('x',B,Imp(Var 'x',Var 'x'))|]) 0 (And(Var 'a',Var 'b'))) =  [([||],[|Imp(And(Var 'a',Var 'b'),And(Var 'a',Var 'b'))|])]
let%test "exists_d_B,false" = try (fst (exists_d_b ([||],[|Exists('x',B,Exists('y',B,Imp(Var 'x',Var 'x')))|]) 0 (And(Var 'y',Var 'b'))) =  [([||],[|Exists('y',B,Imp(And(Var 'a',Var 'b'),And(Var 'a',Var 'b')))|])])
                              with _ -> true
let%test "forall_g_N,true" = fst (forall_g_n ([|Forall('a',N,Nat_comp(Equal(Var_nat 'a',Var_nat 'a')))|],[||]) 0 (Zero) )=  [([|Nat_comp(Equal(Zero,Zero))|],[||])]
let%test "forall_g_N,false" = try fst (forall_g_n ([|Forall('a',N,Exists('b',N,Nat_comp(Equal(Sum(Var_nat 'b',Var_nat 'a'),Var_nat 'a'))))|],[||]) 0 (Sum(Zero,Var_nat 'b')))=  [([|Exists('b',N,Nat_comp(Equal(Sum(Var_nat 'b',Sum(Zero,Var_nat 'b')),Sum(Zero,Var_nat 'b'))))|],[||])]
                              with _ -> true                              
let%test "existst_d_N,true" = fst (exists_d_n ([||],[|Exists('a',N,Nat_comp(Equal(Var_nat 'a',Var_nat 'a')))|]) 0 (Zero) )=  [([||],[|Nat_comp(Equal(Zero,Zero))|])]
let%test "existst_d_N,false" = try fst (exists_d_n ([||],[|Exists('a',N,Exists('b',N,Nat_comp(Equal(Sum(Var_nat 'b',Var_nat 'a'),Var_nat 'a'))))|]) 0 (Sum(Zero,Var_nat 'b')))=  [([||],[|Exists('b',N,Nat_comp(Equal(Sum(Var_nat 'b',Sum(Zero,Var_nat 'b')),Sum(Zero,Var_nat 'b'))))|])]
                              with _ -> true      
