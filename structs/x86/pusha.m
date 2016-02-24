60 PUSHA NP Invalid Valid Push AX, CX, DX, BX, original SP, BP, SI, and DI.
60 PUSHAD NP Invalid Valid Push EAX, ECX, EDX, EBX, original ESP, EBP,
ESI, and EDI.

NP NA NA NA NA

operation
IF 64-bit Mode
THEN #UD
FI;
IF OperandSize = 32 (* PUSHAD instruction *)
THEN
Temp ← (ESP);
Push(EAX);
Push(ECX);
Push(EDX);
Push(EBX);
Push(Temp);
Push(EBP);
Push(ESI);
Push(EDI);
ELSE (* OperandSize = 16, PUSHA instruction *)
Temp ← (SP);
Push(AX);
Push(CX);
Push(DX);
Push(BX);
Push(Temp);
Push(BP);
Push(SI);
Push(DI);
FI;

Protected Mode Exceptions
#SS(0) If the starting or ending stack address is outside the stack segment limit.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while the current privilege level is 3 and alignment
checking is enabled.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#GP If the ESP or SP register contains 7, 9, 11, 13, or 15.
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#GP(0) If the ESP or SP register contains 7, 9, 11, 13, or 15.
#PF(fault-code) If a page fault occurs.
#AC(0) If an unaligned memory reference is made while alignment checking is enabled.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
#UD If in 64-bit mode.
