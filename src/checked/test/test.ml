open OUnit2
open Parser_plaf.Ast 
open Checked.ReM
open Checked.Ds
open Checked.Interp
open Checked.Checker
    
(* A few test cases *)
let _tests_interp = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "22"));
  "add"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "11+11"));
  "adds" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "(10+1)+(5+6)"));
  "let"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x=22 in x"));
  "lets" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x = 0 in let x = 22 in x"));
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "(proc (x:int) { x+1 } 2)"))
]

let _tests_rec = [
  "rec1"  >:: (fun _ -> assert_equal (Ok (NumVal 120))
                 (interp "letrec f(x:int):int = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"));

  "rec2"  >:: (fun _ -> assert_equal (Ok IntType)
                 (chk "letrec f(x:int):int = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"));

  "rec3"  >:: (fun _ -> assert_equal (Ok (FuncType (IntType, IntType)))
                 (chk "letrec f(x:int):int = if zero?(x) then 1 else x*(f (x-1))
in f"));
  
]

let _tests_erefs = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal (-1)))
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


let string_of_texpr_result evr =
  match evr with
  | Ok ev -> string_of_texpr ev
  | Error s -> "Error "^s

let tests_checked_procs = [
    (* procs *)
    "functype1 " >::
        (fun _ -> assert_equal
            (Ok (FuncType (IntType, IntType)))
            (chk "proc (x:int) { x+1}"));

    "functype2 " >::
        (fun _ -> assert_equal
            (Ok (FuncType (IntType, FuncType(IntType,IntType))))
            (chk "proc (x:int) { proc(y:int) { x+y}}"));

  "functype3" >::
      (fun _ ->
       assert_equal ~cmp:(fun x y
                           -> match x,y with Error _,Error _ -> true |
                             _,_ -> false)
         ~printer:string_of_texpr_result
         (Error "Type mismatch")
         (chk "let f=proc (x:int) { x+1} in (f zero?(0))"))
]

let _tests_checked_pairs = [
    (* pair *)
    "pair1 " >::
        (fun _ -> assert_equal
            (Ok (PairType (IntType, IntType)))
            (chk "pair(3, 4)"));

    "pair2 " >::
        (fun _ -> assert_equal
            (Ok (PairType ((PairType (IntType, IntType)), IntType)))
            (chk "pair(pair(3, 4), 5)"));

    "pair3 " >::
        (fun _ -> assert_equal
            (Ok (PairType (BoolType, IntType)))
            (chk "pair(zero?(0), 3)"));

    "pair_proc " >::
        (fun _ -> assert_equal
            (Ok (PairType (FuncType (IntType, IntType), IntType)))
            (chk "pair(proc (x:int) { x - 1 }, 4)"));

    "unpair1 "  >::
        (fun _ -> assert_equal
            (Ok IntType)
            (chk "unpair (a, b) = pair(1, 2) in a + b"));

    "unpair_proc " >::
        (fun _ -> assert_equal
            (Ok (FuncType ((PairType (IntType, BoolType)), (PairType (BoolType, IntType)))))
            (chk "proc (z:int*bool) { unpair(x, y) = z in pair(y, x) }"));

    "pair_bool_int " >::
        (fun _ -> assert_equal
            (Ok (PairType (BoolType, IntType)))
            (chk "let f = proc (z:int*bool) { unpair (x,y)=z in pair(y,x) } in (f pair (1, zero?(0)))"));

    (* list *)
    (* tree *)


]

let _ = run_test_tt_main ("suite" >::: (tests_checked_procs))
