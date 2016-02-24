
- http://stackoverflow.com/questions/2782010/how-to-dynamically-allocate-memory-using-assembly-and-system-calls-under-linux
- http://baptiste-wicht.com/posts/2011/11/dynamic-memory-allocation-intel-assembly-linux.html
- http://kipirvine.com/asm/articles/heap_allocation.pdf
- http://stackoverflow.com/questions/24520474/mmap-a-block-device-on-mac-os-x
- https://www.quora.com/How-do-the-brk-and-mmap-system-calls-work-in-the-Linux-kernel
- http://code.woboq.org/userspace/glibc/malloc/malloc.c.html
- http://stackoverflow.com/questions/22586532/assembly-x86-brk-call-use

`brk` and `mmap` for allocating memory for mac/linux, or `HeapAlloc` for windows

```asm
    mov eax, 192    ; mmap2
    xor ebx, ebx    ; addr = NULL
    mov ecx, 4096   ; len = 4096
    mov edx, $7     ; prot = PROT_READ|PROT_WRITE|PROT_EXEC
    mov esi, $22    ; flags = MAP_PRIVATE|MAP_ANONYMOUS
    mov edi, -1     ; fd = -1
    xor ebp, ebp    ; offset = 0 (4096*0)
    int $80         ; make call
```

```c
        malloc_zone_t **new_zones = mmap(0, alloc_size, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, VM_MAKE_TAG(VM_MEMORY_MALLOC), 0);
```

- http://www.opensource.apple.com/source/Libc/Libc-583/gen/malloc.c
- http://en.wikipedia.org/wiki/Slab_allocation
- https://github.com/ReturnInfinity/BareMetal-OS/blob/b9d6919962202466f71130f46e961c57b7325347/os/sysvar.asm#L52

```asm
;          1         2         3         4         5         6         7
;01234567890123456789012345678901234567890123456789012345678901234567890
;=======================================================================
;+---------------------------------------------------------------------+
;|                                                                     |
;| Example using brk() system call for dynamic memory allocations.     |
;|                                                                     |
;| DON'T CONFUSE that brk() used in C Function is different with brk() |
;| systemcall (systemcall 45 for x86 ASM).                             |
;|                                                                     |
;| In C program, brk() returns -1 if failed. But in assembly program   |
;| that uses brk() systemcall (systemcall 45), the brk() returns       |
;| the current break address if failed.                                |
;|                                                                     |
;| In C program, when brk() success, it returns 0. But, brk()          |
;| systemcall returns the new break address if success.                |
;|                                                                     |
;+---------------------------------------------------------------------+
;|       AUTHOR: Nik Mohamad Aizuddin bin Nik Azmi                     |
;|        EMAIL: nickaizuddin93@gmail.com                              |
;| DATE CREATED: 13/OCT/2014                                           |
;+---------------------------------------------------------------------+
;|     LANGUAGE: x86 Assembly Language                                 |
;|    ASSEMBLER: NASM                                                  |
;|       SYNTAX: Intel                                                 |
;| ARCHITECTURE: i386, i586, i686, x86_64, ia32                        |
;|       KERNEL: Linux 32-bit                                          |
;|       FORMAT: ELF32                                                 |
;+---------------------------------------------------------------------+
;| Do whatever you want with this source code :)                       |
;+---------------------------------------------------------------------+
;=======================================================================

; ---- section read/write data -----------------------------------------
section .data

initial_break:
    dd 0x00000000
current_break:
    dd 0x00000000
new_break:
    dd 0x00000000

; ---- section instruction codes ---------------------------------------
section .text

; etext, edata, end, have nothing to do with brk().
extern etext ;The address of the end of the text segment.
extern edata ;The address of the end of the initialized data segment.
extern end   ;The address of the end of the uninitialized (bss segment).
; In gdb, type "x/x etext", "x/x edata", "x/x end" to check the value.
; Use "$ man 3 end" for more info.

global _start
_start:

;+---------------------------------------------------------------------+
;| About brk() system call, please read only at "LINUX NOTES" in       |
;| "$ man 2 brk" manpage.                                              |
;|                                                                     |
;| BECAUSE brk() in C Function is DIFFERENT WITH brk() in systemcall!  |
;|                                                                     |
;| As it says, the brk() system call returns current break address     |
;| if failed. If success, brk() returns new break address.             |
;|                                                                     |
;| To get the current break address, pass any value that makes this    |
;| system call failed.                                                 |
;+---------------------------------------------------------------------+

; get current break address
;-----------------------------------------------------------------------
    mov    eax, 45              ;system call brk
    mov    ebx, 0               ;invalid address
    int    0x80
    mov    [current_break], eax
    mov    [initial_break], eax

; allocate 8 bytes of memory on the heap
;-----------------------------------------------------------------------
    mov    eax, 45              ;system call brk
    mov    ebx, [current_break]
    add    ebx, 8               ;allocate 8 bytes
    int    0x80
    mov    [new_break], eax
    mov    [current_break], eax

; allocate another 67108864 bytes of memory on the heap
;-----------------------------------------------------------------------
    mov    eax, 45              ;system call brk
    mov    ebx, [current_break]
    add    ebx, 67108864        ;allocate 67108864 bytes
    int    0x80
    mov    [new_break], eax

.b0: ;Break the program here in GDB. Also watch the memory used by
     ;using "$ top" command. You'll noticed the memory used by this
     ;program dropped from 65688kb to 148kb.

    mov    [current_break], eax

; free all allocated memory on the heap
;-----------------------------------------------------------------------
    mov    eax, 45              ;system call brk
    mov    ebx, [initial_break] ;reset break address to its initial addr
    int    0x80
    mov    [new_break], eax

.b1: ;Break the program here in GDB, to see the memory drop.

.exit:
    mov    eax, 0x01 ;system call exit
    mov    ebx, 0x00 ;return value := 0
    int    0x80
```

- http://gcc.gnu.org/onlinedocs/gcc-4.7.2/gcc/Extended-Asm.html
- http://en.wikipedia.org/wiki/Memory_management#DYNAMIC

C provides an implementation of dynamic memory allocation via `malloc`. The data structure that implements this is called the "heap".

- http://stackoverflow.com/questions/79923/what-and-where-are-the-stack-and-heap
- The size of the stack is set when a thread is created. The size of the heap is set on application startup, but can grow as space is needed (the allocator requests more memory from the operating system).
- http://en.wikipedia.org/wiki/C_dynamic_memory_allocation
