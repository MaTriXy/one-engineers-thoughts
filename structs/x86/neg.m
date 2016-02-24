F6 /3 NEG r/m8 M Valid Valid Two's complement negate r/m8.
REX + F6 /3 NEG r/m8* M Valid N.E. Two's complement negate r/m8.
F7 /3 NEG r/m16 M Valid Valid Two's complement negate r/m16.
F7 /3 NEG r/m32 M Valid Valid Two's complement negate r/m32.
REX.W + F7 /3 NEG r/m64 M Valid N.E. Two's complement negate r/m64.

# * In 64-bit mode, r/m8 can not be encoded to access the following byte registers if a REX prefix is used: AH, BH, CH, DH.

M ModRM:r/m (r, w) NA NA NA

Operation
IF DEST = 0
THEN CF ← 0;
ELSE CF ← 1;
FI;
DEST ← [– (DEST)]
Flags Affected
The CF flag set to 0 if the source operand is 0; otherwise it is set to 1. The OF, SF, ZF, AF, and PF flags are set
according to the result.

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
Same as for protected mode exceptions.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
#PF(fault-code) For a page fault.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used but the destination is not a memory operand.
