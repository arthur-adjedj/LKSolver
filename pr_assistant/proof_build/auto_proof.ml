open Proof
open Tactiques
open Formule


let is_var = function
  |Var _ -> true
  |_ -> false


let is_flat_sq s = (Array.for_all is_var (fst s)) && (Array.for_all is_var (snd s))

let can_be_reduced s =   
  let res = ref (false, axiom) in
  let n1 = Array.length (fst s)
  and n2 = Array.length (snd s) in 
  let dict = Hashtbl.create n1 in
  for i=0 to n1-1 do 
    Hashtbl.add dict (fst s).(i) i
  done;
  for j=0 to n2-1 do 
    try
      let i = Hashtbl.find dict (snd s).(j) in 
      res:= (true, reduc i j)
    with _ -> ()
  done;
  !res


let next_tact_f f is_d = match f with
  |Bool false -> failwith "Can't reduce the formula any more"
  |Var _ -> failwith "Can't reduce the formula any more"
  |And _ -> if is_d then and_right else and_left
  |Or _ -> if is_d then or_right else or_left
  |Not _ -> if is_d then not_right else not_left
  |Imp _ -> if is_d then imp_right else imp_left


let next_tact_sq s = 
  if is_flat_sq s then 
    begin
      match can_be_reduced s with
        |true,tact -> tact
        |false,_ -> failwith "can't reduce"
    end
  else
    begin
      let res = ref axiom in
      let n1 = Array.length (fst s)
      and n2 = Array.length (snd s) in 
      for i=0 to n1-1 do 
        try res:= (next_tact_f (fst s).(i) false) i with _ -> ()
      done;
      for i=0 to n2-1 do 
        try res:= (next_tact_f (snd s).(i) true) i with _ -> ()
      done;
      !res
    end

let next_tact_st st = next_tact_sq (List.hd st)


let rec auto_check p =
  if is_complete p then  (true,p)
  else (
    try
      let st = fst (List.hd p) in 
      let next_p = (apply p (next_tact_st st)) in
      auto_check next_p
    with _ -> (false,p)
       )
