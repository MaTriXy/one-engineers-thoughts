0F 31 RDTSC NP Valid Valid Read time-stamp counter into EDX:EAX.

NP NA NA NA NA

Operation
IF (CR4.TSD = 0) or (CPL = 0) or (CR0.PE = 0)
THEN EDX:EAX ← TimeStampCounter;
ELSE (* CR4.TSD = 1 and (CPL = 1, 2, or 3) and CR0.PE = 1 *)
#GP(0);
FI;
Flags Affected
None.
Protected Mode Exceptions
#GP(0) If the TSD flag in register CR4 is set and the CPL is greater than 0.
#UD If the LOCK prefix is used.
Real-Address Mode Exceptions
#UD If the LOCK prefix is used.
Virtual-8086 Mode Exceptions
#GP(0) If the TSD flag in register CR4 is set.
#UD If the LOCK prefix is used.
Compatibility Mode Exceptions
Same exceptions as in protected mode.
64-Bit Mode Exceptions
Same exceptions as in protected mode.
