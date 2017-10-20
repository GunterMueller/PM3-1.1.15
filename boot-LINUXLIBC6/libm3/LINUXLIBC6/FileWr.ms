	.file	"FileWr.mc"
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
	.type	 FileWr__Open,@function
FileWr__Open:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_FileWr+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	pushl $2
	pushl $0
	pushl $1
	pushl $1
	movl %eax,%esi
	pushl %ebx
	movl MI_FS+48,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_FileWr+328,%eax
	movl (%esi),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl $1
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
	.size	 FileWr__Open,.Lfe1-FileWr__Open
	.align 16
	.type	 FileWr__OpenAppend,@function
FileWr__OpenAppend:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl $2
	pushl $0
	pushl $1
	pushl $0
	pushl %eax
	movl MI_FS+48,%eax
	call *%eax
	movl %eax,%ebx
	addl $20,%esp
	testl %ebx,%ebx
	je .L3
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_FileWr+340
	jg .L4
	movl MM_FileWr+336,%eax
	cmpl %edx,4(%eax)
	jge .L3
.L4:
	pushl $373
	call _m3_fault
	.align 16
.L3:
	movl %ebx,%esi
	movl (%esi),%eax
	movl 20(%eax),%ebx
	pushl $0
	pushl $2
	pushl %esi
	call *%ebx
	movl MM_FileWr+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_FileWr+328,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl $1
	pushl %esi
	pushl %ebx
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FileWr__OpenAppend,.Lfe2-FileWr__OpenAppend
	.align 16
	.type	 FileWr__Init,@function
FileWr__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	testl %ebx,%ebx
	jne .L6
	pushl $900
	call _m3_fault
	.align 16
.L6:
	movl MM_FileWr+344,%eax
	movl %ebx,%edx
	addl 24(%eax),%edx
	movl %esi,(%edx)
	movl MM_FileWr+352,%edx
	movl 24(%edx),%eax
	movl $0,4(%eax,%ebx)
	movl 24(%edx),%eax
	movb $0,20(%eax,%ebx)
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	cmpl $0,(%eax,%ebx)
	jne .L10
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $4096,-4(%ebp)
	pushl %eax
	movl MM_FileWr+360,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	addl %ebx,%eax
	addl $8,%esp
	movl %edx,(%eax)
.L10:
	testl %esi,%esi
	je .L16
	movl -4(%esi),%eax
	sall $11,%eax
	movl %eax,%edi
	shrl $12,%edi
	cmpl %edi,MM_FileWr+340
	jg .L15
	movl MM_FileWr+336,%eax
	cmpl %edi,4(%eax)
	jl .L15
.L16:
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	movb $1,21(%eax,%ebx)
	movl (%esi),%eax
	movl 20(%eax),%eax
	pushl $0
	pushl $1
	pushl %esi
	call *%eax
	movl %eax,%edi
	addl $12,%esp
	testl %edi,%edi
	jge .L18
	pushl $1057
	call _m3_fault
	.align 16
.L18:
	movl MM_FileWr+352,%eax
	movl 24(%eax),%edx
	movl %edi,16(%edx,%ebx)
	movl 24(%eax),%eax
	movb $1,22(%eax,%ebx)
	jmp .L20
	.align 16
.L15:
	testl %ebx,%ebx
	jne .L21
	pushl $1108
	call _m3_fault
	.align 16
.L21:
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	movb $0,21(%eax,%ebx)
	movl MM_FileWr+352,%edx
	movl 24(%edx),%eax
	movl $0,16(%eax,%ebx)
	movl 24(%edx),%eax
	movb 16(%ebp),%cl
	movb %cl,22(%eax,%ebx)
.L20:
	testl %ebx,%ebx
	jne .L25
	pushl $1172
	call _m3_fault
	.align 16
.L25:
	movl MM_FileWr+352,%ecx
	movl 24(%ecx),%edx
	movl 16(%edx,%ebx),%eax
	movl %eax,8(%edx,%ebx)
	movl 24(%ecx),%edx
	movl (%edx,%ebx),%eax
	testl %eax,%eax
	jne .L29
	pushl $1188
	call _m3_fault
	.align 16
.L29:
	movl 4(%eax),%eax
	addl 16(%edx,%ebx),%eax
	movl %eax,12(%edx,%ebx)
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FileWr__Init,.Lfe3-FileWr__Init
	.align 16
	.type	 FileWr__Seek,@function
FileWr__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $208,%esp
	pushl %esi
	pushl %ebx
.L31:
	movl $MM_FileWr+368,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	cmpl $0,8(%ebp)
	jne .L32
	pushl $1316
	call _m3_fault
	.align 16
.L32:
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%esi
	movl 24(%eax),%eax
	cmpb $0,21(%eax,%esi)
	jne .L35
	movl 12(%ebp),%ebx
	cmpl %ebx,12(%eax,%esi)
	je .L35
	pushl $0
	pushl $MM_FileWr+256
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L35:
	movl $MM_FileWr+376,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L36
	movl 8(%ebp),%ebx
	pushl %ebx
	call FileWr__EmptyBuffer
	addl $4,%esp
	testl %ebx,%ebx
	jne .L37
	pushl $1396
	call _m3_fault
	.align 16
.L37:
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%esi
	movl 24(%eax),%eax
	movl 16(%eax,%esi),%eax
	cmpl %eax,12(%ebp)
	je .L38
	jle .L40
	movl MM_FileWr+344,%eax
	movl 24(%eax),%eax
	movl (%eax,%esi),%edx
	movl (%edx),%eax
	movl 12(%eax),%ecx
	leal -208(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	movl -196(%ebp),%eax
	addl $8,%esp
	cmpl %eax,12(%ebp)
	jge .L42
	movl 12(%ebp),%eax
.L42:
	testl %eax,%eax
	jge .L43
	pushl $1409
	call _m3_fault
	.align 16
.L43:
	movl %eax,12(%ebp)
.L40:
	cmpl $0,8(%ebp)
	jne .L44
	pushl $1428
	call _m3_fault
	.align 16
.L44:
	movl MM_FileWr+344,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%eax
	movl (%eax,%ebx),%ecx
	testl %ecx,%ecx
	je .L45
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_FileWr+340
	jg .L46
	movl MM_FileWr+336,%eax
	cmpl %edx,4(%eax)
	jge .L45
.L46:
	pushl $1429
	call _m3_fault
	.align 16
.L45:
	movl (%ecx),%eax
	movl 12(%ebp),%esi
	movl 20(%eax),%edx
	pushl %esi
	pushl $0
	pushl %ecx
	call *%edx
	addl $12,%esp
	cmpl $0,8(%ebp)
	jne .L47
	pushl $1460
	call _m3_fault
	.align 16
.L47:
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%ebx
	movl 24(%eax),%edx
	movl 12(%ebp),%esi
	movl %esi,16(%edx,%ebx)
	movl 24(%eax),%edx
	movl %esi,8(%edx,%ebx)
	movl 24(%eax),%edx
	movl (%edx,%ebx),%eax
	testl %eax,%eax
	jne .L51
	pushl $1492
	call _m3_fault
	.align 16
.L51:
	movl 12(%ebp),%esi
	addl 4(%eax),%esi
	movl 8(%ebp),%ebx
	movl %esi,12(%edx,%ebx)
.L38:
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L54
	.align 16
.L36:
	movl -176(%ebp),%eax
	pushl %eax
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L54:
	movl -12(%ebp),%eax
	leal -216(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FileWr__Seek,.Lfe4-FileWr__Seek
	.align 16
	.type	 FileWr__Length,@function
FileWr__Length:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
	pushl %ebx
.L56:
	movl $MM_FileWr+376,-172(%ebp)
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
	jne .L57
	cmpl $0,8(%ebp)
	jne .L58
	pushl $1652
	call _m3_fault
	.align 16
.L58:
	movl MM_FileWr+352,%edx
	movl 8(%ebp),%ebx
	movl 24(%edx),%eax
	cmpb $0,21(%eax,%ebx)
	je .L59
	movl MM_FileWr+344,%eax
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
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	addl $8,%esp
	movl 16(%eax,%ebx),%edx
	movl -184(%ebp),%eax
	cmpl %eax,%edx
	jle .L62
	movl %edx,%eax
.L62:
	testl %eax,%eax
	jge .L55
	pushl $1665
	call _m3_fault
	.align 16
.L59:
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl 24(%edx),%eax
	movl 8(%ebp),%ebx
	movl 16(%eax,%ebx),%eax
	jmp .L55
	.align 16
.L57:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L55:
	movl -200(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FileWr__Length,.Lfe5-FileWr__Length
	.align 16
	.type	 FileWr__Flush,@function
FileWr__Flush:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	cmpl $0,8(%ebp)
	jne .L70
	pushl $1844
	call _m3_fault
	.align 16
.L70:
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%ecx
	movl 24(%eax),%edx
	movl 8(%edx,%ecx),%eax
	cmpl %eax,16(%edx,%ecx)
	jle .L68
.L72:
	movl $MM_FileWr+376,-172(%ebp)
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
	jne .L73
	movl 8(%ebp),%ecx
	pushl %ecx
	call FileWr__EmptyBuffer
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L68
	.align 16
.L73:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L68:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FileWr__Flush,.Lfe6-FileWr__Flush
	.align 16
	.type	 FileWr__EmptyBuffer,@function
FileWr__EmptyBuffer:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L78
	pushl $1972
	call _m3_fault
	.align 16
.L78:
	movl MM_FileWr+352,%eax
	movl 24(%eax),%edx
	movl 8(%edx,%esi),%eax
	movl 16(%edx,%esi),%edx
	subl %eax,%edx
	movl %edx,-16(%ebp)
	movl $0,-12(%ebp)
	jmp .L79
	.align 16
.L80:
	movl $16777216,%ebx
	cmpl %ebx,-16(%ebp)
	jge .L81
	movl -16(%ebp),%ebx
.L81:
	testl %esi,%esi
	jne .L82
	pushl $2036
	call _m3_fault
	.align 16
.L82:
	movl MM_FileWr+344,%eax
	movl 24(%eax),%eax
	movl (%eax,%esi),%ecx
	testl %ebx,%ebx
	jge .L83
	pushl $2033
	call _m3_fault
	.align 16
.L83:
	cmpl $16777216,%ebx
	jle .L84
	pushl $2033
	call _m3_fault
	.align 16
.L84:
	movl MM_FileWr+352,%eax
	movl %ebx,-4(%ebp)
	movl 24(%eax),%eax
	movl (%eax,%esi),%eax
	testl %eax,%eax
	jne .L86
	pushl $2036
	call _m3_fault
	.align 16
.L86:
	movl -12(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L87
	pushl $2034
	call _m3_fault
	.align 16
.L87:
	movl -12(%ebp),%edi
	addl (%eax),%edi
	movl %edi,%eax
	testl %eax,%eax
	jne .L88
	pushl $2036
	call _m3_fault
	.align 16
.L88:
	movl %eax,-8(%ebp)
	movl (%ecx),%eax
	movl 8(%eax),%edx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	subl %ebx,-16(%ebp)
	addl %ebx,-12(%ebp)
	addl $8,%esp
.L79:
	cmpl $0,-16(%ebp)
	jg .L80
	testl %esi,%esi
	jne .L91
	pushl $2132
	call _m3_fault
	.align 16
.L91:
	movl MM_FileWr+352,%ecx
	movl 24(%ecx),%edx
	movl 16(%edx,%esi),%eax
	movl %eax,8(%edx,%esi)
	movl 24(%ecx),%edx
	movl (%edx,%esi),%eax
	testl %eax,%eax
	jne .L95
	pushl $2148
	call _m3_fault
	.align 16
.L95:
	movl 4(%eax),%eax
	addl 16(%edx,%esi),%eax
	leal -28(%ebp),%esp
	movl %eax,12(%edx,%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 FileWr__EmptyBuffer,.Lfe7-FileWr__EmptyBuffer
	.align 16
	.type	 FileWr__PutString,@function
FileWr__PutString:
	pushl %ebp
	movl %esp,%ebp
	subl $192,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	cmpl $0,8(%ebp)
	jne .L98
	pushl $2260
	call _m3_fault
	.align 16
.L98:
	movl 12(%ebp),%edi
	movl %edi,-192(%ebp)
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%edi
	movl 24(%eax),%edx
	movl 16(%edx,%edi),%esi
	movl 12(%edx,%edi),%eax
	movl -192(%ebp),%edi
	subl %esi,%eax
	movl 4(%edi),%ebx
	cmpl %eax,%ebx
	jg .L99
	movl 8(%ebp),%edi
	movl (%edx,%edi),%eax
	testl %eax,%eax
	jne .L101
	pushl $2276
	call _m3_fault
	.align 16
.L101:
	movl 8(%ebp),%edi
	movl %eax,%ecx
	subl 8(%edx,%edi),%esi
	movl %esi,%edx
	testl %edx,%edx
	jge .L104
	pushl $2273
	call _m3_fault
	.align 16
.L104:
	movl %ebx,-4(%ebp)
	leal (%ebx,%edx),%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L105
	pushl $2273
	call _m3_fault
	.align 16
.L105:
	addl (%ecx),%edx
	movl -192(%ebp),%edi
	movl %edx,-8(%ebp)
	cmpl %ebx,4(%edi)
	je .L106
	pushl $2275
	call _m3_fault
	.align 16
.L106:
	pushl %ebx
	movl -192(%ebp),%edi
	movl (%edi),%eax
	jmp .L138
	.align 16
.L99:
	movl 8(%ebp),%edi
	pushl %edi
	call FileWr__Flush
	movl MM_FileWr+352,%eax
	movl 24(%eax),%eax
	addl $4,%esp
	movl (%eax,%edi),%edx
	testl %edx,%edx
	jne .L110
	pushl $2340
	call _m3_fault
	.align 16
.L110:
	movl 12(%ebp),%esi
	movl 4(%esi),%ebx
	movl %ebx,%eax
	addl %ebx,%eax
	cmpl %eax,4(%edx)
	jle .L118
	movl %edx,%ecx
	movl %ebx,-4(%ebp)
	movl %ebx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L114
	pushl $2353
	call _m3_fault
	.align 16
.L114:
	movl (%ecx),%edx
	movl %edx,-8(%ebp)
	cmpl %ebx,4(%esi)
	je .L115
	pushl $2355
	call _m3_fault
	.align 16
.L115:
	pushl %ebx
	movl (%esi),%eax
.L138:
	pushl %eax
	pushl %edx
	call memmove
	movl MM_FileWr+352,%eax
	movl 8(%ebp),%ecx
	addl 24(%eax),%ecx
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	addl %eax,16(%ecx)
	jmp .L96
	.align 16
.L118:
	movl $MM_FileWr+376,-180(%ebp)
	movl $0,-184(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-188(%ebp)
	leal -188(%ebp),%edi
	movl %edi,RTThread__handlerStack
	leal -168(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L119
	movl 12(%ebp),%eax
	movl 4(%eax),%esi
	movl %edx,-192(%ebp)
	jmp .L120
	.align 16
.L121:
	movl $16777216,%ebx
	cmpl %esi,%ebx
	jle .L122
	movl %esi,%ebx
.L122:
	cmpl $0,8(%ebp)
	jne .L123
	pushl $2484
	call _m3_fault
	.align 16
.L123:
	movl MM_FileWr+344,%eax
	movl 8(%ebp),%edi
	movl 24(%eax),%eax
	movl (%eax,%edi),%ecx
	testl %ebx,%ebx
	jge .L124
	pushl $2481
	call _m3_fault
	.align 16
.L124:
	cmpl $16777216,%ebx
	jle .L125
	pushl $2481
	call _m3_fault
	.align 16
.L125:
	movl %ebx,-4(%ebp)
	movl 12(%ebp),%eax
	movl -192(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L126
	pushl $2482
	call _m3_fault
	.align 16
.L126:
	movl -192(%ebp),%edi
	addl (%eax),%edi
	movl %edi,%eax
	testl %eax,%eax
	jne .L127
	pushl $2484
	call _m3_fault
	.align 16
.L127:
	movl %eax,-8(%ebp)
	movl (%ecx),%eax
	movl 8(%eax),%edx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	subl %ebx,%esi
	addl %ebx,-192(%ebp)
	addl $8,%esp
.L120:
	testl %esi,%esi
	jg .L121
	cmpl $0,8(%ebp)
	jne .L129
	pushl $2564
	call _m3_fault
	.align 16
.L129:
	movl MM_FileWr+352,%ecx
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	addl 24(%ecx),%edx
	movl 4(%eax),%eax
	addl %eax,16(%edx)
	movl 24(%ecx),%edx
	movl 8(%ebp),%edi
	movl 16(%edx,%edi),%eax
	movl %eax,8(%edx,%edi)
	movl 24(%ecx),%edx
	movl (%edx,%edi),%eax
	testl %eax,%eax
	jne .L135
	pushl $2596
	call _m3_fault
	.align 16
.L135:
	movl 8(%ebp),%edi
	movl 4(%eax),%eax
	addl 16(%edx,%edi),%eax
	movl %eax,12(%edx,%edi)
	movl -188(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L96
	.align 16
.L119:
	movl -172(%ebp),%eax
	pushl %eax
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L96:
	leal -204(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 FileWr__PutString,.Lfe8-FileWr__PutString
	.align 16
	.type	 FileWr__Close,@function
FileWr__Close:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L140:
	movl $MM_FileWr+376,-172(%ebp)
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
	jne .L141
	cmpl $0,8(%ebp)
	jne .L142
	pushl $2772
	call _m3_fault
	.align 16
.L142:
	movl MM_FileWr+344,%eax
	movl 8(%ebp),%ecx
	movl 24(%eax),%eax
	movl (%eax,%ecx),%edx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %edx
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L139
	.align 16
.L141:
	movl -164(%ebp),%eax
	pushl %eax
	pushl $MI_Wr+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L139:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 FileWr__Close,.Lfe9-FileWr__Close
	.align 16
	.type	 M_FileWr_t89d06d8c_LINK,@function
M_FileWr_t89d06d8c_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_FileWr+344,%eax
	movl 52(%eax),%ebx
	movl MM_FileWr+328,%eax
	movl 36(%eax),%edx
	movl MM_FileWr+252,%eax
	movl %eax,(%edx,%ebx)
	movl MM_FileWr+352,%ecx
	movl 36(%ecx),%edx
	movl MM_FileWr+276,%eax
	movl %eax,(%edx,%ebx)
	movl 36(%ecx),%edx
	movl MM_FileWr+280,%eax
	movl %eax,8(%ebx,%edx)
	movl 36(%ecx),%edx
	movl MM_FileWr+284,%eax
	movl %eax,12(%ebx,%edx)
	movl 36(%ecx),%edx
	movl MM_FileWr+296,%eax
	movl %eax,16(%ebx,%edx)
	movl 36(%ecx),%edx
	movl MM_FileWr+292,%eax
	movl %eax,4(%ebx,%edx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 M_FileWr_t89d06d8c_LINK,.Lfe10-M_FileWr_t89d06d8c_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FileWr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_FileWr
.data
	.align 4
	.type	 MM_FileWr,@object
	.size	 MM_FileWr,768
MM_FileWr:
	.long MM_FileWr+564
	.long MM_FileWr+44
	.long MM_FileWr+320
	.long MM_FileWr+308
	.zero	4
	.long MM_FileWr+452
	.zero	28
	.long -1982829172
.byte 135
.byte 139
.byte 120
.byte 157
.byte 11
.byte 230
.byte 168
.byte 20
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_FileWr+737
	.long MM_FileWr+739
	.long MM_FileWr+741
	.zero	4
	.long M_FileWr_t89d06d8c_LINK
	.long -492241991
	.zero	12
	.long MM_FileWr+749
	.long MM_FileWr+758
	.long MM_FileWr+148
	.zero	8
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
	.long MM_FileWr+709
	.zero	36
	.long MM_FileWr+717
	.zero	4
	.long FileWr__Init
	.long MM_FileWr+260
	.ascii	"FileWr.Error"
	.zero	4
	.long FileWr__Seek
	.long FileWr__Length
	.long FileWr__Flush
	.long FileWr__EmptyBuffer
	.long FileWr__PutString
	.long FileWr__Close
	.long FileWr__Open
	.long FileWr__OpenAppend
	.long -492241990
	.long -1982829172
	.zero	4
	.long MM_FileWr+328
	.long -492241990
	.long MM_FileWr+336
	.long -492241991
	.long MM_FileWr+344
	.long 860659424
	.long MM_FileWr+352
	.long -1982829172
	.long MM_FileWr+360
	.long -1861675307
	.zero	4
	.long -2020873848
	.long MI_Wr+44
	.zero	4
	.long MI_OSError+44
	.zero	4
	.ascii	"Close"
	.zero	1
	.ascii	"PutString"
	.zero	1
	.ascii	"EmptyBuffer"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"OpenAppend"
	.zero	1
	.ascii	"Open"
	.zero	2
	.long FileWr__Close
	.long MM_FileWr+384
	.zero	4
	.long FileWr__PutString
	.long MM_FileWr+390
	.zero	4
	.long FileWr__EmptyBuffer
	.long MM_FileWr+400
	.zero	4
	.long FileWr__Flush
	.long MM_FileWr+412
	.zero	4
	.long FileWr__Length
	.long MM_FileWr+418
	.zero	4
	.long FileWr__Seek
	.long MM_FileWr+425
	.zero	4
	.long FileWr__Init
	.long MM_FileWr+430
	.zero	4
	.long FileWr__OpenAppend
	.long MM_FileWr+435
	.long MI_FileWr+152
	.long FileWr__Open
	.long MM_FileWr+446
	.long MI_FileWr+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/FileWr.m3"
	.zero	1
.byte 1
.byte 16
.byte 29
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
	.ascii	"FileWr.ByteArrayPtr"
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
	.ascii	"FileWr.T"
	.zero	1
	.ascii	"FileWr.T"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
