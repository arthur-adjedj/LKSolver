open State 
open Tactiques
open Sequent

(*On suppose une preuve toujours non vide*)
type proof = (state*string) list

exception Proof_complete of proof

let apply (p:proof) (t:tactique):proof =
    let last = fst (List.hd p) in
    if is_empty last then raise (Proof_complete p)
    else 
      begin
        let next = t (List.hd last) in
        ((fst next)@(List.tl last),"")::(last,snd next)::(List.tl p)
      end
      
let init (s:sequent):proof = [([s],"")]


let is_complete p = is_empty (fst (List.hd  p))    

let rec print_proof p = match p with
    |[] -> ()
    |(st,i)::t -> let strings = List.rev(strings_of_state st) in
                  if i="" then (List.iter (fun l -> print_string l; print_string "       ") (strings);print_endline "")
                  else 
                    begin 
                      let lens = List.map (fun str -> String.make (String.length str) '-') strings in 
                      print_string (List.hd lens);List.iter (fun l -> print_string "    ";print_string l) (List.tl lens); print_string "<- ";print_endline i;
                      List.iter (fun l -> print_string l; print_string "       ") (strings);print_endline ""
                    end;
                    print_proof t



