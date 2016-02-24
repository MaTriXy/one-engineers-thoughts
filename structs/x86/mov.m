opcode 88 /r
  instruction mov r/m8, r8
  encoding MR
  bit64 Valid
  legacy Valid
  description Move r8 to r/m8.

opcode REX + 88 /r
  instruction mov r/m8***, r8***
  encoding MR
  bit64 Valid
  legacy N.E.
  description Move r8 to r/m8.

opcode 89 /r
  instruction mov r/m16, r16
  encoding MR
  bit64 Valid
  legacy Valid
  description Move r16 to r/m16.

opcode 89 /r
  instruction mov r/m32, r32
  encoding MR
  bit64 Valid
  legacy Valid
  description Move r32 to r/m32.

opcode REX.W + 89 /r
  instruction mov r/m64, r64
  encoding MR
  bit64 Valid
  legacy N.E.
  description Move r64 to r/m64.

opcode 8A /r
  instruction mov r8, r/m8
  encoding RM
  bit64 Valid
  legacy Valid
  description Move r/m8 to r8.

opcode REX + 8A /r
  instruction mov r8***, r/m8***
  encoding RM
  bit64 Valid
  legacy N.E.
  description Move r/m8 to r8.

opcode 8B /r
  instruction mov r16, r/m16
  encoding RM
  bit64 Valid
  legacy Valid
  description Move r/m16 to r16.

opcode 8B /r
  instruction mov r32, r/m32
  encoding RM
  bit64 Valid
  legacy Valid
  description Move r/m32 to r32.

opcode REX.W + 8B /r
  instruction mov r64, r/m64
  encoding RM
  bit64 Valid
  legacy N.E.
  description Move r/m64 to r64.

opcode 8C /r
  instruction mov r/m16, Sreg**
  encoding MR
  bit64 Valid
  legacy Valid
  description Move segment register to r/m16.

opcode REX.W + 8C /r
  instruction mov r/m64, Sreg**
  encoding MR
  bit64 Valid
  legacy Valid
  description Move zero extended 16-bit segment register to r/m64.

opcode 8E /r
  instruction mov Sreg, r/m16**
  encoding RM
  bit64 Valid
  legacy Valid
  description Move r/m16 to segment register.

opcode REX.W + 8E /r
  instruction mov Sreg, r/m64**
  encoding RM
  bit64 Valid
  legacy Valid
  description Move lower 16 bits of r/m64 to segment register.

opcode A0
  instruction mov AL, moffs8*
  encoding FD
  bit64 Valid
  legacy Valid
  description Move byte at (seg:offset) to AL.

opcode REX.W + A0
  instruction mov AL, moffs8*
  encoding FD
  bit64 Valid
  legacy N.E.
  description Move byte at (offset) to AL.

opcode A1
  instruction mov AX, moffs16*
  encoding FD
  bit64 Valid
  legacy Valid
  description Move word at (seg:offset) to AX.

opcode A1
  instruction mov EAX, moffs32*
  encoding FD
  bit64 Valid
  legacy Valid
  description Move doubleword at (seg:offset) to EAX.

opcode REX.W + A1
  instruction mov RAX, moffs64*
  encoding FD
  bit64 Valid
  legacy N.E.
  description Move quadword at (offset) to RAX.

opcode A2
  instruction mov moffs8, AL
  encoding TD
  bit64 Valid
  legacy Valid
  description Move AL to (seg:offset).

opcode REX.W + A2
  instruction mov moffs8***, AL
  encoding TD
  bit64 Valid
  legacy N.E.
  description Move AL to (offset).

opcode A3
  instruction mov moffs16*, AX
  encoding TD
  bit64 Valid
  legacy Valid
  description Move AX to (seg:offset).

opcode A3
  instruction mov moffs32*, EAX
  encoding TD
  bit64 Valid
  legacy Valid
  description Move EAX to (seg:offset).

opcode REX.W + A3
  instruction mov moffs64*, RAX
  encoding TD
  bit64 Valid
  legacy N.E.
  description Move RAX to (offset).

opcode B0+ rb ib
  instruction mov r8, imm8
  encoding OI
  bit64 Valid
  legacy Valid
  description Move imm8 to r8.

opcode REX + B0+ rb ib
  instruction mov r8***, imm8
  encoding OI
  bit64 Valid
  legacy N.E.
  description Move imm8 to r8.

opcode B8+ rw iw
  instruction mov r16, imm16
  encoding OI
  bit64 Valid
  legacy Valid
  description Move imm16 to r16.

opcode B8+ rd id
  instruction mov r32, imm32
  encoding OI
  bit64 Valid
  legacy Valid
  description Move imm32 to r32.

opcode REX.W + B8+ rd io
  instruction mov r64, imm64
  encoding OI
  bit64 Valid
  legacy N.E.
  description Move imm64 to r64.

opcode C6 /0 ib
  instruction mov r/m8, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description Move imm8 to r/m8.

opcode REX + C6 /0 ib
  instruction mov r/m8***, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description Move imm8 to r/m8.

opcode C7 /0 iw
  instruction mov r/m16, imm16
  encoding MI
  bit64 Valid
  legacy Valid
  description Move imm16 to r/m16.

opcode C7 /0 id
  instruction mov r/m32, imm32
  encoding MI
  bit64 Valid
  legacy Valid
  description Move imm32 to r/m32.

opcode REX.W + C7 /0 io
  instruction mov r/m64, imm32
  encoding MI
  bit64 Valid
  legacy N.E.
  description Move imm32 sign extended to 64-bits to r/m64.

---

MR ModRM:r/m (w) ModRM:reg (r) NA NA
RM ModRM:reg (w) ModRM:r/m (r) NA NA
FD AL/AX/EAX/RAX Moffs NA NA
TD Moffs (w) AL/AX/EAX/RAX NA NA
OI opcode + rd (w) imm8/16/32/64 NA NA
MI ModRM:r/m (w) imm8/16/32/64 NA NA
