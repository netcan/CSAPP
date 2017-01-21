	.file	"recursive_call.c"
	.text
	.globl	rfact
	.type	rfact, @function
rfact:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	$1, %eax
	cmpl	$1, %ebx
	jle	.L1
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	leal	-1(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	rfact
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	imull	%ebx, %eax
.L1:
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	rfact, .-rfact
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
