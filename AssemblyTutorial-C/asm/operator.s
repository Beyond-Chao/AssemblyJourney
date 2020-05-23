	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 13, 4	sdk_version 13, 4
	.globl	_hello                  ; -- Begin function hello
	.p2align	2
_hello:                                 ; @hello
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!   ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp], #16     ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_greet                  ; -- Begin function greet
	.p2align	2
_greet:                                 ; @greet
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 16-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	stur	w0, [x29, #-4]          ; 4-byte Folded Spill
	bl	_hello
	ldp	x29, x30, [sp, #16]     ; 16-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"hello guys \n"

l_.str.1:                               ; @.str.1
	.asciz	"Hi I`am BeyondChao \n"


.subsections_via_symbols
