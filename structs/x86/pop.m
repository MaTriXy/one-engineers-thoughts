opcode 8F /0
  instruction pop r/m16
  encoding M
  bit64 Valid
  legacy Valid
  description Pop top of stack into m16; increment stack pointer.

opcode 8F /0
  instruction pop r/m32
  encoding M
  bit64 N.E.
  legacy Valid
  description Pop top of stack into m32; increment stack pointer.

opcode 8F /0
  instruction pop r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Pop top of stack into m64; increment stack pointer. Cannot encode 32-bit operand size.

opcode 58+ rw
  instruction pop r16
  encoding O
  bit64 Valid
  legacy Valid
  description Pop top of stack into r16; increment stack pointer.

opcode 58+ rd
  instruction pop r32
  encoding O
  bit64 N.E.
  legacy Valid
  description Pop top of stack into r32; increment stack pointer.

opcode 58+ rd
  instruction pop r64
  encoding O
  bit64 Valid
  legacy N.E.
  description Pop top of stack into r64; increment stack pointer. Cannot encode 32-bit operand size.

opcode 1F
  instruction pop DS
  encoding NP
  bit64 Invalid
  legacy Valid
  description Pop top of stack into DS; increment stack pointer.

opcode 07
  instruction pop ES
  encoding NP
  bit64 Invalid
  legacy Valid
  description Pop top of stack into ES; increment stack pointer.

opcode 17
  instruction pop SS
  encoding NP
  bit64 Invalid
  legacy Valid
  description Pop top of stack into SS; increment stack pointer.

opcode 0F A1
  instruction pop FS
  encoding NP
  bit64 Valid
  legacy Valid
  description Pop top of stack into FS; increment stack pointer by 16 bits.

opcode 0F A1
  instruction pop FS
  encoding NP
  bit64 N.E.
  legacy Valid
  description Pop top of stack into FS; increment stack pointer by 32 bits.

opcode 0F A1
  instruction pop FS
  encoding NP
  bit64 Valid
  legacy N.E.
  description Pop top of stack into FS; increment stack pointer by 64 bits.

opcode 0F A9
  instruction pop GS
  encoding NP
  bit64 Valid
  legacy Valid
  description Pop top of stack into GS; increment stack pointer by 16 bits.

opcode 0F A9
  instruction pop GS
  encoding NP
  bit64 N.E.
  legacy Valid
  description Pop top of stack into GS; increment stack pointer by 32 bits.

opcode 0F A9
  instruction pop GS
  encoding NP
  bit64 Valid
  legacy N.E.
  description Pop top of stack into GS; increment stack pointer by 64 bits.

---

M ModRM:r/m (w) NA NA NA
O opcode + rd (w) NA NA NA
NP NA NA NA NA
