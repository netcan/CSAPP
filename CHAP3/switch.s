	.file	"switch.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB0:
	.cfi_startproc
	call	__x86.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	subl	$100, %edx
	cmpl	$5, %edx
	ja	.L8
	addl	.L4@GOTOFF(%ecx,%edx,4), %ecx
	jmp	*%ecx
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L3@GOTOFF
	.long	.L8@GOTOFF
	.long	.L5@GOTOFF
	.long	.L6@GOTOFF
	.long	.L7@GOTOFF
	.long	.L7@GOTOFF
	.text
.L3:
	leal	(%eax,%eax,2), %edx
	leal	(%eax,%edx,4), %eax
	ret
.L5:
	addl	$10, %eax
.L6:
	addl	$11, %eax
	ret
.L7:
	imull	%eax, %eax
	ret
.L8:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg, .-switch_eg
	.section	.text.__x86.get_pc_thunk.cx,"axG",@progbits,__x86.get_pc_thunk.cx,comdat
	.globl	__x86.get_pc_thunk.cx
	.hidden	__x86.get_pc_thunk.cx
	.type	__x86.get_pc_thunk.cx, @function
__x86.get_pc_thunk.cx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ecx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Debian 6.2.1-5) 6.2.1 20161124"
	.section	.note.GNU-stack,"",@progbits
