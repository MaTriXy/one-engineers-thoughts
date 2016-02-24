opcode A8 ib
  instruction test AL, imm8
  encoding I
  bit64 Valid
  legacy Valid
  description AND imm8 with AL; set SF, ZF, PF according to result.

opcode A9 iw
  instruction test AX, imm16
  encoding I
  bit64 Valid
  legacy Valid
  description AND imm16 with AX; set SF, ZF, PF according to result.

opcode A9 id
  instruction test EAX, imm32
  encoding I
  bit64 Valid
  legacy Valid
  description AND imm32 with EAX; set SF, ZF, PF according to result.

opcode REX.W + A9 id
  instruction test RAX, imm32
  encoding I
  bit64 Valid
  legacy N.E.
  description AND imm32 sign-extended to 64-bits with RAX; set SF, ZF, PF according to result.

opcode F6 /0 ib
  instruction test r/m8, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description AND imm8 with r/m8; set SF, ZF, PF according to result.

opcode REX + F6 /0 ib
  instruction test r/m8*, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description AND imm8 with r/m8; set SF, ZF, PF according to result.

opcode F7 /0 iw
  instruction test r/m16, imm16
  encoding MI
  bit64 Valid
  legacy Valid
  description AND imm16 with r/m16; set SF, ZF, PF according to result.

opcode F7 /0 id
  instruction test r/m32, imm32
  encoding MI
  bit64 Valid
  legacy Valid
  description AND imm32 with r/m32; set SF, ZF, PF according to result.

opcode REX.W + F7 /0 id
  instruction test r/m64, imm32
  encoding MI
  bit64 Valid
  legacy N.E.
  description AND imm32 sign-extended to 64-bits with r/m64; set SF, ZF, PF according to result.

opcode 84 /r
  instruction test r/m8, r8
  encoding MR
  bit64 Valid
  legacy Valid
  description AND r8 with r/m8; set SF, ZF, PF according to result.

opcode REX + 84 /r
  instruction test r/m8*, r8*
  encoding MR
  bit64 Valid
  legacy N.E.
  description AND r8 with r/m8; set SF, ZF, PF according to result.

opcode 85 /r
  instruction test r/m16, r16
  encoding MR
  bit64 Valid
  legacy Valid
  description AND r16 with r/m16; set SF, ZF, PF according to result.

opcode 85 /r
  instruction test r/m32, r32
  encoding MR
  bit64 Valid
  legacy Valid
  description AND r32 with r/m32; set SF, ZF, PF according to result.

opcode REX.W + 85 /r
  instruction test r/m64, r64
  encoding MR
  bit64 Valid
  legacy N.E.
  description AND r64 with r/m64; set SF, ZF, PF according to result.

---

I AL/AX/EAX/RAX imm8/16/32 NA NA
MI ModRM:r/m (r) imm8/16/32 NA NA
MR ModRM:r/m (r) ModRM:reg (r) NA NA
