open ReM

type 'a t = { mutable data: 'a array; mutable size: int}
  (* data is declared mutable so the store may be resized *)

let empty_store i v = { data=Array.make i v; size=0 }

let get_size st = st.size

let enlarge_store st value =
  let new_array = Array.make (st.size*2) value
  in Array.blit st.data 0 new_array 0 st.size;
  st.data<-new_array
    
let new_ref st value =
  if Array.length (st.data)=st.size      
  then enlarge_store st value
  else ();
  begin
    st.data.(st.size)<-value;
    st.size<-st.size+1;
    st.size-1
  end


let deref st ref =
  if ref>=st.size
  then error "Index out of bounds"
  else 
    return @@ st.data.(ref)

let set_ref st ref value =
  if ref>=st.size
  then
    error "Index out of bounds"
  else 
    return @@ st.data.(ref)<-value
    
let rec take n = function
  | [] -> []
  |  x::xs when n>0 -> x::take (n-1) xs
  | _::_ -> []

let string_of_store' f st =
  let ss = List.mapi (fun i x -> string_of_int i^"->"^f x) @@ take st.size @@ Array.to_list st.data
  in 
  String.concat ",\n" ss

let string_of_store f st =
  match st.size with
  | 0 -> ">>Store:\nEmpty"
  | _ -> ">>Store:\n"^ string_of_store' f st

