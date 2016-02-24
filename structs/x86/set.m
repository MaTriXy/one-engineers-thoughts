0F 97 SETA r/m8 M Valid Valid Set byte if above (CF=0 and ZF=0).
REX + 0F 97 SETA r/m8* M Valid N.E. Set byte if above (CF=0 and ZF=0).
0F 93 SETAE r/m8 M Valid Valid Set byte if above or equal (CF=0).
REX + 0F 93 SETAE r/m8* M Valid N.E. Set byte if above or equal (CF=0).
0F 92 SETB r/m8 M Valid Valid Set byte if below (CF=1).
REX + 0F 92 SETB r/m8* M Valid N.E. Set byte if below (CF=1).
0F 96 SETBE r/m8 M Valid Valid Set byte if below or equal (CF=1 or ZF=1).
REX + 0F 96 SETBE r/m8* M Valid N.E. Set byte if below or equal (CF=1 or ZF=1).
0F 92 SETC r/m8 M Valid Valid Set byte if carry (CF=1).
REX + 0F 92 SETC r/m8* M Valid N.E. Set byte if carry (CF=1).
0F 94 SETE r/m8 M Valid Valid Set byte if equal (ZF=1).
REX + 0F 94 SETE r/m8* M Valid N.E. Set byte if equal (ZF=1).
0F 9F SETG r/m8 M Valid Valid Set byte if greater (ZF=0 and SF=OF).
REX + 0F 9F SETG r/m8* M Valid N.E. Set byte if greater (ZF=0 and SF=OF).
0F 9D SETGE r/m8 M Valid Valid Set byte if greater or equal (SF=OF).
REX + 0F 9D SETGE r/m8* M Valid N.E. Set byte if greater or equal (SF=OF).
0F 9C SETL r/m8 M Valid Valid Set byte if less (SF≠ OF).
REX + 0F 9C SETL r/m8* M Valid N.E. Set byte if less (SF≠ OF).
0F 9E SETLE r/m8 M Valid Valid Set byte if less or equal (ZF=1 or SF≠ OF).
REX + 0F 9E SETLE r/m8* M Valid N.E. Set byte if less or equal (ZF=1 or SF≠ OF).
0F 96 SETNA r/m8 M Valid Valid Set byte if not above (CF=1 or ZF=1).
REX + 0F 96 SETNA r/m8* M Valid N.E. Set byte if not above (CF=1 or ZF=1).
0F 92 SETNAE r/m8 M Valid Valid Set byte if not above or equal (CF=1).
REX + 0F 92 SETNAE r/m8* M Valid N.E. Set byte if not above or equal (CF=1).
0F 93 SETNB r/m8 M Valid Valid Set byte if not below (CF=0).
REX + 0F 93 SETNB r/m8* M Valid N.E. Set byte if not below (CF=0).
0F 97 SETNBE r/m8 M Valid Valid Set byte if not below or equal (CF=0 and
ZF=0).
REX + 0F 97 SETNBE r/m8* M Valid N.E. Set byte if not below or equal (CF=0 and
ZF=0).
0F 93 SETNC r/m8 M Valid Valid Set byte if not carry (CF=0).
REX + 0F 93 SETNC r/m8* M Valid N.E. Set byte if not carry (CF=0).
0F 95 SETNE r/m8 M Valid Valid Set byte if not equal (ZF=0).
REX + 0F 95 SETNE r/m8* M Valid N.E. Set byte if not equal (ZF=0).
0F 9E SETNG r/m8 M Valid Valid Set byte if not greater (ZF=1 or SF≠ OF)
REX + 0F 9E SETNG r/m8* M Valid N.E. Set byte if not greater (ZF=1 or SF≠ OF).
0F 9C SETNGE r/m8 M Valid Valid Set byte if not greater or equal (SF≠ OF).
REX + 0F 9C SETNGE r/m8* M Valid N.E. Set byte if not greater or equal (SF≠ OF).
0F 9D SETNL r/m8 M Valid Valid Set byte if not less (SF=OF).
REX + 0F 9D SETNL r/m8* M Valid N.E. Set byte if not less (SF=OF).
0F 9F SETNLE r/m8 M Valid Valid Set byte if not less or equal (ZF=0 and SF=OF).
REX + 0F 9F SETNLE r/m8* M Valid N.E. Set byte if not less or equal (ZF=0 and SF=OF).
0F 91 SETNO r/m8 M Valid Valid Set byte if not overflow (OF=0).
REX + 0F 91 SETNO r/m8* M Valid N.E. Set byte if not overflow (OF=0).
0F 9B SETNP r/m8 M Valid Valid Set byte if not parity (PF=0).
REX + 0F 9B SETNP r/m8* M Valid N.E. Set byte if not parity (PF=0).
0F 99 SETNS r/m8 M Valid Valid Set byte if not sign (SF=0).
REX + 0F 99 SETNS r/m8* M Valid N.E. Set byte if not sign (SF=0).
0F 95 SETNZ r/m8 M Valid Valid Set byte if not zero (ZF=0).
REX + 0F 95 SETNZ r/m8* M Valid N.E. Set byte if not zero (ZF=0).
0F 90 SETO r/m8 M Valid Valid Set byte if overflow (OF=1)
REX + 0F 90 SETO r/m8* M Valid N.E. Set byte if overflow (OF=1).
0F 9A SETP r/m8 M Valid Valid Set byte if parity (PF=1).
REX + 0F 9A SETP r/m8* M Valid N.E. Set byte if parity (PF=1).
0F 9A SETPE r/m8 M Valid Valid Set byte if parity even (PF=1).
REX + 0F 9A SETPE r/m8* M Valid N.E. Set byte if parity even (PF=1).
0F 9B SETPO r/m8 M Valid Valid Set byte if parity odd (PF=0).
REX + 0F 9B SETPO r/m8* M Valid N.E. Set byte if parity odd (PF=0).
0F 98 SETS r/m8 M Valid Valid Set byte if sign (SF=1).
REX + 0F 98 SETS r/m8* M Valid N.E. Set byte if sign (SF=1).
0F 94 SETZ r/m8 M Valid Valid Set byte if zero (ZF=1).
REX + 0F 94 SETZ r/m8* M Valid N.E. Set byte if zero (ZF=1).

M ModRM:r/m (r) NA NA NA

Operation
IF condition
THEN DEST ← 1;
ELSE DEST ← 0;
FI;

Flags Affected
None.

Protected Mode Exceptions
#GP(0) If the destination is located in a non-writable segment.
If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
If the DS, ES, FS, or GS register contains a NULL segment selector.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#GP If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS If a memory operand effective address is outside the SS segment limit.
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#GP(0) If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
#SS(0) If a memory operand effective address is outside the SS segment limit.
#PF(fault-code) If a page fault occurs.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
#PF(fault-code) If a page fault occurs.
#UD If the LOCK prefix is used.
