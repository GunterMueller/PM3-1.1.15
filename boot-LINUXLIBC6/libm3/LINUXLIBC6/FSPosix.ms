	.file	"FSPosix.mc"
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
	.type	 FS__GetAbsolutePathname,@function
FS__GetAbsolutePathname:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl %esi
	pushl %ebx
.L2:
	movl $MM_FSPosix+416,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Pathname+72,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl (%esi),%eax
	movl 24(%eax),%ebx
	pushl %esi
	call *%ebx
	addl $8,%esp
	testl %eax,%eax
	jne .L4
	movl MI_Process+180,%eax
	call *%eax
	pushl %eax
	movl MI_Pathname+72,%eax
	call *%eax
	jmp .L8
	.align 16
.L4:
	pushl %eax
	call FSPosix__Seq1
.L8:
	movl %eax,%ebx
	addl $4,%esp
	pushl %esi
	pushl %eax
	call FSPosix__Expand
	movl %eax,%ebx
	pushl %ebx
	call FSPosix__Contract
	pushl %ebx
	movl MI_Pathname+76,%eax
	call *%eax
	movl %eax,%ebx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
	jmp .L1
	.align 16
.L3:
	pushl $MM_FSPosix+44
	movl MI_AtomList+152,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	pushl $MI_OSError+44
	movl MI_RTHooks+52,%eax
	call *%eax
.L1:
	leal -188(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FS__GetAbsolutePathname,.Lfe1-FS__GetAbsolutePathname
	.align 16
	.type	 FSPosix__Expand,@function
FSPosix__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	movl $0,-4(%ebp)
	jmp .L10
	.align 16
.L11:
	movl (%esi),%eax
	movl 24(%eax),%eax
	pushl %esi
	call *%eax
	movl %eax,%ebx
	movl %ebx,-4(%ebp)
	movl (%edi),%eax
	movl 12(%eax),%ebx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %edi
	call *%ebx
	pushl %edi
	call FSPosix__CheckLink
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	je .L10
	pushl %esi
	pushl %ebx
	movl MI_TextSeq+148,%eax
	call *%eax
	movl %eax,%ebx
	movl %ebx,%esi
	movl (%esi),%eax
	movl 24(%eax),%ebx
	pushl %esi
	call *%ebx
	addl $12,%esp
	testl %eax,%eax
	jne .L13
	movl (%edi),%eax
	movl 20(%eax),%eax
	pushl %edi
	call *%eax
	jmp .L16
	.align 16
.L13:
	pushl %eax
	call FSPosix__Seq1
	movl %eax,%edi
.L16:
	addl $4,%esp
.L10:
	movl (%esi),%eax
	movl 32(%eax),%ebx
	pushl %esi
	call *%ebx
	addl $4,%esp
	testl %eax,%eax
	jg .L11
	leal -16(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FSPosix__Expand,.Lfe2-FSPosix__Expand
	.align 16
	.type	 FSPosix__Contract,@function
FSPosix__Contract:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl $1,%ebx
	jmp .L18
	.align 16
.L19:
	movl (%edi),%eax
	movl 44(%eax),%eax
	testl %ebx,%ebx
	jge .L20
	pushl $1137
	call _m3_fault
	.align 16
.L20:
	pushl %ebx
	pushl %edi
	call *%eax
	movl %eax,%esi
	movl MI_Pathname+116,%eax
	pushl %eax
	pushl %esi
	movl MI_Text+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $16,%esp
	testl %eax,%eax
	jne .L29
	pushl $MM_FSPosix+428
	pushl %esi
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L29
	movl MI_Pathname+112,%eax
	pushl %eax
	pushl %esi
	movl MI_Text+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	je .L25
	cmpl $1,%ebx
	jne .L26
	movl (%edi),%eax
	movl -4(%ebp),%edx
	movl 44(%eax),%esi
	pushl %edx
	pushl %edi
	call *%esi
	pushl $MM_FSPosix+444
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	addl $16,%esp
	testl %eax,%eax
	jne .L29
.L26:
	testl %ebx,%ebx
	jge .L28
	pushl $1297
	call _m3_fault
	.align 16
.L28:
	pushl %ebx
	pushl %edi
	call FSPosix__Rem
	addl $8,%esp
	decl %ebx
	jns .L29
	pushl $1297
	call _m3_fault
	.align 16
.L29:
	pushl %ebx
	pushl %edi
	call FSPosix__Rem
	addl $8,%esp
	jmp .L18
	.align 16
.L25:
	incl %ebx
.L18:
	movl (%edi),%eax
	movl 32(%eax),%eax
	pushl %edi
	call *%eax
	addl $4,%esp
	cmpl %eax,%ebx
	jl .L19
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FSPosix__Contract,.Lfe3-FSPosix__Contract
	.align 16
	.type	 FSPosix__Seq1,@function
FSPosix__Seq1:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_FSPosix+456,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	leal -4(%ebp),%esi
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,-4(%ebp)
	movl (%ecx),%eax
	leal -12(%ebp),%edx
	movl 8(%eax),%eax
	pushl %edx
	pushl %ecx
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FSPosix__Seq1,.Lfe4-FSPosix__Seq1
	.align 16
	.type	 FSPosix__Rem,@function
FSPosix__Rem:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl (%edi),%eax
	movl 12(%ebp),%ebx
	movl 32(%eax),%eax
	pushl %edi
	call *%eax
	movl %ebx,%esi
	addl $-2,%eax
	movl %eax,-8(%ebp)
	addl $4,%esp
	jmp .L33
	.align 16
.L34:
	movl (%edi),%eax
	leal 1(%esi),%ebx
	movl 44(%eax),%eax
	pushl %ebx
	pushl %edi
	call *%eax
	movl %eax,%ecx
	movl (%edi),%eax
	movl 28(%eax),%edx
	movl %ecx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edi
	call *%edx
	movl %ebx,%esi
	addl $20,%esp
.L33:
	cmpl %esi,-8(%ebp)
	jge .L34
	movl (%edi),%eax
	movl 20(%eax),%eax
	pushl %edi
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FSPosix__Rem,.Lfe5-FSPosix__Rem
	.align 16
	.type	 FSPosix__CheckLink,@function
FSPosix__CheckLink:
	pushl %ebp
	movl %esp,%ebp
	subl $1024,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Pathname+76,%eax
	call *%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl $1024
	leal -1024(%ebp),%ebx
	pushl %ebx
	pushl %eax
	call readlink
	movl %eax,%esi
	addl $20,%esp
	testl %esi,%esi
	jg .L37
	cmpl $22,errno
	jne .L38
	xorl %eax,%eax
	jmp .L40
	.align 16
.L38:
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L37:
	cmpl $1023,%esi
	jbe .L39
	pushl $1905
	call _m3_fault
	.align 16
.L39:
	movb $0,-1024(%esi,%ebp)
	pushl %ebx
	movl MI_M3toC+60,%eax
	call *%eax
	pushl %eax
	movl MI_Pathname+72,%eax
	call *%eax
.L40:
	leal -1032(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FSPosix__CheckLink,.Lfe6-FSPosix__CheckLink
	.align 16
	.type	 FS__OpenFile,@function
FS__OpenFile:
	pushl %ebp
	movl %esp,%ebp
	subl $88,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 20(%ebp),%edx
	testl %edx,%edx
	je .L42
	leal -88(%ebp),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call fstat
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jge .L43
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L43:
	movl -72(%ebp),%ebx
	andl $4095,%ebx
	jmp .L44
	.align 16
.L42:
	xorl %eax,%eax
	movb 24(%ebp),%al
	movl MM_FSPosix+92(,%eax,4),%ebx
.L44:
	pushl %esi
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%ecx
	pushl %ebx
	xorl %eax,%eax
	movb 16(%ebp),%al
	xorl %edx,%edx
	movb 12(%ebp),%dl
	sall $3,%eax
	movl MM_FSPosix+68(%eax,%edx,4),%eax
	pushl %eax
	pushl %ecx
	call open
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	jge .L45
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L45:
	pushl $3
	pushl %ebx
	movl MI_FilePosix+148,%eax
	call *%eax
	movl %eax,%ecx
	leal -96(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 FS__OpenFile,.Lfe7-FS__OpenFile
	.align 16
	.type	 FS__OpenFileReadonly,@function
FS__OpenFileReadonly:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl $438
	pushl $0
	pushl %eax
	call open
	movl %eax,%ebx
	addl $16,%esp
	testl %ebx,%ebx
	jge .L47
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L47:
	pushl $1
	pushl %ebx
	movl MI_FilePosix+148,%eax
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 FS__OpenFileReadonly,.Lfe8-FS__OpenFileReadonly
	.align 16
	.type	 FS__CreateDirectory,@function
FS__CreateDirectory:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl $511
	pushl %eax
	call mkdir
	addl $12,%esp
	testl %eax,%eax
	jge .L48
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L48:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 FS__CreateDirectory,.Lfe9-FS__CreateDirectory
	.align 16
	.type	 FS__DeleteDirectory,@function
FS__DeleteDirectory:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	call rmdir
	addl $8,%esp
	testl %eax,%eax
	jge .L50
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L50:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 FS__DeleteDirectory,.Lfe10-FS__DeleteDirectory
	.align 16
	.type	 FS__DeleteFile,@function
FS__DeleteFile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	call unlink
	addl $8,%esp
	testl %eax,%eax
	jge .L52
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L52:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 FS__DeleteFile,.Lfe11-FS__DeleteFile
	.align 16
	.type	 FS__Rename,@function
FS__Rename:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%esi
	pushl %ebx
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	pushl %esi
	call rename
	addl $16,%esp
	testl %eax,%eax
	jge .L54
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L54:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 FS__Rename,.Lfe12-FS__Rename
	.align 16
	.type	 FS__Iterate,@function
FS__Iterate:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_Pathname+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L57
	movl MI_Process+180,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	pushl %eax
	movl MI_Pathname+96,%eax
	call *%eax
	movl %eax,%esi
	addl $12,%esp
.L57:
	pushl %esi
	movl MI_M3toC+52,%eax
	call *%eax
	pushl %eax
	call opendir
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L58
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L58:
	movl MM_FSPosix+464,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,8(%eax)
	leal -8(%ebp),%esp
	movl %esi,4(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 FS__Iterate,.Lfe13-FS__Iterate
	.align 16
	.type	 FSPosix__IterNext,@function
FSPosix__IterNext:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call FSPosix__IterRaw
	testl %eax,%eax
	je .L61
	movl $1,%eax
.L61:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 FSPosix__IterNext,.Lfe14-FSPosix__IterNext
	.align 16
	.type	 FSPosix__IterNextWithStatus,@function
FSPosix__IterNextWithStatus:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call FSPosix__IterRaw
	addl $8,%esp
	testl %eax,%eax
	je .L63
	pushl $0
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	movl MI_Pathname+96,%eax
	call *%eax
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	call FSPosix__CStatus
	addl $24,%esp
	testl %eax,%eax
	jge .L64
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L64:
	movl $1,%eax
.L63:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 FSPosix__IterNextWithStatus,.Lfe15-FSPosix__IterNextWithStatus
	.align 16
	.type	 FSPosix__IterRaw,@function
FSPosix__IterRaw:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
.L67:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpb $0,12(%esi)
	je .L69
	pushl $0
	pushl $MM_FSPosix+208
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L69:
	movl 8(%esi),%edx
	testl %edx,%edx
	je .L76
	pushl %edx
	call readdir
	movl %eax,%ebx
	addl $4,%esp
	testl %eax,%eax
	jne .L72
	movl 8(%esi),%eax
	pushl %eax
	call closedir
	movl %ebx,8(%esi)
.L76:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	xorl %eax,%eax
	jmp .L66
	.align 16
.L72:
	leal 11(%eax),%ebx
	pushl %ebx
	call FSPosix__DotOrDotDot
	addl $4,%esp
	testl %eax,%eax
	jne .L69
	pushl %ebx
	movl MI_M3toC+60,%eax
	call *%eax
	movl %eax,(%edi)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl $1,%eax
.L75:
.L66:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 FSPosix__IterRaw,.Lfe16-FSPosix__IterRaw
	.align 16
	.type	 FSPosix__DotOrDotDot,@function
FSPosix__DotOrDotDot:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L78
	pushl $4388
	call _m3_fault
	.align 16
.L78:
	cmpb $46,(%edx)
	jne .L79
	cmpb $0,1(%edx)
	je .L81
	cmpb $46,1(%edx)
	jne .L79
	cmpb $0,2(%edx)
	jne .L79
.L81:
	movl $1,%eax
.L79:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 FSPosix__DotOrDotDot,.Lfe17-FSPosix__DotOrDotDot
	.align 16
	.type	 FSPosix__IterClose,@function
FSPosix__IterClose:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L85
	pushl %eax
	call closedir
	movl $0,8(%ebx)
.L85:
	movb $1,12(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 FSPosix__IterClose,.Lfe18-FSPosix__IterClose
	.align 16
	.type	 FS__Status,@function
FS__Status:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	movl 8(%ebp),%eax
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	call FSPosix__CStatus
	addl $12,%esp
	testl %eax,%eax
	jge .L87
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L87:
	movl 12(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 FS__Status,.Lfe19-FS__Status
	.align 16
	.type	 FSPosix__CStatus,@function
FSPosix__CStatus:
	pushl %ebp
	movl %esp,%ebp
	subl $88,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	leal -88(%ebp),%ebx
	pushl %ebx
	pushl %eax
	call stat
	addl $8,%esp
	testl %eax,%eax
	jl .L89
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	call FSPosix__StatBufToStatus
	xorl %eax,%eax
	jmp .L90
	.align 16
.L89:
	movl $-1,%eax
.L90:
	movl -92(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 FSPosix__CStatus,.Lfe20-FSPosix__CStatus
	.align 16
	.type	 FSPosix__StatBufToStatus,@function
FSPosix__StatBufToStatus:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L92:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_FilePosix+156,%eax
	call *%eax
	movl %eax,%edx
	movl 12(%ebp),%eax
	movl %edx,(%eax)
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	fildl 64(%eax)
	addl $4,%esp
	fstpl 4(%edx)
	movl 44(%eax),%eax
	testl %eax,%eax
	jge .L93
	pushl $4881
	call _m3_fault
	.align 16
.L93:
	movl %eax,12(%edx)
.L94:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 FSPosix__StatBufToStatus,.Lfe21-FSPosix__StatBufToStatus
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 FS__SetModificationTime,@function
FS__SetModificationTime:
	pushl %ebp
	movl %esp,%ebp
	subl $36,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
.L96:
	movl $MM_FSPosix+472,-20(%ebp)
	movl $4,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	fldl (%edx)
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L97
	fldl .LC0
	faddp %st,%st(1)
	jmp .L103
	.align 16
.L97:
	fldl .LC0
	fsubrp %st,%st(1)
.L103:
	fnstcw -32(%ebp)
	movl -32(%ebp),%edx
	movb $12,%dh
	movl %edx,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -32(%ebp)
	movl %eax,-8(%ebp)
	movl MI_Time+44,%eax
	movl $0,-4(%ebp)
	call *%eax
	fld %st(0)
	fldz
	fcomp %st(2)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L105
	fstp %st(0)
	fldl .LC0
	faddp %st,%st(1)
	jmp .L104
	.align 16
.L105:
	fstp %st(1)
	fldl .LC0
	fsubrp %st,%st(1)
.L104:
	fnstcw -32(%ebp)
	movl -32(%ebp),%edx
	movb $12,%dh
	movl %edx,-36(%ebp)
	fldcw -36(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %eax
	fldcw -32(%ebp)
	movl %eax,-16(%ebp)
	movl $0,-12(%ebp)
	pushl %ebx
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	leal -16(%ebp),%eax
	pushl %eax
	pushl %edx
	call utimes
	addl $12,%esp
	testl %eax,%eax
	jge .L102
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L102:
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -40(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 FS__SetModificationTime,.Lfe22-FS__SetModificationTime
	.align 16
	.type	 _INITM_FSPosix,@function
_INITM_FSPosix:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_FSPosix+44
	pushl $MM_FSPosix+484
	movl MI_Atom+44,%eax
	call *%eax
	movl %eax,MM_FSPosix+44
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 _INITM_FSPosix,.Lfe23-_INITM_FSPosix
	.align 16
	.type	 M_FSPosix_t3f485727_LINK,@function
M_FSPosix_t3f485727_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_FSPosix+1248,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_FSPosix+232,%eax
	movl %eax,4(%edx)
	movl MM_FSPosix+236,%eax
	movl %eax,8(%edx)
	movl MM_FSPosix+352,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe24:
	.size	 M_FSPosix_t3f485727_LINK,.Lfe24-M_FSPosix_t3f485727_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FSPosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe25:
	.size	 _m3_fault,.Lfe25-_m3_fault
.globl MM_FSPosix
.data
	.align 4
	.type	 MM_FSPosix,@object
	.size	 MM_FSPosix,1292
MM_FSPosix:
	.long MM_FSPosix+1060
	.long MM_FSPosix+104
	.long MM_FSPosix+456
	.long MM_FSPosix+404
	.zero	4
	.long MM_FSPosix+776
	.zero	4
	.long MM_FSPosix+1056
	.long MM_FSPosix+1056
	.zero	4
	.long _INITM_FSPosix
	.zero	4
	.long FSPosix__Expand
	.long FSPosix__Contract
	.long FSPosix__Seq1
	.long FSPosix__Rem
	.long FSPosix__CheckLink
	.long 2
	.long 514
	.long 66
	.long 578
	.long 194
	.long 194
	.long 384
	.long 292
	.long 438
	.zero	8
	.long 1061705511
.byte 14
.byte 178
.byte 84
.byte 37
.byte 41
.byte 229
.byte 28
.byte 26
	.long 1
	.zero	4
	.long 12
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_FSPosix+1229
	.long MM_FSPosix+1233
	.long MM_FSPosix+1235
	.zero	4
	.long M_FSPosix_t3f485727_LINK
	.long 62547255
	.zero	12
	.long MM_FSPosix+1256
	.long MM_FSPosix+1277
	.long MM_FSPosix+240
	.long MM_FSPosix+212
	.ascii	"FSPosix.IterClosed"
	.zero	2
	.long FSPosix__IterNext
	.long FSPosix__IterNextWithStatus
	.zero	8
	.long 1923291165
.byte 225
.byte 173
.byte 228
.byte 116
.byte 252
.byte 181
.byte 71
.byte 6
	.zero	8
	.long 3
	.long 1
	.zero	20
	.long MM_FSPosix+1205
	.zero	36
	.long MM_FSPosix+1210
	.zero	4
	.long FSPosix__IterRaw
	.long FSPosix__DotOrDotDot
	.long FSPosix__IterClose
	.long FSPosix__CStatus
	.long FSPosix__StatBufToStatus
	.long FS__GetAbsolutePathname
	.long FS__OpenFile
	.long FS__OpenFileReadonly
	.long FS__CreateDirectory
	.long FS__DeleteDirectory
	.long FS__DeleteFile
	.long FS__Rename
	.long FS__Iterate
	.long FS__Status
	.long FS__SetModificationTime
	.long -681424736
	.long 1061705511
	.zero	4
	.long MI_Pathname+44
	.zero	4
	.long 2
	.long MM_FSPosix+436
	.long 1
	.zero	4
	.long 2
	.long MM_FSPosix+452
	.long 2
	.ascii	"/"
	.zero	3
	.long MM_FSPosix+464
	.long -2012935793
	.long MM_FSPosix+1248
	.long -681424736
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_FSPosix+492
	.long 17
	.ascii	"Invalid Pathname"
	.zero	4
	.ascii	"_INITM_FSPosix"
	.zero	1
	.ascii	"SetModificationTime"
	.zero	1
	.ascii	"StatBufToStatus"
	.zero	1
	.ascii	"CStatus"
	.zero	1
	.ascii	"Status"
	.zero	1
	.ascii	"IterClose"
	.zero	1
	.ascii	"DotOrDotDot"
	.zero	1
	.ascii	"IterRaw"
	.zero	1
	.ascii	"IterNextWithStatus"
	.zero	1
	.ascii	"IterNext"
	.zero	1
	.ascii	"Iterate"
	.zero	1
	.ascii	"Rename"
	.zero	1
	.ascii	"DeleteFile"
	.zero	1
	.ascii	"DeleteDirectory"
	.zero	1
	.ascii	"CreateDirectory"
	.zero	1
	.ascii	"OpenFileReadonly"
	.zero	1
	.ascii	"OpenFile"
	.zero	1
	.ascii	"CheckLink"
	.zero	1
	.ascii	"Rem"
	.zero	1
	.ascii	"Seq1"
	.zero	1
	.ascii	"Contract"
	.zero	1
	.ascii	"Expand"
	.zero	1
	.ascii	"GetAbsolutePathname"
	.zero	2
	.long _INITM_FSPosix
	.long MM_FSPosix+512
	.zero	4
	.long FS__SetModificationTime
	.long MM_FSPosix+527
	.long MI_FS+188
	.long FSPosix__StatBufToStatus
	.long MM_FSPosix+547
	.zero	4
	.long FSPosix__CStatus
	.long MM_FSPosix+563
	.zero	4
	.long FS__Status
	.long MM_FSPosix+571
	.long MI_FS+184
	.long FSPosix__IterClose
	.long MM_FSPosix+578
	.zero	4
	.long FSPosix__DotOrDotDot
	.long MM_FSPosix+588
	.zero	4
	.long FSPosix__IterRaw
	.long MM_FSPosix+600
	.zero	4
	.long FSPosix__IterNextWithStatus
	.long MM_FSPosix+608
	.zero	4
	.long FSPosix__IterNext
	.long MM_FSPosix+627
	.zero	4
	.long FS__Iterate
	.long MM_FSPosix+636
	.long MI_FS+180
	.long FS__Rename
	.long MM_FSPosix+644
	.long MI_FS+68
	.long FS__DeleteFile
	.long MM_FSPosix+651
	.long MI_FS+64
	.long FS__DeleteDirectory
	.long MM_FSPosix+662
	.long MI_FS+60
	.long FS__CreateDirectory
	.long MM_FSPosix+678
	.long MI_FS+56
	.long FS__OpenFileReadonly
	.long MM_FSPosix+694
	.long MI_FS+52
	.long FS__OpenFile
	.long MM_FSPosix+711
	.long MI_FS+48
	.long FSPosix__CheckLink
	.long MM_FSPosix+720
	.zero	4
	.long FSPosix__Rem
	.long MM_FSPosix+730
	.zero	4
	.long FSPosix__Seq1
	.long MM_FSPosix+734
	.zero	4
	.long FSPosix__Contract
	.long MM_FSPosix+739
	.zero	4
	.long FSPosix__Expand
	.long MM_FSPosix+748
	.zero	4
	.long FS__GetAbsolutePathname
	.long MM_FSPosix+755
	.long MI_FS+44
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/FSPosix.m3"
	.zero	1
.byte 1
.byte 12
.byte 26
.byte 3
.byte 0
	.ascii	"FSPosix.NamePrefix"
	.zero	1
.byte 4
.byte 5
.byte 16
.byte 0
.byte 4
.byte 0
.byte 4
.byte 10
.byte 3
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 0
.byte 2
	.zero	7
	.long 1061705511
	.ascii	"FSPosix_^%#%^__0001M"
	.zero	1
	.ascii	"FS.Iterator"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
