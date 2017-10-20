	.file	"RaiseStmt.mc"
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
	.type	 RaiseStmt__Parse,@function
RaiseStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_RaiseStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $83
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Scope+68,%eax
	call *%eax
	movl %eax,12(%ebx)
	movl $0,24(%ebx)
	movl $0,28(%ebx)
	movl $0,16(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,20(%ebx)
	addl $12,%esp
	cmpb $14,MI_Scanner+44
	jne .L2
	movl MI_Scanner+104,%eax
	call *%eax
	movl 20(%ebx),%eax
	movl %eax,16(%ebx)
	movl MI_Scanner+112,%eax
	call *%eax
	movl %eax,20(%ebx)
.L2:
	cmpb $17,MI_Scanner+44
	jne .L3
	movl MI_Scanner+104,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,28(%ebx)
	pushl $29
	movl MI_Scanner+108,%eax
	call *%eax
.L3:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RaiseStmt__Parse,.Lfe1-RaiseStmt__Parse
	.align 16
	.type	 RaiseStmt__Check,@function
RaiseStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%eax
	pushl %eax
	movl 28(%edi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 28(%edi),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	movl %eax,-8(%ebp)
	leal 16(%edi),%esi
	pushl %esi
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Scope+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Value+44,%eax
	call *%eax
	addl $28,%esp
	testl %ebx,%ebx
	jne .L5
	pushl $MM_RaiseStmt+176
	pushl %esi
	movl MI_Error+56,%eax
	jmp .L14
	.align 16
.L5:
	pushl %ebx
	movl MI_Value+80,%eax
	call *%eax
	addl $4,%esp
	cmpl $3,%eax
	je .L7
	pushl $MM_RaiseStmt+200
	pushl %esi
	movl MI_Error+56,%eax
	jmp .L14
	.align 16
.L7:
	movl -4(%ebp),%edx
	movl %edx,24(%edi)
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_ESet+108,%eax
.L14:
	call *%eax
	addl $8,%esp
	movl 24(%edi),%eax
	pushl %eax
	movl MI_Exceptionz+48,%eax
	call *%eax
	addl $4,%esp
	cmpl $0,24(%edi)
	jne .L8
	movl 12(%ebp),%eax
	pushl %eax
	movl 28(%edi),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	jmp .L4
	.align 16
.L8:
	testl %eax,%eax
	jne .L10
	cmpl $0,28(%edi)
	je .L4
	pushl $MM_RaiseStmt+232
	jmp .L15
	.align 16
.L10:
	cmpl $0,28(%edi)
	jne .L12
	pushl $MM_RaiseStmt+272
	jmp .L15
	.align 16
.L12:
	movl -8(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_Type+124,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L13
	pushl $MM_RaiseStmt+316
.L15:
	leal 16(%edi),%eax
	pushl %eax
	movl MI_Error+56,%eax
	call *%eax
	jmp .L4
	.align 16
.L13:
	movl 12(%ebp),%eax
	pushl %eax
	movl 28(%edi),%eax
	pushl %eax
	movl -8(%ebp),%edx
	pushl %edx
	movl MI_AssignStmt+48,%eax
	call *%eax
.L4:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RaiseStmt__Check,.Lfe2-RaiseStmt__Check
	.align 16
	.type	 RaiseStmt__Compile,@function
RaiseStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 28(%edx),%eax
	pushl %eax
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Exceptionz+56,%eax
	call *%eax
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RaiseStmt__Compile,.Lfe3-RaiseStmt__Compile
	.align 16
	.type	 RaiseStmt__GetOutcome,@function
RaiseStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RaiseStmt__GetOutcome,.Lfe4-RaiseStmt__GetOutcome
	.align 16
	.type	 M_RaiseStmt_tf6e82ff3_LINK,@function
M_RaiseStmt_tf6e82ff3_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RaiseStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RaiseStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_RaiseStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_RaiseStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_RaiseStmt_tf6e82ff3_LINK,.Lfe5-M_RaiseStmt_tf6e82ff3_LINK
.globl MM_RaiseStmt
.data
	.align 4
	.type	 MM_RaiseStmt,@object
	.size	 MM_RaiseStmt,628
MM_RaiseStmt:
	.long MM_RaiseStmt+432
	.long MM_RaiseStmt+44
	.long MM_RaiseStmt+164
	.zero	8
	.long MM_RaiseStmt+380
	.zero	28
	.long -152555533
.byte 241
.byte 161
.byte 202
.byte 254
.byte 2
.byte 142
.byte 34
.byte 8
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RaiseStmt+578
	.long MM_RaiseStmt+584
	.long MM_RaiseStmt+589
	.zero	4
	.long M_RaiseStmt_tf6e82ff3_LINK
	.long 1595657850
	.zero	16
	.long MM_RaiseStmt+613
	.zero	4
	.long RaiseStmt__Check
	.long RaiseStmt__Compile
	.long RaiseStmt__GetOutcome
	.long RaiseStmt__Parse
	.zero	4
	.long -152555533
	.long 2
	.long MM_RaiseStmt+184
	.long 10
	.ascii	"undefined"
	.zero	3
	.long 2
	.long MM_RaiseStmt+208
	.long 17
	.ascii	"not an exception"
	.zero	4
	.long 2
	.long MM_RaiseStmt+240
	.long 28
	.ascii	"exception takes no argument"
	.zero	1
	.long 2
	.long MM_RaiseStmt+280
	.long 31
	.ascii	"exception requires an argument"
	.zero	2
	.long 2
	.long MM_RaiseStmt+324
	.long 24
	.ascii	"argument has wrong type"
	.zero	1
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long RaiseStmt__GetOutcome
	.long MM_RaiseStmt+348
	.zero	4
	.long RaiseStmt__Compile
	.long MM_RaiseStmt+359
	.zero	4
	.long RaiseStmt__Check
	.long MM_RaiseStmt+367
	.zero	4
	.long RaiseStmt__Parse
	.long MM_RaiseStmt+373
	.long MI_RaiseStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/RaiseStmt.m3"
	.zero	1
.byte 4
.byte 14
.byte 14
.byte 4
.byte 4
.byte 0
.byte 4
.byte 41
.byte 4
.byte 4
.byte 0
.byte 7
.byte 10
.byte 4
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 15
.byte 2
.byte 19
.byte 254
.byte 126
.byte 25
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
	.ascii	"RaiseStmt.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
