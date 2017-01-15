	.file	"setting_zero.c"
	.text
	.globl	setting_zero
	.type	setting_zero, @function
setting_zero:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	setting_zero, .-setting_zero
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
