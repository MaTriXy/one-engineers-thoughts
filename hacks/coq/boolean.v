
Require Import days.

(*
 * module boolean
 *)

Module Boolean.

  (*
   * type boolean
   *)

  Inductive boolean : Set :=
    | true : boolean
    | false : boolean.

  Ltac destruct_boolean :=
    intros;
    destruct_all boolean;
    simpl in *;
    trivial.
    (*try descriminate.*)

  (* makes it so you can do `if <bool> then ...`*)
  Add Printing If boolean.

  Delimit Scope boolean_scope with boolean.

  (*
   * true boolean
   *)

  Definition is_true (a:boolean) :=
    match a with
      | true => True
      | false => False
    end.

  (*
   * Boolean decidability.

  Lemma decidability_boolean : forall a b:boolean,
    {a = b} + {a <> b}.
    Admitted.
   *)

  (*
   * negate boolean
   *)

  Definition negate (x:boolean) : boolean :=
    match x with
      | true => false
      | false => true
    end.

  (* example true, negate(false) *)
  Example test_negate_false: (negate false) = true.
  Proof. reflexivity. Qed.
  Example test_negate_true: (negate true) = false.
  Proof. reflexivity. Qed.

  (*
   * and boolean
   *)

  Definition and (a b:boolean) : boolean :=
    match a with
      | true => b
      | false => false
    end.

  (* complete truth table for `and` *)
  Example test_and_true_true: (and true true) = true.
  Proof. reflexivity. Qed.
  Example test_and_true_false: (and true false) = false.
  Proof. reflexivity. Qed.
  Example test_and_false_true: (and false true) = false.
  Proof. reflexivity. Qed.
  Example test_and_false_false: (and false false) = false.
  Proof. reflexivity. Qed.

  (*
   * or boolean
   *)

  Definition or (a b:boolean) : boolean :=
    match a with
      | true => true
      | false => b
    end.

  (* complete truth table for `or` *)
  Example test_or_true_true: (or true true) = true.
  Proof. reflexivity. Qed.
  Example test_or_true_false: (or true false) = true.
  Proof. reflexivity. Qed.
  Example test_or_false_true: (or false true) = true.
  Proof. reflexivity. Qed.
  Example test_or_false_false: (or false false) = false.
  Proof. reflexivity. Qed.

  (*
   * implication boolean, boolean
   *)

  Definition implication (a b:boolean) : boolean := if a then b else true.

  (*
   * xor boolean, boolean
   *)

  Definition xor (a b:boolean) : boolean :=
    match a, b with
      | true, true => false
      | true, false => true
      | false, true => true
      | false, false => false
    end.

  (*
   * custom boolean notation
   *)

  Infix "||" := or : boolean_scope.
  Infix "&&" := and : boolean_scope.

  (*Lemma and_property : forall a b:boolean, and a b = true -> a = true /\ b = true.
  Hint Resolve and_property: boolean.*)

End Boolean.
