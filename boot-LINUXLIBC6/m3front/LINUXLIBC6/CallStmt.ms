	.file	"CallStmt.mc"
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
	.type	 CallStmt__New,@function
CallStmt__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_CallStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_StmtRep+148,%eax
	call *%eax
	movl %ebx,12(%esi)
	leal -8(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 CallStmt__New,.Lfe1-CallStmt__New
	.align 16
	.type	 CallStmt__Check,@function
CallStmt__Check:
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
	testl %eax,%eax
	je .L2
	cmpl %eax,MI_ErrType+44
	je .L2
	pushl $MM_CallStmt+176
	movl MI_Error+44,%eax
	call *%eax
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 CallStmt__Check,.Lfe2-CallStmt__Check
	.align 16
	.type	 CallStmt__Compile,@function
CallStmt__Compile:
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
	movl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 CallStmt__Compile,.Lfe3-CallStmt__Compile
	.align 16
	.type	 CallStmt__GetOutcome,@function
CallStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 CallStmt__GetOutcome,.Lfe4-CallStmt__GetOutcome
	.align 16
	.type	 M_CallStmt_tab1db0d2_LINK,@function
M_CallStmt_tab1db0d2_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_CallStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_CallStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_CallStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_CallStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_CallStmt_tab1db0d2_LINK,.Lfe5-M_CallStmt_tab1db0d2_LINK
.globl MM_CallStmt
.data
	.align 4
	.type	 MM_CallStmt,@object
	.size	 MM_CallStmt,480
MM_CallStmt:
	.long MM_CallStmt+300
	.long MM_CallStmt+44
	.long MM_CallStmt+164
	.zero	8
	.long MM_CallStmt+248
	.zero	28
	.long -1424117550
.byte 107
.byte 143
.byte 54
.byte 177
.byte 185
.byte 63
.byte 43
.byte 26
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_CallStmt+445
	.long MM_CallStmt+447
	.long MM_CallStmt+449
	.zero	4
	.long M_CallStmt_tab1db0d2_LINK
	.long 1595657850
	.zero	12
	.long MM_CallStmt+457
	.long MM_CallStmt+468
	.zero	4
	.long CallStmt__Check
	.long CallStmt__Compile
	.long CallStmt__GetOutcome
	.long CallStmt__New
	.zero	4
	.long -1424117550
	.long 2
	.long MM_CallStmt+184
	.long 30
	.ascii	"Expression is not a statement"
	.zero	3
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"New"
	.zero	4
	.long CallStmt__GetOutcome
	.long MM_CallStmt+216
	.zero	4
	.long CallStmt__Compile
	.long MM_CallStmt+227
	.zero	4
	.long CallStmt__Check
	.long MM_CallStmt+235
	.zero	4
	.long CallStmt__New
	.long MM_CallStmt+241
	.long MI_CallStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/CallStmt.m3"
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
	.ascii	"CallStmt.P"
	.zero	1
	.ascii	"CallStmt.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
