9C PUSHF NP Valid Valid Push lower 16 bits of EFLAGS.
9C PUSHFD NP N.E. Valid Push EFLAGS.
9C PUSHFQ NP Valid N.E. Push RFLAGS.

NP NA NA NA NA

Protected Mode Exceptions
#SS(0) If the new value of the ESP register is outside the stack segment boundary.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while the current privilege level is 3 and alignment
checking is enabled.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#GP(0) If the I/O privilege level is less than 3.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while alignment checking is enabled.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#GP(0) If the memory address is in a non-canonical form.
#SS(0) If the stack address is in a non-canonical form.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while the current privilege level is 3 and alignment
checking is enabled.
#UD If the LOCK prefix is used.
