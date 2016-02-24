
bits 32
extern strlen
extern malloc
global main

;
; Includes.
;

%include 'x86-32/constants.asm'
%include 'x86-32/macros.asm'

;
; Main.
;

section .text
; In x86-32 parameters for linux system call are passed using registers. %eax for syscall_number %ebx, %ecx, %edx, %esi, %edi, %ebp are used for passing 6 parameters to system calls.
; In x86-32 parameters were passed on stack. last paramter was pushed first on to the stack until all parameters are done and then call instruction was executed. This is used for calling C library (libc) functions on linux from assembly.
main:
  ; pop ebx    ;; pops return address to libc caller (main usually)
  ; pop ebx    ;; pops argc
  ; pop ebx    ;; pops argv !!WAS!!: ; pop pointer to filename into ebx
  pop ecx ; Return address
  pop ecx ; argc
  pop ecx ; argv
  mov ecx, [ecx+4] ; argv[1]

  push ecx
  call strlen
  mov edx, eax ; count
  pop ecx ; buf

  ; http://stackoverflow.com/questions/3347747/reading-from-a-file-in-assembly
  mov eax, 4 ; sys_write
  mov ebx, 1 ; stdout
  int 0x80
  print msg, len
  exit

;
; Data.
;

section .data
msg char '', linefeed
len equ $ - msg
