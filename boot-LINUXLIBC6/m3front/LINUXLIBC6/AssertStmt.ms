	.file	"AssertStmt.mc"
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
	.type	 AssertStmt__Parse,@function
AssertStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_AssertStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $38
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,12(%ebx)
	addl $12,%esp
	cmpb $35,MI_Scanner+44
	je .L2
	pushl $MM_AssertStmt+176
	movl MI_Scanner+116,%eax
	call *%eax
.L2:
	movb $16,MI_Scanner+44
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 AssertStmt__Parse,.Lfe1-AssertStmt__Parse
	.align 16
	.type	 AssertStmt__Check,@function
AssertStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $16,%esp
	cmpl %eax,MI_Bool+44
	je .L3
	cmpl %eax,MI_ErrType+44
	je .L3
	pushl $MM_AssertStmt+204
	movl MI_Error+44,%eax
	call *%eax
.L3:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AssertStmt__Check,.Lfe2-AssertStmt__Check
	.align 16
	.type	 AssertStmt__Compile,@function
AssertStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $0,-4(%ebp)
	cmpb $0,MI_Host+88
	je .L6
	movl MI_TInt+60,%eax
	movl %eax,-12(%ebp)
	movl MI_TInt+64,%eax
	movl %eax,-8(%ebp)
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Expr+160,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,%edx
	addl $4,%esp
	testl %esi,%esi
	jne .L7
	pushl $1
	movl MI_CG+52,%eax
	call *%eax
	pushl $100
	pushl $-1
	movl %eax,%ebx
	pushl %ebx
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl $100
	pushl $-1
	pushl %ebx
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	movl MI_CG+660,%eax
	addl $36,%esp
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_CG+316,%eax
	call *%eax
	jmp .L6
	.align 16
.L7:
	leal -4(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%ebx
	pushl %ebx
	pushl %edx
	movl MI_EnumExpr+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L9
	pushl $MI_TInt+44
	pushl %ebx
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L9
	movl MI_CG+660,%eax
	call *%eax
	xorl %eax,%eax
	jmp .L11
	.align 16
.L9:
	pushl $MI_TInt+52
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_TInt+100,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L6
	pushl $1008
	call _m3_fault
	.align 16
.L6:
	movl $1,%eax
.L11:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 AssertStmt__Compile,.Lfe3-AssertStmt__Compile
	.align 16
	.type	 AssertStmt__GetOutcome,@function
AssertStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AssertStmt__GetOutcome,.Lfe4-AssertStmt__GetOutcome
	.align 16
	.type	 M_AssertStmt_t27e85677_LINK,@function
M_AssertStmt_t27e85677_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AssertStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AssertStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_AssertStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_AssertStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_AssertStmt_t27e85677_LINK,.Lfe5-M_AssertStmt_t27e85677_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AssertStmt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_AssertStmt
.data
	.align 4
	.type	 MM_AssertStmt,@object
	.size	 MM_AssertStmt,504
MM_AssertStmt:
	.long MM_AssertStmt+332
	.long MM_AssertStmt+44
	.long MM_AssertStmt+164
	.zero	8
	.long MM_AssertStmt+280
	.zero	28
	.long 669537911
.byte 111
.byte 6
.byte 144
.byte 51
.byte 24
.byte 80
.byte 120
.byte 20
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AssertStmt+479
	.long MM_AssertStmt+481
	.long MM_AssertStmt+483
	.zero	4
	.long M_AssertStmt_t27e85677_LINK
	.long 1595657850
	.zero	16
	.long MM_AssertStmt+491
	.zero	4
	.long AssertStmt__Check
	.long AssertStmt__Compile
	.long AssertStmt__GetOutcome
	.long AssertStmt__Parse
	.zero	4
	.long 669537911
	.long 2
	.long MM_AssertStmt+184
	.long 13
	.ascii	"missing '*>'"
	.zero	4
	.long 2
	.long MM_AssertStmt+212
	.long 35
	.ascii	"ASSERT condition must be a BOOLEAN"
	.zero	2
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long AssertStmt__GetOutcome
	.long MM_AssertStmt+248
	.zero	4
	.long AssertStmt__Compile
	.long MM_AssertStmt+259
	.zero	4
	.long AssertStmt__Check
	.long MM_AssertStmt+267
	.zero	4
	.long AssertStmt__Parse
	.long MM_AssertStmt+273
	.long MI_AssertStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/AssertStmt.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
	.ascii	"AssertStmt.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
