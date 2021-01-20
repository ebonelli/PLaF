open OUnit2
open Cbref.Ds
open Cbref.Interp

(* A few test cases *)
let tests_let = [
  "int"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "22"));
  "add"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "11+11"));
  "adds" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "(10+1)+(5+6)"));
  "let"  >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x=22 in x"));
  "lets" >:: (fun _ -> assert_equal (Ok (NumVal 22)) (interp "let x = 0 in let x = 22 in x"));
]


let tests_proc = [
  "app"  >:: (fun _ -> assert_equal (Ok (NumVal 3))
                 (interp "(proc (x) { x+1 } 2)"))
]

let tests_rec = [
  "fact"  >:: (fun _ -> assert_equal (Ok (NumVal 120))
                 (interp "letrec f(x) = if zero?(x) then 1 else x*(f (x-1))
in (f 5)"))
]

let tests_irefs = [
  "state"  >:: (fun _ -> assert_equal (Ok (NumVal (-1)))
                 (interp "let g = 
      let counter = 0 
      in proc(d) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (g 11)-(g 22)"))
]


let tests_cbr = [


  "cbr_swap"  >:: (fun _ -> assert_equal (Ok (NumVal 11))
                 (interp "
let swap = proc (x) {
proc (y) {
let temp = x
in begin
set x = y;
set y = temp
end
}
}
in let a = 33 in let b = 44
in begin
((swap a) b);
a-b
end"));

   "cbr2"  >:: (fun _ -> assert_equal (Ok (NumVal 1))
                 (interp "
let a = 3
in let f = proc(x) { proc(y) { set x = x-y }}
in begin
((f a) 2);
a
end"));


   "cbr3"  >:: (fun _ -> assert_equal (Ok (NumVal 4))
                 (interp "
let a = 3
in let p = proc(x) { set x = 4 }
in begin 
         (p a); 
         a 
       end"));
  

  
]
let _ = run_test_tt_main ("suite" >::: (tests_let @ tests_proc
                                        @ tests_rec @ tests_irefs @ tests_cbr))


