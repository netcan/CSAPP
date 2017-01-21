	.file	"recursive_call.c"
	.text
	.globl	rfact
	.type	rfact, @function
rfact:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	cmpl	$1, 8(%ebp)
	jg	.L2
	movl	$1, -12(%ebp)
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	subl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	rfact
	addl	$16, %esp
	imull	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L3:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	rfact, .-rfact
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
