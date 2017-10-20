	.file	"LoopStmt.mc"
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
	.type	 LoopStmt__Parse,@function
LoopStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_LoopStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $73
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,12(%ebx)
	pushl $58
	movl MI_Scanner+108,%eax
	call *%eax
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 LoopStmt__Parse,.Lfe1-LoopStmt__Parse
	.align 16
	.type	 LoopStmt__Check,@function
LoopStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $-1
	movl MI_Marker+76,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	movl MI_Marker+44,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LoopStmt__Check,.Lfe2-LoopStmt__Check
	.align 16
	.type	 LoopStmt__Compile,@function
LoopStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $2
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%esi
	leal 1(%esi),%edi
	pushl %edi
	movl MI_Marker+76,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_CG+316,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $20,%esp
	testb $1,%bl
	je .L4
	pushl %esi
	movl MI_CG+320,%eax
	call *%eax
	andb $254,%bl
	addl $4,%esp
.L4:
	pushl $0
	pushl %edi
	movl MI_CG+316,%eax
	call *%eax
	movl MI_Marker+44,%eax
	call *%eax
	testb $2,%bl
	je .L5
	movl %ebx,%eax
	orb $1,%al
	movl %eax,%ebx
	andb $253,%bl
.L5:
	leal -12(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LoopStmt__Compile,.Lfe3-LoopStmt__Compile
	.align 16
	.type	 LoopStmt__GetOutcome,@function
LoopStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	movl %eax,%edx
	andb $254,%al
	testb $2,%dl
	je .L7
	orb $1,%al
	andb $253,%al
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 LoopStmt__GetOutcome,.Lfe4-LoopStmt__GetOutcome
	.align 16
	.type	 M_LoopStmt_tbf5c7f7a_LINK,@function
M_LoopStmt_tbf5c7f7a_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_LoopStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_LoopStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_LoopStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_LoopStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_LoopStmt_tbf5c7f7a_LINK,.Lfe5-M_LoopStmt_tbf5c7f7a_LINK
.globl MM_LoopStmt
.data
	.align 4
	.type	 MM_LoopStmt,@object
	.size	 MM_LoopStmt,424
MM_LoopStmt:
	.long MM_LoopStmt+256
	.long MM_LoopStmt+44
	.long MM_LoopStmt+164
	.zero	8
	.long MM_LoopStmt+204
	.zero	28
	.long -1084457094
.byte 175
.byte 204
.byte 179
.byte 185
.byte 213
.byte 179
.byte 239
.byte 6
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_LoopStmt+401
	.long MM_LoopStmt+403
	.long MM_LoopStmt+405
	.zero	4
	.long M_LoopStmt_tbf5c7f7a_LINK
	.long 1595657850
	.zero	16
	.long MM_LoopStmt+413
	.zero	4
	.long LoopStmt__Check
	.long LoopStmt__Compile
	.long LoopStmt__GetOutcome
	.long LoopStmt__Parse
	.zero	4
	.long -1084457094
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long LoopStmt__GetOutcome
	.long MM_LoopStmt+172
	.zero	4
	.long LoopStmt__Compile
	.long MM_LoopStmt+183
	.zero	4
	.long LoopStmt__Check
	.long MM_LoopStmt+191
	.zero	4
	.long LoopStmt__Parse
	.long MM_LoopStmt+197
	.long MI_LoopStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/LoopStmt.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 122
.byte 206
.byte 27
.byte 95
	.ascii	"LoopStmt.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
