
let ex = function
 | 1 -> 
"
module m1
  interface
   [a : int
    b : int
    c : int]
  body
   [a = 33
    x = a-1  (* 32 *)
    b = a-x  (* 1 *)
    c = x-b  (* 31 *)
   ]                                                                
let a = 10
in ((from m1 take a)-(from m1 take b))-a"
 | 2-> "
module m
 interface 
  [u : int]
 body 
  [u = 3]
33" 
(* ex_modules_declare_and_ignore: int 33 *)
 | 3-> "
module m
 interface 
  [u : int]
 body 
  [u = 3]
from m take u"
(* ex_modules_take_one_value: int 3*)
 | 4->  
  "module m 
          interface 
           [u : int] 
          body 
           [u = 3]
         from m take u"
 (* ex_modules_take_one_value_no_import: int 3*)
 | 5 ->
   "
module m 
 interface 
  [u : int]
 body 
  [u = 3 v = 4]
from m take u"
(*  ex_modules_check_iface_subtyping_1: int 3*)
   | _ -> failwith "No such example"
