0F EB /r^1 POR mm, mm/m64 RM V/V MMX Bitwise OR of mm/m64 and mm.
66 0F EB /r POR xmm1, xmm2/m128 RM V/V SSE2 Bitwise OR of xmm2/m128 and xmm1.
VEX.NDS.128.66.0F.WIG EB /r VPOR xmm1, xmm2, xmm3/m128 RVM V/V AVX Bitwise OR of xmm2/m128 and xmm3.
VEX.NDS.256.66.0F.WIG EB /r VPOR ymm1, ymm2, ymm3/m256 RVM V/V AVX2 Bitwise OR of ymm2/m256 and ymm3.

RM ModRM:reg (r, w) ModRM:r/m (r) NA NA
RVM ModRM:reg (w) VEX.vvvv (r) ModRM:r/m (r) NA

Operation
POR (128-bit Legacy SSE version)
DEST  DEST OR SRC
DEST[VLMAX-1:128] (Unmodified)
VPOR (VEX.128 encoded version)
DEST  SRC1 OR SRC2
DEST[VLMAX-1:128]  0
VPOR (VEX.256 encoded version)
DEST  SRC1 OR SRC2

Flags Affected
None.
SIMD Floating-Point Exceptions
None.
Other Exceptions
See Exceptions Type 4; additionally
#UD If VEX.L = 1.
