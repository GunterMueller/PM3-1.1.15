	.file	"BlockStmt.mc"
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
	.type	 BlockStmt__Parse,@function
BlockStmt__Parse:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_BlockStmt+288,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %esi
	movl MI_StmtRep+148,%eax
	call *%eax
	movl $0,20(%esi)
	addl $8,%esp
	cmpb $0,8(%ebp)
	je .L2
	pushl $1
	pushl $0
	pushl $0
	pushl $1
	movl MI_Scope+52,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,12(%esi)
	addl $16,%esp
	jmp .L4
	.align 16
.L2:
	movl $0,12(%esi)
	jmp .L4
	.align 16
.L5:
	leal 20(%esi),%eax
	pushl %eax
	pushl $0
	pushl $0
	movl MI_Decl+44,%eax
	call *%eax
	addl $12,%esp
.L4:
	pushl $MI_Token+60
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	pushl %eax
	call set_member
	addl $8,%esp
	testl %eax,%eax
	jne .L5
	pushl $48
	movl MI_Scanner+108,%eax
	call *%eax
	call BlockStmt__ParseTrace
	movl %eax,%ecx
	movl %esi,%edx
	addl $4,%esp
	testl %ecx,%ecx
	je .L7
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edi
	shrl $12,%edi
	cmpl %edi,MM_BlockStmt+300
	jg .L8
	movl MM_BlockStmt+296,%eax
	cmpl %edi,4(%eax)
	jge .L7
.L8:
	pushl $709
	call _m3_fault
	.align 16
.L7:
	movl %ecx,24(%edx)
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,16(%esi)
	pushl $58
	movl MI_Scanner+108,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,8(%ebp)
	je .L9
	movl MI_Scope+48,%eax
	call *%eax
.L9:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BlockStmt__Parse,.Lfe1-BlockStmt__Parse
	.align 16
	.type	 BlockStmt__ExtractFails,@function
BlockStmt__ExtractFails:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L17
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_BlockStmt+292
	jg .L14
	movl MM_BlockStmt+288,%eax
	cmpl %edx,4(%eax)
	jl .L14
	movl 20(%ecx),%eax
	movl $0,20(%ecx)
	jmp .L17
	.align 16
.L14:
	xorl %eax,%eax
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 BlockStmt__ExtractFails,.Lfe2-BlockStmt__ExtractFails
	.align 16
	.type	 BlockStmt__BodyOffset,@function
BlockStmt__BodyOffset:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L22
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_BlockStmt+292
	jg .L22
	movl MM_BlockStmt+288,%eax
	cmpl %ecx,4(%eax)
	jl .L22
	movl 16(%edx),%eax
	testl %eax,%eax
	je .L24
	movl 4(%eax),%eax
	jmp .L26
	.align 16
.L24:
.L22:
	movl MI_Scanner+88,%eax
.L26:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 BlockStmt__BodyOffset,.Lfe3-BlockStmt__BodyOffset
	.align 16
	.type	 BlockStmt__Check,@function
BlockStmt__Check:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %edi,%edi
	movl 12(%esi),%ebx
	testl %ebx,%ebx
	je .L28
	pushl %ebx
	movl MI_Scope+60,%eax
	call *%eax
	movl %eax,%edi
	addl $4,%esp
.L28:
	movl 20(%esi),%eax
	pushl %eax
	movl MI_ESet+92,%eax
	call *%eax
	pushl $0
	movl 20(%esi),%eax
	pushl %eax
	pushl $0
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_ESet+96,%eax
	call *%eax
	addl $20,%esp
	testl %ebx,%ebx
	je .L29
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_Scope+92,%eax
	call *%eax
	addl $8,%esp
.L29:
	movl 24(%esi),%edx
	testl %edx,%edx
	je .L30
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	addl $8,%esp
.L30:
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%esi),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	je .L31
	pushl %ebx
	movl MI_Scope+96,%eax
	call *%eax
	addl $4,%esp
.L31:
	pushl $0
	movl 20(%esi),%eax
	pushl %eax
	pushl $0
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_ESet+100,%eax
	call *%eax
	addl $16,%esp
	testl %ebx,%ebx
	je .L27
	pushl %edi
	movl MI_Scope+64,%eax
	call *%eax
.L27:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 BlockStmt__Check,.Lfe4-BlockStmt__Check
	.align 16
	.type	 BlockStmt__Compile,@function
BlockStmt__Compile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebx),%eax
	testl %eax,%eax
	je .L34
	pushl %eax
	movl MI_Scope+60,%eax
	call *%eax
	movl %eax,%edi
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Scope+100,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Scope+104,%eax
	call *%eax
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Tracer+152,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl %eax,%esi
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Tracer+156,%eax
	call *%eax
	movl 12(%ebx),%eax
	pushl %eax
	movl MI_Scope+108,%eax
	call *%eax
	pushl %edi
	movl MI_Scope+64,%eax
	jmp .L36
	.align 16
.L34:
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Tracer+152,%eax
	call *%eax
	movl 16(%ebx),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl %eax,%esi
	movl 24(%ebx),%eax
	pushl %eax
	movl MI_Tracer+156,%eax
.L36:
	call *%eax
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 BlockStmt__Compile,.Lfe5-BlockStmt__Compile
	.align 16
	.type	 BlockStmt__GetOutcome,@function
BlockStmt__GetOutcome:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Stmt+56,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 BlockStmt__GetOutcome,.Lfe6-BlockStmt__GetOutcome
	.align 16
	.type	 BlockStmt__ParseTrace,@function
BlockStmt__ParseTrace:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	xorl %eax,%eax
	movb MI_Scanner+44,%al
	cmpl $41,%eax
	jne .L40
	pushl %eax
	movl MI_Scanner+108,%eax
	call *%eax
	movl MI_Stmt+44,%eax
	call *%eax
	movl %eax,%ebx
	pushl $35
	movl MI_Scanner+108,%eax
	movl %ebx,%esi
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	je .L40
	movl MM_BlockStmt+296,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl %esi,8(%ebx)
	jmp .L41
	.align 16
.L40:
	xorl %eax,%eax
.L41:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 BlockStmt__ParseTrace,.Lfe7-BlockStmt__ParseTrace
	.align 16
	.type	 BlockStmt__DoTrace,@function
BlockStmt__DoTrace:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Stmt+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 BlockStmt__DoTrace,.Lfe8-BlockStmt__DoTrace
	.align 16
	.type	 BlockStmt__CheckTrace,@function
BlockStmt__CheckTrace:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L43
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_BlockStmt+300
	jg .L45
	movl MM_BlockStmt+296,%eax
	cmpl %edx,4(%eax)
	jge .L44
.L45:
	pushl $2181
	call _m3_fault
	.align 16
.L44:
	testl %ecx,%ecx
	je .L43
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ecx),%eax
	pushl %eax
	movl MI_Stmt+48,%eax
	call *%eax
.L43:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 BlockStmt__CheckTrace,.Lfe9-BlockStmt__CheckTrace
	.align 16
	.type	 M_BlockStmt_te4ecc974_LINK,@function
M_BlockStmt_te4ecc974_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_BlockStmt+296,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_BlockStmt+264,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe10:
	.size	 M_BlockStmt_te4ecc974_LINK,.Lfe10-M_BlockStmt_te4ecc974_LINK
	.align 16
	.type	 M_BlockStmt_t9a6334b5_LINK,@function
M_BlockStmt_t9a6334b5_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_BlockStmt+288,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_BlockStmt+252,%eax
	movl %eax,4(%edx)
	movl MM_BlockStmt+256,%eax
	movl %eax,8(%edx)
	movl MM_BlockStmt+260,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe11:
	.size	 M_BlockStmt_t9a6334b5_LINK,.Lfe11-M_BlockStmt_t9a6334b5_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_BlockStmt
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_BlockStmt
.data
	.align 4
	.type	 MM_BlockStmt,@object
	.size	 MM_BlockStmt,728
MM_BlockStmt:
	.long MM_BlockStmt+504
	.long MM_BlockStmt+44
	.long MM_BlockStmt+288
	.zero	8
	.long MM_BlockStmt+392
	.zero	28
	.long -1704774475
.byte 101
.byte 214
.byte 89
.byte 147
.byte 208
.byte 226
.byte 58
.byte 9
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_BlockStmt+682
	.long MM_BlockStmt+687
	.long MM_BlockStmt+692
	.zero	4
	.long M_BlockStmt_t9a6334b5_LINK
	.long 1595657850
	.zero	16
	.long MM_BlockStmt+715
	.long MM_BlockStmt+148
	.zero	8
	.long -454243980
.byte 166
.byte 64
.byte 40
.byte 236
.byte 210
.byte 137
.byte 196
.byte 8
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_BlockStmt+650
	.long MM_BlockStmt+652
	.long MM_BlockStmt+654
	.zero	4
	.long M_BlockStmt_te4ecc974_LINK
	.long -1958370728
	.zero	16
	.long MM_BlockStmt+662
	.zero	4
	.long BlockStmt__Check
	.long BlockStmt__Compile
	.long BlockStmt__GetOutcome
	.long BlockStmt__DoTrace
	.long BlockStmt__Parse
	.long BlockStmt__ExtractFails
	.long BlockStmt__BodyOffset
	.long BlockStmt__ParseTrace
	.long BlockStmt__CheckTrace
	.long MM_BlockStmt+296
	.long -1704774475
	.zero	4
	.long -454243980
	.ascii	"CheckTrace"
	.zero	1
	.ascii	"DoTrace"
	.zero	1
	.ascii	"ParseTrace"
	.zero	1
	.ascii	"GetOutcome"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"BodyOffset"
	.zero	1
	.ascii	"ExtractFails"
	.zero	1
	.ascii	"Parse"
	.zero	4
	.long BlockStmt__CheckTrace
	.long MM_BlockStmt+304
	.long MI_BlockStmt+60
	.long BlockStmt__DoTrace
	.long MM_BlockStmt+315
	.zero	4
	.long BlockStmt__ParseTrace
	.long MM_BlockStmt+323
	.long MI_BlockStmt+56
	.long BlockStmt__GetOutcome
	.long MM_BlockStmt+334
	.zero	4
	.long BlockStmt__Compile
	.long MM_BlockStmt+345
	.zero	4
	.long BlockStmt__Check
	.long MM_BlockStmt+353
	.zero	4
	.long BlockStmt__BodyOffset
	.long MM_BlockStmt+359
	.long MI_BlockStmt+52
	.long BlockStmt__ExtractFails
	.long MM_BlockStmt+370
	.long MI_BlockStmt+48
	.long BlockStmt__Parse
	.long MM_BlockStmt+383
	.long MI_BlockStmt+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/stmts/BlockStmt.m3"
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
	.ascii	"BlockStmt.TraceNode"
	.zero	1
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 5
.byte 10
.byte 4
.byte 16
.byte 225
.byte 46
.byte 241
.byte 204
.byte 16
.byte 122
.byte 206
.byte 27
.byte 95
.byte 16
.byte 44
.byte 196
.byte 243
.byte 11
.byte 16
.byte 116
.byte 201
.byte 236
.byte 228
	.ascii	"BlockStmt.P"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
