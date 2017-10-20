	.file	"Utils.mc"
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
	.type	 Utils__OpenWriter,@function
Utils__OpenWriter:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L2:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L3
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_FileWr+148,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L4
	.align 16
.L3:
	movl -164(%ebp),%eax
	cmpb $0,12(%ebp)
	je .L5
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+156
	pushl %eax
	movl MI_Msg+56,%eax
	jmp .L8
	.align 16
.L5:
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+156
	pushl %eax
	movl MI_Msg+60,%eax
.L8:
	call *%eax
	xorl %edx,%edx
.L4:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Utils__OpenWriter,.Lfe1-Utils__OpenWriter
	.align 16
	.type	 Utils__FlushWriter,@function
Utils__FlushWriter:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	cmpl $0,8(%ebp)
	je .L9
.L11:
	movl $MM_Utils+200,-172(%ebp)
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
	jne .L12
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Wr+80,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L9
	.align 16
.L12:
	cmpl $MI_Wr+44,-168(%ebp)
	jne .L14
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+216
	pushl %eax
	jmp .L16
	.align 16
.L14:
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+216
	pushl $0
.L16:
	movl MI_Msg+56,%eax
	call *%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Utils__FlushWriter,.Lfe2-Utils__FlushWriter
	.align 16
	.type	 Utils__CloseWriter,@function
Utils__CloseWriter:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	cmpl $0,8(%ebp)
	je .L17
.L19:
	movl $MM_Utils+200,-172(%ebp)
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
	jne .L20
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_Wr+84,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L17
	.align 16
.L20:
	cmpl $MI_Wr+44,-168(%ebp)
	jne .L22
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+260
	pushl %eax
	jmp .L24
	.align 16
.L22:
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+260
	pushl $0
.L24:
	movl MI_Msg+56,%eax
	call *%eax
.L17:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Utils__CloseWriter,.Lfe3-Utils__CloseWriter
	.align 16
	.type	 Utils__OpenReader,@function
Utils__OpenReader:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L26:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L27
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_FS+52,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L28
	.align 16
.L27:
	movl -164(%ebp),%eax
	cmpb $0,12(%ebp)
	je .L29
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+304
	pushl %eax
	movl MI_Msg+56,%eax
	jmp .L32
	.align 16
.L29:
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+304
	pushl %eax
	movl MI_Msg+60,%eax
.L32:
	call *%eax
	xorl %edx,%edx
.L28:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Utils__OpenReader,.Lfe4-Utils__OpenReader
	.align 16
	.type	 Utils__CloseReader,@function
Utils__CloseReader:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	cmpl $0,8(%ebp)
	je .L33
.L35:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L36
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %edx
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L33
	.align 16
.L36:
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+352
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Utils__CloseReader,.Lfe5-Utils__CloseReader
	.align 16
	.type	 Utils__RewindReader,@function
Utils__RewindReader:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L40
	movl -4(%ecx),%eax
	sall $11,%eax
	movl %eax,%edx
	shrl $12,%edx
	cmpl %edx,MM_Utils+396
	jg .L41
	movl MM_Utils+392,%eax
	cmpl %edx,4(%eax)
	jge .L40
.L41:
	pushl $1365
	call _m3_fault
	.align 16
.L40:
	movl %ecx,-184(%ebp)
	testl %ecx,%ecx
	je .L39
.L43:
	movl $MM_Utils+144,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L44
	movl -184(%ebp),%ebx
	movl (%ebx),%eax
	movl 20(%eax),%eax
	pushl %edx
	pushl %edx
	pushl %ebx
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L39
	.align 16
.L44:
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 12(%ebp),%ebx
	pushl %ebx
	pushl $MM_Utils+404
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L39:
	movl -188(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Utils__RewindReader,.Lfe6-Utils__RewindReader
	.align 16
	.type	 Utils__OpenTempFile,@function
Utils__OpenTempFile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	xorl %esi,%esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 8(%ebp),%edi
	movl %edi,(%eax)
	jmp .L48
	.align 16
.L49:
	pushl $MM_Utils+448
	movl 8(%ebp),%edi
	pushl %edi
	movl MI_RTHooks+76,%eax
	incl %esi
	call *%eax
	pushl $10
	movl %eax,%ebx
	pushl %esi
	movl MI_Fmt+52,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ecx
	movl 12(%ebp),%eax
	addl $24,%esp
	movl %ecx,(%eax)
.L48:
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	call Utils__ModificationTime
	movl %eax,-8(%ebp)
	addl $4,%esp
	testl %eax,%eax
	jne .L49
	pushl $1
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	call Utils__OpenWriter
	movl MM_Utils+44,%edx
	movl %eax,%ebx
	movl (%edx),%eax
	movl -8(%ebp),%edi
	movl 8(%eax),%ecx
	movl %edi,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call *%ecx
	leal -20(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Utils__OpenTempFile,.Lfe7-Utils__OpenTempFile
	.align 16
	.type	 Utils__NoteTempFile,@function
Utils__NoteTempFile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Utils+44,%edx
	movl (%edx),%eax
	movl 8(%eax),%ecx
	movl $0,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Utils__NoteTempFile,.Lfe8-Utils__NoteTempFile
	.align 16
	.type	 Utils__RemoveTempFiles,@function
Utils__RemoveTempFiles:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl MM_Utils+44,%eax
	movl $0,-8(%ebp)
	movl (%eax),%edx
	movl 20(%edx),%edx
	pushl %eax
	call *%edx
	movl %eax,%edx
	movl %edx,%ebx
	jmp .L56
	.align 16
.L54:
	movl -8(%ebp),%eax
	pushl %eax
	call Utils__Remove
.L56:
	addl $4,%esp
	movl (%ebx),%eax
	movl 4(%eax),%edx
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	addl $12,%esp
	testl %eax,%eax
	jne .L54
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Utils__RemoveTempFiles,.Lfe9-Utils__RemoveTempFiles
	.align 16
	.type	 Utils__Remove,@function
Utils__Remove:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	pushl %ebx
	cmpl $0,8(%ebp)
	je .L57
	movl MI_M3Timers+48,%eax
	pushl %eax
	movl MI_ETimer+52,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Utils+464
	movl MI_Msg+76,%eax
	call *%eax
	addl $28,%esp
.L59:
	movl $MM_Utils+144,-176(%ebp)
	movl $0,-180(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-184(%ebp)
	leal -184(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -164(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L61
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_FS+64,%eax
	call *%eax
	movl -184(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
.L60:
.L61:
	movl MM_Utils+44,%edx
	movl (%edx),%eax
	movl 12(%eax),%ecx
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
	movl MI_ETimer+56,%eax
	call *%eax
.L57:
	movl -188(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Utils__Remove,.Lfe10-Utils__Remove
	.align 16
	.type	 Utils__Copy,@function
Utils__Copy:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+500
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+480
	movl MI_Msg+76,%eax
	call *%eax
	addl $24,%esp
.L64:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L65
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_M3File+48,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L63
	.align 16
.L65:
	movl -164(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+500
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+520
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L63:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Utils__Copy,.Lfe11-Utils__Copy
	.align 16
	.type	 Utils__CopyText,@function
Utils__CopyText:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+500
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+480
	movl MI_Msg+76,%eax
	call *%eax
	addl $24,%esp
.L69:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L70
	movl MI_Target+816,%eax
	pushl %eax
	movl 12(%ebp),%edx
	pushl %edx
	movl 8(%ebp),%edx
	pushl %edx
	movl MI_M3File+52,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L68
	.align 16
.L70:
	movl -164(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+500
	movl 8(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+520
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L68:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Utils__CopyText,.Lfe12-Utils__CopyText
	.align 16
	.type	 Utils__IsEqual,@function
Utils__IsEqual:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	pushl $0
	pushl $0
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+576
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+552
	movl MI_Msg+76,%eax
	call *%eax
	addl $24,%esp
.L74:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L75
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3File+56,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
	jmp .L78
	.align 16
.L75:
	movl -164(%ebp),%eax
	movl 12(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+624
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+592
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
	xorl %eax,%eax
.L78:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Utils__IsEqual,.Lfe13-Utils__IsEqual
	.align 16
	.type	 Utils__NoteLocalFileTimes,@function
Utils__NoteLocalFileTimes:
	pushl %ebp
	movl %esp,%ebp
	subl $204,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,-24(%ebp)
	movl %ebx,-20(%ebp)
	movl %ebx,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl %ebx,-8(%ebp)
.L80:
	movl $MM_Utils+144,-196(%ebp)
	movl $0,-200(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-204(%ebp)
	leal -204(%ebp),%edi
	movl %edi,RTThread__handlerStack
	leal -184(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L81
	pushl $MM_Utils+644
	movl MI_FS+180,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,%ebx
	addl $4,%esp
	jmp .L82
	.align 16
.L83:
	movl -12(%ebp),%eax
	movl -16(%ebp),%edx
	pushl %eax
	pushl %edx
	call Utils__M3Time
	movl MM_Utils+48,%edx
	movl %eax,-4(%ebp)
	movl (%edx),%eax
	movl 8(%eax),%ecx
	leal -4(%ebp),%eax
	pushl %eax
	pushl %esi
	pushl %edx
	call *%ecx
	addl $20,%esp
.L82:
	movl (%ebx),%eax
	movl 8(%eax),%ecx
	leal -20(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%esi
	pushl %esi
	pushl %ebx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	jne .L83
	movl -204(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L79
	.align 16
.L81:
	movl -188(%ebp),%eax
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Utils+660
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L79:
	leal -216(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Utils__NoteLocalFileTimes,.Lfe14-Utils__NoteLocalFileTimes
	.align 16
	.type	 Utils__LocalModTime,@function
Utils__LocalModTime:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl $0,-4(%ebp)
	cmpl $0,8(%ebp)
	je .L88
	movl MM_Utils+48,%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
.L88:
	movl -4(%ebp),%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Utils__LocalModTime,.Lfe15-Utils__LocalModTime
	.align 16
	.type	 Utils__ModificationTime,@function
Utils__ModificationTime:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	cmpl $0,8(%ebp)
	je .L90
	movl MM_Utils+48,%edx
	movl (%edx),%eax
	movl 4(%eax),%ecx
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
	addl $12,%esp
	testl %eax,%eax
	jne .L91
.L90:
	movl 8(%ebp),%eax
	pushl %eax
	call Utils__NoteModification
	movl %eax,-4(%ebp)
.L91:
	movl -4(%ebp),%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Utils__ModificationTime,.Lfe16-Utils__ModificationTime
	.align 16
	.type	 Utils__NoteModification,@function
Utils__NoteModification:
	pushl %ebp
	movl %esp,%ebp
	subl $200,%esp
	pushl %ebx
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L98
.L94:
	movl $MM_Utils+144,-192(%ebp)
	movl $0,-196(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-200(%ebp)
	leal -200(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -180(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L95
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_FS+184,%eax
	call *%eax
	movl -12(%ebp),%eax
	movl -16(%ebp),%edx
	pushl %eax
	pushl %edx
	call Utils__M3Time
	movl %eax,-4(%ebp)
	movl -200(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $16,%esp
	jmp .L96
	.align 16
.L95:
	movl $0,-4(%ebp)
.L96:
	movl MM_Utils+48,%edx
	movl (%edx),%eax
	movl 8(%eax),%ecx
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ebx
	pushl %ebx
	pushl %edx
	call *%ecx
	movl -4(%ebp),%eax
.L98:
	movl -204(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Utils__NoteModification,.Lfe17-Utils__NoteModification
	.align 16
	.type	 Utils__NoteNewFile,@function
Utils__NoteNewFile:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl MI_Time+44,%eax
	call *%eax
	subl $8,%esp
	fstpl (%esp)
	call Utils__M3Time
	movl MM_Utils+48,%edx
	movl %eax,%ebx
	movl (%edx),%eax
	movl 8(%eax),%ecx
	movl %ebx,-4(%ebp)
	leal -4(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%esi
	pushl %esi
	pushl %edx
	call *%ecx
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Utils__NoteNewFile,.Lfe18-Utils__NoteNewFile
.section	.rodata
	.align 4
.LC0:
	.long 0x80000000,0x41c6925e
	.align 4
.LC1:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 Utils__M3Time,@function
Utils__M3Time:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
.L101:
	fldl .LC0
	fldl 8(%ebp)
	fsubp %st,%st(1)
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L102
	fldl .LC1
	faddp %st,%st(1)
	jmp .L105
	.align 16
.L102:
	fldl .LC1
	fsubrp %st,%st(1)
.L105:
	fnstcw -12(%ebp)
	movl -12(%ebp),%eax
	movb $12,%ah
	movl %eax,-16(%ebp)
	fldcw -16(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edx
	fldcw -12(%ebp)
	movl %edx,%eax
.L104:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Utils__M3Time,.Lfe19-Utils__M3Time
	.align 16
	.type	 Utils__PrepArgs,@function
Utils__PrepArgs:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	leal -4(%ebp),%edx
	pushl %esi
	leal -12(%ebp),%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	cmpl $0,12(%ebp)
	jne .L107
	pushl $3892
	call _m3_fault
	.align 16
.L107:
	movl 12(%ebp),%ecx
	movl 8(%ecx),%eax
	movl %eax,-4(%ebp)
	pushl %esi
	movl MM_Utils+716,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edi
	addl $8,%esp
	movl 12(%ebp),%edx
	xorl %eax,%eax
	movb MI_Msg+44,%al
	movl (%edx),%esi
	cmpl $1,%eax
	jle .L110
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	movl MI_Msg+84,%eax
	call *%eax
	addl $28,%esp
.L110:
	movl 12(%ebp),%ecx
	xorl %ebx,%ebx
	movl 8(%ecx),%ecx
	decl %ecx
	movl %ecx,-16(%ebp)
	jmp .L111
	.align 16
.L112:
	testl %edi,%edi
	jne .L113
	pushl $3972
	call _m3_fault
	.align 16
.L113:
	cmpl %ebx,4(%edi)
	ja .L114
	pushl $3970
	call _m3_fault
	.align 16
.L114:
	movl (%edi),%eax
	leal (%eax,%ebx,4),%eax
	movl %eax,-20(%ebp)
	testl %esi,%esi
	jne .L115
	pushl $3972
	call _m3_fault
	.align 16
.L115:
	movl -20(%ebp),%edx
	movl (%esi),%eax
	movl %eax,(%edx)
	xorl %eax,%eax
	movb MI_Msg+44,%al
	cmpl $1,%eax
	jle .L116
	cmpl %ebx,4(%edi)
	ja .L118
	pushl $3986
	call _m3_fault
	.align 16
.L118:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl (%edi),%eax
	movl (%eax,%ebx,4),%eax
	pushl %eax
	pushl $MM_Utils+576
	movl MI_Msg+84,%eax
	call *%eax
	addl $28,%esp
.L116:
	testl %esi,%esi
	jne .L119
	pushl $4004
	call _m3_fault
	.align 16
.L119:
	movl 4(%esi),%esi
	incl %ebx
.L111:
	cmpl %ebx,-16(%ebp)
	jge .L112
	xorl %eax,%eax
	movb MI_Msg+44,%al
	cmpl $1,%eax
	jle .L121
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	movl MI_Msg+84,%eax
	call *%eax
.L121:
	leal -32(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Utils__PrepArgs,.Lfe20-Utils__PrepArgs
	.align 16
	.type	 Utils__Execute,@function
Utils__Execute:
	pushl %ebp
	movl %esp,%ebp
	subl $196,%esp
	pushl %esi
	xorl %eax,%eax
	pushl %ebx
	movl %eax,-12(%ebp)
	movl %eax,-8(%ebp)
	movl %eax,-4(%ebp)
	movl %eax,-196(%ebp)
	pushl $MM_Utils+728
	movl MI_Stdio+48,%eax
	pushl %eax
	call Utils__FlushWriter
	pushl $MM_Utils+752
	movl MI_Stdio+52,%eax
	pushl %eax
	call Utils__FlushWriter
	addl $16,%esp
.L123:
	movl $MM_Utils+144,-184(%ebp)
	movl $0,-188(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-192(%ebp)
	leal -192(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -172(%ebp),%eax
	pushl %eax
	call _setjmp
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L124
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	movl MI_Process+176,%eax
	call *%eax
	addl $12,%esp
	cmpl $0,16(%ebp)
	je .L125
	movl 16(%ebp),%ecx
	pushl %ecx
	call Utils__OpenStdout
	movl %eax,%edx
	movl %edx,-8(%ebp)
	addl $4,%esp
.L125:
	movl 12(%ebp),%ecx
	pushl %ecx
	movl 8(%ebp),%ecx
	pushl %ecx
	call Utils__PrepArgs
	movl %eax,%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L126
	pushl $4372
	call _m3_fault
	.align 16
.L126:
	movl -4(%ebp),%eax
	pushl %eax
	movl -8(%ebp),%eax
	pushl %eax
	movl -12(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %ebx
	pushl %edx
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_Process+44,%eax
	call *%eax
	movl %eax,%esi
	addl $28,%esp
	cmpl $0,16(%ebp)
	je .L127
	movl 16(%ebp),%ecx
	pushl %ecx
	movl -8(%ebp),%eax
	pushl %eax
	call Utils__CloseStdout
	addl $8,%esp
.L127:
	pushl %esi
	movl MI_Process+152,%eax
	call *%eax
	movl %eax,-196(%ebp)
	movl -192(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
	jmp .L128
	.align 16
.L124:
	movl -176(%ebp),%ebx
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+776
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $MM_Utils+808
	movl %eax,%esi
	pushl %esi
	movl MI_RTHooks+76,%eax
	call *%eax
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%edx
	pushl %edx
	pushl %ebx
	movl MI_Msg+56,%eax
	call *%eax
	addl $36,%esp
.L128:
	cmpb $0,20(%ebp)
	je .L130
	cmpl $0,-196(%ebp)
	je .L130
	pushl $10
	movl -196(%ebp),%ecx
	pushl %ecx
	movl MI_Fmt+52,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	pushl $MM_Utils+856
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+832
	pushl $0
	movl MI_Msg+56,%eax
	call *%eax
.L130:
	leal -204(%ebp),%esp
	movl -196(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Utils__Execute,.Lfe21-Utils__Execute
	.align 16
	.type	 Utils__OpenStdout,@function
Utils__OpenStdout:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L132:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L133
	pushl $2
	pushl %eax
	pushl $1
	pushl $1
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_FS+48,%eax
	call *%eax
	movl %eax,%edx
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L134
	.align 16
.L133:
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl $MM_Utils+896
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
	xorl %edx,%edx
.L134:
	movl %edx,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Utils__OpenStdout,.Lfe22-Utils__OpenStdout
	.align 16
	.type	 Utils__CloseStdout,@function
Utils__CloseStdout:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
	cmpl $0,8(%ebp)
	je .L136
.L138:
	movl $MM_Utils+144,-172(%ebp)
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
	jne .L139
	movl 8(%ebp),%edx
	movl (%edx),%eax
	movl 16(%eax),%eax
	pushl %edx
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L136
	.align 16
.L139:
	movl -164(%ebp),%eax
	pushl $0
	pushl $0
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Utils+944
	pushl %eax
	movl MI_Msg+56,%eax
	call *%eax
.L136:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Utils__CloseStdout,.Lfe23-Utils__CloseStdout
	.align 16
	.type	 _INITM_Utils,@function
_INITM_Utils:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl $0,MM_Utils+44
	movl $0,MM_Utils+48
	movl MM_Utils+984,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%ebx
	pushl $100
	pushl %edx
	call *%ebx
	movl %eax,%edx
	movl %edx,MM_Utils+44
	movl MM_Utils+984,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%ebx
	pushl $0
	pushl %edx
	call *%ebx
	movl %eax,%edx
	movl %edx,MM_Utils+48
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 _INITM_Utils,.Lfe24-_INITM_Utils
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Utils
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe25:
	.size	 _m3_fault,.Lfe25-_m3_fault
.globl MM_Utils
.data
	.align 4
	.type	 MM_Utils,@object
	.size	 MM_Utils,1708
MM_Utils:
	.long MM_Utils+1569
	.zero	4
	.long MM_Utils+392
	.zero	8
	.long MM_Utils+1272
	.zero	4
	.long MM_Utils+1564
	.long MM_Utils+1564
	.zero	4
	.long _INITM_Utils
	.zero	8
	.long Utils__OpenStdout
	.long Utils__CloseStdout
	.long Utils__OpenWriter
	.long Utils__FlushWriter
	.long Utils__CloseWriter
	.long Utils__OpenReader
	.long Utils__CloseReader
	.long Utils__RewindReader
	.long Utils__OpenTempFile
	.long Utils__NoteTempFile
	.long Utils__RemoveTempFiles
	.long Utils__Remove
	.long Utils__Copy
	.long Utils__CopyText
	.long Utils__IsEqual
	.long Utils__NoteLocalFileTimes
	.long Utils__LocalModTime
	.long Utils__ModificationTime
	.long Utils__NoteModification
	.long Utils__NoteNewFile
	.long Utils__M3Time
	.long Utils__PrepArgs
	.long Utils__Execute
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_Utils+164
	.long 34
	.ascii	"unable to open file for writing: "
	.zero	3
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long 2
	.long MM_Utils+224
	.long 30
	.ascii	"unable to flush output file: "
	.zero	3
	.long 2
	.long MM_Utils+268
	.long 30
	.ascii	"unable to close output file: "
	.zero	3
	.long 2
	.long MM_Utils+312
	.long 34
	.ascii	"unable to open file for reading: "
	.zero	3
	.long 2
	.long MM_Utils+360
	.long 29
	.ascii	"unable to close input file: "
	.zero	4
	.long MM_Utils+716
	.long 860659424
	.long 2
	.long MM_Utils+412
	.long 30
	.ascii	"unable to rewind input file: "
	.zero	3
	.long 2
	.long MM_Utils+456
	.long 2
	.ascii	"_"
	.zero	3
	.long 2
	.long MM_Utils+472
	.long 4
	.ascii	"rm "
	.zero	1
	.long 2
	.long MM_Utils+488
	.long 6
	.ascii	"copy "
	.zero	3
	.long 2
	.long MM_Utils+508
	.long 5
	.ascii	" -> "
	.zero	4
	.long 2
	.long MM_Utils+528
	.long 17
	.ascii	"unable to copy: "
	.zero	4
	.long 2
	.long MM_Utils+560
	.long 9
	.ascii	"compare "
	.zero	4
	.long 2
	.long MM_Utils+584
	.long 2
	.ascii	" "
	.zero	3
	.long 2
	.long MM_Utils+600
	.long 20
	.ascii	"unable to compare: "
	.zero	1
	.long 2
	.long MM_Utils+632
	.long 5
	.ascii	" == "
	.zero	4
	.long 2
	.long MM_Utils+652
	.long 2
	.ascii	"."
	.zero	3
	.long 2
	.long MM_Utils+668
	.long 46
	.ascii	"unable to get file times in current directory"
	.zero	3
	.long MM_Utils+984
	.long -244065135
	.long 2
	.long MM_Utils+736
	.long 9
	.ascii	"<stdout>"
	.zero	4
	.long 2
	.long MM_Utils+760
	.long 9
	.ascii	"<stderr>"
	.zero	4
	.long 2
	.long MM_Utils+784
	.long 17
	.ascii	"Process.Create(\""
	.zero	4
	.long 2
	.long MM_Utils+816
	.long 10
	.ascii	"\") failed"
	.zero	3
	.long 2
	.long MM_Utils+840
	.long 10
	.ascii	"program \""
	.zero	3
	.long 2
	.long MM_Utils+864
	.long 25
	.ascii	"\" failed, exit status = "
	.zero	4
	.long 2
	.long MM_Utils+904
	.long 34
	.ascii	"unable to open file for listing: "
	.zero	3
	.long 2
	.long MM_Utils+952
	.long 31
	.ascii	"unable to close listing file: "
	.zero	6
	.long -1836174216
	.ascii	"_INITM_Utils"
	.zero	1
	.ascii	"CloseStdout"
	.zero	1
	.ascii	"OpenStdout"
	.zero	1
	.ascii	"Execute"
	.zero	1
	.ascii	"PrepArgs"
	.zero	1
	.ascii	"M3Time"
	.zero	1
	.ascii	"NoteNewFile"
	.zero	1
	.ascii	"NoteModification"
	.zero	1
	.ascii	"ModificationTime"
	.zero	1
	.ascii	"LocalModTime"
	.zero	1
	.ascii	"NoteLocalFileTimes"
	.zero	1
	.ascii	"IsEqual"
	.zero	1
	.ascii	"CopyText"
	.zero	1
	.ascii	"Copy"
	.zero	1
	.ascii	"Remove"
	.zero	1
	.ascii	"RemoveTempFiles"
	.zero	1
	.ascii	"NoteTempFile"
	.zero	1
	.ascii	"OpenTempFile"
	.zero	1
	.ascii	"RewindReader"
	.zero	1
	.ascii	"CloseReader"
	.zero	1
	.ascii	"OpenReader"
	.zero	1
	.ascii	"CloseWriter"
	.zero	1
	.ascii	"FlushWriter"
	.zero	1
	.ascii	"OpenWriter"
	.zero	1
	.long _INITM_Utils
	.long MM_Utils+992
	.zero	4
	.long Utils__CloseStdout
	.long MM_Utils+1005
	.zero	4
	.long Utils__OpenStdout
	.long MM_Utils+1017
	.zero	4
	.long Utils__Execute
	.long MM_Utils+1028
	.long MI_Utils+124
	.long Utils__PrepArgs
	.long MM_Utils+1036
	.long MI_Utils+120
	.long Utils__M3Time
	.long MM_Utils+1045
	.long MI_Utils+116
	.long Utils__NoteNewFile
	.long MM_Utils+1052
	.long MI_Utils+112
	.long Utils__NoteModification
	.long MM_Utils+1064
	.long MI_Utils+108
	.long Utils__ModificationTime
	.long MM_Utils+1081
	.long MI_Utils+104
	.long Utils__LocalModTime
	.long MM_Utils+1098
	.long MI_Utils+100
	.long Utils__NoteLocalFileTimes
	.long MM_Utils+1111
	.long MI_Utils+96
	.long Utils__IsEqual
	.long MM_Utils+1130
	.long MI_Utils+92
	.long Utils__CopyText
	.long MM_Utils+1138
	.long MI_Utils+88
	.long Utils__Copy
	.long MM_Utils+1147
	.long MI_Utils+84
	.long Utils__Remove
	.long MM_Utils+1152
	.long MI_Utils+80
	.long Utils__RemoveTempFiles
	.long MM_Utils+1159
	.long MI_Utils+76
	.long Utils__NoteTempFile
	.long MM_Utils+1175
	.long MI_Utils+72
	.long Utils__OpenTempFile
	.long MM_Utils+1188
	.long MI_Utils+68
	.long Utils__RewindReader
	.long MM_Utils+1201
	.long MI_Utils+64
	.long Utils__CloseReader
	.long MM_Utils+1214
	.long MI_Utils+60
	.long Utils__OpenReader
	.long MM_Utils+1226
	.long MI_Utils+56
	.long Utils__CloseWriter
	.long MM_Utils+1237
	.long MI_Utils+52
	.long Utils__FlushWriter
	.long MM_Utils+1249
	.long MI_Utils+48
	.long Utils__OpenWriter
	.long MM_Utils+1261
	.long MI_Utils+44
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/Utils.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
