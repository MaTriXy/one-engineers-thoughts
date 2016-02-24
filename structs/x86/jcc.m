opcode 77 cb
  instruction JA rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if above (CF=0 and ZF=0).

opcode 73 cb
  instruction JAE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if above or equal (CF=0).

opcode 72 cb
  instruction JB rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if below (CF=1).

opcode 76 cb
  instruction JBE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if below or equal (CF=1 or ZF=1).

opcode 72 cb
  instruction JC rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if carry (CF=1).

opcode E3 cb
  instruction JCXZ rel8
  encoding D
  bit64 N.E.
  legacy Valid
  description Jump short if CX register is 0.

opcode E3 cb
  instruction JECXZ rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if ECX register is 0.

opcode E3 cb
  instruction JRCXZ rel8
  encoding D
  bit64 Valid
  legacy N.E.
  description Jump short if RCX register is 0.

opcode 74 cb
  instruction JE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if equal (ZF=1).

opcode 7F cb
  instruction JG rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if greater (ZF=0 and SF=OF).

opcode 7D cb
  instruction JGE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if greater or equal (SF=OF).

opcode 7C cb
  instruction JL rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if less (SF≠ OF).

opcode 7E cb
  instruction JLE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if less or equal (ZF=1 or SF≠ OF).

opcode 76 cb
  instruction JNA rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not above (CF=1 or ZF=1).

opcode 72 cb
  instruction JNAE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not above or equal (CF=1).

opcode 73 cb
  instruction JNB rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not below (CF=0).

opcode 77 cb
  instruction JNBE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not below or equal (CF=0 and ZF=0).

opcode 73 cb
  instruction JNC rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not carry (CF=0).

opcode 75 cb
  instruction JNE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not equal (ZF=0).

opcode 7E cb
  instruction JNG rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not greater (ZF=1 or SF≠ OF).

opcode 7C cb
  instruction JNGE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not greater or equal (SF≠ OF).

opcode 7D cb
  instruction JNL rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not less (SF=OF).

opcode 7F cb
  instruction JNLE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not less or equal (ZF=0 and SF=OF).

opcode 71 cb
  instruction JNO rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not overflow (OF=0).

opcode 7B cb
  instruction JNP rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not parity (PF=0).

opcode 79 cb
  instruction JNS rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not sign (SF=0).

opcode 75 cb
  instruction JNZ rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if not zero (ZF=0).

opcode 70 cb
  instruction JO rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if overflow (OF=1).

opcode 7A cb
  instruction JP rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if parity (PF=1).

opcode 7A cb
  instruction JPE rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if parity even (PF=1).

opcode 7B cb
  instruction JPO rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if parity odd (PF=0).

opcode 78 cb
  instruction JS rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if sign (SF=1).

opcode 74 cb
  instruction JZ rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Jump short if zero (ZF = 1).

opcode 0F 87 cw
  instruction JA rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if above (CF=0 and ZF=0). Not supported in 64-bit mode.

opcode 0F 87 cd
  instruction JA rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if above (CF=0 and ZF=0).

opcode 0F 83 cw
  instruction JAE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if above or equal (CF=0). Not supported in 64-bit mode.

opcode 0F 83 cd
  instruction JAE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if above or equal (CF=0).

opcode 0F 82 cw
  instruction JB rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if below (CF=1). Not supported in 64-bit mode.

opcode 0F 82 cd
  instruction JB rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if below (CF=1).

opcode 0F 86 cw
  instruction JBE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if below or equal (CF=1 or ZF=1). Not supported in 64-bit mode.

opcode 0F 86 cd
  instruction JBE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if below or equal (CF=1 or ZF=1).

opcode 0F 82 cw
  instruction JC rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if carry (CF=1). Not supported in 64-bit mode.

opcode 0F 82 cd
  instruction JC rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if carry (CF=1).

opcode 0F 84 cw
  instruction JE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if equal (ZF=1). Not supported in 64-bit mode.

opcode 0F 84 cd
  instruction JE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if equal (ZF=1).

opcode 0F 84 cw
  instruction JZ rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if 0 (ZF=1). Not supported in 64-bit mode.

opcode 0F 84 cd
  instruction JZ rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if 0 (ZF=1).

opcode 0F 8F cw
  instruction JG rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if greater (ZF=0 and SF=OF). Not supported in 64-bit mode.

opcode 0F 8F cd
  instruction JG rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if greater (ZF=0 and SF=OF).

opcode 0F 8D cw
  instruction JGE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if greater or equal (SF=OF). Not supported in 64-bit mode.

opcode 0F 8D cd
  instruction JGE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if greater or equal (SF=OF).

opcode 0F 8C cw
  instruction JL rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if less (SF≠ OF). Not supported in 64-bit mode.

opcode 0F 8C cd
  instruction JL rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if less (SF≠ OF).

opcode 0F 8E cw
  instruction JLE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if less or equal (ZF=1 or SF≠ OF). Not supported in 64-bit mode.

opcode 0F 8E cd
  instruction JLE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if less or equal (ZF=1 or SF≠ OF).

opcode 0F 86 cw
  instruction JNA rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not above (CF=1 or ZF=1). Not supported in 64-bit mode.

opcode 0F 86 cd
  instruction JNA rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not above (CF=1 or ZF=1).

opcode 0F 82 cw
  instruction JNAE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not above or equal (CF=1). Not supported in 64-bit mode.

opcode 0F 82 cd
  instruction JNAE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not above or equal (CF=1).

opcode 0F 83 cw
  instruction JNB rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not below (CF=0). Not supported in 64-bit mode.

opcode 0F 83 cd
  instruction JNB rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not below (CF=0).

opcode 0F 87 cw
  instruction JNBE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not below or equal (CF=0 and ZF=0). Not supported in 64-bit mode.

opcode 0F 87 cd
  instruction JNBE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not below or equal (CF=0 and ZF=0).

opcode 0F 83 cw
  instruction JNC rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not carry (CF=0). Not supported in 64-bit mode.

opcode 0F 83 cd
  instruction JNC rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not carry (CF=0).

opcode 0F 85 cw
  instruction JNE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not equal (ZF=0). Not supported in 64-bit mode.

opcode 0F 85 cd
  instruction JNE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not equal (ZF=0).

opcode 0F 8E cw
  instruction JNG rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not greater (ZF=1 or SF≠ OF). Not supported in 64-bit mode.

opcode 0F 8E cd
  instruction JNG rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not greater (ZF=1 or SF≠ OF).

opcode 0F 8C cw
  instruction JNGE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not greater or equal (SF≠ OF). Not supported in 64-bit mode.

opcode 0F 8C cd
  instruction JNGE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not greater or equal (SF≠ OF).

opcode 0F 8D cw
  instruction JNL rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not less (SF=OF). Not supported in 64-bit mode.

opcode 0F 8D cd
  instruction JNL rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not less (SF=OF).

opcode 0F 8F cw
  instruction JNLE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not less or equal (ZF=0 and SF=OF). Not supported in 64-bit mode.

opcode 0F 8F cd
  instruction JNLE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not less or equal (ZF=0 and SF=OF).

opcode 0F 81 cw
  instruction JNO rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not overflow (OF=0). Not supported in 64-bit mode.

opcode 0F 81 cd
  instruction JNO rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not overflow (OF=0).

opcode 0F 8B cw
  instruction JNP rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not parity (PF=0). Not supported in 64-bit mode.

opcode 0F 8B cd
  instruction JNP rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not parity (PF=0).

opcode 0F 89 cw
  instruction JNS rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not sign (SF=0). Not supported in 64-bit mode.

opcode 0F 89 cd
  instruction JNS rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not sign (SF=0).

opcode 0F 85 cw
  instruction JNZ rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if not zero (ZF=0). Not supported in 64-bit mode.

opcode 0F 85 cd
  instruction JNZ rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if not zero (ZF=0).

opcode 0F 80 cw
  instruction JO rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if overflow (OF=1). Not supported in 64-bit mode.

opcode 0F 80 cd
  instruction JO rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if overflow (OF=1).

opcode 0F 8A cw
  instruction JP rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if parity (PF=1). Not supported in 64-bit mode.

opcode 0F 8A cd
  instruction JP rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if parity (PF=1).

opcode 0F 8A cw
  instruction JPE rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if parity even (PF=1). Not supported in 64-bit mode.

opcode 0F 8A cd
  instruction JPE rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if parity even (PF=1).

opcode 0F 8B cw
  instruction JPO rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if parity odd (PF=0). Not supported in 64-bit mode.

opcode 0F 8B cd
  instruction JPO rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if parity odd (PF=0).

opcode 0F 88 cw
  instruction JS rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if sign (SF=1). Not supported in 64- bit mode.

opcode 0F 88 cd
  instruction JS rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if sign (SF=1).

opcode 0F 84 cw
  instruction JZ rel16
  encoding D
  bit64 N.S.
  legacy Valid
  description Jump near if 0 (ZF=1). Not supported in 64-bit mode.

opcode 0F 84 cd
  instruction JZ rel32
  encoding D
  bit64 Valid
  legacy Valid
  description Jump near if 0 (ZF=1).


---

D Offset NA NA NA
