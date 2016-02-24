0F 28 /r MOVAPS xmm1, xmm2/m128 RM V/V SSE Move packed single-precision floating-point values from xmm2/m128 to xmm1.
0F 29 /r MOVAPS xmm2/m128, xmm1 MR V/V SSE Move packed single-precision floating-point values from xmm1 to xmm2/m128.
VEX.128.0F.WIG 28 /r VMOVAPS xmm1, xmm2/m128 RM V/V AVX Move aligned packed single-precision floatingpoint values from xmm2/mem to xmm1.
VEX.128.0F.WIG 29 /r VMOVAPS xmm2/m128, xmm1 MR V/V AVX Move aligned packed single-precision floatingpoint values from xmm1 to xmm2/mem.
VEX.256.0F.WIG 28 /r VMOVAPS ymm1, ymm2/m256 RM V/V AVX Move aligned packed single-precision floatingpoint values from ymm2/mem to ymm1.
VEX.256.0F.WIG 29 /r VMOVAPS ymm2/m256, ymm1 MR V/V AVX Move aligned packed single-precision floatingpoint values from ymm1 to ymm2/mem.

RM ModRM:reg (w) ModRM:r/m (r) NA NA
MR ModRM:r/m (w) ModRM:reg (r) NA NA

Operation
MOVAPS (128-bit load- and register-copy- form Legacy SSE version)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128] (Unmodified)
(V)MOVAPS (128-bit store form)
DEST[127:0]  SRC[127:0]
VMOVAPS (VEX.128 encoded version)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128]  0
VMOVAPS (VEX.256 encoded version)
DEST[255:0]  SRC[255:0]

SIMD Floating-Point Exceptions
None.
Other Exceptions
See Exceptions Type 1.SSE; additionally
#UD If VEX.vvvv ≠ 1111B.
