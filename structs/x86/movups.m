0F 10 /r MOVUPS xmm1, xmm2/m128 RM V/V SSE Move packed single-precision floating-point values from xmm2/m128 to xmm1.
VEX.128.0F.WIG 10 /r VMOVUPS xmm1, xmm2/m128 RM V/V AVX Move unaligned packed single-precision floating-point from xmm2/mem to xmm1.
VEX.256.0F.WIG 10 /r VMOVUPS ymm1, ymm2/m256 RM V/V AVX Move unaligned packed single-precision floating-point from ymm2/mem to ymm1.
0F 11 /r MOVUPS xmm2/m128, xmm1 MR V/V SSE Move packed single-precision floating-point values from xmm1 to xmm2/m128.
VEX.128.0F.WIG 11 /r VMOVUPS xmm2/m128, xmm1 MR V/V AVX Move unaligned packed single-precision floating-point from xmm1 to xmm2/mem.
VEX.256.0F.WIG 11 /r VMOVUPS ymm2/m256, ymm1 MR V/V AVX Move unaligned packed single-precision floating-point from ymm1 to ymm2/mem

RM ModRM:reg (w) ModRM:r/m (r) NA NA
MR ModRM:r/m (w) ModRM:reg (r) NA NA

Operation
MOVUPS (128-bit load and register-copy form Legacy SSE version)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128] (Unmodified)
(V)MOVUPS (128-bit store form)
DEST[127:0]  SRC[127:0]
VMOVUPS (VEX.128 encoded load-form)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128]  0
VMOVUPS (VEX.256 encoded version)
DEST[255:0]  SRC[255:0]

Other Exceptions
See Exceptions Type 4
Note treatment of #AC varies; additionally
#UD If VEX.vvvv ≠ 1111B.
