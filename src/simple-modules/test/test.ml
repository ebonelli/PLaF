open OUnit2
open Sm.Ast
open Sm.ReM
open Sm.Ds
open Sm.Main

(* A few test cases *)
let tests_let = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "22"));
  "add"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "11+11"));
  "adds" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "(10+1)+(5+6)"));
  "let"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x=22 in x"));
  "lets" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x = 0 in let x = 22 in x"));
]


let tests_proc = [
  "proc"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "(proc (x:int) { x+1 } 2)"))
]

let tests_rec = [
  "rec"  >:: (fun _ -> assert_equal (Ok (NumVal 120))
                 (interp "letrec int f(x:int) = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"))
]

let tests_erefs = [
  "erefs"  >:: (fun _ -> assert_equal (Ok (NumVal (-1)))
                 (interp "let g = 
     let counter = newref(0) 
     in proc (d:int) {
         begin
          setref(counter, deref(counter)+1);
          deref(counter)
         end
       }
  in (g 11) - (g 22)"))
]

let tests_modules = [
  "mod1"  >:: (fun _ -> assert_equal (Ok (NumVal 11))
                 (interp "module m
 interface 
  [u : int 
   v : int] 
 body
  [u = 44
   v = 33]
  (from m take u)-(from m take v)"));


    "mod2"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "module m interface [x : int] body [x = 3 y = 4]
          from m take x"));

     "declare and ignore"  >:: (fun _ -> assert_equal (Ok (NumVal 33))
                                  (interp "module m
 interface 
  [u : int]
 body 
  [u = 3]
33"));

    "take one value"    >:: (fun _ -> assert_equal (Ok (NumVal 3))
                                (interp "module m
 interface 
  [u : int]
 body 
  [u = 3]
from m take u"));


    "take one value2"    >:: (fun _ -> assert_equal (Ok (NumVal 3))
                                (interp "module m 
 interface 
  [u : int]
 body 
  [u = 3 v = 4]
from m take u"));


    "id out of scope"    >:: (fun _ -> assert_equal (Error "Key not found")
                                (interp "
module m2
interface [v : int] 
body
[v = (from m1 take u) - 11]
module m1 interface [u : int] body [u = 44]
(from m1 take u) - (from m2 take v)"));

    "id in scope"    >:: (fun _ -> assert_equal (Ok (NumVal 11))
                                (interp "module m1 interface [u : int] body [u = 44]
         module m2   
          interface [v : int] 
          body [v = (from m1 take u)-11]
         (from m1 take u)-(from m2 take v)"));
  
  
  "typecheck body inclusion 5"
  >:: (fun _ -> assert_equal (Ok (NumVal 33))
                                (interp " 
 module m1 interface
[u : int] body
[u = 44]
module m2 interface
[v : int] body
[v = (from m1 take u)-11] 
from m2 take v"));

  
    "typecheck body inclusion"    >:: (fun _ -> assert_equal (Ok IntType)
                                (chk " 
    module m1
  interface
    [u : int]
  body
    [v = 2
     u = 33-v]
4"));

  "typecheck body inclusion 2"    >:: (fun _ -> assert_equal (Ok IntType)
                                (chk " 
    module m1
  interface
    [u : int]
  body
    [v = 2
     u = 33-v]
from m1 take u"));
  

  "typecheck body inclusion 3"
  >:: (fun _ -> assert_equal (Error "Subtype failure: m1")
                                (chk " 
    module m1 interface
[u : bool] 
body
[u = 33] 
4"));

"typecheck body inclusion 4"
>:: (fun _ -> assert_equal (Error "Subtype failure: m1")
                                (chk " 
 module m1 interface
[u : int v : int]
body
[v = 33
u = 44] 
from m1 take u"));

     "typecheck body inclusion 5"    >:: (fun _ -> assert_equal (Ok IntType)
                                (chk " 
 module m1 interface
[u : int] body
[u = 44]
module m2 interface
[v : int] body
[v = (from m1 take u)-11] 
from m2 take v"))


]

let _ = run_test_tt_main ("suite" >::: (tests_let @ tests_proc
                                        @ tests_rec @ tests_erefs @ tests_modules))
