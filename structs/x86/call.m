opcode E8 cw
  instruction call rel16
  encoding M
  bit64 N.S.
  legacy Valid
  description Call near, relative, displacement relative to next instruction.

opcode E8 cd
  instruction call rel32
  encoding M
  bit64 Valid
  legacy Valid
  description Call near, relative, displacement relative to next instruction. 32-bit displacement sign extended to 64-bits in 64-bit mode.

opcode FF /2
  instruction call r/m16
  encoding M
  bit64 N.E.
  legacy Valid
  description Call near, absolute indirect, address given in r/m16.

opcode FF /2
  instruction call r/m32
  encoding M
  bit64 N.E.
  legacy Valid
  description Call near, absolute indirect, address given in r/m32.

opcode FF /2
  instruction call r/m64
  encoding M
  bit64 Valid
  legacy N.E.
  description Call near, absolute indirect, address given in r/m64.

opcode 9A cd
  instruction call ptr16:16
  encoding D
  bit64 Invalid
  legacy Valid
  description Call far, absolute, address given in operand.

opcode 9A cp
  instruction call ptr16:32
  encoding D
  bit64 Invalid
  legacy Valid
  description Call far, absolute, address given in operand.

opcode FF /3
  instruction call m16:16
  encoding M
  bit64 Valid
  legacy Valid
  description Call far, absolute indirect address given in m16:16. In 32-bit mode: if selector points to a gate, then RIP = 32-bit zero extended displacement taken from gate; else RIP = zero extended 16-bit offset from far pointer referenced in the instruction.

opcode FF /3
  instruction call m16:32
  encoding M
  bit64 Valid
  legacy Valid
  description In 64-bit mode: If selector points to a gate, then RIP = 64-bit displacement taken from gate; else RIP = zero extended 32-bit offset from far pointer referenced in the instruction.

opcode REX.W + FF /3
  instruction call m16:64
  encoding M
  bit64 Valid
  legacy N.E.
  description In 64-bit mode: If selector points to a gate, then RIP = 64-bit displacement taken from gate; else RIP = 64-bit offset from far pointer referenced in the instruction.

---
D Offset NA NA NA
M ModRM:r/m (r) NA NA NA
