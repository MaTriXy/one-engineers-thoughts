
(*
 * Integer registers.
 *)

Inductive register_integer:Type :=
  | EAX: register_integer
  | EBX: register_integer
  | ECX: register_integer
  | EDX: register_integer
  | ESI: register_integer
  | EDI: register_integer
  | EBP: register_integer
  | ESP: register_integer.

(*
 * Floating-point registers, i.e. SSE2 registers.
 *)

Inductive register_float:Type :=
  | XMM0: register_float
  | XMM1: register_float
  | XMM2: register_float
  | XMM3: register_float
  | XMM4: register_float
  | XMM5: register_float
  | XMM6: register_float
  | XMM7: register_float.

(*
 * Proposition about register equality.
 *)

Lemma equality_register_integer:
  forall (x y: register_integer),
    sumbool (eq x y) (not (eq x y)).
Proof.
  decide equality.
Defined.

(*
 * Proposition about floating-point register equality.
 *)

Lemma equality_register_float:
  forall (x y: register_float),
    sumbool (eq x y) (not (eq x y)).
Proof.
  decide equality.
Defined.

(*
 * Bits of the flags register.
 *)

Inductive flag:Type :=
  | ZF
  | CF
  | PF
  | SF
  | OF.
