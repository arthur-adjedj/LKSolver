open Proof_build.Formule


type trilleen = T | F | I

let et a b = match a,b with 
    |T,T -> T 
    |T,I | I,T -> I
    |_ -> F

let ou a b = match a,b with
  |T,_ | _,T -> T
  |I,I -> I
  |_ -> F

let non = function
  |T -> F
  |F -> T
  |I -> I

let imp a b = match a,b with
  |T,F -> F
  |I,F | T,I -> I
  |_ -> F

let rec eval = function
  |Bool false -> F 
  |Var _ -> I
  |Not a -> non (eval a)
  |And(a,b) -> et (eval a) (eval b)
  |Or(a,b) -> ou (eval a) (eval b)
  |Imp(a,b) -> imp (eval a) (eval b)

let rec stick x = function
  |[] -> []
  |h::t -> (x::h)::(stick x t)

let rec combinaisons l = match l with
  |[h] -> [[(h,Bool false)];[(h,Not(Bool false))]]
  |h::r -> (stick (h,Bool false) (combinaisons r))@(stick (h,Not(Bool false)) (combinaisons r))

let rec uniques ?vues:(v= []) l = match l with  
  |[] -> v
  |h::t -> if List.mem h v then uniques ~vues:v t else uniques ~vues:(h::v) t

let rec variables = function
|Bool false -> []
|Var c -> [c] 
|Not a -> variables a
|And(a,b) |Or(a,b) |Imp(a,b) -> uniques ((variables a)@(variables b))


let rec chgt_unique (c,m) f =
    match f with
      |Bool false -> f 
      |Var a -> if a = c then m else f 
      |Not a -> Not(chgt_unique (c,m) a)
      |And(a,b) -> And(chgt_unique (c,m) a,chgt_unique (c,m) b)
      |Or(a,b) -> Or(chgt_unique (c,m) a,chgt_unique (c,m) b)
      |Imp(a,b) -> Imp(chgt_unique (c,m) a,chgt_unique (c,m) b)

let print_tri = function
  |T -> print_string "T" 
  |F -> print_string "F" 
  |I -> print_string  "I"
      
let rec chgt f l = match l with
  |[] -> f 
  |h::r -> chgt (chgt_unique h f) r

let force_brut ?print:(p = false) f =
  let tests = combinaisons (variables f) in
  if p then (print_int (List.length tests); print_endline "");
  List.for_all (fun x -> (eval (chgt f x))=T) tests







