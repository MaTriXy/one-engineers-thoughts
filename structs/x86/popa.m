61 POPA NP Invalid Valid Pop DI, SI, BP, BX, DX, CX, and AX.
61 POPAD NP Invalid Valid Pop EDI, ESI, EBP, EBX, EDX, ECX, and EAX.

NP NA NA NA NA

IF 64-Bit Mode
THEN
#UD;
ELSE
IF OperandSize = 32 (* Instruction = POPAD *)
THEN
EDI ← Pop();
ESI ← Pop();
EBP ← Pop();
Increment ESP by 4; (* Skip next 4 bytes of stack *)
EBX ← Pop();
EDX ← Pop();
ECX ← Pop();
EAX ← Pop();
ELSE (* OperandSize = 16, instruction = POPA *)
DI ← Pop();
SI ← Pop();
BP ← Pop();
Increment ESP by 2; (* Skip next 2 bytes of stack *)
BX ← Pop();
DX ← Pop();
CX ← Pop();
AX ← Pop();
FI;
FI;

Protected Mode Exceptions
#SS(0) If the starting or ending stack address is not within the stack segment.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while the current privilege level is 3 and alignment
checking is enabled.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#SS If the starting or ending stack address is not within the stack segment.
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#SS(0) If the starting or ending stack address is not within the stack segment.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while alignment checking is enabled.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same as for protected mode exceptions.
64-Bit Mode Exceptions
#UD If in 64-bit mode.
