
%macro exit 0
  mov rax, sysexit
  mov rdi, stdin
  syscall
%endmacro
