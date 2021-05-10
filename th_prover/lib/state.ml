open Sequent 

type current = 
  |Empty
  |Seq of sequent

type state = {current : current;
              queue : sequent list}



let is_empty s = (s = {current = Empty; queue = []})


let is_current_empty s = (s.current = Empty)

let string_state s =
  let str_current = match s.current with 
                      |Empty -> "   E   "
                      |Seq a -> sequent_to_string a in 
  let str_queue = String.concat "   " (List.map sequent_to_string s.queue) in 
  String.concat "   " (str_current::str_queue::[])

let print_state s = print_endline (string_state s);



  
  


  






    

