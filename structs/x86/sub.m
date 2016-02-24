2C ib SUB AL, imm8 I Valid Valid Subtract imm8 from AL.
2D iw SUB AX, imm16 I Valid Valid Subtract imm16 from AX.
2D id SUB EAX, imm32 I Valid Valid Subtract imm32 from EAX.
REX.W + 2D id SUB RAX, imm32 I Valid N.E. Subtract imm32 sign-extended to 64-bits from RAX.
80 /5 ib SUB r/m8, imm8 MI Valid Valid Subtract imm8 from r/m8.
REX + 80 /5 ib SUB r/m8*, imm8 MI Valid N.E. Subtract imm8 from r/m8.
81 /5 iw SUB r/m16, imm16 MI Valid Valid Subtract imm16 from r/m16.
81 /5 id SUB r/m32, imm32 MI Valid Valid Subtract imm32 from r/m32.
REX.W + 81 /5 id SUB r/m64, imm32 MI Valid N.E. Subtract imm32 sign-extended to 64-bits from r/m64.
83 /5 ib SUB r/m16, imm8 MI Valid Valid Subtract sign-extended imm8 from r/m16.
83 /5 ib SUB r/m32, imm8 MI Valid Valid Subtract sign-extended imm8 from r/m32.
REX.W + 83 /5 ib SUB r/m64, imm8 MI Valid N.E. Subtract sign-extended imm8 from r/m64.
28 /r SUB r/m8, r8 MR Valid Valid Subtract r8 from r/m8.
REX + 28 /r SUB r/m8*, r8* MR Valid N.E. Subtract r8 from r/m8.
29 /r SUB r/m16, r16 MR Valid Valid Subtract r16 from r/m16.
29 /r SUB r/m32, r32 MR Valid Valid Subtract r32 from r/m32.
REX.W + 29 /r SUB r/m64, r64 MR Valid N.E. Subtract r64 from r/m64.
2A /r SUB r8, r/m8 RM Valid Valid Subtract r/m8 from r8.
REX + 2A /r SUB r8*, r/m8* RM Valid N.E. Subtract r/m8 from r8.
2B /r SUB r16, r/m16 RM Valid Valid Subtract r/m16 from r16.
2B /r SUB r32, r/m32 RM Valid Valid Subtract r/m32 from r32.
REX.W + 2B /r SUB r64, r/m64 RM Valid N.E. Subtract r/m64 from r64.

---

I AL/AX/EAX/RAX imm8/26/32 NA NA
MI ModRM:r/m (r, w) imm8/26/32 NA NA
MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
