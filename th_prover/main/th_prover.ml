open Proof_build.Formule
open Proof_build.Proof
open Proof_read.Read_proof
open Proof_store.Ext_props
open Proof_build.Auto_proof

open Cmdliner

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")

let develop f l = List.fold_left apply (init ([||],[|f|])) l


let direc = "C:\\Users\\aarth\\IdeaProjects\\Theorem_prover\\th_prover\\proof_read\\test"

let verify_proof d =
	let ((a,b),c) = load_proof d in
	let p = develop b c in
	print_proof p;
	print_bool (is_complete p);
	if is_complete p then (
		add a b;
	print_endline ("formule "^a^" ajoutée au registre !") )


let auto_complete_proof d =
	print_endline "";
	let ((a,b),_) = load_proof d in
	print_endline "tentative de résolution automatique de la propriété: ";
	print_formule b;
	print_endline "";
	let (proved,p) = auto_check (init ([||],[|b|])) in
	print_proof p;
	if proved then (
		add a b;
		print_endline ("formule "^a^" correcte et ajouté au registre")
	)
	else print_endline "formule incorrecte"


let proof_directory =
  let doc = "doc" in
  Arg.(value & pos 0 string direc & info []  ~docv:"PROOF DIRECTORY" ~doc)

let manual_mode =
	let doc = "Put true if you want the program to verify that the whole proof is correct instead of verifiying the correctness of the formula itself" in
	Arg.(value & opt bool false & info []  ~docv:"Manual mode" ~doc)

let main b dir = if b then verify_proof dir else auto_complete_proof dir


let test_proof =Term.(const main $ manual_mode $  proof_directory)



let info =
	let doc = "doc" in
	let man = [
		`S Manpage.s_bugs;
		`P "arthur.adjedj@gmail.com" ]
	in
	Term.info "proof checker" ~version:"0.0.1" ~doc ~exits:Term.default_exits ~man

let () = Term.exit @@ Term.eval (test_proof, info)	


