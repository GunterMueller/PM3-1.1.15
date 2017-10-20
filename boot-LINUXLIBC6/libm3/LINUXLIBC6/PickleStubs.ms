	.file	"PickleStubs.mc"
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
	.type	 PickleStubs__OutRef,@function
PickleStubs__OutRef:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%ebp),%edx
	movl 4(%eax),%eax
	pushl %edx
	pushl %ecx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PickleStubs__OutRef,.Lfe1-PickleStubs__OutRef
	.align 16
	.type	 PickleStubs__InRef,@function
PickleStubs__InRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl 12(%ebp),%esi
	movl 4(%edx),%edx
	pushl %eax
	call *%edx
	movl %eax,%ebx
	addl $4,%esp
	cmpl $-1,%esi
	je .L3
	testl %ebx,%ebx
	je .L4
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
.L4:
	cmpl $1048575,%eax
	jle .L5
	pushl $945
	call _m3_fault
	.align 16
.L5:
	cmpl $1048575,%esi
	jbe .L6
	pushl $945
	call _m3_fault
	.align 16
.L6:
	pushl %esi
	pushl %eax
	movl MI_RTType+48,%eax
	call *%eax
	addl $8,%esp
	testl %eax,%eax
	jne .L3
	call PickleStubs__RaiseUnmarshalFailure
.L3:
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PickleStubs__InRef,.Lfe2-PickleStubs__InRef
	.align 16
	.type	 PickleStubs__InChars,@function
PickleStubs__InChars:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+600,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %eax,%edx
	movl 12(%ebp),%eax
	addl $8,%esp
	cmpl %edx,4(%eax)
	je .L7
	call PickleStubs__RaiseUnmarshalFailure
.L7:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PickleStubs__InChars,.Lfe3-PickleStubs__InChars
	.align 16
	.type	 PickleStubs__OutChars,@function
PickleStubs__OutChars:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PickleStubs__OutChars,.Lfe4-PickleStubs__OutChars
	.align 16
	.type	 PickleStubs__InBytes,@function
PickleStubs__InBytes:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L11
	pushl $1378
	call _m3_fault
	.align 16
.L11:
	movl (%ecx),%ecx
	movl 4(%edx),%ebx
	cmpl $65336,%eax
	jle .L12
	pushl $1409
	call _m3_fault
	.align 16
.L12:
	movl %eax,-4(%ebp)
	testl %ecx,%ecx
	jne .L13
	pushl $1412
	call _m3_fault
	.align 16
.L13:
	movl %ecx,-8(%ebp)
	movl MM_PickleStubs+600,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl %eax,%edx
	movl 12(%ebp),%eax
	addl $8,%esp
	cmpl %edx,4(%eax)
	je .L10
	call PickleStubs__RaiseUnmarshalFailure
.L10:
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 PickleStubs__InBytes,.Lfe5-PickleStubs__InBytes
	.align 16
	.type	 PickleStubs__OutBytes,@function
PickleStubs__OutBytes:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 12(%ebp),%ecx
	movl 8(%ebp),%edx
	movl 4(%ecx),%eax
	testl %eax,%eax
	jne .L16
	pushl $1522
	call _m3_fault
	.align 16
.L16:
	movl (%ecx),%ecx
	movl 4(%edx),%ebx
	cmpl $65336,%eax
	jle .L17
	pushl $1553
	call _m3_fault
	.align 16
.L17:
	movl %eax,-4(%ebp)
	testl %ecx,%ecx
	jne .L18
	pushl $1556
	call _m3_fault
	.align 16
.L18:
	movl %ecx,-8(%ebp)
	movl MM_PickleStubs+608,%eax
	movl (%ebx),%edx
	movl 36(%eax),%eax
	movl 4(%eax,%edx),%edx
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ebx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 PickleStubs__OutBytes,.Lfe6-PickleStubs__OutBytes
	.align 16
	.type	 PickleStubs__InInteger,@function
PickleStubs__InInteger:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	xorl %eax,%eax
	movb 28(%ebx),%al
	cmpl $1,%eax
	jle .L20
	cmpl $2,%eax
	jle .L21
	cmpl $3,%eax
	jle .L22
	cmpl $4,%eax
	jle .L21
	cmpl $5,%eax
	jle .L22
.L20:
	movl 4(%ebx),%ecx
	movl MM_PickleStubs+600,%eax
	leal -4(%ebp),%edi
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal -12(%ebp),%esi
	movl 4(%eax,%edx),%eax
	movl %edi,-12(%ebp)
	movl $4,-8(%ebp)
	pushl %esi
	pushl %ecx
	call *%eax
	addl $8,%esp
	cmpl $4,%eax
	je .L24
	call PickleStubs__RaiseUnmarshalFailure
.L24:
	cmpb $1,28(%ebx)
	jne .L30
	movl MI_PickleRd+148,%eax
	cmpl $31,%eax
	jle .L26
	cmpl $32,%eax
	jle .L44
	cmpl $63,%eax
	jle .L26
	cmpl $64,%eax
	jg .L26
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl -4(%ebp),%eax
	movl %eax,-20(%ebp)
	pushl %esi
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Swap+60,%eax
	call *%eax
	movl -12(%ebp),%edx
	movl %edx,-20(%ebp)
	movl -8(%ebp),%eax
	movl %eax,-16(%ebp)
	movl %edx,-4(%ebp)
	addl $8,%esp
	jmp .L30
	.align 16
.L26:
	call PickleStubs__RaiseUnsupportedDataRep
	jmp .L30
	.align 16
.L21:
	movl 4(%ebx),%ecx
	movl MM_PickleStubs+600,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal -24(%ebp),%edi
	movl 4(%eax,%edx),%edx
	movl %edi,-32(%ebp)
	movl $4,-28(%ebp)
	leal -32(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	cmpl $4,%eax
	je .L32
	call PickleStubs__RaiseUnmarshalFailure
.L32:
	cmpb $4,28(%ebx)
	jne .L33
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,-24(%ebp)
	addl $4,%esp
.L33:
	movl -24(%ebp),%eax
	movl %eax,-4(%ebp)
	jmp .L30
	.align 16
.L22:
	movl 4(%ebx),%ecx
	movl MM_PickleStubs+600,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal -40(%ebp),%edi
	movl 4(%eax,%edx),%edx
	movl %edi,-48(%ebp)
	movl $8,-44(%ebp)
	leal -48(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	cmpl $8,%eax
	je .L35
	call PickleStubs__RaiseUnmarshalFailure
.L35:
	cmpb $0,21(%ebx)
	je .L36
	movl -40(%ebp),%eax
	movl %eax,-4(%ebp)
	movl -36(%ebp),%eax
	jmp .L45
	.align 16
.L36:
	movl -36(%ebp),%eax
	movl %eax,-4(%ebp)
	movl -40(%ebp),%eax
.L45:
	testl %eax,%eax
	je .L38
	cmpl $-1,%eax
	je .L38
	pushl $MM_PickleStubs+620
	pushl $MI_Pickle+44
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L38:
	cmpb $5,28(%ebx)
	jne .L30
.L44:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
.L30:
	movl -4(%ebp),%eax
	cmpl %eax,12(%ebp)
	jg .L42
	cmpl %eax,16(%ebp)
	jge .L43
.L42:
	call PickleStubs__RaiseUnmarshalFailure
.L43:
	leal -60(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 PickleStubs__InInteger,.Lfe7-PickleStubs__InInteger
	.align 16
	.type	 PickleStubs__InInt32,@function
PickleStubs__InInt32:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_PickleStubs+600,%eax
	movl 4(%ebx),%ecx
	movl 36(%eax),%eax
	movl (%ecx),%edx
	leal -4(%ebp),%esi
	movl 4(%eax,%edx),%edx
	movl %esi,-12(%ebp)
	movl $4,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	cmpl $4,%eax
	je .L48
	call PickleStubs__RaiseUnmarshalFailure
.L48:
	xorl %eax,%eax
	movb 28(%ebx),%al
	testl %eax,%eax
	jle .L51
	cmpl $1,%eax
	jle .L50
	cmpl $3,%eax
	jle .L51
.L50:
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,-4(%ebp)
	addl $4,%esp
.L51:
	movl -4(%ebp),%eax
	cmpl %eax,12(%ebp)
	jg .L53
	cmpl %eax,16(%ebp)
	jge .L54
.L53:
	call PickleStubs__RaiseUnmarshalFailure
.L54:
	leal -20(%ebp),%esp
	movl -4(%ebp),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 PickleStubs__InInt32,.Lfe8-PickleStubs__InInt32
	.align 16
	.type	 PickleStubs__OutInteger,@function
PickleStubs__OutInteger:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal 12(%ebp),%ebx
	movl 4(%eax,%edx),%edx
	movl %ebx,-8(%ebp)
	movl $4,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 PickleStubs__OutInteger,.Lfe9-PickleStubs__OutInteger
	.align 16
	.type	 PickleStubs__OutInt32,@function
PickleStubs__OutInt32:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal 12(%ebp),%ebx
	movl 4(%eax,%edx),%edx
	movl %ebx,-8(%ebp)
	movl $4,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 PickleStubs__OutInt32,.Lfe10-PickleStubs__OutInt32
	.align 16
	.type	 PickleStubs__InByte,@function
PickleStubs__InByte:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	pushl %ebx
.L60:
	movl $MM_PickleStubs+648,-172(%ebp)
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
	jne .L61
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	movl MI_UnsafeRd+44,%eax
	call *%eax
	movb %al,-184(%ebp)
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $4,%esp
	jmp .L62
	.align 16
.L61:
	call PickleStubs__RaiseUnmarshalFailure
.L62:
	xorl %ebx,%ebx
	movb -184(%ebp),%bl
	cmpl %ebx,12(%ebp)
	jge .L64
	call PickleStubs__RaiseUnmarshalFailure
.L64:
	movl %ebx,%eax
	movl -188(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 PickleStubs__InByte,.Lfe11-PickleStubs__InByte
	.align 16
	.type	 PickleStubs__OutByte,@function
PickleStubs__OutByte:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	xorl %eax,%eax
	movb 12(%ebp),%al
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl MI_UnsafeWr+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 PickleStubs__OutByte,.Lfe12-PickleStubs__OutByte
	.align 16
	.type	 PickleStubs__InCardinal,@function
PickleStubs__InCardinal:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl $0
	pushl %edx
	call PickleStubs__InInteger
	addl $12,%esp
	testl %eax,%eax
	jge .L67
	pushl $3809
	call _m3_fault
	.align 16
.L67:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 PickleStubs__InCardinal,.Lfe13-PickleStubs__InCardinal
	.align 16
	.type	 PickleStubs__OutCardinal,@function
PickleStubs__OutCardinal:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call PickleStubs__OutInteger
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 PickleStubs__OutCardinal,.Lfe14-PickleStubs__OutCardinal
	.align 16
	.type	 PickleStubs__InReal,@function
PickleStubs__InReal:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movb 20(%ebx),%al
	cmpb %al,MI_PickleRd+160
	je .L70
	call PickleStubs__RaiseUnsupportedDataRep
.L70:
	movl 4(%ebx),%ecx
	movl MM_PickleStubs+600,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal -4(%ebp),%esi
	movl 4(%eax,%edx),%edx
	movl %esi,-12(%ebp)
	movl $4,-8(%ebp)
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	cmpl $4,%eax
	je .L71
	call PickleStubs__RaiseUnmarshalFailure
.L71:
	movl 20(%ebx),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	call PickleStubs__NativeEndian
	addl $16,%esp
	testl %eax,%eax
	jne .L72
	movl -4(%ebp),%eax
	pushl %eax
	call PickleStubs__SwapReal
	fstps -4(%ebp)
.L72:
	leal -20(%ebp),%esp
	flds -4(%ebp)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 PickleStubs__InReal,.Lfe15-PickleStubs__InReal
	.align 16
	.type	 PickleStubs__OutReal,@function
PickleStubs__OutReal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal 12(%ebp),%ebx
	movl 4(%eax,%edx),%edx
	movl %ebx,-8(%ebp)
	movl $4,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe16:
	.size	 PickleStubs__OutReal,.Lfe16-PickleStubs__OutReal
	.align 16
	.type	 PickleStubs__InLongreal,@function
PickleStubs__InLongreal:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movb 20(%ebx),%al
	cmpb %al,MI_PickleRd+160
	je .L75
	call PickleStubs__RaiseUnsupportedDataRep
.L75:
	movl 4(%ebx),%ecx
	movl MM_PickleStubs+600,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal -8(%ebp),%esi
	movl 4(%eax,%edx),%edx
	movl %esi,-16(%ebp)
	movl $8,-12(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	cmpl $8,%eax
	je .L76
	call PickleStubs__RaiseUnmarshalFailure
.L76:
	movl 20(%ebx),%eax
	pushl %eax
	movl 16(%ebx),%eax
	pushl %eax
	movl 12(%ebx),%eax
	pushl %eax
	movl 8(%ebx),%eax
	pushl %eax
	call PickleStubs__NativeEndian
	addl $16,%esp
	testl %eax,%eax
	jne .L77
	movl -4(%ebp),%eax
	movl -8(%ebp),%edx
	pushl %eax
	pushl %edx
	call PickleStubs__SwapLongReal
	fstpl -8(%ebp)
.L77:
	leal -24(%ebp),%esp
	fldl -8(%ebp)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 PickleStubs__InLongreal,.Lfe17-PickleStubs__InLongreal
	.align 16
	.type	 PickleStubs__OutLongreal,@function
PickleStubs__OutLongreal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal 12(%ebp),%ebx
	movl 4(%eax,%edx),%edx
	movl %ebx,-8(%ebp)
	movl $8,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe18:
	.size	 PickleStubs__OutLongreal,.Lfe18-PickleStubs__OutLongreal
	.align 16
	.type	 PickleStubs__InExtended,@function
PickleStubs__InExtended:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call PickleStubs__InLongreal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe19:
	.size	 PickleStubs__InExtended,.Lfe19-PickleStubs__InExtended
	.align 16
	.type	 PickleStubs__OutExtended,@function
PickleStubs__OutExtended:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 4(%eax),%ecx
	movl MM_PickleStubs+608,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	leal 12(%ebp),%ebx
	movl 4(%eax,%edx),%edx
	movl %ebx,-8(%ebp)
	movl $8,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe20:
	.size	 PickleStubs__OutExtended,.Lfe20-PickleStubs__OutExtended
	.align 16
	.type	 PickleStubs__InBoolean,@function
PickleStubs__InBoolean:
	pushl %ebp
	movl %esp,%ebp
	subl $184,%esp
	movb $0,-184(%ebp)
.L82:
	movl $MM_PickleStubs+648,-172(%ebp)
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
	jne .L83
	movl 8(%ebp),%edx
	movl 4(%edx),%eax
	pushl %eax
	movl MI_UnsafeRd+44,%eax
	call *%eax
	testl %eax,%eax
	setne %dl
	movb %dl,-184(%ebp)
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L84
	.align 16
.L83:
	call PickleStubs__RaiseUnmarshalFailure
.L84:
	xorl %eax,%eax
	movb -184(%ebp),%al
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe21:
	.size	 PickleStubs__InBoolean,.Lfe21-PickleStubs__InBoolean
	.align 16
	.type	 PickleStubs__OutBoolean,@function
PickleStubs__OutBoolean:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpb $0,12(%ebp)
	je .L87
	pushl $1
	jmp .L89
	.align 16
.L87:
	pushl $0
.L89:
	movl 4(%eax),%eax
	pushl %eax
	movl MI_UnsafeWr+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe22:
	.size	 PickleStubs__OutBoolean,.Lfe22-PickleStubs__OutBoolean
	.align 16
	.type	 PickleStubs__InText,@function
PickleStubs__InText:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $2147483647
	xorl %ebx,%ebx
	pushl $-2147483648
	movl 8(%ebp),%edx
	pushl %edx
	call PickleStubs__InInt32
	movl %eax,%esi
	movl %esi,%edi
	addl $12,%esp
	cmpl $-1,%esi
	je .L93
	testl %esi,%esi
	jge .L92
	call PickleStubs__RaiseUnmarshalFailure
	jmp .L93
	.align 16
.L92:
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	leal 1(%esi),%edx
	movl %edx,-4(%ebp)
	pushl %eax
	movl MM_PickleStubs+656,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L95
	pushl $5380
	call _m3_fault
	.align 16
.L95:
	movl %esi,-16(%ebp)
	movl %esi,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L96
	pushl $5377
	call _m3_fault
	.align 16
.L96:
	movl (%ebx),%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call PickleStubs__InChars
	addl $8,%esp
	cmpl %esi,4(%ebx)
	ja .L98
	pushl $5394
	call _m3_fault
	.align 16
.L98:
	movl (%ebx),%eax
	movb $0,(%edi,%eax)
.L93:
	movl %ebx,%eax
	leal -32(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe23:
	.size	 PickleStubs__InText,.Lfe23-PickleStubs__InText
	.align 16
	.type	 PickleStubs__OutText,@function
PickleStubs__OutText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 8(%ebp),%edi
	movl (%esi),%eax
	testl %eax,%eax
	je .L101
	pushl %eax
	movl MI_Text+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	jmp .L102
	.align 16
.L101:
	movl $-1,%ebx
.L102:
	pushl %ebx
	pushl %edi
	call PickleStubs__OutInt32
	addl $8,%esp
	testl %ebx,%ebx
	jle .L100
	movl (%esi),%edx
	testl %edx,%edx
	jne .L104
	pushl $5636
	call _m3_fault
	.align 16
.L104:
	movl %ebx,-4(%ebp)
	movl %ebx,%eax
	subl 4(%edx),%eax
	testl %eax,%eax
	jle .L106
	pushl $5633
	call _m3_fault
	.align 16
.L106:
	movl (%edx),%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edi
	call PickleStubs__OutChars
.L100:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe24:
	.size	 PickleStubs__OutText,.Lfe24-PickleStubs__OutText
	.align 16
	.type	 PickleStubs__SwapReal,@function
PickleStubs__SwapReal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,-8(%ebp)
	flds -8(%ebp)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe25:
	.size	 PickleStubs__SwapReal,.Lfe25-PickleStubs__SwapReal
	.align 16
	.type	 PickleStubs__SwapLongReal,@function
PickleStubs__SwapLongReal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	leal 8(%ebp),%edx
	pushl %ebx
	leal -8(%ebp),%ebx
	testl %edx,%edx
	jne .L109
	pushl $5876
	call _m3_fault
	.align 16
.L109:
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	addl $4,%esp
	movl %eax,-8(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,4(%ebx)
	fldl -8(%ebp)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe26:
	.size	 PickleStubs__SwapLongReal,.Lfe26-PickleStubs__SwapLongReal
	.align 16
	.type	 PickleStubs__NativeEndian,@function
PickleStubs__NativeEndian:
	pushl %ebp
	movl %esp,%ebp
	movb 21(%ebp),%al
	cmpb %al,MI_PickleRd+161
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe27:
	.size	 PickleStubs__NativeEndian,.Lfe27-PickleStubs__NativeEndian
	.align 16
	.type	 PickleStubs__RaiseUnmarshalFailure,@function
PickleStubs__RaiseUnmarshalFailure:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_PickleStubs+668
	call PickleStubs__RaiseError
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe28:
	.size	 PickleStubs__RaiseUnmarshalFailure,.Lfe28-PickleStubs__RaiseUnmarshalFailure
	.align 16
	.type	 PickleStubs__RaiseUnsupportedDataRep,@function
PickleStubs__RaiseUnsupportedDataRep:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_PickleStubs+700
	call PickleStubs__RaiseError
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe29:
	.size	 PickleStubs__RaiseUnsupportedDataRep,.Lfe29-PickleStubs__RaiseUnsupportedDataRep
	.align 16
	.type	 PickleStubs__RaiseError,@function
PickleStubs__RaiseError:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MI_Pickle+44
	movl MI_RTHooks+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe30:
	.size	 PickleStubs__RaiseError,.Lfe30-PickleStubs__RaiseError
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_PickleStubs
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe31:
	.size	 _m3_fault,.Lfe31-_m3_fault
.globl MM_PickleStubs
.data
	.align 4
	.type	 MM_PickleStubs,@object
	.size	 MM_PickleStubs,1572
MM_PickleStubs:
	.long MM_PickleStubs+1404
	.long MM_PickleStubs+44
	.long MM_PickleStubs+600
	.zero	4
	.long MM_PickleStubs+580
	.long MM_PickleStubs+1040
	.zero	28
	.long 743457012
.byte 184
.byte 69
.byte 48
.byte 53
.byte 76
.byte 5
.byte 96
.byte 25
	.zero	8
	.long 65336
	.long 1
	.zero	20
	.long MM_PickleStubs+1564
	.zero	40
	.long MM_PickleStubs+148
	.zero	8
	.long -417867407
.byte 75
.byte 222
.byte 182
.byte 245
.byte 58
.byte 7
.byte 161
.byte 18
	.zero	8
	.long 4
	.long 1
	.zero	20
	.long MM_PickleStubs+1559
	.zero	40
	.long MM_PickleStubs+252
	.zero	8
	.long -1555629756
.byte 197
.byte 120
.byte 185
.byte 190
.byte 129
.byte 129
.byte 255
.byte 29
	.zero	8
	.long 8
	.long 1
	.zero	20
	.long MM_PickleStubs+1554
	.zero	40
	.long MM_PickleStubs+364
	.long PickleStubs__SwapReal
	.long PickleStubs__SwapLongReal
	.zero	8
	.long 1786895172
.byte 25
.byte 6
.byte 196
.byte 119
.byte 93
.byte 221
.byte 69
.byte 29
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_PickleStubs+1551
	.zero	44
	.long PickleStubs__NativeEndian
	.long PickleStubs__RaiseUnmarshalFailure
	.long PickleStubs__RaiseUnsupportedDataRep
	.long PickleStubs__RaiseError
	.long PickleStubs__OutRef
	.long PickleStubs__InRef
	.long PickleStubs__OutChars
	.long PickleStubs__OutText
	.long PickleStubs__OutBytes
	.long PickleStubs__OutInteger
	.long PickleStubs__OutInt32
	.long PickleStubs__OutByte
	.long PickleStubs__OutBoolean
	.long PickleStubs__OutReal
	.long PickleStubs__OutLongreal
	.long PickleStubs__OutExtended
	.long PickleStubs__OutCardinal
	.long PickleStubs__InChars
	.long PickleStubs__InText
	.long PickleStubs__InBytes
	.long PickleStubs__InInteger
	.long PickleStubs__InInt32
	.long PickleStubs__InByte
	.long PickleStubs__InBoolean
	.long PickleStubs__InReal
	.long PickleStubs__InLongreal
	.long PickleStubs__InExtended
	.long PickleStubs__InCardinal
	.long 800110099
	.long 356643957
	.long 483796623
	.long 356643957
	.zero	4
	.long MM_PickleStubs+608
	.long -1638177541
	.long MM_PickleStubs+656
	.long -1861675307
	.long 2
	.long MM_PickleStubs+628
	.long 20
	.ascii	"Data value too big."
	.zero	1
	.long MI_Rd+44
	.zero	8
	.long 1358456180
	.long 2
	.long MM_PickleStubs+676
	.long 17
	.ascii	"UnmarshalFailure"
	.zero	4
	.long 2
	.long MM_PickleStubs+708
	.long 19
	.ascii	"UnsupportedDataRep"
	.zero	2
	.ascii	"RaiseError"
	.zero	1
	.ascii	"RaiseUnsupportedDataRep"
	.zero	1
	.ascii	"RaiseUnmarshalFailure"
	.zero	1
	.ascii	"NativeEndian"
	.zero	1
	.ascii	"SwapLongReal"
	.zero	1
	.ascii	"SwapReal"
	.zero	1
	.ascii	"OutText"
	.zero	1
	.ascii	"InText"
	.zero	1
	.ascii	"OutBoolean"
	.zero	1
	.ascii	"InBoolean"
	.zero	1
	.ascii	"OutExtended"
	.zero	1
	.ascii	"InExtended"
	.zero	1
	.ascii	"OutLongreal"
	.zero	1
	.ascii	"InLongreal"
	.zero	1
	.ascii	"OutReal"
	.zero	1
	.ascii	"InReal"
	.zero	1
	.ascii	"OutCardinal"
	.zero	1
	.ascii	"InCardinal"
	.zero	1
	.ascii	"OutByte"
	.zero	1
	.ascii	"InByte"
	.zero	1
	.ascii	"OutInt32"
	.zero	1
	.ascii	"OutInteger"
	.zero	1
	.ascii	"InInt32"
	.zero	1
	.ascii	"InInteger"
	.zero	1
	.ascii	"OutBytes"
	.zero	1
	.ascii	"InBytes"
	.zero	1
	.ascii	"OutChars"
	.zero	1
	.ascii	"InChars"
	.zero	1
	.ascii	"InRef"
	.zero	1
	.ascii	"OutRef"
	.zero	1
	.long PickleStubs__RaiseError
	.long MM_PickleStubs+728
	.zero	4
	.long PickleStubs__RaiseUnsupportedDataRep
	.long MM_PickleStubs+739
	.zero	4
	.long PickleStubs__RaiseUnmarshalFailure
	.long MM_PickleStubs+763
	.zero	4
	.long PickleStubs__NativeEndian
	.long MM_PickleStubs+785
	.zero	4
	.long PickleStubs__SwapLongReal
	.long MM_PickleStubs+798
	.zero	4
	.long PickleStubs__SwapReal
	.long MM_PickleStubs+811
	.zero	4
	.long PickleStubs__OutText
	.long MM_PickleStubs+820
	.long MI_PickleStubs+56
	.long PickleStubs__InText
	.long MM_PickleStubs+828
	.long MI_PickleStubs+100
	.long PickleStubs__OutBoolean
	.long MM_PickleStubs+835
	.long MI_PickleStubs+76
	.long PickleStubs__InBoolean
	.long MM_PickleStubs+846
	.long MI_PickleStubs+120
	.long PickleStubs__OutExtended
	.long MM_PickleStubs+856
	.long MI_PickleStubs+88
	.long PickleStubs__InExtended
	.long MM_PickleStubs+868
	.long MI_PickleStubs+132
	.long PickleStubs__OutLongreal
	.long MM_PickleStubs+879
	.long MI_PickleStubs+84
	.long PickleStubs__InLongreal
	.long MM_PickleStubs+891
	.long MI_PickleStubs+128
	.long PickleStubs__OutReal
	.long MM_PickleStubs+902
	.long MI_PickleStubs+80
	.long PickleStubs__InReal
	.long MM_PickleStubs+910
	.long MI_PickleStubs+124
	.long PickleStubs__OutCardinal
	.long MM_PickleStubs+917
	.long MI_PickleStubs+92
	.long PickleStubs__InCardinal
	.long MM_PickleStubs+929
	.long MI_PickleStubs+136
	.long PickleStubs__OutByte
	.long MM_PickleStubs+940
	.long MI_PickleStubs+72
	.long PickleStubs__InByte
	.long MM_PickleStubs+948
	.long MI_PickleStubs+116
	.long PickleStubs__OutInt32
	.long MM_PickleStubs+955
	.long MI_PickleStubs+68
	.long PickleStubs__OutInteger
	.long MM_PickleStubs+964
	.long MI_PickleStubs+64
	.long PickleStubs__InInt32
	.long MM_PickleStubs+975
	.long MI_PickleStubs+112
	.long PickleStubs__InInteger
	.long MM_PickleStubs+983
	.long MI_PickleStubs+108
	.long PickleStubs__OutBytes
	.long MM_PickleStubs+993
	.long MI_PickleStubs+60
	.long PickleStubs__InBytes
	.long MM_PickleStubs+1002
	.long MI_PickleStubs+104
	.long PickleStubs__OutChars
	.long MM_PickleStubs+1010
	.long MI_PickleStubs+52
	.long PickleStubs__InChars
	.long MM_PickleStubs+1019
	.long MI_PickleStubs+96
	.long PickleStubs__InRef
	.long MM_PickleStubs+1027
	.long MI_PickleStubs+48
	.long PickleStubs__OutRef
	.long MM_PickleStubs+1033
	.long MI_PickleStubs+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/pickle/PickleStubs.m3"
	.zero	1
.byte 14
.byte 14
.byte 0
.byte 1
.byte 16
.byte 26
.byte 8
.byte 0
.byte 1
.byte 16
.byte 26
.byte 4
.byte 0
.byte 1
.byte 16
.byte 27
.byte 56
.byte 255
.byte 0
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
