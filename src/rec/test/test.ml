open OUnit2
open Rec.Interp
open Rec.Ds

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

let _ = run_test_tt_main ("suite" >::: (tests_let @ tests_proc @ tests_rec))
