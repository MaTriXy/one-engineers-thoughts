
bits 64
global start
section .text

;
; List of instruction/operand combos following intel docs.
;
; http://home.myfairpoint.net/fbkotler/nasmdocc.html
;

opcodes:
  call push_instructions
  call push_instructions

;
; All `push` instructions.
;
; pushing a value (not necessarily stored in a register) means writing it to the stack.
;
; popping means restoring whatever is on top of the stack into a register.
;

push_instructions:

  ; dynamic opcode output
  push 1
  push 2
  push 3
  push 10
  push 126
  push 127
  push 128
  push -129
  push -128
  push -127
  push -1

  push -32769
  push -32768
  push 32767
  push 32768
