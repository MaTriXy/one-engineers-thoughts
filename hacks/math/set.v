
(*
 * Define module `Set`.
 *)

Module Type _Set.
  Parameter U : Type.

  (*
   * A set.
   *
   * https://www.ps.uni-saarland.de/Publications/documents/Kaiser_2012_Formal.pdf
   *)

  Parameter t : Type.

  (*
   * The "in" relation.
   *
   * Construct a proposition such that
   * `In x X` is understood to state
   * "the set x is an element in (or a member of the set X)"
   *)

  Parameter In : t -> t -> Prop.

  (*
   * Set extensionality axiom.
   *)

  Axiom set_extensionality: ∀ X Y : set, X ⊆ Y → Y ⊆ X → X = Y.

End _Set.
