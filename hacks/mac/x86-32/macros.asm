
%macro exit 0
  mov eax, sysexit
  mov edx, stdin
  syscall
%endmacro
