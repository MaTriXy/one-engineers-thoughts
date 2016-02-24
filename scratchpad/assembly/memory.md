
## experiments

- http://www.ibm.com/developerworks/library/l-memory/
- http://en.wikipedia.org/wiki/C_dynamic_memory_allocation
- http://stackoverflow.com/questions/8892953/is-there-any-better-implementation-than-malloc-calloc-for-allocating-memory-in-c
- https://github.com/emeryberger/Malloc-Implementations
- http://locklessinc.com/articles/allocator_tricks/
- https://github.com/joelpet/malloc/blob/master/best.c
- http://g.oswego.edu/dl/html/malloc.html
- https://github.com/ned14/nedmalloc

```c
#include <unistd.h>

void
malloc_init() {
  last_valid_address = sbrk(0);
  managed_memory_start = last_valid_address;
  has_initialized = 1;
}

void
free(void *firstbyte) {
  struct mem_control_block *mcb;
  // Backup from the given pointer to find the `mem_control_block`.
  mcb = firstbyte - sizeof(struct mem_control_block);
  mcb->is_available = 1;
  return;
}

void
*malloc(long numbytes) {
  void *current_location;
  struct mem_control_block *current_location_mcb;
  void *memory_location;
  if (!has_initialized) malloc_init();
  numbytes = numbytes + sizeof(struct mem_control_block);
  // Set memory_location to 0 until we find a suitable location
  memory_location = 0;
  current_location = managed_memory_start;
  // Keep going until we have searched all allocated space
  while (current_location != last_valid_address) {
    // current_location and current_location_mcb point
    // to the same address.  However, current_location_mcb
    // is of the correct type, so we can use it as a struct.
    // current_location is a void pointer so we can use it
    // to calculate addresses.

    current_location_mcb = (struct mem_control_block *)current_location;
    if (current_location_mcb->is_available) {
      if (current_location_mcb->size >= numbytes) {
        // Woohoo!  We've found an open, appropriately-size location.
        // It is no longer available
        current_location_mcb->is_available = 0;
        // We own it
        memory_location = current_location;
        break;
      }
    }
    current_location = current_location + current_location_mcb->size;
  }

  if (!memory_location) {
    // Move the program break numbytes further
    sbrk(numbytes);
    // The new memory will be where the last valid address left off
    memory_location = last_valid_address;
    // We'll move the last valid address forward numbytes
    last_valid_address = last_valid_address + numbytes;
    // We need to initialize the mem_control_block
    current_location_mcb = memory_location;
    current_location_mcb->is_available = 0;
    current_location_mcb->size = numbytes;
  }

  // Move the pointer past the mem_control_block
  memory_location = memory_location + sizeof(struct mem_control_block);
  // Return the pointer
  return memory_location;
}
```

```coffee
block memory
  property is(available), type boolean
  property size

free memory, first byte
  
# sbrk(numbytes);

move break(program), by number of bytes
```

---

- https://github.com/ned14/nedmalloc/blob/master/malloc.c.h
- https://github.com/contiki-os/contiki/wiki/Memory-allocation
- https://github.com/badgerman/dlmalloc/blob/master/malloc.c
- http://stackoverflow.com/questions/980999/what-does-multicore-assembly-language-look-like

```
     Basic algorithm:
     If a small request (< 256 bytes minus per-chunk overhead):
       1. If one exists, use a remainderless chunk in associated smallbin.
          (Remainderless means that there are too few excess bytes to
          represent as a chunk.)
       2. If it is big enough, use the dv chunk, which is normally the
          chunk adjacent to the one used for the most recent small request.
       3. If one exists, split the smallest available chunk in a bin,
          saving remainder in dv.
       4. If it is big enough, use the top chunk.
       5. If available, get memory from system and use it
     Otherwise, for a large request:
       1. Find the smallest available binned chunk that fits, and use it
          if it is better fitting than dv chunk, splitting if necessary.
       2. If better fitting than any binned chunk, use the dv chunk.
       3. If it is big enough, use the top chunk.
       4. If request size >= mmap threshold, try to directly mmap this chunk.
       5. If available, get memory from system and use it
     The ugly goto's here ensure that postaction occurs along all paths.
```

- https://github.com/contiki-os/contiki/blob/master/core/loader/elfloader-x86.c
- https://github.com/angavrilov/cl-linux-debug/blob/master/data-info/malloc.lisp
- https://github.com/kraison/vivace-graph-v3/blob/master/allocator.lisp
- https://github.com/takagi/cl-cuda/blob/5b55dd1e2a1b1159fd9c6894968ea57376469e57/src/api/memory.lisp
- allocating "stacklets" in llvm: http://llvm.org/releases/3.0/docs/SegmentedStacks.html
- http://play.golang.org/p/XzZsmGLgIp

---

```coffee
use bytes
free bytes

alias use(bytes), allocate(bytes)
alias free(bytes), deallocate(bytes)
```

- http://www.inf.udec.cl/~leo/Malloc_tutorial.pdf

Each process has its own virtual adress space dynamically translated into physical memory address space by the MMU.

- brk(2) place the break at the given adress addr and return 0 if successful, -1 otherwise. The global `errno` symbol indicate the nature of the error.
- sbrk(2) move the break by the given increment (in bytes.) Depending on system implementation, it returns the previous or the new break adress. On failure, it returns (void *)-1 and set errno. On some system sbrk accepts negative values (in order to free some mapped memory.)
- when increment is nul (i.e. sbrk(0)), the returned value is the actual break adress 

- debugging malloc by attaching "debug" property to object, only in dev mode: http://danluu.com/malloc-tutorial/
- http://en.wikipedia.org/wiki/Buddy_memory_allocation
- http://locklessinc.com/technical_allocator.shtml
- http://www.reddit.com/r/programming/comments/7o8d9/tcmalloca_faster_malloc_than_glibcs_open_sourced/
- http://www.opensource.apple.com/source/stmalloc/stmalloc-4/stmalloc.c

---

This post explains the assembly code for the `os_mem_allocate` function. The basic idea is that memory is allocated in 2MB chunks. There's an array of 65536 bytes (`os_MemoryMap`) that keeps track of which chunks are free and which are used. A value of 1 is a free chunk, a value of 2 is a used chunk. The total amount of memory that could be managed is 64K * 2MB = 128GB. Since most machines don't have that much memory there's another variable (`os_MemAmount`) that indicates the memory size of the machine (in MB).

The input to the `os_mem_allocate` function is a count, i.e. how many 2MB chunks to allocate. The function is designed to only allocate contiguous chunks. For example, if the input request is 3, then the function attempts to allocate 6MB of memory, and does this by searching the array for three 1's in a row. The return value from the function is a pointer to the allocated memory, or 0 if the request could not be satisfied.

The input count is passed in `rcx`. The code verifies that the request is for a non-zero number of chunks. An input of 0 results in a return value of 0.

    os_mem_allocate:
        push rsi              # save some registers 
        push rdx
        push rbx

        cmp rcx, 0                # Is the count 0?
        je os_mem_allocate_fail   # If YES, then return 0

The code does a roundabout calculation to point `rsi` to the last usable byte in the 65536 byte array. The last two lines of the following snippet are the most interesting. Setting the direction flag means that subsequent `lodsb` instructions will decrement `rsi`. And of course pointing `rsi` to the last usable byte in the array is the whole point of the calculation.

        xor rax, rax
        mov rsi, os_MemoryMap   # Get the address of the 65536 byte array into RSI
        mov eax, [os_MemAmount] # Get the memory size in MB into EAX
        mov rdx, rsi            # Keep os_MemoryMap in RDX for later use        
        shr eax, 1              # Divide by 2 because os_MemAmount is in MB, but chunks are 2MB

        sub rsi, 1              # in C syntax, we're calculating &array[amount/2-1], which is the address of the last usable byte in the array
        std                     # Set direction flag to backward
        add rsi, rax            # RSI now points to the last byte

Next the code has a loop that searches for N contiguous free chunks, where N is the count that was passed to the function in `rcx`. The loop scans backwards through the array looking for N 1's in a row. The loop succeeds if `rbx` reaches 0. Any time the loop finds a 2 in the array, it resets `rbx` back to N.

    os_mem_allocate_start:       
        mov rbx, rcx                 # RBX is the number of contiguous free chunks we need to find

    os_mem_allocate_nextpage:
        lodsb                  # read a byte into AL, and decrement RSI
        cmp rsi, rdx                 # if RSI has reached the beginning of the array
        je os_mem_allocate_fail      # then the loop has failed

        cmp al, 1                    # Is the chunk free?
        jne os_mem_allocate_start    # If NO, we need to restart the count

        dec rbx                      # If YES, decrement the count 
        jnz os_mem_allocate_nextpage # If the count reaches zero we've succeeded, otherwise continue looping

At this point the code has found enough contiguous chunks to satisfy the request, so now it marks all of the chunks as "used" by setting the bytes in the array to 2. The direction flag is set to forward so that subsequent `stosb` instructions will increment `rdi`. 

    os_mem_allocate_mark:      # We have a suitable free series of chunks, mark them as used
        cld                    # Set direction flag to forward

        xor rdi, rsi           # We swap RDI and RSI to keep RDI contents, but
        xor rsi, rdi           # more importantly we want RDI to point to the     
        xor rdi, rsi           # location in the array where we want to write 2's

        push rcx               # Save RCX since 'rep stosb' will modify it
        add rdi, 1             # the previous loop decremented RSI too many times
        mov al, 2              # the value 2 indicates a "used" chunk
        mov rbx, rdi           # RBX is going to be used to calculate the return value
        rep stosb              # store some 2's in the array, using the count in RCX
        mov rdi, rsi           # Restoring RDI

Finally, the function needs to come up with a pointer to return to the caller.

        sub rbx, rdx           # RBX is now an index into the 65536 byte array
        pop rcx                # Restore RCX
        shl rbx, 21            # Multiply by 2MB to convert the index to a pointer
        mov rax, rbx           # Return the pointer in RAX
        jmp os_mem_allocate_end

The next snippet handles errors by setting the return value to 0. Clearing the direction flag is important since by convention the direction is forward.

    os_mem_allocate_fail:
        cld               # Set direction flag to forward
        xor rax, rax      # Failure so set RAX to 0 (No pages allocated)

Finally, restore the registers and return the pointer.

    os_mem_allocate_end:
       pop rbx
       pop rdx
       pop rsi
       ret

Processes in UNIX have their memory divided up into three segments: the text segment (i.e., the program code), the data segment (i.e., the variables), and the stack segment. The data segment grows upward and the stack grows downward,
as shown in Fig. 1-20. Between them is a gap of unused address space. The stack
grows into the gap automatically, as needed, but expansion of the data segment is done explicitly by using a system call, brk, which specifies the new address where the data segment is to end. This call, however, is not defined by the POSIX standard, since programmers are encouraged to use the malloc library procedure for dynamically allocating storage, and the underlying implementation of malloc was not thought to be a suitable subject for standardization since few programmers use it directly and it is doubtful that anyone even notices that brk is not in POSIX. 

---

Just as the process concept creates a kind of abstract CPU to run programs, the address space creates a kind of abstract memory for programs to live in.
An address space is the set of addresses that a process can use to address memory.

```coffee
space address
  is set(address), that process, can use, to(address(memory))

fit first
fit best
fit next
fit quick
```

Each process has its own address space, independent of those belonging to other proc- esses (except in some special circumstances where processes want to share their address spaces).

The set of .com Internet domains is also an address space.

The CPU sends virtual addresses to the MMU (Memory Management Unit).

These program-generated addresses are called virtual addresses and form the virtual address space.

```asm
MOV REG, 1000
```

On computers without virtual memory, the virtual address is put directly onto the memory bus and causes the physical memory word with the same address to be read or written. When virtual memory is used, the virtual addresses do not go directly to the memory bus. Instead, they go to an MMU that maps the virtual addresses onto the physical memory addresses.

```coffee
address memory, physical
address memory, virtual

space address, virtual
  composition
    type page virtual
    unit size fixed

unit management memory
unit processing central

bus memory

page virtual
page physical

table page
frame page
fault page

# The virtual address space is divided into fixed-size units called pages.
```

In this example they are 4 KB, but page sizes from 512 bytes to 64 KB have been used in real systems. Transfers between RAM and disk are always in whole pages. 
When the program tries to access address 0, for example, using the instruction 
```asm
MOV REG,0
```
virtual address 0 is sent to the MMU. The MMU sees that this virtual address falls in page 0 (0 to 4095), which according to its mapping is page frame 2 (8192 to 12287). It thus transforms the address to 8192 and outputs address 8192 onto the bus.

- https://github.com/huy/linux_kernel_study/blob/master/memory-management-unit.md
- https://github.com/guilleiguaran/xv6/blob/master/mmu.h
- https://github.com/jaredlwong/jaredlwong/blob/master/_drafts/x86-memory-management-and-paging.md
- https://github.com/DeDiS/Determinator/blob/master/inc/mmu.h
- http://en.wikipedia.org/wiki/Memory_management_unit

In computing, a virtual address space (VAS) or address space is the set of ranges of virtual addresses that an operating system makes available to a process.

- http://en.wikipedia.org/wiki/File:Virtual_address_space_and_physical_address_space_relationship.svg
- http://en.wikipedia.org/wiki/Virtual_address_space
- intel system architecture: http://www.intel.com/Assets/en_US/PDF/manual/253668.pdf
- http://en.wikipedia.org/wiki/Processor_register
- https://www.ece.cmu.edu/~ece548/handouts/03p_mem.pdf
- http://en.wikipedia.org/wiki/Dynamic_random-access_memory#Operation_principle
- http://en.wikipedia.org/wiki/Static_random-access_memory

---

## Mac Memory

Physical Memory is RAM. CPU has a memory management unit (MMU) which translates virtual addresses into physical addresses. http://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Virtual_memory.svg/500px-Virtual_memory.svg.png

- SRAM: http://en.wikipedia.org/wiki/Static_random-access_memory
- DRAM: http://en.wikipedia.org/wiki/Dynamic_random-access_memory#Operation_principle
- The mac has "DDR3 SDRAM": http://en.wikipedia.org/wiki/DDR3_SDRAM
- https://www.apple.com/macbook-pro/specs/
- http://en.wikipedia.org/wiki/Intel_Core
- http://www.intel.com/content/www/us/en/processors/core/core-i7-processor.html
- http://en.wikipedia.org/wiki/Intel_Core#Core_i7
- http://en.wikipedia.org/wiki/CPU_cache
- Mac's Core i7 has L3 cache.
- http://en.wikipedia.org/wiki/Cache_algorithms
- Intel HD Graphics 4000
![http://i.stack.imgur.com/19dqO.gif](http://i.stack.imgur.com/19dqO.gif)
- http://ark.intel.com/products/54618/Intel-Core-i7-2637M-Processor-4M-Cache-up-to-2_80-GHz
- http://latesttechnologynews.org/intel-haswell-e-core-i7-5960x-core-i7-5930k-core-i7-5820k-prices-unveiled-asus-x99-deluxe-pictured.html
- http://en.wikipedia.org/wiki/Memory_controller
- http://www.intel.com/content/dam/doc/datasheet/5100-memory-controller-hub-chipset-datasheet.pdf

---

The heap is a continuous (in terme of virtual adresses) space of memory with three bounds. The break marks the end of the mapped memory space, that is, the part of the virtual adress space that has correspondance into real memory.

The virtual address space is what an individual program sees when it executes. The operating system kernel is then responsible for mapping addresses in the vas to physical memory, be that RAM, or system page files.

There are 2^32 virtual address space per process. They are divided into sections. If the process uses more memory than that, it stores it to disk.

Sections:

- text: program code
- data: initialized data
- bss: unitialized data
- stack

The areas of a process can be found by

```
cat /proc/process_ID/maps
```

Or on a mac:

```
sudo vmmap 332
```

`mmap`: A system call that enables programmers to create new memory areas.

- http://wiki.osdev.org/Memory_Map_%28x86%29
- http://duartes.org/gustavo/blog/post/anatomy-of-a-program-in-memory/


```
layout memory virtual
  vertical
    environment
    stack
    heap
    bss
    data # read only
    text # read only
```

Even though every application has its own 4 GB (on 32-bit systems) of virtual memory, that does not necessarily mean that your program can actually use all of that memory.

- http://en.wikipedia.org/wiki/Data_segment

The heap area commonly begins at the end of the .bss and .data segments and grows to larger addresses from there. The heap area is managed by malloc, realloc, and free, which may use the brk and sbrk system calls to adjust its size (note that the use of brk/sbrk and a single "heap area" is not required to fulfill the contract of malloc/realloc/free; they may also be implemented using mmap to reserve potentially non-contiguous regions of virtual memory into the process' virtual address space). The heap area is shared by all threads, shared libraries, and dynamically loaded modules in a process.

Accessing addresses above the break should trigger a bus error. physical memory and virtual memory is organize in pages (frames for the physical memory) of fixed size (most of the time.) The page size is by far bigger than one byte (on most actual system a page size is 4096 bytes.)

For high-level programming languages, pointers effectively take the place of general purpose registers in low-level languages such as assembly language or machine code, but may be in available memory. A pointer references a location in memory, and obtaining the value stored at that location is known as dereferencing the pointer. A pointer is a simple, more concrete implementation of the more abstract reference data type. 

- http://en.wikipedia.org/wiki/Alias_analysis
- translate IR to assembly: http://www.cs.cornell.edu/courses/cs412/2008sp/lectures/lec20.pdf

A "program" can be as simple as a "set of instructions" to implement a logic.

Maybe it is like:

```
statements
records
program
instructions
executable
```

```coffee
records
algebra # mathematical model
program # computational model
instructions
```
