	.file	"for.c"
	.text
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %ecx
	cmpl	$1, %ecx
	jle	.L4
	movl	$1, %eax
	movl	$2, %edx
.L3:
	imull	%edx, %eax
	addl	$1, %edx
	cmpl	%edx, %ecx
	jge	.L3
	rep ret
.L4:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
