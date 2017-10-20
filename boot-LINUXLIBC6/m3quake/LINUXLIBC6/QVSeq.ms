	.file	"QVSeq.mc"
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
	.type	 QVSeq__Init,@function
QVSeq__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%ecx
	movl 4(%edi),%eax
	testl %eax,%eax
	je .L2
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L4
.L2:
	leal -4(%ebp),%ebx
	movl %ebx,-12(%ebp)
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
	movl MM_QVSeq+228,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%edi)
	jmp .L7
	.align 16
.L4:
	movl 8(%edi),%ecx
	movl %ecx,%eax
	addl 12(%edi),%eax
	decl %eax
	decl %edx
	cmpl %eax,%edx
	jle .L9
	movl %eax,%edx
.L9:
	movl %ecx,%esi
	movl %edx,-16(%ebp)
	jmp .L10
	.align 16
.L11:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L12
	pushl $676
	call _m3_fault
	.align 16
.L12:
	cmpl %esi,4(%eax)
	ja .L13
	pushl $674
	call _m3_fault
	.align 16
.L13:
	movl (%eax),%ecx
	leal (%esi,%esi,2),%edx
	sall $2,%edx
	movl $MM_QVSeq+148,%ebx
	movl MM_QVSeq+148,%eax
	incl %esi
	movl %eax,(%ecx,%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%ecx,%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%ecx,%edx)
.L10:
	cmpl %esi,-16(%ebp)
	jge .L11
	movl 4(%edi),%edx
	testl %edx,%edx
	jne .L15
	pushl $708
	call _m3_fault
	.align 16
.L15:
	movl 12(%edi),%eax
	addl 8(%edi),%eax
	movl 4(%edx),%edx
	incl %edx
	subl %edx,%eax
	movl $-1,%edx
	cmpl %edx,%eax
	jle .L16
	movl %eax,%edx
.L16:
	xorl %esi,%esi
	movl %edx,-20(%ebp)
	jmp .L18
	.align 16
.L19:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L20
	pushl $724
	call _m3_fault
	.align 16
.L20:
	cmpl %esi,4(%eax)
	ja .L21
	pushl $722
	call _m3_fault
	.align 16
.L21:
	movl (%eax),%ecx
	leal (%esi,%esi,2),%edx
	sall $2,%edx
	movl $MM_QVSeq+148,%ebx
	movl MM_QVSeq+148,%eax
	incl %esi
	movl %eax,(%ecx,%edx)
	movl 4(%ebx),%eax
	movl %eax,4(%ecx,%edx)
	movl 8(%ebx),%eax
	movl %eax,8(%ecx,%edx)
.L18:
	cmpl %esi,-20(%ebp)
	jge .L19
.L7:
	movl $0,12(%edi)
	movl $0,8(%edi)
	leal -32(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 QVSeq__Init,.Lfe1-QVSeq__Init
	.align 16
	.type	 QVSeq__FromArray,@function
QVSeq__FromArray:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	leal -4(%ebp),%ecx
	pushl %esi
	movl $1,%edx
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edi
	movl 4(%eax),%eax
	movl %eax,12(%edi)
	movl $0,8(%edi)
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl 12(%edi),%eax
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
	movl MM_QVSeq+228,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,4(%edi)
	xorl %esi,%esi
	movl 12(%edi),%ecx
	decl %ecx
	movl %ecx,-16(%ebp)
	addl $8,%esp
	jmp .L26
	.align 16
.L27:
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L28
	pushl $932
	call _m3_fault
	.align 16
.L28:
	cmpl %esi,4(%eax)
	ja .L29
	pushl $930
	call _m3_fault
	.align 16
.L29:
	movl 12(%ebp),%edx
	cmpl %esi,4(%edx)
	ja .L30
	pushl $930
	call _m3_fault
	.align 16
.L30:
	movl (%eax),%ebx
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
.L26:
	cmpl %esi,-16(%ebp)
	jge .L27
	leal -28(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QVSeq__FromArray,.Lfe2-QVSeq__FromArray
	.align 16
	.type	 QVSeq__Addhi,@function
QVSeq__Addhi:
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
	call QVSeq__Expand
	addl $4,%esp
.L34:
	movl 12(%esi),%eax
	movl 8(%esi),%edx
	addl %eax,%edx
	movl 4(%esi),%ecx
	testl %ecx,%ecx
	jne .L35
	pushl $1076
	call _m3_fault
	.align 16
.L35:
	movl 4(%ecx),%eax
	cmpl %edx,%eax
	jg .L36
	subl %eax,%edx
.L36:
	cmpl %eax,%edx
	jb .L39
	pushl $1090
	call _m3_fault
	.align 16
.L39:
	movl (%ecx),%ebx
	leal (%edx,%edx,2),%ecx
	sall $2,%ecx
	movl 12(%ebp),%edx
	leal -8(%ebp),%esp
	movl (%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	incl 12(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QVSeq__Addhi,.Lfe3-QVSeq__Addhi
	.align 16
	.type	 QVSeq__Addlo,@function
QVSeq__Addlo:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L41
	pushl $1204
	call _m3_fault
	.align 16
.L41:
	movl 4(%eax),%eax
	cmpl %eax,12(%edi)
	jne .L42
	pushl %edi
	call QVSeq__Expand
	addl $4,%esp
.L42:
	movl 8(%edi),%esi
	testl %esi,%esi
	jne .L43
	movl 4(%edi),%eax
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
	leal -1(%esi),%eax
	testl %eax,%eax
	jge .L47
	pushl $1233
	call _m3_fault
	.align 16
.L47:
	movl %eax,%esi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L48
	pushl $1252
	call _m3_fault
	.align 16
.L48:
	cmpl %esi,4(%eax)
	ja .L49
	pushl $1250
	call _m3_fault
	.align 16
.L49:
	movl (%eax),%ebx
	leal (%esi,%esi,2),%ecx
	sall $2,%ecx
	movl 12(%ebp),%edx
	leal -12(%ebp),%esp
	movl (%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl %esi,8(%edi)
	incl 12(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QVSeq__Addlo,.Lfe4-QVSeq__Addlo
	.align 16
	.type	 QVSeq__Expand,@function
QVSeq__Expand:
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
	movl MM_QVSeq+228,%eax
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
	movl %ecx,-36(%ebp)
	movl 8(%ebp),%edi
	movl %ecx,-20(%ebp)
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L55
	pushl $1444
	call _m3_fault
	.align 16
.L55:
	movl %eax,-44(%ebp)
	movl 8(%ebp),%ecx
	movl -44(%ebp),%edi
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
	movl -44(%ebp),%ecx
	leal (%edx,%edx,2),%edx
	movl (%ecx),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-28(%ebp)
	leal (%ebx,%ebx,2),%eax
	sall $2,%eax
	movl %eax,-40(%ebp)
	pushl %eax
	pushl %edx
	movl -36(%ebp),%edi
	pushl %edi
	call memmove
	movl 8(%ebp),%ecx
	addl $12,%esp
	movl 8(%ecx),%ecx
	movl %ecx,-44(%ebp)
	movl %ecx,-24(%ebp)
	leal (%ecx,%ebx),%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L61
	pushl $1457
	call _m3_fault
	.align 16
.L61:
	movl -40(%ebp),%edi
	addl (%esi),%edi
	movl %edi,-40(%ebp)
	movl 8(%ebp),%ecx
	movl %edi,-28(%ebp)
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
	movl (%esi),%ebx
	movl %ebx,-20(%ebp)
	cmpl %edx,-44(%ebp)
	je .L64
	pushl $1459
	call _m3_fault
	.align 16
.L64:
	leal (%edx,%edx,2),%eax
	sall $2,%eax
	pushl %eax
	pushl %ebx
	movl -40(%ebp),%ecx
	pushl %ecx
	call memmove
	movl 8(%ebp),%edi
	leal -56(%ebp),%esp
	movl $0,8(%edi)
	movl -32(%ebp),%ecx
	movl %ecx,4(%edi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QVSeq__Expand,.Lfe5-QVSeq__Expand
	.align 16
	.type	 QVSeq__Remhi,@function
QVSeq__Remhi:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 12(%ebx),%esi
	movl 8(%ebx),%eax
	addl %esi,%eax
	leal -1(%eax),%ecx
	movl 4(%ebx),%edx
	testl %edx,%edx
	jne .L66
	pushl $1636
	call _m3_fault
	.align 16
.L66:
	movl 4(%edx),%edx
	cmpl %ecx,%edx
	jg .L67
	subl %edx,%ecx
.L67:
	movl %ebx,%eax
	leal -1(%esi),%edx
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
	leal (%ecx,%ecx,2),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-28(%ebp)
	movl $MM_QVSeq+148,%ecx
	leal -36(%ebp),%esp
	movl (%edx),%eax
	movl %eax,-12(%ebp)
	movl 4(%edx),%eax
	movl %eax,-8(%ebp)
	movl 8(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_QVSeq+148,%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%ebp),%edx
	movl -12(%ebp),%eax
	movl %eax,(%edx)
	movl -8(%ebp),%eax
	movl %eax,4(%edx)
	movl -4(%ebp),%eax
	movl %eax,8(%edx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 QVSeq__Remhi,.Lfe6-QVSeq__Remhi
	.align 16
	.type	 QVSeq__Remlo,@function
QVSeq__Remlo:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L73
	pushl $1780
	call _m3_fault
	.align 16
.L73:
	movl 8(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L74
	pushl $1778
	call _m3_fault
	.align 16
.L74:
	leal (%edx,%edx,2),%edx
	movl (%eax),%eax
	leal (%eax,%edx,4),%edx
	movl %edx,-28(%ebp)
	movl $MM_QVSeq+148,%ecx
	movl (%edx),%eax
	movl %eax,-12(%ebp)
	movl 4(%edx),%eax
	movl %eax,-8(%ebp)
	movl 8(%edx),%eax
	movl %eax,-4(%ebp)
	movl MM_QVSeq+148,%eax
	movl %eax,(%edx)
	movl 4(%ecx),%eax
	movl %eax,4(%edx)
	movl 8(%ecx),%eax
	movl %eax,8(%edx)
	movl 12(%ebx),%eax
	decl %eax
	jns .L75
	pushl $1793
	call _m3_fault
	.align 16
.L75:
	movl %eax,12(%ebx)
	movl 8(%ebx),%edx
	incl %edx
	movl %edx,8(%ebx)
	movl 4(%ebx),%eax
	testl %eax,%eax
	jne .L76
	pushl $1828
	call _m3_fault
	.align 16
.L76:
	cmpl %edx,4(%eax)
	jne .L77
	movl $0,8(%ebx)
.L77:
	movl 12(%ebp),%edx
	movl -12(%ebp),%eax
	movl %eax,(%edx)
	movl -8(%ebp),%eax
	movl %eax,4(%edx)
	movl -4(%ebp),%eax
	movl %eax,8(%edx)
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 QVSeq__Remlo,.Lfe7-QVSeq__Remlo
	.align 16
	.type	 QVSeq__Put,@function
QVSeq__Put:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl 8(%ecx),%edx
	addl %eax,%edx
	cmpl %eax,12(%ecx)
	jg .L79
	pushl $1920
	call _m3_fault
	.align 16
.L79:
	movl 4(%ecx),%ecx
	testl %ecx,%ecx
	jne .L80
	pushl $1940
	call _m3_fault
	.align 16
.L80:
	movl 4(%ecx),%eax
	cmpl %edx,%eax
	jg .L81
	subl %eax,%edx
.L81:
	cmpl %eax,%edx
	jb .L84
	pushl $1954
	call _m3_fault
	.align 16
.L84:
	movl (%ecx),%ebx
	leal (%edx,%edx,2),%ecx
	movl 16(%ebp),%edx
	sall $2,%ecx
	movl (%edx),%eax
	movl %eax,(%ebx,%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ebx,%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ebx,%ecx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 QVSeq__Put,.Lfe8-QVSeq__Put
	.align 16
	.type	 QVSeq__Get,@function
QVSeq__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%eax
	movl 8(%ecx),%edx
	addl %eax,%edx
	cmpl %eax,12(%ecx)
	jg .L86
	pushl $2032
	call _m3_fault
	.align 16
.L86:
	movl 4(%ecx),%ecx
	testl %ecx,%ecx
	jne .L87
	pushl $2052
	call _m3_fault
	.align 16
.L87:
	movl 4(%ecx),%eax
	cmpl %edx,%eax
	jg .L88
	subl %eax,%edx
.L88:
	cmpl %eax,%edx
	jb .L91
	pushl $2066
	call _m3_fault
	.align 16
.L91:
	movl (%ecx),%ecx
	leal (%edx,%edx,2),%eax
	sall $2,%eax
	movl 16(%ebp),%ebx
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx)
	movl 8(%ecx,%eax),%eax
	movl %eax,8(%ebx)
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 QVSeq__Get,.Lfe9-QVSeq__Get
	.align 16
	.type	 QVSeq__Size,@function
QVSeq__Size:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	movl 12(%eax),%eax
	ret
.Lfe10:
	.size	 QVSeq__Size,.Lfe10-QVSeq__Size
	.align 16
	.type	 QVSeq__Gethi,@function
QVSeq__Gethi:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ecx),%edx
	movl 8(%ecx),%eax
	addl %edx,%eax
	decl %eax
	testl %edx,%edx
	jg .L94
	pushl $2224
	call _m3_fault
	.align 16
.L94:
	movl 4(%ecx),%ecx
	testl %ecx,%ecx
	jne .L95
	pushl $2244
	call _m3_fault
	.align 16
.L95:
	movl 4(%ecx),%edx
	cmpl %eax,%edx
	jg .L96
	subl %edx,%eax
.L96:
	cmpl %edx,%eax
	jb .L99
	pushl $2290
	call _m3_fault
	.align 16
.L99:
	movl (%ecx),%ecx
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl 12(%ebp),%ebx
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx)
	movl 8(%ecx,%eax),%eax
	movl %eax,8(%ebx)
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 QVSeq__Gethi,.Lfe11-QVSeq__Gethi
	.align 16
	.type	 QVSeq__Getlo,@function
QVSeq__Getlo:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	cmpl $0,12(%eax)
	jg .L101
	pushl $2368
	call _m3_fault
	.align 16
.L101:
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L102
	pushl $2388
	call _m3_fault
	.align 16
.L102:
	movl 8(%eax),%eax
	cmpl %eax,4(%edx)
	ja .L103
	pushl $2386
	call _m3_fault
	.align 16
.L103:
	movl (%edx),%ecx
	leal (%eax,%eax,2),%eax
	sall $2,%eax
	movl 12(%ebp),%ebx
	movl (%ecx,%eax),%edx
	movl %edx,(%ebx)
	movl 4(%ecx,%eax),%edx
	movl %edx,4(%ebx)
	movl 8(%ecx,%eax),%eax
	movl %eax,8(%ebx)
	movl -16(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 QVSeq__Getlo,.Lfe12-QVSeq__Getlo
	.align 16
	.type	 QVSeq__Cat,@function
QVSeq__Cat:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_QVSeq+236,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,-20(%ebp)
	movl 12(%ebp),%esi
	movl 8(%ebp),%edi
	movl $1,%edx
	addl $4,%esp
	movl 12(%esi),%eax
	addl 12(%edi),%eax
	movl -20(%ebp),%edi
	leal -4(%ebp),%esi
	movl %eax,12(%edi)
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl 12(%edi),%eax
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
	movl MM_QVSeq+228,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl -20(%ebp),%edi
	xorl %ebx,%ebx
	movl %ecx,4(%edi)
	movl 8(%ebp),%esi
	addl $8,%esp
	movl 12(%esi),%esi
	decl %esi
	movl %esi,-16(%ebp)
	jmp .L107
	.align 16
.L108:
	movl -20(%ebp),%edi
	movl 4(%edi),%eax
	testl %eax,%eax
	jne .L109
	pushl $2516
	call _m3_fault
	.align 16
.L109:
	movl %eax,%ecx
	cmpl %ebx,4(%ecx)
	ja .L110
	pushl $2514
	call _m3_fault
	.align 16
.L110:
	leal (%ebx,%ebx,2),%edx
	movl (%ecx),%eax
	movl 8(%ebp),%esi
	leal (%eax,%edx,4),%ecx
	movl (%esi),%eax
	movl 44(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %esi
	call *%eax
	incl %ebx
	addl $12,%esp
.L107:
	cmpl %ebx,-16(%ebp)
	jge .L108
	movl 12(%ebp),%edi
	xorl %ebx,%ebx
	movl 12(%edi),%edi
	decl %edi
	movl %edi,-16(%ebp)
	jmp .L112
	.align 16
.L113:
	movl -20(%ebp),%esi
	movl 4(%esi),%eax
	testl %eax,%eax
	jne .L114
	pushl $2564
	call _m3_fault
	.align 16
.L114:
	movl 8(%ebp),%edi
	movl %eax,%ecx
	movl 12(%edi),%eax
	addl %ebx,%eax
	cmpl %eax,4(%ecx)
	ja .L115
	pushl $2562
	call _m3_fault
	.align 16
.L115:
	leal (%eax,%eax,2),%edx
	movl (%ecx),%eax
	movl 12(%ebp),%esi
	leal (%eax,%edx,4),%ecx
	movl (%esi),%eax
	movl 44(%eax),%eax
	pushl %ecx
	pushl %ebx
	pushl %esi
	call *%eax
	incl %ebx
	addl $12,%esp
.L112:
	cmpl %ebx,-16(%ebp)
	jge .L113
	leal -32(%ebp),%esp
	movl -20(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 QVSeq__Cat,.Lfe13-QVSeq__Cat
	.align 16
	.type	 QVSeq__Sub,@function
QVSeq__Sub:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 16(%ebp),%ebx
	movl MM_QVSeq+236,%eax
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
	movl MM_QVSeq+228,%eax
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
	leal (%ebx,%ebx,2),%edx
	movl (%eax),%eax
	movl 8(%ebp),%edi
	leal (%eax,%edx,4),%ecx
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
	.size	 QVSeq__Sub,.Lfe14-QVSeq__Sub
	.align 16
	.type	 M_QVSeq_t5ba24f84_LINK,@function
M_QVSeq_t5ba24f84_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QVSeq+552,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_QVSeq+160,%eax
	movl %eax,4(%edx)
	movl MM_QVSeq+164,%eax
	movl %eax,8(%edx)
	movl MM_QVSeq+168,%eax
	movl %eax,12(%edx)
	movl MM_QVSeq+172,%eax
	movl %eax,16(%edx)
	movl MM_QVSeq+180,%eax
	movl %eax,20(%edx)
	movl MM_QVSeq+184,%eax
	movl %eax,24(%edx)
	movl MM_QVSeq+188,%eax
	movl %eax,28(%edx)
	movl MM_QVSeq+196,%eax
	movl %eax,32(%edx)
	movl MM_QVSeq+200,%eax
	movl %eax,36(%edx)
	movl MM_QVSeq+204,%eax
	movl %eax,40(%edx)
	movl MM_QVSeq+192,%eax
	movl %eax,44(%edx)
	popl %ebp
	ret
.Lfe15:
	.size	 M_QVSeq_t5ba24f84_LINK,.Lfe15-M_QVSeq_t5ba24f84_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QVSeq
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe16:
	.size	 _m3_fault,.Lfe16-_m3_fault
.globl MM_QVSeq
.data
	.align 4
	.type	 MM_QVSeq,@object
	.size	 MM_QVSeq,588
MM_QVSeq:
	.long MM_QVSeq+500
	.long MM_QVSeq+44
	.long MM_QVSeq+228
	.long MM_QVSeq+216
	.zero	4
	.long MM_QVSeq+324
	.zero	4
	.long MM_QVSeq+496
	.long MM_QVSeq+496
	.zero	16
	.long 1537363844
.byte 215
.byte 57
.byte 186
.byte 74
.byte 83
.byte 118
.byte 24
.byte 17
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_QVSeq+549
	.zero	4
	.long M_QVSeq_t5ba24f84_LINK
	.long 574691168
	.zero	12
	.long MM_QVSeq+560
	.long MM_QVSeq+580
	.zero	16
	.long QVSeq__Init
	.long QVSeq__FromArray
	.long QVSeq__Addhi
	.long QVSeq__Addlo
	.long QVSeq__Expand
	.long QVSeq__Remhi
	.long QVSeq__Remlo
	.long QVSeq__Put
	.long QVSeq__Get
	.long QVSeq__Size
	.long QVSeq__Gethi
	.long QVSeq__Getlo
	.long QVSeq__Cat
	.long QVSeq__Sub
	.long 971574223
	.long 1537363844
	.zero	4
	.long MM_QVSeq+236
	.long 1094746160
	.long MM_QVSeq+552
	.long 971574223
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
	.long QVSeq__Sub
	.long MM_QVSeq+244
	.long MI_QVSeq+152
	.long QVSeq__Cat
	.long MM_QVSeq+248
	.long MI_QVSeq+148
	.long QVSeq__Getlo
	.long MM_QVSeq+252
	.zero	4
	.long QVSeq__Gethi
	.long MM_QVSeq+258
	.zero	4
	.long QVSeq__Size
	.long MM_QVSeq+264
	.zero	4
	.long QVSeq__Get
	.long MM_QVSeq+269
	.zero	4
	.long QVSeq__Put
	.long MM_QVSeq+273
	.zero	4
	.long QVSeq__Remlo
	.long MM_QVSeq+277
	.zero	4
	.long QVSeq__Remhi
	.long MM_QVSeq+283
	.zero	4
	.long QVSeq__Expand
	.long MM_QVSeq+289
	.zero	4
	.long QVSeq__Addlo
	.long MM_QVSeq+296
	.zero	4
	.long QVSeq__Addhi
	.long MM_QVSeq+302
	.zero	4
	.long QVSeq__FromArray
	.long MM_QVSeq+308
	.zero	4
	.long QVSeq__Init
	.long MM_QVSeq+318
	.zero	8
.byte 42
.byte 156
.byte 4
.byte 0
	.ascii	"QVSeq.m3 => ../../libm3/src/sequence/Sequence.mg"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	4
	.long 1537363844
	.ascii	"(Sequence QValue.T)"
	.zero	1
	.ascii	"QVSeq.T"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
