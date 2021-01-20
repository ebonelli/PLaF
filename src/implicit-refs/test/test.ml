open OUnit2
open Implicit_refs
open Ds
open Interp

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
                 (interp "(proc (x) { x+1 } 2)"))
]

let tests_rec = [
  "letrec"  >:: (fun _ -> assert_equal (Ok (NumVal 120))
                 (interp "letrec f(x) = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"))
]

let tests_irefs = [
  "hidden state"  >:: (fun _ -> assert_equal (Ok (NumVal (-1)))
                 (interp "let g = 
      let counter = 0 
      in proc(d) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (g 11)-(g 22)"));

  "irefs2"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp " let a = 3
in let f = proc(x) { proc(y) { set x = x-y }}
in begin
((f a) 2);
a
end"));

 
]

let _ = run_test_tt_main ("suite" >::: (tests_let @ tests_proc
                                        @ tests_rec @ tests_irefs))
