	.file	"TipeMap.mc"
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
	.type	 TipeMap__Start,@function
TipeMap__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	cmpb $0,MM_TipeMap+440
	je .L2
	pushl $2352
	call _m3_fault
	.align 16
.L2:
	movb $1,MM_TipeMap+440
	cmpl $0,MM_TipeMap+444
	jne .L3
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %eax
	movl MM_TipeMap+484,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_TipeMap+444
.L3:
	movl $0,MM_TipeMap+448
	movl $0,MM_TipeMap+452
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TipeMap__Start,.Lfe1-TipeMap__Start
	.align 16
	.type	 TipeMap__Finish,@function
TipeMap__Finish:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%ebx
	cmpl $0,MM_TipeMap+448
	jne .L5
	movb $0,MM_TipeMap+440
	movl $-1,%eax
	jmp .L11
	.align 16
.L5:
	pushl $0
	pushl $0
	movl MM_TipeMap+452,%eax
	pushl %eax
	call TipeMap__Add
	pushl $0
	pushl $MM_TipeMap+496
	movl MI_Target+280,%eax
	pushl %eax
	movl MM_TipeMap+448,%eax
	imull MI_Target+276,%eax
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl %eax,%edi
	pushl %edi
	movl MI_CG+788,%eax
	call *%eax
	movl %edi,%esi
	xorl %ebx,%ebx
	movl MM_TipeMap+448,%edx
	decl %edx
	movl %edx,-4(%ebp)
	addl $48,%esp
	jmp .L6
	.align 16
.L7:
	movl MM_TipeMap+444,%eax
	testl %eax,%eax
	jne .L8
	pushl $2708
	call _m3_fault
	.align 16
.L8:
	cmpl %ebx,4(%eax)
	ja .L9
	pushl $2706
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movb (%ebx,%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Target+276,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+256,%eax
	call *%eax
	addl MI_Target+276,%esi
	incl %ebx
	addl $12,%esp
.L6:
	cmpl %ebx,-4(%ebp)
	jge .L7
	movb $0,MM_TipeMap+440
	movl %edi,%eax
.L11:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TipeMap__Finish,.Lfe2-TipeMap__Finish
.section	.rodata
	.align 4
	.type	 L_3.0,@object
	.size	 L_3.0,44
L_3.0:
	.long .L40
	.long .L41
	.long .L42
	.long .L43
	.long .L44
	.long .L45
	.long .L46
	.long .L47
	.long .L48
	.long .L49
	.long .L50
.text
	.align 16
	.type	 TipeMap__Add,@function
TipeMap__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L13:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpb $0,MM_TipeMap+440
	jne .L14
	pushl $2880
	call _m3_fault
	.align 16
.L14:
	movl 8(%ebp),%esi
	sarl $3,%esi
	movl MM_TipeMap+452,%edx
	movl %edx,%eax
	sarl $3,%eax
	movl %esi,%ebx
	subl %eax,%ebx
	je .L15
	testl %ebx,%ebx
	jle .L16
	cmpl $8,%ebx
	jg .L16
	leal 33(%ebx),%eax
	cmpl $57,%eax
	jbe .L17
	pushl $3009
	call _m3_fault
	.align 16
.L17:
	pushl $0
	pushl %eax
	pushl %edx
	jmp .L53
	.align 16
.L16:
	testl %ebx,%ebx
	jl .L19
	pushl %ebx
	call TipeMap__IntSize
	movl %eax,%edx
	leal 41(%edx),%eax
	addl $4,%esp
	cmpl $57,%eax
	jbe .L21
	pushl $3057
	call _m3_fault
	.align 16
.L19:
	negl %ebx
	pushl %ebx
	call TipeMap__IntSize
	movl %eax,%edx
	leal 49(%edx),%eax
	addl $4,%esp
	cmpl $57,%eax
	jbe .L21
	pushl $3121
	call _m3_fault
	.align 16
.L21:
	pushl %ebx
	pushl %eax
	movl MM_TipeMap+452,%eax
	pushl %eax
.L53:
	call TipeMap__Add
	addl $12,%esp
.L15:
	xorl %ebx,%ebx
	movb 12(%ebp),%bl
	movl $MM_TipeMap+44,%edi
	movzbl (%edi,%ebx),%esi
	testl %esi,%esi
	jle .L22
	movl 16(%ebp),%ecx
	pushl %ecx
	call TipeMap__IntSize
	movl %eax,%edx
	addl $4,%esp
	cmpl %esi,%edx
	jle .L22
	leal -1(%edx,%ebx),%eax
	cmpl $57,%eax
	jbe .L24
	pushl $3265
	call _m3_fault
	.align 16
.L24:
	movb %al,12(%ebp)
	xorl %eax,%eax
	movb 12(%ebp),%al
	movb (%edi,%eax),%al
	andl $255,%eax
	cmpl %edx,%eax
	je .L22
	pushl $3280
	call _m3_fault
	.align 16
.L22:
	movl MM_TipeMap+444,%edx
	testl %edx,%edx
	jne .L26
	pushl $3364
	call _m3_fault
	.align 16
.L26:
	movl MM_TipeMap+448,%eax
	cmpl %eax,4(%edx)
	jg .L27
	call TipeMap__ExpandBytes
.L27:
	movl MM_TipeMap+444,%eax
	testl %eax,%eax
	jne .L28
	pushl $3380
	call _m3_fault
	.align 16
.L28:
	movl MM_TipeMap+448,%ebx
	cmpl %ebx,4(%eax)
	ja .L29
	pushl $3378
	call _m3_fault
	.align 16
.L29:
	xorl %edx,%edx
	movb 12(%ebp),%dl
	cmpl $255,%edx
	jbe .L30
	pushl $3377
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%eax
	movb %dl,(%ebx,%eax)
	movl MM_TipeMap+448,%eax
	incl %eax
	movl %eax,MM_TipeMap+448
	movl 16(%ebp),%ebx
	movzbl MM_TipeMap+44(%edx),%esi
	movl MM_TipeMap+444,%edx
	testl %edx,%edx
	jne .L31
	pushl $3460
	call _m3_fault
	.align 16
.L31:
	addl %esi,%eax
	cmpl %eax,4(%edx)
	jg .L33
	call TipeMap__ExpandBytes
	jmp .L33
	.align 16
.L34:
	movl MM_TipeMap+444,%eax
	testl %eax,%eax
	jne .L35
	pushl $3492
	call _m3_fault
	.align 16
.L35:
	movl MM_TipeMap+448,%edi
	cmpl %edi,4(%eax)
	ja .L36
	pushl $3490
	call _m3_fault
	.align 16
.L36:
	movl %ebx,%edx
	andl $255,%edx
	cmpl $255,%edx
	jbe .L37
	pushl $3489
	call _m3_fault
	.align 16
.L37:
	movl (%eax),%eax
	shrl $8,%ebx
	decl %esi
	movb %dl,(%edi,%eax)
	incl MM_TipeMap+448
.L33:
	testl %esi,%esi
	jg .L34
	xorl %eax,%eax
	movb 12(%ebp),%al
	movl MM_TipeMap+104(,%eax,4),%esi
	leal 11(%esi),%eax
	testl %eax,%eax
	jl .L39
	cmpl $10,%eax
	jg .L39
	jmp *L_3.0(,%eax,4)
	.align 16
.L50:
	jmp .L52
	.align 16
.L49:
	movl 16(%ebp),%eax
	imull MI_Target+96,%eax
	addl MI_Target+60,%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L48:
	jmp .L44
	.align 16
.L47:
	movl $0,MM_TipeMap+452
.L46:
	jmp .L52
	.align 16
.L45:
.L44:
	movl 16(%ebp),%ecx
	leal 0(,%ecx,8),%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L43:
	movl MI_Target+60,%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L42:
	movl MI_Target+132,%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L41:
	movl MI_Target+180,%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L40:
	movl MI_Target+228,%eax
	addl %eax,MM_TipeMap+452
	jmp .L52
	.align 16
.L39:
	addl %esi,MM_TipeMap+452
.L52:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TipeMap__Add,.Lfe3-TipeMap__Add
	.align 16
	.type	 TipeMap__IntSize,@function
TipeMap__IntSize:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
.L55:
	incl %eax
	shrl $8,%edx
	jne .L55
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TipeMap__IntSize,.Lfe4-TipeMap__IntSize
	.align 16
	.type	 TipeMap__GetCursor,@function
TipeMap__GetCursor:
	pushl %ebp
	movl %esp,%ebp
	movl MM_TipeMap+452,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TipeMap__GetCursor,.Lfe5-TipeMap__GetCursor
	.align 16
	.type	 TipeMap__SetCursor,@function
TipeMap__SetCursor:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %eax,MM_TipeMap+452
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TipeMap__SetCursor,.Lfe6-TipeMap__SetCursor
	.align 16
	.type	 TipeMap__ExpandBytes,@function
TipeMap__ExpandBytes:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl MM_TipeMap+444,%eax
	testl %eax,%eax
	jne .L60
	pushl $4212
	call _m3_fault
	.align 16
.L60:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_TipeMap+484,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L61
	pushl $4244
	call _m3_fault
	.align 16
.L61:
	movl MM_TipeMap+444,%ecx
	testl %ecx,%ecx
	jne .L62
	pushl $4244
	call _m3_fault
	.align 16
.L62:
	movl 4(%ecx),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L63
	pushl $4241
	call _m3_fault
	.align 16
.L63:
	movl (%ebx),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,4(%ecx)
	je .L65
	pushl $4243
	call _m3_fault
	.align 16
.L65:
	pushl %edx
	movl (%ecx),%eax
	pushl %eax
	pushl %esi
	call memmove
	leal -32(%ebp),%esp
	movl %ebx,MM_TipeMap+444
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TipeMap__ExpandBytes,.Lfe7-TipeMap__ExpandBytes
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TipeMap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_TipeMap
.data
	.align 4
	.type	 MM_TipeMap,@object
	.size	 MM_TipeMap,844
MM_TipeMap:
	.long MM_TipeMap+669
	.long MM_TipeMap+336
	.long MM_TipeMap+484
	.zero	8
	.long MM_TipeMap+576
	.zero	4
	.long MM_TipeMap+664
	.long MM_TipeMap+664
	.zero	8
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 2
.byte 2
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 2
.byte 3
.byte 4
.byte 1
.byte 2
.byte 1
.byte 2
.byte 3
.byte 4
.byte 5
.byte 6
.byte 7
.byte 8
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 2
.byte 3
.byte 4
.byte 5
.byte 6
.byte 7
.byte 8
.byte 1
.byte 2
.byte 3
.byte 4
.byte 5
.byte 6
.byte 7
.byte 8
	.zero	2
	.long 0
	.long 0
	.long -4
	.long -5
	.long -8
	.long -8
	.long -8
	.long -9
	.long -10
	.long -11
	.long 0
	.long 0
	.long 8
	.long 16
	.long 32
	.long 64
	.long 8
	.long 16
	.long 32
	.long 64
	.long -3
	.long -3
	.long -3
	.long -3
	.long -2
	.long -2
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long -1
	.long 8
	.long 16
	.long 24
	.long 32
	.long 40
	.long 48
	.long 56
	.long 64
	.long -6
	.long -6
	.long -6
	.long -6
	.long -6
	.long -6
	.long -6
	.long -6
	.long -7
	.long -7
	.long -7
	.long -7
	.long -7
	.long -7
	.long -7
	.long -7
	.zero	8
	.long -861351064
.byte 229
.byte 42
.byte 237
.byte 223
.byte 141
.byte 249
.byte 69
.byte 19
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 1
	.zero	4
	.long MM_TipeMap+812
	.zero	4
	.long MM_TipeMap+817
	.zero	28
	.long MM_TipeMap+824
	.zero	20
	.long TipeMap__IntSize
	.long TipeMap__ExpandBytes
	.long TipeMap__Start
	.long TipeMap__Finish
	.long TipeMap__Add
	.long TipeMap__GetCursor
	.long TipeMap__SetCursor
	.zero	4
	.long -861351064
	.long 2
	.long MM_TipeMap+504
	.long 9
	.ascii	"type_map"
	.zero	4
	.ascii	"ExpandBytes"
	.zero	1
	.ascii	"SetCursor"
	.zero	1
	.ascii	"GetCursor"
	.zero	1
	.ascii	"IntSize"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"Finish"
	.zero	1
	.ascii	"Start"
	.zero	4
	.long TipeMap__ExpandBytes
	.long MM_TipeMap+516
	.zero	4
	.long TipeMap__SetCursor
	.long MM_TipeMap+528
	.long MI_TipeMap+60
	.long TipeMap__GetCursor
	.long MM_TipeMap+538
	.long MI_TipeMap+56
	.long TipeMap__IntSize
	.long MM_TipeMap+548
	.zero	4
	.long TipeMap__Add
	.long MM_TipeMap+556
	.long MI_TipeMap+52
	.long TipeMap__Finish
	.long MM_TipeMap+560
	.long MI_TipeMap+48
	.long TipeMap__Start
	.long MM_TipeMap+567
	.long MI_TipeMap+44
	.zero	4
.byte 43
.byte 188
.byte 1
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/TipeMap.m3"
	.zero	1
.byte 24
.byte 1
.byte 16
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 19
.byte 0
.byte 65
.byte 255
	.ascii	"TipeMap.ByteList"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
