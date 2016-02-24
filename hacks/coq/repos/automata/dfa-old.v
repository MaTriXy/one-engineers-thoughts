
(*
 * Imports from ssreflect.
 *)

Require Import ssreflect.
Require Import ssrfun.
Require Import ssrbool.
Require Import eqtype.
Require Import ssrnat.
Require Import seq.
Require Import choice.
Require Import fintype.

(*
 * DFA.
 *)

Section DFA.

Variable character: finType.
Definition sequence := seq.
Definition word := sequence character.

(*
 * DFA type.
 *)

Record dfa:Type := constructor {
  state:> finType;
  start: state;
  final: pred state;
  step: state -> character -> state
}.

SearchAbout dfa.

Variable A: dfa.

Fixpoint run' (x: A) (w: word) : sequence A :=
match w with
  | [::] => [::]
  | a::w => (step A x a) ::run' (step A x a) w
end.

About run'.
About step.

Definition run := [fun w => run' (start A) w].

About run.
Locate "[".
About simpl_fun.
About SimplFun.

(*
 * Try to use a dfa to accept a word.
 *
 * - x: set of all possible dfa
 * - w: a specific word
 *
 * steps:
 * - if the word is empty, then end
 * - otherwise, step forward and recurse
 *)

Fixpoint accept (x:A) (w:word) :=
match w with
  | [::] => final A x
  | a::w => accept (step A x a) w
end.

Lemma dfa_accept_cons x a w:
  a::w \in dfa_accept x = (w \in dfa_accept (dfa_step A x a)).
Proof. by rewrite -simpl_predE /=. Qed.

End DFA.
