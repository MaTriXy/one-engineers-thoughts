90+rw XCHG AX, r16 O Valid Valid Exchange r16 with AX.
90+rw XCHG r16, AX O Valid Valid Exchange AX with r16.
90+rd XCHG EAX, r32 O Valid Valid Exchange r32 with EAX.
REX.W + 90+rd XCHG RAX, r64 O Valid N.E. Exchange r64 with RAX.
90+rd XCHG r32, EAX O Valid Valid Exchange EAX with r32.
REX.W + 90+rd XCHG r64, RAX O Valid N.E. Exchange RAX with r64.
86 /r XCHG r/m8, r8 MR Valid Valid Exchange r8 (byte register) with byte from
r/m8.
REX + 86 /r XCHG r/m8*, r8* MR Valid N.E. Exchange r8 (byte register) with byte from
r/m8.
86 /r XCHG r8, r/m8 RM Valid Valid Exchange byte from r/m8 with r8 (byte
register).
REX + 86 /r XCHG r8*, r/m8* RM Valid N.E. Exchange byte from r/m8 with r8 (byte
register).
87 /r XCHG r/m16, r16 MR Valid Valid Exchange r16 with word from r/m16.
87 /r XCHG r16, r/m16 RM Valid Valid Exchange word from r/m16 with r16.
87 /r XCHG r/m32, r32 MR Valid Valid Exchange r32 with doubleword from r/m32.
REX.W + 87 /r XCHG r/m64, r64 MR Valid N.E. Exchange r64 with quadword from r/m64.
87 /r XCHG r32, r/m32 RM Valid Valid Exchange doubleword from r/m32 with r32.
REX.W + 87 /r XCHG r64, r/m64 RM Valid N.E. Exchange quadword from r/m64 with r64.

# In 64-bit mode, r/m8 can not be encoded to access the following byte registers if a REX prefix is used: AH, BH, CH, DH.

O AX/EAX/RAX (r, w) opcode + rd (r, w) NA NA
O opcode + rd (r, w) AX/EAX/RAX (r, w) NA NA
MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
RM ModRM:reg (w) ModRM:r/m (r) NA NA

Protected Mode Exceptions
#GP(0) If either operand is in a non-writable segment.
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
