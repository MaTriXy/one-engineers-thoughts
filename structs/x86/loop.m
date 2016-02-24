opcode E2 cb
  instruction loop rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Decrement count; jump short if count ≠ 0.

opcode E1 cb
  instruction loop rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Decrement count; jump short if count ≠ 0 and ZF = 1.

opcode E0 cb
  instruction loop rel8
  encoding D
  bit64 Valid
  legacy Valid
  description Decrement count; jump short if count ≠ 0 and ZF = 0.

---

D Offset NA NA NA
