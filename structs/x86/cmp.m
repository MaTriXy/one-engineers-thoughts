opcode 3C ib
  instruction cmp AL, imm8
  encoding I
  bit64 Valid
  legacy Valid
  description Compare imm8 with AL.

opcode 3D iw
  instruction cmp AX, imm16
  encoding I
  bit64 Valid
  legacy Valid
  description Compare imm16 with AX.

opcode 3D id
  instruction cmp EAX, imm32
  encoding I
  bit64 Valid
  legacy Valid
  description Compare imm32 with EAX.

opcode REX.W + 3D id
  instruction cmp RAX, imm32
  encoding I
  bit64 Valid
  legacy N.E.
  description Compare imm32 sign-extended to 64-bits with RAX.

opcode 80 /7 ib
  instruction cmp r/m8, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description Compare imm8 with r/m8.

opcode REX + 80 /7 ib
  instruction cmp r/m8*, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description Compare imm8 with r/m8.

opcode 81 /7 iw
  instruction cmp r/m16, imm16
  encoding MI
  bit64 Valid
  legacy Valid
  description Compare imm16 with r/m16.

opcode 81 /7 id
  instruction cmp r/m32, imm32
  encoding MI
  bit64 Valid
  legacy Valid
  description Compare imm32 with r/m32.

opcode REX.W + 81 /7 id
  instruction cmp r/m64, imm32
  encoding MI
  bit64 Valid
  legacy N.E.
  description Compare imm32 sign-extended to 64-bits with r/m64.

opcode 83 /7 ib
  instruction cmp r/m16, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description Compare imm8 with r/m16.

opcode 83 /7 ib
  instruction cmp r/m32, imm8
  encoding MI
  bit64 Valid
  legacy Valid
  description Compare imm8 with r/m32.

opcode REX.W + 83 /7 ib
  instruction cmp r/m64, imm8
  encoding MI
  bit64 Valid
  legacy N.E.
  description Compare imm8 with r/m64.

opcode 38 /r
  instruction cmp r/m8, r8
  encoding MR
  bit64 Valid
  legacy Valid
  description Compare r8 with r/m8.

opcode REX + 38 /r
  instruction cmp r/m8*, r8*
  encoding MR
  bit64 Valid
  legacy N.E.
  description Compare r8 with r/m8.

opcode 39 /r
  instruction cmp r/m16, r16
  encoding MR
  bit64 Valid
  legacy Valid
  description Compare r16 with r/m16.

opcode 39 /r
  instruction cmp r/m32, r32
  encoding MR
  bit64 Valid
  legacy Valid
  description Compare r32 with r/m32.

opcode REX.W + 39 /r
  instruction cmp r/m64, r64
  encoding MR
  bit64 Valid
  legacy N.E.
  description Compare r64 with r/m64.

opcode 3A /r
  instruction cmp r8, r/m8
  encoding RM
  bit64 Valid
  legacy Valid
  description Compare r/m8 with r8.

opcode REX + 3A /r
  instruction cmp r8*, r/m8*
  encoding RM
  bit64 Valid
  legacy N.E.
  description Compare r/m8 with r8.

opcode 3B /r
  instruction cmp r16, r/m16
  encoding RM
  bit64 Valid
  legacy Valid
  description Compare r/m16 with r16.

opcode 3B /r
  instruction cmp r32, r/m32
  encoding RM
  bit64 Valid
  legacy Valid
  description Compare r/m32 with r32.

opcode REX.W + 3B /r
  instruction cmp r64, r/m64
  encoding RM
  bit64 Valid
  legacy N.E.
  description Compare r/m64 with r64.


---

RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
MR ModRM:r/m (r, w) ModRM:reg (w) NA NA
MI ModRM:r/m (r, w) imm8 NA NA
I AL/AX/EAX/RAX imm8 NA NA

Operation
temp ← SRC1 − SignExtend(SRC2);
ModifyStatusFlags; (* Modify status flags in the same manner as the SUB instruction*)

Flags Affected
The CF, OF, SF, ZF, AF, and PF flags are set according to the result.

Protected Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register contains a NULL segment selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#GP If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS If a memory operand effective address is outside the SS segment limit.
Virtual-8086 Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used.
