; example for exception handlig
format ELF executable
entry start

SYSCALL_EXIT  equ 1 ; syscall to function exit()
SYSCALL_WRITE equ 4 ; syscall to function write()
STDERR        equ 2 ; standard error

EXCEPTION_ID_DIVISION_BY_ZERO equ 2 ; exception id for 'division by zero'

section readable writeable
div_by_zero_exception_msg db 'Exception: Division by zero', 0xa
div_by_zero_exception_msg_size = $-div_by_zero_exception_msg
unknown_exception_msg db 'Exception: Unknown', 0xa
unknown_exception_msg_size = $-unknown_exception_msg

section readable executable
start:
; try
        mov     eax, 20
        mov     ebx, 0 ; <----- this will cause an exception!
; attempt to calculate eax/ebx
        call    do_complicated_calculations_1
        mov     eax, 30
        mov     ebx, 3
; attempt to calculate eax/ebx
        call    do_complicated_calculations_1
; success, set exit code to 0
        xor     ebx, ebx
        jmp     .finish
.catch_exception:
; check for exception id
        cmp     eax, EXCEPTION_ID_DIVISION_BY_ZERO
        jne     .prepare_unknown_exception_message
; prepare printing of 'division by zero' message
        mov     ecx, div_by_zero_exception_msg
        mov     edx, div_by_zero_exception_msg_size
        jmp     .print_exception_message
.prepare_unknown_exception_message:
; prepare printing of 'unknown' message
        mov     ecx, unknown_exception_msg
        mov     edx, unknown_exception_msg_size
.print_exception_message:
; print exception message
        mov     eax, SYSCALL_WRITE
        mov     ebx, STDERR
        int     0x80
; exception cought, set exit code to 1
        mov     ebx, 1
.finish:
        mov     eax, SYSCALL_EXIT
        int     0x80

;***************************************************************************
;  Some functions which the exception will jump over
;***************************************************************************
do_complicated_calculations_1:
        call    do_complicated_calculations_2
; more very long computations may be here
        ret

do_complicated_calculations_2:
        call    do_complicated_calculations_3
; more very long computations may be here
        ret

do_complicated_calculations_3:
        call    do_complicated_calculations_4
; more very long computations may be here
        ret

do_complicated_calculations_4:
        call    do_division
; more very long computations may be here
        ret

;***************************************************************************
;   Function
;      do_division
;   Description
;      tries to calculate result of eax / ebx
;      if ebx is zero then a division by zero exception is raised.
;   Parameters
;      eax - dividend
;      ebx - divisor
;   Return value
;      eax - result
;   Destroyed registers
;      eax, edx
;
;***************************************************************************
do_division:
        test    ebx, ebx
        jnz     .compute
; raise exception
        mov     eax, EXCEPTION_ID_DIVISION_BY_ZERO ; exception id is the parameter
; skip stack frames before that of start
        add     esp, 20
        jmp     start.catch_exception
.compute:
        xor     edx, edx
        div     ebx
        ret
