open Proof_build.Formule
open Stored_props
open Proof_build.Sequent

exception Incomplete_or_wrong_proof
exception Already_exists
exception Wrong_sequent of ((sequent list) * string)


(*ajoute une propriété str : f à a liste*)
let add str f =
  load_stored_props false;
  if Hashtbl.mem props str then (
    print_endline "Propriété déjà enregistrée !";
    raise Already_exists 
  )
  else
    begin
      let file = open_out_gen [Open_creat;Open_append] 0o640 "stored_props" in 
      Printf.fprintf file "%s\n" (str^" : "^(formule_to_string f));
      close_out file;
      print_endline ("Propriété \""^str^"\" ajoutée au répertoire avec succès !")
    end


(*tactique d'emploi d'une propriété déjà prouvée et stockée*)
let ext name s =
  let pattern = Hashtbl.find props name in
  if not (is_s_equiv ([||],[|pattern|]) s) then
    raise (Wrong_sequent ([s],"Wrong sequent"))
  else ([],"<-  "^name)


