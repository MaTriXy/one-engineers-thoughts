
bits 64
global start

;
; Includes.
;

%include 'x86-64/opcodes-mac.asm'

;
; Wire up main program flow.
;

section .text

;
; Start program from a clear slate.
;

start:
  call opcodes
