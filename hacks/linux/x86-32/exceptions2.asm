; signal(SIGSEGV, my_signal_handler);

; example for exception handlig
format ELF executable
entry start

SYSCALL_EXIT   equ 1  ; syscall to function exit()
SYSCALL_WRITE  equ 4  ; syscall to function write()
SYSCALL_SIGNAL equ 48 ; syscall to function signal()
SIGSEGV        equ 11 ; signal id SIGSEGV
STDERR         equ 2  ; standard error

section readable writeable
signal_handler_msg db 'Hmmm, SIGSEGV signal received', 0xa
signal_handler_msg_size = $-signal_handler_msg
reborn_msg db "but I'm still alive", 0xa
reborn_msg_size = $-reborn_msg

section readable executable
start:
; install signal handler
        mov     eax, SYSCALL_SIGNAL
        mov     ebx, SIGSEGV
        mov     ecx, my_signal_handler
        int     0x80
; do something dirty
        push    dword [fs:0]
; print reborn message
.print_reborn_msg:
        mov     eax, SYSCALL_WRITE
        mov     ebx, STDERR
        mov     ecx, reborn_msg
        mov     edx, reborn_msg_size
        int     0x80
.finish:
        xor     ebx, ebx
        mov     eax, SYSCALL_EXIT
        int     0x80

my_signal_handler:
; print exception message
        mov     eax, SYSCALL_WRITE
        mov     ebx, STDERR
        mov     ecx, signal_handler_msg
        mov     edx, signal_handler_msg_size
        int     0x80
; remove return adress from the stack
        add     esp, 4
; jump after the erroneous code
        jmp     start.print_reborn_msg
