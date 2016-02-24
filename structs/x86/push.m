opcode FF /6
  instruction push r/m16
  encoding M
  bit64 Valid
  legacy Valid
  description Push r/m16.

opcode FF /6
  instruction push r/m32
  encoding M
  bit64 N.E.
  legacy Valid
  description Push r/m32.

opcode FF /6
  instruction push r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Push r/m64.

opcode 50+rw
  instruction push r16
  encoding O
  bit64 Valid
  legacy Valid
  description Push r16.

opcode 50+rd
  instruction push r32
  encoding O
  bit64 N.E.
  legacy Valid
  description Push r32.

opcode 50+rd
  instruction push r64
  encoding O
  bit64 Valid
  legacy N.E.
  description Push r64.

opcode 6A ib
  instruction push imm8
  encoding I
  bit64 Valid
  legacy Valid
  description Push imm8.

opcode 68 iw
  instruction push imm16
  encoding I
  bit64 Valid
  legacy Valid
  description Push imm16.

opcode 68 id
  instruction push imm32
  encoding I
  bit64 Valid
  legacy Valid
  description Push imm32.

opcode 0E
  instruction push CS
  encoding NP
  bit64 Invalid
  legacy Valid
  description Push CS.

opcode 16
  instruction push SS
  encoding NP
  bit64 Invalid
  legacy Valid
  description Push SS.

opcode 1E
  instruction push DS
  encoding NP
  bit64 Invalid
  legacy Valid
  description Push DS.

opcode 06
  instruction push ES
  encoding NP
  bit64 Invalid
  legacy Valid
  description Push ES.

opcode 0F A0
  instruction push FS
  encoding NP
  bit64 Valid
  legacy Valid
  description Push FS.

opcode 0F A8
  instruction push GS
  encoding NP
  bit64 Valid
  legacy Valid
  description Push GS.

---

M ModRM:r/m (r) NA NA NA
O opcode + rd (r) NA NA NA
I imm8/16/32 NA NA NA
NP NA NA NA NA
