open OUnit2
open Main

let tests  = "test suite for the interpreter" >::: [

    (* assert_equal asserts that the two values are equal *)
    "declare and ignore"  >:: (fun _ -> assert_equal (Ds.NumVal 33)
                                  (interp "module m
 interface 
  [u : int]
 body 
  [u = 3]
33"));

    "take one value"    >:: (fun _ -> assert_equal (Ds.NumVal 3)
                                (interp "module m
 interface 
  [u : int]
 body 
  [u = 3]
from m take u"));


    "take one value"    >:: (fun _ -> assert_equal (Ds.NumVal 3)
                                (interp "module m 
 interface 
  [u : int]
 body 
  [u = 3 v = 4]
from m take u"));


    "typecheck body inclusion"    >:: (fun _ -> assert_equal (Ast.IntType)
                                (chk " 
    module m1
  interface
    [u : int]
  body
    [v = 2
     u = 33-v]
4"));

  "typecheck body inclusion 2"    >:: (fun _ -> assert_equal (Ast.IntType)
                                (chk " 
    module m1
  interface
    [u : int]
  body
    [v = 2
     u = 33-v]
from m1 take u"));
  

  "typecheck body inclusion 3"    >:: (fun _ -> assert_raises (Checker.Subtype_failure("m1"))
                                (fun () -> chk " 
    module m1 interface
[u : bool] 
body
[u = 33] 
4"));

   "typecheck body inclusion 4"    >:: (fun _ -> assert_raises (Checker.Subtype_failure("m1"))
                                (fun () -> chk " 
 module m1 interface
[u : int v : int]
body
[v = 33
u = 44] 
from m1 take u"));

     "typecheck body inclusion 5"    >:: (fun _ -> assert_equal (Ast.IntType)
                                (chk " 
 module m1 interface
[u : int] body
[u = 44]
module m2 interface
[v : int] body
[v = (from m1 take u)-11] 
from m2 take v"))

  ]



let _ = run_test_tt_main tests
