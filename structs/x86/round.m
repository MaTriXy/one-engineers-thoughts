F2 0F 2D /r CVTSD2SI r32, xmm/m64 RM V/V SSE2 Convert one double-precision floating-point value from xmm/m64 to one signed doubleword integer r32.
F2 REX.W 0F 2D /r CVTSD2SI r64, xmm/m64 RM V/N.E. SSE2 Convert one double-precision floating-point value from xmm/m64 to one signed quadword integer sign-extended into r64.
VEX.LIG.F2.0F.W0 2D /r VCVTSD2SI r32, xmm1/m64 RM V/V AVX Convert one double precision floating-point value from xmm1/m64 to one signed doubleword integer r32.
VEX.LIG.F2.0F.W1 2D /r VCVTSD2SI r64, xmm1/m64 RM V/N.E.1

# 1. Encoding the VEX prefix with VEX.W=1 in non-64-bit mode is ignored.
AVX Convert one double precision floating-point
value from xmm1/m64 to one signed
quadword integer sign-extended into r64.

RM ModRM:reg (w) ModRM:r/m (r) NA NA

SIMD Floating-Point Exceptions
Invalid, Precision.
Other Exceptions
See Exceptions Type 3; additionally
#UD If VEX.vvvv ≠ 1111B.
