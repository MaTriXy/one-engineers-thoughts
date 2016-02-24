
%macro syscall6 7
  mov ebp, %7 ; arg 6
  mov edi, %6 ; arg 5
  mov esi, %5 ; arg 4
  mov edx, %4 ; arg 3
  mov ecx, %3 ; arg 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall5 6
  mov edi, %6 ; arg 5
  mov esi, %5 ; arg 4
  mov edx, %4 ; arg 3
  mov ecx, %3 ; arg 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall4 5
  mov esi, %5 ; arg 4
  mov edx, %4 ; arg 3
  mov ecx, %3 ; arg 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall3 4
  mov edx, %4 ; arg 3
  mov ecx, %3 ; arg 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall2 3
  mov ecx, %3 ; arg 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall1 2
  mov ebx, %2 ; arg 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro

%macro syscall0 1
  mov eax, %1 ; syscall number
  int 0x80
%endmacro
