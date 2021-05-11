open Proof_build.Proof
open Proof_read.Read_proof

open Cmdliner

let print_bool = function
	|true -> (print_endline "true")
	|false -> (print_endline "false")

let develop f l = List.fold_left apply (init ([||],[|f|])) l


let direc = "C:\\Users\\aarth\\IdeaProjects\\Theorem_prover\\th_prover\\proof_read\\test"

let verify_proof d =
	let ((_,b),c) = load_proof d in
	let p = develop b c in
	print_proof p;
	print_bool (is_complete p)

let proof_directory =
  let doc = "The message to print." in
  Arg.(value & pos 0 string direc & info []  ~docv:"PROOF DIRECTORY" ~doc)

let test_proof =Term.(const verify_proof  $ proof_directory)

let info =
	let doc = "print a customizable message repeatedly" in
	let man = [
		`S Manpage.s_bugs;
		`P "aarthuur01@gmail.com" ]
	in
	Term.info "proof checker" ~version:"0.0.1" ~doc ~exits:Term.default_exits ~man

let () = Term.exit @@ Term.eval (test_proof, info)	


