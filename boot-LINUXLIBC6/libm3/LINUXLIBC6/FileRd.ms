	.file	"FileRd.mc"
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
	.type	 FileRd__Open,@function
FileRd__Open:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_FileRd+308,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_FileRd+316,%eax
	movl (%esi),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %ecx
	pushl %esi
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FileRd__Open,.Lfe1-FileRd__Open
	.align 16
	.type	 FileRd__Init,@function
FileRd__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L3
	pushl $692
	call _m3_fault
	.align 16
.L3:
	movl MM_FileRd+324,%eax
	movl %ebx,%edx
	addl 24(%eax),%edx
	movl %esi,(%edx)
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	cmpl $0,(%eax,%ebx)
	jne .L7
	leal -12(%ebp),%eax
	leal -4(%ebp),%edi
	movl %edi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $4096,-4(%ebp)
	pushl %eax
	movl MM_FileRd+340,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	addl %ebx,%eax
	addl $8,%esp
	movl %edx,(%eax)
.L7:
	movl MM_FileRd+332,%eax
	movl 24(%eax),%edx
	movl $0,4(%edx,%ebx)
	movl 24(%eax),%eax
	movb $0,20(%eax,%ebx)
	testl %esi,%esi
	je .L13
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_FileRd+352
	jg .L12
	movl MM_FileRd+348,%eax
	cmpl %edx,4(%eax)
	jl .L12
.L13:
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movb $1,21(%eax,%ebx)
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movb $0,22(%eax,%ebx)
	movl (%esi),%eax
	movl 20(%eax),%eax
	pushl $0
	pushl $1
	pushl %esi
	call *%eax
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jge .L16
	pushl $865
	call _m3_fault
	.align 16
.L16:
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movl %edx,16(%eax,%ebx)
	jmp .L17
	.align 16
.L12:
	testl %ebx,%ebx
	jne .L18
	pushl $900
	call _m3_fault
	.align 16
.L18:
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movb $0,21(%eax,%ebx)
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movb $1,22(%eax,%ebx)
	movl MM_FileRd+332,%eax
	movl 24(%eax),%eax
	movl $0,16(%eax,%ebx)
.L17:
	testl %ebx,%ebx
	jne .L22
	pushl $964
	call _m3_fault
	.align 16
.L22:
	movl MM_FileRd+332,%ecx
	movl 24(%ecx),%edx
	movl 16(%edx,%ebx),%eax
	movl %eax,8(%edx,%ebx)
	movl 24(%ecx),%edx
	leal -24(%ebp),%esp
	movl 16(%edx,%ebx),%eax
	movl %eax,12(%edx,%ebx)
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FileRd__Init,.Lfe2-FileRd__Init
	.align 16
	.type	 FileRd__Seek,@function
FileRd__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $220,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L26:
	movl $MM_FileRd+356,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
.L27:
	movl $MM_FileRd+364,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L28
	cmpl $0,8(%ebp)
	jne .L29
	pushl $1140
	call _m3_fault
	.align 16
.L29:
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%eax
	movl 12(%ebp),%esi
	cmpl %esi,12(%eax,%ebx)
	je .L44
	cmpb $0,21(%eax,%ebx)
	jne .L33
	pushl %edx
	pushl $MM_FileRd+256
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L33:
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%eax
	movl 12(%ebp),%esi
	cmpl %esi,16(%eax,%ebx)
	jge .L34
	movl MM_FileRd+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%ebx),%ecx
	movl (%ecx),%eax
	movl 12(%eax),%edx
	leal -208(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -196(%ebp),%eax
	addl $8,%esp
	cmpl %esi,%eax
	jle .L36
	movl 12(%ebp),%eax
.L36:
	testl %eax,%eax
	jge .L37
	pushl $1169
	call _m3_fault
	.align 16
.L37:
	movl %eax,12(%ebp)
.L34:
	cmpl $0,8(%ebp)
	jne .L38
	pushl $1188
	call _m3_fault
	.align 16
.L38:
	movl MM_FileRd+324,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%eax
	movl (%eax,%ebx),%edx
	testl %edx,%edx
	je .L39
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_FileRd+352
	jg .L40
	movl MM_FileRd+348,%eax
	cmpl %ecx,4(%eax)
	jge .L39
.L40:
	pushl $1189
	call _m3_fault
	.align 16
.L39:
	movl (%edx),%eax
	movl 12(%ebp),%esi
	movl 20(%eax),%ecx
	pushl %esi
	pushl $0
	pushl %edx
	call *%ecx
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L41
	pushl $1220
	call _m3_fault
	.align 16
.L41:
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%edx
	movl 12(%ebp),%esi
	movl %esi,16(%edx,%ebx)
	movl 24(%eax),%eax
	movl %esi,12(%eax,%ebx)
	jmp .L43
	.align 16
.L44:
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl %esi,16(%eax,%ebx)
.L43:
	cmpl $0,8(%ebp)
	jne .L45
	pushl $1300
	call _m3_fault
	.align 16
.L45:
	movl MM_FileRd+332,%edi
	movl 8(%ebp),%ebx
	movl 24(%edi),%eax
	movl 12(%ebp),%esi
	movl %esi,8(%eax,%ebx)
	movl MM_FileRd+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%ebx),%ecx
	movl 24(%edi),%eax
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	jne .L48
	pushl $1332
	call _m3_fault
	.align 16
.L48:
	movl 4(%eax),%edx
	movl $16777216,%eax
	cmpl %edx,%eax
	jle .L49
	movl %edx,%eax
.L49:
	testl %eax,%eax
	jge .L50
	pushl $1329
	call _m3_fault
	.align 16
.L50:
	cmpl $16777216,%eax
	jle .L51
	pushl $1329
	call _m3_fault
	.align 16
.L51:
	movl %eax,-212(%ebp)
	movl 24(%edi),%eax
	movl 8(%ebp),%ebx
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	jne .L53
	pushl $1332
	call _m3_fault
	.align 16
.L53:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L54
	pushl $1330
	call _m3_fault
	.align 16
.L54:
	movl (%edx),%eax
	testl %eax,%eax
	jne .L55
	pushl $1332
	call _m3_fault
	.align 16
.L55:
	movl %eax,-216(%ebp)
	movl (%ecx),%eax
	movl 4(%eax),%edx
	cmpb $0,16(%ebp)
	sete %al
	andl $255,%eax
	pushl %eax
	leal -216(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %eax,-220(%ebp)
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $12,%esp
	jmp .L56
	.align 16
.L28:
	movl -176(%ebp),%eax
	pushl %eax
	pushl $MI_Rd+64
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L56:
	cmpl $0,-220(%ebp)
	jge .L58
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
	jmp .L25
	.align 16
.L58:
	cmpl $0,-220(%ebp)
	jne .L59
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $2,%eax
	jmp .L25
	.align 16
.L59:
	cmpl $0,8(%ebp)
	jne .L60
	pushl $1460
	call _m3_fault
	.align 16
.L60:
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%edx
	addl 24(%eax),%edx
	movl -220(%ebp),%eax
	addl 12(%edx),%eax
	jns .L61
	pushl $1457
	call _m3_fault
	.align 16
.L61:
	movl %eax,12(%edx)
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
.L62:
.L25:
	leal -232(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FileRd__Seek,.Lfe3-FileRd__Seek
	.align 16
	.type	 FileRd__GetSub,@function
FileRd__GetSub:
	pushl %ebp
	movl %esp,%ebp
	subl $208,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	movl %eax,-208(%ebp)
.L64:
	movl $MM_FileRd+364,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edi
	movl %edi,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L65
	jmp .L66
	.align 16
.L67:
	cmpl $0,8(%ebp)
	jne .L69
	pushl $1620
	call _m3_fault
	.align 16
.L69:
	movl MM_FileRd+332,%esi
	movl 8(%ebp),%edi
	movl 24(%esi),%eax
	movl 16(%eax,%edi),%edx
	movl 12(%eax,%edi),%ecx
	cmpl %ecx,%edx
	je .L90
	movl %ecx,%eax
	subl %edx,%eax
	movl -208(%ebp),%ebx
	cmpl %eax,%ebx
	jle .L73
	movl %eax,%ebx
.L73:
	movl 12(%ebp),%ecx
	movl 4(%ecx),%edx
	subl -208(%ebp),%edx
	jns .L74
	pushl $1649
	call _m3_fault
	.align 16
.L74:
	testl %ebx,%ebx
	jge .L75
	pushl $1649
	call _m3_fault
	.align 16
.L75:
	movl %ebx,-184(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L76
	pushl $1649
	call _m3_fault
	.align 16
.L76:
	addl (%ecx),%edx
	movl %edx,-188(%ebp)
	movl 24(%esi),%edx
	movl 8(%ebp),%edi
	movl (%edx,%edi),%eax
	testl %eax,%eax
	jne .L78
	pushl $1652
	call _m3_fault
	.align 16
.L78:
	movl 8(%ebp),%edi
	movl %eax,%ecx
	movl 8(%edx,%edi),%eax
	movl 16(%edx,%edi),%edx
	subl %eax,%edx
	jns .L81
	pushl $1649
	call _m3_fault
	.align 16
.L81:
	movl %ebx,-192(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L83
	pushl $1649
	call _m3_fault
	.align 16
.L83:
	movl (%ecx),%eax
	addl %edx,%eax
	movl %eax,-196(%ebp)
	cmpl %ebx,-184(%ebp)
	je .L84
	pushl $1651
	call _m3_fault
	.align 16
.L84:
	pushl %ebx
	pushl %eax
	movl -188(%ebp),%eax
	pushl %eax
	call memmove
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ecx
	addl 24(%eax),%ecx
	addl $12,%esp
	movl 16(%ecx),%eax
	addl %ebx,%eax
	jns .L86
	pushl $1681
	call _m3_fault
	.align 16
.L86:
	movl %eax,16(%ecx)
	movl -208(%ebp),%eax
	subl %ebx,%eax
	jns .L87
	pushl $1697
	call _m3_fault
	.align 16
.L87:
	movl %eax,-208(%ebp)
	jmp .L66
	.align 16
.L90:
	movl 8(%ebp),%edi
	movl %edx,8(%eax,%edi)
	movl 24(%esi),%eax
	movl (%eax,%edi),%edx
	testl %edx,%edx
	jne .L92
	pushl $1796
	call _m3_fault
	.align 16
.L92:
	movl -208(%ebp),%edi
	movl %edi,%eax
	addl %edi,%eax
	movl 4(%edx),%edx
	cmpl %edx,%eax
	jge .L107
	movl MM_FileRd+324,%eax
	movl 8(%ebp),%edi
	movl 24(%eax),%eax
	movl (%eax,%edi),%ecx
	movl $16777216,%eax
	cmpl %edx,%eax
	jle .L97
	movl %edx,%eax
.L97:
	testl %eax,%eax
	jge .L98
	pushl $1809
	call _m3_fault
	.align 16
.L98:
	cmpl $16777216,%eax
	jle .L99
	pushl $1809
	call _m3_fault
	.align 16
.L99:
	movl %eax,-200(%ebp)
	movl 24(%esi),%eax
	movl 8(%ebp),%edi
	movl (%eax,%edi),%eax
	testl %eax,%eax
	jne .L101
	pushl $1812
	call _m3_fault
	.align 16
.L101:
	movl %eax,%edx
	cmpl $0,4(%edx)
	jne .L102
	pushl $1810
	call _m3_fault
	.align 16
.L102:
	movl (%edx),%eax
	testl %eax,%eax
	jne .L103
	pushl $1812
	call _m3_fault
	.align 16
.L103:
	movl %eax,-204(%ebp)
	movl (%ecx),%eax
	movl 4(%eax),%ebx
	pushl $1
	leal -204(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl %eax,%esi
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ebx
	addl 24(%eax),%ebx
	addl $12,%esp
	movl 12(%ebx),%eax
	addl %esi,%eax
	jns .L105
	pushl $1857
	call _m3_fault
	.align 16
.L105:
	movl %eax,12(%ebx)
	jmp .L106
	.align 16
.L107:
	movl MM_FileRd+324,%eax
	movl 8(%ebp),%edi
	movl 24(%eax),%eax
	movl (%eax,%edi),%ebx
	movl $16777216,%eax
	cmpl %eax,-208(%ebp)
	jge .L108
	movl -208(%ebp),%eax
.L108:
	testl %eax,%eax
	jge .L109
	pushl $1889
	call _m3_fault
	.align 16
.L109:
	cmpl $16777216,%eax
	jle .L110
	pushl $1889
	call _m3_fault
	.align 16
.L110:
	movl 12(%ebp),%ecx
	movl %eax,-200(%ebp)
	movl 4(%ecx),%eax
	movl %eax,%edx
	subl -208(%ebp),%edx
	cmpl %eax,%edx
	jb .L111
	pushl $1890
	call _m3_fault
	.align 16
.L111:
	movl (%ecx),%eax
	addl %edx,%eax
	jne .L112
	pushl $1892
	call _m3_fault
	.align 16
.L112:
	movl %eax,-204(%ebp)
	movl (%ebx),%eax
	movl 4(%eax),%edx
	pushl $1
	leal -204(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl %eax,%esi
	movl -208(%ebp),%eax
	subl %esi,%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L113
	pushl $1937
	call _m3_fault
	.align 16
.L113:
	movl %eax,-208(%ebp)
	cmpl $0,8(%ebp)
	jne .L114
	pushl $1956
	call _m3_fault
	.align 16
.L114:
	movl MM_FileRd+332,%ecx
	movl 8(%ebp),%edx
	addl 24(%ecx),%edx
	movl 16(%edx),%eax
	addl %esi,%eax
	jns .L115
	pushl $1953
	call _m3_fault
	.align 16
.L115:
	movl %eax,16(%edx)
	movl 24(%ecx),%edx
	movl 8(%ebp),%edi
	movl 16(%edx,%edi),%eax
	movl %eax,8(%edx,%edi)
	movl 24(%ecx),%edx
	movl 16(%edx,%edi),%eax
	movl %eax,12(%edx,%edi)
.L106:
	testl %esi,%esi
	je .L121
.L66:
	cmpl $0,-208(%ebp)
	jne .L67
.L121:
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L122
	.align 16
.L65:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Rd+64
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L122:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	subl -208(%ebp),%eax
	jns .L124
	pushl $2129
	call _m3_fault
	.align 16
.L124:
	leal -220(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FileRd__GetSub,.Lfe4-FileRd__GetSub
	.align 16
	.type	 FileRd__Length,@function
FileRd__Length:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
	pushl %ebx
.L126:
	movl $MM_FileRd+364,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L127
	cmpl $0,8(%ebp)
	jne .L128
	pushl $2228
	call _m3_fault
	.align 16
.L128:
	movl MM_FileRd+332,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%eax
	cmpb $0,21(%eax,%ebx)
	je .L129
	movl MM_FileRd+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%ebx),%edx
	movl (%edx),%eax
	movl 12(%eax),%ecx
	leal -196(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -184(%ebp),%eax
	jmp .L125
	.align 16
.L129:
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $-1,%eax
	jmp .L125
	.align 16
.L127:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Rd+64
	movl MI_RTHooks+52,%eax
	call *%eax
.L125:
	movl -200(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FileRd__Length,.Lfe5-FileRd__Length
	.align 16
	.type	 FileRd__Close,@function
FileRd__Close:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L134:
	movl $MM_FileRd+364,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L135
	cmpl $0,8(%ebp)
	jne .L136
	pushl $2436
	call _m3_fault
	.align 16
.L136:
	movl MM_FileRd+324,%eax
	movl 8(%ebp),%ecx
	movl 24(%eax),%eax
	movl (%eax,%ecx),%edx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %edx
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L133
	.align 16
.L135:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Rd+64
	movl MI_RTHooks+52,%eax
	call *%eax
.L133:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FileRd__Close,.Lfe6-FileRd__Close
	.align 16
	.type	 M_FileRd_t5cdcb95f_LINK,@function
M_FileRd_t5cdcb95f_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_FileRd+324,%eax
	movl 52(%eax),%ebx
	movl MM_FileRd+316,%eax
	movl 36(%eax),%edx
	movl MM_FileRd+252,%eax
	movl %eax,(%edx,%ebx)
	movl MM_FileRd+332,%edx
	movl 36(%edx),%ecx
	movl MM_FileRd+276,%eax
	movl %eax,(%ecx,%ebx)
	movl 36(%edx),%ecx
	movl MM_FileRd+284,%eax
	movl %eax,8(%ebx,%ecx)
	movl 36(%edx),%ecx
	movl MM_FileRd+288,%eax
	movl %eax,12(%ebx,%ecx)
	movl 36(%edx),%edx
	movl MM_FileRd+280,%eax
	movl %eax,4(%ebx,%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M_FileRd_t5cdcb95f_LINK,.Lfe7-M_FileRd_t5cdcb95f_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FileRd
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe8:
	.size	 _m3_fault,.Lfe8-_m3_fault
.globl MM_FileRd
.data
	.align 4
	.type	 MM_FileRd,@object
	.size	 MM_FileRd,688
MM_FileRd:
	.long MM_FileRd+484
	.long MM_FileRd+44
	.long MM_FileRd+308
	.long MM_FileRd+296
	.zero	4
	.long MM_FileRd+408
	.zero	28
	.long -240998459
.byte 3
.byte 83
.byte 62
.byte 238
.byte 198
.byte 244
.byte 156
.byte 31
	.zero	8
	.long 16777216
	.long 1
	.zero	20
	.long MM_FileRd+659
	.zero	36
	.long MM_FileRd+667
	.long MM_FileRd+148
	.zero	8
	.long 1557969247
.byte 112
.byte 156
.byte 191
.byte 77
.byte 47
.byte 37
.byte 99
.byte 17
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_FileRd+629
	.long MM_FileRd+631
	.long MM_FileRd+633
	.zero	4
	.long M_FileRd_t5cdcb95f_LINK
	.long 1045706453
	.zero	12
	.long MM_FileRd+641
	.long MM_FileRd+650
	.zero	4
	.long FileRd__Init
	.long MM_FileRd+260
	.ascii	"FileRd.Error"
	.zero	4
	.long FileRd__Seek
	.long FileRd__GetSub
	.long FileRd__Length
	.long FileRd__Close
	.long FileRd__Open
	.long 1045706454
	.long 1557969247
	.zero	4
	.long MM_FileRd+316
	.long 1045706454
	.long MM_FileRd+324
	.long 1045706453
	.long MM_FileRd+332
	.long 1557969247
	.long MM_FileRd+340
	.long -1638177541
	.long MM_FileRd+348
	.long -2020873848
	.zero	4
	.long 860659424
	.long MI_Rd+64
	.zero	4
	.long MI_OSError+44
	.zero	4
	.ascii	"Close"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"GetSub"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Open"
	.zero	2
	.long FileRd__Close
	.long MM_FileRd+372
	.zero	4
	.long FileRd__Length
	.long MM_FileRd+378
	.zero	4
	.long FileRd__GetSub
	.long MM_FileRd+385
	.zero	4
	.long FileRd__Seek
	.long MM_FileRd+392
	.zero	4
	.long FileRd__Init
	.long MM_FileRd+397
	.zero	4
	.long FileRd__Open
	.long MM_FileRd+402
	.long MI_FileRd+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/FileRd.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 196
.byte 99
.byte 47
.byte 166
	.ascii	"FileRd.T"
	.zero	1
	.ascii	"FileRd.T"
	.zero	1
.byte 1
.byte 16
.byte 29
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
	.ascii	"FileRd.ByteArrayPtr"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
