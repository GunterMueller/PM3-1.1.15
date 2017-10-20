	.file	"Marker.mc"
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
	.type	 Marker__SaveFrame,@function
Marker__SaveFrame:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl MM_Marker+340,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	cmpl $0,MM_Marker+188
	jge .L2
	pushl $1072
	call _m3_fault
	.align 16
.L2:
	movl MM_Marker+200,%edx
	decl %edx
	cmpl $50,%edx
	jbe .L3
	pushl $1089
	call _m3_fault
	.align 16
.L3:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-4(%ebp)
	movb $1,2(%eax)
	incl MM_Marker+188
	testl %ebx,%ebx
	jne .L4
	pushl $1124
	call _m3_fault
	.align 16
.L4:
	movl %ebx,%edi
	movl -4(%ebp),%esi
	leal -16(%ebp),%esp
	cld
	movl $13,%ecx
	rep
	movsl
	movl MM_Marker+180,%eax
	movl %eax,36(%ebx)
	movl %ebx,MM_Marker+180
	incl MM_Marker+184
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Marker__SaveFrame,.Lfe1-Marker__SaveFrame
	.align 16
	.type	 Marker__Pop,@function
Marker__Pop:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Marker+200,%edx
	decl %edx
	movl %edx,MM_Marker+200
	cmpl $50,%edx
	jbe .L7
	pushl $1377
	call _m3_fault
	.align 16
.L7:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	cmpb $0,L_1+2(,%eax,4)
	je .L8
	decl MM_Marker+188
.L8:
	cmpl $0,MM_Marker+188
	jge .L6
	pushl $1392
	call _m3_fault
	.align 16
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Marker__Pop,.Lfe2-Marker__Pop
	.align 16
	.type	 Marker__PushFinally,@function
Marker__PushFinally:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl $0
	call Marker__Push
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Marker__PushFinally,.Lfe3-Marker__PushFinally
	.align 16
	.type	 Marker__PushFinallyProc,@function
Marker__PushFinallyProc:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	movl 20(%ebp),%ebx
	movl 24(%ebp),%esi
	pushl $0
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl $1
	call Marker__Push
	movl MM_Marker+200,%edx
	decl %edx
	addl $20,%esp
	cmpl $50,%edx
	jbe .L12
	pushl $1585
	call _m3_fault
	.align 16
.L12:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-4(%ebp)
	leal -12(%ebp),%esp
	movl %ebx,44(%eax)
	movl %esi,48(%eax)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Marker__PushFinallyProc,.Lfe4-Marker__PushFinallyProc
	.align 16
	.type	 Marker__PopFinally,@function
Marker__PopFinally:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	call Marker__Pop
	movl MM_Marker+200,%edx
	cmpl $50,%edx
	jbe .L14
	pushl $1729
	call _m3_fault
	.align 16
.L14:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	movb L_1+3(,%eax,4),%al
	movb %al,(%ebx)
	movl MM_Marker+200,%edx
	cmpl $50,%edx
	jbe .L15
	pushl $1745
	call _m3_fault
	.align 16
.L15:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	leal -8(%ebp),%esp
	movb L_1+4(,%eax,4),%al
	movb %al,(%esi)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Marker__PopFinally,.Lfe5-Marker__PopFinally
	.align 16
	.type	 Marker__PushLock,@function
Marker__PushLock:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl $2
	call Marker__Push
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Marker__PushLock,.Lfe6-Marker__PushLock
	.align 16
	.type	 Marker__PushTry,@function
Marker__PushTry:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%edx
	movl 20(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl $4
	call Marker__Push
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Marker__PushTry,.Lfe7-Marker__PushTry
	.align 16
	.type	 Marker__PushTryElse,@function
Marker__PushTryElse:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl $0
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl $5
	call Marker__Push
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Marker__PushTryElse,.Lfe8-Marker__PushTryElse
	.align 16
	.type	 Marker__PushExit,@function
Marker__PushExit:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl $-1
	pushl $3
	call Marker__Push
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Marker__PushExit,.Lfe9-Marker__PushExit
	.align 16
	.type	 Marker__PushRaises,@function
Marker__PushRaises:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 16(%ebp),%eax
	movl 20(%ebp),%edx
	pushl %eax
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl $6
	call Marker__Push
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Marker__PushRaises,.Lfe10-Marker__PushRaises
	.align 16
	.type	 Marker__PushProcedure,@function
Marker__PushProcedure:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 16(%ebp),%edi
	testl %ebx,%ebx
	sete %al
	andl $255,%eax
	testl %esi,%esi
	jne .L23
	cmpl $1,%eax
	je .L22
	jmp .L24
	.align 16
.L23:
	testl %eax,%eax
	je .L22
.L24:
	pushl $2224
	call _m3_fault
	.align 16
.L22:
	pushl $0
	pushl $0
	pushl $-1
	pushl $-1
	pushl $7
	call Marker__Push
	movl MM_Marker+200,%edx
	decl %edx
	addl $20,%esp
	cmpl $50,%edx
	jbe .L25
	pushl $2257
	call _m3_fault
	.align 16
.L25:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-4(%ebp)
	leal -16(%ebp),%esp
	movl %ebx,20(%eax)
	movl %esi,24(%eax)
	movl %edi,40(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Marker__PushProcedure,.Lfe11-Marker__PushProcedure
	.align 16
	.type	 Marker__Push,@function
Marker__Push:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	movl MM_Marker+200,%edx
	cmpl $50,%edx
	jbe .L27
	pushl $2417
	call _m3_fault
	.align 16
.L27:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	movb 8(%ebp),%cl
	movb %cl,L_1(%eax)
	movl -4(%ebp),%eax
	movb $0,2(%eax)
	movl -4(%ebp),%eax
	movb $0,1(%eax)
	movl -4(%ebp),%eax
	movb $0,3(%eax)
	movl -4(%ebp),%eax
	movb $0,4(%eax)
	movl -4(%ebp),%eax
	leal -16(%ebp),%esp
	movl %ebx,12(%eax)
	movl %esi,16(%eax)
	movl %edi,8(%eax)
	movl $0,20(%eax)
	movl $0,24(%eax)
	movl $0,28(%eax)
	movl 24(%ebp),%ecx
	movl %ecx,32(%eax)
	movl $0,36(%eax)
	movl $0,40(%eax)
	movl $0,44(%eax)
	movl $0,48(%eax)
	incl MM_Marker+200
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Marker__Push,.Lfe12-Marker__Push
	.align 16
	.type	 Marker__PushFrame,@function
Marker__PushFrame:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl MM_Marker+192,%ebx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl MI_CG+424,%eax
	call *%eax
	movl MI_M3RT+112,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+408,%eax
	xorl %esi,%esi
	call *%eax
	addl $12,%esp
	cmpb $0,MI_Target+813
	je .L29
	testl %ebx,%ebx
	jne .L30
	call Marker__GetFrameStack
	movl %eax,%ebx
.L30:
	pushl %esi
	pushl %ebx
	movl MI_CG+388,%eax
	call *%eax
	movl MI_M3RT+108,%eax
	pushl %eax
	pushl %edi
	movl MI_CG+412,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	pushl %esi
	pushl %edi
	movl MI_CG+368,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_CG+412,%eax
	call *%eax
	jmp .L28
	.align 16
.L29:
	pushl $2
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Procedure+92,%eax
	call *%eax
	movl MI_Target+64,%eax
	pushl %eax
	pushl $0
	pushl %edi
	movl MI_CG+368,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl %ebx
	movl MI_Procedure+96,%eax
	call *%eax
.L28:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 Marker__PushFrame,.Lfe13-Marker__PushFrame
	.align 16
	.type	 Marker__PopFrame,@function
Marker__PopFrame:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_Marker+192,%ebx
	cmpb $0,MI_Target+813
	je .L33
	testl %ebx,%ebx
	jne .L34
	call Marker__GetFrameStack
	movl %eax,%ebx
.L34:
	movl MI_M3RT+108,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+388,%eax
	call *%eax
	pushl $0
	pushl %ebx
	movl MI_CG+412,%eax
	call *%eax
	jmp .L32
	.align 16
.L33:
	pushl $3
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
	movl MI_Procedure+92,%eax
	call *%eax
	movl MI_M3RT+108,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+388,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl %ebx
	movl MI_Procedure+96,%eax
	call *%eax
.L32:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 Marker__PopFrame,.Lfe14-Marker__PopFrame
	.align 16
	.type	 Marker__GetFrameStack,@function
Marker__GetFrameStack:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $MM_Marker+352
	movl MI_M3ID+44,%eax
	call *%eax
	pushl $0
	movl %eax,%edx
	pushl $0
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_Target+60,%eax
	pushl %eax
	pushl %edx
	movl MI_CG+180,%eax
	call *%eax
	movl %eax,MM_Marker+192
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 Marker__GetFrameStack,.Lfe15-Marker__GetFrameStack
	.align 16
	.type	 Marker__SetLock,@function
Marker__SetLock:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	xorl %eax,%eax
	movb 8(%ebp),%al
	movl 16(%ebp),%ebx
	movb MM_Marker+328(%eax),%al
	andl $255,%eax
	pushl %eax
	movl MI_Runtime+52,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_Procedure+92,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl MI_CG+388,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl %edi
	movl MI_Procedure+96,%eax
	call *%eax
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 Marker__SetLock,.Lfe16-Marker__SetLock
	.align 16
	.type	 Marker__CallFinallyHandler,@function
Marker__CallFinallyHandler:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%eax
	testl %ebx,%ebx
	je .L39
	pushl $15
	pushl %eax
	pushl %ebx
	movl MI_CG+728,%eax
	call *%eax
	pushl $15
	pushl %ebx
	movl MI_CG+732,%eax
	jmp .L41
	.align 16
.L39:
	movl MI_Target+752,%eax
	pushl %eax
	pushl $15
	movl MI_CG+736,%eax
	call *%eax
	movl MI_M3RT+148,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+388,%eax
	call *%eax
	movl MI_CG+752,%eax
	call *%eax
	movl MI_M3RT+144,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+388,%eax
	call *%eax
	movl MI_Target+752,%eax
	pushl %eax
	pushl $15
	movl MI_CG+740,%eax
.L41:
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 Marker__CallFinallyHandler,.Lfe17-Marker__CallFinallyHandler
	.align 16
	.type	 Marker__CaptureState,@function
Marker__CaptureState:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edi
	movb $0,-1(%ebp)
	movl MM_Marker+196,%ebx
	testl %ebx,%ebx
	jne .L43
	pushl %ebx
	movl MI_Target+808,%eax
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%edx
	leal -1(%ebp),%eax
	pushl %eax
	movl MI_Target+752,%eax
	pushl %eax
	pushl $2
	pushl $1
	pushl %edx
	movl MI_CG+288,%eax
	call *%eax
	movl %eax,MM_Marker+196
	addl $28,%esp
	cmpb $0,-1(%ebp)
	je .L43
	pushl %ebx
	pushl $MM_Marker+388
	movl MI_M3ID+44,%eax
	call *%eax
	pushl %ebx
	pushl %ebx
	pushl $1
	pushl %ebx
	movl %eax,%edx
	pushl $14
	movl MI_Target+64,%eax
	pushl %eax
	movl MI_Target+788,%eax
	pushl %eax
	pushl %edx
	movl MI_CG+204,%eax
	call *%eax
	addl $40,%esp
.L43:
	pushl $2
	pushl $0
	movl MM_Marker+196,%eax
	pushl %eax
	movl MI_CG+728,%eax
	call *%eax
	movl MI_Target+792,%eax
	pushl %eax
	movl MI_M3RT+132,%eax
	pushl %eax
	pushl %esi
	movl MI_CG+368,%eax
	call *%eax
	pushl $0
	movl MI_CG+744,%eax
	call *%eax
	pushl $2
	movl MM_Marker+196,%eax
	pushl %eax
	movl MI_CG+732,%eax
	call *%eax
	addl $36,%esp
	pushl $0
	pushl %edi
	movl MI_CG+324,%eax
	call *%eax
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 Marker__CaptureState,.Lfe18-Marker__CaptureState
	.align 16
	.type	 Marker__ExitOK,@function
Marker__ExitOK:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L51
	.align 16
.L47:
	cmpl $50,%ebx
	jle .L48
	pushl $4305
	call _m3_fault
	.align 16
.L48:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-4(%ebp)
	cmpb $5,L_1(%eax)
	jne .L49
	pushl $MM_Marker+408
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L49:
	movl -4(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $3,%eax
	jne .L50
	movl $1,%eax
	jmp .L53
	.align 16
.L50:
	cmpl $7,%eax
	je .L54
.L51:
	decl %ebx
	jns .L47
.L54:
	xorl %eax,%eax
.L53:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 Marker__ExitOK,.Lfe19-Marker__ExitOK
	.align 16
	.type	 Marker__ReturnOK,@function
Marker__ReturnOK:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L60
	.align 16
.L57:
	cmpl $50,%ebx
	jle .L58
	pushl $4529
	call _m3_fault
	.align 16
.L58:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-4(%ebp)
	cmpb $5,L_1(%eax)
	jne .L59
	pushl $MM_Marker+468
	pushl $1
	movl MI_Error+64,%eax
	call *%eax
	addl $8,%esp
.L59:
	movl -4(%ebp),%eax
	cmpb $7,(%eax)
	jne .L60
	movl $1,%eax
	jmp .L62
	.align 16
.L60:
	decl %ebx
	jns .L57
	xorl %eax,%eax
.L62:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 Marker__ReturnOK,.Lfe20-Marker__ReturnOK
	.align 16
	.type	 Marker__ReturnVar,@function
Marker__ReturnVar:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl MM_Marker+200,%edx
	jmp .L67
	.align 16
.L65:
	cmpl $50,%edx
	jle .L66
	pushl $4737
	call _m3_fault
	.align 16
.L66:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	cmpb $7,L_1(%eax)
	jne .L67
	movl 20(%ecx),%eax
	movl %eax,(%ebx)
	movl -4(%ebp),%eax
	movl 24(%eax),%eax
	movl %eax,(%esi)
	jmp .L63
	.align 16
.L67:
	decl %edx
	jns .L65
	pushl $4864
	call _m3_fault
	.align 16
.L63:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 Marker__ReturnVar,.Lfe21-Marker__ReturnVar
	.align 16
	.type	 Marker__EmitExit,@function
Marker__EmitExit:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl MM_Marker+200,%edx
	jmp .L78
	.align 16
.L71:
	cmpl $50,%edx
	jbe .L72
	pushl $5057
	call _m3_fault
	.align 16
.L72:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-4(%ebp)
	movb $1,4(%eax)
	movl -4(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $3,%eax
	je .L75
	cmpl $5,%eax
	je .L75
.L78:
	decl %edx
	jns .L71
.L75:
	cmpb $0,MI_Target+805
	je .L76
	call Marker__EmitExit1
	jmp .L69
	.align 16
.L76:
	call Marker__EmitExit2
.L69:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 Marker__EmitExit,.Lfe22-Marker__EmitExit
.section	.rodata
	.align 4
	.type	 L_2.0,@object
	.size	 L_2.0,32
L_2.0:
	.long .L83
	.long .L83
	.long .L84
	.long .L85
	.long .L86
	.long .L87
	.long .L88
	.long .L88
.text
	.align 16
	.type	 Marker__EmitExit1,@function
Marker__EmitExit1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L90
	.align 16
.L81:
	cmpl $50,%ebx
	jbe .L82
	pushl $5361
	call _m3_fault
	.align 16
.L82:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_2.0(,%eax,4)
	.align 16
.L87:
	pushl $-2
	movl MI_CG+424,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_CG+408,%eax
	call *%eax
	jmp .L85
	.align 16
.L83:
	jmp .L87
	.align 16
.L84:
	pushl $0
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $0
	call Marker__SetLock
	addl $12,%esp
	jmp .L90
	.align 16
.L85:
	movl -4(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_CG+320,%eax
	call *%eax
	jmp .L79
	.align 16
.L86:
	jmp .L90
	.align 16
.L88:
	pushl $MM_Marker+528
	movl MI_Error+44,%eax
	call *%eax
	pushl $5696
	call _m3_fault
	.align 16
.L90:
	decl %ebx
	jns .L81
.L79:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 Marker__EmitExit1,.Lfe23-Marker__EmitExit1
.section	.rodata
	.align 4
	.type	 L_3.1,@object
	.size	 L_3.1,32
L_3.1:
	.long .L96
	.long .L97
	.long .L98
	.long .L99
	.long .L100
	.long .L96
	.long .L101
	.long .L101
.text
	.align 16
	.type	 Marker__EmitExit2,@function
Marker__EmitExit2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L103
	.align 16
.L94:
	cmpl $50,%ebx
	jbe .L95
	pushl $5921
	call _m3_fault
	.align 16
.L95:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_3.1(,%eax,4)
	.align 16
.L96:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	pushl $-2
	movl MI_CG+424,%eax
	call *%eax
	movl MI_M3RT+124,%eax
	pushl %eax
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_CG+408,%eax
	call *%eax
	jmp .L99
	.align 16
.L97:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	movl -4(%ebp),%edx
	movl 48(%edx),%eax
	pushl %eax
	movl 44(%edx),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	call Marker__CallFinallyHandler
	addl $16,%esp
	jmp .L103
	.align 16
.L98:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	movl MI_M3RT+164,%eax
	pushl %eax
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $0
	call Marker__SetLock
	addl $16,%esp
	jmp .L103
	.align 16
.L99:
	movl -4(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_CG+320,%eax
	call *%eax
	jmp .L92
	.align 16
.L100:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	addl $4,%esp
	jmp .L103
	.align 16
.L101:
	pushl $MM_Marker+528
	movl MI_Error+44,%eax
	call *%eax
	pushl $6256
	call _m3_fault
	.align 16
.L103:
	decl %ebx
	jns .L94
.L92:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 Marker__EmitExit2,.Lfe24-Marker__EmitExit2
	.align 16
	.type	 Marker__AllocReturnTemp,@function
Marker__AllocReturnTemp:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	cmpb $0,MI_Host+80
	je .L105
	movl MM_Marker+200,%edx
	decl %edx
	cmpl $50,%edx
	jbe .L107
	pushl $6865
	call _m3_fault
	.align 16
.L107:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-24(%ebp)
	cmpb $7,L_1(%eax)
	je .L108
	pushl $6880
	call _m3_fault
	.align 16
.L108:
	movl 20(%edx),%eax
	pushl %eax
	movl MI_ProcType+88,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L105
	leal -20(%ebp),%eax
	pushl %eax
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+132,%eax
	call *%eax
	movl -20(%ebp),%ecx
	addl $12,%esp
	testl %ecx,%ecx
	jge .L110
	pushl $6961
	call _m3_fault
	.align 16
.L110:
	movl -12(%ebp),%edx
	testl %edx,%edx
	jge .L111
	pushl $6961
	call _m3_fault
	.align 16
.L111:
	pushl $50
	pushl $0
	pushl $1
	pushl %eax
	pushl $14
	pushl %edx
	pushl %ecx
	pushl $0
	movl MI_CG+200,%eax
	call *%eax
	movl %eax,%edx
	movl -24(%ebp),%eax
	movl %edx,28(%eax)
.L105:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 Marker__AllocReturnTemp,.Lfe25-Marker__AllocReturnTemp
.section	.rodata
	.align 4
	.type	 L_4.2,@object
	.size	 L_4.2,32
L_4.2:
	.long .L123
	.long .L123
	.long .L123
	.long .L124
	.long .L124
	.long .L125
	.long .L124
	.long .L126
.text
	.align 16
	.type	 Marker__EmitReturn,@function
Marker__EmitReturn:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movb $0,-28(%ebp)
	movl MM_Marker+200,%ebx
	jmp .L159
	.align 16
.L114:
	cmpl $50,%ebx
	jbe .L115
	pushl $7281
	call _m3_fault
	.align 16
.L115:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-24(%ebp)
	movb $1,3(%eax)
	movl -24(%ebp),%eax
	movb (%eax),%al
	andl $255,%eax
	cmpl $7,%eax
	je .L118
	cmpl $5,%eax
	je .L118
.L159:
	decl %ebx
	jns .L114
.L118:
	movb $1,-32(%ebp)
	testl %esi,%esi
	je .L119
	movl MM_Marker+200,%ebx
	jmp .L128
	.align 16
.L121:
	cmpl $50,%ebx
	jbe .L122
	pushl $7489
	call _m3_fault
	.align 16
.L122:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-24(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_4.2(,%eax,4)
	.align 16
.L125:
	pushl %esi
	movl MI_Expr+200,%eax
	call *%eax
	pushl %esi
	movl MI_Expr+204,%eax
	call *%eax
	pushl %esi
	movl MI_Expr+152,%eax
	call *%eax
	pushl $0
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	pushl %eax
	movl MI_CG+640,%eax
	call *%eax
	xorl %esi,%esi
	addl $24,%esp
	jmp .L127
	.align 16
.L123:
	movb $0,-32(%ebp)
	jmp .L128
	.align 16
.L126:
	jmp .L127
	.align 16
.L124:
.L128:
	decl %ebx
	jns .L121
.L127:
	testl %esi,%esi
	je .L119
	cmpl $50,%ebx
	jbe .L130
	pushl $7793
	call _m3_fault
	.align 16
.L130:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-24(%ebp)
	movl 20(%eax),%eax
	pushl %eax
	movl MI_ProcType+88,%eax
	call *%eax
	movb %al,-28(%ebp)
	addl $4,%esp
	cmpb $0,MI_Host+80
	je .L131
	testb %al,%al
	je .L158
	cmpb $0,-32(%ebp)
	jne .L131
	movl -24(%ebp),%edx
	cmpl $0,28(%edx)
	jne .L132
	pushl $7872
	call _m3_fault
	.align 16
.L132:
	leal -20(%ebp),%eax
	pushl %eax
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	pushl $1
	pushl %esi
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	movl -12(%ebp),%eax
	addl $20,%esp
	testl %eax,%eax
	jge .L133
	pushl $7921
	call _m3_fault
	.align 16
.L133:
	pushl %eax
	pushl $0
	movl -24(%ebp),%eax
	movl 28(%eax),%eax
	pushl %eax
	movl MI_CG+368,%eax
	call *%eax
	pushl %esi
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
	call *%eax
	addl $20,%esp
	jmp .L119
	.align 16
.L131:
	cmpb $0,-28(%ebp)
	jne .L135
.L158:
	cmpb $0,-32(%ebp)
	jne .L136
.L135:
	pushl $0
	pushl %esi
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_AssignStmt+52,%eax
	call *%eax
	movl -24(%ebp),%eax
	movl 24(%eax),%eax
	pushl %eax
	movl MI_Variable+88,%eax
	call *%eax
	pushl %esi
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_AssignStmt+56,%eax
	call *%eax
	addl $24,%esp
	jmp .L119
	.align 16
.L136:
	pushl %esi
	movl MI_Expr+200,%eax
	call *%eax
	addl $4,%esp
.L119:
	cmpb $0,MI_Target+805
	je .L137
	call Marker__EmitReturn1
	jmp .L160
	.align 16
.L137:
	call Marker__EmitReturn2
.L160:
	movl %eax,%ebx
	testl %ebx,%ebx
	jl .L112
	cmpl $50,%ebx
	jbe .L140
	pushl $8225
	call _m3_fault
	.align 16
.L140:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	leal L_1(,%eax,4),%eax
	movl %eax,-24(%ebp)
	cmpb $0,MI_Host+80
	je .L141
	cmpb $0,12(%ebp)
	jne .L142
	cmpb $0,-32(%ebp)
	jne .L141
.L142:
	movl 20(%eax),%eax
	pushl %eax
	movl MI_ProcType+88,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L141
	movl -24(%ebp),%edx
	cmpl $0,28(%edx)
	jne .L143
	pushl $8320
	call _m3_fault
	.align 16
.L143:
	leal -20(%ebp),%eax
	pushl %eax
	movl 20(%edx),%eax
	pushl %eax
	movl MI_Type+68,%eax
	call *%eax
	movl -24(%ebp),%eax
	movl 24(%eax),%eax
	pushl %eax
	movl MI_Variable+88,%eax
	call *%eax
	movl -12(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L144
	pushl $8369
	call _m3_fault
	.align 16
.L144:
	pushl %eax
	pushl $0
	movl -24(%ebp),%eax
	movl 28(%eax),%eax
	pushl %eax
	movl MI_CG+372,%eax
	call *%eax
	movl -20(%ebp),%eax
	addl $12,%esp
	testl %eax,%eax
	jge .L145
	pushl $8385
	call _m3_fault
	.align 16
.L145:
	pushl $0
	pushl %eax
	movl MI_CG+648,%eax
	call *%eax
	addl $8,%esp
.L141:
	movl -24(%ebp),%edx
	movl 20(%edx),%eax
	testl %eax,%eax
	jne .L146
	pushl $15
	jmp .L161
	.align 16
.L146:
	cmpb $0,12(%ebp)
	je .L148
	pushl %eax
	movl MI_ProcType+88,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L149
	movl -24(%ebp),%eax
	movl 24(%eax),%eax
	pushl %eax
	movl MI_Variable+84,%eax
	call *%eax
	pushl %ebx
	jmp .L162
	.align 16
.L149:
	movl -24(%ebp),%edx
	movl 40(%edx),%eax
	testl %eax,%eax
	jne .L151
	pushl $8564
	call _m3_fault
	.align 16
.L151:
	cmpb $0,10(%eax)
	je .L152
	pushl $15
	jmp .L161
	.align 16
.L152:
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Variable+88,%eax
	call *%eax
	pushl $14
	jmp .L161
	.align 16
.L148:
	cmpb $0,-28(%ebp)
	je .L153
	movl 40(%edx),%eax
	testl %eax,%eax
	jne .L154
	pushl $8676
	call _m3_fault
	.align 16
.L154:
	cmpb $0,10(%eax)
	je .L155
	pushl $15
	jmp .L161
	.align 16
.L155:
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Variable+88,%eax
	call *%eax
	pushl $14
	jmp .L161
	.align 16
.L153:
	cmpb $0,-32(%ebp)
	je .L157
	pushl %esi
	pushl %eax
	movl MI_AssignStmt+60,%eax
	call *%eax
	jmp .L163
	.align 16
.L157:
	movl 24(%edx),%eax
	pushl %eax
	movl MI_Variable+84,%eax
	call *%eax
.L163:
	pushl $0
.L162:
	movl -24(%ebp),%eax
	movl 20(%eax),%eax
	pushl %eax
	movl MI_Type+84,%eax
	call *%eax
	movl %eax,%ebx
	pushl %ebx
.L161:
	movl MI_CG+360,%eax
	call *%eax
.L112:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 Marker__EmitReturn,.Lfe26-Marker__EmitReturn
.section	.rodata
	.align 4
	.type	 L_5.3,@object
	.size	 L_5.3,32
L_5.3:
	.long .L168
	.long .L168
	.long .L169
	.long .L170
	.long .L171
	.long .L172
	.long .L173
	.long .L174
.text
	.align 16
	.type	 Marker__EmitReturn1,@function
Marker__EmitReturn1:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L176
	.align 16
.L166:
	cmpl $50,%ebx
	jbe .L167
	pushl $9041
	call _m3_fault
	.align 16
.L167:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%edx
	addl $L_1,%edx
	movl %edx,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_5.3(,%eax,4)
	.align 16
.L172:
.L168:
	pushl $-1
	movl MI_CG+424,%eax
	call *%eax
	pushl $0
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_CG+408,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_CG+320,%eax
	call *%eax
	jmp .L175
	.align 16
.L169:
	pushl $0
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $0
	call Marker__SetLock
	addl $12,%esp
.L170:
.L171:
.L173:
	jmp .L176
	.align 16
.L174:
	movl %ebx,%eax
	jmp .L178
	.align 16
.L176:
	decl %ebx
	jns .L166
.L175:
	movl $-1,%eax
.L178:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 Marker__EmitReturn1,.Lfe27-Marker__EmitReturn1
.section	.rodata
	.align 4
	.type	 L_6.4,@object
	.size	 L_6.4,32
L_6.4:
	.long .L183
	.long .L184
	.long .L185
	.long .L186
	.long .L187
	.long .L188
	.long .L189
	.long .L190
.text
	.align 16
	.type	 Marker__EmitReturn2,@function
Marker__EmitReturn2:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl MM_Marker+200,%ebx
	jmp .L192
	.align 16
.L181:
	cmpl $50,%ebx
	jbe .L182
	pushl $9601
	call _m3_fault
	.align 16
.L182:
	leal (%ebx,%ebx,2),%eax
	leal (%ebx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_6.4(,%eax,4)
	.align 16
.L188:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	movl MI_CG+416,%eax
	call *%eax
	movl MI_M3RT+124,%eax
	pushl %eax
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_CG+412,%eax
	jmp .L195
	.align 16
.L183:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	pushl $-1
	movl MI_CG+424,%eax
	call *%eax
	movl MI_M3RT+124,%eax
	pushl %eax
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	movl MI_CG+408,%eax
.L195:
	call *%eax
	movl -4(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_CG+320,%eax
	call *%eax
	jmp .L191
	.align 16
.L184:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	movl -4(%ebp),%edx
	movl 48(%edx),%eax
	pushl %eax
	movl 44(%edx),%eax
	pushl %eax
	movl 8(%edx),%eax
	pushl %eax
	call Marker__CallFinallyHandler
	addl $16,%esp
	jmp .L192
	.align 16
.L185:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	movl MI_M3RT+164,%eax
	pushl %eax
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	pushl $0
	call Marker__SetLock
	addl $16,%esp
.L186:
	jmp .L192
	.align 16
.L187:
.L189:
	movl -4(%ebp),%eax
	movl 8(%eax),%eax
	pushl %eax
	call Marker__PopFrame
	addl $4,%esp
	jmp .L192
	.align 16
.L190:
	movl %ebx,%eax
	jmp .L194
	.align 16
.L192:
	decl %ebx
	jns .L181
.L191:
	movl $-1,%eax
.L194:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 Marker__EmitReturn2,.Lfe28-Marker__EmitReturn2
	.align 16
	.type	 Marker__EmitScopeTable,@function
Marker__EmitScopeTable:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl $0,-8(%ebp)
	movl MI_Target+64,%eax
	movl MI_Target+100,%esi
	cmpl %esi,%eax
	jle .L197
	movl %eax,%esi
.L197:
	movl MM_Marker+180,%ebx
	testl %ebx,%ebx
	je .L199
	cmpb $0,MI_Target+805
	jne .L201
.L199:
	xorl %eax,%eax
	jmp .L227
	.align 16
.L202:
	movl 32(%ebx),%eax
	testl %eax,%eax
	je .L206
	pushl %eax
	movl MI_ESet+56,%eax
	call *%eax
	addl $4,%esp
.L206:
	movl 36(%ebx),%ebx
.L201:
	testl %ebx,%ebx
	jne .L202
	movl MM_Marker+184,%eax
	imull MI_M3RT+92,%eax
	pushl %ebx
	pushl $MM_Marker+576
	pushl %esi
	pushl %eax
	movl MI_Module+108,%eax
	call *%eax
	pushl %ebx
	pushl %ebx
	pushl %ebx
	pushl $MM_Marker+608
	movl %eax,%edi
	pushl %edi
	movl MI_CG+788,%eax
	call *%eax
	movl MM_Marker+180,%ebx
	movl %edi,%esi
	addl $36,%esp
	jmp .L208
	.align 16
.L209:
	xorl %eax,%eax
	movb (%ebx),%al
	movl MM_Marker+148(,%eax,4),%eax
	pushl %eax
	movl MI_Target+600,%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+60,%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl $12,%esp
	cmpb $0,1(%ebx)
	je .L213
	pushl $1
	movl MI_Target+600,%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+64,%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl $12,%esp
.L213:
	cmpl $0,36(%ebx)
	jne .L215
	pushl $1
	movl MI_Target+600,%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+68,%eax
	pushl %eax
	movl MI_CG+256,%eax
	call *%eax
	addl $12,%esp
.L215:
	movl 12(%ebx),%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+76,%eax
	pushl %eax
	movl MI_CG+264,%eax
	call *%eax
	addl $8,%esp
	movl 16(%ebx),%eax
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+80,%eax
	pushl %eax
	movl MI_CG+264,%eax
	call *%eax
	addl $8,%esp
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L220
	pushl %eax
	movl %esi,%eax
	addl MI_M3RT+88,%eax
	pushl %eax
	movl MI_CG+272,%eax
	call *%eax
	addl $8,%esp
.L220:
	movl 32(%ebx),%edx
	testl %edx,%edx
	je .L221
	leal -4(%ebp),%eax
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_ESet+60,%eax
	call *%eax
	addl $12,%esp
	movl -8(%ebp),%edx
	testl %edx,%edx
	jne .L223
	cmpl $0,-4(%ebp)
	je .L221
.L223:
	movl -4(%ebp),%eax
	pushl %eax
	movl %esi,%eax
	pushl %edx
	addl MI_M3RT+84,%eax
	pushl %eax
	movl MI_CG+268,%eax
	call *%eax
	addl $12,%esp
.L221:
	addl MI_M3RT+92,%esi
	testl %ebx,%ebx
	jne .L225
	pushl $10836
	call _m3_fault
	.align 16
.L225:
	movl 36(%ebx),%ebx
.L208:
	testl %ebx,%ebx
	jne .L209
	movl %edi,%eax
.L227:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 Marker__EmitScopeTable,.Lfe29-Marker__EmitScopeTable
.section	.rodata
	.align 4
	.type	 L_7.5,@object
	.size	 L_7.5,32
L_7.5:
	.long .L234
	.long .L235
	.long .L236
	.long .L237
	.long .L238
	.long .L239
	.long .L240
	.long .L241
.text
	.align 16
	.type	 Marker__EmitExceptionTest,@function
Marker__EmitExceptionTest:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_ProcType+76,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Target+805
	je .L228
	pushl %eax
	movl MI_ESet+68,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L228
	movl MM_Marker+200,%edx
.L247:
	decl %edx
	js .L228
	cmpl $50,%edx
	jbe .L233
	pushl $11121
	call _m3_fault
	.align 16
.L233:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%ecx
	addl $L_1,%ecx
	movl %ecx,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_7.5(,%eax,4)
	.align 16
.L239:
	jmp .L242
	.align 16
.L235:
	jmp .L247
	.align 16
.L234:
	jmp .L242
	.align 16
.L236:
.L237:
	jmp .L247
	.align 16
.L238:
	jmp .L242
	.align 16
.L240:
	jmp .L247
	.align 16
.L241:
	jmp .L228
	.align 16
.L242:
	cmpl $50,%edx
	jbe .L245
	pushl $11377
	call _m3_fault
	.align 16
.L245:
	movl MI_M3RT+96,%eax
	leal (%edx,%edx,2),%ebx
	leal (%edx,%ebx,4),%ebx
	sall $2,%ebx
	pushl %eax
	movl L_1+8(%ebx),%eax
	pushl %eax
	movl MI_CG+388,%eax
	call *%eax
	movl MI_CG+416,%eax
	call *%eax
	addl $8,%esp
	pushl $0
	pushl $0
	movl L_1+16(%ebx),%eax
	pushl %eax
	movl MI_CG+336,%eax
	call *%eax
.L228:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 Marker__EmitExceptionTest,.Lfe30-Marker__EmitExceptionTest
.section	.rodata
	.align 4
	.type	 L_8.6,@object
	.size	 L_8.6,32
L_8.6:
	.long .L253
	.long .L254
	.long .L255
	.long .L256
	.long .L257
	.long .L258
	.long .L259
	.long .L260
.text
	.align 16
	.type	 Marker__NextHandler,@function
Marker__NextHandler:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	cmpb $0,MI_Target+805
	je .L260
	movl MM_Marker+200,%edx
.L268:
	decl %edx
	js .L260
	cmpl $50,%edx
	jbe .L252
	pushl $11617
	call _m3_fault
	.align 16
.L252:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl %eax,%esi
	addl $L_1,%esi
	movl %esi,-4(%ebp)
	movb L_1(%eax),%al
	andl $255,%eax
	jmp *L_8.6(,%eax,4)
	.align 16
.L258:
	jmp .L261
	.align 16
.L254:
	jmp .L268
	.align 16
.L253:
	jmp .L261
	.align 16
.L255:
.L256:
	jmp .L268
	.align 16
.L257:
	jmp .L261
	.align 16
.L259:
	jmp .L268
	.align 16
.L260:
	xorl %eax,%eax
	jmp .L266
	.align 16
.L261:
	cmpl $50,%edx
	jbe .L264
	pushl $11857
	call _m3_fault
	.align 16
.L264:
	leal (%edx,%edx,2),%eax
	leal (%edx,%eax,4),%eax
	sall $2,%eax
	movl L_1+16(%eax),%edx
	movl %edx,(%ecx)
	movl L_1+8(%eax),%eax
	movl %eax,(%ebx)
	movl $1,%eax
.L266:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe31:
	.size	 Marker__NextHandler,.Lfe31-Marker__NextHandler
	.align 16
	.type	 Marker__Reset,@function
Marker__Reset:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Marker+180
	movl $0,MM_Marker+184
	movl $0,MM_Marker+188
	movl $0,MM_Marker+192
	movl $0,MM_Marker+196
	movl $0,MM_Marker+200
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe32:
	.size	 Marker__Reset,.Lfe32-Marker__Reset
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Marker
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe33:
	.size	 _m3_fault,.Lfe33-_m3_fault
.globl MM_Marker
.data
	.align 4
	.type	 MM_Marker,@object
	.size	 MM_Marker,1636
MM_Marker:
	.long MM_Marker+1400
	.long MM_Marker+44
	.long MM_Marker+340
	.zero	8
	.long MM_Marker+988
	.zero	4
	.long MM_Marker+1376
	.long MM_Marker+1376
	.zero	16
	.long -8975835
.byte 59
.byte 240
.byte 235
.byte 245
.byte 30
.byte 250
.byte 156
.byte 10
	.long 1
	.zero	4
	.long 52
	.long 4
	.zero	20
	.long MM_Marker+1542
	.long MM_Marker+1560
	.long MM_Marker+1571
	.zero	28
	.long MM_Marker+1619
	.zero	4
	.long 2
	.long 3
	.long 6
	.long -1
	.long 0
	.long 1
	.long 4
	.long -1
	.zero	24
	.long L_1
	.long Marker__Push
	.long Marker__GetFrameStack
	.long Marker__CallFinallyHandler
	.long Marker__EmitExit1
	.long Marker__EmitExit2
	.long Marker__EmitReturn1
	.long Marker__EmitReturn2
	.long Marker__Pop
	.long Marker__SaveFrame
	.long Marker__PushTry
	.long Marker__PushTryElse
	.long Marker__PushFinally
	.long Marker__PushFinallyProc
	.long Marker__PopFinally
	.long Marker__PushLock
	.long Marker__PushExit
	.long Marker__ExitOK
	.long Marker__PushRaises
	.long Marker__PushProcedure
	.long Marker__ReturnVar
	.long Marker__ReturnOK
	.long Marker__EmitExit
	.long Marker__AllocReturnTemp
	.long Marker__EmitReturn
	.long Marker__EmitScopeTable
	.long Marker__EmitExceptionTest
	.long Marker__NextHandler
	.long Marker__PushFrame
	.long Marker__PopFrame
	.long Marker__SetLock
.byte 5
.byte 4
	.zero	2
	.long Marker__CaptureState
	.long Marker__Reset
	.zero	4
	.long -8975835
	.long 2
	.long MM_Marker+360
	.long 23
	.ascii	"RTThread__handlerStack"
	.zero	2
	.long 2
	.long MM_Marker+396
	.long 7
	.ascii	"jmpbuf"
	.zero	2
	.long 2
	.long MM_Marker+416
	.long 46
	.ascii	"EXIT will be caught by TRY EXCEPT ELSE clause"
	.zero	3
	.long 2
	.long MM_Marker+476
	.long 48
	.ascii	"RETURN will be caught by TRY EXCEPT ELSE clause"
	.zero	1
	.long 2
	.long MM_Marker+536
	.long 33
	.ascii	"INTERNAL ERROR: EXIT not in loop"
	.zero	4
	.long 2
	.long MM_Marker+584
	.long 19
	.ascii	"*exception scopes*"
	.zero	2
	.long 2
	.long MM_Marker+616
	.long 17
	.ascii	"exception scopes"
	.zero	4
	.ascii	"Reset"
	.zero	1
	.ascii	"NextHandler"
	.zero	1
	.ascii	"EmitExceptionTest"
	.zero	1
	.ascii	"EmitScopeTable"
	.zero	1
	.ascii	"EmitReturn2"
	.zero	1
	.ascii	"EmitReturn1"
	.zero	1
	.ascii	"EmitReturn"
	.zero	1
	.ascii	"AllocReturnTemp"
	.zero	1
	.ascii	"EmitExit2"
	.zero	1
	.ascii	"EmitExit1"
	.zero	1
	.ascii	"EmitExit"
	.zero	1
	.ascii	"ReturnVar"
	.zero	1
	.ascii	"ReturnOK"
	.zero	1
	.ascii	"ExitOK"
	.zero	1
	.ascii	"CaptureState"
	.zero	1
	.ascii	"CallFinallyHandler"
	.zero	1
	.ascii	"SetLock"
	.zero	1
	.ascii	"GetFrameStack"
	.zero	1
	.ascii	"PopFrame"
	.zero	1
	.ascii	"PushFrame"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"PushProcedure"
	.zero	1
	.ascii	"PushRaises"
	.zero	1
	.ascii	"PushExit"
	.zero	1
	.ascii	"PushTryElse"
	.zero	1
	.ascii	"PushTry"
	.zero	1
	.ascii	"PushLock"
	.zero	1
	.ascii	"PopFinally"
	.zero	1
	.ascii	"PushFinallyProc"
	.zero	1
	.ascii	"PushFinally"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"SaveFrame"
	.zero	2
	.long Marker__Reset
	.long MM_Marker+636
	.long MI_Marker+140
	.long Marker__NextHandler
	.long MM_Marker+642
	.long MI_Marker+120
	.long Marker__EmitExceptionTest
	.long MM_Marker+654
	.long MI_Marker+116
	.long Marker__EmitScopeTable
	.long MM_Marker+672
	.long MI_Marker+112
	.long Marker__EmitReturn2
	.long MM_Marker+687
	.zero	4
	.long Marker__EmitReturn1
	.long MM_Marker+699
	.zero	4
	.long Marker__EmitReturn
	.long MM_Marker+711
	.long MI_Marker+108
	.long Marker__AllocReturnTemp
	.long MM_Marker+722
	.long MI_Marker+104
	.long Marker__EmitExit2
	.long MM_Marker+738
	.zero	4
	.long Marker__EmitExit1
	.long MM_Marker+748
	.zero	4
	.long Marker__EmitExit
	.long MM_Marker+758
	.long MI_Marker+100
	.long Marker__ReturnVar
	.long MM_Marker+767
	.long MI_Marker+92
	.long Marker__ReturnOK
	.long MM_Marker+777
	.long MI_Marker+96
	.long Marker__ExitOK
	.long MM_Marker+786
	.long MI_Marker+80
	.long Marker__CaptureState
	.long MM_Marker+793
	.long MI_Marker+136
	.long Marker__CallFinallyHandler
	.long MM_Marker+806
	.zero	4
	.long Marker__SetLock
	.long MM_Marker+825
	.long MI_Marker+132
	.long Marker__GetFrameStack
	.long MM_Marker+833
	.zero	4
	.long Marker__PopFrame
	.long MM_Marker+847
	.long MI_Marker+128
	.long Marker__PushFrame
	.long MM_Marker+856
	.long MI_Marker+124
	.long Marker__Push
	.long MM_Marker+866
	.zero	4
	.long Marker__PushProcedure
	.long MM_Marker+871
	.long MI_Marker+88
	.long Marker__PushRaises
	.long MM_Marker+885
	.long MI_Marker+84
	.long Marker__PushExit
	.long MM_Marker+896
	.long MI_Marker+76
	.long Marker__PushTryElse
	.long MM_Marker+905
	.long MI_Marker+56
	.long Marker__PushTry
	.long MM_Marker+917
	.long MI_Marker+52
	.long Marker__PushLock
	.long MM_Marker+925
	.long MI_Marker+72
	.long Marker__PopFinally
	.long MM_Marker+934
	.long MI_Marker+68
	.long Marker__PushFinallyProc
	.long MM_Marker+945
	.long MI_Marker+64
	.long Marker__PushFinally
	.long MM_Marker+961
	.long MI_Marker+60
	.long Marker__Pop
	.long MM_Marker+973
	.long MI_Marker+44
	.long Marker__SaveFrame
	.long MM_Marker+977
	.long MI_Marker+48
	.zero	4
.byte 42
.byte 180
.byte 4
.byte 41
.byte 4
.byte 4
.byte 37
.byte 2
.byte 1
.byte 41
.byte 4
.byte 41
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 37
.byte 26
.byte 51
.byte 3
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Marker.m3"
	.zero	1
.byte 16
.byte 16
.byte 16
.byte 16
.byte 16
.byte 36
.byte 4
.byte 14
.byte 14
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 14
.byte 0
.byte 41
.byte 4
.byte 41
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 4
.byte 0
.byte 17
.byte 15
.byte 16
.byte 5
.byte 8
.byte 2
.byte 24
.byte 24
.byte 24
.byte 16
.byte 121
.byte 130
.byte 239
.byte 251
.byte 7
.byte 29
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 16
.byte 25
.byte 159
.byte 238
.byte 8
.byte 28
.byte 16
.byte 44
.byte 196
.byte 243
.byte 11
.byte 16
.byte 37
.byte 10
.byte 119
.byte 255
.byte 16
.byte 18
.byte 149
.byte 76
.byte 98
.byte 16
.byte 117
.byte 167
.byte 196
.byte 100
.byte 29
	.ascii	"Marker.FramePtr"
	.zero	2
	.local	L_1
	.comm	L_1,2652,4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
