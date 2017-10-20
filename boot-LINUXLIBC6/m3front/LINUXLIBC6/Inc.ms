	.file	"Inc.mc"
	.version	"01.01"
/ SRC Modula-3 version cygnus-2.7.2-960712 (i486--linuxelf) compiled by GNU C version egcs-2.91.66 19990314/Linux (egcs-1.1.2 release).
/ options passed:  -fno-strength-reduce -O2
/ options enabled:  -fdefer-pop -fcse-follow-jumps -fcse-skip-blocks
/ -fexpensive-optimizations -fthread-jumps -fpeephole -fforce-mem
/ -ffunction-cse -finline -fkeep-static-consts -fcaller-saves
/ -fpcc-struct-return -frerun-cse-after-loop -fschedule-insns2 -fcommon
/ -fverbose-asm -fgnu-linker -m80387 -mhard-float -mno-soft-float -mieee-fp
/ -mfp-ret-in-387 -mschedule-prologue -mcpu=i486 -march=i486

gcc2_compiled.:
.text
	.align 16
	.type	 Inc__Check,@function
Inc__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	pushl $MM_Inc+68
	movl MI_Dec+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Inc__Check,.Lfe1-Inc__Check
	.align 16
	.type	 Inc__Prep,@function
Inc__Prep:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L3
	pushl $372
	call _m3_fault
	.align 16
.L3:
	cmpl $0,4(%eax)
	jne .L4
	pushl $370
	call _m3_fault
	.align 16
.L4:
	movl (%eax),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_Expr+208,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L5
	pushl $388
	call _m3_fault
	.align 16
.L5:
	movl 4(%eax),%edx
	cmpl $1,%edx
	jle .L2
	ja .L8
	pushl $386
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Inc__Prep,.Lfe2-Inc__Prep
	.align 16
	.type	 Inc__Compile,@function
Inc__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-52(%ebp)
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L10
	pushl $468
	call _m3_fault
	.align 16
.L10:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L11
	pushl $466
	call _m3_fault
	.align 16
.L11:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-60(%ebp)
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,%edx
	movb $0,-56(%ebp)
	leal -52(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Type+68,%eax
	call *%eax
	movl 20(%ebx),%eax
	addl $12,%esp
	testl %eax,%eax
	jne .L12
	pushl $612
	call _m3_fault
	.align 16
.L12:
	movl 4(%eax),%ebx
	cmpl $1,%ebx
	jle .L13
	movl %eax,%edx
	ja .L15
	pushl $626
	call _m3_fault
	.align 16
.L15:
	movl (%edx),%eax
	movl 4(%eax),%edi
	jmp .L16
	.align 16
.L13:
	pushl $MI_TInt+52
	movl MI_IntegerExpr+44,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_Expr+200,%eax
	call *%eax
	addl $8,%esp
.L16:
	leal -24(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%ebx
	pushl %ebx
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+164,%eax
	call *%eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%esi
	pushl %esi
	pushl %edi
	movl MI_Expr+164,%eax
	call *%eax
	addl $24,%esp
	cmpb $0,MI_Host+84
	je .L17
	pushl $MI_Target+112
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L18
	pushl $MI_TInt+44
	pushl %esi
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L18
	xorl %eax,%eax
	movb -56(%ebp),%al
	incl %eax
	cmpl $3,%eax
	jle .L19
	pushl $753
	call _m3_fault
	.align 16
.L19:
	movb %al,-56(%ebp)
.L18:
	pushl $MI_Target+120
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L17
	leal -8(%ebp),%eax
	pushl %eax
	pushl $MI_TInt+44
	movl MI_TInt+104,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L17
	xorl %eax,%eax
	movb -56(%ebp),%al
	addl $2,%eax
	cmpl $3,%eax
	jle .L21
	pushl $785
	call _m3_fault
	.align 16
.L21:
	movb %al,-56(%ebp)
.L17:
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+212,%eax
	call *%eax
	movl MI_CG+220,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	pushl %esi
	movl MI_CG+228,%eax
	call *%eax
	movl -52(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L22
	pushl $913
	call _m3_fault
	.align 16
.L22:
	pushl %eax
	pushl $0
	xorl %eax,%eax
	movb -36(%ebp),%al
	pushl %eax
	movl MI_CG+376,%eax
	call *%eax
	pushl %edi
	movl MI_Expr+204,%eax
	call *%eax
	addl $16,%esp
	movb -36(%ebp),%bl
	testb %bl,%bl
	jne .L23
	pushl $8
	movl MI_CG+712,%eax
	call *%eax
	movb %bl,-56(%ebp)
	jmp .L32
	.align 16
.L23:
	pushl $2
	movl MI_CG+460,%eax
	call *%eax
.L32:
	addl $4,%esp
	xorl %eax,%eax
	movb -56(%ebp),%al
	testl %eax,%eax
	jle .L29
	cmpl $1,%eax
	jle .L26
	cmpl $2,%eax
	jle .L27
	cmpl $3,%eax
	jle .L28
	jmp .L29
	.align 16
.L26:
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_CG+684,%eax
	jmp .L33
	.align 16
.L27:
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_CG+688,%eax
.L33:
	call *%eax
	addl $4,%esp
	jmp .L29
	.align 16
.L28:
	leal -24(%ebp),%eax
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	movl MI_CG+692,%eax
	call *%eax
	addl $8,%esp
.L29:
	movl -52(%ebp),%eax
	testl %eax,%eax
	jge .L31
	pushl $1153
	call _m3_fault
	.align 16
.L31:
	pushl %eax
	pushl $0
	xorl %eax,%eax
	movb -36(%ebp),%al
	pushl %eax
	movl MI_CG+400,%eax
	call *%eax
	pushl %esi
	movl MI_CG+232,%eax
	call *%eax
	movl -60(%ebp),%ecx
	pushl %ecx
	movl MI_Expr+228,%eax
	call *%eax
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Inc__Compile,.Lfe3-Inc__Compile
	.align 16
	.type	 Inc__Initialize,@function
Inc__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MI_CallExpr+200,%eax
	pushl %eax
	movl MI_CallExpr+164,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+172,%eax
	pushl %eax
	movl MI_CallExpr+188,%eax
	pushl %eax
	pushl %eax
	movl MI_CallExpr+184,%eax
	pushl %eax
	pushl %eax
	movl MM_Inc+56,%eax
	pushl %eax
	movl MM_Inc+52,%eax
	pushl %eax
	movl MM_Inc+48,%eax
	pushl %eax
	movl MI_CallExpr+176,%eax
	pushl %eax
	pushl $0
	pushl $0
	pushl $1
	pushl $0
	pushl $0
	pushl $2
	pushl $1
	movl MI_CallExpr+152,%eax
	call *%eax
	addl $76,%esp
	movl %eax,MM_Inc+44
	pushl $0
	pushl $1
	pushl %eax
	pushl $MM_Inc+68
	movl MI_Procedure+64,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Inc__Initialize,.Lfe4-Inc__Initialize
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Inc
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_Inc
.data
	.align 4
	.type	 MM_Inc,@object
	.size	 MM_Inc,316
MM_Inc:
	.long MM_Inc+168
	.zero	16
	.long MM_Inc+112
	.zero	4
	.long MM_Inc+164
	.long MM_Inc+164
	.zero	12
	.long Inc__Check
	.long Inc__Prep
	.long Inc__Compile
	.long Inc__Initialize
	.long 2
	.long MM_Inc+76
	.long 4
	.ascii	"INC"
	.zero	1
	.ascii	"Initialize"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Prep"
	.zero	1
	.ascii	"Check"
	.zero	3
	.long Inc__Initialize
	.long MM_Inc+80
	.long MI_Inc+44
	.long Inc__Compile
	.long MM_Inc+91
	.zero	4
	.long Inc__Prep
	.long MM_Inc+99
	.zero	4
	.long Inc__Check
	.long MM_Inc+104
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinOps/Inc.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
