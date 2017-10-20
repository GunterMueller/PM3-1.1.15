	.file	"Region.mc"
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
	.type	 Region__FromRect,@function
Region__FromRect:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 8(%ebp),%edx
	movl 12(%ebp),%edi
	leal -20(%ebp),%esi
	leal -48(%ebp),%esp
	movl (%edx),%eax
	movl %eax,-20(%ebp)
	movl 4(%edx),%eax
	movl %eax,-16(%ebp)
	movl 8(%edx),%eax
	movl %eax,-12(%ebp)
	movl 12(%edx),%eax
	movl %eax,-8(%ebp)
	movl $0,-4(%ebp)
	cld
	movl $5,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Region__FromRect,.Lfe1-Region__FromRect
	.align 16
	.type	 Region__FromPoint,@function
Region__FromPoint:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %ebx
	leal -36(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+84,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Region__FromRect
	movl -40(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Region__FromPoint,.Lfe2-Region__FromPoint
	.align 16
	.type	 Region__BoundingBox,@function
Region__BoundingBox:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl %ebp,%esp
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	popl %ebp
	ret
.Lfe3:
	.size	 Region__BoundingBox,.Lfe3-Region__BoundingBox
	.align 16
	.type	 Region__AddHV,@function
Region__AddHV:
	pushl %ebp
	movl %esp,%ebp
	subl $72,%esp
	pushl %edi
	pushl %esi
	leal -20(%ebp),%eax
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl 16(%ebp),%ecx
	pushl %ecx
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+184,%eax
	call *%eax
	movl 8(%ebp),%eax
	addl $16,%esp
	movl 16(%eax),%ebx
	testl %ebx,%ebx
	je .L28
	cmpl $0,16(%ebp)
	jne .L7
	cmpl $0,12(%ebp)
	jne .L7
.L28:
	movl %ebx,-4(%ebp)
	jmp .L6
	.align 16
.L7:
	leal -52(%ebp),%edx
	leal -44(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,-48(%ebp)
	testl %ebx,%ebx
	jne .L8
	pushl $772
	call _m3_fault
	.align 16
.L8:
	movl 4(%ebx),%eax
	movl %eax,-44(%ebp)
	pushl %edx
	movl MM_Region+236,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $8,%esp
	xorl %edi,%edi
	movl 4(%ebx),%ecx
	decl %ecx
	movl %ecx,-64(%ebp)
	jmp .L10
	.align 16
.L11:
	movl -4(%ebp),%eax
	testl %eax,%eax
	jne .L12
	pushl $804
	call _m3_fault
	.align 16
.L12:
	movl %eax,%edx
	cmpl %edi,4(%edx)
	ja .L13
	pushl $802
	call _m3_fault
	.align 16
.L13:
	leal (%edi,%edi,2),%eax
	leal 0(,%eax,4),%esi
	movl (%edx),%edx
	leal (%esi,%edx),%ecx
	movl %ecx,-56(%ebp)
	testl %ebx,%ebx
	jne .L14
	pushl $804
	call _m3_fault
	.align 16
.L14:
	cmpl %edi,4(%ebx)
	ja .L15
	pushl $802
	call _m3_fault
	.align 16
.L15:
	movl (%ebx),%eax
	leal (%esi,%eax),%ecx
	movl %ecx,-60(%ebp)
	addl %esi,%edx
	pushl %edx
	movl 16(%ebp),%ecx
	pushl %ecx
	addl %esi,%eax
	pushl %eax
	movl MI_Interval+96,%eax
	call *%eax
	addl $12,%esp
	cmpl $0,12(%ebp)
	jne .L16
	movl -60(%ebp),%eax
	movl -56(%ebp),%edx
	movl 8(%eax),%eax
	movl %eax,8(%edx)
	jmp .L17
	.align 16
.L16:
	leal -52(%ebp),%edx
	leal -44(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl -60(%ebp),%eax
	movl $1,-48(%ebp)
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L18
	pushl $884
	call _m3_fault
	.align 16
.L18:
	movl 4(%eax),%eax
	movl %eax,-44(%ebp)
	pushl %edx
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl -56(%ebp),%eax
	addl $8,%esp
	movl %edx,8(%eax)
	testl %edx,%edx
	jne .L19
	pushl $900
	call _m3_fault
	.align 16
.L19:
	xorl %esi,%esi
	movl 4(%edx),%edx
	decl %edx
	movl %edx,-68(%ebp)
	jmp .L20
	.align 16
.L21:
	movl -56(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L22
	pushl $916
	call _m3_fault
	.align 16
.L22:
	cmpl %esi,4(%eax)
	ja .L23
	pushl $914
	call _m3_fault
	.align 16
.L23:
	leal 0(,%esi,8),%ecx
	movl %ecx,-72(%ebp)
	movl %ecx,%edx
	addl (%eax),%edx
	movl -60(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L24
	pushl $916
	call _m3_fault
	.align 16
.L24:
	cmpl %esi,4(%eax)
	ja .L25
	pushl $914
	call _m3_fault
	.align 16
.L25:
	pushl %edx
	movl 12(%ebp),%ecx
	pushl %ecx
	movl -72(%ebp),%ecx
	addl (%eax),%ecx
	movl %ecx,%eax
	pushl %eax
	movl MI_Interval+96,%eax
	call *%eax
	incl %esi
	addl $12,%esp
.L20:
	cmpl %esi,-68(%ebp)
	jge .L21
.L17:
	incl %edi
.L10:
	cmpl %edi,-64(%ebp)
	jge .L11
.L6:
	movl 20(%ebp),%edi
	leal -20(%ebp),%esi
	leal -84(%ebp),%esp
	cld
	movl $5,%ecx
	rep
	movsl
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Region__AddHV,.Lfe4-Region__AddHV
	.align 16
	.type	 Region__Add,@function
Region__Add:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__AddHV
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Region__Add,.Lfe5-Region__Add
	.align 16
	.type	 Region__AddAxis,@function
Region__AddAxis:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	movl 12(%ebp),%edx
	cmpb $0,16(%ebp)
	jne .L31
	movl 20(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %edx
	jmp .L32
	.align 16
.L31:
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl $0
.L32:
	movl 8(%ebp),%eax
	pushl %eax
	call Region__AddHV
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Region__AddAxis,.Lfe6-Region__AddAxis
	.align 16
	.type	 Region__Sub,@function
Region__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%edx
	movl 4(%edx),%eax
	negl %eax
	pushl %eax
	movl (%edx),%eax
	negl %eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__AddHV
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Region__Sub,.Lfe7-Region__Sub
	.align 16
	.type	 Region__Inset,@function
Region__Inset:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl %esi,%edx
	addl %esi,%edx
	leal 1(%edx),%eax
	testl %esi,%esi
	jge .L35
	leal -1(%edx),%eax
	negl %esi
.L35:
	leal -40(%ebp),%ebx
	pushl %ebx
	pushl %eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Place
	movl 16(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %esi
	pushl %ebx
	call Region__AddHV
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Region__Inset,.Lfe8-Region__Inset
	.align 16
	.type	 Region__PlaceAxis,@function
Region__PlaceAxis:
	pushl %ebp
	movl %esp,%ebp
	subl $84,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpl $0,12(%ebp)
	jne .L37
	movl 20(%ebp),%edi
	movl $MI_Region+64,%esi
	jmp .L44
	.align 16
.L37:
	leal -40(%ebp),%edi
	movl 8(%ebp),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	cmpl $0,12(%ebp)
	jle .L38
	movl MI_Region+348,%edx
	jmp .L45
	.align 16
.L38:
	negl 12(%ebp)
	movl MI_Region+232,%edx
.L45:
	movl %edx,-84(%ebp)
	leal -20(%ebp),%edi
	movl 8(%ebp),%esi
	decl 12(%ebp)
	cld
	movl $5,%ecx
	rep
	movsl
	movl $1,%edi
.L40:
	testl %edi,12(%ebp)
	je .L41
	leal -80(%ebp),%esi
	pushl %esi
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	movl %edi,%eax
	negl %eax
	pushl %eax
	leal -40(%ebp),%ebx
	pushl %ebx
	call Region__AddAxis
	pushl %ebx
	leal -20(%ebp),%eax
	pushl %eax
	pushl %esi
	movl -84(%ebp),%edx
	call *%edx
	subl %edi,12(%ebp)
	addl $28,%esp
.L41:
	cmpl $0,12(%ebp)
	je .L43
	leal -80(%ebp),%esi
	pushl %esi
	xorl %eax,%eax
	movb 16(%ebp),%al
	pushl %eax
	movl %edi,%eax
	negl %eax
	pushl %eax
	leal -20(%ebp),%ebx
	pushl %ebx
	call Region__AddAxis
	pushl %ebx
	pushl %esi
	pushl %ebx
	movl -84(%ebp),%edx
	call *%edx
	addl %edi,%edi
	addl $28,%esp
	jmp .L40
	.align 16
.L43:
	movl 20(%ebp),%edi
	leal -40(%ebp),%esi
.L44:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -96(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Region__PlaceAxis,.Lfe9-Region__PlaceAxis
	.align 16
	.type	 Region__Place,@function
Region__Place:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%esi
	leal -40(%ebp),%ebx
	pushl %ebx
	pushl $0
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__PlaceAxis
	movl 20(%ebp),%eax
	pushl %eax
	pushl $1
	pushl %esi
	pushl %ebx
	call Region__PlaceAxis
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Region__Place,.Lfe10-Region__Place
	.align 16
	.type	 Region__FromRects,@function
Region__FromRects:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	leal -20(%ebp),%edi
	pushl %esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $MI_Region+44,%esi
	movl $0,-4(%ebp)
	cld
	movl $5,%ecx
	rep
	movsl
	movl 8(%ebp),%eax
	xorl %esi,%esi
	movl 4(%eax),%edi
	decl %edi
	jmp .L48
	.align 16
.L49:
	movl 8(%ebp),%edx
	cmpl %esi,4(%edx)
	ja .L50
	pushl $2018
	call _m3_fault
	.align 16
.L50:
	leal -20(%ebp),%eax
	pushl %eax
	pushl %eax
	movl %esi,%eax
	sall $4,%eax
	addl (%edx),%eax
	pushl %eax
	call Region__JoinRect
	incl %esi
	addl $12,%esp
.L48:
	cmpl %edi,%esi
	jle .L49
	movl 12(%ebp),%edi
	leal -20(%ebp),%esi
	leal -48(%ebp),%esp
	cld
	movl $5,%ecx
	rep
	movsl
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Region__FromRects,.Lfe11-Region__FromRects
	.align 16
	.type	 Region__ToRects,@function
Region__ToRects:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%eax),%esi
	movl %esi,-20(%ebp)
	pushl %eax
	movl MI_Rect+244,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L53
	movl MM_Region+48,%ebx
	jmp .L54
	.align 16
.L53:
	cmpl $0,-20(%ebp)
	jne .L55
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %eax
	movl MM_Region+252,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L56
	pushl $2260
	call _m3_fault
	.align 16
.L56:
	cmpl $0,4(%ebx)
	jne .L57
	pushl $2258
	call _m3_fault
	.align 16
.L57:
	movl 8(%ebp),%edx
	movl (%ebx),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L54
	.align 16
.L55:
	movl %ebx,-48(%ebp)
	movl -20(%ebp),%esi
	movl -48(%ebp),%edx
	movl 4(%esi),%ebx
	decl %ebx
	jmp .L59
	.align 16
.L60:
	cmpl $0,-20(%ebp)
	jne .L61
	pushl $2308
	call _m3_fault
	.align 16
.L61:
	movl -20(%ebp),%ecx
	cmpl %edx,4(%ecx)
	ja .L62
	pushl $2306
	call _m3_fault
	.align 16
.L62:
	leal (%edx,%edx,2),%eax
	sall $2,%eax
	addl (%ecx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L63
	pushl $2308
	call _m3_fault
	.align 16
.L63:
	movl 4(%eax),%eax
	addl %eax,-48(%ebp)
	incl %edx
.L59:
	cmpl %ebx,%edx
	jle .L60
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl -48(%ebp),%esi
	movl %esi,-4(%ebp)
	pushl %eax
	movl MM_Region+252,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	movl $0,-48(%ebp)
	addl $8,%esp
	cmpl $0,-20(%ebp)
	jne .L65
	pushl $2356
	call _m3_fault
	.align 16
.L65:
	movl -48(%ebp),%edi
	movl -20(%ebp),%esi
	movl %edi,-24(%ebp)
	movl 4(%esi),%esi
	decl %esi
	movl %esi,-28(%ebp)
	jmp .L66
	.align 16
.L67:
	cmpl $0,-20(%ebp)
	jne .L68
	pushl $2372
	call _m3_fault
	.align 16
.L68:
	movl -20(%ebp),%ecx
	movl -24(%ebp),%edi
	cmpl %edi,4(%ecx)
	ja .L69
	pushl $2370
	call _m3_fault
	.align 16
.L69:
	movl -24(%ebp),%esi
	leal (%esi,%esi,2),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-16(%ebp)
	movl 8(%edx),%eax
	testl %eax,%eax
	jne .L70
	pushl $2388
	call _m3_fault
	.align 16
.L70:
	movl $0,-44(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-32(%ebp)
	jmp .L71
	.align 16
.L72:
	testl %ebx,%ebx
	jne .L73
	pushl $2404
	call _m3_fault
	.align 16
.L73:
	movl -48(%ebp),%edi
	cmpl %edi,4(%ebx)
	ja .L74
	pushl $2402
	call _m3_fault
	.align 16
.L74:
	movl -48(%ebp),%esi
	sall $4,%esi
	movl %esi,-36(%ebp)
	movl %esi,%edx
	addl (%ebx),%edx
	movl -16(%ebp),%edi
	movl %edi,-40(%ebp)
	movl (%edi),%eax
	movl %eax,8(%edx)
	movl -48(%ebp),%esi
	cmpl %esi,4(%ebx)
	ja .L76
	pushl $2418
	call _m3_fault
	.align 16
.L76:
	movl -36(%ebp),%edx
	movl -40(%ebp),%edi
	addl (%ebx),%edx
	movl 4(%edi),%eax
	movl %eax,12(%edx)
	movl -48(%ebp),%esi
	cmpl %esi,4(%ebx)
	ja .L78
	pushl $2434
	call _m3_fault
	.align 16
.L78:
	movl -40(%ebp),%edi
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L79
	pushl $2436
	call _m3_fault
	.align 16
.L79:
	movl %eax,%ecx
	movl -44(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L80
	pushl $2434
	call _m3_fault
	.align 16
.L80:
	movl (%ebx),%eax
	movl (%ecx),%edx
	movl -44(%ebp),%edi
	movl -36(%ebp),%esi
	movl (%edx,%edi,8),%edx
	movl %edx,(%eax,%esi)
	movl -48(%ebp),%edi
	cmpl %edi,4(%ebx)
	ja .L82
	pushl $2450
	call _m3_fault
	.align 16
.L82:
	movl -40(%ebp),%esi
	movl 8(%esi),%eax
	testl %eax,%eax
	jne .L83
	pushl $2452
	call _m3_fault
	.align 16
.L83:
	movl %eax,%edx
	movl -44(%ebp),%edi
	cmpl %edi,4(%edx)
	ja .L84
	pushl $2450
	call _m3_fault
	.align 16
.L84:
	movl -36(%ebp),%eax
	movl (%edx),%edx
	movl -44(%ebp),%esi
	addl (%ebx),%eax
	movl 4(%edx,%esi,8),%edx
	movl %edx,4(%eax)
	incl -48(%ebp)
	incl %esi
	movl %esi,-44(%ebp)
.L71:
	movl -32(%ebp),%edi
	cmpl %edi,-44(%ebp)
	jle .L72
	incl -24(%ebp)
.L66:
	movl -28(%ebp),%esi
	cmpl %esi,-24(%ebp)
	jle .L67
.L54:
	leal -60(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Region__ToRects,.Lfe12-Region__ToRects
	.align 16
	.type	 Region__JoinRect,@function
Region__JoinRect:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %ebx
	leal -40(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Region__FromRect
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Region__Join
	movl -44(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Region__JoinRect,.Lfe13-Region__JoinRect
	.align 16
	.type	 Region__MeetRect,@function
Region__MeetRect:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %ebx
	leal -40(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Region__FromRect
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Region__Meet
	movl -44(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Region__MeetRect,.Lfe14-Region__MeetRect
	.align 16
	.type	 Region__Flesh,@function
Region__Flesh:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	leal -12(%ebp),%edi
	pushl %esi
	leal -4(%ebp),%esi
	pushl %ebx
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %edi
	movl MM_Region+236,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L90
	pushl $2820
	call _m3_fault
	.align 16
.L90:
	cmpl $0,4(%ebx)
	jne .L91
	pushl $2818
	call _m3_fault
	.align 16
.L91:
	movl 8(%ebp),%edx
	movl (%ebx),%eax
	movl 8(%edx),%edx
	movl %edx,(%eax)
	cmpl $0,4(%ebx)
	jne .L93
	pushl $2834
	call _m3_fault
	.align 16
.L93:
	movl 8(%ebp),%eax
	movl (%ebx),%edx
	movl 12(%eax),%eax
	movl %eax,4(%edx)
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,-4(%ebp)
	pushl %edi
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	addl $8,%esp
	cmpl $0,4(%ebx)
	jne .L95
	pushl $2850
	call _m3_fault
	.align 16
.L95:
	movl (%ebx),%eax
	movl %edx,8(%eax)
	cmpl $0,4(%ebx)
	jne .L97
	pushl $2866
	call _m3_fault
	.align 16
.L97:
	movl (%ebx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L98
	pushl $2868
	call _m3_fault
	.align 16
.L98:
	cmpl $0,4(%eax)
	jne .L99
	pushl $2866
	call _m3_fault
	.align 16
.L99:
	movl 8(%ebp),%edx
	movl (%eax),%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	cmpl $0,4(%ebx)
	jne .L101
	pushl $2882
	call _m3_fault
	.align 16
.L101:
	movl (%ebx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L102
	pushl $2884
	call _m3_fault
	.align 16
.L102:
	cmpl $0,4(%eax)
	jne .L103
	pushl $2882
	call _m3_fault
	.align 16
.L103:
	movl (%eax),%eax
	movl 8(%ebp),%edx
	leal -24(%ebp),%esp
	movl 4(%edx),%edx
	movl %edx,4(%eax)
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Region__Flesh,.Lfe15-Region__Flesh
	.align 16
	.type	 Region__Skin,@function
Region__Skin:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L105
	cmpl $1,4(%edx)
	jne .L107
	movl (%edx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L110
	pushl $2980
	call _m3_fault
	.align 16
.L110:
	cmpl $1,4(%eax)
	jne .L107
.L105:
	xorl %eax,%eax
	jmp .L111
	.align 16
.L107:
	movl %edx,%eax
.L111:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Region__Skin,.Lfe16-Region__Skin
	.align 16
	.type	 Region__ComputeBBox,@function
Region__ComputeBBox:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L114
	movl 12(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L112
	.align 16
.L114:
	movl %esi,%edx
	cmpl $0,4(%edx)
	jne .L115
	pushl $3138
	call _m3_fault
	.align 16
.L115:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-8(%ebp)
	cmpl $0,4(%edx)
	jne .L117
	pushl $3154
	call _m3_fault
	.align 16
.L117:
	movl (%edx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L118
	pushl $3156
	call _m3_fault
	.align 16
.L118:
	cmpl $0,4(%eax)
	jne .L119
	pushl $3154
	call _m3_fault
	.align 16
.L119:
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,-16(%ebp)
	cmpl $0,4(%edx)
	jne .L121
	pushl $3170
	call _m3_fault
	.align 16
.L121:
	movl (%edx),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L122
	pushl $3172
	call _m3_fault
	.align 16
.L122:
	movl %eax,%edx
	cmpl $0,4(%esi)
	jne .L124
	pushl $3170
	call _m3_fault
	.align 16
.L124:
	movl (%esi),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L125
	pushl $3172
	call _m3_fault
	.align 16
.L125:
	movl 4(%eax),%ecx
	leal -1(%ecx),%eax
	cmpl %eax,4(%edx)
	ja .L126
	pushl $3170
	call _m3_fault
	.align 16
.L126:
	movl (%edx),%eax
	movl $1,%ebx
	movl -4(%eax,%ecx,8),%eax
	movl %eax,-12(%ebp)
	movl 4(%esi),%edi
	decl %edi
	jmp .L128
	.align 16
.L129:
	testl %esi,%esi
	jne .L130
	pushl $3204
	call _m3_fault
	.align 16
.L130:
	cmpl %ebx,4(%esi)
	ja .L131
	pushl $3202
	call _m3_fault
	.align 16
.L131:
	leal (%ebx,%ebx,2),%edx
	movl (%esi),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,%ecx
	movl %edx,-36(%ebp)
	movl 8(%ecx),%eax
	testl %eax,%eax
	jne .L132
	pushl $3220
	call _m3_fault
	.align 16
.L132:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L133
	pushl $3218
	call _m3_fault
	.align 16
.L133:
	movl (%edx),%edx
	movl -16(%ebp),%eax
	cmpl %eax,(%edx)
	jge .L134
	movl 8(%ecx),%eax
	testl %eax,%eax
	jne .L135
	pushl $3220
	call _m3_fault
	.align 16
.L135:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L136
	pushl $3218
	call _m3_fault
	.align 16
.L136:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-16(%ebp)
.L134:
	movl -36(%ebp),%eax
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L137
	pushl $3236
	call _m3_fault
	.align 16
.L137:
	movl %eax,%edx
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L139
	pushl $3234
	call _m3_fault
	.align 16
.L139:
	movl (%edx),%eax
	movl -4(%eax,%ecx,8),%eax
	cmpl %eax,-12(%ebp)
	jge .L140
	movl %eax,-12(%ebp)
.L140:
	incl %ebx
.L128:
	cmpl %edi,%ebx
	jle .L129
	testl %esi,%esi
	jne .L145
	pushl $3316
	call _m3_fault
	.align 16
.L145:
	movl %esi,%edx
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L147
	pushl $3314
	call _m3_fault
	.align 16
.L147:
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 12(%ebp),%edx
	movl -8(%eax),%eax
	movl %eax,-4(%ebp)
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
.L112:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Region__ComputeBBox,.Lfe17-Region__ComputeBBox
	.align 16
	.type	 Region__RegionOp,@function
Region__RegionOp:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
	xorl %edi,%edi
	pushl %ebx
	movl %edi,-56(%ebp)
	movl %edi,-52(%ebp)
	cmpl $0,12(%ebp)
	jne .L149
	pushl $3572
	call _m3_fault
	.align 16
.L149:
	movl 12(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L150
	pushl $3570
	call _m3_fault
	.align 16
.L150:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-44(%ebp)
	jmp .L151
	.align 16
.L152:
	movl 12(%ebp),%edx
	cmpl %eax,-56(%ebp)
	jb .L154
	pushl $3602
	call _m3_fault
	.align 16
.L154:
	movl (%edx),%edx
	movl -56(%ebp),%ebx
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	movl -44(%ebp),%esi
	cmpl %esi,(%edx,%eax)
	je .L156
	incl -52(%ebp)
.L156:
	movl 4(%edx,%eax),%edx
	movl %edx,-44(%ebp)
	incl -56(%ebp)
.L151:
	cmpl $0,12(%ebp)
	jne .L158
	pushl $3588
	call _m3_fault
	.align 16
.L158:
	movl 12(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %eax,-56(%ebp)
	jl .L152
	movl -52(%ebp),%esi
	leal 1(%esi,%eax),%eax
	movl %eax,-52(%ebp)
	movl $0,-76(%ebp)
	movl -76(%ebp),%ebx
	movl %ebx,-80(%ebp)
	cmpl $0,16(%ebp)
	jne .L161
	pushl $3716
	call _m3_fault
	.align 16
.L161:
	movl 16(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L162
	pushl $3714
	call _m3_fault
	.align 16
.L162:
	movl (%edx),%eax
	movl (%eax),%eax
	movl %eax,-44(%ebp)
	jmp .L163
	.align 16
.L164:
	movl 16(%ebp),%edx
	cmpl %eax,-76(%ebp)
	jb .L166
	pushl $3746
	call _m3_fault
	.align 16
.L166:
	movl (%edx),%edx
	movl -76(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl -44(%ebp),%ebx
	cmpl %ebx,(%edx,%eax)
	je .L168
	incl -80(%ebp)
.L168:
	movl 4(%edx,%eax),%edx
	movl %edx,-44(%ebp)
	incl -76(%ebp)
.L163:
	cmpl $0,16(%ebp)
	jne .L170
	pushl $3732
	call _m3_fault
	.align 16
.L170:
	movl 16(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-76(%ebp)
	jl .L164
	leal -12(%ebp),%edx
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	addl -52(%ebp),%eax
	addl -80(%ebp),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_Region+236,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	movl $0,-76(%ebp)
	movl -76(%ebp),%esi
	movl %esi,-56(%ebp)
	movl %esi,-48(%ebp)
	movb $0,-32(%ebp)
	movb -32(%ebp),%bl
	movb %bl,-36(%ebp)
	addl $8,%esp
	cmpl $0,12(%ebp)
	jne .L173
	pushl $3924
	call _m3_fault
	.align 16
.L173:
	movl 12(%ebp),%edx
	cmpl $0,4(%edx)
	jne .L174
	pushl $3922
	call _m3_fault
	.align 16
.L174:
	movl (%edx),%eax
	movl 16(%ebp),%edx
	movl (%eax),%eax
	movl %eax,-52(%ebp)
	cmpl $0,4(%edx)
	jne .L176
	pushl $3938
	call _m3_fault
	.align 16
.L176:
	movl (%edx),%eax
	movl -52(%ebp),%esi
	movl (%eax),%eax
	movl %eax,-80(%ebp)
	movl %eax,-44(%ebp)
	cmpl %esi,%eax
	jle .L177
	movl %esi,-44(%ebp)
.L177:
	movl -48(%ebp),%ebx
	movl %ebx,-28(%ebp)
	movl %ebx,-24(%ebp)
	jmp .L178
	.align 16
.L179:
	movl -44(%ebp),%esi
	movl %esi,-40(%ebp)
	movl -80(%ebp),%ebx
	movl %ebx,-44(%ebp)
	movl -52(%ebp),%esi
	cmpl %esi,%ebx
	jle .L180
	movl %esi,-44(%ebp)
.L180:
	movl -40(%ebp),%ebx
	cmpl %ebx,-44(%ebp)
	jle .L181
	cmpl $0,-28(%ebp)
	jne .L182
	cmpl $0,-24(%ebp)
	je .L181
.L182:
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L183
	cmpl $-1,(%edx)
	jne .L183
	movl 8(%edx),%esi
	movl %esi,-60(%ebp)
	movl 4(%edx),%edx
.L183:
	movl -24(%ebp),%ebx
	pushl %ebx
	movl -28(%ebp),%esi
	pushl %esi
	movl -60(%ebp),%ecx
	call *%edx
	movl %eax,%edx
	movl %edx,-20(%ebp)
	addl $8,%esp
	testl %edx,%edx
	je .L181
	cmpl $0,-48(%ebp)
	jle .L186
	testl %edi,%edi
	jne .L187
	pushl $4100
	call _m3_fault
	.align 16
.L187:
	movl -48(%ebp),%ebx
	decl %ebx
	movl %ebx,-64(%ebp)
	cmpl %ebx,4(%edi)
	ja .L188
	pushl $4098
	call _m3_fault
	.align 16
.L188:
	movl -48(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl %eax,-68(%ebp)
	addl (%edi),%eax
	movl -40(%ebp),%ebx
	cmpl %ebx,-8(%eax)
	jne .L186
	movl -4(%eax),%eax
	pushl %eax
	movl -20(%ebp),%esi
	pushl %esi
	call Region__EqualH
	addl $8,%esp
	testl %eax,%eax
	je .L186
	movl -64(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L192
	pushl $4130
	call _m3_fault
	.align 16
.L192:
	movl -68(%ebp),%eax
	addl (%edi),%eax
	movl -44(%ebp),%esi
	movl %esi,-8(%eax)
	jmp .L181
	.align 16
.L186:
	testl %edi,%edi
	jne .L194
	pushl $4164
	call _m3_fault
	.align 16
.L194:
	movl -48(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L195
	pushl $4162
	call _m3_fault
	.align 16
.L195:
	movl (%edi),%edx
	movl -48(%ebp),%esi
	leal (%esi,%esi,2),%eax
	leal 0(,%eax,4),%ecx
	movl -40(%ebp),%ebx
	movl %ebx,(%edx,%ecx)
	cmpl %esi,4(%edi)
	ja .L197
	pushl $4178
	call _m3_fault
	.align 16
.L197:
	movl %ecx,%eax
	addl (%edi),%eax
	movl -44(%ebp),%esi
	movl %esi,4(%eax)
	movl -48(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L199
	pushl $4194
	call _m3_fault
	.align 16
.L199:
	movl (%edi),%edx
	addl %ecx,%edx
	movl -20(%ebp),%esi
	movl %esi,8(%edx)
	incl -48(%ebp)
.L181:
	movl -80(%ebp),%ebx
	cmpl %ebx,-52(%ebp)
	jl .L200
	jne .L201
	cmpb $0,-36(%ebp)
	je .L201
.L200:
	cmpb $0,-36(%ebp)
	je .L202
	incl -56(%ebp)
	movl $0,-28(%ebp)
	cmpl $0,12(%ebp)
	jne .L203
	pushl $4340
	call _m3_fault
	.align 16
.L203:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-56(%ebp)
	jge .L204
	movl 12(%ebp),%edx
	cmpl %eax,-56(%ebp)
	jb .L206
	pushl $4354
	call _m3_fault
	.align 16
.L206:
	movl (%edx),%edx
	movl -56(%ebp),%ebx
	leal (%ebx,%ebx,2),%eax
	movl (%edx,%eax,4),%eax
	jmp .L246
	.align 16
.L204:
	cmpl $0,16(%ebp)
	jne .L208
	pushl $4388
	call _m3_fault
	.align 16
.L208:
	movl 16(%ebp),%edx
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L210
	pushl $4386
	call _m3_fault
	.align 16
.L210:
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl -8(%eax),%eax
	jmp .L246
	.align 16
.L202:
	cmpl $0,12(%ebp)
	jne .L212
	pushl $4436
	call _m3_fault
	.align 16
.L212:
	movl 12(%ebp),%edx
	movl -56(%ebp),%esi
	cmpl %esi,4(%edx)
	ja .L213
	pushl $4434
	call _m3_fault
	.align 16
.L213:
	movl -56(%ebp),%ebx
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 8(%eax),%esi
	movl %esi,-28(%ebp)
	movl 4(%eax),%eax
.L246:
	movl %eax,-52(%ebp)
	xorb $1,-36(%ebp)
	jmp .L178
	.align 16
.L201:
	cmpb $0,-32(%ebp)
	je .L217
	incl -76(%ebp)
	movl $0,-24(%ebp)
	cmpl $0,16(%ebp)
	jne .L218
	pushl $4564
	call _m3_fault
	.align 16
.L218:
	movl 16(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %eax,-76(%ebp)
	jge .L219
	movl 16(%ebp),%edx
	cmpl %eax,-76(%ebp)
	jb .L221
	pushl $4578
	call _m3_fault
	.align 16
.L221:
	movl (%edx),%edx
	movl -76(%ebp),%esi
	leal (%esi,%esi,2),%eax
	movl (%edx,%eax,4),%eax
	jmp .L247
	.align 16
.L219:
	cmpl $0,12(%ebp)
	jne .L223
	pushl $4612
	call _m3_fault
	.align 16
.L223:
	movl 12(%ebp),%edx
	movl 4(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L225
	pushl $4610
	call _m3_fault
	.align 16
.L225:
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl -8(%eax),%eax
	jmp .L247
	.align 16
.L217:
	cmpl $0,16(%ebp)
	jne .L227
	pushl $4660
	call _m3_fault
	.align 16
.L227:
	movl 16(%ebp),%edx
	movl -76(%ebp),%ebx
	cmpl %ebx,4(%edx)
	ja .L228
	pushl $4658
	call _m3_fault
	.align 16
.L228:
	movl -76(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 8(%eax),%ebx
	movl %ebx,-24(%ebp)
	movl 4(%eax),%eax
.L247:
	movl %eax,-80(%ebp)
	xorb $1,-32(%ebp)
.L178:
	cmpl $0,12(%ebp)
	jne .L231
	pushl $4004
	call _m3_fault
	.align 16
.L231:
	movl 12(%ebp),%esi
	movl -56(%ebp),%ebx
	cmpl %ebx,4(%esi)
	jg .L179
	cmpl $0,16(%ebp)
	jne .L232
	pushl $4004
	call _m3_fault
	.align 16
.L232:
	movl 16(%ebp),%esi
	movl -76(%ebp),%ebx
	cmpl %ebx,4(%esi)
	jg .L179
	cmpl $0,-48(%ebp)
	jne .L234
	movl -48(%ebp),%eax
	jmp .L245
	.align 16
.L234:
	testl %edi,%edi
	jne .L235
	pushl $4772
	call _m3_fault
	.align 16
.L235:
	movl -48(%ebp),%esi
	cmpl %esi,4(%edi)
	jle .L236
	movl %edi,-16(%ebp)
	leal -12(%ebp),%eax
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	movl MM_Region+236,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	testl %edi,%edi
	jne .L237
	pushl $4820
	call _m3_fault
	.align 16
.L237:
	movl $0,-80(%ebp)
	movl 4(%edi),%esi
	decl %esi
	movl %esi,-72(%ebp)
	jmp .L238
	.align 16
.L239:
	testl %edi,%edi
	jne .L240
	pushl $4820
	call _m3_fault
	.align 16
.L240:
	movl -80(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L241
	pushl $4818
	call _m3_fault
	.align 16
.L241:
	cmpl $0,-16(%ebp)
	jne .L242
	pushl $4820
	call _m3_fault
	.align 16
.L242:
	movl -16(%ebp),%edx
	movl -80(%ebp),%esi
	cmpl %esi,4(%edx)
	ja .L243
	pushl $4818
	call _m3_fault
	.align 16
.L243:
	movl (%edi),%ebx
	movl -80(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl (%edx),%ecx
	incl %esi
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx,%eax)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx,%eax)
	movl 8(%ecx,%eax),%edx
	movl %edx,8(%ebx,%eax)
	movl %esi,-80(%ebp)
.L238:
	movl -72(%ebp),%ebx
	cmpl %ebx,-80(%ebp)
	jle .L239
.L236:
	movl %edi,%eax
.L245:
	leal -92(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Region__RegionOp,.Lfe18-Region__RegionOp
	.align 16
	.type	 Region__JoinRegionsInternal,@function
Region__JoinRegionsInternal:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
.L249:
	movl $5,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 16(%ebp),%eax
	subl %esi,%eax
	js .L250
	testl %eax,%eax
	jle .L251
	cmpl $1,%eax
	jle .L252
	cmpl $2,%eax
	jle .L253
	cmpl $3,%eax
	jle .L254
	jmp .L250
	.align 16
.L251:
	movl 20(%ebp),%edi
	movl $MI_Region+44,%esi
	cld
	movl $5,%ecx
	rep
	movsl
	jmp .L269
	.align 16
.L252:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L255
	pushl $5572
	call _m3_fault
	.align 16
.L255:
	movl %eax,%edx
	cmpl %esi,4(%edx)
	ja .L256
	pushl $5570
	call _m3_fault
	.align 16
.L256:
	leal (%esi,%esi,4),%eax
	sall $2,%eax
	movl 20(%ebp),%edi
	movl %eax,%esi
	addl (%edx),%esi
	cld
	movl $5,%ecx
	rep
	movsl
	jmp .L269
	.align 16
.L253:
	movl 8(%ebp),%eax
	movl (%eax),%eax
	testl %eax,%eax
	jne .L257
	pushl $5588
	call _m3_fault
	.align 16
.L257:
	movl %eax,%edx
	movl 4(%edx),%eax
	cmpl %eax,%esi
	jb .L259
	pushl $5586
	call _m3_fault
	.align 16
.L259:
	leal 1(%esi),%ebx
	cmpl %eax,%ebx
	jb .L260
	pushl $5586
	call _m3_fault
	.align 16
.L260:
	movl 20(%ebp),%eax
	pushl %eax
	leal (%ebx,%ebx,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	leal (%esi,%esi,4),%eax
	leal (%edx,%eax,4),%eax
	pushl %eax
	jmp .L270
	.align 16
.L254:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	testl %edx,%edx
	jne .L261
	pushl $5604
	call _m3_fault
	.align 16
.L261:
	movl 4(%edx),%ebx
	cmpl %ebx,%esi
	jb .L263
	pushl $5602
	call _m3_fault
	.align 16
.L263:
	leal 1(%esi),%eax
	cmpl %ebx,%eax
	jb .L264
	pushl $5602
	call _m3_fault
	.align 16
.L264:
	leal -48(%ebp),%ebx
	pushl %ebx
	leal (%eax,%eax,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	leal (%esi,%esi,4),%eax
	leal (%edx,%eax,4),%eax
	pushl %eax
	call Region__Join
	movl 8(%ebp),%eax
	addl $12,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L265
	pushl $5604
	call _m3_fault
	.align 16
.L265:
	addl $2,%esi
	cmpl %esi,4(%edx)
	ja .L266
	pushl $5602
	call _m3_fault
	.align 16
.L266:
	movl 20(%ebp),%eax
	pushl %eax
	leal (%esi,%esi,4),%eax
	movl (%edx),%edx
	leal (%edx,%eax,4),%eax
	pushl %eax
	pushl %ebx
	jmp .L270
	.align 16
.L250:
	movl 16(%ebp),%ebx
	subl %esi,%ebx
	sarl $1,%ebx
	leal -48(%ebp),%edi
	pushl %edi
	addl %esi,%ebx
	pushl %ebx
	pushl %esi
	movl 8(%ebp),%eax
	pushl %eax
	call Region__JoinRegionsInternal
	leal -68(%ebp),%esi
	pushl %esi
	movl 16(%ebp),%ecx
	pushl %ecx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	call Region__JoinRegionsInternal
	addl $32,%esp
	movl 20(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
.L270:
	call Region__Join
.L269:
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L268:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Region__JoinRegionsInternal,.Lfe19-Region__JoinRegionsInternal
	.align 16
	.type	 Region__JoinRegions,@function
Region__JoinRegions:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	subl $20,%esp
	movl (%ecx),%edx
	testl %edx,%edx
	jne .L272
	pushl $5796
	call _m3_fault
	.align 16
.L272:
	movl 12(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	pushl $0
	pushl %ecx
	call Region__JoinRegionsInternal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Region__JoinRegions,.Lfe20-Region__JoinRegions
	.align 16
	.type	 Region__Join,@function
Region__Join:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Subset
	addl $8,%esp
	testl %eax,%eax
	je .L274
	movl 16(%ebp),%edi
	movl 12(%ebp),%esi
	jmp .L278
	.align 16
.L274:
	movl 8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	call Region__Subset
	addl $8,%esp
	testl %eax,%eax
	je .L275
	movl 16(%ebp),%edi
	movl 8(%ebp),%esi
	jmp .L278
	.align 16
.L275:
	movl 8(%ebp),%eax
	movl 16(%eax),%ebx
	testl %ebx,%ebx
	jne .L276
	pushl %eax
	call Region__Flesh
	movl %eax,%ebx
	addl $4,%esp
.L276:
	movl 12(%ebp),%eax
	movl 16(%eax),%esi
	testl %esi,%esi
	jne .L277
	pushl %eax
	call Region__Flesh
	movl %eax,%esi
	addl $4,%esp
.L277:
	leal -20(%ebp),%edx
	movl %edx,-44(%ebp)
	pushl %edx
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+216,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MM_Region+88,%eax
	pushl %eax
	call Region__RegionOp
	pushl %eax
	call Region__Skin
	movl 16(%ebp),%edi
	movl -44(%ebp),%esi
	movl %eax,-4(%ebp)
.L278:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -56(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Region__Join,.Lfe21-Region__Join
	.align 16
	.type	 Region__JoinH,@function
Region__JoinH:
	pushl %ebp
	movl %esp,%ebp
	subl $72,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl 12(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	je .L280
	movl 12(%ebp),%eax
	jmp .L458
	.align 16
.L280:
	movl 8(%ebp),%edi
	pushl %edi
	movl 12(%ebp),%ebx
	pushl %ebx
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	je .L281
	movl 8(%ebp),%eax
	jmp .L458
	.align 16
.L281:
	movl -20(%ebp),%esi
	movl %esi,-68(%ebp)
	movl %esi,-64(%ebp)
	movl $1,-72(%ebp)
	cmpl $0,8(%ebp)
	jne .L282
	pushl $6196
	call _m3_fault
	.align 16
.L282:
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L283
	pushl $6194
	call _m3_fault
	.align 16
.L283:
	cmpl $0,12(%ebp)
	jne .L284
	pushl $6196
	call _m3_fault
	.align 16
.L284:
	movl 12(%ebp),%edi
	cmpl $0,4(%edi)
	jne .L285
	pushl $6194
	call _m3_fault
	.align 16
.L285:
	movl 12(%ebp),%ebx
	movl (%ebx),%edx
	movl (%ecx),%ecx
	movl (%edx),%eax
	cmpl %eax,(%ecx)
	jge .L290
	movl 4(%ecx),%ecx
	movl %ecx,-16(%ebp)
	jmp .L292
	.align 16
.L290:
	movl 4(%edx),%edx
	movl %edx,-16(%ebp)
	jmp .L292
	.align 16
.L293:
	cmpl %eax,-64(%ebp)
	jb .L296
	pushl $6226
	call _m3_fault
	.align 16
.L296:
	movl 8(%ebp),%ecx
	cmpl %edx,-68(%ebp)
	jb .L297
	pushl $6226
	call _m3_fault
	.align 16
.L297:
	movl 12(%ebp),%esi
	movl -64(%ebp),%ebx
	movl (%esi),%esi
	movl %esi,-24(%ebp)
	movl (%ecx),%edi
	movl %edi,-28(%ebp)
	movl (%esi,%ebx,8),%edx
	movl -68(%ebp),%esi
	movl (%edi,%esi,8),%eax
	cmpl %eax,%edx
	jge .L308
	cmpl %edx,-16(%ebp)
	jge .L302
	incl -72(%ebp)
.L302:
	movl -64(%ebp),%edi
	movl -24(%ebp),%ebx
	movl 4(%ebx,%edi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L304
	movl %eax,-16(%ebp)
.L304:
	incl -64(%ebp)
	jmp .L292
	.align 16
.L308:
	cmpl %eax,-16(%ebp)
	jge .L311
	incl -72(%ebp)
.L311:
	movl -68(%ebp),%esi
	movl -28(%ebp),%edi
	movl -16(%ebp),%ebx
	cmpl %ebx,4(%edi,%esi,8)
	jle .L313
	testl %ecx,%ecx
	jne .L314
	pushl $6324
	call _m3_fault
	.align 16
.L314:
	movl -68(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L315
	pushl $6322
	call _m3_fault
	.align 16
.L315:
	movl (%ecx),%eax
	movl -68(%ebp),%edi
	movl 4(%eax,%edi,8),%eax
	movl %eax,-16(%ebp)
.L313:
	incl -68(%ebp)
.L292:
	cmpl $0,8(%ebp)
	jne .L316
	pushl $6212
	call _m3_fault
	.align 16
.L316:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%edx
	cmpl %edx,-68(%ebp)
	jge .L320
	cmpl $0,12(%ebp)
	jne .L318
	pushl $6212
	call _m3_fault
	.align 16
.L318:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-64(%ebp)
	jl .L293
	jmp .L320
	.align 16
.L321:
	movl -68(%ebp),%edi
	movl 4(%eax,%edi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L324
	movl %eax,-16(%ebp)
.L324:
	incl -68(%ebp)
.L320:
	cmpl $0,8(%ebp)
	jne .L327
	pushl $6388
	call _m3_fault
	.align 16
.L327:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %eax,-68(%ebp)
	jge .L331
	movl 8(%ebp),%ecx
	cmpl %eax,-68(%ebp)
	jb .L330
	pushl $6386
	call _m3_fault
	.align 16
.L330:
	movl (%ecx),%eax
	movl -68(%ebp),%esi
	movl -16(%ebp),%edi
	cmpl %edi,(%eax,%esi,8)
	jle .L321
.L331:
	cmpl $0,8(%ebp)
	jne .L332
	pushl $6452
	call _m3_fault
	.align 16
.L332:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%eax
	subl -68(%ebp),%eax
	addl %eax,-72(%ebp)
	jmp .L333
	.align 16
.L334:
	movl -64(%ebp),%esi
	movl 4(%eax,%esi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L337
	movl %eax,-16(%ebp)
.L337:
	incl -64(%ebp)
.L333:
	cmpl $0,12(%ebp)
	jne .L340
	pushl $6468
	call _m3_fault
	.align 16
.L340:
	movl 12(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-64(%ebp)
	jge .L344
	cmpl %eax,-64(%ebp)
	jb .L343
	pushl $6466
	call _m3_fault
	.align 16
.L343:
	movl 12(%ebp),%ebx
	movl -64(%ebp),%esi
	movl (%ebx),%eax
	movl -16(%ebp),%edi
	cmpl %edi,(%eax,%esi,8)
	jle .L334
.L344:
	cmpl $0,12(%ebp)
	jne .L345
	pushl $6532
	call _m3_fault
	.align 16
.L345:
	movl 12(%ebp),%ebx
	leal -12(%ebp),%edx
	leal -4(%ebp),%esi
	movl 4(%ebx),%eax
	subl -64(%ebp),%eax
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	addl -72(%ebp),%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl $0,-64(%ebp)
	movl -64(%ebp),%edi
	movl %edi,-68(%ebp)
	movl %edi,-72(%ebp)
	addl $8,%esp
	cmpl $0,8(%ebp)
	jne .L346
	pushl $6612
	call _m3_fault
	.align 16
.L346:
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L348
	pushl $6610
	call _m3_fault
	.align 16
.L348:
	movl 12(%ebp),%ebx
	cmpl $0,4(%ebx)
	jne .L349
	pushl $6610
	call _m3_fault
	.align 16
.L349:
	movl (%ecx),%ecx
	movl 12(%ebp),%esi
	movl %ecx,-32(%ebp)
	movl (%esi),%esi
	movl %esi,-36(%ebp)
	movl (%ecx),%eax
	movl (%esi),%ecx
	cmpl %ecx,%eax
	jge .L350
	cmpl $0,-20(%ebp)
	jne .L351
	pushl $6612
	call _m3_fault
	.align 16
.L351:
	movl -20(%ebp),%edi
	cmpl $0,4(%edi)
	jne .L353
	pushl $6610
	call _m3_fault
	.align 16
.L353:
	movl -20(%ebp),%ebx
	movl (%ebx),%edx
	movl %eax,(%edx)
	movl -32(%ebp),%esi
	jmp .L459
	.align 16
.L350:
	cmpl $0,-20(%ebp)
	jne .L356
	pushl $6612
	call _m3_fault
	.align 16
.L356:
	movl -20(%ebp),%edi
	cmpl $0,4(%edi)
	jne .L358
	pushl $6610
	call _m3_fault
	.align 16
.L358:
	movl -20(%ebp),%ebx
	movl (%ebx),%edx
	movl %ecx,(%edx)
	movl -36(%ebp),%esi
.L459:
	movl 4(%esi),%eax
	movl %eax,4(%edx)
	jmp .L360
	.align 16
.L361:
	cmpl %eax,-64(%ebp)
	jb .L364
	pushl $6642
	call _m3_fault
	.align 16
.L364:
	movl 8(%ebp),%ecx
	cmpl %edx,-68(%ebp)
	jb .L365
	pushl $6642
	call _m3_fault
	.align 16
.L365:
	movl 12(%ebp),%edi
	movl -64(%ebp),%ebx
	movl -68(%ebp),%esi
	movl (%edi),%edi
	movl %edi,-40(%ebp)
	movl (%ecx),%eax
	movl (%edi,%ebx,8),%ecx
	cmpl %ecx,(%eax,%esi,8)
	jle .L366
	cmpl $0,-20(%ebp)
	jne .L367
	pushl $6660
	call _m3_fault
	.align 16
.L367:
	movl -20(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-72(%ebp)
	jb .L369
	pushl $6658
	call _m3_fault
	.align 16
.L369:
	movl -20(%ebp),%ebx
	movl -72(%ebp),%esi
	movl (%ebx),%edx
	movl 4(%edx,%esi,8),%esi
	movl %esi,-44(%ebp)
	cmpl %ecx,%esi
	jge .L377
	incl -72(%ebp)
	cmpl %eax,-72(%ebp)
	jb .L374
	pushl $6690
	call _m3_fault
	.align 16
.L374:
	movl 12(%ebp),%edi
	movl -64(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L375
	pushl $6690
	call _m3_fault
	.align 16
.L375:
	movl -72(%ebp),%esi
	movl %ecx,(%edx,%esi,8)
	movl -64(%ebp),%edi
	movl -40(%ebp),%ebx
	movl 4(%ebx,%edi,8),%eax
	movl %eax,4(%edx,%esi,8)
	jmp .L376
	.align 16
.L377:
	cmpl $0,12(%ebp)
	jne .L379
	pushl $6708
	call _m3_fault
	.align 16
.L379:
	movl 12(%ebp),%esi
	movl -64(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L380
	pushl $6706
	call _m3_fault
	.align 16
.L380:
	movl 12(%ebp),%ebx
	movl -64(%ebp),%esi
	movl (%ebx),%eax
	movl 4(%eax,%esi,8),%eax
	cmpl %eax,-44(%ebp)
	jge .L376
	movl -72(%ebp),%edi
	movl %eax,4(%edx,%edi,8)
.L376:
	incl -64(%ebp)
	jmp .L360
	.align 16
.L366:
	cmpl $0,-20(%ebp)
	jne .L387
	pushl $6788
	call _m3_fault
	.align 16
.L387:
	movl -20(%ebp),%ebx
	movl 4(%ebx),%ecx
	cmpl %ecx,-72(%ebp)
	jb .L389
	pushl $6786
	call _m3_fault
	.align 16
.L389:
	movl 8(%ebp),%edx
	movl -20(%ebp),%esi
	movl -72(%ebp),%edi
	movl -68(%ebp),%ebx
	movl (%esi),%esi
	movl %esi,-48(%ebp)
	movl (%edx),%eax
	movl 4(%esi,%edi,8),%edi
	movl %edi,-52(%ebp)
	cmpl %edi,(%eax,%ebx,8)
	jle .L397
	incl -72(%ebp)
	cmpl %ecx,-72(%ebp)
	jb .L393
	pushl $6818
	call _m3_fault
	.align 16
.L393:
	cmpl $0,8(%ebp)
	jne .L394
	pushl $6820
	call _m3_fault
	.align 16
.L394:
	movl 8(%ebp),%ecx
	movl -68(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L395
	pushl $6818
	call _m3_fault
	.align 16
.L395:
	movl (%ecx),%eax
	movl -68(%ebp),%edi
	movl -72(%ebp),%ebx
	movl -48(%ebp),%esi
	movl (%eax,%edi,8),%edx
	movl %edx,(%esi,%ebx,8)
	movl 4(%eax,%edi,8),%eax
	movl %eax,4(%esi,%ebx,8)
	jmp .L396
	.align 16
.L397:
	testl %edx,%edx
	jne .L399
	pushl $6836
	call _m3_fault
	.align 16
.L399:
	movl -68(%ebp),%edi
	cmpl %edi,4(%edx)
	ja .L400
	pushl $6834
	call _m3_fault
	.align 16
.L400:
	movl (%edx),%eax
	movl -68(%ebp),%ebx
	movl -52(%ebp),%esi
	cmpl %esi,4(%eax,%ebx,8)
	jle .L396
	movl 8(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L405
	pushl $6850
	call _m3_fault
	.align 16
.L405:
	movl -20(%ebp),%edi
	movl (%ecx),%edx
	movl -68(%ebp),%ebx
	movl -72(%ebp),%esi
	movl (%edi),%eax
	movl 4(%edx,%ebx,8),%edx
	movl %edx,4(%eax,%esi,8)
.L396:
	incl -68(%ebp)
.L360:
	cmpl $0,8(%ebp)
	jne .L406
	pushl $6628
	call _m3_fault
	.align 16
.L406:
	movl 8(%ebp),%edi
	movl 4(%edi),%edx
	cmpl %edx,-68(%ebp)
	jge .L410
	cmpl $0,12(%ebp)
	jne .L408
	pushl $6628
	call _m3_fault
	.align 16
.L408:
	movl 12(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %eax,-64(%ebp)
	jl .L361
	jmp .L410
	.align 16
.L411:
	cmpl $0,-20(%ebp)
	jne .L412
	pushl $6948
	call _m3_fault
	.align 16
.L412:
	movl -20(%ebp),%esi
	movl 4(%esi),%ecx
	cmpl %ecx,-72(%ebp)
	jb .L414
	pushl $6946
	call _m3_fault
	.align 16
.L414:
	movl 8(%ebp),%edx
	cmpl %eax,-68(%ebp)
	jb .L415
	pushl $6946
	call _m3_fault
	.align 16
.L415:
	movl -20(%ebp),%edi
	movl -72(%ebp),%ebx
	movl -68(%ebp),%esi
	movl (%edi),%edi
	movl %edi,-56(%ebp)
	movl (%edx),%eax
	movl 4(%edi,%ebx,8),%edx
	cmpl %edx,(%eax,%esi,8)
	jle .L422
	incl %ebx
	movl %ebx,-72(%ebp)
	cmpl %ecx,%ebx
	jb .L419
	pushl $6978
	call _m3_fault
	.align 16
.L419:
	movl 8(%ebp),%edi
	movl -68(%ebp),%ebx
	movl -72(%ebp),%esi
	movl (%edi),%eax
	movl -56(%ebp),%edi
	movl (%eax,%ebx,8),%edx
	movl %edx,(%edi,%esi,8)
	movl 4(%eax,%ebx,8),%eax
	movl %eax,4(%edi,%esi,8)
	jmp .L421
	.align 16
.L422:
	movl -68(%ebp),%ebx
	cmpl %edx,4(%eax,%ebx,8)
	jle .L421
	cmpl $0,8(%ebp)
	jne .L429
	pushl $7012
	call _m3_fault
	.align 16
.L429:
	movl 8(%ebp),%ecx
	movl -68(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L430
	pushl $7010
	call _m3_fault
	.align 16
.L430:
	movl (%ecx),%eax
	movl -68(%ebp),%edi
	movl -72(%ebp),%ebx
	movl -56(%ebp),%esi
	movl 4(%eax,%edi,8),%eax
	movl %eax,4(%esi,%ebx,8)
.L421:
	incl -68(%ebp)
.L410:
	cmpl $0,8(%ebp)
	jne .L431
	pushl $6932
	call _m3_fault
	.align 16
.L431:
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-68(%ebp)
	jl .L411
	jmp .L433
	.align 16
.L434:
	cmpl $0,-20(%ebp)
	jne .L435
	pushl $7092
	call _m3_fault
	.align 16
.L435:
	movl -20(%ebp),%ebx
	movl 4(%ebx),%ebx
	movl %ebx,-60(%ebp)
	cmpl %ebx,-72(%ebp)
	jb .L437
	pushl $7090
	call _m3_fault
	.align 16
.L437:
	cmpl %eax,-64(%ebp)
	jb .L438
	pushl $7090
	call _m3_fault
	.align 16
.L438:
	movl -20(%ebp),%esi
	movl 12(%ebp),%edi
	movl -72(%ebp),%ebx
	movl (%esi),%ecx
	movl (%edi),%eax
	movl -64(%ebp),%esi
	movl 4(%ecx,%ebx,8),%edx
	movl (%eax,%esi,8),%esi
	movl %esi,-68(%ebp)
	cmpl %esi,%edx
	jge .L445
	incl %ebx
	movl %ebx,-72(%ebp)
	movl -60(%ebp),%edi
	cmpl %edi,%ebx
	jb .L442
	pushl $7122
	call _m3_fault
	.align 16
.L442:
	movl -72(%ebp),%ebx
	movl -68(%ebp),%esi
	movl %esi,(%ecx,%ebx,8)
	movl -64(%ebp),%edi
	movl 4(%eax,%edi,8),%eax
	jmp .L460
	.align 16
.L445:
	movl -64(%ebp),%ebx
	movl 4(%eax,%ebx,8),%eax
	cmpl %eax,%edx
	jge .L444
	cmpl $0,12(%ebp)
	jne .L452
	pushl $7156
	call _m3_fault
	.align 16
.L452:
	movl 12(%ebp),%esi
	movl -64(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L453
	pushl $7154
	call _m3_fault
	.align 16
.L453:
	movl -72(%ebp),%ebx
.L460:
	movl %eax,4(%ecx,%ebx,8)
.L444:
	incl -64(%ebp)
.L433:
	cmpl $0,12(%ebp)
	jne .L454
	pushl $7076
	call _m3_fault
	.align 16
.L454:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-64(%ebp)
	jl .L434
	cmpl $0,-20(%ebp)
	jne .L456
	pushl $7220
	call _m3_fault
	.align 16
.L456:
	movl -20(%ebp),%edi
	movl 4(%edi),%eax
	decl %eax
	cmpl %eax,-72(%ebp)
	je .L457
	pushl $7216
	call _m3_fault
	.align 16
.L457:
	movl -20(%ebp),%eax
.L458:
	leal -84(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Region__JoinH,.Lfe22-Region__JoinH
	.align 16
	.type	 Region__Meet,@function
Region__Meet:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+252,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L462
	movl 16(%ebp),%edi
	movl $MI_Region+44,%esi
	jmp .L468
	.align 16
.L462:
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Subset
	addl $8,%esp
	testl %eax,%eax
	je .L463
	movl 16(%ebp),%edi
	movl 8(%ebp),%esi
	jmp .L468
	.align 16
.L463:
	movl 8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	call Region__Subset
	addl $8,%esp
	testl %eax,%eax
	je .L464
	movl 16(%ebp),%edi
	movl 12(%ebp),%esi
	jmp .L468
	.align 16
.L464:
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl 16(%eax),%ebx
	movl 16(%edx),%esi
	testl %ebx,%ebx
	jne .L465
	testl %esi,%esi
	jne .L466
	leal -56(%ebp),%ebx
	pushl %ebx
	pushl %edx
	pushl %eax
	movl MI_Rect+220,%eax
	call *%eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Region__FromRect
	jmp .L461
	.align 16
.L466:
	pushl %eax
	call Region__Flesh
	movl %eax,%ebx
	addl $4,%esp
.L465:
	testl %esi,%esi
	jne .L467
	movl 12(%ebp),%eax
	pushl %eax
	call Region__Flesh
	movl %eax,%esi
	addl $4,%esp
.L467:
	pushl %esi
	pushl %ebx
	movl MM_Region+92,%eax
	pushl %eax
	call Region__RegionOp
	movl %eax,-4(%ebp)
	leal -20(%ebp),%esi
	pushl %esi
	pushl %eax
	call Region__ComputeBBox
	movl -4(%ebp),%eax
	pushl %eax
	call Region__Skin
	movl 16(%ebp),%edi
	movl %eax,-4(%ebp)
.L468:
	cld
	movl $5,%ecx
	rep
	movsl
.L461:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Region__Meet,.Lfe23-Region__Meet
	.align 16
	.type	 Region__MeetH,@function
Region__MeetH:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl 12(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	call Region__OverlapH
	addl $8,%esp
	testl %eax,%eax
	je .L605
	movl 12(%ebp),%edi
	pushl %edi
	movl 8(%ebp),%ebx
	pushl %ebx
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	je .L471
	movl 8(%ebp),%eax
	jmp .L606
	.align 16
.L471:
	movl 8(%ebp),%esi
	pushl %esi
	movl 12(%ebp),%edi
	pushl %edi
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	je .L472
	movl 12(%ebp),%eax
	jmp .L606
	.align 16
.L472:
	movl -20(%ebp),%ebx
	movl %ebx,-48(%ebp)
	movl %ebx,-52(%ebp)
	movl %ebx,-56(%ebp)
	cmpl $0,8(%ebp)
	jne .L473
	pushl $7732
	call _m3_fault
	.align 16
.L473:
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L474
	pushl $7730
	call _m3_fault
	.align 16
.L474:
	cmpl $0,12(%ebp)
	jne .L475
	pushl $7732
	call _m3_fault
	.align 16
.L475:
	movl 12(%ebp),%esi
	cmpl $0,4(%esi)
	jne .L476
	pushl $7730
	call _m3_fault
	.align 16
.L476:
	movl 12(%ebp),%edi
	movl (%ecx),%eax
	movl (%edi),%edx
	movl (%eax),%eax
	movl (%edx),%edx
	movl %edx,-16(%ebp)
	cmpl %eax,%edx
	jle .L478
	movl %eax,-16(%ebp)
	jmp .L478
	.align 16
.L479:
	movl 8(%ebp),%ebx
	movl %ebx,-24(%ebp)
	cmpl %edx,-48(%ebp)
	jb .L482
	pushl $7762
	call _m3_fault
	.align 16
.L482:
	movl 12(%ebp),%ecx
	cmpl %eax,-52(%ebp)
	jb .L483
	pushl $7762
	call _m3_fault
	.align 16
.L483:
	movl -24(%ebp),%esi
	movl -48(%ebp),%ebx
	movl (%esi),%esi
	movl %esi,-28(%ebp)
	movl (%ecx),%edi
	movl %edi,-32(%ebp)
	movl (%esi,%ebx,8),%edx
	movl -52(%ebp),%esi
	movl (%edi,%esi,8),%eax
	cmpl %eax,%edx
	jge .L494
	cmpl %edx,-16(%ebp)
	jle .L489
	incl -56(%ebp)
.L489:
	movl -48(%ebp),%edi
	movl -28(%ebp),%ebx
	movl 4(%ebx,%edi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L490
	movl %eax,-16(%ebp)
.L490:
	incl -48(%ebp)
	jmp .L478
	.align 16
.L494:
	cmpl %eax,-16(%ebp)
	jle .L497
	incl -56(%ebp)
.L497:
	movl -52(%ebp),%esi
	movl -32(%ebp),%edi
	movl -16(%ebp),%ebx
	cmpl %ebx,4(%edi,%esi,8)
	jle .L499
	testl %ecx,%ecx
	jne .L500
	pushl $7860
	call _m3_fault
	.align 16
.L500:
	movl -52(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L501
	pushl $7858
	call _m3_fault
	.align 16
.L501:
	movl (%ecx),%eax
	movl -52(%ebp),%edi
	movl 4(%eax,%edi,8),%eax
	movl %eax,-16(%ebp)
.L499:
	incl -52(%ebp)
.L478:
	cmpl $0,8(%ebp)
	jne .L502
	pushl $7748
	call _m3_fault
	.align 16
.L502:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%edx
	cmpl %edx,-48(%ebp)
	jge .L506
	cmpl $0,12(%ebp)
	jne .L504
	pushl $7748
	call _m3_fault
	.align 16
.L504:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-52(%ebp)
	jl .L479
	jmp .L506
	.align 16
.L507:
	incl -56(%ebp)
	incl -48(%ebp)
.L506:
	cmpl $0,8(%ebp)
	jne .L508
	pushl $7924
	call _m3_fault
	.align 16
.L508:
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-48(%ebp)
	jge .L513
	movl 8(%ebp),%ecx
	cmpl %eax,-48(%ebp)
	jb .L511
	pushl $7922
	call _m3_fault
	.align 16
.L511:
	movl (%ecx),%eax
	movl -48(%ebp),%ebx
	movl -16(%ebp),%esi
	cmpl %esi,(%eax,%ebx,8)
	jl .L507
	jmp .L513
	.align 16
.L514:
	incl -56(%ebp)
	incl -52(%ebp)
.L513:
	cmpl $0,12(%ebp)
	jne .L515
	pushl $7940
	call _m3_fault
	.align 16
.L515:
	movl 12(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-52(%ebp)
	jge .L519
	movl 12(%ebp),%ecx
	cmpl %eax,-52(%ebp)
	jb .L518
	pushl $7938
	call _m3_fault
	.align 16
.L518:
	movl (%ecx),%eax
	movl -52(%ebp),%ebx
	movl -16(%ebp),%esi
	cmpl %esi,(%eax,%ebx,8)
	jl .L514
.L519:
	cmpl $0,-56(%ebp)
	jne .L520
	pushl $7952
	call _m3_fault
	.align 16
.L520:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl -56(%ebp),%ebx
	movl %ebx,-4(%ebp)
	pushl %eax
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl $0,-52(%ebp)
	movl -52(%ebp),%esi
	movl %esi,-48(%ebp)
	movl %esi,-56(%ebp)
	addl $8,%esp
	cmpl $0,8(%ebp)
	jne .L521
	pushl $8036
	call _m3_fault
	.align 16
.L521:
	movl 8(%ebp),%ecx
	cmpl $0,4(%ecx)
	jne .L522
	pushl $8034
	call _m3_fault
	.align 16
.L522:
	cmpl $0,12(%ebp)
	jne .L523
	pushl $8036
	call _m3_fault
	.align 16
.L523:
	movl 12(%ebp),%edi
	cmpl $0,4(%edi)
	jne .L524
	pushl $8034
	call _m3_fault
	.align 16
.L524:
	movl 12(%ebp),%ebx
	movl (%ecx),%eax
	movl (%ebx),%edx
	movl (%eax),%eax
	movl (%edx),%edx
	movl %edx,-16(%ebp)
	cmpl %eax,%edx
	jle .L526
	movl %eax,-16(%ebp)
	jmp .L526
	.align 16
.L527:
	movl 8(%ebp),%esi
	movl %esi,-24(%ebp)
	cmpl %edx,-48(%ebp)
	jb .L530
	pushl $8066
	call _m3_fault
	.align 16
.L530:
	movl 12(%ebp),%ecx
	cmpl %eax,-52(%ebp)
	jb .L531
	pushl $8066
	call _m3_fault
	.align 16
.L531:
	movl -24(%ebp),%edi
	movl (%ecx),%edx
	movl -48(%ebp),%ebx
	movl (%edi),%eax
	movl -52(%ebp),%esi
	movl (%eax,%ebx,8),%ecx
	movl (%edx,%esi,8),%eax
	cmpl %eax,%ecx
	jge .L551
	cmpl %ecx,-16(%ebp)
	jle .L535
	cmpl $0,-20(%ebp)
	jne .L536
	pushl $8100
	call _m3_fault
	.align 16
.L536:
	movl -20(%ebp),%edi
	movl -56(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L537
	pushl $8098
	call _m3_fault
	.align 16
.L537:
	movl -20(%ebp),%esi
	movl -24(%ebp),%edi
	movl -48(%ebp),%ebx
	movl (%esi),%eax
	movl (%edi),%edx
	movl -56(%ebp),%esi
	movl (%edx,%ebx,8),%edx
	movl %edx,(%eax,%esi,8)
	movl -20(%ebp),%edi
	cmpl %esi,4(%edi)
	ja .L541
	pushl $8114
	call _m3_fault
	.align 16
.L541:
	cmpl $0,8(%ebp)
	jne .L542
	pushl $8116
	call _m3_fault
	.align 16
.L542:
	movl 8(%ebp),%ecx
	movl -48(%ebp),%ebx
	cmpl %ebx,4(%ecx)
	ja .L543
	pushl $8114
	call _m3_fault
	.align 16
.L543:
	movl -20(%ebp),%esi
	movl -48(%ebp),%edi
	movl (%esi),%esi
	movl %esi,-36(%ebp)
	movl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 4(%eax,%edi,8),%eax
	cmpl %eax,%edx
	jle .L544
	movl %eax,%edx
.L544:
	movl -56(%ebp),%ebx
	movl -36(%ebp),%esi
	movl %edx,4(%esi,%ebx,8)
	incl %ebx
	movl %ebx,-56(%ebp)
.L535:
	cmpl $0,8(%ebp)
	jne .L545
	pushl $8164
	call _m3_fault
	.align 16
.L545:
	movl 8(%ebp),%ecx
	movl -48(%ebp),%edi
	cmpl %edi,4(%ecx)
	ja .L546
	pushl $8162
	call _m3_fault
	.align 16
.L546:
	movl (%ecx),%eax
	movl -48(%ebp),%ebx
	movl 4(%eax,%ebx,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L547
	movl %eax,-16(%ebp)
.L547:
	incl -48(%ebp)
	jmp .L526
	.align 16
.L551:
	cmpl %eax,-16(%ebp)
	jle .L553
	cmpl $0,-20(%ebp)
	jne .L554
	pushl $8228
	call _m3_fault
	.align 16
.L554:
	movl -20(%ebp),%esi
	movl -56(%ebp),%edi
	cmpl %edi,4(%esi)
	ja .L555
	pushl $8226
	call _m3_fault
	.align 16
.L555:
	movl -20(%ebp),%ebx
	movl 12(%ebp),%esi
	movl -52(%ebp),%edi
	movl (%ebx),%eax
	movl (%esi),%edx
	movl -56(%ebp),%ebx
	movl (%edx,%edi,8),%edx
	movl %edx,(%eax,%ebx,8)
	movl -20(%ebp),%esi
	cmpl %ebx,4(%esi)
	ja .L559
	pushl $8242
	call _m3_fault
	.align 16
.L559:
	cmpl $0,12(%ebp)
	jne .L560
	pushl $8244
	call _m3_fault
	.align 16
.L560:
	movl 12(%ebp),%ecx
	movl -52(%ebp),%edi
	cmpl %edi,4(%ecx)
	ja .L561
	pushl $8242
	call _m3_fault
	.align 16
.L561:
	movl -20(%ebp),%ebx
	movl -52(%ebp),%esi
	movl (%ebx),%ebx
	movl %ebx,-40(%ebp)
	movl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 4(%eax,%esi,8),%eax
	cmpl %eax,%edx
	jle .L562
	movl %eax,%edx
.L562:
	movl -56(%ebp),%edi
	movl -40(%ebp),%ebx
	movl %edx,4(%ebx,%edi,8)
	incl %edi
	movl %edi,-56(%ebp)
.L553:
	cmpl $0,12(%ebp)
	jne .L563
	pushl $8292
	call _m3_fault
	.align 16
.L563:
	movl 12(%ebp),%ecx
	movl -52(%ebp),%esi
	cmpl %esi,4(%ecx)
	ja .L564
	pushl $8290
	call _m3_fault
	.align 16
.L564:
	movl (%ecx),%eax
	movl -52(%ebp),%edi
	movl 4(%eax,%edi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L565
	movl %eax,-16(%ebp)
.L565:
	incl -52(%ebp)
.L526:
	cmpl $0,8(%ebp)
	jne .L568
	pushl $8052
	call _m3_fault
	.align 16
.L568:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%edx
	cmpl %edx,-48(%ebp)
	jge .L572
	cmpl $0,12(%ebp)
	jne .L570
	pushl $8052
	call _m3_fault
	.align 16
.L570:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %eax,-52(%ebp)
	jl .L527
	jmp .L572
	.align 16
.L573:
	cmpl $0,-20(%ebp)
	jne .L574
	pushl $8372
	call _m3_fault
	.align 16
.L574:
	movl -20(%ebp),%edi
	movl -56(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L576
	pushl $8370
	call _m3_fault
	.align 16
.L576:
	movl -20(%ebp),%esi
	movl 8(%ebp),%edi
	movl -48(%ebp),%ebx
	movl (%esi),%eax
	movl (%edi),%edx
	movl -56(%ebp),%esi
	movl (%edx,%ebx,8),%edx
	movl %edx,(%eax,%esi,8)
	movl -20(%ebp),%edi
	cmpl %esi,4(%edi)
	ja .L580
	pushl $8386
	call _m3_fault
	.align 16
.L580:
	movl 8(%ebp),%ecx
	movl -48(%ebp),%ebx
	cmpl %ebx,4(%ecx)
	ja .L581
	pushl $8386
	call _m3_fault
	.align 16
.L581:
	movl -20(%ebp),%esi
	movl -48(%ebp),%edi
	movl (%esi),%esi
	movl %esi,-44(%ebp)
	movl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 4(%eax,%edi,8),%eax
	cmpl %eax,%edx
	jle .L582
	movl %eax,%edx
.L582:
	movl -56(%ebp),%ebx
	movl -44(%ebp),%esi
	movl %edx,4(%esi,%ebx,8)
	incl %ebx
	movl %ebx,-56(%ebp)
	incl -48(%ebp)
.L572:
	cmpl $0,8(%ebp)
	jne .L583
	pushl $8356
	call _m3_fault
	.align 16
.L583:
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-48(%ebp)
	jge .L588
	movl 8(%ebp),%ecx
	cmpl %eax,-48(%ebp)
	jb .L586
	pushl $8354
	call _m3_fault
	.align 16
.L586:
	movl (%ecx),%eax
	movl -48(%ebp),%ebx
	movl -16(%ebp),%esi
	cmpl %esi,(%eax,%ebx,8)
	jl .L573
	jmp .L588
	.align 16
.L589:
	cmpl $0,-20(%ebp)
	jne .L590
	pushl $8468
	call _m3_fault
	.align 16
.L590:
	movl -20(%ebp),%edi
	movl -56(%ebp),%ebx
	cmpl %ebx,4(%edi)
	ja .L592
	pushl $8466
	call _m3_fault
	.align 16
.L592:
	movl -20(%ebp),%esi
	movl 12(%ebp),%edi
	movl -52(%ebp),%ebx
	movl (%esi),%eax
	movl (%edi),%edx
	movl -56(%ebp),%esi
	movl (%edx,%ebx,8),%edx
	movl %edx,(%eax,%esi,8)
	movl -20(%ebp),%edi
	cmpl %esi,4(%edi)
	ja .L596
	pushl $8482
	call _m3_fault
	.align 16
.L596:
	movl 12(%ebp),%ecx
	movl -52(%ebp),%ebx
	cmpl %ebx,4(%ecx)
	ja .L597
	pushl $8482
	call _m3_fault
	.align 16
.L597:
	movl -20(%ebp),%esi
	movl -52(%ebp),%edi
	movl (%esi),%esi
	movl %esi,-48(%ebp)
	movl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 4(%eax,%edi,8),%eax
	cmpl %eax,%edx
	jle .L598
	movl %eax,%edx
.L598:
	movl -56(%ebp),%ebx
	movl -48(%ebp),%esi
	movl %edx,4(%esi,%ebx,8)
	incl %ebx
	movl %ebx,-56(%ebp)
	incl -52(%ebp)
.L588:
	cmpl $0,12(%ebp)
	jne .L599
	pushl $8452
	call _m3_fault
	.align 16
.L599:
	movl 12(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-52(%ebp)
	jge .L603
	movl 12(%ebp),%ecx
	cmpl %eax,-52(%ebp)
	jb .L602
	pushl $8450
	call _m3_fault
	.align 16
.L602:
	movl (%ecx),%eax
	movl -52(%ebp),%ebx
	movl -16(%ebp),%esi
	cmpl %esi,(%eax,%ebx,8)
	jl .L589
.L603:
	cmpl $0,-20(%ebp)
	jne .L604
	pushl $8548
	call _m3_fault
	.align 16
.L604:
	movl -20(%ebp),%edi
	movl -56(%ebp),%ebx
	cmpl %ebx,4(%edi)
	je .L605
	pushl $8544
	call _m3_fault
	.align 16
.L605:
	movl -20(%ebp),%eax
.L606:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Region__MeetH,.Lfe24-Region__MeetH
	.align 16
	.type	 Region__Difference,@function
Region__Difference:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+252,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L608
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Overlap
	addl $8,%esp
	testl %eax,%eax
	jne .L609
.L608:
	movl 16(%ebp),%edi
	movl 8(%ebp),%esi
	jmp .L613
	.align 16
.L609:
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Subset
	addl $8,%esp
	testl %eax,%eax
	je .L610
	movl 16(%ebp),%edi
	movl $MI_Region+44,%esi
	jmp .L613
	.align 16
.L610:
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 16(%edx),%ebx
	movl 16(%eax),%esi
	testl %ebx,%ebx
	jne .L611
	pushl %edx
	call Region__Flesh
	movl %eax,%ebx
	addl $4,%esp
.L611:
	testl %esi,%esi
	jne .L612
	movl 12(%ebp),%eax
	pushl %eax
	call Region__Flesh
	movl %eax,%esi
	addl $4,%esp
.L612:
	pushl %esi
	pushl %ebx
	movl MM_Region+96,%eax
	pushl %eax
	call Region__RegionOp
	movl %eax,-4(%ebp)
	leal -20(%ebp),%esi
	pushl %esi
	pushl %eax
	call Region__ComputeBBox
	movl -4(%ebp),%eax
	pushl %eax
	call Region__Skin
	movl 16(%ebp),%edi
	movl %eax,-4(%ebp)
.L613:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -52(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Region__Difference,.Lfe25-Region__Difference
	.align 16
	.type	 Region__DifferenceH,@function
Region__DifferenceH:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-24(%ebp)
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ebx
	pushl %ebx
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	jne .L741
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ebx
	pushl %ebx
	call Region__OverlapH
	addl $8,%esp
	testl %eax,%eax
	jne .L616
	movl 8(%ebp),%eax
	jmp .L742
	.align 16
.L616:
	movl -24(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl -20(%ebp),%esi
	movl -20(%ebp),%edi
	cmpl $0,12(%ebp)
	jne .L617
	pushl $8980
	call _m3_fault
	.align 16
.L617:
	movl 12(%ebp),%ebx
	cmpl $0,4(%ebx)
	jne .L618
	pushl $8978
	call _m3_fault
	.align 16
.L618:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	jmp .L743
	.align 16
.L620:
	movl 8(%ebp),%eax
	cmpl %edx,-20(%ebp)
	jb .L623
	pushl $9010
	call _m3_fault
	.align 16
.L623:
	movl 12(%ebp),%ebx
	movl %ebx,-36(%ebp)
	cmpl %esi,-32(%ebp)
	ja .L624
	pushl $9010
	call _m3_fault
	.align 16
.L624:
	movl (%eax),%eax
	movl %eax,-28(%ebp)
	movl -36(%ebp),%ecx
	movl -20(%ebp),%ebx
	movl (%ecx),%eax
	movl -28(%ebp),%ecx
	movl (%ecx,%ebx,8),%edx
	movl 4(%eax,%esi,8),%eax
	cmpl %eax,%edx
	jge .L635
	cmpl %edx,-16(%ebp)
	jle .L630
	incl %edi
.L630:
	movl -20(%ebp),%ebx
	movl -28(%ebp),%ecx
	movl 4(%ecx,%ebx,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L631
	movl %eax,-16(%ebp)
.L631:
	incl -20(%ebp)
	jmp .L619
	.align 16
.L635:
	cmpl %eax,-16(%ebp)
	jle .L637
	incl %edi
.L637:
	incl %esi
	cmpl %esi,-32(%ebp)
	jle .L619
	cmpl %esi,-32(%ebp)
	ja .L641
	pushl $9122
	call _m3_fault
	.align 16
.L641:
	movl -36(%ebp),%ebx
	movl (%ebx),%eax
	movl -16(%ebp),%ecx
	cmpl %ecx,(%eax,%esi,8)
	jle .L619
	cmpl %esi,4(%ebx)
	ja .L643
	pushl $9122
	call _m3_fault
	.align 16
.L643:
	movl -36(%ebp),%ebx
	movl (%ebx),%eax
	movl (%eax,%esi,8),%eax
.L743:
	movl %eax,-16(%ebp)
.L619:
	cmpl $0,8(%ebp)
	jne .L644
	pushl $8996
	call _m3_fault
	.align 16
.L644:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%edx
	cmpl %edx,-20(%ebp)
	jge .L647
	cmpl $0,12(%ebp)
	jne .L646
	pushl $8996
	call _m3_fault
	.align 16
.L646:
	movl 12(%ebp),%ebx
	movl 4(%ebx),%ebx
	movl %ebx,-32(%ebp)
	cmpl %esi,%ebx
	jg .L620
.L647:
	cmpl $0,8(%ebp)
	jne .L648
	pushl $9172
	call _m3_fault
	.align 16
.L648:
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	subl -20(%ebp),%eax
	addl %eax,%edi
	jmp .L649
	.align 16
.L650:
	incl %edi
	incl %esi
.L649:
	cmpl $0,12(%ebp)
	jne .L651
	pushl $9188
	call _m3_fault
	.align 16
.L651:
	movl 12(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %esi,%eax
	jle .L655
	movl %ebx,-36(%ebp)
	cmpl %eax,%esi
	jb .L654
	pushl $9186
	call _m3_fault
	.align 16
.L654:
	movl -36(%ebp),%ecx
	movl (%ecx),%eax
	movl -16(%ebp),%ebx
	cmpl %ebx,4(%eax,%esi,8)
	jl .L650
.L655:
	testl %edi,%edi
	jne .L656
	pushl $9200
	call _m3_fault
	.align 16
.L656:
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %edi,-4(%ebp)
	pushl %eax
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,-24(%ebp)
	xorl %esi,%esi
	movl %esi,-20(%ebp)
	movl %esi,%edi
	addl $8,%esp
	cmpl $0,12(%ebp)
	jne .L657
	pushl $9284
	call _m3_fault
	.align 16
.L657:
	movl 12(%ebp),%ebx
	movl %ebx,-36(%ebp)
	cmpl $0,4(%ebx)
	jne .L658
	pushl $9282
	call _m3_fault
	.align 16
.L658:
	movl -36(%ebp),%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	jmp .L744
	.align 16
.L660:
	movl 8(%ebp),%ebx
	movl %ebx,-36(%ebp)
	cmpl %edx,-20(%ebp)
	jb .L663
	pushl $9314
	call _m3_fault
	.align 16
.L663:
	cmpl %eax,%esi
	jb .L664
	pushl $9314
	call _m3_fault
	.align 16
.L664:
	movl -36(%ebp),%ecx
	movl 12(%ebp),%ebx
	movl (%ecx),%eax
	movl -20(%ebp),%ecx
	movl (%ebx),%edx
	movl (%eax,%ecx,8),%eax
	movl 4(%edx,%esi,8),%edx
	cmpl %edx,%eax
	jge .L684
	cmpl %eax,-16(%ebp)
	jle .L668
	cmpl $0,-24(%ebp)
	jne .L669
	pushl $9348
	call _m3_fault
	.align 16
.L669:
	movl -24(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L670
	pushl $9346
	call _m3_fault
	.align 16
.L670:
	movl -24(%ebp),%ecx
	movl -36(%ebp),%ebx
	movl (%ecx),%eax
	movl (%ebx),%edx
	movl -20(%ebp),%ecx
	movl (%edx,%ecx,8),%edx
	movl %edx,(%eax,%edi,8)
	movl -24(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L674
	pushl $9362
	call _m3_fault
	.align 16
.L674:
	cmpl $0,8(%ebp)
	jne .L675
	pushl $9364
	call _m3_fault
	.align 16
.L675:
	movl 8(%ebp),%eax
	movl -20(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L676
	pushl $9362
	call _m3_fault
	.align 16
.L676:
	movl -24(%ebp),%ebx
	movl -20(%ebp),%ecx
	movl (%ebx),%ebx
	movl %ebx,-36(%ebp)
	movl (%eax),%eax
	movl -16(%ebp),%edx
	movl 4(%eax,%ecx,8),%eax
	cmpl %eax,%edx
	jle .L677
	movl %eax,%edx
.L677:
	movl -36(%ebp),%ebx
	movl %edx,4(%ebx,%edi,8)
	incl %edi
.L668:
	cmpl $0,8(%ebp)
	jne .L678
	pushl $9412
	call _m3_fault
	.align 16
.L678:
	movl 8(%ebp),%eax
	movl -20(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L679
	pushl $9410
	call _m3_fault
	.align 16
.L679:
	movl (%eax),%eax
	movl -20(%ebp),%ebx
	movl 4(%eax,%ebx,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L680
	movl %eax,-16(%ebp)
.L680:
	incl -20(%ebp)
	jmp .L659
	.align 16
.L684:
	cmpl %edx,-16(%ebp)
	jle .L686
	cmpl $0,-24(%ebp)
	jne .L687
	pushl $9476
	call _m3_fault
	.align 16
.L687:
	movl -24(%ebp),%ecx
	cmpl %edi,4(%ecx)
	ja .L688
	pushl $9474
	call _m3_fault
	.align 16
.L688:
	movl -24(%ebp),%ebx
	movl (%ebx),%eax
	movl %edx,(%eax,%edi,8)
	movl 12(%ebp),%ecx
	movl 4(%ecx),%edx
	leal -1(%edx),%eax
	cmpl %esi,%eax
	jle .L699
	cmpl %edi,4(%ebx)
	ja .L695
	pushl $9506
	call _m3_fault
	.align 16
.L695:
	leal 1(%esi),%eax
	cmpl %edx,%eax
	jb .L696
	pushl $9506
	call _m3_fault
	.align 16
.L696:
	movl -24(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl (%ebx),%ebx
	movl %ebx,-36(%ebp)
	movl (%ecx),%eax
	movl -16(%ebp),%edx
	movl 8(%eax,%esi,8),%eax
	cmpl %eax,%edx
	jle .L697
	movl %eax,%edx
.L697:
	movl -36(%ebp),%ebx
	movl %edx,4(%ebx,%edi,8)
	jmp .L698
	.align 16
.L699:
	movl -24(%ebp),%ecx
	cmpl %edi,4(%ecx)
	ja .L700
	pushl $9538
	call _m3_fault
	.align 16
.L700:
	movl -24(%ebp),%ebx
	movl (%ebx),%eax
	movl -16(%ebp),%ecx
	movl %ecx,4(%eax,%edi,8)
.L698:
	incl %edi
.L686:
	incl %esi
	cmpl $0,12(%ebp)
	jne .L701
	pushl $9620
	call _m3_fault
	.align 16
.L701:
	movl 12(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %esi,%eax
	jle .L659
	cmpl %eax,%esi
	jb .L704
	pushl $9618
	call _m3_fault
	.align 16
.L704:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl (%eax,%esi,8),%eax
	cmpl %eax,-16(%ebp)
	jge .L659
.L744:
	movl %eax,-16(%ebp)
.L659:
	cmpl $0,8(%ebp)
	jne .L707
	pushl $9300
	call _m3_fault
	.align 16
.L707:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%edx
	cmpl %edx,-20(%ebp)
	jge .L711
	cmpl $0,12(%ebp)
	jne .L709
	pushl $9300
	call _m3_fault
	.align 16
.L709:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %esi,%eax
	jg .L660
	jmp .L711
	.align 16
.L712:
	cmpl $0,-24(%ebp)
	jne .L713
	pushl $9668
	call _m3_fault
	.align 16
.L713:
	movl -24(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L715
	pushl $9666
	call _m3_fault
	.align 16
.L715:
	movl 8(%ebp),%ecx
	movl %ecx,-36(%ebp)
	cmpl %eax,-20(%ebp)
	jb .L716
	pushl $9666
	call _m3_fault
	.align 16
.L716:
	movl -24(%ebp),%ebx
	movl -36(%ebp),%ecx
	movl (%ebx),%ebx
	movl %ebx,-32(%ebp)
	movl (%ecx),%edx
	movl -20(%ebp),%ebx
	movl -32(%ebp),%ecx
	movl (%edx,%ebx,8),%eax
	movl %eax,(%ecx,%edi,8)
	movl 4(%edx,%ebx,8),%eax
	movl %eax,4(%ecx,%edi,8)
	incl %ebx
	movl %ebx,-20(%ebp)
	incl %edi
.L711:
	cmpl $0,8(%ebp)
	jne .L717
	pushl $9668
	call _m3_fault
	.align 16
.L717:
	movl 8(%ebp),%ebx
	movl 4(%ebx),%eax
	cmpl %eax,-20(%ebp)
	jl .L712
	jmp .L719
	.align 16
.L720:
	cmpl $0,-24(%ebp)
	jne .L721
	pushl $9700
	call _m3_fault
	.align 16
.L721:
	movl -24(%ebp),%ecx
	cmpl %edi,4(%ecx)
	ja .L723
	pushl $9698
	call _m3_fault
	.align 16
.L723:
	movl 12(%ebp),%ecx
	movl -24(%ebp),%ebx
	movl (%ecx),%eax
	movl (%ebx),%edx
	movl 4(%eax,%esi,8),%eax
	movl %eax,(%edx,%edi,8)
	movl 4(%ecx),%edx
	leal -1(%edx),%eax
	cmpl %esi,%eax
	jle .L733
	cmpl %edi,4(%ebx)
	ja .L729
	pushl $9730
	call _m3_fault
	.align 16
.L729:
	movl 12(%ebp),%ebx
	movl %ebx,-36(%ebp)
	leal 1(%esi),%eax
	cmpl %edx,%eax
	jb .L730
	pushl $9730
	call _m3_fault
	.align 16
.L730:
	movl -24(%ebp),%ecx
	movl -36(%ebp),%ebx
	movl (%ecx),%ecx
	movl %ecx,-32(%ebp)
	movl (%ebx),%eax
	movl -16(%ebp),%edx
	movl 8(%eax,%esi,8),%eax
	cmpl %eax,%edx
	jle .L731
	movl %eax,%edx
.L731:
	movl -32(%ebp),%ecx
	movl %edx,4(%ecx,%edi,8)
	jmp .L732
	.align 16
.L733:
	movl -24(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L734
	pushl $9762
	call _m3_fault
	.align 16
.L734:
	movl -24(%ebp),%ecx
	movl (%ecx),%eax
	movl -16(%ebp),%ebx
	movl %ebx,4(%eax,%edi,8)
.L732:
	incl %edi
	incl %esi
.L719:
	cmpl $0,12(%ebp)
	jne .L735
	pushl $9684
	call _m3_fault
	.align 16
.L735:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%eax
	cmpl %esi,%eax
	jle .L739
	movl %ecx,-36(%ebp)
	cmpl %eax,%esi
	jb .L738
	pushl $9682
	call _m3_fault
	.align 16
.L738:
	movl -36(%ebp),%ebx
	movl (%ebx),%eax
	movl -16(%ebp),%ecx
	cmpl %ecx,4(%eax,%esi,8)
	jl .L720
.L739:
	cmpl $0,-24(%ebp)
	jne .L740
	pushl $9844
	call _m3_fault
	.align 16
.L740:
	movl -24(%ebp),%ebx
	cmpl %edi,4(%ebx)
	je .L741
	pushl $9840
	call _m3_fault
	.align 16
.L741:
	movl -24(%ebp),%eax
.L742:
	leal -48(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Region__DifferenceH,.Lfe26-Region__DifferenceH
	.align 16
	.type	 Region__SymmetricDifference,@function
Region__SymmetricDifference:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %esi
	pushl %ebx
	leal -40(%ebp),%esi
	pushl %esi
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call Region__Difference
	leal -60(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	call Region__Difference
	movl 16(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	call Region__Join
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Region__SymmetricDifference,.Lfe27-Region__SymmetricDifference
	.align 16
	.type	 Region__EqualH,@function
Region__EqualH:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	cmpl %esi,%edi
	je .L762
	testl %edi,%edi
	je .L748
	testl %esi,%esi
	je .L748
	movl 4(%edi),%eax
	cmpl %eax,4(%esi)
	je .L752
.L748:
	xorl %eax,%eax
	jmp .L761
	.align 16
.L752:
	xorl %ebx,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L753
	.align 16
.L754:
	testl %edi,%edi
	jne .L755
	pushl $10116
	call _m3_fault
	.align 16
.L755:
	cmpl %ebx,4(%edi)
	ja .L756
	pushl $10114
	call _m3_fault
	.align 16
.L756:
	testl %esi,%esi
	jne .L757
	pushl $10116
	call _m3_fault
	.align 16
.L757:
	cmpl %ebx,4(%esi)
	ja .L758
	pushl $10114
	call _m3_fault
	.align 16
.L758:
	leal 0(,%ebx,8),%eax
	movl (%esi),%edx
	addl %eax,%edx
	pushl %edx
	addl (%edi),%eax
	pushl %eax
	movl MI_Interval+132,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L761
	incl %ebx
.L753:
	cmpl %ebx,-4(%ebp)
	jge .L754
.L762:
	movl $1,%eax
.L761:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Region__EqualH,.Lfe28-Region__EqualH
	.align 16
	.type	 Region__EqualV,@function
Region__EqualV:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	cmpl %edi,8(%ebp)
	je .L784
	cmpl $0,8(%ebp)
	je .L776
	testl %edi,%edi
	je .L776
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	cmpl %eax,4(%edi)
	jne .L776
	xorl %ebx,%ebx
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L770
	.align 16
.L771:
	cmpl $0,8(%ebp)
	jne .L772
	pushl $10308
	call _m3_fault
	.align 16
.L772:
	movl 8(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L773
	pushl $10306
	call _m3_fault
	.align 16
.L773:
	testl %edi,%edi
	jne .L774
	pushl $10308
	call _m3_fault
	.align 16
.L774:
	cmpl %ebx,4(%edi)
	ja .L775
	pushl $10306
	call _m3_fault
	.align 16
.L775:
	leal (%ebx,%ebx,2),%eax
	leal 0(,%eax,4),%esi
	movl (%edi),%eax
	addl %esi,%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl (%edx),%eax
	addl %esi,%eax
	pushl %eax
	movl MI_Interval+132,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L776
	movl 8(%ebp),%edx
	cmpl %ebx,4(%edx)
	ja .L779
	pushl $10306
	call _m3_fault
	.align 16
.L779:
	cmpl %ebx,4(%edi)
	ja .L780
	pushl $10306
	call _m3_fault
	.align 16
.L780:
	movl %esi,%eax
	addl (%edi),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl %esi,%eax
	addl (%edx),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Region__EqualH
	addl $8,%esp
	testl %eax,%eax
	jne .L781
.L776:
	xorl %eax,%eax
	jmp .L783
	.align 16
.L781:
	incl %ebx
.L770:
	cmpl %ebx,-4(%ebp)
	jge .L771
.L784:
	movl $1,%eax
.L783:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Region__EqualV,.Lfe29-Region__EqualV
	.align 16
	.type	 Region__Equal,@function
Region__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+240,%eax
	xorl %ebx,%ebx
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L786
	movl 12(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	call Region__EqualV
	testl %eax,%eax
	setne %al
	xorl %ebx,%ebx
	movb %al,%bl
.L786:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Region__Equal,.Lfe30-Region__Equal
	.align 16
	.type	 Region__IsEmpty,@function
Region__IsEmpty:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+244,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Region__IsEmpty,.Lfe31-Region__IsEmpty
	.align 16
	.type	 Region__IsRect,@function
Region__IsRect:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl $0,16(%eax)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 Region__IsRect,.Lfe32-Region__IsRect
	.align 16
	.type	 Region__SubsetH,@function
Region__SubsetH:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	je .L839
	movl 12(%ebp),%esi
	cmpl %esi,8(%ebp)
	je .L839
	cmpl $0,12(%ebp)
	je .L827
	cmpl $0,8(%ebp)
	jne .L793
	pushl $10708
	call _m3_fault
	.align 16
.L793:
	movl 8(%ebp),%esi
	movl 4(%esi),%ecx
	testl %ecx,%ecx
	jne .L795
	pushl $10706
	call _m3_fault
	.align 16
.L795:
	movl 12(%ebp),%esi
	movl 4(%esi),%ebx
	testl %ebx,%ebx
	jne .L796
	pushl $10706
	call _m3_fault
	.align 16
.L796:
	movl 8(%ebp),%esi
	movl (%esi),%esi
	movl %esi,-4(%ebp)
	movl 12(%ebp),%esi
	movl (%esi),%edi
	movl -4(%ebp),%esi
	movl (%edi),%eax
	cmpl %eax,(%esi)
	jl .L827
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L799
	pushl $10706
	call _m3_fault
	.align 16
.L799:
	movl %ebx,%edx
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L802
	pushl $10706
	call _m3_fault
	.align 16
.L802:
	movl -4(%ebp),%esi
	movl -4(%edi,%edx,8),%eax
	cmpl %eax,-4(%esi,%ecx,8)
	jg .L827
	cmpl $1,%ebx
	jne .L805
	movl 8(%ebp),%esi
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L809
	pushl $10770
	call _m3_fault
	.align 16
.L809:
	movl 12(%ebp),%esi
	movl (%esi),%ecx
	movl 8(%ebp),%esi
	movl (%esi),%ebx
	movl (%ebx),%eax
	cmpl %eax,(%ecx)
	jg .L805
	testl %esi,%esi
	jne .L813
	pushl $10772
	call _m3_fault
	.align 16
.L813:
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L814
	pushl $10770
	call _m3_fault
	.align 16
.L814:
	movl -4(%ebx,%edx,8),%eax
	cmpl %eax,4(%ecx)
	jl .L805
.L839:
	movl $1,%eax
	jmp .L838
	.align 16
.L805:
	xorl %edx,%edx
	movl %edx,%ecx
	jmp .L815
	.align 16
.L816:
	cmpl %eax,%ecx
	jb .L819
	pushl $10882
	call _m3_fault
	.align 16
.L819:
	cmpl %ebx,%edx
	jb .L820
	pushl $10882
	call _m3_fault
	.align 16
.L820:
	movl 12(%ebp),%esi
	movl (%esi),%ebx
	movl 8(%ebp),%esi
	movl (%esi),%esi
	movl %esi,-4(%ebp)
	movl 4(%ebx,%ecx,8),%edi
	movl (%esi,%edx,8),%eax
	cmpl %eax,%edi
	jg .L823
	incl %ecx
	jmp .L815
	.align 16
.L823:
	cmpl %eax,(%ebx,%ecx,8)
	jg .L827
	movl -4(%ebp),%esi
	cmpl %edi,4(%esi,%edx,8)
	jle .L832
.L827:
	xorl %eax,%eax
	jmp .L838
	.align 16
.L832:
	incl %edx
.L815:
	cmpl $0,8(%ebp)
	jne .L833
	pushl $10868
	call _m3_fault
	.align 16
.L833:
	movl 8(%ebp),%esi
	movl 4(%esi),%ebx
	cmpl %edx,%ebx
	jle .L836
	cmpl $0,12(%ebp)
	jne .L835
	pushl $10868
	call _m3_fault
	.align 16
.L835:
	movl 12(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %ecx,%eax
	jg .L816
.L836:
	cmpl $0,8(%ebp)
	jne .L837
	pushl $11012
	call _m3_fault
	.align 16
.L837:
	movl 8(%ebp),%esi
	cmpl %edx,4(%esi)
	sete %al
	andl $255,%eax
.L838:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe33:
	.size	 Region__SubsetH,.Lfe33-Region__SubsetH
	.align 16
	.type	 Region__Subset,@function
Region__Subset:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-4(%ebp)
	movl 16(%edx),%edi
	testl %edi,%edi
	jne .L841
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call Region__SubsetRect
	jmp .L881
	.align 16
.L841:
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_Rect+256,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L870
	movl 12(%ebp),%eax
	movl 16(%eax),%eax
	movl %eax,-4(%ebp)
	testl %eax,%eax
	jne .L843
	movl $1,%eax
	jmp .L881
	.align 16
.L843:
	movl $0,-24(%ebp)
	movl -24(%ebp),%ebx
	jmp .L844
	.align 16
.L845:
	cmpl %edx,-24(%ebp)
	jb .L848
	pushl $11234
	call _m3_fault
	.align 16
.L848:
	cmpl %eax,%ebx
	jb .L849
	pushl $11234
	call _m3_fault
	.align 16
.L849:
	movl -24(%ebp),%ecx
	leal (%ecx,%ecx,2),%edx
	movl -4(%ebp),%esi
	leal (%ebx,%ebx,2),%eax
	movl (%esi),%esi
	movl %esi,-20(%ebp)
	movl (%edi),%ecx
	sall $2,%eax
	movl (%ecx,%edx,4),%edx
	cmpl %edx,(%esi,%eax)
	jg .L870
	movl -20(%ebp),%esi
	cmpl %edx,4(%esi,%eax)
	jg .L857
	incl %ebx
	jmp .L844
	.align 16
.L857:
	testl %edi,%edi
	jne .L858
	pushl $11332
	call _m3_fault
	.align 16
.L858:
	movl -24(%ebp),%ecx
	cmpl %ecx,4(%edi)
	ja .L859
	pushl $11330
	call _m3_fault
	.align 16
.L859:
	cmpl $0,-4(%ebp)
	jne .L860
	pushl $11332
	call _m3_fault
	.align 16
.L860:
	movl -4(%ebp),%esi
	cmpl %ebx,4(%esi)
	ja .L861
	pushl $11330
	call _m3_fault
	.align 16
.L861:
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	movl -4(%ebp),%ecx
	movl %eax,-8(%ebp)
	addl (%ecx),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl -24(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl %eax,-12(%ebp)
	addl (%edi),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Region__SubsetH
	addl $8,%esp
	testl %eax,%eax
	je .L881
	movl -24(%ebp),%ecx
	cmpl %ecx,4(%edi)
	ja .L865
	pushl $11346
	call _m3_fault
	.align 16
.L865:
	movl -4(%ebp),%esi
	movl 4(%esi),%edx
	cmpl %edx,%ebx
	jb .L866
	pushl $11346
	call _m3_fault
	.align 16
.L866:
	movl -12(%ebp),%eax
	addl (%edi),%eax
	movl -4(%ebp),%ecx
	movl -8(%ebp),%esi
	addl (%ecx),%esi
	movl %esi,-16(%ebp)
	movl 4(%esi),%ecx
	movl %ecx,-20(%ebp)
	cmpl %ecx,4(%eax)
	jg .L869
	incl -24(%ebp)
	jmp .L844
	.align 16
.L869:
	leal -1(%edx),%eax
	cmpl %ebx,%eax
	je .L870
	leal 1(%ebx),%eax
	cmpl %edx,%eax
	jb .L874
	pushl $11362
	call _m3_fault
	.align 16
.L874:
	movl -16(%ebp),%esi
	movl -20(%ebp),%ecx
	cmpl %ecx,12(%esi)
	je .L875
.L870:
	xorl %eax,%eax
	jmp .L881
	.align 16
.L875:
	movl %eax,%ebx
	jmp .L857
	.align 16
.L844:
	testl %edi,%edi
	jne .L876
	pushl $11220
	call _m3_fault
	.align 16
.L876:
	movl 4(%edi),%edx
	cmpl %edx,-24(%ebp)
	jge .L879
	cmpl $0,-4(%ebp)
	jne .L878
	pushl $11220
	call _m3_fault
	.align 16
.L878:
	movl -4(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %ebx,%eax
	jg .L845
.L879:
	testl %edi,%edi
	jne .L880
	pushl $11476
	call _m3_fault
	.align 16
.L880:
	movl -24(%ebp),%ecx
	cmpl %ecx,4(%edi)
	sete %al
	andl $255,%eax
.L881:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe34:
	.size	 Region__Subset,.Lfe34-Region__Subset
	.align 16
	.type	 Region__Member,@function
Region__Member:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	leal -16(%ebp),%ebx
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+84,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call Region__SubsetRect
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe35:
	.size	 Region__Member,.Lfe35-Region__Member
	.align 16
	.type	 Region__SubsetRect,@function
Region__SubsetRect:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L884:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-12(%ebp)
	movl -12(%ebp),%edi
	movl %edi,-16(%ebp)
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+256,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L920
	movl 12(%ebp),%eax
	movl 16(%eax),%eax
	movl %eax,-12(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+244,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L928
	cmpl $0,-12(%ebp)
	je .L928
	movl -16(%ebp),%edi
	movl %edi,-28(%ebp)
	movl -12(%ebp),%edi
	movl 4(%edi),%edi
	movl %edi,-20(%ebp)
.L889:
	movl -20(%ebp),%edi
	cmpl %edi,-28(%ebp)
	je .L920
	movl -28(%ebp),%eax
	addl -20(%ebp),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	cmpl $0,-12(%ebp)
	jne .L891
	pushl $11780
	call _m3_fault
	.align 16
.L891:
	movl -12(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L892
	pushl $11778
	call _m3_fault
	.align 16
.L892:
	movl 8(%ebp),%edx
	movl (%ecx),%ecx
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	movl 8(%edx),%edx
	cmpl %edx,(%ecx,%eax)
	jle .L895
	movl %ebx,-20(%ebp)
	jmp .L889
	.align 16
.L895:
	cmpl %edx,4(%ecx,%eax)
	jg .L898
	incl %ebx
	movl %ebx,-28(%ebp)
	jmp .L889
	.align 16
.L898:
	movl %ebx,%esi
.L899:
	cmpl $0,-12(%ebp)
	jne .L900
	pushl $11940
	call _m3_fault
	.align 16
.L900:
	movl -12(%ebp),%ecx
	cmpl %esi,4(%ecx)
	ja .L901
	pushl $11938
	call _m3_fault
	.align 16
.L901:
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	addl (%ecx),%eax
	movl 8(%eax),%eax
	movl %eax,-16(%ebp)
	movl $0,-28(%ebp)
	testl %eax,%eax
	jne .L902
	pushl $11972
	call _m3_fault
	.align 16
.L902:
	movl -16(%ebp),%edi
	movl 4(%edi),%edi
	movl %edi,-20(%ebp)
.L903:
	movl -20(%ebp),%edi
	cmpl %edi,-28(%ebp)
	je .L920
	movl -28(%ebp),%eax
	addl -20(%ebp),%eax
	movl %eax,%ebx
	sarl $1,%ebx
	cmpl $0,-16(%ebp)
	jne .L905
	pushl $12036
	call _m3_fault
	.align 16
.L905:
	movl -16(%ebp),%ecx
	cmpl %ebx,4(%ecx)
	ja .L906
	pushl $12034
	call _m3_fault
	.align 16
.L906:
	movl 8(%ebp),%edi
	movl %edi,-24(%ebp)
	movl (%ecx),%eax
	movl (%edi),%edx
	cmpl %edx,(%eax,%ebx,8)
	jle .L909
	movl %ebx,-20(%ebp)
	jmp .L903
	.align 16
.L909:
	movl 4(%eax,%ebx,8),%eax
	cmpl %eax,%edx
	jl .L913
	incl %ebx
	movl %ebx,-28(%ebp)
	jmp .L903
	.align 16
.L913:
	movl -24(%ebp),%edi
	cmpl %eax,4(%edi)
	jg .L920
	cmpl $0,-12(%ebp)
	jne .L916
	pushl $12180
	call _m3_fault
	.align 16
.L916:
	movl -12(%ebp),%ecx
	movl 4(%ecx),%ebx
	cmpl %ebx,%esi
	jb .L917
	pushl $12178
	call _m3_fault
	.align 16
.L917:
	movl (%ecx),%ecx
	leal (%esi,%esi,2),%edx
	movl 8(%ebp),%eax
	movl 4(%ecx,%edx,4),%edx
	cmpl %edx,12(%eax)
	jg .L918
.L928:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L883
	.align 16
.L918:
	incl %esi
	leal -1(%ebx),%eax
	cmpl %esi,%eax
	jl .L920
	leal -1(%esi),%eax
	cmpl %ebx,%eax
	jb .L923
	pushl $12210
	call _m3_fault
	.align 16
.L923:
	cmpl %ebx,%esi
	jb .L924
	pushl $12210
	call _m3_fault
	.align 16
.L924:
	leal (%esi,%esi,2),%edx
	movl -8(%ecx,%edx,4),%eax
	cmpl %eax,(%ecx,%edx,4)
	je .L899
.L920:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L927:
.L883:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe36:
	.size	 Region__SubsetRect,.Lfe36-Region__SubsetRect
	.align 16
	.type	 Region__OverlapH,@function
Region__OverlapH:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	cmpl $0,8(%ebp)
	je .L959
	testl %edi,%edi
	je .L959
	movl 8(%ebp),%esi
	movl 4(%esi),%ecx
	leal -1(%ecx),%eax
	cmpl %ecx,%eax
	jb .L934
	pushl $12354
	call _m3_fault
	.align 16
.L934:
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L935
	pushl $12354
	call _m3_fault
	.align 16
.L935:
	movl 8(%ebp),%esi
	movl (%esi),%esi
	movl %esi,-4(%ebp)
	movl (%edi),%ebx
	movl (%ebx),%eax
	cmpl %eax,-4(%esi,%ecx,8)
	jle .L959
	leal -1(%edx),%eax
	cmpl %edx,%eax
	jb .L939
	pushl $12354
	call _m3_fault
	.align 16
.L939:
	testl %ecx,%ecx
	jne .L940
	pushl $12354
	call _m3_fault
	.align 16
.L940:
	movl -4(%ebp),%esi
	movl (%esi),%eax
	cmpl %eax,-4(%ebx,%edx,8)
	jle .L959
	cmpl %edi,8(%ebp)
	je .L961
	xorl %edx,%edx
	movl %edx,%ebx
	jmp .L943
	.align 16
.L944:
	cmpl %ecx,%ebx
	jb .L947
	pushl $12482
	call _m3_fault
	.align 16
.L947:
	cmpl %eax,%edx
	jb .L948
	pushl $12482
	call _m3_fault
	.align 16
.L948:
	movl 8(%ebp),%esi
	movl (%esi),%esi
	movl %esi,-4(%ebp)
	movl (%edi),%ecx
	movl (%ecx,%edx,8),%eax
	cmpl %eax,4(%esi,%ebx,8)
	jg .L951
	incl %ebx
	jmp .L943
	.align 16
.L951:
	movl -4(%ebp),%esi
	movl (%esi,%ebx,8),%eax
	cmpl %eax,4(%ecx,%edx,8)
	jle .L955
.L961:
	movl $1,%eax
	jmp .L960
	.align 16
.L955:
	incl %edx
.L943:
	cmpl $0,8(%ebp)
	jne .L956
	pushl $12468
	call _m3_fault
	.align 16
.L956:
	movl 8(%ebp),%esi
	movl 4(%esi),%ecx
	cmpl %ebx,%ecx
	jle .L959
	testl %edi,%edi
	jne .L958
	pushl $12468
	call _m3_fault
	.align 16
.L958:
	movl 4(%edi),%eax
	cmpl %edx,%eax
	jg .L944
.L959:
	xorl %eax,%eax
.L960:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe37:
	.size	 Region__OverlapH,.Lfe37-Region__OverlapH
	.align 16
	.type	 Region__Overlap,@function
Region__Overlap:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+252,%eax
	xorl %edi,%edi
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L996
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 16(%edx),%ecx
	movl %ecx,-4(%ebp)
	movl 16(%eax),%edi
	testl %ecx,%ecx
	jne .L964
	testl %edi,%edi
	je .L998
.L964:
	cmpl %edi,-4(%ebp)
	je .L998
	cmpl $0,-4(%ebp)
	jne .L967
	pushl %eax
	pushl %edx
	call Region__OverlapRect
	jmp .L997
	.align 16
.L967:
	testl %edi,%edi
	jne .L968
	pushl %edx
	pushl %eax
	call Region__OverlapRect
	jmp .L997
	.align 16
.L968:
	xorl %ebx,%ebx
	movl %ebx,-20(%ebp)
	jmp .L969
	.align 16
.L970:
	cmpl %edx,-20(%ebp)
	jb .L973
	pushl $12850
	call _m3_fault
	.align 16
.L973:
	cmpl %eax,%ebx
	jb .L974
	pushl $12850
	call _m3_fault
	.align 16
.L974:
	movl -20(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl %eax,-8(%ebp)
	movl %eax,%edx
	movl -4(%ebp),%ecx
	movl (%edi),%esi
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	addl (%ecx),%edx
	movl %esi,-16(%ebp)
	movl %eax,-12(%ebp)
	movl (%esi,%eax),%eax
	cmpl %eax,4(%edx)
	jle .L999
	movl -16(%ebp),%ecx
	addl -12(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl (%edx),%eax
	cmpl %eax,4(%ecx)
	jle .L991
	cmpl %ebx,4(%edi)
	ja .L985
	pushl $12930
	call _m3_fault
	.align 16
.L985:
	movl -16(%ebp),%esi
	movl 8(%esi),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	call Region__OverlapH
	addl $8,%esp
	testl %eax,%eax
	je .L987
.L998:
	movl $1,%eax
	jmp .L997
	.align 16
.L987:
	movl -4(%ebp),%esi
	movl -20(%ebp),%ecx
	cmpl %ecx,4(%esi)
	ja .L989
	pushl $12946
	call _m3_fault
	.align 16
.L989:
	cmpl %ebx,4(%edi)
	ja .L990
	pushl $12946
	call _m3_fault
	.align 16
.L990:
	movl -8(%ebp),%eax
	movl -4(%ebp),%ecx
	movl -12(%ebp),%edx
	addl (%edi),%edx
	addl (%ecx),%eax
	movl 4(%edx),%edx
	cmpl %edx,4(%eax)
	jg .L991
.L999:
	incl -20(%ebp)
	jmp .L969
	.align 16
.L991:
	incl %ebx
.L969:
	cmpl $0,-4(%ebp)
	jne .L993
	pushl $12836
	call _m3_fault
	.align 16
.L993:
	movl -4(%ebp),%esi
	movl 4(%esi),%edx
	cmpl %edx,-20(%ebp)
	jge .L996
	testl %edi,%edi
	jne .L995
	pushl $12836
	call _m3_fault
	.align 16
.L995:
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jg .L970
.L996:
	xorl %eax,%eax
.L997:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe38:
	.size	 Region__Overlap,.Lfe38-Region__Overlap
	.align 16
	.type	 Region__OverlapRect,@function
Region__OverlapRect:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L1001:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-12(%ebp)
	movl -12(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+252,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L1034
	movl 12(%ebp),%eax
	movl 16(%eax),%eax
	movl %eax,-12(%ebp)
	testl %eax,%eax
	je .L1035
	movl -12(%ebp),%edi
	movl %ebx,%esi
	movl 4(%edi),%edi
	movl %edi,-20(%ebp)
	jmp .L1005
	.align 16
.L1006:
	movl -20(%ebp),%edi
	leal (%edi,%esi),%eax
	movl %eax,%ecx
	sarl $1,%ecx
	cmpl $0,-12(%ebp)
	jne .L1007
	pushl $13204
	call _m3_fault
	.align 16
.L1007:
	movl -12(%ebp),%edi
	cmpl %ecx,4(%edi)
	ja .L1008
	pushl $13202
	call _m3_fault
	.align 16
.L1008:
	leal (%ecx,%ecx,2),%edx
	movl -12(%ebp),%edi
	sall $2,%edx
	addl (%edi),%edx
	movl 8(%ebp),%eax
	movl 4(%edx),%edx
	cmpl %edx,8(%eax)
	jge .L1009
	movl %ecx,-20(%ebp)
	jmp .L1005
	.align 16
.L1009:
	leal 1(%ecx),%esi
.L1005:
	cmpl %esi,-20(%ebp)
	jne .L1006
	movl %esi,-16(%ebp)
	jmp .L1012
	.align 16
.L1013:
	cmpl %eax,-16(%ebp)
	jb .L1015
	pushl $13266
	call _m3_fault
	.align 16
.L1015:
	movl -12(%ebp),%edi
	movl (%edi),%ebx
	movl -16(%ebp),%edi
	leal (%edi,%edi,2),%edx
	leal 0(,%edx,4),%ecx
	movl 8(%ebp),%eax
	movl (%ebx,%ecx),%edx
	cmpl %edx,12(%eax)
	jle .L1034
	movl 8(%ebx,%ecx),%ebx
	xorl %esi,%esi
	testl %ebx,%ebx
	jne .L1019
	pushl $13316
	call _m3_fault
	.align 16
.L1019:
	movl 4(%ebx),%edi
	movl %edi,-20(%ebp)
	jmp .L1020
	.align 16
.L1021:
	movl -20(%ebp),%edi
	leal (%edi,%esi),%eax
	movl %eax,%ecx
	sarl $1,%ecx
	testl %ebx,%ebx
	jne .L1022
	pushl $13364
	call _m3_fault
	.align 16
.L1022:
	movl %ebx,%edx
	cmpl %ecx,4(%edx)
	ja .L1023
	pushl $13362
	call _m3_fault
	.align 16
.L1023:
	movl (%edx),%edx
	movl 8(%ebp),%eax
	movl 4(%edx,%ecx,8),%edx
	cmpl %edx,(%eax)
	jge .L1024
	movl %ecx,-20(%ebp)
	jmp .L1020
	.align 16
.L1024:
	leal 1(%ecx),%esi
.L1020:
	cmpl %esi,-20(%ebp)
	jne .L1021
	testl %ebx,%ebx
	jne .L1027
	pushl $13396
	call _m3_fault
	.align 16
.L1027:
	movl 4(%ebx),%eax
	cmpl %esi,%eax
	jle .L1028
	movl %ebx,%edx
	cmpl %eax,%esi
	jb .L1030
	pushl $13394
	call _m3_fault
	.align 16
.L1030:
	movl (%edx),%edx
	movl 8(%ebp),%eax
	movl (%edx,%esi,8),%edx
	cmpl %edx,4(%eax)
	jle .L1028
.L1035:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L1000
	.align 16
.L1028:
	incl -16(%ebp)
.L1012:
	cmpl $0,-12(%ebp)
	jne .L1031
	pushl $13252
	call _m3_fault
	.align 16
.L1031:
	movl -12(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-16(%ebp)
	jl .L1013
.L1034:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L1033:
.L1000:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe39:
	.size	 Region__OverlapRect,.Lfe39-Region__OverlapRect
	.align 16
	.type	 Region__MaxSubset,@function
Region__MaxSubset:
	pushl %ebp
	movl %esp,%ebp
	subl $112,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L1037:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Rect+256,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L1038
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1105
	.align 16
.L1038:
	movl 12(%ebp),%ecx
	movl 16(%ecx),%esi
	movl %esi,-100(%ebp)
	testl %esi,%esi
	jne .L1039
	movl 16(%ebp),%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%ecx),%eax
	jmp .L1106
	.align 16
.L1039:
	movl -100(%ebp),%ebx
	movl $0,-104(%ebp)
	movl 4(%ebx),%edi
	jmp .L1041
	.align 16
.L1042:
	movl -104(%ebp),%eax
	addl %edi,%eax
	sarl $1,%eax
	movl %eax,-108(%ebp)
	cmpl $0,-100(%ebp)
	jne .L1043
	pushl $13652
	call _m3_fault
	.align 16
.L1043:
	movl -100(%ebp),%esi
	movl %esi,-112(%ebp)
	movl -108(%ebp),%ebx
	cmpl %ebx,4(%esi)
	ja .L1044
	pushl $13650
	call _m3_fault
	.align 16
.L1044:
	movl -108(%ebp),%esi
	leal (%esi,%esi,2),%edx
	movl -112(%ebp),%ebx
	sall $2,%edx
	addl (%ebx),%edx
	movl 8(%ebp),%eax
	movl 4(%edx),%edx
	cmpl %edx,8(%eax)
	jl .L1045
	incl %esi
	movl %esi,-104(%ebp)
	jmp .L1041
	.align 16
.L1045:
	movl -108(%ebp),%edi
.L1041:
	cmpl %edi,-104(%ebp)
	jne .L1042
	cmpl $0,-100(%ebp)
	jne .L1048
	pushl $13684
	call _m3_fault
	.align 16
.L1048:
	movl -100(%ebp),%esi
	movl 4(%esi),%eax
	cmpl %edi,%eax
	je .L1049
	movl %esi,-112(%ebp)
	cmpl %eax,%edi
	jb .L1051
	pushl $13682
	call _m3_fault
	.align 16
.L1051:
	movl -112(%ebp),%ebx
	leal (%edi,%edi,2),%eax
	movl (%ebx),%edx
	movl 8(%ebp),%ecx
	movl (%edx,%eax,4),%eax
	cmpl %eax,8(%ecx)
	jge .L1052
.L1049:
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1105
	.align 16
.L1052:
.L1054:
	incl %edi
	cmpl $0,-100(%ebp)
	jne .L1055
	pushl $13812
	call _m3_fault
	.align 16
.L1055:
	movl -100(%ebp),%esi
	movl 4(%esi),%ecx
	cmpl %edi,%ecx
	je .L1063
	movl %esi,-112(%ebp)
	leal -1(%edi),%eax
	cmpl %ecx,%eax
	jb .L1058
	pushl $13810
	call _m3_fault
	.align 16
.L1058:
	leal (%edi,%edi,2),%eax
	movl -112(%ebp),%ebx
	sall $2,%eax
	addl (%ebx),%eax
	movl 8(%ebp),%edx
	movl -8(%eax),%esi
	movl %esi,-112(%ebp)
	cmpl %esi,12(%edx)
	jle .L1063
	cmpl %ecx,%edi
	jb .L1062
	pushl $13810
	call _m3_fault
	.align 16
.L1062:
	movl -112(%ebp),%ebx
	cmpl %ebx,(%eax)
	je .L1054
.L1063:
	cmpl $0,-100(%ebp)
	jne .L1064
	pushl $13876
	call _m3_fault
	.align 16
.L1064:
	movl -100(%ebp),%esi
	leal -1(%edi),%eax
	cmpl %eax,4(%esi)
	ja .L1065
	pushl $13874
	call _m3_fault
	.align 16
.L1065:
	leal (%edi,%edi,2),%eax
	movl -100(%ebp),%ebx
	sall $2,%eax
	addl (%ebx),%eax
	movl 8(%ebp),%edx
	movl -8(%eax),%eax
	cmpl %eax,12(%edx)
	jle .L1066
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1105
	.align 16
.L1066:
	movl (%edx),%eax
	movl %eax,-56(%ebp)
	movl 4(%edx),%eax
	movl %eax,-52(%ebp)
	movl -100(%ebp),%ebx
	movl -104(%ebp),%esi
	cmpl %esi,4(%ebx)
	ja .L1068
	pushl $13906
	call _m3_fault
	.align 16
.L1068:
	leal -48(%ebp),%eax
	pushl %eax
	movl -104(%ebp),%esi
	leal (%esi,%esi,2),%eax
	movl -100(%ebp),%ebx
	sall $2,%eax
	addl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %eax
	leal -56(%ebp),%eax
	pushl %eax
	call Region__ContainingInterval
	movl -48(%ebp),%eax
	movl %eax,-16(%ebp)
	movl -44(%ebp),%eax
	movl %eax,-12(%ebp)
	incl %esi
	movl %esi,-108(%ebp)
	addl $12,%esp
	jmp .L1069
	.align 16
.L1070:
	movl -16(%ebp),%eax
	movl %eax,-72(%ebp)
	movl -12(%ebp),%eax
	movl 8(%ebp),%edx
	movl %eax,-68(%ebp)
	movl (%edx),%eax
	movl %eax,-80(%ebp)
	movl 4(%edx),%eax
	movl %eax,-76(%ebp)
	cmpl $0,-100(%ebp)
	jne .L1071
	pushl $14004
	call _m3_fault
	.align 16
.L1071:
	movl -100(%ebp),%ebx
	movl -108(%ebp),%esi
	cmpl %esi,4(%ebx)
	ja .L1072
	pushl $14002
	call _m3_fault
	.align 16
.L1072:
	leal -88(%ebp),%esi
	movl %esi,-112(%ebp)
	pushl %esi
	movl -108(%ebp),%ebx
	leal (%ebx,%ebx,2),%eax
	movl -100(%ebp),%esi
	sall $2,%eax
	addl (%esi),%eax
	movl 8(%eax),%eax
	pushl %eax
	leal -80(%ebp),%eax
	pushl %eax
	call Region__ContainingInterval
	leal -64(%ebp),%eax
	pushl %eax
	movl -112(%ebp),%ebx
	pushl %ebx
	leal -72(%ebp),%eax
	pushl %eax
	movl MI_Interval+116,%eax
	call *%eax
	movl -64(%ebp),%eax
	movl %eax,-16(%ebp)
	movl -60(%ebp),%eax
	movl %eax,-12(%ebp)
	incl -108(%ebp)
	addl $24,%esp
.L1069:
	cmpl %edi,-108(%ebp)
	jl .L1070
	movl -12(%ebp),%eax
	cmpl %eax,-16(%ebp)
	jl .L1074
	movl 16(%ebp),%ecx
	movl $MI_Rect+44,%edx
	movl MI_Rect+44,%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	jmp .L1105
	.align 16
.L1074:
	cmpl $0,-100(%ebp)
	jne .L1075
	pushl $14132
	call _m3_fault
	.align 16
.L1075:
	movl -100(%ebp),%esi
	movl %esi,-112(%ebp)
	movl -104(%ebp),%ebx
	cmpl %ebx,4(%esi)
	ja .L1076
	pushl $14130
	call _m3_fault
	.align 16
.L1076:
	movl -112(%ebp),%esi
	movl -104(%ebp),%ebx
	leal (%ebx,%ebx,2),%eax
	movl (%esi),%edx
	movl (%edx,%eax,4),%eax
	movl %eax,-8(%ebp)
	leal -1(%edi),%eax
	cmpl %eax,4(%esi)
	ja .L1078
	pushl $14146
	call _m3_fault
	.align 16
.L1078:
	leal (%edi,%edi,2),%eax
	movl -112(%ebp),%esi
	sall $2,%eax
	addl (%esi),%eax
	movl -8(%eax),%eax
	movl %eax,-4(%ebp)
	jmp .L1107
	.align 16
.L1080:
	movl -112(%ebp),%esi
	movl -104(%ebp),%ebx
	cmpl %ebx,4(%esi)
	ja .L1082
	pushl $14210
	call _m3_fault
	.align 16
.L1082:
	movl -112(%ebp),%ebx
	movl -108(%ebp),%esi
	movl (%ebx),%eax
	movl (%eax,%esi),%eax
	movl %eax,-8(%ebp)
.L1107:
	decl -104(%ebp)
	js .L1091
	cmpl $0,-100(%ebp)
	jne .L1084
	pushl $14180
	call _m3_fault
	.align 16
.L1084:
	movl -100(%ebp),%ebx
	movl %ebx,-112(%ebp)
	movl 4(%ebx),%edx
	cmpl %edx,-104(%ebp)
	jb .L1086
	pushl $14178
	call _m3_fault
	.align 16
.L1086:
	movl -104(%ebp),%eax
	incl %eax
	cmpl %edx,%eax
	jb .L1087
	pushl $14178
	call _m3_fault
	.align 16
.L1087:
	movl -104(%ebp),%esi
	leal (%esi,%esi,2),%eax
	sall $2,%eax
	movl %eax,-108(%ebp)
	movl -112(%ebp),%ebx
	movl %eax,%edx
	addl (%ebx),%edx
	movl 12(%edx),%eax
	cmpl %eax,4(%edx)
	jne .L1091
	movl -16(%ebp),%eax
	movl %eax,-96(%ebp)
	movl -12(%ebp),%eax
	movl %eax,-92(%ebp)
	cmpl %esi,4(%ebx)
	ja .L1089
	pushl $14178
	call _m3_fault
	.align 16
.L1089:
	movl -112(%ebp),%esi
	movl -108(%ebp),%eax
	addl (%esi),%eax
	movl 8(%eax),%eax
	pushl %eax
	leal -96(%ebp),%eax
	pushl %eax
	call Region__ContainsInterval
	addl $8,%esp
	testl %eax,%eax
	jne .L1080
	jmp .L1091
	.align 16
.L1092:
	movl -112(%ebp),%ebx
	cmpl %edi,4(%ebx)
	ja .L1094
	pushl $14290
	call _m3_fault
	.align 16
.L1094:
	movl -112(%ebp),%esi
	movl -108(%ebp),%eax
	addl (%esi),%eax
	incl %edi
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
.L1091:
	cmpl $0,-100(%ebp)
	jne .L1095
	pushl $14260
	call _m3_fault
	.align 16
.L1095:
	movl -100(%ebp),%ebx
	movl 4(%ebx),%edx
	cmpl %edi,%edx
	jle .L1103
	leal -1(%edi),%eax
	cmpl %edx,%eax
	jb .L1099
	pushl $14258
	call _m3_fault
	.align 16
.L1099:
	cmpl %edx,%edi
	jb .L1100
	pushl $14258
	call _m3_fault
	.align 16
.L1100:
	leal (%edi,%edi,2),%eax
	sall $2,%eax
	movl %eax,-108(%ebp)
	movl -100(%ebp),%esi
	movl %eax,%edx
	addl (%esi),%edx
	movl (%edx),%eax
	cmpl %eax,-8(%edx)
	jne .L1103
	movl -16(%ebp),%eax
	movl %eax,-96(%ebp)
	movl -12(%ebp),%eax
	movl %eax,-92(%ebp)
	movl %esi,-112(%ebp)
	cmpl %edi,4(%esi)
	ja .L1102
	pushl $14258
	call _m3_fault
	.align 16
.L1102:
	movl -112(%ebp),%ebx
	movl -108(%ebp),%eax
	addl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %eax
	leal -96(%ebp),%eax
	pushl %eax
	call Region__ContainsInterval
	addl $8,%esp
	testl %eax,%eax
	jne .L1092
.L1103:
	movl 16(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
.L1106:
	movl %eax,12(%edx)
.L1105:
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L1104:
	leal -124(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe40:
	.size	 Region__MaxSubset,.Lfe40-Region__MaxSubset
	.align 16
	.type	 Region__Flip,@function
Region__Flip:
	pushl %ebp
	movl %esp,%ebp
	subl $76,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpb $0,12(%ebp)
	jne .L1157
	cmpb $0,16(%ebp)
	jne .L1110
	movl 20(%ebp),%edi
	movl 8(%ebp),%esi
	jmp .L1158
	.align 16
.L1157:
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	negl %ecx
	movl %ecx,-20(%ebp)
	movl (%eax),%eax
	negl %eax
	jmp .L1159
	.align 16
.L1110:
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl %edx,-20(%ebp)
	movl 4(%eax),%eax
.L1159:
	movl %eax,-16(%ebp)
	cmpb $0,16(%ebp)
	je .L1112
	movl 8(%ebp),%eax
	movl 12(%eax),%ecx
	negl %ecx
	movl %ecx,-12(%ebp)
	movl 8(%eax),%eax
	negl %eax
	jmp .L1160
	.align 16
.L1112:
	movl 8(%ebp),%eax
	movl 8(%eax),%edx
	movl %edx,-12(%ebp)
	movl 12(%eax),%eax
.L1160:
	movl %eax,-8(%ebp)
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L1114
	movl 20(%ebp),%edi
	leal -20(%ebp),%esi
	movl %eax,-4(%ebp)
	jmp .L1158
	.align 16
.L1114:
	leal -52(%ebp),%ebx
	leal -44(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,-48(%ebp)
	movl 16(%edx),%eax
	testl %eax,%eax
	jne .L1115
	pushl $14740
	call _m3_fault
	.align 16
.L1115:
	movl 4(%eax),%eax
	movl %eax,-44(%ebp)
	pushl %ebx
	movl MM_Region+236,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-4(%ebp)
	addl $8,%esp
	cmpb $0,16(%ebp)
	je .L1116
	testl %edx,%edx
	jne .L1117
	pushl $14756
	call _m3_fault
	.align 16
.L1117:
	movl 4(%edx),%edx
	decl %edx
	movl %edx,-56(%ebp)
	jmp .L1118
	.align 16
.L1116:
	movl $0,-56(%ebp)
.L1118:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L1119
	pushl $14772
	call _m3_fault
	.align 16
.L1119:
	movl $0,-60(%ebp)
	movl 4(%eax),%eax
	decl %eax
	movl %eax,-64(%ebp)
	jmp .L1120
	.align 16
.L1121:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L1122
	pushl $14788
	call _m3_fault
	.align 16
.L1122:
	movl %eax,%edx
	movl -60(%ebp),%ecx
	cmpl %ecx,4(%edx)
	ja .L1123
	pushl $14786
	call _m3_fault
	.align 16
.L1123:
	movl -60(%ebp),%ecx
	leal (%ecx,%ecx,2),%eax
	sall $2,%eax
	addl (%edx),%eax
	movl 8(%eax),%ebx
	cmpb $0,12(%ebp)
	je .L1124
	leal -52(%ebp),%edx
	leal -44(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,-48(%ebp)
	testl %ebx,%ebx
	jne .L1125
	pushl $14836
	call _m3_fault
	.align 16
.L1125:
	movl 4(%ebx),%eax
	movl %eax,-44(%ebp)
	pushl %edx
	movl MM_Region+244,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L1126
	pushl $14852
	call _m3_fault
	.align 16
.L1126:
	movl 4(%esi),%edi
	decl %edi
	movl $0,-76(%ebp)
	movl 4(%ebx),%ecx
	decl %ecx
	movl %ecx,-68(%ebp)
	jmp .L1128
	.align 16
.L1129:
	testl %esi,%esi
	jne .L1130
	pushl $14884
	call _m3_fault
	.align 16
.L1130:
	cmpl %edi,4(%esi)
	ja .L1131
	pushl $14882
	call _m3_fault
	.align 16
.L1131:
	testl %ebx,%ebx
	jne .L1132
	pushl $14884
	call _m3_fault
	.align 16
.L1132:
	movl -76(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1133
	pushl $14882
	call _m3_fault
	.align 16
.L1133:
	movl (%ebx),%eax
	movl -76(%ebp),%ecx
	movl (%esi),%edx
	movl 4(%eax,%ecx,8),%eax
	negl %eax
	movl %eax,(%edx,%edi,8)
	cmpl %edi,4(%esi)
	ja .L1136
	pushl $14898
	call _m3_fault
	.align 16
.L1136:
	movl -76(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1137
	pushl $14898
	call _m3_fault
	.align 16
.L1137:
	movl (%ebx),%eax
	movl -76(%ebp),%ecx
	movl (%esi),%edx
	movl (%eax,%ecx,8),%eax
	negl %eax
	movl %eax,4(%edx,%edi,8)
	decl %edi
	incl %ecx
	movl %ecx,-76(%ebp)
.L1128:
	movl -68(%ebp),%ecx
	cmpl %ecx,-76(%ebp)
	jle .L1129
	jmp .L1139
	.align 16
.L1124:
	movl %ebx,%esi
.L1139:
	movl -4(%ebp),%ecx
	movl %ecx,-76(%ebp)
	testl %ecx,%ecx
	jne .L1140
	pushl $15012
	call _m3_fault
	.align 16
.L1140:
	movl -76(%ebp),%ebx
	movl -56(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1141
	pushl $15010
	call _m3_fault
	.align 16
.L1141:
	movl -56(%ebp),%ecx
	leal (%ecx,%ecx,2),%eax
	leal 0(,%eax,4),%edi
	movl (%ebx),%eax
	addl %edi,%eax
	movl %esi,8(%eax)
	cmpb $0,16(%ebp)
	je .L1152
	cmpl %ecx,4(%ebx)
	ja .L1144
	pushl $15042
	call _m3_fault
	.align 16
.L1144:
	movl 8(%ebp),%ecx
	movl %ecx,-72(%ebp)
	movl 16(%ecx),%eax
	testl %eax,%eax
	jne .L1145
	pushl $15044
	call _m3_fault
	.align 16
.L1145:
	movl %eax,%ebx
	movl -60(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1146
	pushl $15042
	call _m3_fault
	.align 16
.L1146:
	movl -76(%ebp),%ecx
	movl (%ecx),%eax
	movl -60(%ebp),%ecx
	leal (%ecx,%ecx,2),%edx
	leal 0(,%edx,4),%esi
	movl %esi,%edx
	addl (%ebx),%edx
	movl 4(%edx),%edx
	negl %edx
	movl %edx,(%eax,%edi)
	movl -76(%ebp),%ebx
	movl -56(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1148
	pushl $15058
	call _m3_fault
	.align 16
.L1148:
	movl -72(%ebp),%ecx
	movl 16(%ecx),%eax
	testl %eax,%eax
	jne .L1149
	pushl $15060
	call _m3_fault
	.align 16
.L1149:
	movl -60(%ebp),%ecx
	cmpl %ecx,4(%eax)
	ja .L1150
	pushl $15058
	call _m3_fault
	.align 16
.L1150:
	movl %edi,%edx
	movl (%eax),%eax
	addl (%ebx),%edx
	movl (%eax,%esi),%esi
	negl %esi
	movl %esi,4(%edx)
	decl -56(%ebp)
	jmp .L1151
	.align 16
.L1152:
	movl -56(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1153
	pushl $15106
	call _m3_fault
	.align 16
.L1153:
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	testl %eax,%eax
	jne .L1154
	pushl $15108
	call _m3_fault
	.align 16
.L1154:
	movl %eax,%ebx
	movl -56(%ebp),%ecx
	cmpl %ecx,4(%ebx)
	ja .L1155
	pushl $15106
	call _m3_fault
	.align 16
.L1155:
	movl -76(%ebp),%ecx
	movl (%ebx),%edx
	movl (%ecx),%ecx
	movl (%edx,%edi),%eax
	movl %eax,(%ecx,%edi)
	movl 4(%edx,%edi),%eax
	movl %eax,4(%ecx,%edi)
	incl -56(%ebp)
.L1151:
	incl -60(%ebp)
.L1120:
	movl -64(%ebp),%ecx
	cmpl %ecx,-60(%ebp)
	jle .L1121
	movl 20(%ebp),%edi
	leal -20(%ebp),%esi
.L1158:
	cld
	movl $5,%ecx
	rep
	movsl
	leal -88(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe41:
	.size	 Region__Flip,.Lfe41-Region__Flip
	.align 16
	.type	 Region__ContainsInterval,@function
Region__ContainsInterval:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L1162:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	xorl %ebx,%ebx
	testl %edi,%edi
	jne .L1163
	pushl $15300
	call _m3_fault
	.align 16
.L1163:
	movl 4(%edi),%esi
	movl %esi,-12(%ebp)
	jmp .L1164
	.align 16
.L1165:
	movl -12(%ebp),%esi
	leal (%esi,%ebx),%eax
	movl %eax,%ecx
	sarl $1,%ecx
	testl %edi,%edi
	jne .L1166
	pushl $15348
	call _m3_fault
	.align 16
.L1166:
	cmpl %ecx,4(%edi)
	ja .L1167
	pushl $15346
	call _m3_fault
	.align 16
.L1167:
	movl 8(%ebp),%edx
	movl (%edi),%eax
	movl (%edx),%edx
	cmpl %edx,4(%eax,%ecx,8)
	jle .L1168
	movl %ecx,-12(%ebp)
	jmp .L1164
	.align 16
.L1168:
	leal 1(%ecx),%ebx
.L1164:
	cmpl %ebx,-12(%ebp)
	jne .L1165
	movl $0,-12(%ebp)
	testl %edi,%edi
	jne .L1171
	pushl $15380
	call _m3_fault
	.align 16
.L1171:
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jle .L1172
	cmpl %eax,%ebx
	jb .L1174
	pushl $15378
	call _m3_fault
	.align 16
.L1174:
	movl 8(%ebp),%ecx
	movl (%edi),%edx
	movl (%ecx),%eax
	cmpl %eax,(%edx,%ebx,8)
	jg .L1172
	movl 4(%ecx),%eax
	cmpl %eax,4(%edx,%ebx,8)
	jl .L1172
	movl $1,-12(%ebp)
.L1172:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
.L1177:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe42:
	.size	 Region__ContainsInterval,.Lfe42-Region__ContainsInterval
	.align 16
	.type	 Region__ContainingInterval,@function
Region__ContainingInterval:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L1179:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
	xorl %ebx,%ebx
	testl %edi,%edi
	jne .L1180
	pushl $15508
	call _m3_fault
	.align 16
.L1180:
	movl 4(%edi),%esi
	movl %esi,-20(%ebp)
	jmp .L1181
	.align 16
.L1182:
	movl -20(%ebp),%esi
	leal (%esi,%ebx),%eax
	movl %eax,%ecx
	sarl $1,%ecx
	testl %edi,%edi
	jne .L1183
	pushl $15556
	call _m3_fault
	.align 16
.L1183:
	cmpl %ecx,4(%edi)
	ja .L1184
	pushl $15554
	call _m3_fault
	.align 16
.L1184:
	movl 8(%ebp),%edx
	movl (%edi),%eax
	movl (%edx),%edx
	cmpl %edx,4(%eax,%ecx,8)
	jle .L1185
	movl %ecx,-20(%ebp)
	jmp .L1181
	.align 16
.L1185:
	leal 1(%ecx),%ebx
.L1181:
	cmpl %ebx,-20(%ebp)
	jne .L1182
	testl %edi,%edi
	jne .L1188
	pushl $15588
	call _m3_fault
	.align 16
.L1188:
	movl 4(%edi),%eax
	cmpl %ebx,%eax
	jle .L1189
	cmpl %eax,%ebx
	jb .L1191
	pushl $15586
	call _m3_fault
	.align 16
.L1191:
	movl (%edi),%edx
	movl 8(%ebp),%eax
	movl (%edx,%ebx,8),%ecx
	cmpl %ecx,(%eax)
	jl .L1189
	movl 4(%eax),%eax
	cmpl %eax,4(%edx,%ebx,8)
	jl .L1189
	movl 16(%ebp),%eax
	movl %ecx,(%eax)
	movl 4(%edx,%ebx,8),%edx
	movl %edx,4(%eax)
	jmp .L1197
	.align 16
.L1189:
	movl 16(%ebp),%edx
	movl MI_Interval+44,%eax
	movl %eax,(%edx)
	movl MI_Interval+48,%eax
	movl %eax,4(%edx)
.L1197:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L1196:
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe43:
	.size	 Region__ContainingInterval,.Lfe43-Region__ContainingInterval
	.align 16
	.type	 _INITM_Region,@function
_INITM_Region:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl MM_Region+252,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,MM_Region+48
	movl $0,MM_Region+76
	movl $0,MM_Region+80
	movl $1,MM_Region+68
	movl $10,MM_Region+72
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe44:
	.size	 _INITM_Region,.Lfe44-_INITM_Region
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Region
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe45:
	.size	 _m3_fault,.Lfe45-_m3_fault
.globl MM_Region
.data
	.align 4
	.type	 MM_Region,@object
	.size	 MM_Region,1344
MM_Region:
	.long MM_Region+1200
	.zero	4
	.long MM_Region+236
	.zero	8
	.long MM_Region+664
	.zero	4
	.long MM_Region+1196
	.long MM_Region+1196
	.zero	4
	.long _INITM_Region
	.long Region__AddAxis
	.zero	4
	.long Region__Flesh
	.long Region__Skin
	.long Region__ComputeBBox
	.long Region__RegionOp
	.zero	16
	.long Region__JoinRegionsInternal
	.long Region__JoinH
	.long Region__MeetH
	.long Region__DifferenceH
	.long Region__EqualH
	.long Region__EqualV
	.long Region__SubsetH
	.long Region__OverlapH
	.long Region__ContainsInterval
	.long Region__ContainingInterval
	.long Region__FromRect
	.long Region__FromRects
	.long Region__ToRects
	.long Region__FromPoint
	.long Region__BoundingBox
	.long Region__Add
	.long Region__Sub
	.long Region__AddHV
	.long Region__Inset
	.long Region__PlaceAxis
	.long Region__Place
	.long Region__Join
	.long Region__JoinRect
	.long Region__JoinRegions
	.long Region__Meet
	.long Region__MeetRect
	.long Region__Difference
	.long Region__SymmetricDifference
	.long Region__MaxSubset
	.long Region__Flip
	.long Region__Equal
	.long Region__IsEmpty
	.long Region__IsRect
	.long Region__Member
	.long Region__SubsetRect
	.long Region__Subset
	.long Region__OverlapRect
	.long Region__Overlap
	.long MM_Region+244
	.long 43834508
	.long MM_Region+252
	.long 560258746
	.zero	4
	.long 947368816
	.ascii	"_INITM_Region"
	.zero	1
	.ascii	"ContainingInterval"
	.zero	1
	.ascii	"ContainsInterval"
	.zero	1
	.ascii	"Flip"
	.zero	1
	.ascii	"MaxSubset"
	.zero	1
	.ascii	"OverlapRect"
	.zero	1
	.ascii	"Overlap"
	.zero	1
	.ascii	"OverlapH"
	.zero	1
	.ascii	"SubsetRect"
	.zero	1
	.ascii	"Member"
	.zero	1
	.ascii	"Subset"
	.zero	1
	.ascii	"SubsetH"
	.zero	1
	.ascii	"IsRect"
	.zero	1
	.ascii	"IsEmpty"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"EqualV"
	.zero	1
	.ascii	"EqualH"
	.zero	1
	.ascii	"SymmetricDifference"
	.zero	1
	.ascii	"DifferenceH"
	.zero	1
	.ascii	"Difference"
	.zero	1
	.ascii	"MeetH"
	.zero	1
	.ascii	"Meet"
	.zero	1
	.ascii	"JoinH"
	.zero	1
	.ascii	"Join"
	.zero	1
	.ascii	"JoinRegions"
	.zero	1
	.ascii	"JoinRegionsInternal"
	.zero	1
	.ascii	"RegionOp"
	.zero	1
	.ascii	"ComputeBBox"
	.zero	1
	.ascii	"Skin"
	.zero	1
	.ascii	"Flesh"
	.zero	1
	.ascii	"MeetRect"
	.zero	1
	.ascii	"JoinRect"
	.zero	1
	.ascii	"ToRects"
	.zero	1
	.ascii	"FromRects"
	.zero	1
	.ascii	"Place"
	.zero	1
	.ascii	"PlaceAxis"
	.zero	1
	.ascii	"Inset"
	.zero	1
	.ascii	"Sub"
	.zero	1
	.ascii	"AddAxis"
	.zero	1
	.ascii	"Add"
	.zero	1
	.ascii	"AddHV"
	.zero	1
	.ascii	"BoundingBox"
	.zero	1
	.ascii	"FromPoint"
	.zero	1
	.ascii	"FromRect"
	.zero	3
	.long _INITM_Region
	.long MM_Region+260
	.zero	4
	.long Region__ContainingInterval
	.long MM_Region+274
	.zero	4
	.long Region__ContainsInterval
	.long MM_Region+293
	.zero	4
	.long Region__Flip
	.long MM_Region+310
	.long MI_Region+368
	.long Region__MaxSubset
	.long MM_Region+315
	.long MI_Region+364
	.long Region__OverlapRect
	.long MM_Region+325
	.long MI_Region+396
	.long Region__Overlap
	.long MM_Region+337
	.long MI_Region+400
	.long Region__OverlapH
	.long MM_Region+345
	.zero	4
	.long Region__SubsetRect
	.long MM_Region+354
	.long MI_Region+388
	.long Region__Member
	.long MM_Region+365
	.long MI_Region+384
	.long Region__Subset
	.long MM_Region+372
	.long MI_Region+392
	.long Region__SubsetH
	.long MM_Region+379
	.zero	4
	.long Region__IsRect
	.long MM_Region+387
	.long MI_Region+380
	.long Region__IsEmpty
	.long MM_Region+394
	.long MI_Region+376
	.long Region__Equal
	.long MM_Region+402
	.long MI_Region+372
	.long Region__EqualV
	.long MM_Region+408
	.zero	4
	.long Region__EqualH
	.long MM_Region+415
	.zero	4
	.long Region__SymmetricDifference
	.long MM_Region+422
	.long MI_Region+360
	.long Region__DifferenceH
	.long MM_Region+442
	.zero	4
	.long Region__Difference
	.long MM_Region+454
	.long MI_Region+356
	.long Region__MeetH
	.long MM_Region+465
	.zero	4
	.long Region__Meet
	.long MM_Region+471
	.long MI_Region+348
	.long Region__JoinH
	.long MM_Region+476
	.zero	4
	.long Region__Join
	.long MM_Region+482
	.long MI_Region+232
	.long Region__JoinRegions
	.long MM_Region+487
	.long MI_Region+344
	.long Region__JoinRegionsInternal
	.long MM_Region+499
	.zero	4
	.long Region__RegionOp
	.long MM_Region+519
	.zero	4
	.long Region__ComputeBBox
	.long MM_Region+528
	.zero	4
	.long Region__Skin
	.long MM_Region+540
	.zero	4
	.long Region__Flesh
	.long MM_Region+545
	.zero	4
	.long Region__MeetRect
	.long MM_Region+551
	.long MI_Region+352
	.long Region__JoinRect
	.long MM_Region+560
	.long MI_Region+236
	.long Region__ToRects
	.long MM_Region+569
	.long MI_Region+196
	.long Region__FromRects
	.long MM_Region+577
	.long MI_Region+88
	.long Region__Place
	.long MM_Region+587
	.long MI_Region+228
	.long Region__PlaceAxis
	.long MM_Region+593
	.long MI_Region+224
	.long Region__Inset
	.long MM_Region+603
	.long MI_Region+220
	.long Region__Sub
	.long MM_Region+609
	.long MI_Region+212
	.long Region__AddAxis
	.long MM_Region+613
	.zero	4
	.long Region__Add
	.long MM_Region+621
	.long MI_Region+208
	.long Region__AddHV
	.long MM_Region+625
	.long MI_Region+216
	.long Region__BoundingBox
	.long MM_Region+631
	.long MI_Region+204
	.long Region__FromPoint
	.long MM_Region+643
	.long MI_Region+200
	.long Region__FromRect
	.long MM_Region+653
	.long MI_Region+84
	.zero	4
.byte 42
.byte 48
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Region.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
