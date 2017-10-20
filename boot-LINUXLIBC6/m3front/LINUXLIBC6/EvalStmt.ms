	.file	"EvalStmt.mc"
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
	.type	 EvalStmt__Parse,@function
EvalStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_EvalStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $59
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,12(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 EvalStmt__Parse,.Lfe1-EvalStmt__Parse
	.align 16
	.type	 EvalStmt__Check,@function
EvalStmt__Check:
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
	addl $12,%esp
	testl %eax,%eax
	jne .L2
	pushl $MM_EvalStmt+176
	movl MI_Error+44,%eax
	call *%eax
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 EvalStmt__Check,.Lfe2-EvalStmt__Check
	.align 16
	.type	 EvalStmt__Compile,@function
EvalStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+200,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+204,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	pushl %eax
	movl MI_CG+640,%eax
	call *%eax
	movl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 EvalStmt__Compile,.Lfe3-EvalStmt__Compile
	.align 16
	.type	 EvalStmt__GetOutcome,@function
EvalStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 EvalStmt__GetOutcome,.Lfe4-EvalStmt__GetOutcome
	.align 16
	.type	 M_EvalStmt_ta9f97b0b_LINK,@function
M_EvalStmt_ta9f97b0b_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EvalStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_EvalStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_EvalStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_EvalStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_EvalStmt_ta9f97b0b_LINK,.Lfe5-M_EvalStmt_ta9f97b0b_LINK
.globl MM_EvalStmt
.data
	.align 4
	.type	 MM_EvalStmt,@object
	.size	 MM_EvalStmt,468
MM_EvalStmt:
	.long MM_EvalStmt+300
	.long MM_EvalStmt+44
	.long MM_EvalStmt+164
	.zero	8
	.long MM_EvalStmt+248
	.zero	28
	.long -1443267829
.byte 2
.byte 73
.byte 206
.byte 173
.byte 9
.byte 50
.byte 55
.byte 4
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_EvalStmt+445
	.long MM_EvalStmt+447
	.long MM_EvalStmt+449
	.zero	4
	.long M_EvalStmt_ta9f97b0b_LINK
	.long 1595657850
	.zero	16
	.long MM_EvalStmt+457
	.zero	4
	.long EvalStmt__Check
	.long EvalStmt__Compile
	.long EvalStmt__GetOutcome
	.long EvalStmt__Parse
	.zero	4
	.long -1443267829
	.long 2
	.long MM_EvalStmt+184
	.long 32
	.ascii	"expression doesn't have a value"
	.zero	1
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long EvalStmt__GetOutcome
	.long MM_EvalStmt+216
	.zero	4
	.long EvalStmt__Compile
	.long MM_EvalStmt+227
	.zero	4
	.long EvalStmt__Check
	.long MM_EvalStmt+235
	.zero	4
	.long EvalStmt__Parse
	.long MM_EvalStmt+241
	.long MI_EvalStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/EvalStmt.m3"
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
	.ascii	"EvalStmt.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
