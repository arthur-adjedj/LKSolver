type nat = |Zero | Succ of nat |Sum of nat*nat (*|Prod of nat*nat *)|Var_nat of char 

type comparison = |Equal of nat*nat 
                  |Not_equal of nat*nat 
                  |Less_than of nat*nat 
                  |Less_than_strict of nat*nat 
                  |More_than of nat*nat 
                  |More_than_strict of nat*nat
                  |Forall of char*comparison
                  |Exists of char*comparison

let rec nat_to_int = function 
  |Zero -> 0
  |Succ n -> 1 + (nat_to_int n)

let rec string_of_nat = function 
  |Sum(a,b) -> (string_of_nat a)^" + "^(string_of_nat b)
  (*|Prod(a,b) -> (string_of_nat a)^" x "^(string_of_nat b)*)
  |Var_nat c -> Char.escaped c 
  |n -> string_of_int (nat_to_int n)

let rec string_of_comp = function
  |Equal(a,b) -> (string_of_nat a)^" = "^(string_of_nat b)
  |Not_equal(a,b) -> (string_of_nat a)^" != "^(string_of_nat b)
  |Less_than(a,b) -> (string_of_nat a)^" <= "^(string_of_nat b)
  |Less_than_strict(a,b) -> (string_of_nat a)^" < "^(string_of_nat b)
  |More_than(a,b) -> (string_of_nat a)^" >= "^(string_of_nat b)
  |More_than_strict(a,b) -> (string_of_nat a)^" > "^(string_of_nat b)
  |Forall(x,c) -> "∀"^(Char.escaped x)^"("^(string_of_comp c)^")"
  |Exists(x,c) -> "∃"^(Char.escaped x)^"("^(string_of_comp c)^")"

let rec replace_nat x t f= match f with
  |Zero -> Zero
  |Succ n -> Succ (replace_nat x t n)
  |Sum(a,b) -> Sum(replace_nat x t a,replace_nat x t b)
  (*|Prod(a,b) -> Prod(replace_nat x t a,replace_nat x t b)*)
  |Var_nat c -> if c=x then Var_nat t else Var_nat c
  

(*let rec is_nat_equiv n1 n2= match n1,n2 with
  |Zero,Zero -> true
  |Succ(a),Succ(b) -> is_nat_equiv a b
  |Sum(a,b),Sum(c,d) -> (is_nat_equiv a c) && (is_nat_equiv b d)
  |Var_nat a,Var_nat b -> a=b
  |Var_nat _,_ -> true
  |_,Var_nat _ -> true
  |_ -> false*)


let is_nat_equiv n1 n2 = 
  let dict = Hashtbl.create 42 in
    let rec aux o t = match o,t with
        |Zero,Zero -> true
        |Succ(a),Succ(b) -> aux a b
        |Var_nat u ,_ ->( try (if (Hashtbl.find dict u) <> t then false else (Hashtbl.replace dict u t; true))
                       with Not_found -> Hashtbl.add dict u t;true)
        |Sum(a1,b1),Sum(a2,b2) (*|Prod(a1,b1),Prod(a2,b2)*) -> (aux a1 a2) && (aux b1 b2)
        |_ -> false
    in aux n1 n2;;
  

let rec is_comp_equiv c1 c2 = match c1,c2 with
  |Equal(a1,b1),Equal(a2,b2) |Not_equal(a1,b1),Not_equal(a2,b2)
  |Less_than(a1,b1),Less_than(a2,b2)|Less_than_strict(a1,b1),Less_than_strict(a2,b2) 
  |More_than(a1,b1),More_than(a2,b2)|More_than_strict(a1,b1),More_than_strict(a2,b2) -> (is_nat_equiv a1 a2) && (is_nat_equiv b1 b2)
  |Forall(_,c1),Forall(_,c2) |Exists(_,c1),Exists(_,c2)-> is_comp_equiv c1 c2
  |_ -> false

let print_nat n = print_string (string_of_nat n)
let print_comp c = print_string (string_of_comp c)

