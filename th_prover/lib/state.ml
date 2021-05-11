open Sequent 


type state = sequent list

let is_empty s = s = []

let strings_of_state s= List.map sequent_to_string s

let string_state s =
  String.concat "   " (List.rev (strings_of_state s))

let print_state s = print_endline (string_state s);



  
  


  






    

