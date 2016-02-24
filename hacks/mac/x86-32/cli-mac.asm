
cli:
  pop ebx   ; argc
  pop ebx   ; argv[0]
  pop ebx   ; the first real arg, a filename
  mov eax,5   ; the syscall number for open()
        ; we already have the filename in ebx
  mov ecx,0   ; O_RDONLY, defined in fcntl.h
  int 80h   ; call the kernel

        ; now we have a file descriptor in eax
  test  eax,eax   ; lets make sure it is valid
  jns file_function ; if the file descriptor does not have the
        ; sign flag ( which means it is less than 0 )
        ; jump to file_function
  mov ebx,eax   ; there was an error, save the errno in ebx
  mov eax,1   ; put the exit syscall number in eax
  int 80h   ; bail out
