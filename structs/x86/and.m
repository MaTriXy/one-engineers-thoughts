opcode 24 ib
  instruction and AL, imm8
  encoding I
  bit64 Valid
  legacy Valid
  description AL AND imm8.

opcode 25 iw
  instruction and AX, imm16
  encoding I
  bit64 Valid
  legacy Valid
  description AX AND imm16.

opcode 25 id
  instruction and EAX, imm32
  encoding I
  bit64 Valid
  legacy Valid
  description EAX AND imm32.

opcode REX.W + 25 id
  instruction and RAX, imm32
  encoding I
  bit64 Valid
  legacy N.E.
  description RAX AND imm32 sign-extended to 64-bits.

opcode 80 /4 ib
  instruction and r/m8, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description r/m8 AND imm8.

opcode REX + 80 /4 ib
  instruction and r/m8*, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description r/m8 AND imm8.

opcode 81 /4 iw
  instruction and r/m16, imm16
  encoding MI
  bit64 Valid
  legacy Valid
  description r/m16 AND imm16.

opcode 81 /4 id
  instruction and r/m32, imm32
  encoding MI
  bit64 Valid
  legacy Valid
  description r/m32 AND imm32.

opcode REX.W + 81 /4 id
  instruction and r/m64, imm32
  encoding MI
  bit64 Valid
  legacy N.E.
  description r/m64 AND imm32 sign extended to 64-bits.

opcode 83 /4 ib
  instruction and r/m16, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description r/m16 AND imm8 (sign-extended).

opcode 83 /4 ib
  instruction and r/m32, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description r/m32 AND imm8 (sign-extended).

opcode REX.W + 83 /4 ib
  instruction and r/m64, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description r/m64 AND imm8 (sign-extended).

opcode 20 /r
  instruction and r/m8, r8
  encoding MR
  bit64 Valid
  legacy Valid
  description r/m8 AND r8.

opcode REX + 20 /r
  instruction and r/m8*, r8*
  encoding MR
  bit64 Valid
  legacy N.E.
  description r/m64 AND r8 (sign-extended).

opcode 21 /r
  instruction and r/m16, r16
  encoding MR
  bit64 Valid
  legacy Valid
  description r/m16 AND r16.

opcode 21 /r
  instruction and r/m32, r32
  encoding MR
  bit64 Valid
  legacy Valid
  description r/m32 AND r32.

opcode REX.W + 21 /r
  instruction and r/m64, r64
  encoding MR
  bit64 Valid
  legacy N.E.
  description r/m64 AND r32.

opcode 22 /r
  instruction and r8, r/m8
  encoding RM
  bit64 Valid
  legacy Valid
  description r8 AND r/m8.

opcode REX + 22 /r
  instruction and r8*, r/m8*
  encoding RM
  bit64 Valid
  legacy N.E.
  description r/m64 AND r8 (sign-extended).

opcode 23 /r
  instruction and r16, r/m16
  encoding RM
  bit64 Valid
  legacy Valid
  description r16 AND r/m16.

opcode 23 /r
  instruction and r32, r/m32
  encoding RM
  bit64 Valid
  legacy Valid
  description r32 AND r/m32.

opcode REX.W + 23 /r
  instruction and r64, r/m64
  encoding RM
  bit64 Valid
  legacy N.E.
  description r64 AND r/m64.

