
Module Logic.

  Inductive True:Prop := x:True.
  Inductive False:Prop :=.

  Definition not (A:Prop) := A -> False.

  Notation "~x" := (not x) : type_scope.

End Logic.
