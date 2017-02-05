.globl poptest
poptest:
	pushl %ebp
	movl %esp, %ebp
	pushl $0xabcd
	popl %esp
	movl %esp, %eax
	leave
	ret
