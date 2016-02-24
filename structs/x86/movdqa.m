66 0F 6F /r MOVDQA xmm1, xmm2/m128 RM V/V SSE2 Move aligned double quadword from xmm2/m128 to xmm1.
66 0F 7F /r MOVDQA xmm2/m128, xmm1 MR V/V SSE2 Move aligned double quadword from xmm1 to xmm2/m128.
VEX.128.66.0F.WIG 6F /r VMOVDQA xmm1, xmm2/m128 RM V/V AVX Move aligned packed integer values from xmm2/mem to xmm1.
VEX.128.66.0F.WIG 7F /r VMOVDQA xmm2/m128, xmm1 MR V/V AVX Move aligned packed integer values from xmm1 to xmm2/mem.
VEX.256.66.0F.WIG 6F /r VMOVDQA ymm1, ymm2/m256 RM V/V AVX Move aligned packed integer values from ymm2/mem to ymm1.
VEX.256.66.0F.WIG 7F /r VMOVDQA ymm2/m256, ymm1 MR V/V AVX Move aligned packed integer values from ymm1 to ymm2/mem.

RM ModRM:reg (w) ModRM:r/m (r) NA NA
MR ModRM:r/m (w) ModRM:reg (r) NA NA

Operation
MOVDQA (128-bit load- and register- form Legacy SSE version)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128] (Unmodified)
(* #GP if SRC or DEST unaligned memory operand *)
(V)MOVDQA (128-bit store forms)
DEST[127:0]  SRC[127:0]
VMOVDQA (VEX.128 encoded version)
DEST[127:0]  SRC[127:0]
DEST[VLMAX-1:128]  0
VMOVDQA (VEX.256 encoded version)
DEST[255:0]  SRC[255:0]

SIMD Floating-Point Exceptions
None.
Other Exceptions
See Exceptions Type 1.SSE2; additionally
#UD If VEX.vvvv ≠ 1111B.
