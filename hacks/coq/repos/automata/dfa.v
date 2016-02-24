
(*
 * Imports.
 *)

Require Import Coq.Lists.ListSet.
Require Import Coq.Sets.Ensembles.

(*Module Type Alphabet .*)
Parameter symbol : Set.
Parameter symbol_eq_dec : forall s s’, {s=s’}+{s<>s’}.
Parameter Sigma : list symbol.
Parameter allSymbolsInSigma: forall s, In s Sigma.
Parameter SigmaIsNonEmpty : Sigma <> nil.

Definition word := list symbol.
Inductive Sigma_Star : Ensemble word :=
  | nil_in_star : In Sigma_Star nil
  | add_in_star : forall w s, Lists.In s Sigma -> In Sigma_Star w -> In (Sigma_Star) (s::w).

Theorem isValidWord : forall w, In Sigma_Star w.

(*
 * Σ is an alphabet iff it's a finite nonempty set of symbols.
 *)

Definition alphabet := Full_set.
