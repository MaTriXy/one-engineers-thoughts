0F 3A 0F /r ib1 PALIGNR mm1, mm2/m64, imm8 RMI V/V SSSE3 Concatenate destination and source operands, extract byte-aligned result shifted to the right by constant value in imm8 into mm1.
66 0F 3A 0F /r ib PALIGNR xmm1, xmm2/m128, imm8 RMI V/V SSSE3 Concatenate destination and source operands, extract byte-aligned result shifted to the right by constant value in imm8 into xmm1.
VEX.NDS.128.66.0F3A.WIG 0F /r ib VPALIGNR xmm1, xmm2, xmm3/m128, imm8 RVMI V/V AVX Concatenate xmm2 and xmm3/m128, extract byte aligned result shifted to the right by constant value in imm8 and result is stored in xmm1.
VEX.NDS.256.66.0F3A.WIG 0F /r ib VPALIGNR ymm1, ymm2, ymm3/m256, imm8 RVMI V/V AVX2 Concatenate pairs of 16 bytes in ymm2 and ymm3/m256 into 32-byte intermediate result, extract byte-aligned, 16-byte result shifted to the right by constant values in imm8 from each intermediate result, and two 16-byte results are stored in ymm1.


# See note in Section 2.4, “Instruction Exception Specification” in the Intel® 64 and IA-32 Architectures Software Developer’s Manual, Volume 2A and Section 22.25.3, “Exception Conditions of Legacy SIMD Instructions Operating on MMX Registers” in the Intel® 64 and IA-32 Architectures Software Developer’s Manual, Volume 3A.

RMI ModRM:reg (r, w) ModRM:r/m (r) imm8 NA
RVMI ModRM:reg (w) VEX.vvvv (r) ModRM:r/m (r) imm8

Operation
PALIGNR (with 64-bit operands)
temp1[127:0] = CONCATENATE(DEST,SRC)>>(imm8*8)
DEST[63:0] = temp1[63:0]
PALIGNR (with 128-bit operands)
temp1[255:0]  ((DEST[127:0] << 128) OR SRC[127:0])>>(imm8*8);
DEST[127:0]  temp1[127:0]
DEST[VLMAX-1:128] (Unmodified)
VPALIGNR (VEX.128 encoded version)
temp1[255:0]  ((SRC1[127:0] << 128) OR SRC2[127:0])>>(imm8*8);
DEST[127:0]  temp1[127:0]
DEST[VLMAX-1:128]  0
VPALIGNR (VEX.256 encoded version)
temp1[255:0]  ((SRC1[127:0] << 128) OR SRC2[127:0])>>(imm8[7:0]*8);
DEST[127:0]  temp1[127:0]
temp1[255:0]  ((SRC1[255:128] << 128) OR SRC2[255:128])>>(imm8[7:0]*8);
DEST[255:128]  temp1[127:0]

SIMD Floating-Point Exceptions
None.
Other Exceptions
See Exceptions Type 4; additionally
#UD If VEX.L = 1.
