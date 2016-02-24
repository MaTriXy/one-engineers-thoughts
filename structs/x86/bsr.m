0F BD /r BSR r16, r/m16 RM Valid Valid Bit scan reverse on r/m16.
0F BD /r BSR r32, r/m32 RM Valid Valid Bit scan reverse on r/m32.
REX.W + 0F BD /r BSR r64, r/m64 RM Valid N.E. Bit scan reverse on r/m64.

RM ModRM:reg (w) ModRM:r/m (r) NA NA

operation

IF SRC = 0 THEN
ZF ← 1;
DEST is undefined; ELSE
ZF ← 0;
temp ← OperandSize – 1; WHILE Bit(SRC, temp) = 0 DO
temp ← temp - 1; OD;
DEST ← temp; FI;

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
#UD If the LOCK prefix is used.
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
