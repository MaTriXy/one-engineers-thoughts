opcode FE /0
  instruction inc r/m8
  encoding M
  bit64 Valid
  legacy Valid
  description Increment r/m byte by 1.

opcode REX + FE /0
  instruction inc r/m8*
  encoding M
  bit64 Valid
  legacy N.E.
  description Increment r/m byte by 1.

opcode FF /0
  instruction inc r/m16
  encoding M
  bit64 Valid
  legacy Valid
  description Increment r/m word by 1.

opcode FF /0
  instruction inc r/m32
  encoding M
  bit64 Valid
  legacy Valid
  description Increment r/m doubleword by 1.

opcode REX.W + FF /0
  instruction inc r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Increment r/m quadword by 1.

opcode 40+ rw**
  instruction inc r16
  encoding O
  bit64 N.E.
  legacy Valid
  description Increment word register by 1.

opcode 40+ rd
  instruction inc r32
  encoding O
  bit64 N.E.
  legacy Valid
  description Increment doubleword register by 1.


---

M ModRM:r/m (r, w) NA NA NA
O opcode + rd (r, w) NA NA NA
