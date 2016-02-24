
Module Number.

(* even *)

Fixpoint even (n:nat) : Boolean.boolean :=
  match n with
  | O => Boolean.true
  | S O => Boolean.false
  | S (S x) => even x
  end.

(* odd *)

Definition odd (n:nat) : Boolean.boolean := Boolean.negate (even n).

Example test_odd_one: (odd (S O)) = Boolean.true.
Proof. reflexivity. Qed.

(* add *)

Fixpoint plus (a:nat) (b:nat) : nat :=
  match a with
  | O => b
  | S x => S (plus x b)
  end.

Notation "x ?? y" := (plus x y)
                       (at level 50, left associativity)
                       : nat_scope.

(*Eval compute in ((2 ?? 3) ?? 1).*)
End Number.

Example test_odd_one: (Number.odd (S O)) = Boolean.true.
Proof. reflexivity. Qed.
