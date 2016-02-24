D0 /4 SAL r/m8, 1 M1 Valid Valid Multiply r/m8 by 2, once.
REX + D0 /4 SAL r/m8**, 1 M1 Valid N.E. Multiply r/m8 by 2, once.
D2 /4 SAL r/m8, CL MC Valid Valid Multiply r/m8 by 2, CL times.
REX + D2 /4 SAL r/m8**, CL MC Valid N.E. Multiply r/m8 by 2, CL times.
C0 /4 ib SAL r/m8, imm8 MI Valid Valid Multiply r/m8 by 2, imm8 times.
REX + C0 /4 ib SAL r/m8**, imm8 MI Valid N.E. Multiply r/m8 by 2, imm8 times.
D1 /4 SAL r/m16, 1 M1 Valid Valid Multiply r/m16 by 2, once.
D3 /4 SAL r/m16, CL MC Valid Valid Multiply r/m16 by 2, CL times.
C1 /4 ib SAL r/m16, imm8 MI Valid Valid Multiply r/m16 by 2, imm8 times.
D1 /4 SAL r/m32, 1 M1 Valid Valid Multiply r/m32 by 2, once.
REX.W + D1 /4 SAL r/m64, 1 M1 Valid N.E. Multiply r/m64 by 2, once.
D3 /4 SAL r/m32, CL MC Valid Valid Multiply r/m32 by 2, CL times.
REX.W + D3 /4 SAL r/m64, CL MC Valid N.E. Multiply r/m64 by 2, CL times.
C1 /4 ib SAL r/m32, imm8 MI Valid Valid Multiply r/m32 by 2, imm8 times.
REX.W + C1 /4 ib SAL r/m64, imm8 MI Valid N.E. Multiply r/m64 by 2, imm8 times.
D0 /7 SAR r/m8, 1 M1 Valid Valid Signed divide* r/m8 by 2, once.
REX + D0 /7 SAR r/m8**, 1 M1 Valid N.E. Signed divide* r/m8 by 2, once.
D2 /7 SAR r/m8, CL MC Valid Valid Signed divide* r/m8 by 2, CL times.
REX + D2 /7 SAR r/m8**, CL MC Valid N.E. Signed divide* r/m8 by 2, CL times.
C0 /7 ib SAR r/m8, imm8 MI Valid Valid Signed divide* r/m8 by 2, imm8 time.
REX + C0 /7 ib SAR r/m8**, imm8 MI Valid N.E. Signed divide* r/m8 by 2, imm8 times.
D1 /7 SAR r/m16,1 M1 Valid Valid Signed divide* r/m16 by 2, once.
D3 /7 SAR r/m16, CL MC Valid Valid Signed divide* r/m16 by 2, CL times.
C1 /7 ib SAR r/m16, imm8 MI Valid Valid Signed divide* r/m16 by 2, imm8 times.
D1 /7 SAR r/m32, 1 M1 Valid Valid Signed divide* r/m32 by 2, once.
REX.W + D1 /7 SAR r/m64, 1 M1 Valid N.E. Signed divide* r/m64 by 2, once.
D3 /7 SAR r/m32, CL MC Valid Valid Signed divide* r/m32 by 2, CL times.
REX.W + D3 /7 SAR r/m64, CL MC Valid N.E. Signed divide* r/m64 by 2, CL times.
C1 /7 ib SAR r/m32, imm8 MI Valid Valid Signed divide* r/m32 by 2, imm8 times.
REX.W + C1 /7 ib SAR r/m64, imm8 MI Valid N.E. Signed divide* r/m64 by 2, imm8 times
D0 /4 SHL r/m8, 1 M1 Valid Valid Multiply r/m8 by 2, once.
REX + D0 /4 SHL r/m8**, 1 M1 Valid N.E. Multiply r/m8 by 2, once.
D2 /4 SHL r/m8, CL MC Valid Valid Multiply r/m8 by 2, CL times.
REX + D2 /4 SHL r/m8**, CL MC Valid N.E. Multiply r/m8 by 2, CL times.
C0 /4 ib SHL r/m8, imm8 MI Valid Valid Multiply r/m8 by 2, imm8 times.
REX + C0 /4 ib SHL r/m8**, imm8 MI Valid N.E. Multiply r/m8 by 2, imm8 times.
D1 /4 SHL r/m16,1 M1 Valid Valid Multiply r/m16 by 2, once.
D3 /4 SHL r/m16, CL MC Valid Valid Multiply r/m16 by 2, CL times.
C1 /4 ib SHL r/m16, imm8 MI Valid Valid Multiply r/m16 by 2, imm8 times.
D1 /4 SHL r/m32,1 M1 Valid Valid Multiply r/m32 by 2, once.
REX.W + D1 /4 SHL r/m64,1 M1 Valid N.E. Multiply r/m64 by 2, once.
D3 /4 SHL r/m32, CL MC Valid Valid Multiply r/m32 by 2, CL times.
REX.W + D3 /4 SHL r/m64, CL MC Valid N.E. Multiply r/m64 by 2, CL times.
C1 /4 ib SHL r/m32, imm8 MI Valid Valid Multiply r/m32 by 2, imm8 times.
REX.W + C1 /4 ib SHL r/m64, imm8 MI Valid N.E. Multiply r/m64 by 2, imm8 times.
D0 /5 SHR r/m8,1 M1 Valid Valid Unsigned divide r/m8 by 2, once.
REX + D0 /5 SHR r/m8**, 1 M1 Valid N.E. Unsigned divide r/m8 by 2, once.
D2 /5 SHR r/m8, CL MC Valid Valid Unsigned divide r/m8 by 2, CL times.
REX + D2 /5 SHR r/m8**, CL MC Valid N.E. Unsigned divide r/m8 by 2, CL times.
C0 /5 ib SHR r/m8, imm8 MI Valid Valid Unsigned divide r/m8 by 2, imm8 times.
REX + C0 /5 ib SHR r/m8**, imm8 MI Valid N.E. Unsigned divide r/m8 by 2, imm8 times.
D1 /5 SHR r/m16, 1 M1 Valid Valid Unsigned divide r/m16 by 2, once.
D3 /5 SHR r/m16, CL MC Valid Valid Unsigned divide r/m16 by 2, CL times
C1 /5 ib SHR r/m16, imm8 MI Valid Valid Unsigned divide r/m16 by 2, imm8 times.
D1 /5 SHR r/m32, 1 M1 Valid Valid Unsigned divide r/m32 by 2, once.
REX.W + D1 /5 SHR r/m64, 1 M1 Valid N.E. Unsigned divide r/m64 by 2, once.
D3 /5 SHR r/m32, CL MC Valid Valid Unsigned divide r/m32 by 2, CL times.
REX.W + D3 /5 SHR r/m64, CL MC Valid N.E. Unsigned divide r/m64 by 2, CL times.
C1 /5 ib SHR r/m32, imm8 MI Valid Valid Unsigned divide r/m32 by 2, imm8 times.
REX.W + C1 /5 ib SHR r/m64, imm8 MI Valid N.E. Unsigned divide r/m64 by 2, imm8 times.

M1 ModRM:r/m (r, w) 1 NA NA
MC ModRM:r/m (r, w) CL NA NA
MI ModRM:r/m (r, w) imm8 NA NA

Flags Affected
The CF flag contains the value of the last bit shifted out of the destination operand; it is undefined for SHL and SHR
instructions where the count is greater than or equal to the size (in bits) of the destination operand. The OF flag is
affected only for 1-bit shifts (see “Description” above); otherwise, it is undefined. The SF, ZF, and PF flags are set
according to the result. If the count is 0, the flags are not affected. For a non-zero count, the AF flag is undefined.
Protected Mode Exceptions
#GP(0) If the destination is located in a non-writable segment.
If a memory operand effective address is outside the CS, DS, ES, FS, or GS segment limit.
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
