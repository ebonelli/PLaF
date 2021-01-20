open OUnit2
open Explicit_refs
open Interp
open Ds
    
(* A few test cases *)
let tests_let = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "22"));
  "add"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "11+11"));
  "adds" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "(10+1)+(5+6)"));
  "let"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x=22 in x"));
  "lets" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x = 0 in let x = 22 in x"));
]


let tests_proc = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "(proc (x) { x+1 } 2)"))
]

let tests_rec = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 120))
                 (interp "letrec f(x) = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"))
]

let tests_erefs = [
  "ref1"  >:: (fun _ -> assert_equal (Ok (RefVal 0))
                 (interp "let a=newref(2) in a"));

  "ref2"  >:: (fun _ -> assert_equal (Ok (NumVal 2))
                 (interp "let a=newref(2) in deref(a)"));
  
  "ref3"  >:: (fun _ -> assert_equal (Ok UnitVal)
                  (interp "let a=newref(2) in setref(a,deref(a)+1)"));

  "ref4"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "let a=newref(2) in begin setref(a,deref(a)+1); deref(a) end"));
  
  "ref5"  >:: (fun _ -> assert_equal (Ok (NumVal (-1)))
                 (interp "let g = 
     let counter = newref(0) 
     in proc (d) {
         begin
          setref(counter, deref(counter)+1);
          deref(counter)
         end
       }
  in (g 11) - (g 22)"))
  
]


let _ = run_test_tt_main ("suite" >::: (tests_let @ tests_proc
                                        @ tests_rec @ tests_erefs))
