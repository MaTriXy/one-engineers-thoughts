exception 0, DE
  description Divide Error DIV and IDIV instructions.

exception 1, DB
  description Debug Any code or data reference.

exception 2
  description NMI Interrupt Non-maskable external interrupt.

exception 3, BP
  description Breakpoint INT 3 instruction.

exception 4, OF
  description Overflow INTO instruction.

exception 5, BR
  description BOUND Range Exceeded BOUND instruction.

exception 6, UD
  description Invalid Opcode (UnDefined Opcode) UD2 instruction or reserved opcode.1

exception 7, NM
  description Device Not Available (No Math Coprocessor) Floating-point or WAIT/FWAIT instruction.

exception 8, DF
  description Double Fault Any instruction that can generate an exception, an NMI, or an, NTR

exception 9, MF
  description CoProcessor Segment Overrun (reserved) Floating-point instruction.2

exception 10, TS
  description Invalid TSS Task switch or TSS access.

exception 11, NP
  description Segment Not Present Loading segment registers or accessing system segments.

exception 12, SS
  description Stack Segment Fault Stack operations and SS register loads.

exception 13, GP
  description General Protection Any memory reference and other protection checks.

exception 14, PF
  description Page Fault Any memory reference.

exception 15
  description Reserved

exception 16, MF
  description Floating-Point Error (Math Fault) Floating-point or WAIT/FWAIT instruction.

exception 17, AC
  description Alignment Check Any data reference in memory.3

exception 18, MC
  description Machine Check Error codes (if any) and source are model dependent.4

exception 19, XM
  description SIMD Floating-Point Exception SIMD Floating-Point Instruction5

20-31 Reserved
32-255 Maskable Interrupts External interrupt from INTR pin or INT n instruction.
