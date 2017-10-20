	.file	"RTProcedure.mc"
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
	.type	 RTProcedure__ToFingerprint,@function
RTProcedure__ToFingerprint:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl $0
	pushl $0
	pushl $MM_RTProcedure+308
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl 12(%ebp),%edx
	movl MI_Fingerprint+52,%eax
	movl %ebp,%esp
	movl %eax,(%edx)
	movl MI_Fingerprint+56,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe1:
	.size	 RTProcedure__ToFingerprint,.Lfe1-RTProcedure__ToFingerprint
	.align 16
	.type	 RTProcedure__FromFingerprint,@function
RTProcedure__FromFingerprint:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $0
	pushl $MM_RTProcedure+364
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTProcedure__FromFingerprint,.Lfe2-RTProcedure__FromFingerprint
	.align 16
	.type	 RTProcedureSRC__NumProcedures,@function
RTProcedureSRC__NumProcedures:
	pushl %ebp
	movl %esp,%ebp
	cmpl $0,MM_RTProcedure+252
	jne .L4
	call RTProcedure__CountProcs
.L4:
	movl MM_RTProcedure+252,%eax
	testl %eax,%eax
	jge .L5
	pushl $865
	call _m3_fault
	.align 16
.L5:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTProcedureSRC__NumProcedures,.Lfe3-RTProcedureSRC__NumProcedures
	.align 16
	.type	 RTProcedureSRC__FromPC,@function
RTProcedureSRC__FromPC:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	xorl %ebx,%ebx
	cmpl $0,MM_RTProcedure+256
	jne .L7
	call RTProcedure__Init
.L7:
	movl 12(%ebp),%esi
	movl %ebx,(%esi)
	movl 20(%ebp),%esi
	movl %ebx,(%esi)
	movl 16(%ebp),%esi
	movl %ebx,(%esi)
	cmpl %edi,MM_RTProcedure+264
	ja .L6
	cmpl %edi,MM_RTProcedure+268
	jbe .L6
	pushl %edi
	call RTProcedure__Locate
	movl %eax,%ecx
	addl $4,%esp
	testl %ecx,%ecx
	jge .L27
	movl $2147483647,-8(%ebp)
	movl MM_RTProcedure+256,%eax
	testl %eax,%eax
	jne .L11
	pushl $1140
	call _m3_fault
	.align 16
.L11:
	movl %ebx,%edx
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L12
	.align 16
.L13:
	movl MM_RTProcedure+256,%eax
	testl %eax,%eax
	jne .L14
	pushl $1156
	call _m3_fault
	.align 16
.L14:
	cmpl %edx,4(%eax)
	ja .L15
	pushl $1154
	call _m3_fault
	.align 16
.L15:
	movl (%eax),%eax
	movl (%eax,%edx,4),%ebx
	testl %ebx,%ebx
	je .L16
	movl %edi,%eax
	subl (%ebx),%eax
	js .L16
	cmpl %eax,-8(%ebp)
	jle .L16
	movl %edx,%ecx
	movl %eax,-8(%ebp)
.L16:
	incl %edx
.L12:
	cmpl %edx,-4(%ebp)
	jge .L13
	testl %ecx,%ecx
	jl .L6
.L27:
	movl MM_RTProcedure+256,%eax
	testl %eax,%eax
	jne .L21
	pushl $1348
	call _m3_fault
	.align 16
.L21:
	cmpl %ecx,4(%eax)
	ja .L22
	pushl $1346
	call _m3_fault
	.align 16
.L22:
	movl (%eax),%eax
	movl (%eax,%ecx,4),%ebx
	testl %ebx,%ebx
	jne .L23
	pushl $1364
	call _m3_fault
	.align 16
.L23:
	movl 12(%ebp),%esi
	movl (%ebx),%eax
	movl %eax,(%esi)
	movl 20(%ebp),%esi
	movl 4(%ebx),%eax
	movl %eax,(%esi)
	movl MM_RTProcedure+260,%eax
	testl %eax,%eax
	jne .L25
	pushl $1396
	call _m3_fault
	.align 16
.L25:
	cmpl %ecx,4(%eax)
	ja .L26
	pushl $1394
	call _m3_fault
	.align 16
.L26:
	movl (%eax),%eax
	movl 16(%ebp),%esi
	movl (%eax,%ecx,4),%eax
	movl %eax,(%esi)
.L6:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTProcedureSRC__FromPC,.Lfe4-RTProcedureSRC__FromPC
	.align 16
	.type	 RTProcedure__CountProcs,@function
RTProcedure__CountProcs:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MI_RTModule+44,%eax
	xorl %esi,%esi
	call *%eax
	movl %esi,%ebx
	leal -1(%eax),%edi
	jmp .L29
	.align 16
.L30:
	pushl %ebx
	movl MI_RTModule+48,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L31
	pushl $1572
	call _m3_fault
	.align 16
.L31:
	movl 20(%eax),%eax
	testl %eax,%eax
	je .L32
	xorl %edx,%edx
	jmp .L33
	.align 16
.L34:
	addl $12,%eax
	incl %edx
.L33:
	testl %eax,%eax
	jne .L35
	pushl $1620
	call _m3_fault
	.align 16
.L35:
	cmpl $0,(%eax)
	jne .L34
	addl %edx,%esi
.L32:
	incl %ebx
.L29:
	cmpl %edi,%ebx
	jle .L30
	leal -12(%ebp),%esp
	movl %esi,MM_RTProcedure+252
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTProcedure__CountProcs,.Lfe5-RTProcedure__CountProcs
	.align 16
	.type	 RTProcedure__Init,@function
RTProcedure__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl %edi,-20(%ebp)
	cmpl $0,MM_RTProcedure+252
	jne .L39
	call RTProcedure__CountProcs
.L39:
	movl $2147483647,MM_RTProcedure+264
	movl -20(%ebp),%edx
	movl %edx,MM_RTProcedure+268
	leal -12(%ebp),%esi
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_RTProcedure+252,%edx
	movl %edx,%eax
	addl %edx,%eax
	addl %edx,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_RTProcedure+420,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_RTProcedure+252,%edx
	movl %edx,%eax
	addl %edx,%eax
	addl %edx,%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_RTProcedure+428,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	call *%eax
	movl %eax,-16(%ebp)
	movl MI_RTModule+44,%eax
	call *%eax
	movl %edi,%esi
	decl %eax
	movl %eax,-24(%ebp)
	addl $16,%esp
	jmp .L40
	.align 16
.L41:
	pushl %esi
	movl MI_RTModule+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L42
	pushl $2020
	call _m3_fault
	.align 16
.L42:
	movl 20(%ebx),%edi
	testl %edi,%edi
	je .L43
	jmp .L44
	.align 16
.L45:
	movl -16(%ebp),%edx
	pushl %edx
	movl -20(%ebp),%edx
	pushl %edx
	pushl %edi
	pushl %ebx
	call RTProcedure__Insert
	addl $16,%esp
	movl (%edi),%eax
	cmpl %eax,MM_RTProcedure+264
	jbe .L50
	movl %eax,MM_RTProcedure+264
.L50:
	movl (%edi),%eax
	cmpl %eax,MM_RTProcedure+268
	jae .L51
	movl %eax,MM_RTProcedure+268
.L51:
	addl $12,%edi
.L44:
	testl %edi,%edi
	jne .L53
	pushl $2052
	call _m3_fault
	.align 16
.L53:
	cmpl $0,(%edi)
	jne .L45
.L43:
	incl %esi
.L40:
	cmpl %esi,-24(%ebp)
	jge .L41
	cmpl $0,MM_RTProcedure+256
	jne .L38
	addl $20000,MM_RTProcedure+268
	movl -16(%ebp),%edx
	movl %edx,MM_RTProcedure+260
	movl -20(%ebp),%edx
	movl %edx,MM_RTProcedure+256
.L38:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTProcedure__Init,.Lfe6-RTProcedure__Init
	.align 16
	.type	 RTProcedure__Insert,@function
RTProcedure__Insert:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edi
	movl (%eax),%esi
.L58:
	testl %edi,%edi
	jne .L59
	pushl $2516
	call _m3_fault
	.align 16
.L59:
	movl %esi,%eax
	xorl %edx,%edx
	divl 4(%edi)
	movl %edx,-4(%ebp)
	movl %edx,-8(%ebp)
	movl %edi,%ecx
	movl 4(%edi),%eax
	cmpl %eax,%edx
	jb .L61
	pushl $2530
	call _m3_fault
	.align 16
.L61:
	movl (%ecx),%ebx
	movl -8(%ebp),%edx
	movl (%ebx,%edx,4),%ecx
	testl %ecx,%ecx
	jne .L68
	leal 0(,%edx,4),%esi
	movl 12(%ebp),%eax
	movl %eax,(%esi,%ebx)
	cmpl $0,20(%ebp)
	jne .L65
	pushl $2580
	call _m3_fault
	.align 16
.L65:
	movl 20(%ebp),%ecx
	movl -4(%ebp),%edx
	cmpl %edx,4(%ecx)
	ja .L66
	pushl $2578
	call _m3_fault
	.align 16
.L66:
	movl (%ecx),%ecx
	addl %esi,%ecx
	cmpl $0,8(%ebp)
	jne .L67
	pushl $2580
	call _m3_fault
	.align 16
.L67:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	jmp .L57
	.align 16
.L68:
	movl 12(%ebp),%eax
	movl (%eax),%eax
	cmpl %eax,(%ecx)
	je .L57
	imull $446185741,%esi,%eax
	leal 1(%eax),%esi
	jmp .L58
	.align 16
.L57:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTProcedure__Insert,.Lfe7-RTProcedure__Insert
	.align 16
	.type	 RTProcedure__Locate,@function
RTProcedure__Locate:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl %esi,%ebx
.L72:
	movl MM_RTProcedure+256,%eax
	movl %eax,-4(%ebp)
	testl %eax,%eax
	jne .L73
	pushl $2804
	call _m3_fault
	.align 16
.L73:
	movl -4(%ebp),%edx
	movl %ebx,%eax
	movl 4(%edx),%edx
	movl %edx,-8(%ebp)
	xorl %edx,%edx
	divl -8(%ebp)
	movl %edx,%ecx
	cmpl %ecx,-8(%ebp)
	ja .L75
	pushl $2818
	call _m3_fault
	.align 16
.L75:
	movl -4(%ebp),%eax
	movl (%eax),%eax
	movl (%eax,%ecx,4),%edi
	testl %edi,%edi
	jne .L77
	movl $-1,%eax
	jmp .L80
	.align 16
.L77:
	cmpl %esi,(%edi)
	je .L78
	imull $446185741,%ebx,%eax
	leal 1(%eax),%ebx
	jmp .L72
	.align 16
.L78:
	movl %ecx,%eax
.L80:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTProcedure__Locate,.Lfe8-RTProcedure__Locate
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTProcedure
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_RTProcedure
.data
	.align 4
	.type	 MM_RTProcedure,@object
	.size	 MM_RTProcedure,828
MM_RTProcedure:
	.long MM_RTProcedure+620
	.long MM_RTProcedure+44
	.long MM_RTProcedure+420
	.zero	8
	.long MM_RTProcedure+520
	.zero	28
	.long -102258809
.byte 37
.byte 83
.byte 98
.byte 249
.byte 162
.byte 244
.byte 133
.byte 0
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTProcedure+802
	.zero	36
	.long MM_RTProcedure+807
	.long MM_RTProcedure+148
	.zero	8
	.long 814646054
.byte 66
.byte 17
.byte 252
.byte 42
.byte 100
.byte 146
.byte 114
.byte 26
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTProcedure+776
	.zero	36
	.long MM_RTProcedure+781
	.zero	24
	.long RTProcedure__CountProcs
	.long RTProcedure__Init
	.long RTProcedure__Insert
	.long RTProcedure__Locate
	.long RTProcedureSRC__NumProcedures
	.long RTProcedureSRC__FromPC
	.long RTProcedure__ToFingerprint
	.long RTProcedure__FromFingerprint
	.long 2
	.long MM_RTProcedure+316
	.long 43
	.ascii	"RTProcedure.ToFingerprint is not supported"
	.zero	2
	.long 2
	.long MM_RTProcedure+372
	.long 45
	.ascii	"RTProcedure.FromFingerprint is not supported"
	.zero	4
	.long MM_RTProcedure+428
	.long -102258809
	.zero	4
	.long 814646054
	.ascii	"Locate"
	.zero	1
	.ascii	"Insert"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"CountProcs"
	.zero	1
	.ascii	"FromPC"
	.zero	1
	.ascii	"NumProcedures"
	.zero	1
	.ascii	"FromFingerprint"
	.zero	1
	.ascii	"ToFingerprint"
	.zero	4
	.long RTProcedure__Locate
	.long MM_RTProcedure+436
	.zero	4
	.long RTProcedure__Insert
	.long MM_RTProcedure+443
	.zero	4
	.long RTProcedure__Init
	.long MM_RTProcedure+450
	.zero	4
	.long RTProcedure__CountProcs
	.long MM_RTProcedure+455
	.zero	4
	.long RTProcedureSRC__FromPC
	.long MM_RTProcedure+466
	.long MI_RTProcedureSRC+48
	.long RTProcedureSRC__NumProcedures
	.long MM_RTProcedure+473
	.long MI_RTProcedureSRC+44
	.long RTProcedure__FromFingerprint
	.long MM_RTProcedure+487
	.long MI_RTProcedure+152
	.long RTProcedure__ToFingerprint
	.long MM_RTProcedure+503
	.long MI_RTProcedure+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTProcedure.m3"
	.zero	1
.byte 24
.byte 1
.byte 5
.byte 0
.byte 0
	.ascii	"RTProcedure.NameList"
	.zero	1
.byte 24
.byte 1
.byte 5
.byte 0
.byte 0
	.ascii	"RTProcedure.InfoList"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
