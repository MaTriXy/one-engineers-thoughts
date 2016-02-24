
(*
 * type day
 *)

Inductive type_day : Type :=
  | monday : type_day
  | tuesday : type_day
  | wednesday : type_day
  | thursday : type_day
  | friday : type_day
  | saturday : type_day
  | sunday : type_day.

(*
 * next day, of week
 *)

Definition next_weekday (day:type_day) : type_day :=
  match day with
    | monday => tuesday
    | tuesday => wednesday
    | wednesday => thursday
    | thursday => friday
    | friday => monday
    | saturday => monday
    | sunday => monday
  end.

(*
 * next day
 *)

Definition next (day:type_day) : type_day :=
  match day with
    | monday => tuesday
    | tuesday => wednesday
    | wednesday => thursday
    | thursday => friday
    | friday => saturday
    | saturday => sunday
    | sunday => monday
  end.

(*
 * Print result to stdout.
 *)

(*Eval compute in (next_weekday friday).*)
(*= monday
: type_day*)
(*Eval compute in (next friday).*)
(*= saturday
: type_day*)

(*
 * Tests.

Example test_next_weekday:
  (next_weekday (next_weekday saturday)) = tuesday.
 *)
(* Error: There are pending proofs *)

(*
Example test_next_weekday:
  (next_weekday friday) = monday.
Proof.
  simpl.
Qed.
*)
(* Error: Attempt to save an incomplete proof *)

Example test_next_weekday:
  (next_weekday friday) = monday.
Proof.
  simpl.
  reflexivity.
Qed.
