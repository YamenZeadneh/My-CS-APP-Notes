	.file	"p2.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "2 * 3 --> %ld\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	leaq	44(%rsp), %r8
	movl	$3, %edx
	movl	$2, %ecx
	call	multstore
	movl	44(%rsp), %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$56, %rsp
	ret
	.seh_endproc
	.globl	mult2
	.def	mult2;	.scl	2;	.type	32;	.endef
	.seh_proc	mult2
mult2:
	.seh_endprologue
	movl	%ecx, %eax
	imull	%edx, %eax
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	multstore;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
