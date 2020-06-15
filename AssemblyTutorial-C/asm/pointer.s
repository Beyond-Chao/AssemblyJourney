	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 13, 4	sdk_version 13, 4
	.globl	_basic_pointer          ; -- Begin function basic_pointer
	.p2align	2
_basic_pointer:                         ; @basic_pointer
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80             ; =80
	stp	x29, x30, [sp, #64]     ; 16-byte Folded Spill
	add	x29, sp, #64            ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l___const.basic_pointer.ndigist@PAGE
	add	x8, x8, l___const.basic_pointer.ndigist@PAGEOFF
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-8]
	add	x10, sp, #16            ; =16
	mov	x0, x10
	mov	x1, x8
	mov	x2, #40
	str	x9, [sp, #8]            ; 8-byte Folded Spill
	bl	_memcpy
	ldr	w11, [sp, #48]
                                        ; implicit-def: $x0
	mov	x0, x11
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	LBB0_2
; %bb.1:
	ldp	x29, x30, [sp, #64]     ; 16-byte Folded Reload
	add	sp, sp, #80             ; =80
	ret
LBB0_2:
	bl	___stack_chk_fail
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	_char_array_prototype   ; -- Begin function char_array_prototype
	.p2align	2
_char_array_prototype:                  ; @char_array_prototype
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 16-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	stur	x9, [x29, #-8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	ldur	x10, [x29, #-8]
	cmp	x9, x10
	b.ne	LBB1_2
; %bb.1:
	ldp	x29, x30, [sp, #32]     ; 16-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
LBB1_2:
	bl	___stack_chk_fail
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.globl	_int_array_prototype    ; -- Begin function int_array_prototype
	.p2align	2
_int_array_prototype:                   ; @int_array_prototype
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 16-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	str	x9, [sp, #8]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	ldr	x10, [sp, #8]
	cmp	x9, x10
	b.ne	LBB2_2
; %bb.1:
	ldp	x29, x30, [sp, #16]     ; 16-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
LBB2_2:
	bl	___stack_chk_fail
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2               ; @__const.basic_pointer.ndigist
l___const.basic_pointer.ndigist:
	.long	0                       ; 0x0
	.long	1                       ; 0x1
	.long	2                       ; 0x2
	.long	3                       ; 0x3
	.long	4                       ; 0x4
	.long	5                       ; 0x5
	.long	6                       ; 0x6
	.long	7                       ; 0x7
	.long	8                       ; 0x8
	.long	9                       ; 0x9

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"ndigist %d"


.subsections_via_symbols
