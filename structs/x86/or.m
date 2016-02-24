0C ib OR AL, imm8 I Valid Valid AL OR imm8.
0D iw OR AX, imm16 I Valid Valid AX OR imm16.
0D id OR EAX, imm32 I Valid Valid EAX OR imm32.
REX.W + 0D id OR RAX, imm32 I Valid N.E. RAX OR imm32 (sign-extended).
80 /1 ib OR r/m8, imm8 MI Valid Valid r/m8 OR imm8.
REX + 80 /1 ib OR r/m8*, imm8 MI Valid N.E. r/m8 OR imm8.
81 /1 iw OR r/m16, imm16 MI Valid Valid r/m16 OR imm16.
81 /1 id OR r/m32, imm32 MI Valid Valid r/m32 OR imm32.
REX.W + 81 /1 id OR r/m64, imm32 MI Valid N.E. r/m64 OR imm32 (sign-extended).
83 /1 ib OR r/m16, imm8 MI Valid Valid r/m16 OR imm8 (sign-extended).
83 /1 ib OR r/m32, imm8 MI Valid Valid r/m32 OR imm8 (sign-extended).
REX.W + 83 /1 ib OR r/m64, imm8 MI Valid N.E. r/m64 OR imm8 (sign-extended).
08 /r OR r/m8, r8 MR Valid Valid r/m8 OR r8.
REX + 08 /r OR r/m8*, r8* MR Valid N.E. r/m8 OR r8.
09 /r OR r/m16, r16 MR Valid Valid r/m16 OR r16.
09 /r OR r/m32, r32 MR Valid Valid r/m32 OR r32.
REX.W + 09 /r OR r/m64, r64 MR Valid N.E. r/m64 OR r64.
0A /r OR r8, r/m8 RM Valid Valid r8 OR r/m8.
REX + 0A /r OR r8*, r/m8* RM Valid N.E. r8 OR r/m8.
0B /r OR r16, r/m16 RM Valid Valid r16 OR r/m16.
0B /r OR r32, r/m32 RM Valid Valid r32 OR r/m32.
REX.W + 0B /r OR r64, r/m64 RM Valid N.E. r64 OR r/m64.

---

I AL/AX/EAX/RAX imm8/16/32 NA NA
MI ModRM:r/m (r, w) imm8/16/32 NA NA
MR ModRM:r/m (r, w) ModRM:reg (r) NA NA
RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
