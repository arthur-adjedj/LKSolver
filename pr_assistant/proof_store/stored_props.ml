open Proof_build.Formule

let props = Hashtbl.create 100

let stored_direc = "stored_props"


(*recharge props*)
let load_stored_props print = 
  Hashtbl.clear props;
  let line = ref "" in
  try (
    let file = open_in stored_direc in
    try
      while true do
        line := input_line file;
        let result = Parser_stored.main Lexer_stored.token (Lexing.from_string !line) in
        Hashtbl.add props (fst result) (snd result);
        if print then print_endline ((fst result)^" loaded")
      done;
    with 
      |Lexer_stored.Eof ->
        close_in file
     |End_of_file ->
       close_in file
     |e -> if print then print_endline "Unknown error";close_in file;raise e
  )
    with
     |Sys_error _-> if print then print_endline "fichier de stockage non-existant, merci d'écrire une formule correcte afin d'initialiser le fichier";print_endline ""
     |e -> if print then print_endline "Unknown error";raise e



let print_stored_props =
  let f = fun a b -> print_string (a^":  ");print_formule b;print_endline "" in 
  Hashtbl.iter f props
