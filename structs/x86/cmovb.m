0F 47 /r CMOVA r16, r/m16 RM Valid Valid Move if above (CF=0 and ZF=0).
0F 47 /r CMOVA r32, r/m32 RM Valid Valid Move if above (CF=0 and ZF=0).
REX.W + 0F 47 /r CMOVA r64, r/m64 RM Valid N.E. Move if above (CF=0 and ZF=0).
0F 43 /r CMOVAE r16, r/m16 RM Valid Valid Move if above or equal (CF=0).
0F 43 /r CMOVAE r32, r/m32 RM Valid Valid Move if above or equal (CF=0).
REX.W + 0F 43 /r CMOVAE r64, r/m64 RM Valid N.E. Move if above or equal (CF=0).
0F 42 /r CMOVB r16, r/m16 RM Valid Valid Move if below (CF=1).
0F 42 /r CMOVB r32, r/m32 RM Valid Valid Move if below (CF=1).
REX.W + 0F 42 /r CMOVB r64, r/m64 RM Valid N.E. Move if below (CF=1).
0F 46 /r CMOVBE r16, r/m16 RM Valid Valid Move if below or equal (CF=1 or ZF=1).
0F 46 /r CMOVBE r32, r/m32 RM Valid Valid Move if below or equal (CF=1 or ZF=1).
REX.W + 0F 46 /r CMOVBE r64, r/m64 RM Valid N.E. Move if below or equal (CF=1 or ZF=1).
0F 42 /r CMOVC r16, r/m16 RM Valid Valid Move if carry (CF=1).
0F 42 /r CMOVC r32, r/m32 RM Valid Valid Move if carry (CF=1).
REX.W + 0F 42 /r CMOVC r64, r/m64 RM Valid N.E. Move if carry (CF=1).
0F 44 /r CMOVE r16, r/m16 RM Valid Valid Move if equal (ZF=1).
0F 44 /r CMOVE r32, r/m32 RM Valid Valid Move if equal (ZF=1).
REX.W + 0F 44 /r CMOVE r64, r/m64 RM Valid N.E. Move if equal (ZF=1).
0F 4F /r CMOVG r16, r/m16 RM Valid Valid Move if greater (ZF=0 and SF=OF).
0F 4F /r CMOVG r32, r/m32 RM Valid Valid Move if greater (ZF=0 and SF=OF).
REX.W + 0F 4F /r CMOVG r64, r/m64 RM V/N.E. NA Move if greater (ZF=0 and SF=OF).
0F 4D /r CMOVGE r16, r/m16 RM Valid Valid Move if greater or equal (SF=OF).
0F 4D /r CMOVGE r32, r/m32 RM Valid Valid Move if greater or equal (SF=OF).
REX.W + 0F 4D /r CMOVGE r64, r/m64 RM Valid N.E. Move if greater or equal (SF=OF).
0F 4C /r CMOVL r16, r/m16 RM Valid Valid Move if less (SF≠ OF).
0F 4C /r CMOVL r32, r/m32 RM Valid Valid Move if less (SF≠ OF).
REX.W + 0F 4C /r CMOVL r64, r/m64 RM Valid N.E. Move if less (SF≠ OF).
0F 4E /r CMOVLE r16, r/m16 RM Valid Valid Move if less or equal (ZF=1 or SF≠ OF).
0F 4E /r CMOVLE r32, r/m32 RM Valid Valid Move if less or equal (ZF=1 or SF≠ OF).
REX.W + 0F 4E /r CMOVLE r64, r/m64 RM Valid N.E. Move if less or equal (ZF=1 or SF≠ OF).
0F 46 /r CMOVNA r16, r/m16 RM Valid Valid Move if not above (CF=1 or ZF=1).
0F 46 /r CMOVNA r32, r/m32 RM Valid Valid Move if not above (CF=1 or ZF=1).
REX.W + 0F 46 /r CMOVNA r64, r/m64 RM Valid N.E. Move if not above (CF=1 or ZF=1).
0F 42 /r CMOVNAE r16, r/m16 RM Valid Valid Move if not above or equal (CF=1).
0F 42 /r CMOVNAE r32, r/m32 RM Valid Valid Move if not above or equal (CF=1).
REX.W + 0F 42 /r CMOVNAE r64, r/m64 RM Valid N.E. Move if not above or equal (CF=1).
0F 43 /r CMOVNB r16, r/m16 RM Valid Valid Move if not below (CF=0).
0F 43 /r CMOVNB r32, r/m32 RM Valid Valid Move if not below (CF=0).
REX.W + 0F 43 /r CMOVNB r64, r/m64 RM Valid N.E. Move if not below (CF=0).
0F 47 /r CMOVNBE r16, r/m16 RM Valid Valid Move if not below or equal (CF=0 and ZF=0)
0F 47 /r CMOVNBE r32, r/m32 RM Valid Valid Move if not below or equal (CF=0 and ZF=0).
REX.W + 0F 47 /r CMOVNBE r64, r/m64 RM Valid N.E. Move if not below or equal (CF=0 and ZF=0).
0F 43 /r CMOVNC r16, r/m16 RM Valid Valid Move if not carry (CF=0).
0F 43 /r CMOVNC r32, r/m32 RM Valid Valid Move if not carry (CF=0).
REX.W + 0F 43 /r CMOVNC r64, r/m64 RM Valid N.E. Move if not carry (CF=0).
0F 45 /r CMOVNE r16, r/m16 RM Valid Valid Move if not equal (ZF=0).
0F 45 /r CMOVNE r32, r/m32 RM Valid Valid Move if not equal (ZF=0).
REX.W + 0F 45 /r CMOVNE r64, r/m64 RM Valid N.E. Move if not equal (ZF=0).
0F 4E /r CMOVNG r16, r/m16 RM Valid Valid Move if not greater (ZF=1 or SF≠ OF).
0F 4E /r CMOVNG r32, r/m32 RM Valid Valid Move if not greater (ZF=1 or SF≠ OF).
REX.W + 0F 4E /r CMOVNG r64, r/m64 RM Valid N.E. Move if not greater (ZF=1 or SF≠ OF).
0F 4C /r CMOVNGE r16, r/m16 RM Valid Valid Move if not greater or equal (SF≠ OF).
0F 4C /r CMOVNGE r32, r/m32 RM Valid Valid Move if not greater or equal (SF≠ OF).
REX.W + 0F 4C /r CMOVNGE r64, r/m64 RM Valid N.E. Move if not greater or equal (SF≠ OF).
0F 4D /r CMOVNL r16, r/m16 RM Valid Valid Move if not less (SF=OF).
0F 4D /r CMOVNL r32, r/m32 RM Valid Valid Move if not less (SF=OF).
REX.W + 0F 4D /r CMOVNL r64, r/m64 RM Valid N.E. Move if not less (SF=OF).
0F 4F /r CMOVNLE r16, r/m16 RM Valid Valid Move if not less or equal (ZF=0 and SF=OF).
0F 4F /r CMOVNLE r32, r/m32 RM Valid Valid Move if not less or equal (ZF=0 and SF=OF).
REX.W + 0F 4F /r CMOVNLE r64, r/m64 RM Valid N.E. Move if not less or equal (ZF=0 and SF=OF).
0F 41 /r CMOVNO r16, r/m16 RM Valid Valid Move if not overflow (OF=0).
0F 41 /r CMOVNO r32, r/m32 RM Valid Valid Move if not overflow (OF=0).
REX.W + 0F 41 /r CMOVNO r64, r/m64 RM Valid N.E. Move if not overflow (OF=0).
0F 4B /r CMOVNP r16, r/m16 RM Valid Valid Move if not parity (PF=0).
0F 4B /r CMOVNP r32, r/m32 RM Valid Valid Move if not parity (PF=0).
REX.W + 0F 4B /r CMOVNP r64, r/m64 RM Valid N.E. Move if not parity (PF=0).
0F 49 /r CMOVNS r16, r/m16 RM Valid Valid Move if not sign (SF=0).
0F 49 /r CMOVNS r32, r/m32 RM Valid Valid Move if not sign (SF=0).
REX.W + 0F 49 /r CMOVNS r64, r/m64 RM Valid N.E. Move if not sign (SF=0).
0F 45 /r CMOVNZ r16, r/m16 RM Valid Valid Move if not zero (ZF=0).
0F 45 /r CMOVNZ r32, r/m32 RM Valid Valid Move if not zero (ZF=0).
REX.W + 0F 45 /r CMOVNZ r64, r/m64 RM Valid N.E. Move if not zero (ZF=0).
0F 40 /r CMOVO r16, r/m16 RM Valid Valid Move if overflow (OF=1).
0F 40 /r CMOVO r32, r/m32 RM Valid Valid Move if overflow (OF=1).
REX.W + 0F 40 /r CMOVO r64, r/m64 RM Valid N.E. Move if overflow (OF=1).
0F 4A /r CMOVP r16, r/m16 RM Valid Valid Move if parity (PF=1).
0F 4A /r CMOVP r32, r/m32 RM Valid Valid Move if parity (PF=1).
REX.W + 0F 4A /r CMOVP r64, r/m64 RM Valid N.E. Move if parity (PF=1).
0F 4A /r CMOVPE r16, r/m16 RM Valid Valid Move if parity even (PF=1).
0F 4A /r CMOVPE r32, r/m32 RM Valid Valid Move if parity even (PF=1).
REX.W + 0F 4A /r CMOVPE r64, r/m64 RM Valid N.E. Move if parity even (PF=1)
0F 4B /r CMOVPO r16, r/m16 RM Valid Valid Move if parity odd (PF=0).
0F 4B /r CMOVPO r32, r/m32 RM Valid Valid Move if parity odd (PF=0).
REX.W + 0F 4B /r CMOVPO r64, r/m64 RM Valid N.E. Move if parity odd (PF=0).
0F 48 /r CMOVS r16, r/m16 RM Valid Valid Move if sign (SF=1).
0F 48 /r CMOVS r32, r/m32 RM Valid Valid Move if sign (SF=1).
REX.W + 0F 48 /r CMOVS r64, r/m64 RM Valid N.E. Move if sign (SF=1).
0F 44 /r CMOVZ r16, r/m16 RM Valid Valid Move if zero (ZF=1).
0F 44 /r CMOVZ r32, r/m32 RM Valid Valid Move if zero (ZF=1).
REX.W + 0F 44 /r CMOVZ r64, r/m64 RM Valid N.E. Move if zero (ZF=1).

RM ModRM:reg (r, w) ModRM:r/m (r) NA NA

Flags Affected
None.
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
