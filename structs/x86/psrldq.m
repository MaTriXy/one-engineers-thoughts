66 0F 73 /3 ib PSRLDQ xmm1, imm8 MI V/V SSE2 Shift xmm1 right by imm8 while shifting in 0s.
VEX.NDD.128.66.0F.WIG 73 /3 ib VPSRLDQ xmm1, xmm2, imm8 VMI V/V AVX Shift xmm2 right by imm8 bytes while shifting in 0s.
VEX.NDD.256.66.0F.WIG 73 /3 ib VPSRLDQ ymm1, ymm2, imm8 VMI V/V AVX2 Shift ymm1 right by imm8 bytes while shifting in 0s.

MI ModRM:r/m (r, w) imm8 NA NA
VMI VEX.vvvv (w) ModRM:r/m (r) imm8 NA
