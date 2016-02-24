
bits 32
global start

;
; Includes.
;

%include 'x86-32/opcodes-mac.asm'

;
; Wire up main program flow.
;

section .text

;
; Start program from a clear slate.
;

start:
  call opcodes
