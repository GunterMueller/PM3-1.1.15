	.file	"Coverage.mc"
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
	.type	 Coverage__NoteLine,@function
Coverage__NoteLine:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl $0,-4(%ebp)
	cmpb $0,MI_Host+68
	je .L1
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_Scanner+124,%eax
	call *%eax
	addl $8,%esp
	cmpl $100000,-8(%ebp)
	jg .L1
	movl MI_Host+44,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L1
	movl -8(%ebp),%eax
	movl MM_Coverage+148,%edx
	movl %eax,%ecx
	cmpl %edx,%eax
	jle .L5
	movl %edx,%ecx
.L5:
	movl %ecx,MM_Coverage+148
	movl MM_Coverage+152,%edx
	cmpl %eax,%edx
	jle .L6
	movl %edx,MM_Coverage+152
	jmp .L8
	.align 16
.L6:
	movl %eax,MM_Coverage+152
	jmp .L8
	.align 16
.L9:
	call Coverage__Expand
.L8:
	movl MM_Coverage+260,%ecx
	testl %ecx,%ecx
	je .L9
	movl 4(%ecx),%ebx
	leal -1(%ebx),%eax
	movl -8(%ebp),%edx
	cmpl %edx,%eax
	jl .L9
	cmpl %ebx,%edx
	jb .L13
	pushl $770
	call _m3_fault
	.align 16
.L13:
	movl (%ecx),%eax
	movb $1,(%edx,%eax)
.L1:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Coverage__NoteLine,.Lfe1-Coverage__NoteLine
	.align 16
	.type	 Coverage__Expand,@function
Coverage__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_Coverage+260,%edx
	testl %edx,%edx
	jne .L15
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %eax
	movl MM_Coverage+312,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_Coverage+260
	jmp .L14
	.align 16
.L15:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 4(%edx),%edx
	addl %edx,%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_Coverage+312,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_Coverage+260,%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L18
	pushl $916
	call _m3_fault
	.align 16
.L18:
	xorl %ecx,%ecx
	movl 4(%eax),%esi
	decl %esi
	jmp .L19
	.align 16
.L20:
	testl %ebx,%ebx
	jne .L21
	pushl $916
	call _m3_fault
	.align 16
.L21:
	cmpl %ecx,4(%ebx)
	ja .L22
	pushl $914
	call _m3_fault
	.align 16
.L22:
	movl MM_Coverage+260,%edx
	testl %edx,%edx
	jne .L23
	pushl $916
	call _m3_fault
	.align 16
.L23:
	cmpl %ecx,4(%edx)
	ja .L24
	pushl $914
	call _m3_fault
	.align 16
.L24:
	movl (%edx),%edx
	movl (%ebx),%eax
	movb (%ecx,%edx),%dl
	movb %dl,(%ecx,%eax)
	incl %ecx
.L19:
	cmpl %esi,%ecx
	jle .L20
	movl %ebx,MM_Coverage+260
.L14:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Coverage__Expand,.Lfe2-Coverage__Expand
	.align 16
	.type	 Coverage__NoteProcedure,@function
Coverage__NoteProcedure:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	cmpb $0,MI_Host+68
	je .L26
	movl MM_Coverage+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L28
	pushl $1076
	call _m3_fault
	.align 16
.L28:
	movl MM_Coverage+264,%eax
	movl %eax,(%edx)
	movl %ebx,4(%edx)
	movl $-1,12(%edx)
	movl %edx,MM_Coverage+264
	incl MM_Coverage+268
.L26:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Coverage__NoteProcedure,.Lfe3-Coverage__NoteProcedure
	.align 16
	.type	 Coverage__GenerateTables,@function
Coverage__GenerateTables:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_Coverage+148,%eax
	movl MM_Coverage+152,%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	movl $1,-24(%ebp)
	testl %eax,%eax
	jle .L32
	incl %eax
	movl %eax,-24(%ebp)
.L32:
	movl MI_Host+44,%eax
	pushl %eax
	movl MI_Host+108,%eax
	call *%eax
	movl %eax,-20(%ebp)
	pushl $MM_Coverage+332
	call Coverage__TLen
	movl %eax,-16(%ebp)
	movl -20(%ebp),%ecx
	pushl %ecx
	call Coverage__TLen
	movl %eax,-12(%ebp)
	pushl $MM_Coverage+364
	call Coverage__TLen
	movl %eax,-8(%ebp)
	addl $16,%esp
	cmpb $0,MI_Host+68
	je .L31
	movl MI_Target+600,%eax
	movl -16(%ebp),%ebx
	imull %eax,%ebx
	movl MI_Target+96,%edx
	leal (%ebx,%edx,2),%ebx
	imull -12(%ebp),%eax
	addl %eax,%ebx
	leal (%ebx,%edx,2),%ebx
	movl -24(%ebp),%eax
	imull %edx,%eax
	addl %eax,%ebx
	addl %edx,%ebx
	movl MM_Coverage+264,%esi
	movl $0,-4(%ebp)
	jmp .L35
	.align 16
.L36:
	movl 4(%esi),%eax
	testl %eax,%eax
	je .L42
	pushl %eax
	movl MI_Value+108,%eax
	call *%eax
	pushl %eax
	movl MI_M3ID+52,%eax
	call *%eax
	addl $8,%esp
	movl %eax,8(%esi)
	pushl %eax
	call Coverage__TLen
	movl %eax,%edi
	movl MI_Target+96,%edx
	addl %edx,%ebx
	imull MI_Target+600,%eax
	addl %eax,%ebx
	addl %edx,%ebx
	incl -4(%ebp)
	addl $4,%esp
.L42:
	movl (%esi),%esi
.L35:
	testl %esi,%esi
	jne .L36
	movl -8(%ebp),%eax
	imull MI_Target+600,%eax
	addl %eax,%ebx
	jns .L44
	pushl $1809
	call _m3_fault
	.align 16
.L44:
	pushl $1
	pushl %esi
	pushl %esi
	pushl %esi
	movl MI_Target+64,%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	movl MI_CG+192,%eax
	call *%eax
	movl %eax,MM_Coverage+272
	pushl %eax
	movl MI_CG+244,%eax
	call *%eax
	addl $32,%esp
	pushl $MM_Coverage+332
	pushl %esi
	movl MI_CG+276,%eax
	call *%eax
	movl -16(%ebp),%ebx
	imull MI_Target+600,%ebx
	addl MI_Target+96,%ebx
	movl -20(%ebp),%ecx
	pushl %ecx
	movl MI_Text+56,%eax
	call *%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+96,%ebx
	movl -20(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_CG+276,%eax
	call *%eax
	movl -12(%ebp),%eax
	imull MI_Target+600,%eax
	addl %eax,%ebx
	addl $32,%esp
	movl MM_Coverage+148,%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	movl MI_Target+96,%eax
	movl -24(%ebp),%ecx
	pushl %ecx
	pushl %eax
	addl %eax,%ebx
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+96,%ebx
	movl %ebx,MM_Coverage+276
	movl -24(%ebp),%ecx
	decl %ecx
	movl %ecx,-28(%ebp)
	addl $24,%esp
	jmp .L45
	.align 16
.L46:
	movl MM_Coverage+260,%eax
	testl %eax,%eax
	je .L47
	movl %esi,%edx
	addl MM_Coverage+148,%edx
	cmpl %edx,4(%eax)
	ja .L49
	pushl $2242
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%eax
	cmpb $0,(%edx,%eax)
	je .L47
	xorl %edi,%edi
	jmp .L50
	.align 16
.L47:
	movl $-1,%edi
.L50:
	pushl %edi
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+96,%ebx
	incl %esi
	addl $12,%esp
.L45:
	cmpl %esi,-28(%ebp)
	jge .L46
	movl -4(%ebp),%ecx
	pushl %ecx
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+96,%ebx
	movl MM_Coverage+264,%esi
	addl $12,%esp
	jmp .L52
	.align 16
.L53:
	cmpl $0,4(%esi)
	je .L60
	movl 8(%esi),%eax
	pushl %eax
	call Coverage__TLen
	movl %eax,%edi
	addl $4,%esp
	movl 8(%esi),%eax
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	pushl %eax
	movl MI_Target+96,%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+96,%ebx
	addl $16,%esp
	movl 8(%esi),%eax
	pushl %eax
	pushl %ebx
	movl MI_CG+276,%eax
	call *%eax
	movl %edi,%eax
	imull MI_Target+600,%eax
	addl %eax,%ebx
	addl $8,%esp
	movl %ebx,12(%esi)
	addl MI_Target+96,%ebx
.L60:
	movl (%esi),%esi
.L52:
	testl %esi,%esi
	jne .L53
	pushl $MM_Coverage+364
	pushl %ebx
	movl MI_CG+276,%eax
	call *%eax
	movl MM_Coverage+272,%eax
	pushl %eax
	movl MI_CG+248,%eax
	call *%eax
.L31:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Coverage__GenerateTables,.Lfe4-Coverage__GenerateTables
	.align 16
	.type	 Coverage__TLen,@function
Coverage__TLen:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L63:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	movl MI_Target+96,%edi
	movl MI_Target+600,%eax
	movl %eax,-12(%ebp)
	movl %edi,%eax
	cltd
	idivl -12(%ebp)
	movl %edx,%ecx
	movl %eax,%ebx
	testl %ecx,%ecx
	je .L64
	movl -12(%ebp),%eax
	xorl %edi,%eax
	jns .L64
	decl %ebx
.L64:
	pushl %esi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%edx
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -1(%ebx,%edx),%eax
	pushl %eax
	pushl %ebx
	call m3_div
	imull %ebx,%eax
.L65:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Coverage__TLen,.Lfe5-Coverage__TLen
	.align 16
	.type	 Coverage__CountLine,@function
Coverage__CountLine:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl $0,-4(%ebp)
	cmpb $0,MI_Host+68
	je .L66
	leal -8(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	movl MI_Scanner+124,%eax
	call *%eax
	addl $8,%esp
	cmpl $100000,-8(%ebp)
	jg .L66
	movl MI_Host+44,%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L66
	movl MM_Coverage+260,%eax
	testl %eax,%eax
	jne .L70
	pushl $3012
	call _m3_fault
	.align 16
.L70:
	movl -8(%ebp),%edx
	cmpl %edx,4(%eax)
	ja .L71
	pushl $3010
	call _m3_fault
	.align 16
.L71:
	movl (%eax),%eax
	cmpb $2,(%edx,%eax)
	je .L66
	movl MM_Coverage+272,%eax
	testl %eax,%eax
	jne .L73
	pushl $3024
	call _m3_fault
	.align 16
.L73:
	movl %edx,%ebx
	subl MM_Coverage+148,%ebx
	imull MI_Target+96,%ebx
	addl MM_Coverage+276,%ebx
	pushl %ebx
	pushl %eax
	movl MI_CG+380,%eax
	call *%eax
	pushl $MI_TInt+52
	movl MI_CG+428,%eax
	call *%eax
	pushl $1
	movl MI_CG+460,%eax
	call *%eax
	pushl %ebx
	movl MM_Coverage+272,%eax
	pushl %eax
	movl MI_CG+408,%eax
	call *%eax
	movl MM_Coverage+260,%eax
	addl $24,%esp
	testl %eax,%eax
	jne .L74
	pushl $3124
	call _m3_fault
	.align 16
.L74:
	movl -8(%ebp),%edx
	cmpl %edx,4(%eax)
	ja .L75
	pushl $3122
	call _m3_fault
	.align 16
.L75:
	movl (%eax),%eax
	movb $2,(%edx,%eax)
.L66:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Coverage__CountLine,.Lfe6-Coverage__CountLine
	.align 16
	.type	 Coverage__CountProcedure,@function
Coverage__CountProcedure:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $0,MI_Host+68
	je .L76
	cmpl $0,MM_Coverage+272
	jne .L78
	pushl $3232
	call _m3_fault
	.align 16
.L78:
	movl MM_Coverage+264,%ebx
	jmp .L79
	.align 16
.L80:
	cmpl %eax,4(%ebx)
	je .L83
	movl (%ebx),%ebx
.L79:
	testl %ebx,%ebx
	jne .L80
.L83:
	testl %ebx,%ebx
	jne .L86
	pushl $3360
	call _m3_fault
	.align 16
.L86:
	movl 12(%ebx),%eax
	pushl %eax
	movl MM_Coverage+272,%eax
	pushl %eax
	movl MI_CG+380,%eax
	call *%eax
	pushl $MI_TInt+52
	movl MI_CG+428,%eax
	call *%eax
	pushl $1
	movl MI_CG+460,%eax
	call *%eax
	addl $16,%esp
	movl 12(%ebx),%eax
	pushl %eax
	movl MM_Coverage+272,%eax
	pushl %eax
	movl MI_CG+408,%eax
	call *%eax
.L76:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Coverage__CountProcedure,.Lfe7-Coverage__CountProcedure
	.align 16
	.type	 Coverage__Reset,@function
Coverage__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $2147483647,MM_Coverage+148
	movl $-2147483648,MM_Coverage+152
	movl $0,MM_Coverage+260
	movl $0,MM_Coverage+264
	movl $0,MM_Coverage+268
	movl $0,MM_Coverage+272
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Coverage__Reset,.Lfe8-Coverage__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Coverage
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_Coverage
.data
	.align 4
	.type	 MM_Coverage,@object
	.size	 MM_Coverage,784
MM_Coverage:
	.long MM_Coverage+584
	.long MM_Coverage+44
	.long MM_Coverage+312
	.zero	8
	.long MM_Coverage+476
	.zero	4
	.long MM_Coverage+576
	.long MM_Coverage+576
	.zero	16
	.long 1203851969
.byte 151
.byte 202
.byte 133
.byte 68
.byte 86
.byte 152
.byte 68
.byte 3
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_Coverage+738
	.long MM_Coverage+743
	.long MM_Coverage+747
	.zero	28
	.long MM_Coverage+766
	.long MM_Coverage+156
	.long 2147483647
	.long -2147483648
	.zero	8
	.long -1398415573
.byte 236
.byte 180
.byte 121
.byte 183
.byte 199
.byte 107
.byte 220
.byte 27
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_Coverage+728
	.zero	4
	.long MM_Coverage+733
	.zero	56
	.long Coverage__Expand
	.long Coverage__TLen
	.long Coverage__NoteLine
	.long Coverage__NoteProcedure
	.long Coverage__GenerateTables
	.long Coverage__CountLine
	.long Coverage__CountProcedure
	.long Coverage__Reset
	.long MM_Coverage+320
	.long -1398415573
	.zero	4
	.long 1203851969
	.long 2
	.long MM_Coverage+340
	.long 17
	.ascii	"<<<<Coverage 1.0"
	.zero	4
	.long 2
	.long MM_Coverage+372
	.long 17
	.ascii	"Coverage 1.0>>>>"
	.zero	4
	.ascii	"Reset"
	.zero	1
	.ascii	"CountProcedure"
	.zero	1
	.ascii	"CountLine"
	.zero	1
	.ascii	"TLen"
	.zero	1
	.ascii	"GenerateTables"
	.zero	1
	.ascii	"NoteProcedure"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"NoteLine"
	.zero	4
	.long Coverage__Reset
	.long MM_Coverage+392
	.long MI_Coverage+64
	.long Coverage__CountProcedure
	.long MM_Coverage+398
	.long MI_Coverage+60
	.long Coverage__CountLine
	.long MM_Coverage+413
	.long MI_Coverage+56
	.long Coverage__TLen
	.long MM_Coverage+423
	.zero	4
	.long Coverage__GenerateTables
	.long MM_Coverage+428
	.long MI_Coverage+52
	.long Coverage__NoteProcedure
	.long MM_Coverage+443
	.long MI_Coverage+48
	.long Coverage__Expand
	.long MM_Coverage+457
	.zero	4
	.long Coverage__NoteLine
	.long MM_Coverage+464
	.long MI_Coverage+44
	.zero	4
.byte 43
.byte 4
.byte 1
.byte 4
.byte 4
.byte 37
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Coverage.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 5
.byte 3
.byte 4
.byte 4
.byte 4
.byte 14
.byte 0
.byte 4
.byte 4
.byte 4
.byte 0
.byte 5
.byte 15
.byte 4
.byte 16
.byte 193
.byte 82
.byte 193
.byte 71
.byte 16
.byte 106
.byte 188
.byte 176
.byte 249
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 7
	.ascii	"Coverage.ProcHead"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
