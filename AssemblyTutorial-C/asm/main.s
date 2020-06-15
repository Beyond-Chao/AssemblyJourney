	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 13, 4	sdk_version 13, 4
	.globl	_addOperator            ; -- Begin function addOperator
	.p2align	2
_addOperator:                           ; @addOperator
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 16-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #10
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	add	w8, w8, #1              ; =1
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	lsl	w8, w8, #3
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
                                        ; implicit-def: $x0
	mov	x0, x8
	mov	x9, sp
	str	x0, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]     ; 16-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                   ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 16-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	str	w0, [sp, #12]           ; 4-byte Folded Spill
	bl	_addOperator
	bl	_greet
	bl	_basic_pointer
	bl	_one
	mov	w8, #0
	mov	x0, x8
	ldp	x29, x30, [sp, #32]     ; 16-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_one                    ; -- Begin function one
	.p2align	2
_one:                                   ; @one
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!   ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_two
	ldp	x29, x30, [sp], #16     ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_two                    ; -- Begin function two
	.p2align	2
_two:                                   ; @two
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!   ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_three
	ldp	x29, x30, [sp], #16     ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_three                  ; -- Begin function three
	.p2align	2
_three:                                 ; @three
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!   ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #4
	bl	_four
	ldp	x29, x30, [sp], #16     ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_four                   ; -- Begin function four
	.p2align	2
_four:                                  ; @four
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 16-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
                                        ; implicit-def: $x1
	mov	x1, x8
	mov	x9, sp
	str	x1, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]     ; 16-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"sum = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"Hello, World!!!\n"

l_.str.2:                               ; @.str.2
	.asciz	"result = %d\n"


.subsections_via_symbols
