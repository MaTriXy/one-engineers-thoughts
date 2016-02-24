99 CWD NP Valid Valid DX:AX ← sign-extend of AX.
99 CDQ NP Valid Valid EDX:EAX ← sign-extend of EAX.
REX.W + 99 CQO NP Valid N.E. RDX:RAX← sign-extend of RAX.

NP NA NA NA NA

Operation
IF OperandSize = 16 (* CWD instruction *)
THEN
DX ← SignExtend(AX);
ELSE IF OperandSize = 32 (* CDQ instruction *)
EDX ← SignExtend(EAX); FI;
ELSE IF 64-Bit Mode and OperandSize = 64 (* CQO instruction*)
RDX ← SignExtend(RAX); FI;
FI;
Flags Affected
None.
Exceptions (All Operating Modes)
#UD If the LOCK prefix is used.
