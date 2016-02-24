0F AE /1 FXRSTOR m512byte M Valid Valid Restore the x87 FPU, MMX, XMM, and MXCSR register state from m512byte.
REX.W+ 0F AE /1 FXRSTOR64 m512byte M Valid N.E. Restore the x87 FPU, MMX, XMM, and MXCSR register state from m512byte.

M ModRM:r/m (r) NA NA NA

operation
IF 64-Bit Mode
 THEN
 (x87 FPU, MMX, XMM15-XMM0, MXCSR) Load(SRC);
 ELSE
(x87 FPU, MMX, XMM7-XMM0, MXCSR) ← Load(SRC);
FI;

Protected Mode Exceptions
#GP(0) For an illegal memory operand effective address in the CS, DS, ES, FS or GS segments.
If a memory operand is not aligned on a 16-byte boundary, regardless of segment. (See alignment
check exception [#AC] below.)
For an attempt to set reserved bits in MXCSR.
#SS(0) For an illegal address in the SS segment.
#PF(fault-code) For a page fault.
#NM If CR0.TS[bit 3] = 1.
If CR0.EM[bit 2] = 1.
#UD If CPUID.01H:EDX.FXSR[bit 24] = 0.
If instruction is preceded by a LOCK prefix.
#AC If this exception is disabled a general protection exception (#GP) is signaled if the memory
operand is not aligned on a 16-byte boundary, as described above. If the alignment check
exception (#AC) is enabled (and the CPL is 3), signaling of #AC is not guaranteed and may
vary with implementation, as follows. In all implementations where #AC is not signaled, a
general protection exception is signaled in its place. In addition, the width of the alignment
check may also vary with implementation. For instance, for a given implementation, an alignment
check exception might be signaled for a 2-byte misalignment, whereas a general protection
exception might be signaled for all other misalignments (4-, 8-, or 16-byte
misalignments).
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#GP If a memory operand is not aligned on a 16-byte boundary, regardless of segment.
If any part of the operand lies outside the effective address space from 0 to FFFFH.
For an attempt to set reserved bits in MXCSR.
#NM If CR0.TS[bit 3] = 1.
If CR0.EM[bit 2] = 1.
#UD If CPUID.01H:EDX.FXSR[bit 24] = 0.
If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
Same exceptions as in real address mode.
#PF(fault-code) For a page fault.
#AC For unaligned memory reference.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#SS(0) If a memory address referencing the SS segment is in a non-canonical form.
#GP(0) If the memory address is in a non-canonical form.
If memory operand is not aligned on a 16-byte boundary, regardless of segment.
For an attempt to set reserved bits in MXCSR.
#PF(fault-code) For a page fault.
#NM If CR0.TS[bit 3] = 1.
If CR0.EM[bit 2] = 1.
#UD If CPUID.01H:EDX.FXSR[bit 24] = 0.
If instruction is preceded by a LOCK prefix.
#AC If this exception is disabled a general protection exception (#GP) is signaled if the memory
operand is not aligned on a 16-byte boundary, as described above. If the alignment check
exception (#AC) is enabled (and the CPL is 3), signaling of #AC is not guaranteed and may
vary with implementation, as follows. In all implementations where #AC is not signaled, a
general protection exception is signaled in its place. In addition, the width of the alignment
check may also vary with implementation. For instance, for a given implementation, an alignment
check exception might be signaled for a 2-byte misalignment, whereas a general protection
exception might be signaled for all other misalignments (4-, 8-, or 16-byte
misalignments).
