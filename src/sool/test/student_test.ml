open OUnit2
open Sool.Ds
open Test_lib

(* run tests with
   * dune runtest
 * or
   * make test
*)

(* Feel free to add your own tests below.
 * Read the code in test_lib.ml to understand the CS496 unit test suite.
 *
 * Note that a unit_test constructor takes:
   * a test case name
   * test case code
   * result
   * point value (not relevant for student defined tests, pick any number)
 *
 * NOTE: our test suite does not expect specific error messages for cases that
 * should return an Error result. You may use the value generic_err for those.
*)

(* arithmetic tests provided for you as an example *)
let arith : unit_test list = [
  Interp ("positive-const", "11", Ok (NumVal 11), 0);
  Interp ("negative-const", "(-11)", Ok (NumVal (-11)), 0);
  Interp ("simple-arith-1", "44-33", Ok (NumVal 11), 0);
  Interp ("divide-by-zero", "3/0", generic_err, 0);
]

(* add lists of tests to the suite here *)
let _ = run_test_tt_main ("student test suite" >::: (make_suite [
  arith;
]))
