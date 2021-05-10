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
        if is_current_empty last then 
          begin
            let next_s = t (List.hd last.queue) in
            let next = if snd next_s = "axiom" then {current = Empty;
                                        queue = List.tl last.queue}
                       else            {current = Seq (List.hd (fst next_s));
                                        queue = (List.tl (fst next_s) @ (List.tl last.queue))}
            in  print_state next; ((next,"")::(last,snd next_s)::(List.tl p))
          end
        else
          begin
            let next_s = (match last.current with | Seq a -> (t a)) in
            let next = if snd next_s = "axiom" then {current = Empty;
                                        queue = last.queue}
                           else        {current = Seq (List.hd (fst next_s));
                                        queue = (List.tl (fst next_s)) @ last.queue}
            in  print_state next; ((next,"")::(last,snd next_s)::(List.tl p))
          end
      end
      
let init (s:sequent):proof =
    let state = {current = Seq s;
                 queue = []}
    in [(state,"")]


let is_complete p = is_empty (fst (List.hd  p))    