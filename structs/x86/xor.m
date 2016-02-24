34 ib XOR AL, imm8 I Valid Valid AL XOR imm8.
35 iw XOR AX, imm16 I Valid Valid AX XOR imm16.
35 id XOR EAX, imm32 I Valid Valid EAX XOR imm32.
REX.W + 35 id XOR RAX, imm32 I Valid N.E. RAX XOR imm32 (sign-extended).
80 /6 ib XOR r/m8, imm8 MI Valid Valid r/m8 XOR imm8.
REX + 80 /6 ib XOR r/m8*, imm8 MI Valid N.E. r/m8 XOR imm8.
81 /6 iw XOR r/m16, imm16 MI Valid Valid r/m16 XOR imm16.
81 /6 id XOR r/m32, imm32 MI Valid Valid r/m32 XOR imm32.
REX.W + 81 /6 id XOR r/m64, imm32 MI Valid N.E. r/m64 XOR imm32 (sign-extended).
83 /6 ib XOR r/m16, imm8 MI Valid Valid r/m16 XOR imm8 (sign-extended).
83 /6 ib XOR r/m32, imm8 MI Valid Valid r/m32 XOR imm8 (sign-extended).
REX.W + 83 /6 ib XOR r/m64, imm8 MI Valid N.E. r/m64 XOR imm8 (sign-extended).
30 /r XOR r/m8, r8 MR Valid Valid r/m8 XOR r8.
REX + 30 /r XOR r/m8*, r8* MR Valid N.E. r/m8 XOR r8.
31 /r XOR r/m16, r16 MR Valid Valid r/m16 XOR r16.
31 /r XOR r/m32, r32 MR Valid Valid r/m32 XOR r32.
REX.W + 31 /r XOR r/m64, r64 MR Valid N.E. r/m64 XOR r64.
32 /r XOR r8, r/m8 RM Valid Valid r8 XOR r/m8.
REX + 32 /r XOR r8*, r/m8* RM Valid N.E. r8 XOR r/m8.
33 /r XOR r16, r/m16 RM Valid Valid r16 XOR r/m16.
33 /r XOR r32, r/m32 RM Valid Valid r32 XOR r/m32.
REX.W + 33 /r XOR r64, r/m64 RM Valid N.E. r64 XOR r/m64.

I AL/AX/EAX/RAX imm8/16/32 NA NA
MI ModRM:r/m (r, w) imm8/16/32 NA NA
MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
RM ModRM:reg (r, w) ModRM:r/m (r) NA NA

operation
DEST ← DEST XOR SRC;

flags
  clear flag of
  clear flag cf
  set flag(af), undefined
The OF and CF flags are cleared; the SF, ZF, and PF flags are set according to the result. The state of the AF flag is undefined.

Protected Mode Exceptions
#GP(0) - If the destination operand points to a nonwritable segment. If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit. If the DS, ES, FS, or GS register contains a null segment selector.
#SS(0) - If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) - If a page fault occurs.
#AC(0) - If alignment checking is enabled and an unaligned memory reference is made while the current privilege level is 3.
Real-Address Mode Exceptions
#GP - If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS - If a memory operand effective address is outside the SS segment limit.
Virtual-8086 Mode Exceptions
#GP(0) - If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS(0) - If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) - If a page fault occurs.
#AC(0) - If alignment checking is enabled and an unaligned memory reference is made.
