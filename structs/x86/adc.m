14 ib ADC AL, imm8 I Valid Valid Add with carry imm8 to AL.
15 iw ADC AX, imm16 I Valid Valid Add with carry imm16 to AX.
15 id ADC EAX, imm32 I Valid Valid Add with carry imm32 to EAX.
REX.W + 15 id ADC RAX, imm32 I Valid N.E. Add with carry imm32 sign extended to 64- bits to RAX.
80 /2 ib ADC r/m8, imm8 MI Valid Valid Add with carry imm8 to r/m8.
REX + 80 /2 ib ADC r/m8* , imm8 MI Valid N.E. Add with carry imm8 to r/m8.
81 /2 iw ADC r/m16, imm16 MI Valid Valid Add with carry imm16 to r/m16.
81 /2 id ADC r/m32, imm32 MI Valid Valid Add with CF imm32 to r/m32.
REX.W + 81 /2 id ADC r/m64, imm32 MI Valid N.E. Add with CF imm32 sign extended to 64-bits to r/m64.
83 /2 ib ADC r/m16, imm8 MI Valid Valid Add with CF sign-extended imm8 to r/m16.
83 /2 ib ADC r/m32, imm8 MI Valid Valid Add with CF sign-extended imm8 into r/m32.
REX.W + 83 /2 ib ADC r/m64, imm8 MI Valid N.E. Add with CF sign-extended imm8 into r/m64.
10 /r ADC r/m8, r8 MR Valid Valid Add with carry byte register to r/m8.
REX + 10 /r ADC r/m8*, r8* MR Valid N.E. Add with carry byte register to r/m64.
11 /r ADC r/m16, r16 MR Valid Valid Add with carry r16 to r/m16.
11 /r ADC r/m32, r32 MR Valid Valid Add with CF r32 to r/m32.
REX.W + 11 /r ADC r/m64, r64 MR Valid N.E. Add with CF r64 to r/m64.
12 /r ADC r8, r/m8 RM Valid Valid Add with carry r/m8 to byte register.
REX + 12 /r ADC r8*, r/m8* RM Valid N.E. Add with carry r/m64 to byte register.
13 /r ADC r16, r/m16 RM Valid Valid Add with carry r/m16 to r16.
13 /r ADC r32, r/m32 RM Valid Valid Add with CF r/m32 to r32.
REX.W + 13 /r ADC r64, r/m64 RM Valid N.E. Add with CF r/m64 to r64.

# *In 64-bit mode, r/m8 can not be encoded to access the following byte registers if a REX prefix is used: AH, BH, CH, DH.

RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
MI ModRM:r/m (r, w) imm8 NA NA
I AL/AX/EAX/RAX imm8 NA NA

operation
  DEST ← DEST + SRC + CF;

flags
  The OF, SF, ZF, AF, CF, and PF flags are set according to the result.

Protected Mode Exceptions
#GP(0) If the destination is located in a non-writable segment.
If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register is used to access memory and it contains a NULL segment
selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used but the destination is not a memory operand.
Real-Address Mode Exceptions
#GP If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS If a memory operand effective address is outside the SS segment limit.
#UD If the LOCK prefix is used but the destination is not a memory operand.
Virtual-8086 Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made.
#UD If the LOCK prefix is used but the destination is not a memory operand.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used but the destination is not a memory operand.
