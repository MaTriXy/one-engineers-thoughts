0F DB /r^1 PAND mm, mm/m64 RM V/V MMX Bitwise AND mm/m64 and mm.
66 0F DB /r PAND xmm1, xmm2/m128 RM V/V SSE2 Bitwise AND of xmm2/m128 and xmm1.
VEX.NDS.128.66.0F.WIG DB /r VPAND xmm1, xmm2, xmm3/m128 RVM V/V AVX Bitwise AND of xmm3/m128 and xmm.
VEX.NDS.256.66.0F.WIG DB /r VPAND ymm1, ymm2, ymm3/.m256 RVM V/V AVX2 Bitwise AND of ymm2, and ymm3/m256 and store result in ymm1.

#  See note in Section 2.4, “Instruction Exception Specification” in the Intel® 64 and IA-32 Architectures Software Developer’s Manual, Volume 2A and Section 22.25.3, “Exception Conditions of Legacy SIMD Instructions Operating on MMX Registers” in the Intel® 64 and IA-32 Architectures Software Developer’s Manual, Volume 3A.

RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
RVM ModRM:reg (w) VEX.vvvv (r) ModRM:r/m (r) NA
