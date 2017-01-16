	.file	"compare.c"
	.text
	.globl	less
	.type	less, @function
less:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	cmpl	%eax, 4(%esp)
	setl	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	less, .-less
	.globl	equal
	.type	equal, @function
equal:
.LFB1:
	.cfi_startproc
	movl	8(%esp), %eax
	cmpl	%eax, 4(%esp)
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	equal, .-equal
	.globl	greater_than
	.type	greater_than, @function
greater_than:
.LFB2:
	.cfi_startproc
	movl	8(%esp), %eax
	cmpl	%eax, 4(%esp)
	setge	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	greater_than, .-greater_than
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
