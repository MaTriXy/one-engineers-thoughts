F6 /6 DIV r/m8 M Valid Valid Unsigned divide AX by r/m8, with result stored in AL ← Quotient, AH ← Remainder.
REX + F6 /6 DIV r/m8* M Valid N.E. Unsigned divide AX by r/m8, with result stored in AL ← Quotient, AH ← Remainder.
F7 /6 DIV r/m16 M Valid Valid Unsigned divide DX:AX by r/m16, with result stored in AX ← Quotient, DX ← Remainder.
F7 /6 DIV r/m32 M Valid Valid Unsigned divide EDX:EAX by r/m32, with result stored in EAX ← Quotient, EDX ← Remainder.
REX.W + F7 /6 DIV r/m64 M Valid N.E. Unsigned divide RDX:RAX by r/m64, with result stored in RAX ← Quotient, RDX ← Remainder.

M ModRM:r/m (w) NA NA NA

flags
  The CF, OF, SF, ZF, AF, and PF flags are undefined.

Protected Mode Exceptions
#DE If the source operand (divisor) is 0
If the quotient is too large for the designated register.
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register contains a NULL segment selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#DE If the source operand (divisor) is 0.
If the quotient is too large for the designated register.
#GP If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register contains a NULL segment selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#DE If the source operand (divisor) is 0.
If the quotient is too large for the designated register.
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
#DE If the source operand (divisor) is 0
If the quotient is too large for the designated register.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
#UD If the LOCK prefix is used.
