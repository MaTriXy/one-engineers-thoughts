C3 RET NP Valid Valid Near return to calling procedure.
CB RET NP Valid Valid Far return to calling procedure.
C2 iw RET imm16 I Valid Valid Near return to calling procedure and pop
imm16 bytes from stack.
CA iw RET imm16 I Valid Valid Far return to calling procedure and pop imm16
bytes from stack.

NP NA NA NA NA
I imm16 NA NA NA

flags none

Protected Mode Exceptions
#GP(0) If the return code or stack segment selector NULL.
If the return instruction pointer is not within the return code segment limit
#GP(selector) If the RPL of the return code segment selector is less then the CPL.
If the return code or stack segment selector index is not within its descriptor table limits.
If the return code segment descriptor does not indicate a code segment.
If the return code segment is non-conforming and the segment selector’s DPL is not equal to
the RPL of the code segment’s segment selector
If the return code segment is conforming and the segment selector’s DPL greater than the RPL
of the code segment’s segment selector
If the stack segment is not a writable data segment.
If the stack segment selector RPL is not equal to the RPL of the return code segment selector.
If the stack segment descriptor DPL is not equal to the RPL of the return code segment
selector.
#SS(0) If the top bytes of stack are not within stack limits.
If the return stack segment is not present.
#NP(selector) If the return code segment is not present.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory access occurs when the CPL is 3 and alignment checking is enabled.
Real-Address Mode Exceptions
#GP If the return instruction pointer is not within the return code segment limit
#SS If the top bytes of stack are not within stack limits.
Virtual-8086 Mode Exceptions
#GP(0) If the return instruction pointer is not within the return code segment limit
#SS(0) If the top bytes of stack are not within stack limits.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory access occurs when alignment checking is enabled.
Compatibility Mode Exceptions
Same as 64-bit mode exceptions.

64-Bit Mode Exceptions
#GP(0) If the return instruction pointer is non-canonical.
If the return instruction pointer is not within the return code segment limit.
If the stack segment selector is NULL going back to compatibility mode.
If the stack segment selector is NULL going back to CPL3 64-bit mode.
If a NULL stack segment selector RPL is not equal to CPL going back to non-CPL3 64-bit mode.
If the return code segment selector is NULL.
#GP(selector) If the proposed segment descriptor for a code segment does not indicate it is a code segment.
If the proposed new code segment descriptor has both the D-bit and L-bit set.
If the DPL for a nonconforming-code segment is not equal to the RPL of the code segment
selector.
If CPL is greater than the RPL of the code segment selector.
If the DPL of a conforming-code segment is greater than the return code segment selector
RPL.
If a segment selector index is outside its descriptor table limits.
If a segment descriptor memory address is non-canonical.
If the stack segment is not a writable data segment.
If the stack segment descriptor DPL is not equal to the RPL of the return code segment
selector.
If the stack segment selector RPL is not equal to the RPL of the return code segment selector.
#SS(0) If an attempt to pop a value off the stack violates the SS limit.
If an attempt to pop a value off the stack causes a non-canonical address to be referenced.
#NP(selector) If the return code or stack segment is not present.
#PF(fault-code) If a page fault occurs.
#AC(0) If alignment checking is enabled and an unaligned memory reference is made while the
current privilege level is 3.
