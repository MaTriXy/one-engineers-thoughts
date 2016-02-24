
;
; clib functions.
;

extern strlen
extern malloc

;
; system macros.
;

%macro print 2
  write stdout, $1, $2
%endmacro

%macro exit 0
  syscall0 sysexit
%endmacro

%macro read 3
  syscall3 sysread, %1, %2, %3
%endmacro

%macro write 3
  syscall3 syswrite, %1, %2, %3
%endmacro

%macro open 3
  syscall2 sysopen, %1, %2, %3
%endmacro

%macro close 1
  syscall1 sysclose, $1
%endmacro

;
; TODO: Make into storing parsed argv in memory.
;

%macro print_argv 0
  ; pop ebx    ;; pops return address to libc caller (main usually)
  ; pop ebx    ;; pops argc
  ; pop ebx    ;; pops argv !!WAS!!: ; pop pointer to filename into ebx
  pop ecx ; Return address
  pop ecx ; argc
  pop ecx ; argv
  mov ecx, [ecx+4] ; argv[1]

  push ecx
  call strlen
  ; ? how do you know what register it's on? calling convention linux
  mov edx, eax ; count
  pop ecx ; buf

  mov eax, 4 ; sys_write
  mov ebx, 1 ; stdout
  int 0x80
%endmacro
