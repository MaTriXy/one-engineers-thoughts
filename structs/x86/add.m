opcode 04 ib
  instruction add AL, imm8
  encoding I
  bit64 true
  legacy true
  description Add imm8 to AL.

opcode 05 iw
  instruction add AX, imm16
  encoding I
  bit64 true
  legacy true
  description Add imm16 to AX.

opcode 05 id
  instruction add EAX, imm32
  encoding I
  bit64 true
  legacy true
  description Add imm32 to EAX.

opcode REX.W + 05 id
  instruction add RAX, imm32
  encoding I
  bit64 true
  legacy N.E.
  description Add imm32 sign-extended to 64-bits to RAX.

opcode 80 /0 ib
  instruction add r/m8, imm8
  encoding MI
  bit64 true
  legacy true
  description Add imm8 to r/m8.

opcode REX + 80 /0 ib
  instruction add r/m8*, imm8
  encoding MI
  bit64 true
  legacy N.E.
  description Add sign-extended imm8 to r/m64.

opcode 81 /0 iw
  instruction add r/m16, imm16
  encoding MI
  bit64 true
  legacy true
  description Add imm16 to r/m16.

opcode 81 /0 id
  instruction add r/m32, imm32
  encoding MI
  bit64 true
  legacy true
  description Add imm32 to r/m32.

opcode REX.W + 81 /0 id
  instruction add r/m64, imm32
  encoding MI
  bit64 true
  legacy N.E.
  description Add imm32 sign-extended to 64-bits to r/m64.

opcode 83 /0 ib
  instruction add r/m16, imm8
  encoding MI
  bit64 true
  legacy true
  description Add sign-extended imm8 to r/m16.

opcode 83 /0 ib
  instruction add r/m32, imm8
  encoding MI
  bit64 true
  legacy true
  description Add sign-extended imm8 to r/m32.

opcode REX.W + 83 /0 ib
  instruction add r/m64, imm8
  encoding MI
  bit64 true
  legacy N.E.
  description Add sign-extended imm8 to r/m64.

opcode 00 /r
  instruction add r/m8, r8
  encoding MR
  bit64 true
  legacy true
  description Add r8 to r/m8.

opcode REX + 00 /r
  instruction add r/m8*, r8*
  encoding MR
  bit64 true
  legacy N.E.
  description Add r8 to r/m8.

opcode 01 /r
  instruction add r/m16, r16
  encoding MR
  bit64 true
  legacy true
  description Add r16 to r/m16.

opcode 01 /r
  instruction add r/m32, r32
  encoding MR
  bit64 true
  legacy true
  description Add r32 to r/m32.

opcode REX.W + 01 /r
  instruction add r/m64, r64
  encoding MR
  bit64 true
  legacy N.E.
  description Add r64 to r/m64.

opcode 02 /r
  instruction add r8, r/m8
  encoding RM
  bit64 true
  legacy true
  description Add r/m8 to r8.

opcode REX + 02 /r
  instruction add r8*, r/m8*
  encoding RM
  bit64 true
  legacy N.E.
  description Add r/m8 to r8.

opcode 03 /r
  instruction add r16, r/m16
  encoding RM
  bit64 true
  legacy true
  description Add r/m16 to r16.

opcode 03 /r
  instruction add r32, r/m32
  encoding RM
  bit64 true
  legacy true
  description Add r/m32 to r32.

opcode REX.W + 03 /r
  instruction add r64, r/m64
  encoding RM
  bit64 true
  legacy N.E.
  description Add r/m64 to r64.
