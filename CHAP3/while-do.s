	.file	"while-do.c"
	.text
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	cmpl	$1, %edx
	jle	.L4
	movl	$1, %eax
.L3:
	imull	%edx, %eax
	subl	$1, %edx
	cmpl	$1, %edx
	jne	.L3
	rep ret
.L4:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
