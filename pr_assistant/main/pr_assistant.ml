open Proof_build.Formule
open Proof_build.Proof
open Proof_read.Read_proof
open Proof_store.Ext_props
open Proof_build.Auto_proof
open Eval

open Cmdliner



let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")

let develop f l = List.fold_left apply (init ([||],[|f|])) l

let time n f x =
	let start = Sys.time ()
	in let res = ref (f x)
	in for _=0 to n-1 do 
		res := (f x);
	done;
		 let stop = Sys.time ()
	in
		(stop -. start)

let verify_proof d =
	let ((a,b),c) = load_proof d in
	let p = develop b c in
	print_proof p;
	if is_complete p then (
		try
			add a b;
			print_endline ("Formula "^a^" saved") 
		with _ -> ()
	)
	else print_endline "Incorrect formula"

let auto_complete_proof d =
	print_endline "";
	let ((a,b),_) = load_proof d in
	print_endline "Trying to reduce the formula: ";
	print_formule b;
	print_endline "";
	let (proved,p) = auto_check (init ([||],[|b|])) in
	print_proof p;
	if proved then (
		try
			add a b;
			print_endline ("Formula "^a^" saved") 
		with _ -> ()
	)
	else print_endline "Incorrect formula"


let proof_directory =
  let doc = "doc" in
  Arg.(value & pos 0 string "" & info []  ~docv:"PROOF DIRECTORY" ~doc)

let manual_mode =
	let doc = "Put true if you want the program to verify that the whole proof is correct instead of verifiying the correctness of the formula itself" in
	Arg.(value & opt bool false & info ["m"]  ~docv:"Manual mode" ~doc)

let main b dir = if b then verify_proof dir else auto_complete_proof dir


let test_proof =Term.(const main $ manual_mode $  proof_directory)

let info =
	let doc = "A basic proof assistant to check if a formula is a tautology or not " in
	let man = [
		`S Manpage.s_bugs;
		`P "arthur.adjedj@gmail.com" ]
	in
	Term.info "proof checker" ~version:"0.0.1" ~doc ~exits:Term.default_exits ~man

let big_formule n= 
	let res = ref (Or(Var 'a',Not(Var 'a'))) in
	for i=0 to n do
		let c = Char.chr i in
		res:= (And(!res,Or(Var c,Not (Var c))))
	done;
	!res

let big_formule2 n =
	let res = ref (Var 'a',Var 'a') in
	for i=0 to n do
		let c = Char.chr i in
		res:= (And(fst !res,Var c),(And(snd !res,Var c)))
	done;
	Imp(fst !res,snd !res)

let compare ?name:(name = "") f =
	print_endline name;
	let _ = force_brut ~print:true f in 
	let fb = time 100 force_brut f
	and ac = time 100 auto_check (init ([||],[|f|])) in
	print_string "temps nécessaire pour 100 itérations de force brut:";
	print_float (fb);
	print_endline "";
	print_string "temps nécessaire pour 100 itérations de calcul de séquent automatisé:";
	print_float (ac);
	print_endline "";
	(fb,ac)


let print_list l = 
	print_string "[";
	let rec aux = function
		|[] -> print_endline "]"
		|[x] -> print_float x; print_endline "]"
		|h::r -> print_float h;print_string ",";aux r
	in aux l

let results n f =
	let resfb = ref []
	and resac = ref [] in 
	try 
		for i=1 to n do
			let tmp = compare (f i) in
			resfb:= (fst tmp)::!resfb;
			resac:= (snd tmp)::!resac
		done;
		print_list !resfb;
		print_list !resac
	with _ -> (print_list !resfb;
						 print_list !resac)


let () = 
	results 22 big_formule2
(*Term.exit @@ Term.eval (test_proof, info)*)