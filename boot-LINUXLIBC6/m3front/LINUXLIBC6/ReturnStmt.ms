	.file	"ReturnStmt.mc"
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
	.type	 ReturnStmt__Parse,@function
ReturnStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_ReturnStmt+164,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_StmtRep+148,%eax
	call *%eax
	movl $0,12(%ebx)
	pushl $89
	movl MI_Scanner+108,%eax
	call *%eax
	pushl $MI_Token+92
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $20,%esp
	testl %eax,%eax
	je .L2
	movl MI_Expr+148,%eax
	call *%eax
	movl %eax,12(%ebx)
.L2:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 ReturnStmt__Parse,.Lfe1-ReturnStmt__Parse
	.align 16
	.type	 ReturnStmt__Check,@function
ReturnStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Expr+156,%eax
	call *%eax
	movl MI_Marker+96,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L4
	pushl $MM_ReturnStmt+176
	jmp .L9
	.align 16
.L4:
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Marker+92,%eax
	call *%eax
	addl $8,%esp
	movl 12(%ebx),%ecx
	testl %ecx,%ecx
	jne .L5
	cmpl $0,-8(%ebp)
	je .L3
	pushl $MM_ReturnStmt+216
	jmp .L9
	.align 16
.L5:
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L8
	pushl $MM_ReturnStmt+252
.L9:
	movl MI_Error+44,%eax
	call *%eax
	jmp .L3
	.align 16
.L8:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	pushl %edx
	movl MI_AssignStmt+48,%eax
	call *%eax
.L3:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 ReturnStmt__Check,.Lfe2-ReturnStmt__Check
	.align 16
	.type	 ReturnStmt__Compile,@function
ReturnStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	movl 12(%eax),%eax
	pushl %eax
	movl MI_Marker+108,%eax
	call *%eax
	movl $4,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 ReturnStmt__Compile,.Lfe3-ReturnStmt__Compile
	.align 16
	.type	 ReturnStmt__GetOutcome,@function
ReturnStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl $4,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 ReturnStmt__GetOutcome,.Lfe4-ReturnStmt__GetOutcome
	.align 16
	.type	 M_ReturnStmt_t90373845_LINK,@function
M_ReturnStmt_t90373845_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_ReturnStmt+164,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_ReturnStmt+148,%eax
	movl %eax,4(%edx)
	movl MM_ReturnStmt+152,%eax
	movl %eax,8(%edx)
	movl MM_ReturnStmt+156,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe5:
	.size	 M_ReturnStmt_t90373845_LINK,.Lfe5-M_ReturnStmt_t90373845_LINK
.globl MM_ReturnStmt
.data
	.align 4
	.type	 MM_ReturnStmt,@object
	.size	 MM_ReturnStmt,556
MM_ReturnStmt:
	.long MM_ReturnStmt+384
	.long MM_ReturnStmt+44
	.long MM_ReturnStmt+164
	.zero	8
	.long MM_ReturnStmt+332
	.zero	28
	.long -1875429307
.byte 175
.byte 255
.byte 123
.byte 139
.byte 234
.byte 199
.byte 76
.byte 27
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_ReturnStmt+531
	.long MM_ReturnStmt+533
	.long MM_ReturnStmt+535
	.zero	4
	.long M_ReturnStmt_t90373845_LINK
	.long 1595657850
	.zero	16
	.long MM_ReturnStmt+543
	.zero	4
	.long ReturnStmt__Check
	.long ReturnStmt__Compile
	.long ReturnStmt__GetOutcome
	.long ReturnStmt__Parse
	.zero	4
	.long -1875429307
	.long 2
	.long MM_ReturnStmt+184
	.long 26
	.ascii	"RETURN not in a procedure"
	.zero	3
	.long 2
	.long MM_ReturnStmt+224
	.long 22
	.ascii	"missing return result"
	.zero	3
	.long 2
	.long MM_ReturnStmt+260
	.long 40
	.ascii	"procedure does not have a return result"
	.zero	1
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Parse"
	.zero	2
	.long ReturnStmt__GetOutcome
	.long MM_ReturnStmt+300
	.zero	4
	.long ReturnStmt__Compile
	.long MM_ReturnStmt+311
	.zero	4
	.long ReturnStmt__Check
	.long MM_ReturnStmt+319
	.zero	4
	.long ReturnStmt__Parse
	.long MM_ReturnStmt+325
	.long MI_ReturnStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/ReturnStmt.m3"
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
	.ascii	"ReturnStmt.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
