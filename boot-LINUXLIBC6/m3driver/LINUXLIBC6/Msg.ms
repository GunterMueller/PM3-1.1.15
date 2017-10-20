	.file	"Msg.mc"
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
	.type	 Msg__SetLevel,@function
Msg__SetLevel:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movb MI_Msg+44,%al
	xorl %edx,%edx
	movb 8(%ebp),%dl
	cmpl %edx,%eax
	jbe .L2
	movb %al,MI_Msg+44
	jmp .L1
	.align 16
.L2:
	movb %dl,MI_Msg+44
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Msg__SetLevel,.Lfe1-Msg__SetLevel
	.align 16
	.type	 Msg__UsageError,@function
Msg__UsageError:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %ebx
	call Msg__Out
	pushl $0
	movl MI_Params+48,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	pushl $MM_Msg+92
	call Msg__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Msg+112
	call Msg__Out
	addl $56,%esp
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl $MM_Msg+160
	call Msg__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $MM_Msg+200
	pushl $0
	call Msg__FatalError
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Msg__UsageError,.Lfe2-Msg__UsageError
	.align 16
	.type	 Msg__OSErr,@function
Msg__OSErr:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	xorl %ebx,%ebx
	jmp .L6
	.align 16
.L7:
	testl %ebx,%ebx
	jne .L8
	movl $MM_Msg+224,%ebx
	jmp .L9
	.align 16
.L8:
	pushl $MM_Msg+240
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
.L9:
	movl 4(%esi),%eax
	pushl %eax
	movl MI_Atom+48,%eax
	call *%eax
	pushl %eax
	pushl %ebx
	movl MI_RTHooks+76,%eax
	call *%eax
	movl %eax,%ebx
	movl 8(%esi),%esi
	addl $12,%esp
.L6:
	testl %esi,%esi
	jne .L7
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Msg__OSErr,.Lfe3-Msg__OSErr
	.align 16
	.type	 Msg__FatalError,@function
Msg__FatalError:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 20(%ebp),%esi
	movl 24(%ebp),%ebx
	pushl %eax
	call Msg__OSErr
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl %eax,%edi
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	call Msg__Out
	addl $32,%esp
	pushl $0
	pushl %edi
	pushl %ebx
	pushl %esi
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	pushl $MM_Msg+260
	call Msg__Out
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %eax
	call Msg__Out
	addl $56,%esp
	pushl $0
	pushl $MI_M3Driver+68
	movl MI_RTHooks+52,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Msg__FatalError,.Lfe4-Msg__FatalError
	.align 16
	.type	 Msg__FileError,@function
Msg__FileError:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 16(%ebp),%edi
	movl 20(%ebp),%esi
	movl 24(%ebp),%ebx
	pushl %eax
	call Msg__OSErr
	movl %eax,%edx
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 12(%ebp),%ecx
	pushl %ecx
	call Msg__Out
	addl $32,%esp
	pushl $0
	pushl $MI_M3Driver+68
	movl MI_RTHooks+52,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Msg__FileError,.Lfe5-Msg__FileError
	.align 16
	.type	 Msg__Debug,@function
Msg__Debug:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%ecx
	movl 20(%ebp),%edx
	xorl %eax,%eax
	movb MI_Msg+44,%al
	cmpl $3,%eax
	jle .L13
	pushl $0
	pushl $0
	pushl $0
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %esi
	call Msg__Out
.L13:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Msg__Debug,.Lfe6-Msg__Debug
	.align 16
	.type	 Msg__Verbose,@function
Msg__Verbose:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%esi
	movl 16(%ebp),%ebx
	movl 20(%ebp),%ecx
	movl 24(%ebp),%edx
	xorl %eax,%eax
	movb MI_Msg+44,%al
	cmpl $2,%eax
	jle .L15
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %esi
	pushl %edi
	call Msg__Out
.L15:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Msg__Verbose,.Lfe7-Msg__Verbose
	.align 16
	.type	 Msg__Commands,@function
Msg__Commands:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	movl 20(%ebp),%ebx
	movl 24(%ebp),%ecx
	xorl %eax,%eax
	movb MI_Msg+44,%al
	cmpl $1,%eax
	jle .L17
	movl MI_Wr+60,%eax
	pushl %eax
	movl 28(%ebp),%edx
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call Msg__Out
.L17:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Msg__Commands,.Lfe8-Msg__Commands
	.align 16
	.type	 Msg__Explain,@function
Msg__Explain:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	movl 20(%ebp),%ebx
	xorl %eax,%eax
	movb MI_Msg+44,%al
	testl %eax,%eax
	jle .L19
	cmpl $1,%eax
	jle .L21
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	call Msg__Out
	addl $28,%esp
.L21:
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	pushl %ebx
	pushl %esi
	pushl %edi
	movl 8(%ebp),%edx
	pushl %edx
	call Msg__Out
.L19:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Msg__Explain,.Lfe9-Msg__Explain
	.align 16
	.type	 Msg__OutL,@function
Msg__OutL:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	xorl %ebx,%ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl %esi
	pushl %eax
	call Msg__Out
	addl $28,%esp
	testl %edi,%edi
	je .L23
	testl %esi,%esi
	je .L25
	movl $MM_Msg+288,%ebx
.L25:
	movl (%edi),%esi
	jmp .L26
	.align 16
.L27:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl (%esi),%eax
	pushl %eax
	pushl %ebx
	call Msg__Out
	movl $MM_Msg+288,%ebx
	addl $28,%esp
	movl 4(%esi),%esi
.L26:
	testl %esi,%esi
	jne .L27
.L23:
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	pushl $0
	movl MI_Wr+60,%eax
	pushl %eax
	call Msg__Out
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Msg__OutL,.Lfe10-Msg__OutL
	.align 16
	.type	 Msg__Out,@function
Msg__Out:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	movl MI_Stdio+48,%edx
	movl %edx,-184(%ebp)
.L32:
	movl $MM_Msg+300,-172(%ebp)
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
	jne .L33
	cmpl $0,8(%ebp)
	je .L34
	movl 8(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L34:
	cmpl $0,12(%ebp)
	je .L35
	movl 12(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L35:
	cmpl $0,16(%ebp)
	je .L36
	movl 16(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L36:
	cmpl $0,20(%ebp)
	je .L37
	movl 20(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L37:
	cmpl $0,24(%ebp)
	je .L38
	movl 24(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L38:
	cmpl $0,28(%ebp)
	je .L39
	movl 28(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L39:
	cmpl $0,32(%ebp)
	je .L40
	movl 32(%ebp),%edx
	pushl %edx
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Wr+68,%eax
	call *%eax
	addl $8,%esp
.L40:
	pushl $MM_Msg+320
	movl -184(%ebp),%edx
	pushl %edx
	movl MI_Utils+48,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L31
	.align 16
.L33:
	pushl $1
	movl MI_Process+156,%eax
	call *%eax
.L31:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Msg__Out,.Lfe11-Msg__Out
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Msg
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_Msg
.data
	.align 4
	.type	 MM_Msg,@object
	.size	 MM_Msg,700
MM_Msg:
	.long MM_Msg+564
	.zero	16
	.long MM_Msg+428
	.zero	20
	.long Msg__SetLevel
	.long Msg__UsageError
	.long Msg__FatalError
	.long Msg__FileError
	.long Msg__OSErr
	.long Msg__Debug
	.long Msg__Verbose
	.long Msg__Commands
	.long Msg__Explain
	.long Msg__Out
	.long Msg__OutL
	.long 2
	.long MM_Msg+100
	.long 8
	.ascii	"usage: "
	.zero	1
	.long 2
	.long MM_Msg+120
	.long 36
	.ascii	" [-?] [options] [-o pgm|-a lib|-c] "
	.zero	1
	.long 2
	.long MM_Msg+168
	.long 27
	.ascii	"sources... objs... libs..."
	.zero	2
	.long 2
	.long MM_Msg+208
	.long 10
	.ascii	"bad usage"
	.zero	3
	.long 2
	.long MM_Msg+232
	.long 3
	.ascii	": "
	.zero	2
	.long 2
	.long MM_Msg+248
	.long 8
	.ascii	"  ***  "
	.zero	1
	.long 2
	.long MM_Msg+268
	.long 14
	.ascii	"Fatal Error: "
	.zero	3
	.long 2
	.long MM_Msg+296
	.long 2
	.ascii	" "
	.zero	3
	.long MI_M3Driver+68
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long 2
	.long MM_Msg+328
	.long 9
	.ascii	"<stdout>"
	.zero	4
	.ascii	"Out"
	.zero	1
	.ascii	"OutL"
	.zero	1
	.ascii	"Explain"
	.zero	1
	.ascii	"Commands"
	.zero	1
	.ascii	"Verbose"
	.zero	1
	.ascii	"Debug"
	.zero	1
	.ascii	"FileError"
	.zero	1
	.ascii	"FatalError"
	.zero	1
	.ascii	"OSErr"
	.zero	1
	.ascii	"UsageError"
	.zero	1
	.ascii	"SetLevel"
	.zero	2
	.long Msg__Out
	.long MM_Msg+340
	.long MI_Msg+84
	.long Msg__OutL
	.long MM_Msg+344
	.long MI_Msg+88
	.long Msg__Explain
	.long MM_Msg+349
	.long MI_Msg+80
	.long Msg__Commands
	.long MM_Msg+357
	.long MI_Msg+76
	.long Msg__Verbose
	.long MM_Msg+366
	.long MI_Msg+72
	.long Msg__Debug
	.long MM_Msg+374
	.long MI_Msg+68
	.long Msg__FileError
	.long MM_Msg+380
	.long MI_Msg+60
	.long Msg__FatalError
	.long MM_Msg+390
	.long MI_Msg+56
	.long Msg__OSErr
	.long MM_Msg+401
	.long MI_Msg+64
	.long Msg__UsageError
	.long MM_Msg+407
	.long MI_Msg+52
	.long Msg__SetLevel
	.long MM_Msg+418
	.long MI_Msg+48
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3dri"
	.ascii	"ver/src/Msg.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
