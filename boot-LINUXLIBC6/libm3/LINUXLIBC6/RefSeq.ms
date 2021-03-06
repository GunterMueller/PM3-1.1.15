	.file	"RefSeq.mc"
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
	.type	 RefSeq__Init,@function
RefSeq__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 4(%ebx),%eax
	testl %eax,%eax
	je .L2
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L4
.L2:
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,%eax
	cmpl %eax,%ecx
	jle .L5
	movl %ecx,-4(%ebp)
	jmp .L6
	.align 16
.L5:
	movl %eax,-4(%ebp)
.L6:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_RefSeq+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%ebx)
	jmp .L7
	.align 16
.L4:
	movl 8(%ebx),%ecx
	movl %ecx,%eax
	addl 12(%ebx),%eax
	decl %eax
	decl %edx
	cmpl %eax,%edx
	jle .L9
	movl %eax,%edx
.L9:
	movl %edx,%esi
	jmp .L10
	.align 16
.L11:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L12
	pushl $676
	call _m3_fault
	.align 16
.L12:
	cmpl %ecx,4(%eax)
	ja .L13
	pushl $674
	call _m3_fault
	.align 16
.L13:
	movl (%eax),%edx
	movl MM_RefSeq+148,%eax
	movl %eax,(%edx,%ecx,4)
	incl %ecx
.L10:
	cmpl %esi,%ecx
	jle .L11
	movl 4(%ebx),%edx
	testl %edx,%edx
	jne .L15
	pushl $708
	call _m3_fault
	.align 16
.L15:
	movl 12(%ebx),%eax
	addl 8(%ebx),%eax
	movl 4(%edx),%edx
	incl %edx
	subl %edx,%eax
	movl $-1,%edx
	cmpl %edx,%eax
	jle .L16
	movl %eax,%edx
.L16:
	xorl %ecx,%ecx
	movl %edx,%esi
	jmp .L18
	.align 16
.L19:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L20
	pushl $724
	call _m3_fault
	.align 16
.L20:
	cmpl %ecx,4(%eax)
	ja .L21
	pushl $722
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%edx
	movl MM_RefSeq+148,%eax
	movl %eax,(%edx,%ecx,4)
	incl %ecx
.L18:
	cmpl %esi,%ecx
	jle .L19
.L7:
	movl $0,12(%ebx)
	movl $0,8(%ebx)
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RefSeq__Init,.Lfe1-RefSeq__Init
	.align 16
	.type	 RefSeq__FromArray,@function
RefSeq__FromArray:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	movl $1,%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%ebx
	movl 4(%eax),%eax
	movl %eax,12(%ebx)
	movl $0,8(%ebx)
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 12(%ebx),%eax
	cmpl %edx,%eax
	jle .L24
	movl %eax,-4(%ebp)
	jmp .L25
	.align 16
.L24:
	movl %edx,-4(%ebp)
.L25:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_RefSeq+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,4(%ebx)
	xorl %edx,%edx
	movl 12(%ebx),%esi
	decl %esi
	addl $8,%esp
	jmp .L26
	.align 16
.L27:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L28
	pushl $932
	call _m3_fault
	.align 16
.L28:
	cmpl %edx,4(%eax)
	ja .L29
	pushl $930
	call _m3_fault
	.align 16
.L29:
	movl (%eax),%eax
	leal (%eax,%edx,4),%ecx
	movl 12(%ebp),%eax
	cmpl %edx,4(%eax)
	ja .L30
	pushl $930
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%eax
	movl (%eax,%edx,4),%eax
	movl %eax,(%ecx)
	incl %edx
.L26:
	cmpl %esi,%edx
	jle .L27
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RefSeq__FromArray,.Lfe2-RefSeq__FromArray
	.align 16
	.type	 RefSeq__Addhi,@function
RefSeq__Addhi:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L33
	pushl $1044
	call _m3_fault
	.align 16
.L33:
	movl 4(%eax),%eax
	cmpl %eax,12(%ebx)
	jne .L34
	pushl %ebx
	call RefSeq__Expand
	addl $4,%esp
.L34:
	movl 12(%ebx),%eax
	movl 8(%ebx),%ecx
	addl %eax,%ecx
	movl 4(%ebx),%edx
	testl %edx,%edx
	jne .L35
	pushl $1076
	call _m3_fault
	.align 16
.L35:
	movl 4(%edx),%eax
	cmpl %ecx,%eax
	jg .L36
	subl %eax,%ecx
.L36:
	cmpl %eax,%ecx
	jb .L39
	pushl $1090
	call _m3_fault
	.align 16
.L39:
	movl (%edx),%edx
	movl (%esi),%eax
	leal -8(%ebp),%esp
	movl %eax,(%edx,%ecx,4)
	incl 12(%ebx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RefSeq__Addhi,.Lfe3-RefSeq__Addhi
	.align 16
	.type	 RefSeq__Addlo,@function
RefSeq__Addlo:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L41
	pushl $1204
	call _m3_fault
	.align 16
.L41:
	movl 4(%eax),%eax
	cmpl %eax,12(%ebx)
	jne .L42
	pushl %ebx
	call RefSeq__Expand
	addl $4,%esp
.L42:
	movl 8(%ebx),%ecx
	testl %ecx,%ecx
	jne .L43
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L44
	pushl $1236
	call _m3_fault
	.align 16
.L44:
	movl 4(%eax),%eax
	decl %eax
	jns .L47
	pushl $1233
	call _m3_fault
	.align 16
.L43:
	leal -1(%ecx),%eax
	testl %eax,%eax
	jge .L47
	pushl $1233
	call _m3_fault
	.align 16
.L47:
	movl %eax,%ecx
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L48
	pushl $1252
	call _m3_fault
	.align 16
.L48:
	cmpl %ecx,4(%eax)
	ja .L49
	pushl $1250
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%edx
	leal -8(%ebp),%esp
	movl (%esi),%eax
	movl %eax,(%edx,%ecx,4)
	movl %ecx,8(%ebx)
	incl 12(%ebx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RefSeq__Addlo,.Lfe4-RefSeq__Addlo
	.align 16
	.type	 RefSeq__Expand,@function
RefSeq__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L51
	pushl $1380
	call _m3_fault
	.align 16
.L51:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_RefSeq+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	movl %esi,-32(%ebp)
	movl 8(%ebp),%edi
	addl $8,%esp
	subl 8(%edi),%ebx
	testl %esi,%esi
	jne .L52
	pushl $1444
	call _m3_fault
	.align 16
.L52:
	testl %ebx,%ebx
	jge .L53
	pushl $1441
	call _m3_fault
	.align 16
.L53:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L54
	pushl $1441
	call _m3_fault
	.align 16
.L54:
	movl (%esi),%ecx
	movl %ecx,-44(%ebp)
	movl 8(%ebp),%edi
	movl %ecx,-20(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L55
	pushl $1444
	call _m3_fault
	.align 16
.L55:
	movl %eax,-40(%ebp)
	movl 8(%ebp),%ecx
	movl -40(%ebp),%edi
	movl 8(%ecx),%edx
	movl %ebx,-24(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L57
	pushl $1441
	call _m3_fault
	.align 16
.L57:
	movl -40(%ebp),%ecx
	leal 0(,%ebx,4),%edi
	movl (%ecx),%eax
	leal (%eax,%edx,4),%eax
	movl %eax,-28(%ebp)
	movl %edi,-36(%ebp)
	pushl %edi
	pushl %eax
	movl -44(%ebp),%ecx
	pushl %ecx
	call memmove
	movl 8(%ebp),%edi
	addl $12,%esp
	movl 8(%edi),%edi
	movl %edi,-44(%ebp)
	movl %edi,-24(%ebp)
	leal (%edi,%ebx),%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L61
	pushl $1457
	call _m3_fault
	.align 16
.L61:
	movl -36(%ebp),%ebx
	addl (%esi),%ebx
	movl 8(%ebp),%ecx
	movl %ebx,-28(%ebp)
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L62
	pushl $1460
	call _m3_fault
	.align 16
.L62:
	movl 8(%ebp),%edi
	movl %eax,%esi
	movl 8(%edi),%edx
	movl %edx,-16(%ebp)
	movl %edx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L63
	pushl $1457
	call _m3_fault
	.align 16
.L63:
	movl (%esi),%esi
	movl %esi,-20(%ebp)
	cmpl %edx,-44(%ebp)
	je .L64
	pushl $1459
	call _m3_fault
	.align 16
.L64:
	leal 0(,%edx,4),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call memmove
	movl 8(%ebp),%ecx
	leal -56(%ebp),%esp
	movl $0,8(%ecx)
	movl -32(%ebp),%edi
	movl %edi,4(%ecx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RefSeq__Expand,.Lfe5-RefSeq__Expand
	.align 16
	.type	 RefSeq__Remhi,@function
RefSeq__Remhi:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%edx),%ebx
	movl 8(%edx),%eax
	addl %ebx,%eax
	leal -1(%eax),%ecx
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L66
	pushl $1636
	call _m3_fault
	.align 16
.L66:
	movl 4(%eax),%eax
	cmpl %ecx,%eax
	jg .L67
	subl %eax,%ecx
.L67:
	movl %edx,%eax
	leal -1(%ebx),%edx
	testl %edx,%edx
	jge .L69
	pushl $1649
	call _m3_fault
	.align 16
.L69:
	movl %edx,12(%eax)
	movl 4(%eax),%eax
	testl %eax,%eax
	jne .L70
	pushl $1668
	call _m3_fault
	.align 16
.L70:
	cmpl %ecx,4(%eax)
	ja .L71
	pushl $1666
	call _m3_fault
	.align 16
.L71:
	movl (%eax),%eax
	leal (%eax,%ecx,4),%edx
	movl MM_RefSeq+148,%eax
	movl (%edx),%ecx
	movl %eax,(%edx)
	movl %ecx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RefSeq__Remhi,.Lfe6-RefSeq__Remhi
	.align 16
	.type	 RefSeq__Remlo,@function
RefSeq__Remlo:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L73
	pushl $1780
	call _m3_fault
	.align 16
.L73:
	movl 8(%ecx),%edx
	cmpl %edx,4(%eax)
	ja .L74
	pushl $1778
	call _m3_fault
	.align 16
.L74:
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl MM_RefSeq+148,%eax
	movl (%edx),%ebx
	movl %eax,(%edx)
	movl 12(%ecx),%eax
	decl %eax
	jns .L75
	pushl $1793
	call _m3_fault
	.align 16
.L75:
	movl %eax,12(%ecx)
	movl 8(%ecx),%edx
	incl %edx
	movl %edx,8(%ecx)
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L76
	pushl $1828
	call _m3_fault
	.align 16
.L76:
	cmpl %edx,4(%eax)
	jne .L77
	movl $0,8(%ecx)
.L77:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RefSeq__Remlo,.Lfe7-RefSeq__Remlo
	.align 16
	.type	 RefSeq__Put,@function
RefSeq__Put:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 16(%ebp),%ebx
	movl 8(%edx),%ecx
	addl %eax,%ecx
	cmpl %eax,12(%edx)
	jg .L79
	pushl $1920
	call _m3_fault
	.align 16
.L79:
	movl 4(%edx),%edx
	testl %edx,%edx
	jne .L80
	pushl $1940
	call _m3_fault
	.align 16
.L80:
	movl 4(%edx),%eax
	cmpl %ecx,%eax
	jg .L81
	subl %eax,%ecx
.L81:
	cmpl %eax,%ecx
	jb .L84
	pushl $1954
	call _m3_fault
	.align 16
.L84:
	movl (%edx),%edx
	movl (%ebx),%eax
	movl %eax,(%edx,%ecx,4)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RefSeq__Put,.Lfe8-RefSeq__Put
	.align 16
	.type	 RefSeq__Get,@function
RefSeq__Get:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 8(%edx),%ecx
	addl %eax,%ecx
	cmpl %eax,12(%edx)
	jg .L86
	pushl $2032
	call _m3_fault
	.align 16
.L86:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L87
	pushl $2052
	call _m3_fault
	.align 16
.L87:
	movl 4(%eax),%edx
	cmpl %ecx,%edx
	jg .L88
	subl %edx,%ecx
.L88:
	cmpl %edx,%ecx
	jb .L91
	pushl $2066
	call _m3_fault
	.align 16
.L91:
	movl (%eax),%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%ecx,4),%eax
	ret
.Lfe9:
	.size	 RefSeq__Get,.Lfe9-RefSeq__Get
	.align 16
	.type	 RefSeq__Size,@function
RefSeq__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 12(%eax),%eax
	ret
.Lfe10:
	.size	 RefSeq__Size,.Lfe10-RefSeq__Size
	.align 16
	.type	 RefSeq__Gethi,@function
RefSeq__Gethi:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebx),%edx
	movl 8(%ebx),%eax
	addl %edx,%eax
	leal -1(%eax),%ecx
	testl %edx,%edx
	jg .L94
	pushl $2224
	call _m3_fault
	.align 16
.L94:
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L95
	pushl $2244
	call _m3_fault
	.align 16
.L95:
	movl 4(%eax),%edx
	cmpl %ecx,%edx
	jg .L96
	subl %edx,%ecx
.L96:
	cmpl %edx,%ecx
	jb .L99
	pushl $2290
	call _m3_fault
	.align 16
.L99:
	movl (%eax),%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%ecx,4),%eax
	ret
.Lfe11:
	.size	 RefSeq__Gethi,.Lfe11-RefSeq__Gethi
	.align 16
	.type	 RefSeq__Getlo,@function
RefSeq__Getlo:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	cmpl $0,12(%edx)
	jg .L101
	pushl $2368
	call _m3_fault
	.align 16
.L101:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L102
	pushl $2388
	call _m3_fault
	.align 16
.L102:
	movl 8(%edx),%edx
	cmpl %edx,4(%eax)
	ja .L103
	pushl $2386
	call _m3_fault
	.align 16
.L103:
	movl (%eax),%eax
	movl %ebp,%esp
	popl %ebp
	movl (%eax,%edx,4),%eax
	ret
.Lfe12:
	.size	 RefSeq__Getlo,.Lfe12-RefSeq__Getlo
	.align 16
	.type	 RefSeq__Cat,@function
RefSeq__Cat:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_RefSeq+228,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl 12(%ebp),%ecx
	movl $1,%edx
	movl 12(%ecx),%eax
	movl 8(%ebp),%ecx
	addl $4,%esp
	addl 12(%ecx),%eax
	movl %eax,12(%esi)
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl 12(%esi),%eax
	cmpl %edx,%eax
	jle .L105
	movl %eax,-4(%ebp)
	jmp .L106
	.align 16
.L105:
	movl %edx,-4(%ebp)
.L106:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_RefSeq+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,4(%esi)
	xorl %ebx,%ebx
	movl 8(%ebp),%ecx
	addl $8,%esp
	movl 12(%ecx),%edi
	decl %edi
	jmp .L107
	.align 16
.L108:
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 44(%eax),%eax
	movl %eax,-16(%ebp)
	pushl %ebx
	pushl %ecx
	movl -16(%ebp),%ecx
	call *%ecx
	movl %eax,%edx
	movl 4(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L109
	pushl $2516
	call _m3_fault
	.align 16
.L109:
	cmpl %ebx,4(%eax)
	ja .L110
	pushl $2514
	call _m3_fault
	.align 16
.L110:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
	incl %ebx
.L107:
	cmpl %edi,%ebx
	jle .L108
	movl 12(%ebp),%ecx
	xorl %ebx,%ebx
	movl 12(%ecx),%edi
	decl %edi
	jmp .L112
	.align 16
.L113:
	movl 12(%ebp),%ecx
	movl (%ecx),%eax
	movl 44(%eax),%edx
	pushl %ebx
	pushl %ecx
	call *%edx
	movl %eax,-16(%ebp)
	movl 4(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L114
	pushl $2564
	call _m3_fault
	.align 16
.L114:
	movl 8(%ebp),%ecx
	movl 12(%ecx),%edx
	addl %ebx,%edx
	cmpl %edx,4(%eax)
	ja .L115
	pushl $2562
	call _m3_fault
	.align 16
.L115:
	movl (%eax),%eax
	movl -16(%ebp),%ecx
	incl %ebx
	movl %ecx,(%eax,%edx,4)
.L112:
	cmpl %edi,%ebx
	jle .L113
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 RefSeq__Cat,.Lfe13-RefSeq__Cat
	.align 16
	.type	 RefSeq__Sub,@function
RefSeq__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl MM_RefSeq+228,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%ecx
	addl $4,%esp
	movl 12(%ecx),%eax
	cmpl %eax,12(%ebp)
	jge .L118
	testl %ebx,%ebx
	jne .L119
.L118:
	movl $0,12(%esi)
	jmp .L120
	.align 16
.L119:
	movl %eax,%edx
	subl 12(%ebp),%edx
	movl %ebx,%eax
	cmpl %edx,%eax
	jle .L121
	movl %edx,%eax
.L121:
	testl %eax,%eax
	jge .L122
	pushl $2737
	call _m3_fault
	.align 16
.L122:
	movl %eax,12(%esi)
.L120:
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $1,%edx
	movl 12(%esi),%eax
	cmpl %edx,%eax
	jle .L123
	movl %eax,-4(%ebp)
	jmp .L124
	.align 16
.L123:
	movl %edx,-4(%ebp)
.L124:
	leal -12(%ebp),%eax
	pushl %eax
	movl MM_RefSeq+220,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,4(%esi)
	xorl %ebx,%ebx
	movl 12(%esi),%edi
	decl %edi
	addl $8,%esp
	jmp .L125
	.align 16
.L126:
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 44(%eax),%edx
	movl 12(%ebp),%eax
	addl %ebx,%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movl 4(%esi),%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L127
	pushl $2804
	call _m3_fault
	.align 16
.L127:
	cmpl %ebx,4(%eax)
	ja .L128
	pushl $2802
	call _m3_fault
	.align 16
.L128:
	movl (%eax),%eax
	movl %edx,(%eax,%ebx,4)
	incl %ebx
.L125:
	cmpl %edi,%ebx
	jle .L126
	leal -24(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 RefSeq__Sub,.Lfe14-RefSeq__Sub
	.align 16
	.type	 M_RefSeq_t23b3c702_LINK,@function
M_RefSeq_t23b3c702_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RefSeq+656,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_RefSeq+152,%eax
	movl %eax,4(%edx)
	movl MM_RefSeq+156,%eax
	movl %eax,8(%edx)
	movl MM_RefSeq+160,%eax
	movl %eax,12(%edx)
	movl MM_RefSeq+164,%eax
	movl %eax,16(%edx)
	movl MM_RefSeq+172,%eax
	movl %eax,20(%edx)
	movl MM_RefSeq+176,%eax
	movl %eax,24(%edx)
	movl MM_RefSeq+180,%eax
	movl %eax,28(%edx)
	movl MM_RefSeq+188,%eax
	movl %eax,32(%edx)
	movl MM_RefSeq+192,%eax
	movl %eax,36(%edx)
	movl MM_RefSeq+196,%eax
	movl %eax,40(%edx)
	movl MM_RefSeq+184,%eax
	movl %eax,44(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_RefSeq_t23b3c702_LINK,.Lfe15-M_RefSeq_t23b3c702_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RefSeq
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_RefSeq
.data
	.align 4
	.type	 MM_RefSeq,@object
	.size	 MM_RefSeq,692
MM_RefSeq:
	.long MM_RefSeq+492
	.long MM_RefSeq+44
	.long MM_RefSeq+220
	.long MM_RefSeq+208
	.zero	4
	.long MM_RefSeq+316
	.zero	4
	.long MM_RefSeq+488
	.long MM_RefSeq+488
	.zero	16
	.long 598984450
.byte 46
.byte 103
.byte 217
.byte 41
.byte 44
.byte 160
.byte 106
.byte 10
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_RefSeq+651
	.zero	4
	.long M_RefSeq_t23b3c702_LINK
	.long 817642683
	.zero	12
	.long MM_RefSeq+664
	.long MM_RefSeq+682
	.zero	8
	.long RefSeq__Init
	.long RefSeq__FromArray
	.long RefSeq__Addhi
	.long RefSeq__Addlo
	.long RefSeq__Expand
	.long RefSeq__Remhi
	.long RefSeq__Remlo
	.long RefSeq__Put
	.long RefSeq__Get
	.long RefSeq__Size
	.long RefSeq__Gethi
	.long RefSeq__Getlo
	.long RefSeq__Cat
	.long RefSeq__Sub
	.long 381321881
	.long 598984450
	.zero	4
	.long MM_RefSeq+228
	.long 698659530
	.long MM_RefSeq+656
	.long 381321881
	.ascii	"Sub"
	.zero	1
	.ascii	"Cat"
	.zero	1
	.ascii	"Getlo"
	.zero	1
	.ascii	"Gethi"
	.zero	1
	.ascii	"Size"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"Remlo"
	.zero	1
	.ascii	"Remhi"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"Addlo"
	.zero	1
	.ascii	"Addhi"
	.zero	1
	.ascii	"FromArray"
	.zero	1
	.ascii	"Init"
	.zero	2
	.long RefSeq__Sub
	.long MM_RefSeq+236
	.long MI_RefSeq+152
	.long RefSeq__Cat
	.long MM_RefSeq+240
	.long MI_RefSeq+148
	.long RefSeq__Getlo
	.long MM_RefSeq+244
	.zero	4
	.long RefSeq__Gethi
	.long MM_RefSeq+250
	.zero	4
	.long RefSeq__Size
	.long MM_RefSeq+256
	.zero	4
	.long RefSeq__Get
	.long MM_RefSeq+261
	.zero	4
	.long RefSeq__Put
	.long MM_RefSeq+265
	.zero	4
	.long RefSeq__Remlo
	.long MM_RefSeq+269
	.zero	4
	.long RefSeq__Remhi
	.long MM_RefSeq+275
	.zero	4
	.long RefSeq__Expand
	.long MM_RefSeq+281
	.zero	4
	.long RefSeq__Addlo
	.long MM_RefSeq+288
	.zero	4
	.long RefSeq__Addhi
	.long MM_RefSeq+294
	.zero	4
	.long RefSeq__FromArray
	.long MM_RefSeq+300
	.zero	4
	.long RefSeq__Init
	.long MM_RefSeq+310
	.zero	8
.byte 42
.byte 148
.byte 4
.byte 0
	.ascii	"RefSeq.m3 => /home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modul"
	.ascii	"a3/m3compiler/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LIN"
	.ascii	"UXLIBC6/libm3/src/sequence/Sequence.mg"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	6
	.long 598984450
	.ascii	"(Sequence Refany)"
	.zero	1
	.ascii	"RefSeq.T"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
