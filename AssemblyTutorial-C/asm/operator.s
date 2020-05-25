	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 13, 4	sdk_version 13, 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ; -- Begin function dataTypeSample
lCPI0_0:
	.quad	4636736587667194511     ; double 99.989999999999994
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
lCPI0_1:
	.long	1092605706              ; float 9.98999977
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_dataTypeSample
	.p2align	2
_dataTypeSample:                        ; @dataTypeSample
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 16-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #97
	sturb	w8, [x29, #-1]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w8, #99
	stur	w8, [x29, #-8]
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	w0, [sp, #20]           ; 4-byte Folded Spill
	mov	x0, x9
	bl	_printf
	adrp	x9, lCPI0_1@PAGE
	ldr	s0, [x9, lCPI0_1@PAGEOFF]
	stur	s0, [x29, #-12]
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	w0, [sp, #16]           ; 4-byte Folded Spill
	mov	x0, x9
	bl	_printf
	adrp	x9, lCPI0_0@PAGE
	ldr	d1, [x9, lCPI0_0@PAGEOFF]
	str	d1, [sp, #24]
	adrp	x9, l_.str@PAGE
	add	x9, x9, l_.str@PAGEOFF
	str	w0, [sp, #12]           ; 4-byte Folded Spill
	mov	x0, x9
	bl	_printf
	ldp	x29, x30, [sp, #48]     ; 16-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_integer                ; -- Begin function integer
	.p2align	2
_integer:                               ; @integer
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	mov	w8, #999
	str	w8, [sp, #12]
	add	sp, sp, #16             ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_greet                  ; -- Begin function greet
	.p2align	2
_greet:                                 ; @greet
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!   ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp], #16     ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"separator"

l_.str.1:                               ; @.str.1
	.asciz	"Hi I`am BeyondChao \n"


.subsections_via_symbols
