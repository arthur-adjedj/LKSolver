open Proof_build.Formule


let default =(("Une erreur est itnervenue lors du chargement de la preuve",Var 'z'),[])

let load_proof dir = 
  let file = open_in dir in
  let lexbuf = Lexing.from_channel file in
  try
      let result = Parser_read.main Lexer_read.token lexbuf in
      print_string ((fst (fst result))^":  ");print_formule (snd (fst result));print_endline "";
      result
  with 
    |Lexer_read.Eof ->
      close_in file; default
    |End_of_file ->
      close_in file; default
    |e -> print_endline "erreur lors du chargement de la preuve";print_endline (Lexing.lexeme lexbuf);close_in file;
     raise e 