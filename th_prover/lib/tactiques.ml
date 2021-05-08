open Formule
open Sequent 

exception Wrong_sequent of sequent list

type tactique = sequent -> sequent list

let axiom s =
	let pattern = ([|Var 'a'|],[|Var 'a'|]) in
	if not (eq_sequents pattern s) then
		raise (Wrong_sequent [s])
	else [([||],[||])]


let not_gauche i (gf,df) =
	let pattern = Not(Var 'a') in
	if i> (Array.length gf ) || not (eq_formule pattern gf.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else 
		begin
			let un_not (Not a)  = a in
			let n1 = Array.length gf
			and n2 = Array.length df in
			let gres = Array.make (n1-1) Bottom 
			and dres = Array.make (n2+1) Bottom in
			for j = 0 to n1-2 do
				if j<i then gres.(j) <- gf.(j)
				else gres.(j) <-gf.(j+1) 
			done;
			for j = 0 to n2-1 do
				dres.(j) <- df.(j)
			done;
			dres.(n2) <- (un_not gf.(i));
			[(gres,dres)]
		end


let not_droite i (gf,df) =
	let pattern = Not(Var 'a') in
	if i> (Array.length df ) || not (eq_formule pattern df.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else 
		begin
			let un_not (Not a)  = a in
			let n1 = Array.length gf
			and n2 = Array.length df in
			let gres = Array.make (n1+1) Bottom 
			and dres = Array.make (n2-1) Bottom in
			for j = 0 to n2-2 do
				if j<i then dres.(j) <- df.(j)
				else dres.(j) <-df.(j+1) 
			done;
			for j = 0 to n1-1 do
				gres.(j) <- gf.(j)
			done;
			gres.(n2) <- (un_not gf.(i));
			[(gres,dres)]
		end		



let and_gauche i (gf,df) =
	let pattern =  And(Var 'a',Var 'b') in
	if i> (Array.length gf ) || not (eq_formule pattern gf.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_and (And (a,b)) = (a,b) in
			let n1 = Array.length gf in
			let gres = Array.make (n1+1) Bottom in
			for j = 0 to n1 do
				if j<i then gres.(j) <- gf.(j)
				else( 
					if j>i+1 then gres.(j) <-gf.(j+1) 
				)
			done;
			gres.(i) <- fst (un_and gf.(i)) ;
			gres.(i+1) <- snd (un_and gf.(i));
			[(gres,df)]
		end



let and_droite i (gf,df) =
	let pattern =  And(Var 'a',Var 'b') in
	if i> (Array.length df ) || not (eq_formule pattern df.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_and (And (a,b)) = (a,b) in
			let dres1 = df 
			and dres2 = df in
			dres1.(i) <- fst (un_and df.(i)) ;
			dres2.(i) <- snd (un_and df.(i));
			[(gf,dres1);(gf,dres2)]
		end
	
let or_gauche i (gf,df) =
	let pattern =  Or(Var 'a',Var 'b') in
	if i> (Array.length gf ) || not (eq_formule pattern gf.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_or (Or (a,b)) = (a,b) in
			let gres1 = gf 
			and gres2 = gf in
			gres1.(i) <- fst (un_or gf.(i)) ;
			gres2.(i) <- snd (un_or gf.(i));
			[(gres1,df);(gres2,df)]
		end


let or_droite i (gf,df) =
	let pattern =  Or(Var 'a',Var 'b') in
	if i> (Array.length df ) || not (eq_formule pattern df.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_or (Or (a,b)) = (a,b) in
			let n2 = Array.length df in
			let dres = Array.make (n2+1) Bottom in
			for j = 0 to n2 do
				if j<i then dres.(j) <- df.(j)
				else( 
					if j>i+1 then dres.(j) <-df.(j+1) 
				)
			done;
			dres.(i) <- fst (un_or df.(i)) ;
			dres.(i+1) <- snd (un_or df.(i));
			[(gf,dres)]
		end



let imp_gauche i (gf,df) =
	let pattern = Imp(Var 'a',Var 'b') in
	if i> (Array.length gf) || not (eq_formule pattern gf.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_imp (Imp (a,b)) = (a,b) in
			let n2 = Array.length df in
			let dres1 = Array.make (n2+1) Bottom 
			and gres2 = gf in
			gres2.(i) <- (snd (un_imp gf.(i)));
			for j=0 to n2-1 do 
				dres1.(j) <-df.(j)
			done;
			dres1.(n2) <- fst (un_imp gf.(i));
			[(gf,dres1);(gres2,df)]
		end


		
let imp_droite i	(gf,df) =
	let pattern = Imp(Var 'a',Var 'b') in
	if i> (Array.length gf) || not (eq_formule pattern gf.(i)) then
		raise (Wrong_sequent [(gf,df)])
	else
		begin
			let un_imp (Imp (a,b)) = (a,b) in
			let n1 = Array.length gf in
			let gres = Array.make (n1+1) Bottom
			and dres = df in
			dres.(i) <- fst (un_imp df.(i));
			for j=0 to n1-1 do 
				gres.(j) <- gf.(j)
			done;
			gres.(n1) <- gf.(i);
			[(gres,dres)]
		end
			
