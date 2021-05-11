open Formule

let props = Hashtbl.create 100

let stored_direc = "C:\\Users\\aarth\\IdeaProjects\\Theorem_prover\\th_prover\\lib\\stored_props.txt"

let load_stored_props = 
  Hashtbl.clear props;
  let line = ref "" in
  let file = open_in stored_direc in
  try
    while true do
      line := input_line file;
      print_endline !line; 
      let result = Parser.main Lexer.token (Lexing.from_string !line) in
      Hashtbl.add props (fst result) (snd result);
      print_endline ((fst result)^" chargée")
    done;
  with 
    |Lexer.Eof ->
      close_in file
    |End_of_file ->
      close_in file
    |e -> print_endline "erreur inconnue, je veux mourir";close_in file;raise e


let print_stored_props =
  let f = fun a b -> print_string (a^":  ");print_formule b;print_endline "" in 
  Hashtbl.iter f props
