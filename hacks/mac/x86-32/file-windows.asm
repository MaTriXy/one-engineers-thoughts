bits 32
global start

extern _ExitProcess@4
extern _GetStdHandle@4
extern _WriteFile@20

section .data

  message db 'hello world!', 0dh, 0ah
  message_end:

  bytes dd 0


section .text

  start:

    ; (1) stdout = GetStdHandle(STD_OUTPUT_HANDLE);
    ; (2) WriteFile(stdout, message, strlen(message), &bytes, 0);
    ; (3) ExitProcess(0);

    push -11
    call _GetStdHandle@4

    push 0
    push bytes
    push (message_end - message)
    push message
    push eax
    call _WriteFile@20

    push 0
    call _ExitProcess@4
