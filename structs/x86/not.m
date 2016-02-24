opcode F6 /2
  instruction not r/m8
  encoding M
  bit64 Valid
  legacy Valid
  description Reverse each bit of r/m8.

opcode REX + F6 /2
  instruction not r/m8*
  encoding M
  bit64 Valid
  legacy N.E.
  description Reverse each bit of r/m8.

opcode F7 /2
  instruction not r/m16
  encoding M
  bit64 Valid
  legacy Valid
  description Reverse each bit of r/m16.

opcode F7 /2
  instruction not r/m32
  encoding M
  bit64 Valid
  legacy Valid
  description Reverse each bit of r/m32.

opcode REX.W + F7 /2
  instruction not r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Reverse each bit of r/m64.

---

M ModRM:r/m (r, w) NA NA NA
