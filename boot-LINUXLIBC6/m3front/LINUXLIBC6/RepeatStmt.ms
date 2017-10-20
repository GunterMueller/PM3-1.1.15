	.file	"RepeatStmt.mc"
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
	.type	 RepeatStmt__Parse,@function
RepeatStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_RepeatStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	pushl $88
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,12(%ebx)
	pushl $98
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Scanner+88,%eax
	movl %eax,20(%ebx)
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,16(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RepeatStmt__Parse,.Lfe1-RepeatStmt__Parse
	.align 16
	.type	 RepeatStmt__Check,@function
RepeatStmt__Check:
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
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Expr+152,%eax
	call *%eax
	pushl %eax
	movl MI_Type+80,%eax
	call *%eax
	addl $28,%esp
	cmpl %eax,MI_Bool+44
	je .L2
	pushl $MM_RepeatStmt+176
	movl MI_Error+44,%eax
	call *%eax
.L2:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RepeatStmt__Check,.Lfe2-RepeatStmt__Check
	.align 16
	.type	 RepeatStmt__Compile,@function
RepeatStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $2
	movl MI_CG+52,%eax
	call *%eax
	movl %eax,%esi
	leal 1(%esi),%edx
	movl %edx,-4(%ebp)
	pushl %edx
	movl MI_Marker+76,%eax
	call *%eax
	pushl $0
	pushl %esi
	movl MI_CG+316,%eax
	call *%eax
	movl 12(%edi),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl %eax,%ebx
	addl $20,%esp
	testb $1,%bl
	je .L5
	movl 20(%edi),%eax
	pushl %eax
	movl MI_CG+72,%eax
	call *%eax
	pushl $80
	pushl %esi
	pushl $-1
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+220,%eax
	call *%eax
	pushl $80
	pushl %esi
	pushl $-1
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Expr+224,%eax
	call *%eax
	addl $36,%esp
.L5:
	pushl $0
	movl -4(%ebp),%edx
	pushl %edx
	movl MI_CG+316,%eax
	call *%eax
	movl MI_Marker+44,%eax
	call *%eax
	testb $2,%bl
	je .L6
	movl %ebx,%eax
	orb $1,%al
	movl %eax,%ebx
	andb $253,%bl
.L6:
	leal -16(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RepeatStmt__Compile,.Lfe3-RepeatStmt__Compile
	.align 16
	.type	 RepeatStmt__GetOutcome,@function
RepeatStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	testb $2,%al
	je .L8
	orb $1,%al
	andb $253,%al
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RepeatStmt__GetOutcome,.Lfe4-RepeatStmt__GetOutcome
	.align 16
	.type	 M_RepeatStmt_t0e5a7f5e_LINK,@function
M_RepeatStmt_t0e5a7f5e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RepeatStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RepeatStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_RepeatStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_RepeatStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_RepeatStmt_t0e5a7f5e_LINK,.Lfe5-M_RepeatStmt_t0e5a7f5e_LINK
.globl MM_RepeatStmt
.data
	.align 4
	.type	 MM_RepeatStmt,@object
	.size	 MM_RepeatStmt,488
MM_RepeatStmt:
	.long MM_RepeatStmt+304
	.long MM_RepeatStmt+44
	.long MM_RepeatStmt+164
	.zero	8
	.long MM_RepeatStmt+252
	.zero	28
	.long 240811870
.byte 238
.byte 166
.byte 11
.byte 13
.byte 176
.byte 217
.byte 81
.byte 3
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RepeatStmt+451
	.long MM_RepeatStmt+455
	.long MM_RepeatStmt+458
	.zero	4
	.long M_RepeatStmt_t0e5a7f5e_LINK
	.long 1595657850
	.zero	16
	.long MM_RepeatStmt+472
	.zero	4
	.long RepeatStmt__Check
	.long RepeatStmt__Compile
	.long RepeatStmt__GetOutcome
	.long RepeatStmt__Parse
	.zero	4
	.long 240811870
	.long 2
	.long MM_RepeatStmt+184
	.long 35
	.ascii	"REPEAT condition must be a BOOLEAN"
	.zero	2
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long RepeatStmt__GetOutcome
	.long MM_RepeatStmt+220
	.zero	4
	.long RepeatStmt__Compile
	.long MM_RepeatStmt+231
	.zero	4
	.long RepeatStmt__Check
	.long MM_RepeatStmt+239
	.zero	4
	.long RepeatStmt__Parse
	.long MM_RepeatStmt+245
	.long MI_RepeatStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/RepeatStmt.m3"
	.zero	1
.byte 4
.byte 4
.byte 14
.byte 0
.byte 4
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 122
.byte 206
.byte 27
.byte 95
.byte 16
.byte 11
.byte 185
.byte 21
.byte 235
.byte 7
	.ascii	"RepeatStmt.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
