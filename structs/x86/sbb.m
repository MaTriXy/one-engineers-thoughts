1C ib SBB AL, imm8 I Valid Valid Subtract with borrow imm8 from AL.
1D iw SBB AX, imm16 I Valid Valid Subtract with borrow imm16 from AX.
1D id SBB EAX, imm32 I Valid Valid Subtract with borrow imm32 from EAX.
REX.W + 1D id SBB RAX, imm32 I Valid N.E. Subtract with borrow sign-extended imm.32 to 64-bits from RAX.
80 /3 ib SBB r/m8, imm8 MI Valid Valid Subtract with borrow imm8 from r/m8.
REX + 80 /3 ib SBB r/m8*, imm8 MI Valid N.E. Subtract with borrow imm8 from r/m8.
81 /3 iw SBB r/m16, imm16 MI Valid Valid Subtract with borrow imm16 from r/m16.
81 /3 id SBB r/m32, imm32 MI Valid Valid Subtract with borrow imm32 from r/m32.
REX.W + 81 /3 id SBB r/m64, imm32 MI Valid N.E. Subtract with borrow sign-extended imm32 to 64-bits from r/m64.
83 /3 ib SBB r/m16, imm8 MI Valid Valid Subtract with borrow sign-extended imm8 from r/m16.
83 /3 ib SBB r/m32, imm8 MI Valid Valid Subtract with borrow sign-extended imm8 from r/m32.
REX.W + 83 /3 ib SBB r/m64, imm8 MI Valid N.E. Subtract with borrow sign-extended imm8 from r/m64.
18 /r SBB r/m8, r8 MR Valid Valid Subtract with borrow r8 from r/m8.
REX + 18 /r SBB r/m8*, r8 MR Valid N.E. Subtract with borrow r8 from r/m8.
19 /r SBB r/m16, r16 MR Valid Valid Subtract with borrow r16 from r/m16.
19 /r SBB r/m32, r32 MR Valid Valid Subtract with borrow r32 from r/m32.
REX.W + 19 /r SBB r/m64, r64 MR Valid N.E. Subtract with borrow r64 from r/m64.
1A /r SBB r8, r/m8 RM Valid Valid Subtract with borrow r/m8 from r8.
REX + 1A /r SBB r8*, r/m8* RM Valid N.E. Subtract with borrow r/m8 from r8.
1B /r SBB r16, r/m16 RM Valid Valid Subtract with borrow r/m16 from r16.
1B /r SBB r32, r/m32 RM Valid Valid Subtract with borrow r/m32 from r32.
REX.W + 1B /r SBB r64, r/m64 RM Valid N.E. Subtract with borrow r/m64 from r64.

# * In 64-bit mode, r/m8 can not be encoded to access the following byte registers if a REX prefix is used: AH, BH, CH, DH.

I AL/AX/EAX/RAX imm8/16/32 NA NA
MI ModRM:r/m (w) imm8/16/32 NA NA
MR ModRM:r/m (w) ModRM:reg (r) NA NA
RM ModRM:reg (w) ModRM:r/m (r) NA NA

operation
  DEST ← (DEST – (SRC + CF));

Flags Affected
The OF, SF, ZF, AF, PF, and CF flags are set according to the result.

Protected Mode Exceptions
#GP(0) If the destination is located in a non-writable segment.
If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register contains a NULL segment selector.
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
