open Formule
open Sequent 

exception Wrong_sequent of ((sequent list) * string)

type tactique = sequent -> ((sequent list) * string)


(*O(1)*)
let axiom s =
	let pattern = ([|Var 'a'|],[|Var 'a'|]) in
	if not (is_s_equiv pattern s) then
		raise (Wrong_sequent ([s],"Wrong_sequent, axiom"))
	else ([],"axiom")

(*O(n(gf.(i)))*)
let reduc i j (gf,df) = 
	if (i >= (Array.length gf)) || (j >= (Array.length df)) || not (is_f_equiv gf.(i) df.(j)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, reduc "^(string_of_int i)^" "^(string_of_int j)))
	else ([],"reduc "^(string_of_int i)^" "^(string_of_int j))


(*O(len(gf)+len(df))*)
let aff_left i (gf,df) = 
	if i>= (Array.length gf ) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, affg"))
	else 
		begin
			let n1 = Array.length gf in
			let gres = Array.make (n1-1) (B true)
			and dres = Array.copy df  in
			for j = 0 to n1-2 do
				if j<i then gres.(j) <- gf.(j)
				else gres.(j) <-gf.(j+1) 
			done;
			([(gres,dres)],"aff left "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let aff_right i (gf,df) = 
	if i>= (Array.length df) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, affd"))
	else 
		begin
			let n2 = Array.length df in
			let gres = Array.copy gf  
			and dres = Array.make (n2-1) (B false) in
			for j = 0 to n2-2 do
				if j<i then dres.(j) <- df.(j)
				else dres.(j) <-df.(j+1) 
			done;
			([(gres,dres)],"aff right "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let contr_left i j (gf,df) =
	if i>= (Array.length gf) || j>= (Array.length gf) || gf.(i) <> df.(i) || i=j then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ><g"))
else
	begin
		let n1 = Array.length gf in 
		let gres = Array.make (n1-1) (B true) 
		and dres = Array.copy df in 
		for k = 0 to n1-2 do
			if k<i then gres.(k) <- gf.(j)
			else gres.(k) <-gf.(k+1) 
		done;
		([(gres,dres)],"contr left "^(string_of_int i)^" "^(string_of_int j))
	end

(*O(len(gf)+len(df))*)
let contr_right i j (gf,df) =
	if i>= (Array.length df) || j>= (Array.length df) || df.(i) <> df.(i) || i=j then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ><d"))
	else
		begin
			let n2 = Array.length df in 
			let gres = Array.copy gf 
			and dres = Array.make (n2-1) (B false) in 
			for k = 0 to n2-2 do
				if k<i then dres.(k) <- df.(j)
				else dres.(k) <-df.(k+1) 
			done;
			([(gres,dres)],"contr right "^(string_of_int i)^" "^(string_of_int j))
		end


(*pour la coupure, c est un couple de bool arrays pour séparer les hypos et concls en deux*)
(*O(len(c))*)
let coupure f c s = 
	if (Array.length (fst c) <> Array.length (fst s)) || (Array.length (snd c) <> Array.length (snd s)) 
		then raise (Wrong_sequent ([s],"Wrong_sequent"))
	else
		begin
			let n1 = Array.length (fst s)
			and n2 = Array.length (snd s) in

			let sum a b = a + (Bool.to_int b) in
			let k1 = Array.fold_left sum 0 (fst c)
			and k2 = Array.fold_left sum 0 (snd c) in
			let gres1 = Array.make k1 (B true)
			and dres1 = Array.make (k2+1) (B false)
			and gres2 = Array.make (n1-k1+1) (B true)
			and dres2 = Array.make (n2-k2) (B false) in 

			let i1 = ref 0 in
			for i=0 to n1-1 do
				if (fst c).(i) then (
					gres1.(!i1) <- (fst s).(i);
					incr i1
				)
				else gres2.(i- !i1) <- (fst s).(i)
			done;			

			let i2 = ref 0 in 
			for i=0 to n2-1 do
				if (snd c).(i) then (
					dres1.(!i2) <- (snd s).(i);
					incr i2
				)
				else dres2.(i- !i2) <- (snd s).(i)
			done;

			dres1.(k2) <- f;
			gres2.(n1-k1) <- f;
			([(gres1,dres1);(gres2,dres2)],"coupure")
		end
	
(*O(len(gf)+len(df))*)
let not_left i (gf,df) =
	let pattern = Not(Var 'a') in
	if i>= (Array.length gf ) || not (is_f_equiv pattern gf.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ┐g"))
	else 
		begin
			let un_not (Not a)  = a in
			let n1 = Array.length gf
			and n2 = Array.length df in
			let gres = Array.make (n1-1) (B true) 
			and dres = Array.make (n2+1) (B false) in
			for j = 0 to n1-2 do
				if j<i then gres.(j) <- gf.(j)
				else gres.(j) <-gf.(j+1) 
			done;
			for j = 0 to n2-1 do
				dres.(j) <- df.(j)
			done;
			dres.(n2) <- (un_not gf.(i));
			([(gres,dres)],"┐left "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let not_right i (gf,df)=
	let pattern = Not(Var 'a') in
	if i>= (Array.length df ) || not (is_f_equiv pattern df.(i)) then(
		print_int i;print_sequent (gf,df);
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ┐d")))
	else 
		begin
			let un_not (Not a)  = a in
			let n1 = Array.length gf
			and n2 = Array.length df in
			let gres = Array.make (n1+1) (B true) 
			and dres = Array.make (n2-1) (B false) in
			for j = 0 to n2-2 do
				if j<i then dres.(j) <- df.(j)
				else dres.(j) <-df.(j+1) 
			done;
			for j = 0 to n1-1 do
				gres.(j) <- gf.(j)
			done;
			gres.(n1) <- (un_not df.(i));
			([(gres,dres)],"┐right "^(string_of_int i))
		end		

(*O(len(gf)+len(df))*)
let and_left i (gf,df)=
	let pattern =  And(Var 'a',Var 'b') in
	if i>= (Array.length gf ) || not (is_f_equiv pattern gf.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ^g"))
	else
		begin
			let un_and (And (a,b)) = (a,b) in
			let n1 = Array.length gf in
			let gres = Array.make (n1+1) (B true) 
			and dres = Array.copy df in
			for j = 0 to n1 do
				if j<i then gres.(j) <- gf.(j)
				else( 
					if j>i+1 then gres.(j) <-gf.(j-1) 
				)
			done;
			gres.(i) <- fst (un_and gf.(i)) ;
			gres.(i+1) <- snd (un_and gf.(i));
			([(gres,dres)],"^left "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let and_right i (gf,df) =
	let pattern =  And(Var 'a',Var 'b') in
	if i>= (Array.length df ) || not (is_f_equiv pattern df.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ^d"))
	else
		begin
			let un_and (And (a,b)) = (a,b) in
			let dres1 = Array.copy df 
			and dres2 = Array.copy df 
			and gres1 = Array.copy gf 
			and gres2 = Array.copy gf in
			dres1.(i) <- fst (un_and df.(i));
			dres2.(i) <- snd (un_and df.(i));
			([(gres1,dres1);(gres2,dres2)],"^right "^(string_of_int i))
		end
	
(*O(len(gf)+len(df))*)
let or_left i (gf,df) :((sequent list) * string)=
	let pattern =  Or(Var 'a',Var 'b') in
	if i>= (Array.length gf ) || not (is_f_equiv pattern gf.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, vg"))
	else
		begin
			let un_or (Or (a,b)) = (a,b) in
			let gres1 = Array.copy gf 
			and gres2 = Array.copy gf 
			and dres1 = Array.copy df 
			and dres2 = Array.copy df in
			gres1.(i) <- fst (un_or gf.(i)) ;
			gres2.(i) <- snd (un_or gf.(i));
			([(gres1,dres1);(gres2,dres2)],"vleft "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let or_right i (gf,df) :((sequent list) * string)=
	let pattern =  Or(Var 'a',Var 'b') in 
	if i>= (Array.length df ) || not (is_f_equiv pattern df.(i)) then (
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, vd")) )
	else
		begin
			let un_or (Or (a,b)) = (a,b) in
			let n2 = Array.length df in
			let dres = Array.make (n2+1) (B false) 
			and gres = Array.copy gf in
			for j = 0 to n2 do
				if j<i then dres.(j) <- df.(j)
				else( 
					if j>i+1 then dres.(j) <-df.(j+1) 
				)
			done;
			dres.(i) <- fst (un_or df.(i)) ;
			dres.(i+1) <- snd (un_or df.(i));
			([(gres,dres)],"vright "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let imp_left i (gf,df) :((sequent list) * string)=
	let pattern = Imp(Var 'a',Var 'b') in
	if i>= (Array.length gf) || not (is_f_equiv pattern gf.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ->g"))
	else
		begin
			let un_imp (Imp (a,b)) = (a,b) in
			let n1 = Array.length gf 
			and n2 = Array.length df in
			let dres1 = Array.make (n2+1) (B false) 
			and gres1 = Array.make (n1-1) (B true)
			and gres2 = Array.copy gf 
			and dres2 = Array.copy df in
			gres2.(i) <- (snd (un_imp gf.(i)));
			for j=0 to n1-2 do 
				if j<i then 
					gres1.(j) <- gf.(j)
				else gres1.(j) <- gf.(j+1)
			done;
			for j=0 to n2-1 do 
				dres1.(j) <-df.(j)
			done;
			dres1.(n2) <- fst (un_imp gf.(i));
			([(gres1,dres1);(gres2,dres2)],"->left "^(string_of_int i))
		end

(*O(len(gf)+len(df))*)
let imp_right i	(gf,df) :((sequent list) * string)=
	let pattern = Imp(Var 'a',Var 'b') in
	if i>= (Array.length df) || not (is_f_equiv pattern df.(i)) then
		raise (Wrong_sequent ([(gf,df)],"Wrong_sequent, ->d"))
	else
		begin
			let un_imp (Imp (a,b)) = (a,b) in
			let n1 = Array.length gf in
			let gres = Array.make (n1+1) (B true)
			and dres = Array.copy df in
			dres.(i) <- snd (un_imp df.(i));
			for j=0 to n1-1 do 
				gres.(j) <- gf.(j)
			done;
			gres.(n1) <- fst (un_imp df.(i));
			([(gres,dres)], "->right "^(string_of_int i))
		end
			
