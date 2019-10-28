	.file	"fac.c"
	.text
	.p2align 4,,15
	.globl	fac_acc
	.type	fac_acc, @function
fac_acc:
	testl	%edi, %edi
	je	.L4
	movslq	%edi, %rcx
	leal	-1(%rdi), %eax
	leaq	-1(%rcx), %rdx
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rsi, %rax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L7:
	subq	$1, %rdx
.L3:
	imulq	%rcx, %rax
	cmpq	%rdi, %rdx
	movq	%rdx, %rcx
	jne	.L7
	rep ret
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%rsi, %rax
	ret
	.size	fac_acc, .-fac_acc
	.p2align 4,,15
	.globl	fac
	.type	fac, @function
fac:
	testl	%edi, %edi
	je	.L11
	movslq	%edi, %rcx
	leal	-1(%rdi), %eax
	leaq	-1(%rcx), %rdx
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movl	$1, %eax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L13:
	subq	$1, %rdx
.L10:
	imulq	%rcx, %rax
	cmpq	%rsi, %rdx
	movq	%rdx, %rcx
	jne	.L13
	rep ret
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$1, %eax
	ret
	.size	fac, .-fac
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
