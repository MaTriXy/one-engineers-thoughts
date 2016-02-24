	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	RBP
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset rbp, -16
	mov	RBP, RSP
Ltmp4:
	.cfi_def_cfa_register rbp
	mov	EAX, 0
	lea	RCX, QWORD PTR [RBP - 8]
	mov	DWORD PTR [RBP - 4], 0
	mov	DWORD PTR [RBP - 8], 5
	mov	QWORD PTR [RBP - 16], 0
	mov	QWORD PTR [RBP - 16], RCX
	pop	RBP
	ret
	.cfi_endproc


.subsections_via_symbols
