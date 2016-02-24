
%include 'x86-32/syscalls.asm'
%include 'x86-32/stdlib.asm'

%macro lowercase 1
  cmp  'a', $1
  jl   outside_range
  cmp  'z', $1
  jg   outside_range
  or   0x20, $1
%endmacro

%macro uppercase 1
  cmp  'a', $1
  jl   outside_range
  cmp  'z', $1
  jg   outside_range
  and  0xBF, $1
%endmacro

loop_chars:
  mov dl, 'A' ; move character A to DL register
  mov cx, 10 ; move decimal 10 to cx register, used to loop from A to J
print_loop:
  call write_char ; print the current character
  inc dl ; increase the value of dl register (next character)
  loop print_loop ; loop until we print 10 characters
  exit
write_char:
  mov ah, 02h ; print the character
  int 0x80
  ret ; return to the caller
