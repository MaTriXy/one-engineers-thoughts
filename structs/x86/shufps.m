0F C6 /r ib SHUFPS xmm1, xmm2/m128, imm8 RMI V/V SSE Shuffle packed single-precision floating-point values selected by imm8 from xmm1 and xmm1/m128 to xmm1.
VEX.NDS.128.0F.WIG C6 /r ib VSHUFPS xmm1, xmm2, xmm3/m128, imm8 RVMI V/V AVX Shuffle Packed single-precision floating-point values selected by imm8 from xmm2 and xmm3/mem.
VEX.NDS.256.0F.WIG C6 /r ib VSHUFPS ymm1, ymm2, ymm3/m256, imm8 RVMI V/V AVX Shuffle Packed single-precision floating-point values selected by imm8 from ymm2 and ymm3/mem.

RMI ModRM:reg (r, w) ModRM:r/m (r) imm8 NA
RVMI ModRM:reg (w) VEX.vvvv (r) ModRM:r/m (r) imm8

Operation
CASE (SELECT[1:0]) OF
0: DEST[31:0] ← DEST[31:0];
1: DEST[31:0] ← DEST[63:32];
2: DEST[31:0] ← DEST[95:64];
3: DEST[31:0] ← DEST[127:96];
ESAC;
CASE (SELECT[3:2]) OF
0: DEST[63:32] ← DEST[31:0];
1: DEST[63:32] ← DEST[63:32];
2: DEST[63:32] ← DEST[95:64];
3: DEST[63:32] ← DEST[127:96];
ESAC;
CASE (SELECT[5:4]) OF
0: DEST[95:64] ← SRC[31:0];
1: DEST[95:64] ← SRC[63:32];
2: DEST[95:64] ← SRC[95:64];
3: DEST[95:64] ← SRC[127:96];
ESAC;
CASE (SELECT[7:6]) OF
0: DEST[127:96] ← SRC[31:0];
1: DEST[127:96] ← SRC[63:32];
2: DEST[127:96] ← SRC[95:64];
3: DEST[127:96] ← SRC[127:96];
ESAC;
SHUFPS (128-bit Legacy SSE version)
DEST[31:0]  Select4(SRC1[127:0], imm8[1:0]);
DEST[63:32]  Select4(SRC1[127:0], imm8[3:2]);
DEST[95:64]  Select4(SRC2[127:0], imm8[5:4]);
DEST[127:96]  Select4(SRC2[127:0], imm8[7:6]);
DEST[VLMAX-1:128] (Unmodified)
VSHUFPS (VEX.128 encoded version)
DEST[31:0]  Select4(SRC1[127:0], imm8[1:0]);
DEST[63:32]  Select4(SRC1[127:0], imm8[3:2]);
DEST[95:64]  Select4(SRC2[127:0], imm8[5:4]);
DEST[127:96]  Select4(SRC2[127:0], imm8[7:6]);
DEST[VLMAX-1:128]  0
VSHUFPS (VEX.256 encoded version)
DEST[31:0]  Select4(SRC1[127:0], imm8[1:0]);
DEST[63:32]  Select4(SRC1[127:0], imm8[3:2]);
DEST[95:64]  Select4(SRC2[127:0], imm8[5:4]);
DEST[127:96]  Select4(SRC2[127:0], imm8[7:6]);
DEST[159:128]  Select4(SRC1[255:128], imm8[1:0]);
DEST[191:160]  Select4(SRC1[255:128], imm8[3:2]);
DEST[223:192]  Select4(SRC2[255:128], imm8[5:4]);
DEST[255:224]  Select4(SRC2[255:128], imm8[7:6]);
Intel C/C++ Compiler Intrinsic Equivalent
SHUFPS: __m128 _mm_shuffle_ps(__m128 a, __m128 b, unsigned int imm8)
VSHUFPS: __m256 _mm256_shuffle_ps (__m256 a, __m256 b, const int select);
SIMD Floating-Point Exceptions
None.
Other Exceptions
See Exceptions Type 4.
