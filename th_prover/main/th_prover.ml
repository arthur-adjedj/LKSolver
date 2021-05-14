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
		add a b c;
	print_endline ("formule "^a^" ajoutée à la base de donnée !") )


let auto_complete_proof d =
	let ((_,b),_) = load_proof ~print:false d in
	let (proved,p) = auto_check (init ([||],[|b|])) in
	print_proof p;
	print_bool (proved)


let proof_directory =
  let doc = "doc" in
  Arg.(value & pos 0 string direc & info []  ~docv:"PROOF DIRECTORY" ~doc)

let test_proof =Term.(const auto_complete_proof  $ proof_directory)

let info =
	let doc = "doc" in
	let man = [
		`S Manpage.s_bugs;
		`P "aarthuur01@gmail.com" ]
	in
	Term.info "proof checker" ~version:"0.0.1" ~doc ~exits:Term.default_exits ~man

let () = Term.exit @@ Term.eval (test_proof, info)	


