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
	sub	RSP, 16
	lea	RDI, QWORD PTR [RIP + L_.str]
	mov	DWORD PTR [RBP - 4], 0
	mov	AL, 0
	call	_printf
	mov	ECX, 0
	mov	DWORD PTR [RBP - 8], EAX ## 4-byte Spill
	mov	EAX, ECX
	add	RSP, 16
	pop	RBP
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	 "hello world"


.subsections_via_symbols
