(* ****** ****** *)

use "./../MySolution/assign00-01.sml";

(* ****** ****** *)

use "./../assign00-lib.sml";

(* ****** ****** *)

(*
fun
fact(x: int): int =
if x > 0 then x * fact(x-1) else 1
*)
val
rec
fact = fn(x: int) =>
if x > 0 then x * fact(x-1) else 1

(* ****** ****** *)

fun
myloop(x: int): int =
(fact(x); myloop(x+1)) handle Overflow => x

(* ****** ****** *)

val myans = myloop(0)

(* ****** ****** *)

(* end of [CS320-2023-Spring-assign00-01.sml] *)


(* ****** ****** *)

local
exception Error
in
(* ****** ****** *)
(*
// HX-2023-01-20:
// Note that '13' may need to be
// changed to another value.
*)
(* ****** ****** *)
val () =
if
(myans <> 13)
andalso
(myans <> 21)
then raise Error else ()
(* ****** ****** *)
val () = print("Assign00-01-test passed!\n")
(* ****** ****** *)
end (* end-of-local *)

(* ****** ****** *)

(* end of [CS320-2023-Spring-assign00-01-test.sml] *)
