	.file	"LibSeq.mc"
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
	.type	 LibSeq__Init,@function
LibSeq__Init:
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
	movl MM_LibSeq+224,%eax
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
	movl (%eax),%eax
	movl MM_LibSeq+148,%edx
	movl %edx,(%eax,%ecx,8)
	movl MM_LibSeq+152,%edx
	movl %edx,4(%eax,%ecx,8)
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
	movl (%eax),%eax
	movl MM_LibSeq+148,%edx
	movl %edx,(%eax,%ecx,8)
	movl MM_LibSeq+152,%edx
	movl %edx,4(%eax,%ecx,8)
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
	.size	 LibSeq__Init,.Lfe1-LibSeq__Init
	.align 16
	.type	 LibSeq__FromArray,@function
LibSeq__FromArray:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	movl $1,%edx
	pushl %esi
	leal -4(%ebp),%edi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%esi
	movl 4(%eax),%eax
	movl %eax,12(%esi)
	movl $0,8(%esi)
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 12(%esi),%eax
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
	movl MM_LibSeq+224,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%esi)
	xorl %ebx,%ebx
	movl 12(%esi),%edi
	decl %edi
	movl %edi,-16(%ebp)
	addl $8,%esp
	jmp .L26
	.align 16
.L27:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L28
	pushl $932
	call _m3_fault
	.align 16
.L28:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L29
	pushl $930
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%eax
	cmpl %ebx,4(%eax)
	ja .L30
	pushl $930
	call _m3_fault
	.align 16
.L30:
	movl (%edx),%ecx
	movl (%eax),%edx
	movl (%edx,%ebx,8),%eax
	movl %eax,(%ecx,%ebx,8)
	movl 4(%edx,%ebx,8),%eax
	movl %eax,4(%ecx,%ebx,8)
	incl %ebx
.L26:
	cmpl %ebx,-16(%ebp)
	jge .L27
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LibSeq__FromArray,.Lfe2-LibSeq__FromArray
	.align 16
	.type	 LibSeq__Addhi,@function
LibSeq__Addhi:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L33
	pushl $1044
	call _m3_fault
	.align 16
.L33:
	movl 4(%eax),%eax
	cmpl %eax,12(%esi)
	jne .L34
	pushl %esi
	call LibSeq__Expand
	addl $4,%esp
.L34:
	movl 12(%esi),%eax
	movl 8(%esi),%ebx
	addl %eax,%ebx
	movl 4(%esi),%edx
	testl %edx,%edx
	jne .L35
	pushl $1076
	call _m3_fault
	.align 16
.L35:
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jg .L36
	subl %eax,%ebx
.L36:
	cmpl %eax,%ebx
	jb .L39
	pushl $1090
	call _m3_fault
	.align 16
.L39:
	movl (%edx),%ecx
	movl 12(%ebp),%edx
	leal -8(%ebp),%esp
	movl (%edx),%eax
	movl %eax,(%ecx,%ebx,8)
	movl 4(%edx),%eax
	movl %eax,4(%ecx,%ebx,8)
	incl 12(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LibSeq__Addhi,.Lfe3-LibSeq__Addhi
	.align 16
	.type	 LibSeq__Addlo,@function
LibSeq__Addlo:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L41
	pushl $1204
	call _m3_fault
	.align 16
.L41:
	movl 4(%eax),%eax
	cmpl %eax,12(%esi)
	jne .L42
	pushl %esi
	call LibSeq__Expand
	addl $4,%esp
.L42:
	movl 8(%esi),%ebx
	testl %ebx,%ebx
	jne .L43
	movl 4(%esi),%eax
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
	leal -1(%ebx),%eax
	testl %eax,%eax
	jge .L47
	pushl $1233
	call _m3_fault
	.align 16
.L47:
	movl %eax,%ebx
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L48
	pushl $1252
	call _m3_fault
	.align 16
.L48:
	cmpl %ebx,4(%eax)
	ja .L49
	pushl $1250
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%ecx
	movl 12(%ebp),%edx
	leal -8(%ebp),%esp
	movl (%edx),%eax
	movl %eax,(%ecx,%ebx,8)
	movl 4(%edx),%eax
	movl %eax,4(%ecx,%ebx,8)
	movl %ebx,8(%esi)
	incl 12(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 LibSeq__Addlo,.Lfe4-LibSeq__Addlo
	.align 16
	.type	 LibSeq__Expand,@function
LibSeq__Expand:
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
	movl MM_LibSeq+224,%eax
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
	leal 0(,%ebx,8),%edi
	movl (%ecx),%eax
	leal (%eax,%edx,8),%eax
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
	leal 0(,%edx,8),%eax
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
	.size	 LibSeq__Expand,.Lfe5-LibSeq__Expand
	.align 16
	.type	 LibSeq__Remhi,@function
LibSeq__Remhi:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
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
	leal (%eax,%ecx,8),%edx
	movl %edx,-20(%ebp)
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_LibSeq+148,%eax
	movl %eax,(%edx)
	movl MM_LibSeq+152,%eax
	movl %eax,4(%edx)
	movl 12(%ebp),%edx
	movl -8(%ebp),%eax
	movl %eax,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 LibSeq__Remhi,.Lfe6-LibSeq__Remhi
	.align 16
	.type	 LibSeq__Remlo,@function
LibSeq__Remlo:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	movl 8(%ebp),%ecx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
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
	leal (%eax,%edx,8),%edx
	movl %edx,-20(%ebp)
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	movl 4(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_LibSeq+148,%eax
	movl %eax,(%edx)
	movl MM_LibSeq+152,%eax
	movl %eax,4(%edx)
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
	movl 12(%ebp),%eax
	movl -8(%ebp),%edx
	movl %edx,(%eax)
	movl -4(%ebp),%edx
	movl %edx,4(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 LibSeq__Remlo,.Lfe7-LibSeq__Remlo
	.align 16
	.type	 LibSeq__Put,@function
LibSeq__Put:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 8(%edx),%ebx
	addl %eax,%ebx
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
	cmpl %ebx,%eax
	jg .L81
	subl %eax,%ebx
.L81:
	cmpl %eax,%ebx
	jb .L84
	pushl $1954
	call _m3_fault
	.align 16
.L84:
	movl (%edx),%ecx
	movl 16(%ebp),%edx
	movl (%edx),%eax
	movl %eax,(%ecx,%ebx,8)
	movl 4(%edx),%eax
	movl %eax,4(%ecx,%ebx,8)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 LibSeq__Put,.Lfe8-LibSeq__Put
	.align 16
	.type	 LibSeq__Get,@function
LibSeq__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	movl 8(%edx),%ebx
	addl %eax,%ebx
	cmpl %eax,12(%edx)
	jg .L86
	pushl $2032
	call _m3_fault
	.align 16
.L86:
	movl 4(%edx),%edx
	testl %edx,%edx
	jne .L87
	pushl $2052
	call _m3_fault
	.align 16
.L87:
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jg .L88
	subl %eax,%ebx
.L88:
	cmpl %eax,%ebx
	jb .L91
	pushl $2066
	call _m3_fault
	.align 16
.L91:
	movl (%edx),%edx
	movl 16(%ebp),%ecx
	movl (%edx,%ebx,8),%eax
	movl %eax,(%ecx)
	movl 4(%edx,%ebx,8),%eax
	movl %eax,4(%ecx)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 LibSeq__Get,.Lfe9-LibSeq__Get
	.align 16
	.type	 LibSeq__Size,@function
LibSeq__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 12(%eax),%eax
	ret
.Lfe10:
	.size	 LibSeq__Size,.Lfe10-LibSeq__Size
	.align 16
	.type	 LibSeq__Gethi,@function
LibSeq__Gethi:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ecx),%edx
	movl 8(%ecx),%eax
	addl %edx,%eax
	leal -1(%eax),%ebx
	testl %edx,%edx
	jg .L94
	pushl $2224
	call _m3_fault
	.align 16
.L94:
	movl 4(%ecx),%edx
	testl %edx,%edx
	jne .L95
	pushl $2244
	call _m3_fault
	.align 16
.L95:
	movl 4(%edx),%eax
	cmpl %ebx,%eax
	jg .L96
	subl %eax,%ebx
.L96:
	cmpl %eax,%ebx
	jb .L99
	pushl $2290
	call _m3_fault
	.align 16
.L99:
	movl (%edx),%edx
	movl 12(%ebp),%ecx
	movl (%edx,%ebx,8),%eax
	movl %eax,(%ecx)
	movl 4(%edx,%ebx,8),%eax
	movl %eax,4(%ecx)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 LibSeq__Gethi,.Lfe11-LibSeq__Gethi
	.align 16
	.type	 LibSeq__Getlo,@function
LibSeq__Getlo:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
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
	movl 8(%edx),%ebx
	cmpl %ebx,4(%eax)
	ja .L103
	pushl $2386
	call _m3_fault
	.align 16
.L103:
	movl (%eax),%edx
	movl 12(%ebp),%ecx
	movl (%edx,%ebx,8),%eax
	movl %eax,(%ecx)
	movl 4(%edx,%ebx,8),%eax
	movl %eax,4(%ecx)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 LibSeq__Getlo,.Lfe12-LibSeq__Getlo
	.align 16
	.type	 LibSeq__Cat,@function
LibSeq__Cat:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_LibSeq+232,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edi
	movl $1,%edx
	addl $4,%esp
	movl 12(%ecx),%eax
	addl 12(%edi),%eax
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
	movl MM_LibSeq+224,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,4(%esi)
	xorl %ebx,%ebx
	movl 8(%ebp),%edi
	addl $8,%esp
	movl 12(%edi),%edi
	decl %edi
	movl %edi,-20(%ebp)
	jmp .L107
	.align 16
.L108:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L109
	pushl $2516
	call _m3_fault
	.align 16
.L109:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L110
	pushl $2514
	call _m3_fault
	.align 16
.L110:
	movl (%edx),%eax
	movl 8(%ebp),%ecx
	leal (%eax,%ebx,8),%edx
	movl (%ecx),%eax
	movl 44(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %ecx
	call *%eax
	incl %ebx
	addl $12,%esp
.L107:
	cmpl %ebx,-20(%ebp)
	jge .L108
	movl 12(%ebp),%edi
	xorl %ebx,%ebx
	movl 12(%edi),%edi
	decl %edi
	movl %edi,-20(%ebp)
	jmp .L112
	.align 16
.L113:
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L114
	pushl $2564
	call _m3_fault
	.align 16
.L114:
	movl 8(%ebp),%ecx
	movl %eax,%edx
	movl 12(%ecx),%ecx
	addl %ebx,%ecx
	movl %ecx,-16(%ebp)
	cmpl %ecx,4(%edx)
	ja .L115
	pushl $2562
	call _m3_fault
	.align 16
.L115:
	movl (%edx),%eax
	movl -16(%ebp),%edi
	movl 12(%ebp),%ecx
	leal (%eax,%edi,8),%edx
	movl (%ecx),%eax
	movl 44(%eax),%eax
	pushl %edx
	pushl %ebx
	pushl %ecx
	call *%eax
	incl %ebx
	addl $12,%esp
.L112:
	cmpl %ebx,-20(%ebp)
	jge .L113
	leal -32(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 LibSeq__Cat,.Lfe13-LibSeq__Cat
	.align 16
	.type	 LibSeq__Sub,@function
LibSeq__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl MM_LibSeq+232,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	movl 8(%ebp),%edi
	addl $4,%esp
	movl 12(%edi),%eax
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
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
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
	movl MM_LibSeq+224,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,4(%esi)
	xorl %ebx,%ebx
	movl 12(%esi),%edi
	decl %edi
	movl %edi,-16(%ebp)
	addl $8,%esp
	jmp .L125
	.align 16
.L126:
	movl 4(%esi),%eax
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
	movl 8(%ebp),%edi
	leal (%eax,%ebx,8),%ecx
	movl (%edi),%eax
	movl 44(%eax),%edx
	pushl %ecx
	movl 12(%ebp),%eax
	addl %ebx,%eax
	pushl %eax
	pushl %edi
	call *%edx
	incl %ebx
	addl $12,%esp
.L125:
	cmpl %ebx,-16(%ebp)
	jge .L126
	leal -28(%ebp),%esp
	movl %esi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 LibSeq__Sub,.Lfe14-LibSeq__Sub
	.align 16
	.type	 M_LibSeq_t85f7afeb_LINK,@function
M_LibSeq_t85f7afeb_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_LibSeq+552,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_LibSeq+156,%eax
	movl %eax,4(%edx)
	movl MM_LibSeq+160,%eax
	movl %eax,8(%edx)
	movl MM_LibSeq+164,%eax
	movl %eax,12(%edx)
	movl MM_LibSeq+168,%eax
	movl %eax,16(%edx)
	movl MM_LibSeq+176,%eax
	movl %eax,20(%edx)
	movl MM_LibSeq+180,%eax
	movl %eax,24(%edx)
	movl MM_LibSeq+184,%eax
	movl %eax,28(%edx)
	movl MM_LibSeq+192,%eax
	movl %eax,32(%edx)
	movl MM_LibSeq+196,%eax
	movl %eax,36(%edx)
	movl MM_LibSeq+200,%eax
	movl %eax,40(%edx)
	movl MM_LibSeq+188,%eax
	movl %eax,44(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_LibSeq_t85f7afeb_LINK,.Lfe15-M_LibSeq_t85f7afeb_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_LibSeq
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_LibSeq
.data
	.align 4
	.type	 MM_LibSeq,@object
	.size	 MM_LibSeq,588
MM_LibSeq:
	.long MM_LibSeq+497
	.long MM_LibSeq+44
	.long MM_LibSeq+224
	.long MM_LibSeq+212
	.zero	4
	.long MM_LibSeq+320
	.zero	4
	.long MM_LibSeq+492
	.long MM_LibSeq+492
	.zero	16
	.long -2047365141
.byte 53
.byte 240
.byte 28
.byte 156
.byte 222
.byte 95
.byte 235
.byte 25
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_LibSeq+547
	.zero	4
	.long M_LibSeq_t85f7afeb_LINK
	.long 53078855
	.zero	12
	.long MM_LibSeq+560
	.long MM_LibSeq+577
	.zero	12
	.long LibSeq__Init
	.long LibSeq__FromArray
	.long LibSeq__Addhi
	.long LibSeq__Addlo
	.long LibSeq__Expand
	.long LibSeq__Remhi
	.long LibSeq__Remlo
	.long LibSeq__Put
	.long LibSeq__Get
	.long LibSeq__Size
	.long LibSeq__Gethi
	.long LibSeq__Getlo
	.long LibSeq__Cat
	.long LibSeq__Sub
	.long -1105469154
	.long -2047365141
	.zero	4
	.long MM_LibSeq+232
	.long 1142142378
	.long MM_LibSeq+552
	.long -1105469154
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
	.long LibSeq__Sub
	.long MM_LibSeq+240
	.long MI_LibSeq+152
	.long LibSeq__Cat
	.long MM_LibSeq+244
	.long MI_LibSeq+148
	.long LibSeq__Getlo
	.long MM_LibSeq+248
	.zero	4
	.long LibSeq__Gethi
	.long MM_LibSeq+254
	.zero	4
	.long LibSeq__Size
	.long MM_LibSeq+260
	.zero	4
	.long LibSeq__Get
	.long MM_LibSeq+265
	.zero	4
	.long LibSeq__Put
	.long MM_LibSeq+269
	.zero	4
	.long LibSeq__Remlo
	.long MM_LibSeq+273
	.zero	4
	.long LibSeq__Remhi
	.long MM_LibSeq+279
	.zero	4
	.long LibSeq__Expand
	.long MM_LibSeq+285
	.zero	4
	.long LibSeq__Addlo
	.long MM_LibSeq+292
	.zero	4
	.long LibSeq__Addhi
	.long MM_LibSeq+298
	.zero	4
	.long LibSeq__FromArray
	.long MM_LibSeq+304
	.zero	4
	.long LibSeq__Init
	.long MM_LibSeq+314
	.zero	8
.byte 42
.byte 148
.byte 4
.byte 4
.byte 0
	.ascii	"LibSeq.m3 => ../../libm3/src/sequence/Sequence.mg"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	6
	.long -2047365141
	.ascii	"(Sequence Lib.T)"
	.zero	1
	.ascii	"LibSeq.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
