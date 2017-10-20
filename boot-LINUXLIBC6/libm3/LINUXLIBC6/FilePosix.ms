	.file	"FilePosix.mc"
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
	.type	 FilePosix__FileTypeFromStatbuf,@function
FilePosix__FileTypeFromStatbuf:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 16(%edx),%eax
	andl $61440,%eax
	js .L2
	testl %eax,%eax
	jle .L3
	cmpl $4095,%eax
	jle .L2
	cmpl $4096,%eax
	jle .L3
	cmpl $8191,%eax
	jle .L2
	cmpl $8192,%eax
	jle .L4
	cmpl $16383,%eax
	jle .L2
	cmpl $16384,%eax
	jle .L5
	cmpl $32767,%eax
	jle .L2
	cmpl $32768,%eax
	jle .L2
	cmpl $49151,%eax
	jle .L2
	cmpl $49152,%eax
	jle .L3
	jmp .L2
	.align 16
.L4:
	pushl %edx
	call FilePosix__IsDevNull
	testl %eax,%eax
	jne .L2
	movl MI_Terminal+44,%eax
	jmp .L9
	.align 16
.L3:
	movl MI_Pipe+44,%eax
	jmp .L9
	.align 16
.L5:
	movl MI_FS+176,%eax
	jmp .L9
	.align 16
.L2:
	movl MI_RegularFile+148,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FilePosix__FileTypeFromStatbuf,.Lfe1-FilePosix__FileTypeFromStatbuf
	.align 16
	.type	 FilePosix__New,@function
FilePosix__New:
	pushl %ebp
	movl %esp,%ebp
	subl $88,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	leal -88(%ebp),%ebx
	pushl %ebx
	pushl %esi
	call fstat
	addl $8,%esp
	testl %eax,%eax
	je .L11
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L11:
	pushl %ebx
	call FilePosix__FileTypeFromStatbuf
	addl $4,%esp
	cmpl %eax,MI_RegularFile+148
	je .L15
	cmpl %eax,MI_Terminal+44
	jne .L13
	movl MM_FilePosix+828,%eax
	jmp .L17
	.align 16
.L13:
	cmpl %eax,MI_Pipe+44
	jne .L14
	movl MM_FilePosix+836,%eax
	jmp .L17
	.align 16
.L14:
	cmpl %eax,MI_FS+176
	jne .L15
	pushl $21
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	addl $4,%esp
.L15:
	movl MM_FilePosix+820,%eax
.L17:
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %esi,4(%eax)
	movl %edi,8(%eax)
	leal -100(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FilePosix__New,.Lfe2-FilePosix__New
	.align 16
	.type	 FilePosix__NewPipe,@function
FilePosix__NewPipe:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_FilePosix+836,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %ebx,4(%eax)
	leal -8(%ebp),%esp
	movl %esi,8(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FilePosix__NewPipe,.Lfe3-FilePosix__NewPipe
	.align 16
	.type	 FilePosix__FileClose,@function
FilePosix__FileClose:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	call close
	addl $4,%esp
	testl %eax,%eax
	jge .L19
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L19:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FilePosix__FileClose,.Lfe4-FilePosix__FileClose
	.align 16
	.type	 FilePosix__FileStatus,@function
FilePosix__FileStatus:
	pushl %ebp
	movl %esp,%ebp
	subl $132,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
.L22:
	movl $MM_FilePosix+844,-124(%ebp)
	movl $4,-128(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-132(%ebp)
	leal -132(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	leal -104(%ebp),%eax
	pushl %eax
	movl 4(%ebx),%eax
	pushl %eax
	call fstat
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jge .L23
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L23:
	testl %ebx,%ebx
	je .L26
	movl -4(%ebx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_FilePosix+824
	jg .L25
	movl MM_FilePosix+820,%eax
	cmpl %edx,4(%eax)
	jge .L26
.L25:
	cmpl %edx,MM_FilePosix+840
	jg .L27
	movl MM_FilePosix+836,%eax
	cmpl %edx,4(%eax)
	jge .L28
.L27:
	cmpl %edx,MM_FilePosix+832
	jg .L31
	movl MM_FilePosix+828,%eax
	cmpl %edx,4(%eax)
	jge .L30
	jmp .L31
	.align 16
.L26:
	movl MI_RegularFile+148,%eax
	movl %eax,-16(%ebp)
	jmp .L32
	.align 16
.L28:
	movl MI_Pipe+44,%eax
	movl %eax,-16(%ebp)
	jmp .L32
	.align 16
.L30:
	movl MI_Terminal+44,%eax
	movl %eax,-16(%ebp)
	jmp .L32
	.align 16
.L31:
	pushl $1600
	call _m3_fault
	.align 16
.L32:
	fildl -40(%ebp)
	movl -60(%ebp),%eax
	fstpl -12(%ebp)
	testl %eax,%eax
	jge .L33
	pushl $1649
	call _m3_fault
	.align 16
.L33:
	movl %eax,-4(%ebp)
	movl 12(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl -132(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L34:
	movl -136(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FilePosix__FileStatus,.Lfe5-FilePosix__FileStatus
	.align 16
	.type	 FilePosix__RegularFileRead,@function
FilePosix__RegularFileRead:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%esi
	cmpl $0,4(%eax)
	jne .L36
	pushl $1826
	call _m3_fault
	.align 16
.L36:
	movl (%eax),%ebx
	testb $1,8(%esi)
	jne .L37
	call FilePosix__BadDirection
.L37:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	pushl %ebx
	movl 4(%esi),%eax
	pushl %eax
	call read
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jge .L38
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L38:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FilePosix__RegularFileRead,.Lfe6-FilePosix__RegularFileRead
	.align 16
	.type	 FilePosix__RegularFileWrite,@function
FilePosix__RegularFileWrite:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 4(%eax),%edx
	testl %edx,%edx
	jne .L40
	pushl $2050
	call _m3_fault
	.align 16
.L40:
	movl (%eax),%edi
	movl 8(%ebp),%ecx
	movl %edx,%esi
	testb $2,8(%ecx)
	jne .L42
	call FilePosix__BadDirection
.L42:
	pushl %esi
	pushl %edi
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	call write
	movl %eax,%ebx
	movl %ebx,-4(%ebp)
	addl $12,%esp
	testl %ebx,%ebx
	jge .L43
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L43:
	cmpl %esi,%ebx
	je .L39
	testl %ebx,%ebx
	jg .L46
	pushl $2208
	call _m3_fault
	.align 16
.L46:
	addl -4(%ebp),%edi
	movl %esi,%eax
	subl -4(%ebp),%eax
	jns .L47
	pushl $2241
	call _m3_fault
	.align 16
.L47:
	movl %eax,%esi
	jmp .L42
	.align 16
.L39:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 FilePosix__RegularFileWrite,.Lfe7-FilePosix__RegularFileWrite
	.align 16
	.type	 FilePosix__RegularFileSeek,@function
FilePosix__RegularFileSeek:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	pushl %edx
	movl 4(%ecx),%eax
	pushl %eax
	call lseek
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jge .L49
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L49:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 FilePosix__RegularFileSeek,.Lfe8-FilePosix__RegularFileSeek
	.align 16
	.type	 FilePosix__RegularFileFlush,@function
FilePosix__RegularFileFlush:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	call fsync
	addl $4,%esp
	testl %eax,%eax
	jge .L50
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L50:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 FilePosix__RegularFileFlush,.Lfe9-FilePosix__RegularFileFlush
	.align 16
	.type	 FilePosix__RegularFileLock,@function
FilePosix__RegularFileLock:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_FilePosix+752,%edx
	movl MM_FilePosix+752,%eax
	movl 8(%ebp),%ecx
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl $6
	movl 4(%ecx),%eax
	pushl %eax
	call fcntl
	addl $12,%esp
	testl %eax,%eax
	jge .L53
	movl errno,%eax
	cmpl $13,%eax
	je .L54
	cmpl $11,%eax
	jne .L55
.L54:
	xorl %eax,%eax
	jmp .L56
	.align 16
.L55:
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L53:
	movl $1,%eax
.L56:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 FilePosix__RegularFileLock,.Lfe10-FilePosix__RegularFileLock
	.align 16
	.type	 FilePosix__RegularFileUnlock,@function
FilePosix__RegularFileUnlock:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl $MM_FilePosix+768,%edx
	movl MM_FilePosix+768,%eax
	movl 8(%ebp),%ecx
	movl %eax,-16(%ebp)
	movl 4(%edx),%eax
	movl %eax,-12(%ebp)
	movl 8(%edx),%eax
	movl %eax,-8(%ebp)
	movl 12(%edx),%eax
	movl %eax,-4(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl $6
	movl 4(%ecx),%eax
	pushl %eax
	call fcntl
	addl $12,%esp
	testl %eax,%eax
	jge .L57
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L57:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 FilePosix__RegularFileUnlock,.Lfe11-FilePosix__RegularFileUnlock
	.align 16
	.type	 FilePosix__IntermittentRead,@function
FilePosix__IntermittentRead:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl $0
	pushl $3
	movl 4(%edi),%eax
	pushl %eax
	call fcntl
	movl %eax,-12(%ebp)
	movl %eax,%edx
	orb $8,%dh
	movl %edx,-8(%ebp)
	movl 12(%ebp),%eax
	addl $12,%esp
	cmpl $0,4(%eax)
	jne .L60
	pushl $3378
	call _m3_fault
	.align 16
.L60:
	movl (%eax),%eax
	movl %eax,-4(%ebp)
	testb $1,8(%edi)
	jne .L62
	call FilePosix__BadDirection
.L62:
	movl -8(%ebp),%edx
	pushl %edx
	pushl $4
	movl 4(%edi),%eax
	pushl %eax
	call fcntl
	addl $12,%esp
	testl %eax,%eax
	je .L63
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L63:
	movl 12(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl -4(%ebp),%edx
	pushl %edx
	movl 4(%edi),%eax
	pushl %eax
	call read
	movl errno,%esi
	movl -12(%ebp),%edx
	pushl %edx
	movl %eax,%ebx
	pushl $4
	movl 4(%edi),%eax
	pushl %eax
	call fcntl
	addl $24,%esp
	testl %eax,%eax
	je .L64
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L64:
	testl %ebx,%ebx
	jl .L65
	movl %ebx,%eax
	jmp .L70
	.align 16
.L65:
	cmpl $-1,%ebx
	jne .L66
	cmpl $11,%esi
	je .L66
	pushl %esi
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	addl $4,%esp
	jmp .L67
	.align 16
.L66:
	cmpb $0,16(%ebp)
	jne .L67
	movl $-1,%eax
	jmp .L70
	.align 16
.L67:
	pushl $-1074790400
	pushl $0
	pushl $1
	movl 4(%edi),%eax
	pushl %eax
	movl MI_SchedulerPosix+44,%eax
	call *%eax
	addl $16,%esp
	jmp .L62
	.align 16
.L70:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 FilePosix__IntermittentRead,.Lfe12-FilePosix__IntermittentRead
	.align 16
	.type	 FilePosix__IntermittentWrite,@function
FilePosix__IntermittentWrite:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $0
	pushl $3
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	call fcntl
	movl %eax,-12(%ebp)
	movl %eax,%ecx
	orb $8,%ch
	movl %ecx,-8(%ebp)
	movl 12(%ebp),%edx
	addl $12,%esp
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L72
	pushl $4018
	call _m3_fault
	.align 16
.L72:
	movl (%edx),%edx
	movl %edx,-4(%ebp)
	movl 8(%ebp),%ecx
	movl %eax,%esi
	testb $2,8(%ecx)
	jne .L74
	call FilePosix__BadDirection
.L74:
	movl -8(%ebp),%ecx
	pushl %ecx
	pushl $4
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	call fcntl
	addl $12,%esp
	testl %eax,%eax
	je .L75
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L75:
	pushl %esi
	movl -4(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	call write
	movl errno,%edi
	movl -12(%ebp),%ecx
	pushl %ecx
	pushl $4
	movl 8(%ebp),%ecx
	movl %eax,%ebx
	movl 4(%ecx),%eax
	pushl %eax
	call fcntl
	addl $24,%esp
	testl %eax,%eax
	je .L76
	movl MI_OSErrorPosix+48,%eax
	call *%eax
.L76:
	testl %ebx,%ebx
	jl .L77
	addl %ebx,-4(%ebp)
	subl %ebx,%esi
	je .L71
	jmp .L80
	.align 16
.L77:
	cmpl $-1,%ebx
	jne .L80
	cmpl $11,%edi
	je .L80
	pushl %edi
	movl MI_OSErrorPosix+52,%eax
	call *%eax
	addl $4,%esp
.L80:
	pushl $-1074790400
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	movl 4(%ecx),%eax
	pushl %eax
	movl MI_SchedulerPosix+44,%eax
	call *%eax
	addl $16,%esp
	jmp .L74
	.align 16
.L71:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 FilePosix__IntermittentWrite,.Lfe13-FilePosix__IntermittentWrite
	.align 16
	.type	 FilePosix__IsDevNull,@function
FilePosix__IsDevNull:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	cmpb $0,MM_FilePosix+604
	jne .L83
	movb $1,MM_FilePosix+604
	pushl $MM_FilePosix+856
	movl MI_M3toC+52,%eax
	call *%eax
	pushl $438
	pushl $0
	movl %eax,%ecx
	pushl %ecx
	call open
	movl %eax,%edx
	movl %edx,MM_FilePosix+696
	addl $16,%esp
	testl %edx,%edx
	jge .L84
	xorl %eax,%eax
	jmp .L87
	.align 16
.L84:
	pushl $MM_FilePosix+608
	pushl %edx
	call fstat
	movl %eax,%edx
	movl %edx,%ebx
	movl MM_FilePosix+696,%eax
	pushl %eax
	call close
	testl %ebx,%ebx
	je .L83
	movl $-1,MM_FilePosix+696
.L83:
	xorl %edx,%edx
	cmpl $0,MM_FilePosix+696
	jl .L86
	movl 8(%ebp),%ecx
	movl MM_FilePosix+640,%eax
	cmpl %eax,32(%ecx)
	jne .L86
	movl MM_FilePosix+644,%eax
	cmpl %eax,36(%ecx)
	sete %al
	xorl %edx,%edx
	movb %al,%dl
.L86:
	movl %edx,%eax
.L87:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 FilePosix__IsDevNull,.Lfe14-FilePosix__IsDevNull
	.align 16
	.type	 FilePosix__BadDirection,@function
FilePosix__BadDirection:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L89:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_FilePosix+704
	movl MI_RTHooks+52,%eax
	call *%eax
.L90:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 FilePosix__BadDirection,.Lfe15-FilePosix__BadDirection
	.align 16
	.type	 M_FilePosix_tc6c7e499_LINK,@function
M_FilePosix_tc6c7e499_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_FilePosix+1424,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_FilePosix+572,%eax
	movl %eax,4(%edx)
	movl MM_FilePosix+576,%eax
	movl %eax,8(%edx)
	movl MM_FilePosix+580,%eax
	movl %eax,20(%edx)
	movl MM_FilePosix+584,%eax
	movl %eax,24(%edx)
	movl MM_FilePosix+588,%eax
	movl %eax,28(%edx)
	movl MM_FilePosix+592,%eax
	movl %eax,32(%edx)
	popl %ebp
	ret
.Lfe16:
	.size	 M_FilePosix_tc6c7e499_LINK,.Lfe16-M_FilePosix_tc6c7e499_LINK
	.align 16
	.type	 M_FilePosix_t6027b42d_LINK,@function
M_FilePosix_t6027b42d_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_FilePosix+1544,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_FilePosix+596,%eax
	movl %eax,4(%edx)
	movl MM_FilePosix+600,%eax
	movl %eax,8(%edx)
	popl %ebp
	ret
.Lfe17:
	.size	 M_FilePosix_t6027b42d_LINK,.Lfe17-M_FilePosix_t6027b42d_LINK
	.align 16
	.type	 M_FilePosix_t4c4a655e_LINK,@function
M_FilePosix_t4c4a655e_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_FilePosix+1608,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_FilePosix+564,%eax
	movl %eax,16(%edx)
	movl MM_FilePosix+568,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe18:
	.size	 M_FilePosix_t4c4a655e_LINK,.Lfe18-M_FilePosix_t4c4a655e_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FilePosix
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe19:
	.size	 _m3_fault,.Lfe19-_m3_fault
.globl MM_FilePosix
.data
	.align 4
	.type	 MM_FilePosix,@object
	.size	 MM_FilePosix,1648
MM_FilePosix:
	.long MM_FilePosix+1272
	.long MM_FilePosix+44
	.long MM_FilePosix+820
	.long MM_FilePosix+784
	.zero	4
	.long MM_FilePosix+1088
	.zero	28
	.long 1279944030
.byte 155
.byte 243
.byte 183
.byte 89
.byte 197
.byte 150
.byte 253
.byte 21
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_FilePosix+1602
	.zero	4
	.long M_FilePosix_t4c4a655e_LINK
	.long -1122767062
	.zero	12
	.long MM_FilePosix+1616
	.long MM_FilePosix+1639
	.long MM_FilePosix+148
	.zero	8
	.long 1613214765
.byte 179
.byte 134
.byte 244
.byte 119
.byte 158
.byte 50
.byte 211
.byte 23
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_FilePosix+1539
	.zero	4
	.long M_FilePosix_t6027b42d_LINK
	.long -1506843708
	.zero	12
	.long MM_FilePosix+1552
	.long MM_FilePosix+1575
	.long MM_FilePosix+252
	.zero	8
	.long 2015606946
.byte 206
.byte 238
.byte 212
.byte 124
.byte 108
.byte 86
.byte 247
.byte 4
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_FilePosix+1506
	.zero	8
	.long 1613214765
	.zero	12
	.long MM_FilePosix+1509
	.long MM_FilePosix+1532
	.long MM_FilePosix+356
	.zero	8
	.long 880032954
.byte 173
.byte 123
.byte 215
.byte 54
.byte 23
.byte 71
.byte 163
.byte 2
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_FilePosix+1469
	.zero	8
	.long 1613214765
	.zero	12
	.long MM_FilePosix+1472
	.long MM_FilePosix+1495
	.long MM_FilePosix+460
	.zero	8
	.long -959978343
.byte 0
.byte 155
.byte 86
.byte 202
.byte 153
.byte 127
.byte 145
.byte 12
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_FilePosix+1419
	.zero	4
	.long M_FilePosix_tc6c7e499_LINK
	.long -1297491495
	.zero	12
	.long MM_FilePosix+1432
	.long MM_FilePosix+1455
	.zero	4
	.long FilePosix__FileClose
	.long FilePosix__FileStatus
	.long FilePosix__RegularFileRead
	.long FilePosix__RegularFileWrite
	.long FilePosix__RegularFileSeek
	.long FilePosix__RegularFileFlush
	.long FilePosix__RegularFileLock
	.long FilePosix__RegularFileUnlock
	.long FilePosix__IntermittentRead
	.long FilePosix__IntermittentWrite
	.zero	96
	.long FilePosix__IsDevNull
	.long MM_FilePosix+708
	.ascii	"FilePosix.IllegalDirection"
	.zero	2
	.long FilePosix__BadDirection
	.long FilePosix__New
	.long FilePosix__NewPipe
	.long FilePosix__FileTypeFromStatbuf
	.value 1
	.zero	14
	.value 2
	.zero	14
	.long -1506843708
	.long 1279944030
	.long 860659424
	.long -959978343
	.long -1563764125
	.long 880032954
	.long 83586137
	.long 2015606946
	.zero	4
	.long MM_FilePosix+828
	.long 860659424
	.long MM_FilePosix+836
	.long -1563764125
	.long MM_FilePosix+1424
	.long 83586137
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_FilePosix+864
	.long 10
	.ascii	"/dev/null"
	.zero	3
	.ascii	"BadDirection"
	.zero	1
	.ascii	"IsDevNull"
	.zero	1
	.ascii	"IntermittentWrite"
	.zero	1
	.ascii	"IntermittentRead"
	.zero	1
	.ascii	"RegularFileUnlock"
	.zero	1
	.ascii	"RegularFileLock"
	.zero	1
	.ascii	"RegularFileFlush"
	.zero	1
	.ascii	"RegularFileSeek"
	.zero	1
	.ascii	"RegularFileWrite"
	.zero	1
	.ascii	"RegularFileRead"
	.zero	1
	.ascii	"FileStatus"
	.zero	1
	.ascii	"FileClose"
	.zero	1
	.ascii	"NewPipe"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"FileTypeFromStatbuf"
	.zero	2
	.long FilePosix__BadDirection
	.long MM_FilePosix+876
	.zero	4
	.long FilePosix__IsDevNull
	.long MM_FilePosix+889
	.zero	4
	.long FilePosix__IntermittentWrite
	.long MM_FilePosix+899
	.zero	4
	.long FilePosix__IntermittentRead
	.long MM_FilePosix+917
	.zero	4
	.long FilePosix__RegularFileUnlock
	.long MM_FilePosix+934
	.zero	4
	.long FilePosix__RegularFileLock
	.long MM_FilePosix+952
	.zero	4
	.long FilePosix__RegularFileFlush
	.long MM_FilePosix+968
	.zero	4
	.long FilePosix__RegularFileSeek
	.long MM_FilePosix+985
	.zero	4
	.long FilePosix__RegularFileWrite
	.long MM_FilePosix+1001
	.zero	4
	.long FilePosix__RegularFileRead
	.long MM_FilePosix+1018
	.zero	4
	.long FilePosix__FileStatus
	.long MM_FilePosix+1034
	.zero	4
	.long FilePosix__FileClose
	.long MM_FilePosix+1045
	.zero	4
	.long FilePosix__NewPipe
	.long MM_FilePosix+1055
	.long MI_FilePosix+152
	.long FilePosix__New
	.long MM_FilePosix+1063
	.long MI_FilePosix+148
	.long FilePosix__FileTypeFromStatbuf
	.long MM_FilePosix+1067
	.long MI_FilePosix+156
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/os/POSIX/FilePosix.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	2
	.long MM_FilePosix+1544
	.long -959978343
	.ascii	"FilePosix_^%#%^__0005M"
	.zero	1
	.ascii	"RegularFile.T"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"FilePosix_^%#%^__0004M"
	.zero	1
	.ascii	"Terminal.T"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"FilePosix_^%#%^__0003M"
	.zero	1
	.ascii	"Pipe.T"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	2
	.long MM_FilePosix+1608
	.long 1613214765
	.ascii	"FilePosix_^%#%^__0002M"
	.zero	1
	.ascii	"FilePosix.IntermittentFile"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	7
	.long 1279944030
	.ascii	"FilePosix_^%#%^__0001M"
	.zero	1
	.ascii	"File.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
