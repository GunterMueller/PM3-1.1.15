	.file	"MxIn.mc"
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
	.type	 MxIn__ReadUnits,@function
MxIn__ReadUnits:
	pushl %ebp
	movl %esp,%ebp
	subl $1268,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movl 20(%ebp),%ebx
	pushl $1076
	pushl $0
	leal -1076(%ebp),%eax
	pushl %eax
	call memset
	movl %esi,-1072(%ebp)
	movl %ebx,-1068(%ebp)
	movl MM_MxIn+576,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %edi,(%eax)
	movb 16(%ebp),%dl
	movb %dl,4(%eax)
	movl %eax,-1056(%ebp)
	leal -1088(%ebp),%esi
	leal -1080(%ebp),%ebx
	movl %ebx,-1088(%ebp)
	movl $1,-1084(%ebp)
	movl $256,-1080(%ebp)
	pushl %esi
	movl MM_MxIn+584,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-1048(%ebp)
	movl %ebx,-1088(%ebp)
	movl $1,-1084(%ebp)
	movl $4100,-1080(%ebp)
	pushl %esi
	movl MM_MxIn+592,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-1044(%ebp)
	addl $32,%esp
.L2:
	movl $MM_MxIn+600,-1260(%ebp)
	movl $0,-1264(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-1268(%ebp)
	leal -1268(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -1248(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	leal -1076(%ebp),%eax
	pushl %eax
	call MxIn__ReadLinkFile
	movl -1268(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L4
	.align 16
.L3:
	cmpl $MI_OSError+44,-1256(%ebp)
	jne .L4
	movl -1252(%ebp),%eax
	pushl %eax
	call MxIn__ErrMsg
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_MxIn+616
	leal -1076(%ebp),%eax
	pushl %eax
	call MxIn__Error
.L4:
	cmpl $0,-1064(%ebp)
	jg .L7
	movl -1060(%ebp),%eax
	jmp .L8
	.align 16
.L7:
	xorl %eax,%eax
.L8:
	leal -1280(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxIn__ReadUnits,.Lfe1-MxIn__ReadUnits
	.align 16
	.type	 MxIn__ErrMsg,@function
MxIn__ErrMsg:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	jmp .L10
	.align 16
.L11:
	testl %ebx,%ebx
	jne .L12
	movl $MM_MxIn+640,%ebx
	jmp .L13
	.align 16
.L12:
	pushl $MM_MxIn+656
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
.L13:
	movl 4(%esi),%eax
	pushl %eax
	movl MI_Atom+48,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%esi),%esi
	addl $12,%esp
.L10:
	testl %esi,%esi
	jne .L11
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxIn__ErrMsg,.Lfe2-MxIn__ErrMsg
	.align 16
	.type	 MxIn__ReadLinkFile,@function
MxIn__ReadLinkFile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__RefillBuffer
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__ReadMagic
	addl $8,%esp
.L16:
	movl 8(%ebp),%edx
	movl 36(%edx),%eax
	cmpl $1028,%eax
	jle .L17
	pushl $1585
	call _m3_fault
	.align 16
.L17:
	movb 44(%edx,%eax),%al
	movb %al,(%edx)
	movl 8(%ebp),%eax
	movl %eax,%edx
	incl 36(%eax)
	xorl %eax,%eax
	movb (%edx),%al
	movl L_1(,%eax,4),%eax
	pushl %edx
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L16
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxIn__ReadLinkFile,.Lfe3-MxIn__ReadLinkFile
	.align 16
	.type	 MxIn__ReadMagic,@function
MxIn__ReadMagic:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	pushl $MM_MxIn+676
	movl MI_Text+56,%eax
	call *%eax
	xorl %ebx,%ebx
	leal -1(%eax),%esi
	addl $4,%esp
	jmp .L21
	.align 16
.L22:
	pushl %ebx
	pushl $MM_MxIn+676
	movl MI_Text+52,%eax
	call *%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Match
	incl %ebx
	addl $16,%esp
.L21:
	cmpl %esi,%ebx
	jle .L22
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Match
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxIn__ReadMagic,.Lfe4-MxIn__ReadMagic
	.align 16
	.type	 MxIn__Match,@function
MxIn__Match:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb 12(%ebp),%bl
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetC
	addl $4,%esp
	cmpb %al,%bl
	je .L24
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+696
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	pushl $0
	pushl $MM_MxIn+148
	movl MI_RTHooks+52,%eax
	call *%eax
.L24:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxIn__Match,.Lfe5-MxIn__Match
	.align 16
	.type	 MxIn__EndBuffer,@function
MxIn__EndBuffer:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__EOF
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L27
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__RefillBuffer
	movl %ebx,%eax
	jmp .L28
	.align 16
.L27:
	movl $1,%eax
.L28:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MxIn__EndBuffer,.Lfe6-MxIn__EndBuffer
	.align 16
	.type	 MxIn__BadChar,@function
MxIn__BadChar:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	pushl %eax
	call MxIn__CharName
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_MxIn+744
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	movl $1,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 MxIn__BadChar,.Lfe7-MxIn__BadChar
	.align 16
	.type	 MxIn__ReadName,@function
MxIn__ReadName:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,%ebx
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetID
	movl %eax,%edi
	addl $16,%esp
	jmp .L31
	.align 16
.L32:
	pushl %esi
	call MxIn__ExpandNameMap
	addl $4,%esp
.L31:
	movl 8(%ebp),%esi
	movl 28(%esi),%edx
	testl %edx,%edx
	jne .L33
	pushl $2340
	call _m3_fault
	.align 16
.L33:
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ebx,%eax
	jl .L32
	cmpl %ecx,%ebx
	jb .L36
	pushl $2354
	call _m3_fault
	.align 16
.L36:
	movl (%edx),%eax
	leal -12(%ebp),%esp
	movl %edi,(%eax,%ebx,4)
	xorl %eax,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 MxIn__ReadName,.Lfe8-MxIn__ReadName
	.align 16
	.type	 MxIn__ExpandNameMap,@function
MxIn__ExpandNameMap:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 28(%eax),%eax
	testl %eax,%eax
	jne .L38
	pushl $2436
	call _m3_fault
	.align 16
.L38:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%edi
	addl %ebx,%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_MxIn+584,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L39
	pushl $2468
	call _m3_fault
	.align 16
.L39:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L40
	pushl $2465
	call _m3_fault
	.align 16
.L40:
	movl (%esi),%ecx
	movl 8(%ebp),%eax
	movl %ecx,-20(%ebp)
	movl 28(%eax),%edx
	testl %edx,%edx
	jne .L41
	pushl $2468
	call _m3_fault
	.align 16
.L41:
	cmpl %ebx,4(%edx)
	je .L42
	pushl $2467
	call _m3_fault
	.align 16
.L42:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %ecx
	call memmove
	movl 8(%ebp),%eax
	leal -32(%ebp),%esp
	movl %esi,28(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 MxIn__ExpandNameMap,.Lfe9-MxIn__ExpandNameMap
	.align 16
	.type	 MxIn__ReadVSInfo,@function
MxIn__ReadVSInfo:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,%edx
	movl %edx,%ebx
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetName
	movl %eax,%edx
	movl %edx,-16(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetName
	movl %eax,%edx
	movl %edx,-12(%ebp)
	pushl $10
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetStamp
	addl $36,%esp
	jmp .L44
	.align 16
.L45:
	pushl %edx
	call MxIn__ExpandVSMap
	addl $4,%esp
.L44:
	movl 8(%ebp),%edx
	movl 32(%edx),%eax
	testl %eax,%eax
	jne .L46
	pushl $2692
	call _m3_fault
	.align 16
.L46:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jl .L45
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_MxVS+52,%eax
	call *%eax
	movl %eax,%edx
	movl 8(%ebp),%eax
	addl $4,%esp
	movl 32(%eax),%eax
	testl %eax,%eax
	jne .L48
	pushl $2708
	call _m3_fault
	.align 16
.L48:
	cmpl %ebx,4(%eax)
	ja .L49
	pushl $2706
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
	xorl %eax,%eax
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 MxIn__ReadVSInfo,.Lfe10-MxIn__ReadVSInfo
	.align 16
	.type	 MxIn__ExpandVSMap,@function
MxIn__ExpandVSMap:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 32(%eax),%eax
	testl %eax,%eax
	jne .L51
	pushl $2788
	call _m3_fault
	.align 16
.L51:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%edi
	addl %ebx,%edi
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_MxIn+592,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L52
	pushl $2820
	call _m3_fault
	.align 16
.L52:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L53
	pushl $2817
	call _m3_fault
	.align 16
.L53:
	movl (%esi),%ecx
	movl 8(%ebp),%eax
	movl %ecx,-20(%ebp)
	movl 32(%eax),%edx
	testl %edx,%edx
	jne .L54
	pushl $2820
	call _m3_fault
	.align 16
.L54:
	cmpl %ebx,4(%edx)
	je .L55
	pushl $2819
	call _m3_fault
	.align 16
.L55:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	pushl %ecx
	call memmove
	movl 8(%ebp),%eax
	leal -32(%ebp),%esp
	movl %esi,32(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 MxIn__ExpandVSMap,.Lfe11-MxIn__ExpandVSMap
	.align 16
	.type	 MxIn__ReadUnit,@function
MxIn__ReadUnit:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $73,(%eax)
	sete %bl
	pushl $32
	pushl %eax
	call MxIn__GetName
	movl %eax,%esi
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-56(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-52(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $32,%esp
	movl %eax,-48(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-44(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-40(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-36(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $32,%esp
	movl %eax,-32(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-28(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-24(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,-20(%ebp)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $32,%esp
	movl %eax,-16(%ebp)
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,%edi
	movl MM_MxIn+784,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %esi,(%edx)
	movl 8(%ebp),%eax
	movl 20(%eax),%eax
	movl %eax,4(%edx)
	movb %bl,8(%edx)
	movl MM_MxIn+792,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	movl %edx,%ebx
	call *%eax
	movl %eax,%edx
	movl %edx,%esi
	movl %ebx,(%edx)
	movl 8(%ebp),%eax
	addl $16,%esp
	movl 16(%eax),%eax
	movl %eax,4(%edx)
	xorl %edx,%edx
	testl %ebx,%ebx
	jne .L58
	pushl $3268
	call _m3_fault
	.align 16
.L58:
	movl %edx,12(%ebx)
	movl -56(%ebp),%edx
	testl %edx,%edx
	jge .L60
	pushl $3281
	call _m3_fault
	.align 16
.L60:
	movl %edx,20(%ebx)
	addl -52(%ebp),%edx
	jns .L62
	pushl $3297
	call _m3_fault
	.align 16
.L62:
	movl %edx,28(%ebx)
	addl -48(%ebp),%edx
	jns .L64
	pushl $3313
	call _m3_fault
	.align 16
.L64:
	movl %edx,36(%ebx)
	addl -44(%ebp),%edx
	jns .L66
	pushl $3329
	call _m3_fault
	.align 16
.L66:
	movl %edx,44(%ebx)
	addl -40(%ebp),%edx
	jns .L68
	pushl $3345
	call _m3_fault
	.align 16
.L68:
	movl %edx,52(%ebx)
	addl -36(%ebp),%edx
	jns .L70
	pushl $3361
	call _m3_fault
	.align 16
.L70:
	movl %edx,60(%ebx)
	addl -32(%ebp),%edx
	jns .L72
	pushl $3377
	call _m3_fault
	.align 16
.L72:
	movl %edx,68(%ebx)
	addl -28(%ebp),%edx
	jns .L74
	pushl $3393
	call _m3_fault
	.align 16
.L74:
	movl %edx,76(%ebx)
	addl -24(%ebp),%edx
	jns .L76
	pushl $3409
	call _m3_fault
	.align 16
.L76:
	movl %edx,84(%ebx)
	addl -20(%ebp),%edx
	testl %ebx,%ebx
	jne .L77
	pushl $3428
	call _m3_fault
	.align 16
.L77:
	testl %edx,%edx
	jge .L78
	pushl $3425
	call _m3_fault
	.align 16
.L78:
	movl %edx,92(%ebx)
	addl -16(%ebp),%edx
	jns .L80
	pushl $3441
	call _m3_fault
	.align 16
.L80:
	movl %edx,100(%ebx)
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	addl %edi,%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_MxIn+592,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,124(%ebx)
	movl 8(%ebp),%edx
	xorl %eax,%eax
	leal -68(%ebp),%esp
	movl %esi,16(%edx)
	movl %ebx,24(%edx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 MxIn__ReadUnit,.Lfe12-MxIn__ReadUnit
	.align 16
	.type	 MxIn__AddInfo,@function
MxIn__AddInfo:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%esi
	testl %eax,%eax
	jne .L83
	pushl $3604
	call _m3_fault
	.align 16
.L83:
	movl 124(%eax),%ecx
	testl %ecx,%ecx
	jne .L84
	pushl $3604
	call _m3_fault
	.align 16
.L84:
	movl 12(%ebp),%edx
	movl 4(%edx),%eax
	movl (%edx),%ebx
	addl %eax,%ebx
	cmpl %ebx,4(%ecx)
	ja .L85
	pushl $3602
	call _m3_fault
	.align 16
.L85:
	movl (%ecx),%eax
	leal -8(%ebp),%esp
	movl %esi,(%eax,%ebx,4)
	incl 4(%edx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 MxIn__AddInfo,.Lfe13-MxIn__AddInfo
	.align 16
	.type	 MxIn__ReadPort,@function
MxIn__ReadPort:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $65,(%eax)
	sete %bl
	movb %bl,-4(%ebp)
	pushl $10
	pushl %eax
	call MxIn__GetName
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L87
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+804
	pushl %ecx
	call MxIn__Error
	jmp .L88
	.align 16
.L87:
	cmpb $0,-4(%ebp)
	je .L91
	pushl %eax
	leal 12(%edx),%eax
	jmp .L92
	.align 16
.L91:
	pushl %esi
	leal 20(%edx),%eax
.L92:
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L88:
	leal -12(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 MxIn__ReadPort,.Lfe14-MxIn__ReadPort
	.align 16
	.type	 MxIn__ReadUse,@function
MxIn__ReadUse:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	cmpb $67,(%eax)
	sete %bl
	movb %bl,-4(%ebp)
	pushl $10
	pushl %eax
	call MxIn__GetName
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L94
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+864
	pushl %ecx
	call MxIn__Error
	jmp .L95
	.align 16
.L94:
	cmpb $0,-4(%ebp)
	je .L98
	pushl %eax
	leal 36(%edx),%eax
	jmp .L99
	.align 16
.L98:
	pushl %esi
	leal 44(%edx),%eax
.L99:
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L95:
	leal -12(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 MxIn__ReadUse,.Lfe15-MxIn__ReadUse
	.align 16
	.type	 MxIn__ReadGeneric,@function
MxIn__ReadGeneric:
	pushl %ebp
	movl %esp,%ebp
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetName
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L103
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+924
	pushl %ecx
	call MxIn__Error
	jmp .L102
	.align 16
.L103:
	pushl %eax
	leal 28(%edx),%eax
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L102:
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 MxIn__ReadGeneric,.Lfe16-MxIn__ReadGeneric
	.align 16
	.type	 MxIn__ReadVersionStamp,@function
MxIn__ReadVersionStamp:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movb (%eax),%bl
	pushl $10
	pushl %eax
	call MxIn__GetVS
	movl %eax,%ecx
	movl %ecx,%esi
	movl 8(%ebp),%eax
	addl $8,%esp
	movl 24(%eax),%edx
	testl %edx,%edx
	jne .L105
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+984
	pushl %eax
	call MxIn__Error
	jmp .L106
	.align 16
.L105:
	xorl %eax,%eax
	movb %bl,%al
	cmpl $74,%eax
	jne .L107
	pushl %ecx
	leal 52(%edx),%eax
	jmp .L114
	.align 16
.L107:
	cmpl $105,%eax
	jne .L109
	pushl %ecx
	leal 60(%edx),%eax
	jmp .L114
	.align 16
.L109:
	cmpl $69,%eax
	jne .L113
	pushl %ecx
	leal 68(%edx),%eax
	jmp .L114
	.align 16
.L113:
	pushl %esi
	leal 76(%edx),%eax
.L114:
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L106:
	leal -8(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 MxIn__ReadVersionStamp,.Lfe17-MxIn__ReadVersionStamp
	.align 16
	.type	 MxIn__ReadRevelation,@function
MxIn__ReadRevelation:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl $1,%edx
	xorl %ebx,%ebx
	movb (%eax),%bl
	cmpl $82,%ebx
	je .L116
	cmpl $88,%ebx
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L116:
	movb %dl,-4(%ebp)
	movl $1,%edx
	cmpl $120,%ebx
	je .L117
	cmpl $88,%ebx
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L117:
	movl MM_MxIn+1040,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	movb %dl,%bl
	call *%eax
	movl %eax,%esi
	movb -4(%ebp),%cl
	movb %cl,17(%esi)
	movb %bl,16(%esi)
	movl 8(%ebp),%eax
	movl 24(%eax),%ebx
	pushl $32
	movl %esi,%edi
	pushl %eax
	call MxIn__GetName
	movl %eax,%edx
	addl $12,%esp
	testl %esi,%esi
	jne .L118
	pushl $5028
	call _m3_fault
	.align 16
.L118:
	movl %edx,(%esi)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	movl %eax,%edx
	addl $8,%esp
	movl %edx,4(%esi)
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	movl %eax,%edx
	addl $8,%esp
	movl %edx,8(%esi)
	testl %ebx,%ebx
	jne .L124
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl $MM_MxIn+1052
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	jmp .L122
	.align 16
.L124:
	movl 120(%ebx),%eax
	movl %eax,12(%esi)
	movl %edi,120(%ebx)
.L122:
	leal -16(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 MxIn__ReadRevelation,.Lfe18-MxIn__ReadRevelation
	.align 16
	.type	 MxIn__ReadWish,@function
MxIn__ReadWish:
	pushl %ebp
	movl %esp,%ebp
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L129
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+1108
	pushl %ecx
	call MxIn__Error
	jmp .L128
	.align 16
.L129:
	pushl %eax
	leal 100(%edx),%eax
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L128:
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 MxIn__ReadWish,.Lfe19-MxIn__ReadWish
	.align 16
	.type	 MxIn__ReadType,@function
MxIn__ReadType:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movb (%eax),%bl
	movb %bl,-4(%ebp)
	pushl $10
	pushl %eax
	call MxIn__GetTypeName
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 24(%ecx),%edx
	testl %edx,%edx
	jne .L131
	pushl %edx
	pushl %edx
	pushl %edx
	pushl $MM_MxIn+1164
	pushl %ecx
	call MxIn__Error
	jmp .L132
	.align 16
.L131:
	cmpb $116,-4(%ebp)
	jne .L135
	pushl %eax
	leal 84(%edx),%eax
	jmp .L136
	.align 16
.L135:
	pushl %esi
	leal 92(%edx),%eax
.L136:
	pushl %eax
	pushl %edx
	call MxIn__AddInfo
.L132:
	leal -12(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 MxIn__ReadType,.Lfe20-MxIn__ReadType
	.align 16
	.type	 MxIn__ReadObjectType,@function
MxIn__ReadObjectType:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $79,%eax
	sete %dl
	movb %dl,-4(%ebp)
	cmpl $112,%eax
	sete %bl
	movl MM_MxIn+1224,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movb -4(%ebp),%dl
	addl $4,%esp
	movb %dl,28(%esi)
	movb %bl,29(%esi)
	movl 8(%ebp),%eax
	movl %esi,%ebx
	movl 24(%eax),%edi
	testb %dl,%dl
	jne .L138
	pushl $32
	pushl %eax
	call MxIn__GetName
	addl $8,%esp
	testl %esi,%esi
	jne .L139
	pushl $5924
	call _m3_fault
	.align 16
.L139:
	movl %eax,4(%esi)
.L138:
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	addl $8,%esp
	testl %ebx,%ebx
	jne .L140
	pushl $5940
	call _m3_fault
	.align 16
.L140:
	movl %eax,8(%ebx)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	addl $8,%esp
	movl %eax,12(%ebx)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $8,%esp
	movl %eax,16(%ebx)
	pushl $32
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $8,%esp
	movl %eax,20(%ebx)
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	addl $8,%esp
	movl %eax,24(%ebx)
	testl %edi,%edi
	jne .L145
	pushl %edi
	pushl %edi
	pushl %edi
	pushl $MM_MxIn+1236
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	jmp .L146
	.align 16
.L145:
	cmpb $0,-4(%ebp)
	je .L155
	movl (%edi),%eax
	movl %eax,4(%ebx)
	cmpb $0,8(%edi)
	sete %al
	movb %al,29(%ebx)
	movl 116(%edi),%eax
	movl %eax,(%ebx)
	movl %ebx,116(%edi)
	jmp .L146
	.align 16
.L155:
	movl 112(%edi),%eax
	movl %eax,(%ebx)
	movl %ebx,112(%edi)
.L146:
	leal -16(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 MxIn__ReadObjectType,.Lfe21-MxIn__ReadObjectType
	.align 16
	.type	 MxIn__ReadOpaqueType,@function
MxIn__ReadOpaqueType:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_MxIn+1288,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%ebp),%eax
	movl 24(%eax),%esi
	pushl $32
	movl %ebx,%edi
	pushl %eax
	call MxIn__GetTypeName
	addl $12,%esp
	testl %ebx,%ebx
	jne .L159
	pushl $6372
	call _m3_fault
	.align 16
.L159:
	movl %eax,4(%ebx)
	pushl $10
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetTypeName
	addl $8,%esp
	movl %eax,8(%ebx)
	testl %esi,%esi
	jne .L164
	pushl %esi
	pushl %esi
	pushl %esi
	pushl $MM_MxIn+1300
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	jmp .L162
	.align 16
.L164:
	movl 108(%esi),%eax
	movl %eax,(%ebx)
	movl %edi,108(%esi)
.L162:
	leal -12(%ebp),%esp
	xorl %eax,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 MxIn__ReadOpaqueType,.Lfe22-MxIn__ReadOpaqueType
	.align 16
	.type	 MxIn__SkipComment,@function
MxIn__SkipComment:
	pushl %ebp
	movl %esp,%ebp
	movb $47,%al
	jmp .L167
	.align 16
.L168:
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetC
	addl $4,%esp
.L167:
	cmpb $10,%al
	jne .L168
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 MxIn__SkipComment,.Lfe23-MxIn__SkipComment
	.align 16
	.type	 MxIn__SkipBlank,@function
MxIn__SkipBlank:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 MxIn__SkipBlank,.Lfe24-MxIn__SkipBlank
	.align 16
	.type	 MxIn__GetName,@function
MxIn__GetName:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jl .L172
	movl 8(%ebp),%eax
	movl 28(%eax),%eax
	testl %eax,%eax
	jne .L173
	pushl $6852
	call _m3_fault
	.align 16
.L173:
	movl 4(%eax),%ecx
	cmpl %edx,%ecx
	jle .L172
	cmpl %ecx,%edx
	jb .L175
	pushl $6866
	call _m3_fault
	.align 16
.L175:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	jmp .L176
	.align 16
.L172:
	pushl $10
	pushl %edx
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_MxIn+1364
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	xorl %eax,%eax
.L176:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 MxIn__GetName,.Lfe25-MxIn__GetName
	.align 16
	.type	 MxIn__GetVS,@function
MxIn__GetVS:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetInteger
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jl .L178
	movl 8(%ebp),%eax
	movl 32(%eax),%eax
	testl %eax,%eax
	jne .L179
	pushl $7044
	call _m3_fault
	.align 16
.L179:
	movl 4(%eax),%ecx
	cmpl %edx,%ecx
	jle .L178
	cmpl %ecx,%edx
	jb .L181
	pushl $7058
	call _m3_fault
	.align 16
.L181:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	jmp .L182
	.align 16
.L178:
	pushl $10
	pushl %edx
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl $MM_MxIn+1396
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	xorl %eax,%eax
.L182:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 MxIn__GetVS,.Lfe26-MxIn__GetVS
	.align 16
	.type	 MxIn__GetInteger,@function
MxIn__GetInteger:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	movl %esi,%edi
	pushl %ebx
.L184:
	movl 8(%ebp),%edx
	movl 36(%edx),%eax
	cmpl $1028,%eax
	jle .L185
	pushl $7281
	call _m3_fault
	.align 16
.L185:
	movb 44(%edx,%eax),%bl
	leal 1(%eax),%ecx
	movl %ecx,36(%edx)
	xorl %eax,%eax
	movb %bl,%al
	cmpl $47,%eax
	jle .L186
	cmpl $57,%eax
	jle .L187
.L186:
	cmpl %ecx,40(%edx)
	jge .L189
	pushl %edx
	call MxIn__GetC
	movb %al,%bl
	xorl %eax,%eax
	movb %bl,%al
	addl $4,%esp
	cmpl $47,%eax
	jle .L189
	cmpl $57,%eax
	jg .L189
.L187:
	leal (%esi,%esi,4),%edx
	xorl %eax,%eax
	movb %bl,%al
	leal -48(%eax,%edx,2),%esi
	incl %edi
	jmp .L184
	.align 16
.L189:
	cmpb $13,%bl
	jne .L192
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetC
	movb %al,%bl
	addl $4,%esp
.L192:
	testl %edi,%edi
	jg .L193
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1436
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	addl $20,%esp
.L193:
	cmpb %bl,12(%ebp)
	je .L194
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1468
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
.L194:
	leal -12(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 MxIn__GetInteger,.Lfe27-MxIn__GetInteger
	.align 16
	.type	 MxIn__GetTypeName,@function
MxIn__GetTypeName:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl %esi,-4(%ebp)
.L196:
	movl 8(%ebp),%ecx
	movl 36(%ecx),%eax
	cmpl $1028,%eax
	jle .L197
	pushl $7681
	call _m3_fault
	.align 16
.L197:
	movb 44(%ecx,%eax),%bl
	leal 1(%eax),%edi
	xorl %eax,%eax
	movb %bl,%al
	movl %edi,36(%ecx)
	xorl %edx,%edx
	movb MM_MxIn+169(%eax),%dl
	cmpl $15,%edx
	jle .L198
	cmpl %edi,40(%ecx)
	jge .L200
	pushl %ecx
	call MxIn__GetC
	movb %al,%bl
	xorl %eax,%eax
	movb %bl,%al
	addl $4,%esp
	xorl %edx,%edx
	movb MM_MxIn+169(%eax),%dl
	cmpl $15,%edx
	jg .L200
.L198:
	movl %esi,%eax
	sall $4,%eax
	leal (%edx,%eax),%esi
	incl -4(%ebp)
	jmp .L196
	.align 16
.L200:
	cmpb $13,%bl
	jne .L202
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetC
	movb %al,%bl
	addl $4,%esp
.L202:
	cmpl $0,-4(%ebp)
	jg .L203
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1516
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	addl $20,%esp
.L203:
	cmpb %bl,12(%ebp)
	je .L204
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1548
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
.L204:
	testl %esi,%esi
	jge .L205
	orl $-2147483648,%esi
.L205:
	leal -16(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 MxIn__GetTypeName,.Lfe28-MxIn__GetTypeName
	.align 16
	.type	 MxIn__GetID,@function
MxIn__GetID:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 36(%eax),%esi
	movl %esi,%ebx
.L207:
	cmpl $1028,%ebx
	jle .L208
	pushl $8161
	call _m3_fault
	.align 16
.L208:
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 44(%eax,%ebx),%dl
	cmpl $13,%edx
	je .L210
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl %eax,%edx
	je .L210
	incl %ebx
	jmp .L207
	.align 16
.L210:
	movl 8(%ebp),%edx
	cmpl %ebx,40(%edx)
	jle .L212
	leal 1(%ebx),%ecx
	movl %ecx,36(%edx)
	movl %ebx,%eax
	subl %esi,%eax
	jns .L213
	pushl $8305
	call _m3_fault
	.align 16
.L213:
	movl %eax,-4(%ebp)
	addl %esi,%eax
	cmpl $1029,%eax
	jle .L214
	pushl $8305
	call _m3_fault
	.align 16
.L214:
	leal 44(%edx,%esi),%eax
	movl %eax,-8(%ebp)
	pushl $99999
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_M3ID+48,%eax
	jmp .L231
	.align 16
.L212:
	movl $MM_MxIn+1596,%edi
.L215:
	xorl %ebx,%ebx
	movl 8(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl %ebx,%eax
	movl 40(%ecx),%edx
	subl %esi,%edx
	testl %edx,%edx
	jle .L216
	movl %edx,%eax
.L216:
	testl %eax,%eax
	jge .L218
	pushl $8417
	call _m3_fault
	.align 16
.L218:
	movl %eax,-4(%ebp)
	addl %esi,%eax
	cmpl $1029,%eax
	jle .L219
	pushl $8433
	call _m3_fault
	.align 16
.L219:
	movl -12(%ebp),%ecx
	leal 44(%ecx,%esi),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%edi
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__RefillBuffer
	movl %ebx,%esi
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__EOF
	addl $20,%esp
	testl %eax,%eax
	je .L221
	pushl %esi
	jmp .L232
	.align 16
.L221:
	cmpl $1028,%ebx
	jle .L222
	pushl $8593
	call _m3_fault
	.align 16
.L222:
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 44(%eax,%ebx),%dl
	cmpl $13,%edx
	je .L224
	xorl %eax,%eax
	movb 12(%ebp),%al
	cmpl %eax,%edx
	je .L224
	incl %ebx
	jmp .L221
	.align 16
.L224:
	movl 8(%ebp),%edx
	cmpl %ebx,40(%edx)
	jle .L215
	leal 1(%ebx),%ecx
	movl %ecx,36(%edx)
	movl %ebx,%eax
	subl %esi,%eax
	jns .L227
	pushl $8737
	call _m3_fault
	.align 16
.L227:
	movl %eax,-4(%ebp)
	addl %esi,%eax
	cmpl $1029,%eax
	jle .L228
	pushl $8753
	call _m3_fault
	.align 16
.L228:
	leal 44(%edx,%esi),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	pushl %eax
	pushl %edi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $0
	movl %eax,%edi
.L232:
	pushl %edi
	movl MI_M3ID+44,%eax
.L231:
	call *%eax
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 MxIn__GetID,.Lfe29-MxIn__GetID
	.align 16
	.type	 MxIn__GetStamp,@function
MxIn__GetStamp:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movb 16(%ebp),%bl
.L234:
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__GetC
	addl $4,%esp
	cmpb %bl,%al
	je .L236
	cmpl $15,%edi
	jle .L254
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1612
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	addl $20,%esp
	jmp .L236
	.align 16
.L254:
	cmpl $15,%edi
	jbe .L239
	pushl $9089
	call _m3_fault
	.align 16
.L239:
	movb %al,-16(%edi,%ebp)
	incl %edi
	jmp .L234
	.align 16
.L236:
	movl %edi,%eax
	movl $16,%edi
	cmpl %eax,%edi
	jle .L240
	movl %eax,%edi
.L240:
	xorl %esi,%esi
	movl %esi,%ebx
	jmp .L241
	.align 16
.L242:
	cmpl $15,%ebx
	jbe .L243
	pushl $9233
	call _m3_fault
	.align 16
.L243:
	xorl %eax,%eax
	movb -16(%ebx,%ebp),%al
	movl $MM_MxIn+169,%edx
	incl %ebx
	xorl %ecx,%ecx
	movb (%edx,%eax),%cl
	movl %ecx,-24(%ebp)
	cmpl $15,%ebx
	jbe .L244
	pushl $9249
	call _m3_fault
	.align 16
.L244:
	xorl %eax,%eax
	movb -16(%ebx,%ebp),%al
	incl %ebx
	xorl %ecx,%ecx
	movb (%edx,%eax),%cl
	movl %ecx,-20(%ebp)
	cmpl $15,-24(%ebp)
	jg .L245
	cmpl $15,%ecx
	jle .L246
.L245:
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_MxIn+1648
	movl 8(%ebp),%eax
	pushl %eax
	call MxIn__Error
	addl $20,%esp
.L246:
	cmpl $7,%esi
	jbe .L247
	pushl $9313
	call _m3_fault
	.align 16
.L247:
	movl -24(%ebp),%eax
	sall $4,%eax
	movl -20(%ebp),%ecx
	leal (%ecx,%eax),%edx
	cmpl $255,%edx
	jbe .L248
	pushl $9313
	call _m3_fault
	.align 16
.L248:
	movl 12(%ebp),%eax
	movb %dl,(%esi,%eax)
	incl %esi
.L241:
	cmpl %edi,%ebx
	jl .L242
	jmp .L250
	.align 16
.L251:
	cmpl $7,%esi
	jbe .L252
	pushl $9377
	call _m3_fault
	.align 16
.L252:
	movl 12(%ebp),%eax
	movb $0,(%esi,%eax)
	incl %esi
.L250:
	cmpl $7,%esi
	jle .L251
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 MxIn__GetStamp,.Lfe30-MxIn__GetStamp
	.align 16
	.type	 MxIn__GetC,@function
MxIn__GetC:
	pushl %ebp
	movl %esp,%ebp
.L256:
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	cmpl %eax,36(%edx)
	jl .L257
	pushl %edx
	call MxIn__RefillBuffer
	addl $4,%esp
.L257:
	movl 8(%ebp),%ecx
	movl 36(%ecx),%edx
	cmpl $1028,%edx
	jle .L258
	pushl $9569
	call _m3_fault
	.align 16
.L258:
	movb 44(%ecx,%edx),%al
	incl %edx
	movl %edx,36(%ecx)
	andl $255,%eax
	cmpl $13,%eax
	je .L256
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 MxIn__GetC,.Lfe31-MxIn__GetC
	.align 16
	.type	 MxIn__EOF,@function
MxIn__EOF:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl %ecx,%ecx
	movl 40(%eax),%edx
	cmpl %edx,36(%eax)
	jl .L261
	testl %edx,%edx
	sete %al
	xorl %ecx,%ecx
	movb %al,%cl
.L261:
	movl %ecx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 MxIn__EOF,.Lfe32-MxIn__EOF
	.align 16
	.type	 MxIn__RefillBuffer,@function
MxIn__RefillBuffer:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	leal 44(%edx),%ebx
	movl %ebx,-8(%ebp)
	movl $1029,-4(%ebp)
	pushl $1024
	leal -8(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_M3File+44,%eax
	call *%eax
	movl %eax,%ecx
	addl $12,%esp
	testl %eax,%eax
	jge .L263
	pushl $9793
	call _m3_fault
	.align 16
.L263:
	movl 8(%ebp),%edx
	movl %eax,40(%edx)
	cmpl $1028,%eax
	jle .L264
	pushl $9809
	call _m3_fault
	.align 16
.L264:
	movb $0,44(%edx,%ecx)
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	incl %eax
	cmpl $1028,%eax
	jle .L265
	pushl $9825
	call _m3_fault
	.align 16
.L265:
	movb $32,44(%edx,%eax)
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	addl $2,%eax
	cmpl $1028,%eax
	jle .L266
	pushl $9841
	call _m3_fault
	.align 16
.L266:
	movb $10,44(%edx,%eax)
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	addl $3,%eax
	cmpl $1028,%eax
	jle .L267
	pushl $9857
	call _m3_fault
	.align 16
.L267:
	movb $42,44(%edx,%eax)
	movl 8(%ebp),%edx
	movl 40(%edx),%eax
	addl $4,%eax
	cmpl $1028,%eax
	jle .L268
	pushl $9873
	call _m3_fault
	.align 16
.L268:
	movb $34,44(%edx,%eax)
	movl 8(%ebp),%eax
	movl $0,36(%eax)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 MxIn__RefillBuffer,.Lfe33-MxIn__RefillBuffer
	.align 16
	.type	 MxIn__Error,@function
MxIn__Error:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
.L270:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%eax
	movl %ecx,RTThread__handlerStack
	incl 12(%eax)
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L280
	movl 20(%eax),%eax
	testl %eax,%eax
	je .L272
	movl (%eax),%eax
	testl %eax,%eax
	je .L272
	pushl %eax
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $8,%esp
	cmpl $0,24(%eax)
	je .L275
	pushl $MM_MxIn+1696
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	movl 8(%ebp),%eax
	movl 24(%eax),%eax
	pushl %eax
	movl MI_MxRep+148,%eax
	call *%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	pushl $MM_MxIn+1712
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $28,%esp
.L275:
	pushl $MM_MxIn+640
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L272:
	pushl $MM_MxIn+1728
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	je .L276
	pushl %ebx
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L276:
	testl %esi,%esi
	je .L277
	pushl %esi
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L277:
	testl %edi,%edi
	je .L278
	pushl %edi
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L278:
	cmpl $0,24(%ebp)
	je .L279
	movl 24(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L279:
	movl MI_Wr+60,%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_Wr+68,%eax
	call *%eax
.L280:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 MxIn__Error,.Lfe34-MxIn__Error
	.align 16
	.type	 MxIn__CharName,@function
MxIn__CharName:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb 8(%ebp),%al
	xorl %edx,%edx
	movb %al,%dl
	cmpl $31,%edx
	jle .L282
	cmpl $126,%edx
	jg .L282
	pushl %edx
	movl MI_Text+72,%eax
	call *%eax
	pushl %eax
	movl $MM_MxIn+1748,%ebx
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl %ebx
	jmp .L284
	.align 16
.L282:
	pushl $8
	andl $255,%eax
	pushl %eax
	movl MI_Fmt+52,%eax
	call *%eax
	pushl $1
	pushl $48
	pushl $3
	pushl %eax
	movl MI_Fmt+72,%eax
	call *%eax
	pushl %eax
	pushl $MM_MxIn+1764
	movl MI_RTHooks+76,%eax
	call *%eax
	addl $32,%esp
	pushl $MM_MxIn+1748
.L284:
	pushl %eax
	movl MI_RTHooks+76,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 MxIn__CharName,.Lfe35-MxIn__CharName
	.align 16
	.type	 MxIn__Init,@function
MxIn__Init:
	pushl %ebp
	movl %esp,%ebp
	xorl %edx,%edx
.L286:
	movb %dl,%al
	andl $255,%eax
	incl %edx
	movb $16,MM_MxIn+169(%eax)
	cmpl $255,%edx
	jle .L286
	movl $48,%edx
.L289:
	movb %dl,%al
	andl $255,%eax
	leal -48(%eax),%ecx
	cmpl $16,%ecx
	jbe .L290
	pushl $10497
	call _m3_fault
	.align 16
.L290:
	movb %cl,MM_MxIn+169(%eax)
	incl %edx
	cmpl $57,%edx
	jle .L289
	movl $97,%edx
.L293:
	movb %dl,%al
	andl $255,%eax
	leal -87(%eax),%ecx
	cmpl $16,%ecx
	jbe .L294
	pushl $10513
	call _m3_fault
	.align 16
.L294:
	movb %cl,MM_MxIn+169(%eax)
	incl %edx
	cmpl $102,%edx
	jle .L293
	movl $65,%edx
.L297:
	movb %dl,%al
	andl $255,%eax
	leal -55(%eax),%ecx
	cmpl $16,%ecx
	jbe .L298
	pushl $10529
	call _m3_fault
	.align 16
.L298:
	movb %cl,MM_MxIn+169(%eax)
	incl %edx
	cmpl $70,%edx
	jle .L297
	xorl %ecx,%ecx
.L301:
	movb %cl,%al
	xorl %edx,%edx
	movb %al,%dl
	movl MM_MxIn+452,%eax
	incl %ecx
	movl %eax,L_1(,%edx,4)
	cmpl $255,%ecx
	jle .L301
	movl MM_MxIn+456,%eax
	movl %eax,L_1+312
	movl MM_MxIn+464,%eax
	movl %eax,L_1+344
	movl MM_MxIn+472,%eax
	movl %eax,L_1+292
	movl %eax,L_1+308
	movl MM_MxIn+480,%eax
	movl %eax,L_1+260
	movl %eax,L_1+264
	movl MM_MxIn+484,%eax
	movl %eax,L_1+268
	movl %eax,L_1+272
	movl MM_MxIn+488,%eax
	movl %eax,L_1+412
	movl MM_MxIn+492,%eax
	movl %eax,L_1+420
	movl %eax,L_1+296
	movl %eax,L_1+404
	movl %eax,L_1+276
	movl MM_MxIn+496,%eax
	movl %eax,L_1+328
	movl %eax,L_1+352
	movl %eax,L_1+456
	movl %eax,L_1+480
	movl MM_MxIn+504,%eax
	movl %eax,L_1+464
	movl %eax,L_1+336
	movl MM_MxIn+500,%eax
	movl %eax,L_1+476
	movl MM_MxIn+508,%eax
	movl %eax,L_1+444
	movl %eax,L_1+448
	movl %eax,L_1+316
	movl MM_MxIn+512,%eax
	movl %eax,L_1+324
	movl MM_MxIn+516,%eax
	movl %eax,L_1+188
	movl MM_MxIn+520,%eax
	movl %eax,L_1+128
	movl %eax,L_1+52
	movl %eax,L_1+36
	movl %eax,L_1+40
	movl MM_MxIn+448,%eax
	movl %eax,L_1
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 MxIn__Init,.Lfe36-MxIn__Init
	.align 16
	.type	 _INITM_MxIn,@function
_INITM_MxIn:
	pushl %ebp
	movl %esp,%ebp
	call MxIn__Init
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 _INITM_MxIn,.Lfe37-_INITM_MxIn
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxIn
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe38:
	.size	 _m3_fault,.Lfe38-_m3_fault
.globl MM_MxIn
.data
	.align 4
	.type	 MM_MxIn,@object
	.size	 MM_MxIn,2748
MM_MxIn:
	.long MM_MxIn+2588
	.long MM_MxIn+44
	.long MM_MxIn+576
	.zero	8
	.long MM_MxIn+2140
	.zero	16
	.long _INITM_MxIn
	.zero	8
	.long 1903920718
.byte 5
.byte 39
.byte 50
.byte 126
.byte 75
.byte 161
.byte 73
.byte 15
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_MxIn+2724
	.zero	4
	.long MM_MxIn+2729
	.zero	28
	.long MM_MxIn+2735
	.zero	4
	.long MM_MxIn+152
	.ascii	"MxIn.SyntaxError"
	.zero	260
	.long L_1
	.long MxIn__ErrMsg
	.long MxIn__ReadLinkFile
	.long MxIn__ReadMagic
	.long MxIn__Match
	.long MxIn__EndBuffer
	.long MxIn__BadChar
	.long MxIn__ReadName
	.long MxIn__ExpandNameMap
	.long MxIn__ReadVSInfo
	.long MxIn__ExpandVSMap
	.long MxIn__ReadUnit
	.long MxIn__AddInfo
	.long MxIn__ReadPort
	.long MxIn__ReadUse
	.long MxIn__ReadGeneric
	.long MxIn__ReadVersionStamp
	.long MxIn__ReadRevelation
	.long MxIn__ReadWish
	.long MxIn__ReadType
	.long MxIn__ReadObjectType
	.long MxIn__ReadOpaqueType
	.long MxIn__SkipComment
	.long MxIn__SkipBlank
	.long MxIn__GetName
	.long MxIn__GetVS
	.long MxIn__GetInteger
	.long MxIn__GetTypeName
	.long MxIn__GetID
	.long MxIn__GetStamp
	.long MxIn__GetC
	.long MxIn__EOF
	.long MxIn__RefillBuffer
	.long MxIn__Error
	.long MxIn__CharName
	.long MxIn__Init
	.long MxIn__ReadUnits
	.long MM_MxIn+584
	.long 314313739
	.long MM_MxIn+592
	.long 1903920718
	.long MM_MxIn+784
	.long 562018850
	.long MM_MxIn+148
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_MxIn+624
	.long 12
	.ascii	"I/O failure"
	.zero	1
	.long 2
	.long MM_MxIn+648
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_MxIn+664
	.long 8
	.ascii	"  ***  "
	.zero	1
	.long 2
	.long MM_MxIn+684
	.long 8
	.ascii	"M3 v4.2"
	.zero	1
	.long 2
	.long MM_MxIn+704
	.long 35
	.ascii	"bad linkfile (unrecognized header)"
	.zero	2
	.long 2
	.long MM_MxIn+752
	.long 30
	.ascii	"unrecognized linker command: "
	.zero	3
	.long MM_MxIn+792
	.long 880986034
	.long MM_MxIn+1040
	.long -1203380091
	.long 2
	.long MM_MxIn+812
	.long 46
	.ascii	"import/export while current unit not defined!"
	.zero	3
	.long 2
	.long MM_MxIn+872
	.long 45
	.ascii	"magic import while current unit not defined!"
	.zero	4
	.long 2
	.long MM_MxIn+932
	.long 47
	.ascii	"generic import while current unit not defined!"
	.zero	2
	.long 2
	.long MM_MxIn+992
	.long 47
	.ascii	"version stamps while current unit not defined!"
	.zero	2
	.long MM_MxIn+1224
	.long -660466080
	.long 2
	.long MM_MxIn+1060
	.long 44
	.ascii	"revelations while current unit not defined!"
	.zero	1
	.long 2
	.long MM_MxIn+1116
	.long 44
	.ascii	"object wish while current unit not defined!"
	.zero	1
	.long 2
	.long MM_MxIn+1172
	.long 51
	.ascii	"type import/export while current unit not defined!"
	.zero	2
	.long MM_MxIn+1288
	.long -929516260
	.long 2
	.long MM_MxIn+1244
	.long 44
	.ascii	"object info while current unit not defined!"
	.zero	5
	.long 812208790
	.long 2
	.long MM_MxIn+1308
	.long 52
	.ascii	"opaque type defined while current unit not defined!"
	.zero	1
	.long 2
	.long MM_MxIn+1372
	.long 18
	.ascii	"bad unit number: "
	.zero	3
	.long 2
	.long MM_MxIn+1404
	.long 27
	.ascii	"bad version stamp number: "
	.zero	2
	.long 2
	.long MM_MxIn+1444
	.long 17
	.ascii	"expected integer"
	.zero	4
	.long 2
	.long MM_MxIn+1476
	.long 34
	.ascii	"expecting separator after integer"
	.zero	3
	.long 2
	.long MM_MxIn+1524
	.long 18
	.ascii	"expected typename"
	.zero	3
	.long 2
	.long MM_MxIn+1556
	.long 35
	.ascii	"expecting separator after typename"
	.zero	2
	.long 2
	.long MM_MxIn+1604
	.long 1
	.zero	4
	.long 2
	.long MM_MxIn+1620
	.long 24
	.ascii	"version stamp too long!"
	.zero	1
	.long 2
	.long MM_MxIn+1656
	.long 35
	.ascii	"illegal hex digit in version stamp"
	.zero	2
	.long 2
	.long MM_MxIn+1704
	.long 3
	.ascii	" ("
	.zero	2
	.long 2
	.long MM_MxIn+1720
	.long 2
	.ascii	")"
	.zero	3
	.long 2
	.long MM_MxIn+1736
	.long 8
	.ascii	"ERROR: "
	.zero	1
	.long 2
	.long MM_MxIn+1756
	.long 2
	.ascii	"'"
	.zero	3
	.long 2
	.long MM_MxIn+1772
	.long 3
	.ascii	"'\\"
	.zero	2
	.ascii	"_INITM_MxIn"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"CharName"
	.zero	1
	.ascii	"Error"
	.zero	1
	.ascii	"RefillBuffer"
	.zero	1
	.ascii	"EOF"
	.zero	1
	.ascii	"GetC"
	.zero	1
	.ascii	"GetStamp"
	.zero	1
	.ascii	"GetID"
	.zero	1
	.ascii	"GetTypeName"
	.zero	1
	.ascii	"GetInteger"
	.zero	1
	.ascii	"GetVS"
	.zero	1
	.ascii	"GetName"
	.zero	1
	.ascii	"SkipBlank"
	.zero	1
	.ascii	"SkipComment"
	.zero	1
	.ascii	"ReadOpaqueType"
	.zero	1
	.ascii	"ReadObjectType"
	.zero	1
	.ascii	"ReadType"
	.zero	1
	.ascii	"ReadWish"
	.zero	1
	.ascii	"ReadRevelation"
	.zero	1
	.ascii	"ReadVersionStamp"
	.zero	1
	.ascii	"ReadGeneric"
	.zero	1
	.ascii	"ReadUse"
	.zero	1
	.ascii	"ReadPort"
	.zero	1
	.ascii	"AddInfo"
	.zero	1
	.ascii	"ReadUnit"
	.zero	1
	.ascii	"ExpandVSMap"
	.zero	1
	.ascii	"ReadVSInfo"
	.zero	1
	.ascii	"ExpandNameMap"
	.zero	1
	.ascii	"ReadName"
	.zero	1
	.ascii	"BadChar"
	.zero	1
	.ascii	"EndBuffer"
	.zero	1
	.ascii	"Match"
	.zero	1
	.ascii	"ReadMagic"
	.zero	1
	.ascii	"ReadLinkFile"
	.zero	1
	.ascii	"ErrMsg"
	.zero	1
	.ascii	"ReadUnits"
	.zero	1
	.long _INITM_MxIn
	.long MM_MxIn+1776
	.zero	4
	.long MxIn__Init
	.long MM_MxIn+1788
	.zero	4
	.long MxIn__CharName
	.long MM_MxIn+1793
	.zero	4
	.long MxIn__Error
	.long MM_MxIn+1802
	.zero	4
	.long MxIn__RefillBuffer
	.long MM_MxIn+1808
	.zero	4
	.long MxIn__EOF
	.long MM_MxIn+1821
	.zero	4
	.long MxIn__GetC
	.long MM_MxIn+1825
	.zero	4
	.long MxIn__GetStamp
	.long MM_MxIn+1830
	.zero	4
	.long MxIn__GetID
	.long MM_MxIn+1839
	.zero	4
	.long MxIn__GetTypeName
	.long MM_MxIn+1845
	.zero	4
	.long MxIn__GetInteger
	.long MM_MxIn+1857
	.zero	4
	.long MxIn__GetVS
	.long MM_MxIn+1868
	.zero	4
	.long MxIn__GetName
	.long MM_MxIn+1874
	.zero	4
	.long MxIn__SkipBlank
	.long MM_MxIn+1882
	.zero	4
	.long MxIn__SkipComment
	.long MM_MxIn+1892
	.zero	4
	.long MxIn__ReadOpaqueType
	.long MM_MxIn+1904
	.zero	4
	.long MxIn__ReadObjectType
	.long MM_MxIn+1919
	.zero	4
	.long MxIn__ReadType
	.long MM_MxIn+1934
	.zero	4
	.long MxIn__ReadWish
	.long MM_MxIn+1943
	.zero	4
	.long MxIn__ReadRevelation
	.long MM_MxIn+1952
	.zero	4
	.long MxIn__ReadVersionStamp
	.long MM_MxIn+1967
	.zero	4
	.long MxIn__ReadGeneric
	.long MM_MxIn+1984
	.zero	4
	.long MxIn__ReadUse
	.long MM_MxIn+1996
	.zero	4
	.long MxIn__ReadPort
	.long MM_MxIn+2004
	.zero	4
	.long MxIn__AddInfo
	.long MM_MxIn+2013
	.zero	4
	.long MxIn__ReadUnit
	.long MM_MxIn+2021
	.zero	4
	.long MxIn__ExpandVSMap
	.long MM_MxIn+2030
	.zero	4
	.long MxIn__ReadVSInfo
	.long MM_MxIn+2042
	.zero	4
	.long MxIn__ExpandNameMap
	.long MM_MxIn+2053
	.zero	4
	.long MxIn__ReadName
	.long MM_MxIn+2067
	.zero	4
	.long MxIn__BadChar
	.long MM_MxIn+2076
	.zero	4
	.long MxIn__EndBuffer
	.long MM_MxIn+2084
	.zero	4
	.long MxIn__Match
	.long MM_MxIn+2094
	.zero	4
	.long MxIn__ReadMagic
	.long MM_MxIn+2100
	.zero	4
	.long MxIn__ReadLinkFile
	.long MM_MxIn+2110
	.zero	4
	.long MxIn__ErrMsg
	.long MM_MxIn+2123
	.zero	4
	.long MxIn__ReadUnits
	.long MM_MxIn+2130
	.long MI_MxIn+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxIn.m3"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 254
.byte 126
	.ascii	"MxIn.NameMap"
	.zero	1
	.local	L_1
	.comm	L_1,1024,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
