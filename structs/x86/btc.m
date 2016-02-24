0F BB /r BTC r/m16, r16 MR Valid Valid Store selected bit in CF flag and complement.
0F BB /r BTC r/m32, r32 MR Valid Valid Store selected bit in CF flag and complement.
REX.W + 0F BB /r BTC r/m64, r64 MR Valid N.E. Store selected bit in CF flag and complement.
0F BA /7 ib BTC r/m16, imm8 MI Valid Valid Store selected bit in CF flag and complement.
0F BA /7 ib BTC r/m32, imm8 MI Valid Valid Store selected bit in CF flag and complement.
REX.W + 0F BA /7 ib BTC r/m64, imm8 MI Valid N.E. Store selected bit in CF flag and complement.

MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
MI ModRM:r/m (r, w) imm8 NA NA

Flags Affected
The CF flag contains the value of the selected bit before it is complemented. The ZF flag is unaffected. The OF, SF,
AF, and PF flags are undefined.

Protected Mode Exceptions
#GP(0) If the destination operand points to a non-writable segment.
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
