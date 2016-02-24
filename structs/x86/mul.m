opcode F6 /4
  instruction mul r/m8
  encoding M
  bit64 Valid
  legacy Valid
  description Unsigned multiply (AX ← AL ∗ r/m8).

opcode REX + F6 /4
  instruction mul r/m8*
  encoding M
  bit64 Valid
  legacy N.E.
  description Unsigned multiply (AX ← AL ∗ r/m8).

opcode F7 /4
  instruction mul r/m16
  encoding M
  bit64 Valid
  legacy Valid
  description Unsigned multiply (DX:AX ← AX ∗ r/m16).

opcode F7 /4
  instruction mul r/m32
  encoding M
  bit64 Valid
  legacy Valid
  description Unsigned multiply (EDX:EAX ← EAX ∗ r/m32).

opcode REX.W + F7 /4
  instruction mul r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Unsigned multiply (RDX:RAX ← RAX ∗ r/m64).

---

M ModRM:r/m (r) NA NA NA
