	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 13, 2	sdk_version 13, 2
	.globl	_addOperator            ; -- Begin function addOperator
	.p2align	2
_addOperator:                           ; @addOperator
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	mov	w8, #10
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	add	w8, w8, #1              ; =1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w8, w8, #3
	str	w8, [sp, #12]
	add	sp, sp, #16             ; =16
	ret
	.cfi_endproc
                                        ; -- End function

.subsections_via_symbols
