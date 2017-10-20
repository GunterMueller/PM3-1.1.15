	.file	"WebFile.mc"
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
	.type	 WebFile__Update,@function
WebFile__Update:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl MM_WebFile+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	leal -12(%ebp),%eax
	pushl %eax
	pushl $1
	pushl %ebx
	movl MI_M3Path+52,%eax
	call *%eax
	pushl $0
	xorl %eax,%eax
	movb -4(%ebp),%al
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	pushl $0
	movl MI_M3Path+48,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	testl %esi,%esi
	jne .L2
	pushl $564
	call _m3_fault
	.align 16
.L2:
	movl MM_WebFile+148,%eax
	movl %eax,(%esi)
	movl %esi,MM_WebFile+148
	movl %edx,4(%esi)
	movl %edi,8(%esi)
	movl $0,12(%esi)
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	leal -24(%ebp),%esp
	movl %eax,16(%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 WebFile__Update,.Lfe1-WebFile__Update
	.align 16
	.type	 WebFile__Dump,@function
WebFile__Dump:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_WebFile+148,%ebx
	testl %ebx,%ebx
	je .L7
	movl $0,MM_WebFile+148
	pushl $MM_WebFile+200
	movl MI_ETimer+44,%eax
	call *%eax
	pushl %eax
	movl MI_ETimer+52,%eax
	call *%eax
	call WebFile__Inhale
	pushl %ebx
	pushl %eax
	call WebFile__ParseFile
	pushl %eax
	pushl %ebx
	call WebFile__DumpFile
	movl MI_ETimer+56,%eax
	call *%eax
.L7:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 WebFile__Dump,.Lfe2-WebFile__Dump
	.align 16
	.type	 WebFile__Inhale,@function
WebFile__Inhale:
	pushl %ebp
	movl %esp,%ebp
	subl $220,%esp
	pushl %esi
	pushl %ebx
	movl $0,-216(%ebp)
	movl $MM_WebFile+232,%ebx
	pushl %ebx
	movl MI_Utils+100,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L19
	movl -216(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl MI_Utils+56,%eax
	call *%eax
	movl %eax,-220(%ebp)
	addl $8,%esp
	testl %eax,%eax
	je .L19
.L12:
	movl $MM_WebFile+248,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L13
	movl -220(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	leal -196(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -184(%ebp),%esi
	movl %esi,-212(%ebp)
	addl $8,%esp
	testl %esi,%esi
	jle .L14
	leal -208(%ebp),%eax
	leal -200(%ebp),%ecx
	movl %ecx,-208(%ebp)
	movl $1,-204(%ebp)
	movl %esi,-200(%ebp)
	pushl %eax
	movl MM_WebFile+256,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-216(%ebp)
	addl $8,%esp
	testl %eax,%eax
	jne .L15
	pushl $1092
	call _m3_fault
	.align 16
.L15:
	cmpl $16777216,-212(%ebp)
	jbe .L16
	pushl $1089
	call _m3_fault
	.align 16
.L16:
	movl -212(%ebp),%esi
	pushl %esi
	movl -216(%ebp),%ecx
	pushl %ecx
	movl -220(%ebp),%esi
	pushl %esi
	movl MI_M3File+44,%eax
	call *%eax
	addl $12,%esp
.L14:
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L17
	.align 16
.L13:
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	pushl $MM_WebFile+232
	pushl $MM_WebFile+268
	pushl %eax
	movl MI_Msg+60,%eax
	call *%eax
	movl $0,-216(%ebp)
	addl $20,%esp
.L17:
	movl $MM_WebFile+232,%ebx
	pushl %ebx
	movl -220(%ebp),%ecx
	pushl %ecx
	movl MI_Utils+60,%eax
	call *%eax
	addl $8,%esp
	cmpl $0,-216(%ebp)
	je .L19
	movl -216(%ebp),%esi
	movl -212(%ebp),%ecx
	cmpl %ecx,4(%esi)
	je .L19
	pushl $0
	pushl $0
	pushl %ebx
	pushl $MM_WebFile+268
	pushl $0
	movl MI_Msg+60,%eax
	call *%eax
	movl $0,-216(%ebp)
.L19:
	movl -216(%ebp),%eax
	leal -228(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 WebFile__Inhale,.Lfe3-WebFile__Inhale
	.align 16
	.type	 WebFile__ParseFile,@function
WebFile__ParseFile:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	xorl %ebx,%ebx
	movl %ebx,-28(%ebp)
	testl %edi,%edi
	je .L69
	pushl %edi
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,-44(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jle .L69
	movl MM_WebFile+292,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl -28(%ebp),%ecx
	movl 24(%eax),%eax
	pushl %ecx
	pushl %edx
	call *%eax
	movl %eax,%edx
	movl %edx,-32(%ebp)
	addl $12,%esp
	jmp .L25
	.align 16
.L26:
	movl -32(%ebp),%ecx
	movl (%ecx),%eax
	movl 8(%eax),%edx
	movl 4(%esi),%eax
	movl %eax,-12(%ebp)
	movl $0,-16(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $12,%esp
	movl (%esi),%esi
.L25:
	testl %esi,%esi
	jne .L26
	movl %esi,-36(%ebp)
.L30:
	cmpl %ebx,-44(%ebp)
	jg .L31
	pushl $MM_WebFile+304
	jmp .L70
	.align 16
.L31:
	movl %ebx,-48(%ebp)
	jmp .L32
	.align 16
.L33:
	incl %ebx
.L32:
	cmpl %ebx,-44(%ebp)
	jle .L37
	testl %edi,%edi
	jne .L35
	pushl $1764
	call _m3_fault
	.align 16
.L35:
	cmpl %ebx,4(%edi)
	ja .L36
	pushl $1762
	call _m3_fault
	.align 16
.L36:
	movl (%edi),%eax
	cmpb $32,(%ebx,%eax)
	jne .L33
.L37:
	movl %ebx,%esi
	subl -48(%ebp),%esi
	cmpl %ebx,-44(%ebp)
	jg .L38
	pushl $MM_WebFile+328
	jmp .L70
	.align 16
.L38:
	incl %ebx
	movl $0,-40(%ebp)
.L39:
	cmpl %ebx,-44(%ebp)
	jg .L40
	pushl $MM_WebFile+352
	jmp .L70
	.align 16
.L40:
	testl %edi,%edi
	jne .L41
	pushl $1908
	call _m3_fault
	.align 16
.L41:
	cmpl %ebx,4(%edi)
	ja .L42
	pushl $1906
	call _m3_fault
	.align 16
.L42:
	movl (%edi),%eax
	movb (%ebx,%eax),%al
	incl %ebx
	xorl %edx,%edx
	movb %al,%dl
	cmpl $47,%edx
	jle .L45
	cmpl $57,%edx
	jg .L45
	movl -40(%ebp),%ecx
	leal (%ecx,%ecx,4),%eax
	leal -48(%edx,%eax,2),%edx
	movl %edx,-40(%ebp)
	jmp .L39
	.align 16
.L45:
	decl %ebx
	jmp .L46
	.align 16
.L47:
	incl %ebx
.L46:
	cmpl %ebx,-44(%ebp)
	jle .L51
	testl %edi,%edi
	jne .L49
	pushl $2020
	call _m3_fault
	.align 16
.L49:
	cmpl %ebx,4(%edi)
	ja .L50
	pushl $2018
	call _m3_fault
	.align 16
.L50:
	movl (%edi),%eax
	cmpb $10,(%ebx,%eax)
	jne .L47
.L51:
	incl %ebx
	cmpl $1,%esi
	jne .L52
	testl %edi,%edi
	jne .L53
	pushl $2068
	call _m3_fault
	.align 16
.L53:
	movl -48(%ebp),%ecx
	cmpl %ecx,4(%edi)
	ja .L54
	pushl $2066
	call _m3_fault
	.align 16
.L54:
	movl (%edi),%eax
	movl -48(%ebp),%ecx
	cmpb $36,(%ecx,%eax)
	je .L55
.L52:
	testl %edi,%edi
	jne .L56
	pushl $2100
	call _m3_fault
	.align 16
.L56:
	cmpl $0,-48(%ebp)
	jge .L57
	pushl $2097
	call _m3_fault
	.align 16
.L57:
	testl %esi,%esi
	jge .L58
	pushl $2097
	call _m3_fault
	.align 16
.L58:
	movl %esi,-20(%ebp)
	movl -48(%ebp),%eax
	addl %esi,%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L59
	pushl $2097
	call _m3_fault
	.align 16
.L59:
	movl -48(%ebp),%ecx
	addl (%edi),%ecx
	movl %ecx,-24(%ebp)
	pushl $99999
	leal -24(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	call *%eax
	movl -32(%ebp),%ecx
	movl %eax,-8(%ebp)
	movl (%ecx),%eax
	movl 4(%eax),%edx
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $20,%esp
	testl %eax,%eax
	jne .L60
	movl MM_WebFile+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl -28(%ebp),%ecx
	addl $4,%esp
	movl %ecx,(%edx)
	movl -8(%ebp),%eax
	movl %eax,4(%edx)
	movl %edi,8(%edx)
	movl -36(%ebp),%ecx
	movl %ecx,12(%edx)
	movl -40(%ebp),%ecx
	movl %ecx,16(%edx)
	movl %edx,-28(%ebp)
.L60:
	movl -40(%ebp),%ecx
	addl %ecx,-36(%ebp)
	jmp .L30
	.align 16
.L55:
	movl -28(%ebp),%ecx
	pushl %ecx
	call WebFile__ReverseList
	movl %eax,-28(%ebp)
	movl -28(%ebp),%edx
	addl $4,%esp
	jmp .L61
	.align 16
.L62:
	movl 12(%edx),%eax
	addl %ebx,%eax
	movl %eax,12(%edx)
	cmpl %eax,-44(%ebp)
	jge .L66
	pushl $MM_WebFile+376
.L70:
	call WebFile__BadFile
	movl %eax,%edx
	jmp .L68
	.align 16
.L66:
	movl (%edx),%edx
.L61:
	testl %edx,%edx
	jne .L62
.L69:
	movl -28(%ebp),%eax
.L68:
	leal -60(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 WebFile__ParseFile,.Lfe4-WebFile__ParseFile
	.align 16
	.type	 WebFile__ReverseList,@function
WebFile__ReverseList:
	pushl %ebp
	movl %esp,%ebp
	xorl %ecx,%ecx
	movl 8(%ebp),%edx
	jmp .L72
	.align 16
.L73:
	movl (%edx),%eax
	movl %ecx,(%edx)
	movl %edx,%ecx
	movl %eax,%edx
.L72:
	testl %edx,%edx
	jne .L73
	movl %ecx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 WebFile__ReverseList,.Lfe5-WebFile__ReverseList
	.align 16
	.type	 WebFile__BadFile,@function
WebFile__BadFile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_WebFile+400
	pushl $0
	movl MI_Msg+60,%eax
	call *%eax
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 WebFile__BadFile,.Lfe6-WebFile__BadFile
	.align 16
	.type	 WebFile__DumpFile,@function
WebFile__DumpFile:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $1
	pushl $MM_WebFile+232
	movl MI_Utils+44,%eax
	call *%eax
	movl %eax,%edi
	movl MI_M3Buf+44,%eax
	movl %edi,%esi
	call *%eax
	pushl %esi
	movl %eax,%edi
	pushl %edi
	movl MI_M3Buf+84,%eax
	call *%eax
	pushl %ebx
	pushl %edi
	call WebFile__DumpHeaders
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	call WebFile__DumpHeaders
	addl $32,%esp
	pushl $MM_WebFile+448
	pushl %edi
	movl MI_M3Buf+52,%eax
	call *%eax
	movl MI_Target+816,%eax
	pushl %eax
	pushl %edi
	movl MI_M3Buf+52,%eax
	call *%eax
	pushl %ebx
	pushl %edi
	call WebFile__DumpBodies
	movl 12(%ebp),%edx
	pushl %edx
	pushl %edi
	call WebFile__DumpBodies
	addl $32,%esp
	pushl %esi
	pushl %edi
	movl MI_M3Buf+80,%eax
	call *%eax
	pushl $MM_WebFile+232
	pushl %esi
	movl MI_Utils+52,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 WebFile__DumpFile,.Lfe7-WebFile__DumpFile
	.align 16
	.type	 WebFile__DumpHeaders,@function
WebFile__DumpHeaders:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	jmp .L80
	.align 16
.L81:
	movl 4(%ebx),%eax
	pushl %eax
	pushl %esi
	movl MI_M3ID+64,%eax
	call *%eax
	pushl $32
	pushl %esi
	movl MI_M3Buf+48,%eax
	call *%eax
	addl $16,%esp
	movl 16(%ebx),%eax
	pushl %eax
	pushl %esi
	movl MI_M3Buf+56,%eax
	call *%eax
	movl MI_Target+816,%eax
	pushl %eax
	pushl %esi
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $16,%esp
	movl (%ebx),%ebx
.L80:
	testl %ebx,%ebx
	jne .L81
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 WebFile__DumpHeaders,.Lfe8-WebFile__DumpHeaders
	.align 16
	.type	 WebFile__DumpBodies,@function
WebFile__DumpBodies:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	jmp .L87
	.align 16
.L88:
	movl 8(%ebx),%ecx
	testl %ecx,%ecx
	jne .L90
	pushl $3268
	call _m3_fault
	.align 16
.L90:
	movl 12(%ebx),%edx
	testl %edx,%edx
	jge .L92
	pushl $3265
	call _m3_fault
	.align 16
.L92:
	movl 16(%ebx),%eax
	testl %eax,%eax
	jge .L94
	pushl $3265
	call _m3_fault
	.align 16
.L94:
	movl %eax,-4(%ebp)
	addl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L95
	pushl $3265
	call _m3_fault
	.align 16
.L95:
	addl (%ecx),%edx
	movl %edx,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %esi
	movl MI_M3Buf+68,%eax
	call *%eax
	addl $8,%esp
	movl (%ebx),%ebx
.L87:
	testl %ebx,%ebx
	jne .L88
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 WebFile__DumpBodies,.Lfe9-WebFile__DumpBodies
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_WebFile
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_WebFile
.data
	.align 4
	.type	 MM_WebFile,@object
	.size	 MM_WebFile,848
MM_WebFile:
	.long MM_WebFile+660
	.long MM_WebFile+44
	.long MM_WebFile+188
	.zero	8
	.long MM_WebFile+544
	.zero	4
	.long MM_WebFile+656
	.long MM_WebFile+656
	.zero	16
	.long 1150196528
.byte 164
.byte 41
.byte 117
.byte 66
.byte 148
.byte 178
.byte 251
.byte 6
	.long 1
	.zero	4
	.long 20
	.long 4
	.zero	20
	.long MM_WebFile+799
	.long MM_WebFile+805
	.long MM_WebFile+809
	.zero	28
	.long MM_WebFile+827
	.zero	8
	.long WebFile__Inhale
	.long WebFile__ParseFile
	.long WebFile__ReverseList
	.long WebFile__BadFile
	.long WebFile__DumpFile
	.long WebFile__DumpHeaders
	.long WebFile__DumpBodies
	.long WebFile__Update
	.long WebFile__Dump
	.long MM_WebFile+256
	.long 1150196528
	.long 2
	.long MM_WebFile+208
	.long 18
	.ascii	"updating web info"
	.zero	3
	.long 2
	.long MM_WebFile+240
	.long 7
	.ascii	".M3WEB"
	.zero	2
	.long MI_OSError+44
	.zero	4
	.long MM_WebFile+292
	.long 1358456180
	.long 2
	.long MM_WebFile+276
	.long 16
	.ascii	"unable to read "
	.zero	5
	.long 951908833
	.long 2
	.long MM_WebFile+312
	.long 11
	.ascii	"eof in toc"
	.zero	2
	.long 2
	.long MM_WebFile+336
	.long 12
	.ascii	"eof in name"
	.zero	1
	.long 2
	.long MM_WebFile+360
	.long 11
	.ascii	"eof in len"
	.zero	2
	.long 2
	.long MM_WebFile+384
	.long 12
	.ascii	"eof in body"
	.zero	1
	.long 2
	.long MM_WebFile+408
	.long 36
	.ascii	"web info file \""
	.ascii	".M3WEB"
	.ascii	"\" is damaged: "
	.zero	1
	.long 2
	.long MM_WebFile+456
	.long 4
	.ascii	"$ 0"
	.zero	1
	.ascii	"DumpBodies"
	.zero	1
	.ascii	"DumpHeaders"
	.zero	1
	.ascii	"DumpFile"
	.zero	1
	.ascii	"BadFile"
	.zero	1
	.ascii	"ReverseList"
	.zero	1
	.ascii	"ParseFile"
	.zero	1
	.ascii	"Inhale"
	.zero	1
	.ascii	"Dump"
	.zero	1
	.ascii	"Update"
	.zero	4
	.long WebFile__DumpBodies
	.long MM_WebFile+460
	.zero	4
	.long WebFile__DumpHeaders
	.long MM_WebFile+471
	.zero	4
	.long WebFile__DumpFile
	.long MM_WebFile+483
	.zero	4
	.long WebFile__BadFile
	.long MM_WebFile+492
	.zero	4
	.long WebFile__ReverseList
	.long MM_WebFile+500
	.zero	4
	.long WebFile__ParseFile
	.long MM_WebFile+512
	.zero	4
	.long WebFile__Inhale
	.long MM_WebFile+522
	.zero	4
	.long WebFile__Dump
	.long MM_WebFile+529
	.long MI_WebFile+48
	.long WebFile__Update
	.long MM_WebFile+534
	.long MI_WebFile+44
	.zero	4
.byte 42
.byte 148
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/WebFile.m3"
	.zero	1
.byte 4
.byte 14
.byte 4
.byte 14
.byte 14
.byte 0
.byte 4
.byte 37
.byte 4
.byte 0
.byte 6
.byte 15
.byte 5
.byte 16
.byte 48
.byte 155
.byte 142
.byte 68
.byte 19
.byte 254
.byte 126
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 7
.byte 26
	.ascii	"WebFile.InfoEntry"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
