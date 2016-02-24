66 0F 3A 62 /r imm8 PCMPISTRM xmm1, xmm2/m128, imm8 RM V/V SSE4_2 Perform a packed comparison of string data with implicit lengths, generating a mask, and storing the result in XMM0.
VEX.128.66.0F3A.WIG 62 /r ib VPCMPISTRM xmm1, xmm2/m128, imm8 RM V/V AVX Perform a packed comparison of string data with implicit lengths, generating a Mask, and storing the result in XMM0.

RM ModRM:reg (r) ModRM:r/m (r) imm8 NA

See Exceptions Type 4; additionally, this instruction does not cause #GP if the memory operand is not aligned to 16
Byte boundary, and
#UD If VEX.L = 1.
If VEX.vvvv ≠ 1111B.
