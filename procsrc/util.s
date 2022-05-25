	.file	"util.c"
	.text
.Ltext0:
	.globl	mk_empty
	.type	mk_empty, @function
mk_empty:
.LFB6:
	.file 1 "util.c"
	.loc 1 9 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, -20(%rbp)
	.loc 1 10 19
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	.loc 1 11 10
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 12 9
	movq	-8(%rbp), %rax
	.loc 1 13 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mk_empty, .-mk_empty
	.globl	mk_node
	.type	mk_node, @function
mk_node:
.LFB7:
	.loc 1 16 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 17 19
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 18 12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	.loc 1 18 10
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 19 9
	movq	-8(%rbp), %rax
	.loc 1 20 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mk_node, .-mk_node
	.globl	mk_str
	.type	mk_str, @function
mk_str:
.LFB8:
	.loc 1 23 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 24 19
	movl	$0, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 25 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	.loc 1 25 10
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 1 26 9
	movq	-8(%rbp), %rax
	.loc 1 27 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mk_str, .-mk_str
	.globl	free_node
	.type	free_node, @function
free_node:
.LFB9:
	.loc 1 30 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -8(%rbp)
	.loc 1 31 7
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 31 5
	cmpl	$6, %eax
	jne	.L8
	.loc 1 31 32 discriminator 1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 31 44 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 31 28 discriminator 1
	cmpq	%rax, %rdx
	je	.L8
	.loc 1 32 9
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 32 3
	movq	%rax, %rdi
	call	free@PLT
.L8:
	.loc 1 34 8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 34 2
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 35 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 36 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_node, .-free_node
	.section	.rodata
.LC0:
	.string	"%s%s"
	.text
	.globl	mk_concat
	.type	mk_concat, @function
mk_concat:
.LFB10:
	.loc 1 39 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 40 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 41 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 42 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 43 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 44 9
	movq	-8(%rbp), %rax
	.loc 1 45 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mk_concat, .-mk_concat
	.section	.rodata
.LC1:
	.string	"<mrow>%s</mrow>"
	.align 8
.LC2:
	.string	"<mrow><mo>%s</mo>%s<mo>%s</mo></mrow>"
	.text
	.globl	mk_group
	.type	mk_group, @function
mk_group:
.LFB11:
	.loc 1 48 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 49 19
	movl	$6, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 50 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 51 14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 51 6
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 51 5
	testl	%eax, %eax
	je	.L12
	.loc 1 52 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	jmp	.L13
.L12:
	.loc 1 54 21
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 54 13
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	.loc 1 54 11
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L13:
	.loc 1 55 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 56 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 57 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 58 9
	movq	-8(%rbp), %rax
	.loc 1 59 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mk_group, .-mk_group
	.section	.rodata
	.align 8
.LC3:
	.string	"<merror>Error on input \"%s\".</merror>"
	.text
	.globl	merror
	.type	merror, @function
merror:
.LFB12:
	.loc 1 65 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 65 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 67 2
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 68 9
	movq	-16(%rbp), %rax
	.loc 1 69 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	merror, .-merror
	.globl	inner
	.type	inner, @function
inner:
.LFB13:
	.loc 1 72 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -8(%rbp)
	.loc 1 73 7
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 73 5
	cmpl	$6, %eax
	jne	.L21
	.loc 1 74 8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 74 19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 74 6
	cmpq	%rax, %rdx
	je	.L20
	.loc 1 75 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 75 4
	movq	%rax, %rdi
	call	free@PLT
.L20:
	.loc 1 77 14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 1 77 11
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L21:
	.loc 1 79 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	inner, .-inner
	.section	.rodata
.LC4:
	.string	"<mn>%s</mn>"
	.text
	.globl	mk_number
	.type	mk_number, @function
mk_number:
.LFB14:
	.loc 1 91 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 91 1
	movl	$5, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	mk_number, .-mk_number
	.section	.rodata
.LC5:
	.string	"<mo>%s</mo>"
	.text
	.globl	mk_op
	.type	mk_op, @function
mk_op:
.LFB15:
	.loc 1 92 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 92 1
	movl	$5, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	mk_op, .-mk_op
	.section	.rodata
.LC6:
	.string	"<mi>%s</mi>"
	.text
	.globl	mk_id
	.type	mk_id, @function
mk_id:
.LFB16:
	.loc 1 93 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 93 1
	movl	$5, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	mk_id, .-mk_id
	.globl	mk_underover
	.type	mk_underover, @function
mk_underover:
.LFB17:
	.loc 1 94 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 94 1
	movl	$1, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	mk_underover, .-mk_underover
	.section	.rodata
.LC7:
	.string	"<msqrt>%s</msqrt>"
	.text
	.globl	msqrt
	.type	msqrt, @function
msqrt:
.LFB18:
	.loc 1 108 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 108 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	msqrt, .-msqrt
	.section	.rodata
.LC8:
	.string	"<mtext>%s</mtext>"
	.text
	.globl	mtext
	.type	mtext, @function
mtext:
.LFB19:
	.loc 1 109 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 109 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mtext, .-mtext
	.section	.rodata
.LC9:
	.string	"<munder>%s<mo>_</mo></munder>"
	.text
	.globl	ul
	.type	ul, @function
ul:
.LFB20:
	.loc 1 110 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 110 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ul, .-ul
	.section	.rodata
	.align 8
.LC10:
	.string	"<menclose notation=\"updiagonalstrike\">%s</menclose>"
	.text
	.globl	cancel
	.type	cancel, @function
cancel:
.LFB21:
	.loc 1 111 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 111 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	cancel, .-cancel
	.section	.rodata
.LC11:
	.string	"<mover>%s<mo>%s</mo></mover>"
	.text
	.globl	accent
	.type	accent, @function
accent:
.LFB22:
	.loc 1 114 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 115 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 116 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 117 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 118 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 119 9
	movq	-8(%rbp), %rax
	.loc 1 120 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	accent, .-accent
	.section	.rodata
	.align 8
.LC12:
	.string	"<mstyle mathvariant=\"%s\">%s</mstyle>"
	.text
	.globl	font
	.type	font, @function
font:
.LFB23:
	.loc 1 123 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 124 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 125 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 126 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 127 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 128 9
	movq	-8(%rbp), %rax
	.loc 1 129 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	font, .-font
	.section	.rodata
.LC13:
	.string	"<mfrac>%s%s</mfrac>"
	.text
	.globl	mk_frac
	.type	mk_frac, @function
mk_frac:
.LFB24:
	.loc 1 145 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 145 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	mk_frac, .-mk_frac
	.section	.rodata
.LC14:
	.string	"<mroot>%s%s</mroot>"
	.text
	.globl	mk_root
	.type	mk_root, @function
mk_root:
.LFB25:
	.loc 1 146 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 146 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	mk_root, .-mk_root
	.section	.rodata
.LC15:
	.string	"<mover>%s%s</mover>"
	.text
	.globl	mk_stackrel
	.type	mk_stackrel, @function
mk_stackrel:
.LFB26:
	.loc 1 147 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 147 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC15(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	mk_stackrel, .-mk_stackrel
	.section	.rodata
	.align 8
.LC16:
	.string	"<munder><munder>%s<mo>\342\217\237</mo></munder>%s</munder>"
	.text
	.globl	mk_ubrace
	.type	mk_ubrace, @function
mk_ubrace:
.LFB27:
	.loc 1 148 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 148 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	mk_ubrace, .-mk_ubrace
	.section	.rodata
	.align 8
.LC17:
	.string	"<mover><mover>%s<mo>\342\217\236</mo></mover>%s</mover>"
	.text
	.globl	mk_obrace
	.type	mk_obrace, @function
mk_obrace:
.LFB28:
	.loc 1 149 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 149 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	mk_obrace, .-mk_obrace
	.section	.rodata
	.align 8
.LC18:
	.string	"<mstyle mathcolor=\"%s\">%s</mstyle>"
	.text
	.globl	mk_color
	.type	mk_color, @function
mk_color:
.LFB29:
	.loc 1 164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 164 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	mk_color, .-mk_color
	.section	.rodata
.LC19:
	.string	"<msup>%s%s</msup>"
	.text
	.globl	mk_sup
	.type	mk_sup, @function
mk_sup:
.LFB30:
	.loc 1 165 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 165 1
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	mk_sup, .-mk_sup
	.section	.rodata
.LC20:
	.string	"<munder>%s%s</munder>"
.LC21:
	.string	"<msub>%s%s</msub>"
	.text
	.globl	mk_sub
	.type	mk_sub, @function
mk_sub:
.LFB31:
	.loc 1 168 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 169 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 170 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 171 8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 171 5
	cmpl	$1, %eax
	jne	.L57
.LBB2:
	.loc 1 172 3
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC20(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
.LBE2:
	jmp	.L58
.L57:
.LBB3:
	.loc 1 175 3
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC21(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
.L58:
.LBE3:
	.loc 1 177 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 178 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 179 9
	movq	-8(%rbp), %rax
	.loc 1 180 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	mk_sub, .-mk_sub
	.section	.rodata
	.align 8
.LC22:
	.string	"<munderover>%s%s%s</munderover>"
.LC23:
	.string	"<msubsup>%s%s%s</msubsup>"
	.text
	.globl	mk_ter
	.type	mk_ter, @function
mk_ter:
.LFB32:
	.loc 1 185 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 186 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 187 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 188 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 189 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	inner
	.loc 1 190 8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 190 5
	cmpl	$1, %eax
	jne	.L61
.LBB4:
	.loc 1 191 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
.LBE4:
	jmp	.L62
.L61:
.LBB5:
	.loc 1 194 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
.L62:
.LBE5:
	.loc 1 196 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 197 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 198 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 199 9
	movq	-8(%rbp), %rax
	.loc 1 200 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	mk_ter, .-mk_ter
	.section	.rodata
	.align 8
.LC24:
	.string	"<mrow><mo>%s</mo><mtable>%s</mtable><mo>%s</mo></mrow>"
	.text
	.globl	matrix
	.type	matrix, @function
matrix:
.LFB33:
	.loc 1 205 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 206 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 207 2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rsi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 208 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 209 2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 210 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 211 9
	movq	-8(%rbp), %rax
	.loc 1 212 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	matrix, .-matrix
	.section	.rodata
.LC25:
	.string	"<mtr>%s</mtr>"
	.text
	.globl	row
	.type	row, @function
row:
.LFB34:
	.loc 1 215 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 216 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 217 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 218 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 219 9
	movq	-8(%rbp), %rax
	.loc 1 220 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	row, .-row
	.section	.rodata
.LC26:
	.string	"<mtd>%s</mtd>"
	.text
	.globl	cell
	.type	cell, @function
cell:
.LFB35:
	.loc 1 223 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
1:	call	*mcount@GOTPCREL(%rip)
	movq	%rdi, -24(%rbp)
	.loc 1 224 19
	movl	$7, %edi
	call	mk_empty
	movq	%rax, -8(%rbp)
	.loc 1 225 2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	asprintf@PLT
	.loc 1 226 2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_node
	.loc 1 227 9
	movq	-8(%rbp), %rax
	.loc 1 228 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	cell, .-cell
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd56
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x91
	.uleb128 0x8
	.long	.LASF60
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x224
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x23d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x243
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x249
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x259
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x264
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x26f
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x243
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x9d
	.uleb128 0xa
	.long	.LASF98
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0xc
	.long	0x91
	.long	0x259
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x230
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25f
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0xc
	.long	0x91
	.long	0x285
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x291
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x291
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x291
	.uleb128 0xe
	.long	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	0x2d1
	.long	0x2c6
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2bb
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x7
	.long	0x2cb
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2c6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x10
	.long	.LASF99
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x8
	.byte	0x6
	.byte	0x6
	.long	0x339
	.uleb128 0x11
	.long	.LASF51
	.byte	0
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.uleb128 0x11
	.long	.LASF53
	.byte	0x2
	.uleb128 0x11
	.long	.LASF54
	.byte	0x3
	.uleb128 0x11
	.long	.LASF55
	.byte	0x4
	.uleb128 0x11
	.long	.LASF56
	.byte	0x5
	.uleb128 0x11
	.long	.LASF57
	.byte	0x6
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.uleb128 0x11
	.long	.LASF59
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x18
	.byte	0x8
	.byte	0x12
	.byte	0x8
	.long	0x36e
	.uleb128 0x9
	.long	.LASF62
	.byte	0x8
	.byte	0x13
	.byte	0xe
	.long	0x2f0
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x8
	.byte	0x14
	.byte	0x8
	.long	0x8b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF64
	.byte	0x8
	.byte	0x15
	.byte	0x8
	.long	0x8b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x339
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.long	0x36e
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c0
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xde
	.byte	0x20
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xe0
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"row"
	.byte	0x1
	.byte	0xd6
	.byte	0xe
	.long	0x36e
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xd6
	.byte	0x1f
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xd8
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.long	0x36e
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x472
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0xcc
	.byte	0x22
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xcc
	.byte	0x32
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xcc
	.byte	0x43
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xce
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.long	0x36e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x510
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xb8
	.byte	0x22
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0xb8
	.byte	0x33
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"s2"
	.byte	0x1
	.byte	0xb8
	.byte	0x44
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xba
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x4ef
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x19
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.byte	0xa7
	.byte	0xe
	.long	0x36e
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a0
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xa7
	.byte	0x22
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0xa7
	.byte	0x33
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xa9
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x57f
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x19
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x36e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fa
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x36e
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x654
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF72
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x36e
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ae
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x36e
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x708
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF74
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x36e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x762
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x36e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bc
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x36e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x816
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.long	0x36e
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x871
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x7a
	.byte	0x20
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0x7a
	.byte	0x30
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x7c
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x1
	.byte	0x71
	.byte	0xe
	.long	0x36e
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cc
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x71
	.byte	0x22
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x71
	.byte	0x32
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x73
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF79
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	0x36e
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x918
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"ul"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x36e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x963
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF80
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x36e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x9af
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF81
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x36e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9fb
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x36e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa47
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x36e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xa93
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0x36e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xadf
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x36e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2b
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xb57
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0x47
	.byte	0x19
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF86
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.long	0x8b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xba6
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.byte	0x42
	.byte	0x8
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.long	0x36e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc0b
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x2f
	.byte	0x24
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"e"
	.byte	0x1
	.byte	0x2f
	.byte	0x34
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x2f
	.byte	0x44
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x31
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF90
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.long	0x36e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc65
	.uleb128 0x13
	.string	"s0"
	.byte	0x1
	.byte	0x26
	.byte	0x25
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"s1"
	.byte	0x1
	.byte	0x26
	.byte	0x36
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.long	0x65
	.uleb128 0x16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xc91
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.byte	0x1d
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF92
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.long	0x36e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd0
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.byte	0x16
	.byte	0x1b
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x18
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.long	0x36e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1e
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.long	0x2f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.byte	0xf
	.byte	0x2e
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x11
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.long	0x36e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF62
	.byte	0x1
	.byte	0x8
	.byte	0x23
	.long	0x2f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0xa
	.byte	0xf
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF24:
	.string	"_chain"
.LASF83:
	.string	"mk_id"
.LASF7:
	.string	"size_t"
.LASF30:
	.string	"_shortbuf"
.LASF62:
	.string	"type"
.LASF18:
	.string	"_IO_buf_base"
.LASF59:
	.string	"NODE_UNKNOWN"
.LASF50:
	.string	"long long unsigned int"
.LASF56:
	.string	"NODE_IDENTIFIER"
.LASF81:
	.string	"msqrt"
.LASF52:
	.string	"NODE_UNDEROVER"
.LASF33:
	.string	"_codecvt"
.LASF49:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF92:
	.string	"mk_str"
.LASF97:
	.string	"/home/wacfeld/Dropbox/matrix/fastm/procsrc"
.LASF25:
	.string	"_fileno"
.LASF74:
	.string	"mk_stackrel"
.LASF13:
	.string	"_IO_read_end"
.LASF86:
	.string	"merror"
.LASF6:
	.string	"long int"
.LASF11:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF42:
	.string	"_IO_codecvt"
.LASF27:
	.string	"_old_offset"
.LASF32:
	.string	"_offset"
.LASF69:
	.string	"mk_sub"
.LASF66:
	.string	"asprintf"
.LASF70:
	.string	"mk_sup"
.LASF72:
	.string	"mk_obrace"
.LASF67:
	.string	"matrix"
.LASF89:
	.string	"mk_group"
.LASF99:
	.string	"node_t"
.LASF41:
	.string	"_IO_marker"
.LASF44:
	.string	"stdin"
.LASF94:
	.string	"mk_empty"
.LASF1:
	.string	"unsigned int"
.LASF36:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF16:
	.string	"_IO_write_ptr"
.LASF47:
	.string	"sys_nerr"
.LASF55:
	.string	"NODE_NUMBER"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"_IO_save_base"
.LASF95:
	.string	"GNU C17 9.4.0 -mtune=generic -march=x86-64 -g -p -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF58:
	.string	"NODE_SIMPLE"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF45:
	.string	"stdout"
.LASF17:
	.string	"_IO_write_end"
.LASF91:
	.string	"free_node"
.LASF98:
	.string	"_IO_lock_t"
.LASF60:
	.string	"_IO_FILE"
.LASF88:
	.string	"error"
.LASF48:
	.string	"sys_errlist"
.LASF23:
	.string	"_markers"
.LASF96:
	.string	"util.c"
.LASF73:
	.string	"mk_ubrace"
.LASF57:
	.string	"NODE_GROUP"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"accent"
.LASF61:
	.string	"node"
.LASF54:
	.string	"NODE_TEXT"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"_IO_wide_data"
.LASF29:
	.string	"_vtable_offset"
.LASF40:
	.string	"FILE"
.LASF87:
	.string	"input"
.LASF65:
	.string	"cell"
.LASF10:
	.string	"char"
.LASF63:
	.string	"text"
.LASF85:
	.string	"mk_number"
.LASF90:
	.string	"mk_concat"
.LASF51:
	.string	"NODE_RAW"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_save_end"
.LASF84:
	.string	"mk_op"
.LASF37:
	.string	"__pad5"
.LASF39:
	.string	"_unused2"
.LASF46:
	.string	"stderr"
.LASF53:
	.string	"NODE_OP"
.LASF71:
	.string	"mk_color"
.LASF77:
	.string	"font"
.LASF76:
	.string	"mk_frac"
.LASF21:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_freeres_list"
.LASF93:
	.string	"mk_node"
.LASF34:
	.string	"_wide_data"
.LASF64:
	.string	"inner"
.LASF15:
	.string	"_IO_write_base"
.LASF75:
	.string	"mk_root"
.LASF80:
	.string	"mtext"
.LASF82:
	.string	"mk_underover"
.LASF79:
	.string	"cancel"
.LASF68:
	.string	"mk_ter"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
