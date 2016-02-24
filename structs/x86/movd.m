0F 6E /r MOVD mm, r/m32 RM V/V MMX Move doubleword from r/m32 to mm.
REX.W + 0F 6E /r MOVQ mm, r/m64 RM V/N.E. MMX Move quadword from r/m64 to mm.
0F 7E /r MOVD r/m32, mm MR V/V MMX Move doubleword from mm to r/m32.
REX.W + 0F 7E /r MOVQ r/m64, mm MR V/N.E. MMX Move quadword from mm to r/m64.
VEX.128.66.0F.W0 6E / VMOVD xmm1, r32/m32 RM V/V AVX Move doubleword from r/m32 to xmm1.
VEX.128.66.0F.W1 6E /r VMOVQ xmm1, r64/m64 RM V/N.E. AVX Move quadword from r/m64 to xmm1.
66 0F 6E /r MOVD xmm, r/m32 RM V/V SSE2 Move doubleword from r/m32 to xmm.
66 REX.W 0F 6E /r MOVQ xmm, r/m64 RM V/N.E. SSE2 Move quadword from r/m64 to xmm.
66 0F 7E /r MOVD r/m32, xmm MR V/V SSE2 Move doubleword from xmm register to r/m32.
66 REX.W 0F 7E /r MOVQ r/m64, xmm MR V/N.E. SSE2 Move quadword from xmm register to r/m64.
VEX.128.66.0F.W0 7E /r VMOVD r32/m32, xmm1 MR V/V AVX Move doubleword from xmm1 register to r/m32.
VEX.128.66.0F.W1 7E /r VMOVQ r64/m64, xmm1 MR V/N.E. AVX Move quadword from xmm1 register to r/m64.

RM ModRM:reg (w) ModRM:r/m (r) NA NA
MR ModRM:r/m (w) ModRM:reg (r) NA NA

operation
MOVD (when destination operand is MMX technology register)
DEST[31:0] ← SRC;
DEST[63:32] ← 00000000H;
MOVD (when destination operand is XMM register)
DEST[31:0] ← SRC;
DEST[127:32] ← 000000000000000000000000H;
DEST[VLMAX-1:128] (Unmodified)
MOVD (when source operand is MMX technology or XMM register)
DEST ← SRC[31:0];
VMOVD (VEX-encoded version when destination is an XMM register)
DEST[31:0]  SRC[31:0]
DEST[VLMAX-1:32]  0
MOVQ (when destination operand is XMM register)
DEST[63:0] ← SRC[63:0];
DEST[127:64] ← 0000000000000000H;
DEST[VLMAX-1:128] (Unmodified)
MOVQ (when destination operand is r/m64)
DEST[63:0] ← SRC[63:0];
MOVQ (when source operand is XMM register or r/m64)
DEST ← SRC[63:0];
VMOVQ (VEX-encoded version when destination is an XMM register)
DEST[63:0]  SRC[63:0]
DEST[VLMAX-1:64]  0
