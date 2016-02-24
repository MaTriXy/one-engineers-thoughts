
bits 32
global start
section .text

;
; List of instruction/operand combos following intel docs.
;
; http://home.myfairpoint.net/fbkotler/nasmdocc.html
;

opcodes:
  ; monitor
  ; cpuid
  ; fcos
  ; RDRAND r16
  ; RDRAND r32
  ; loop rel8
  ; loope rel8
  ; loopne rel8
  ; lods
  ; rdpmc

  call special_instructions
  call special_instructions

  call return_instructions
  call return_instructions

  call jump_instructions
  call jump_instructions

  call push_instructions
  call push_instructions

  call cmp_instructions
  call cmp_instructions

  call mov_instructions
  call mov_instructions

  call pop_instructions
  call pop_instructions

  call lea_instructions

;
; All `lea` instructions.
;

lea_instructions:
  lea edi, [ebx+4*esi]
  lea eax, [ebx]
  lea eax, [ecx]

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

  push -2147483648
  push -2147483647
  push 2147483648
  push 2147483649

  ; static opcode output
  push cs
  push ss
  push ds
  push es
  push fs
  push gs

  ; push AL
  ; push CL
  ; push DL
  ; push BL
  ; push AH
  ; push CH
  ; push DH
  ; push BH
  ; push BPL
  ; push SPL
  ; push DIL
  ; push SIL

  push AX
  push CX
  push DX
  push BX
  push SP
  push BP
  push SI
  push DI

  push eax
  push ecx
  push edx
  push ebx
  push esp
  push ebp
  push esi
  push edi

;
; All `pop` instructions.
;

pop_instructions:
  ; dynamic
  pop eax
  pop ecx
  pop edx
  pop ebx
  pop esp
  pop ebp
  pop esi
  pop edi

  pop word [eax]
  pop word [ecx]
  pop word [edx]
  pop word [ebx]
  pop word [esp]
  pop word [ebp]
  pop word [esi]
  pop word [edi]

  ; you can encode 1 instruction into two different opcodes
  pop dword [eax] ; an example of m32
  pop dword [ecx]
  pop dword [edx]
  pop dword [ebx]
  pop dword [esp]
  pop dword [ebp]
  pop dword [esi]
  pop dword [edi]

  ; static
  pop ds
  pop es
  pop ss
  pop fs
  pop gS

;
; All `mov` instructions.
;

mov_instructions:
  mov ax, ax
  mov ax, [wordvar]
  mov ax, [wordvar+1]
  mov ax, [es:wordvar+bx]
  mov eax, [ebx*2+ecx]
  mov ax, [bp+di+8]
  mov eax, 'abcd'
  mov bx, 100h
  mov si, 20h
  mov al, [bx + si + 3]

;
; All `return` instructions.
;

return_instructions:
  ret

;
; Special instructions.
;

special_instructions:
  syscall
  int 80h

;
; All `cmp` instructions.
;

cmp_instructions:
  cmp ecx, edx

;
; All jump instructions.
;

jump_instructions:
  je push_instructions
  jne cmp_instructions
  ; ja ; Jump if above
  ; jae ; Jump if above or Equal
  ; jb ; Jump if below
  ; jbe ; Jump if below or Equal
  ; jc ; Jump if Carry
  ; jcxz ; Jump if CX is Zero
  ; je ; Jump if Equal
  ; jecxz ; Jump if ECX is Zero
  ; jz ; Jump if Zero
  ; jg ; Jump if greater
  ; jge ; Jump if greater or Equal
  ; jl ; Jump if less
  ; jle ; Jump if less or Equal
  ; jmp ; Unconditional jump
  ; jna ; Jump Not above
  ; jnae ; Jump Not above or Equal
  ; jnc ; Jump if Not Carry
  ; jncxz ; Jump if CX Not Zero
  ; jne ; Jump if Not Equal
  ; jng ; Jump if Not greater
  ; jnge ; Jump if Not greater or Equal
  ; jnl ; Jump if Not less
  ; jnle ; Jump if Not less or Equal
  ; jno ; Jump if Not Overflow
  ; jnp ; Jump if Not Parity
  ; jns ; Jump if Not signed
  ; jnz ; Jump if Not Zero
  ; jo ; Jump if Overflow
  ; jp ; Jump if Parity
  ; jpe ; Jump if Parity Even
  ; jpo ; Jump if Parity Odd
  ; js ; Jump if signed
  ; jz ; Jump if Zero

message:
  db 'Hola, mundo', 0
wordvar dw 123
