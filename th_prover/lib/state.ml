open Sequent 

type current = 
  |Empty
  |Seq of sequent

type state = {current : current;
              queue : sequent list}



let is_empty s = (s = {current = Empty; queue = []})


let is_current_empty s = (s.current = Empty)



  
  


  






    

