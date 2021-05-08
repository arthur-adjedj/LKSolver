open Sequent 


type state = {mutable fin : sequent list;
              mutable run: sequent;
              mutable unfin : sequent list}


let next_state state =
  state.fin <- (state.run)::state.fin;
  state.run <- List.hd state.unfin;
  state.unfin <- List.tl state.unfin


  






    

