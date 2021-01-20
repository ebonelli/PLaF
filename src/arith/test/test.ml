open OUnit2
open Arith.Ds
open Arith.Interp

(* A few test cases *)
let tests = [
  "int"  >:: (fun _ -> assert_equal (Ok 22) (interp "22"));
  "add"  >:: (fun _ -> assert_equal (Ok 22) (interp "11+11"));
  "adds" >:: (fun _ -> assert_equal (Ok 22) (interp "(10+1)+(5+6)"))
]

let _ = run_test_tt_main ("suite" >::: tests)
