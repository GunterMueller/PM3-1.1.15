	.file	"ExitStmt.mc"
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
	.type	 ExitStmt__Parse,@function
ExitStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_ExitStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $62
	movl MI_Scanner+108,%eax
	call *%eax
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ExitStmt__Parse,.Lfe1-ExitStmt__Parse
	.align 16
	.type	 ExitStmt__Check,@function
ExitStmt__Check:
	pushl %ebp
	movl MI_Marker+80,%eax
	movl %esp,%ebp
	call *%eax
	testl %eax,%eax
	jne .L2
	pushl $MM_ExitStmt+176
	movl MI_Error+44,%eax
	call *%eax
.L2:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ExitStmt__Check,.Lfe2-ExitStmt__Check
	.align 16
	.type	 ExitStmt__Compile,@function
ExitStmt__Compile:
	pushl %ebp
	movl MI_Marker+100,%eax
	movl %esp,%ebp
	call *%eax
	movl $2,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ExitStmt__Compile,.Lfe3-ExitStmt__Compile
	.align 16
	.type	 ExitStmt__GetOutcome,@function
ExitStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl $2,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ExitStmt__GetOutcome,.Lfe4-ExitStmt__GetOutcome
	.align 16
	.type	 M_ExitStmt_t062a07b5_LINK,@function
M_ExitStmt_t062a07b5_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ExitStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ExitStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_ExitStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_ExitStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_ExitStmt_t062a07b5_LINK,.Lfe5-M_ExitStmt_t062a07b5_LINK
.globl MM_ExitStmt
.data
	.align 4
	.type	 MM_ExitStmt,@object
	.size	 MM_ExitStmt,460
MM_ExitStmt:
	.long MM_ExitStmt+300
	.long MM_ExitStmt+44
	.long MM_ExitStmt+164
	.zero	8
	.long MM_ExitStmt+248
	.zero	28
	.long 103417781
.byte 60
.byte 222
.byte 252
.byte 15
.byte 137
.byte 217
.byte 214
.byte 9
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_ExitStmt+445
	.zero	4
	.long M_ExitStmt_t062a07b5_LINK
	.long 1595657850
	.zero	16
	.long MM_ExitStmt+448
	.zero	4
	.long ExitStmt__Check
	.long ExitStmt__Compile
	.long ExitStmt__GetOutcome
	.long ExitStmt__Parse
	.zero	4
	.long 103417781
	.long 2
	.long MM_ExitStmt+184
	.long 29
	.ascii	"EXIT not contained in a loop"
	.zero	4
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long ExitStmt__GetOutcome
	.long MM_ExitStmt+216
	.zero	4
	.long ExitStmt__Compile
	.long MM_ExitStmt+227
	.zero	4
	.long ExitStmt__Check
	.long MM_ExitStmt+235
	.zero	4
	.long ExitStmt__Parse
	.long MM_ExitStmt+241
	.long MI_ExitStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/ExitStmt.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"ExitStmt.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
