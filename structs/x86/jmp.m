opcode EB cb
  instruction jmp rel8
  encoding D
  bit64 true
  legacy true
  description Jump short, RIP = RIP + 8-bit displacement sign extended to 64-bits

opcode E9 cw
  instruction jmp rel16
  encoding D
  bit64 N.S.
  legacy true
  description Jump near, relative, displacement relative to next instruction. Not supported in 64-bit mode.

opcode E9 cd
  instruction jmp rel32
  encoding D
  bit64 true
  legacy true
  description Jump near, relative, RIP = RIP + 32-bit displacement sign extended to 64-bits

opcode FF /4
  instruction jmp r/m16
  encoding M
  bit64 N.S.
  legacy true
  description Jump near, absolute indirect, address = zeroextended r/m16. Not supported in 64-bit mode.

opcode FF /4
  instruction jmp r/m32
  encoding M
  bit64 N.S.
  legacy true
  description Jump near, absolute indirect, address given in r/m32. Not supported in 64-bit mode.

opcode FF /4
  instruction jmp r/m64
  encoding M
  bit64 true
  legacy N.E.
  description Jump near, absolute indirect, RIP = 64-Bit offset from register or memory

opcode EA cd
  instruction jmp ptr16:16
  encoding D
  bit64 Inv.
  legacy true
  description Jump far, absolute, address given in operand

opcode EA cp
  instruction jmp ptr16:32
  encoding D
  bit64 Inv.
  legacy true
  description Jump far, absolute, address given in operand

opcode FF /5
  instruction jmp m16:16
  encoding D
  bit64 true
  legacy true
  description Jump far, absolute indirect, address given in m16:16

opcode FF /5
  instruction jmp m16:32
  encoding D
  bit64 true
  legacy true
  description Jump far, absolute indirect, address given in m16:32.

opcode REX.W + FF /5
  instruction jmp m16:64
  encoding D
  bit64 true
  legacy N.E.
  description Jump far, absolute indirect, address given in m16:64.

---

D Offset NA NA NA
M ModRM:r/m (r) NA NA NA
