F6 /5 IMUL r/m8* M Valid Valid AX← AL ∗ r/m byte.
F7 /5 IMUL r/m16 M Valid Valid DX:AX ← AX ∗ r/m word.
F7 /5 IMUL r/m32 M Valid Valid EDX:EAX ← EAX ∗ r/m32.
REX.W + F7 /5 IMUL r/m64 M Valid N.E. RDX:RAX ← RAX ∗ r/m64.
0F AF /r IMUL r16, r/m16 RM Valid Valid word register ← word register ∗ r/m16.
0F AF /r IMUL r32, r/m32 RM Valid Valid doubleword register ← doubleword register ∗ r/m32.
REX.W + 0F AF /r IMUL r64, r/m64 RM Valid N.E. Quadword register ← Quadword register ∗ r/m64.
6B /r ib IMUL r16, r/m16, imm8 RMI Valid Valid word register ← r/m16 ∗ sign-extended immediate byte.
6B /r ib IMUL r32, r/m32, imm8 RMI Valid Valid doubleword register ← r/m32 ∗ signextended immediate byte.
REX.W + 6B /r ib IMUL r64, r/m64, imm8 RMI Valid N.E. Quadword register ← r/m64 ∗ sign-extended immediate byte.
69 /r iw IMUL r16, r/m16, imm16 RMI Valid Valid word register ← r/m16 ∗ immediate word.
69 /r id IMUL r32, r/m32, imm32 RMI Valid Valid doubleword register ← r/m32 ∗ immediate doubleword.
REX.W + 69 /r id IMUL r64, r/m64, imm32 RMI Valid N.E. Quadword register ← r/m64 ∗ immediate doubleword.

# * In 64-bit mode, r/m8 can not be encoded to access the following byte registers if a REX prefix is used: AH, BH, CH, DH.

M ModRM:r/m (r, w) NA NA NA
RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
RMI ModRM:reg (r, w) ModRM:r/m (r) imm8/16/32 NA

Flags Affected
SF is updated according to the most significant bit of the operand-size-truncated result in the destination. For the
one operand form of the instruction, the CF and OF flags are set when significant bits are carried into the upper half
of the result and cleared when the result fits exactly in the lower half of the result. For the two- and three-operand
forms of the instruction, the CF and OF flags are set when the result must be truncated to fit in the destination
operand size and cleared when the result fits exactly in the destination operand size. The ZF, AF, and PF flags are
undefined.

Protected Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register is used to access memory and it contains a NULL NULL
segment selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#GP If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS If a memory operand effective address is outside the SS segment limit.
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
