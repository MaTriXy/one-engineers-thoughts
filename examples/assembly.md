
disassemble
  example mac
    $ otool -tvV c/memcpy.o

  example linux
    gcc -c -g example.c -o example.o
    objdump -d -M intel -S example.o > example.s

debugging comments
```asm
  ; get the filename in ebx
    pop   ebx               ; argc
    pop   ebx               ; argv[0]
    pop   ebx               ; the first real arg, a filename

  ; open the file
    mov   eax,  5           ; open(
    mov   ecx,  0           ;   read-only mode
    int   80h               ; );

  ; read the file
    mov     eax,  3         ; read(
    mov     ebx,  eax       ;   file_descriptor,
    mov     ecx,  buf       ;   *buf,
    mov     edx,  bufsize   ;   *bufsize
    int     80h             ; );

  ; write to STDOUT
    mov     eax,  4         ; write(
    mov     ebx,  1         ;   STDOUT,
  ; mov     ecx,  buf       ;   *buf
    int     80h             ; );

  ; exit
    mov   eax,  1           ; exit(
    mov   ebx,  0           ;   0
    int   80h               ; );
```
