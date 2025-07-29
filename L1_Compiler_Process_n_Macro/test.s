	.file	"test.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "This is file test\0"
	.text
	.globl	display
	.def	display;	.scl	2;	.type	32;	.endef
	.seh_proc	display
display:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
