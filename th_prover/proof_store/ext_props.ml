open Proof_lib.Formule
open Proof_lib.Proof
open Stored_props
open Proof_lib.Sequent

exception Incomplete_or_wrong_proof
exception Already_exists
exception Wrong_sequent of ((sequent list) * string)


(*ajoute une propriété str : f à a liste*)
let add str f tacts =
  load_stored_props;
  if not (is_complete (List.fold_left apply (init ([||],[|f|])) tacts)) then (
    print_endline "Preuve incomplète ou fausse. Celle-ci n'a pas pu être ajoutée au répertoire";
    raise Incomplete_or_wrong_proof )
  else (
  if Hashtbl.mem props str then (
    print_endline "Propriété déjà enregistrée !";
    raise Already_exists 
  )
  else
    begin
      let file = open_out_gen [Open_append] 0o640 "C:\\Users\\aarth\\IdeaProjects\\Theorem_prover\\th_prover\\lib\\stored_props.txt" in 
      Printf.fprintf file "%s\n" (str^" : "^(formule_to_string f));
      close_out file;
      print_endline ("Propriété \""^str^"\" ajoutée au répertoire avec succès !")
    end
      )


(*tactique d'emploi d'une propriété déjà prouvée et stockée*)
let ext name s =
  let pattern = Hashtbl.find props name in
  if not (is_s_equiv ([||],[|pattern|]) s) then
    raise (Wrong_sequent ([s],"Wrong sequent"))
  else ([],"<-  "^name)


