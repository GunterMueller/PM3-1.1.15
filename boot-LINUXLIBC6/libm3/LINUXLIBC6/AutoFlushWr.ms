	.file	"AutoFlushWr.mc"
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
	.type	 M_AutoFlushWr_LINE_93.0,@function
M_AutoFlushWr_LINE_93.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%ebx
	movl -20(%ebx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl -20(%ebx),%eax
	movl (%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M_AutoFlushWr_LINE_93.0,.Lfe1-M_AutoFlushWr_LINE_93.0
	.align 16
	.type	 AutoFlushWr__Init,@function
AutoFlushWr__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-20(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_93.0,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $8,%esp
.L2:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L3
	pushl $1300
	call _m3_fault
	.align 16
.L3:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%ecx
	addl %ecx,%edx
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L4
	pushl $1300
	call _m3_fault
	.align 16
.L4:
	movl (%ecx,%eax),%eax
	movl %eax,(%edx)
	movl 8(%ebp),%esi
	testl %esi,%esi
	jne .L5
	pushl $1316
	call _m3_fault
	.align 16
.L5:
	movl 12(%ebp),%ebx
	testl %ebx,%ebx
	jne .L6
	pushl $1316
	call _m3_fault
	.align 16
.L6:
	movl MM_AutoFlushWr+316,%ecx
	movl 24(%ecx),%edx
	movl 4(%edx,%ebx),%eax
	movl %eax,4(%edx,%esi)
	movl 24(%ecx),%edx
	movl 16(%edx,%ebx),%eax
	movl %eax,16(%edx,%esi)
	movl 24(%ecx),%edx
	movl 8(%edx,%ebx),%eax
	movl %eax,8(%edx,%esi)
	movl 24(%ecx),%edx
	movl 12(%edx,%ebx),%eax
	movl %eax,12(%edx,%esi)
	movl 24(%ecx),%edx
	movb 20(%edx,%ebx),%al
	movb %al,20(%edx,%esi)
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L15
	pushl $1396
	call _m3_fault
	.align 16
.L15:
	movl 12(%ebp),%ecx
	testl %ecx,%ecx
	jne .L16
	pushl $1396
	call _m3_fault
	.align 16
.L16:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%edx
	movb 21(%edx,%ecx),%al
	movb %al,21(%edx,%ebx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L17
	pushl $1412
	call _m3_fault
	.align 16
.L17:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%eax
	movb $1,22(%eax,%edx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L18
	pushl $1428
	call _m3_fault
	.align 16
.L18:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl 12(%ebp),%eax
	movl %eax,(%edx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L19
	pushl $1444
	call _m3_fault
	.align 16
.L19:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movb $0,20(%eax,%edx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L20
	pushl $1460
	call _m3_fault
	.align 16
.L20:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %ebp,%ecx
	movl $0,24(%edx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	call M_AutoFlushWr_LINE_93.0
.L21:
	fldz
	fcompl 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L23
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L24
	pushl $1540
	call _m3_fault
	.align 16
.L24:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl $-1717986918,4(%eax)
	movl $1069128089,8(%eax)
	jmp .L25
	.align 16
.L23:
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L26
	pushl $1540
	call _m3_fault
	.align 16
.L26:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	fldl 16(%ebp)
	fstpl 4(%eax)
.L25:
	leal -32(%ebp),%esp
	movl 8(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 AutoFlushWr__Init,.Lfe2-AutoFlushWr__Init
	.align 16
	.type	 M_AutoFlushWr_LINE_108.1,@function
M_AutoFlushWr_LINE_108.1:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -32(%eax),%eax
	subl $4,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L37
	pushl $1732
	call _m3_fault
	.align 16
.L37:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M_AutoFlushWr_LINE_108.1,.Lfe3-M_AutoFlushWr_LINE_108.1
	.align 16
	.type	 AutoFlushWr__Seek,@function
AutoFlushWr__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-32(%ebp)
.L28:
	movl $MM_AutoFlushWr+332,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movb $0,-48(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L29
	pushl $1652
	call _m3_fault
	.align 16
.L29:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_108.1,-20(%ebp)
	movl %ebp,-16(%ebp)
	addl $4,%esp
.L30:
	movl $3,-24(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-28(%ebp)
	leal -28(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L31
	pushl $1684
	call _m3_fault
	.align 16
.L31:
	movl MM_AutoFlushWr+324,%edi
	movl 24(%edi),%eax
	movl (%eax,%ecx),%esi
	testl %esi,%esi
	jne .L33
	pushl $1684
	call _m3_fault
	.align 16
.L33:
	movl MM_AutoFlushWr+316,%ebx
	movl 24(%ebx),%edx
	movl 16(%edx,%ecx),%eax
	movl %eax,16(%edx,%esi)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%ecx
	movl 36(%ebx),%eax
	movl (%ecx),%edx
	movl 12(%ebp),%ebx
	movl (%eax,%edx),%eax
	pushl %ebx
	pushl %ecx
	call *%eax
	movl -28(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_108.1
	addl $8,%esp
.L35:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L38
	pushl $1764
	call _m3_fault
	.align 16
.L38:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%esi
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	leal (%esi,%ecx),%edx
	movl (%eax,%ecx),%eax
	testl %eax,%eax
	jne .L40
	pushl $1764
	call _m3_fault
	.align 16
.L40:
	movl (%esi,%eax),%eax
	movl %eax,(%edx)
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L42
	pushl $1780
	call _m3_fault
	.align 16
.L42:
	movl MM_AutoFlushWr+324,%edi
	movl 24(%edi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L43
	pushl $1780
	call _m3_fault
	.align 16
.L43:
	movl MM_AutoFlushWr+316,%esi
	movl 24(%esi),%eax
	movl 4(%eax,%edx),%edx
	movl %edx,4(%eax,%ecx)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L46
	pushl $1796
	call _m3_fault
	.align 16
.L46:
	movl 24(%esi),%eax
	movl 16(%eax,%edx),%edx
	movl %edx,16(%eax,%ecx)
	movl %ecx,-52(%ebp)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L49
	pushl $1812
	call _m3_fault
	.align 16
.L49:
	movl 24(%esi),%eax
	movl -52(%ebp),%ebx
	movl 8(%eax,%edx),%edx
	movl %edx,8(%eax,%ebx)
	movl 24(%edi),%eax
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	jne .L52
	pushl $1828
	call _m3_fault
	.align 16
.L52:
	movl 24(%esi),%edx
	movl 12(%edx,%eax),%eax
	movl %eax,12(%edx,%ecx)
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-36(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L53:
	movl $6,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L54
	pushl $1860
	call _m3_fault
	.align 16
.L54:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	cmpb $0,20(%eax)
	jne .L70
	movb $1,20(%eax)
	movl MM_AutoFlushWr+48,%eax
	testl %eax,%eax
	jne .L57
	pushl $1892
	call _m3_fault
	.align 16
.L57:
	movl MM_AutoFlushWr+324,%esi
	movl 24(%esi),%edi
	movl 8(%ebp),%ecx
	movl 24(%edi,%eax),%edx
	testl %edx,%edx
	sete %bl
	movb %bl,-48(%ebp)
	testl %ecx,%ecx
	jne .L58
	pushl $1908
	call _m3_fault
	.align 16
.L58:
	movl %edx,24(%edi,%ecx)
	movl %eax,%edx
	addl 24(%esi),%edx
	movl %ecx,24(%edx)
	movl MI_Time+44,%eax
	call *%eax
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L62
	fstp %st(0)
	pushl $1940
	call _m3_fault
	.align 16
.L62:
	movl MM_AutoFlushWr+324,%edx
	movl %ecx,%eax
	addl 24(%edx),%eax
	faddl 4(%eax)
	fstpl 12(%eax)
	cmpb $0,-48(%ebp)
	je .L63
	movl %ecx,%eax
	addl 24(%edx),%eax
	movl 4(%eax),%edx
	movl 8(%eax),%ecx
	movl %edx,MM_AutoFlushWr+52
	movl %ecx,MM_AutoFlushWr+56
	cmpl $0,MM_AutoFlushWr+64
	jne .L70
	movl MM_AutoFlushWr+344,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	pushl %edx
	movl MI_Thread+148,%eax
	call *%eax
	movl %eax,MM_AutoFlushWr+64
	addl $8,%esp
	jmp .L70
	.align 16
.L63:
	movl %ecx,%eax
	addl 24(%edx),%eax
	fldl 4(%eax)
	fcoml MM_AutoFlushWr+52
	fnstsw %ax
	andb $5,%ah
	je .L73
	fstpl MM_AutoFlushWr+52
	movl MM_AutoFlushWr+64,%eax
	pushl %eax
	movl MI_Thread+204,%eax
	call *%eax
	addl $4,%esp
	jmp .L70
	.align 16
.L73:
	fstp %st(0)
.L70:
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -36(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,-48(%ebp)
	je .L72
	movl MM_AutoFlushWr+60,%eax
	pushl %eax
	movl MI_Thread+172,%eax
	call *%eax
.L72:
	movl -12(%ebp),%eax
	leal -64(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 AutoFlushWr__Seek,.Lfe4-AutoFlushWr__Seek
	.align 16
	.type	 M_AutoFlushWr_LINE_150.2,@function
M_AutoFlushWr_LINE_150.2:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -20(%eax),%eax
	subl $4,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L103
	pushl $2404
	call _m3_fault
	.align 16
.L103:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M_AutoFlushWr_LINE_150.2,.Lfe5-M_AutoFlushWr_LINE_150.2
	.align 16
	.type	 AutoFlushWr__Flush,@function
AutoFlushWr__Flush:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-20(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L75
	pushl $2212
	call _m3_fault
	.align 16
.L75:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_150.2,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L76:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L77
	pushl $2244
	call _m3_fault
	.align 16
.L77:
	movl MM_AutoFlushWr+324,%edi
	movl %edi,-24(%ebp)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%esi
	testl %esi,%esi
	jne .L79
	pushl $2244
	call _m3_fault
	.align 16
.L79:
	movl MM_AutoFlushWr+316,%ebx
	movl 24(%ebx),%edx
	movl 16(%edx,%ecx),%eax
	movl %eax,16(%edx,%esi)
	movl -24(%ebp),%edi
	movl 24(%edi),%eax
	movl (%eax,%ecx),%ecx
	movl 36(%ebx),%eax
	movl (%ecx),%edx
	movl 12(%eax,%edx),%ebx
	pushl %ecx
	call *%ebx
	movl 8(%ebp),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L81
	pushl $2292
	call _m3_fault
	.align 16
.L81:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%ecx
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	leal (%ecx,%edx),%ebx
	movl (%eax,%edx),%eax
	testl %eax,%eax
	jne .L83
	pushl $2292
	call _m3_fault
	.align 16
.L83:
	movl (%ecx,%eax),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L85
	pushl $2324
	call _m3_fault
	.align 16
.L85:
	movl MM_AutoFlushWr+324,%esi
	movl 24(%esi),%eax
	movl (%eax,%edx),%ecx
	testl %ecx,%ecx
	jne .L86
	pushl $2324
	call _m3_fault
	.align 16
.L86:
	movl %edx,%ebx
	movl MM_AutoFlushWr+316,%edi
	movl %edi,-24(%ebp)
	movl 24(%edi),%edx
	movl 16(%edx,%ecx),%eax
	addl 4(%edx,%ecx),%eax
	subl 8(%edx,%ecx),%eax
	jns .L91
	pushl $2321
	call _m3_fault
	.align 16
.L91:
	movl %eax,4(%edx,%ebx)
	movl 24(%esi),%eax
	movl (%eax,%ebx),%eax
	testl %eax,%eax
	jne .L94
	pushl $2340
	call _m3_fault
	.align 16
.L94:
	movl -24(%ebp),%edi
	movl 24(%edi),%edx
	movl 16(%edx,%eax),%eax
	movl %eax,16(%edx,%ebx)
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L96
	pushl $2356
	call _m3_fault
	.align 16
.L96:
	movl MM_AutoFlushWr+324,%esi
	movl 24(%esi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L97
	pushl $2356
	call _m3_fault
	.align 16
.L97:
	movl -24(%ebp),%edi
	movl 24(%edi),%eax
	movl 16(%eax,%edx),%edx
	movl %edx,8(%eax,%ebx)
	movl 24(%esi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L100
	pushl $2372
	call _m3_fault
	.align 16
.L100:
	movl -24(%ebp),%edi
	movl 24(%edi),%eax
	movl 16(%eax,%edx),%edx
	movl %edx,12(%eax,%ecx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_150.2
.L101:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 AutoFlushWr__Flush,.Lfe6-AutoFlushWr__Flush
	.align 16
	.type	 M_AutoFlushWr_LINE_168.3,@function
M_AutoFlushWr_LINE_168.3:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -20(%eax),%eax
	subl $4,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L128
	pushl $2692
	call _m3_fault
	.align 16
.L128:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M_AutoFlushWr_LINE_168.3,.Lfe7-M_AutoFlushWr_LINE_168.3
	.align 16
	.type	 AutoFlushWr__Length,@function
AutoFlushWr__Length:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl %esi,-20(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L105
	pushl $2500
	call _m3_fault
	.align 16
.L105:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_168.3,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L106:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L107
	pushl $2532
	call _m3_fault
	.align 16
.L107:
	movl MM_AutoFlushWr+324,%edi
	movl 24(%edi),%eax
	movl (%eax,%ecx),%eax
	movl %eax,-28(%ebp)
	testl %eax,%eax
	jne .L109
	pushl $2532
	call _m3_fault
	.align 16
.L109:
	movl MM_AutoFlushWr+316,%ebx
	movl 24(%ebx),%edx
	movl -28(%ebp),%esi
	movl 16(%edx,%ecx),%eax
	movl %eax,16(%edx,%esi)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%ecx
	movl 36(%ebx),%eax
	movl (%ecx),%edx
	movl 8(%eax,%edx),%ebx
	pushl %ecx
	call *%ebx
	movl %eax,-24(%ebp)
	movl 8(%ebp),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L111
	pushl $2564
	call _m3_fault
	.align 16
.L111:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%ecx
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	leal (%ecx,%edx),%ebx
	movl (%eax,%edx),%eax
	testl %eax,%eax
	jne .L113
	pushl $2564
	call _m3_fault
	.align 16
.L113:
	movl (%ecx,%eax),%eax
	movl %eax,(%ebx)
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L115
	pushl $2580
	call _m3_fault
	.align 16
.L115:
	movl MM_AutoFlushWr+324,%edi
	movl 24(%edi),%eax
	movl (%eax,%ebx),%edx
	testl %edx,%edx
	jne .L116
	pushl $2580
	call _m3_fault
	.align 16
.L116:
	movl MM_AutoFlushWr+316,%esi
	movl %esi,-28(%ebp)
	movl 24(%esi),%eax
	movl %ebx,%ecx
	movl 4(%eax,%edx),%edx
	movl %edx,4(%eax,%ebx)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L119
	pushl $2596
	call _m3_fault
	.align 16
.L119:
	movl -28(%ebp),%esi
	movl 24(%esi),%eax
	movl 16(%eax,%edx),%edx
	movl %edx,16(%eax,%ecx)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%edx
	testl %edx,%edx
	jne .L122
	pushl $2612
	call _m3_fault
	.align 16
.L122:
	movl -28(%ebp),%esi
	movl 24(%esi),%eax
	movl 8(%eax,%edx),%edx
	movl %edx,8(%eax,%ebx)
	movl 24(%edi),%eax
	movl (%eax,%ebx),%ecx
	testl %ecx,%ecx
	jne .L125
	pushl $2628
	call _m3_fault
	.align 16
.L125:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%edx
	movl 12(%edx,%ecx),%eax
	movl %eax,12(%edx,%ebx)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_168.3
	movl -24(%ebp),%eax
.L126:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 AutoFlushWr__Length,.Lfe8-AutoFlushWr__Length
	.align 16
	.type	 M_AutoFlushWr_LINE_179.4,@function
M_AutoFlushWr_LINE_179.4:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -20(%eax),%eax
	subl $4,%esp
	movl (%eax),%edx
	testl %edx,%edx
	jne .L138
	pushl $2868
	call _m3_fault
	.align 16
.L138:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M_AutoFlushWr_LINE_179.4,.Lfe9-M_AutoFlushWr_LINE_179.4
	.align 16
	.type	 AutoFlushWr__Close,@function
AutoFlushWr__Close:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl %esi,-20(%ebp)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L130
	pushl $2788
	call _m3_fault
	.align 16
.L130:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_179.4,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L131:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L132
	pushl $2820
	call _m3_fault
	.align 16
.L132:
	movl MM_AutoFlushWr+324,%edi
	movl 24(%edi),%eax
	movl (%eax,%ecx),%eax
	movl %eax,-24(%ebp)
	testl %eax,%eax
	jne .L134
	pushl $2820
	call _m3_fault
	.align 16
.L134:
	movl MM_AutoFlushWr+316,%ebx
	movl 24(%ebx),%edx
	movl -24(%ebp),%esi
	movl 16(%edx,%ecx),%eax
	movl %eax,16(%edx,%esi)
	movl 24(%edi),%eax
	movl (%eax,%ecx),%ecx
	movl 36(%ebx),%eax
	movl (%ecx),%edx
	movl 16(%eax,%edx),%eax
	pushl %ecx
	call *%eax
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_179.4
	addl $4,%esp
.L136:
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L139
	pushl $2900
	call _m3_fault
	.align 16
.L139:
	movl MM_AutoFlushWr+316,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	leal -36(%ebp),%esp
	movl $0,(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 AutoFlushWr__Close,.Lfe10-AutoFlushWr__Close
	.align 16
	.type	 M_AutoFlushWr_LINE_246.5,@function
M_AutoFlushWr_LINE_246.5:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	subl $4,%esp
	movl -244(%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M_AutoFlushWr_LINE_246.5,.Lfe11-M_AutoFlushWr_LINE_246.5
	.align 16
	.type	 AutoFlushWr__Worker,@function
AutoFlushWr__Worker:
	pushl %ebp
	movl %esp,%ebp
	subl $260,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L141:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-244(%ebp)
.L142:
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L143:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edi
	movl %edi,RTThread__handlerStack
	jmp .L144
	.align 16
.L145:
	movl MM_AutoFlushWr+60,%eax
	pushl %eax
	movl MM_AutoFlushWr+44,%eax
	pushl %eax
	movl MI_Thread+156,%eax
	call *%eax
	addl $8,%esp
.L144:
	movl MM_AutoFlushWr+48,%edx
	testl %edx,%edx
	jne .L146
	pushl $3380
	call _m3_fault
	.align 16
.L146:
	movl MM_AutoFlushWr+324,%eax
	movl 24(%eax),%eax
	cmpl $0,24(%eax,%edx)
	je .L145
	fldl MM_AutoFlushWr+52
	fstpl -260(%ebp)
.L148:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
.L149:
	movl $MM_AutoFlushWr+352,-192(%ebp)
	movl $0,-196(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-200(%ebp)
	leal -200(%ebp),%edi
	movl %edi,RTThread__handlerStack
	leal -180(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L151
	pushl -256(%ebp)
	pushl -260(%ebp)
	movl MI_Thread+220,%eax
	call *%eax
	movl -200(%ebp),%eax
	movl %eax,RTThread__handlerStack
	addl $8,%esp
.L150:
.L151:
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-204(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L153:
	movl $6,-208(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-212(%ebp)
	leal -212(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl MM_AutoFlushWr+48,%esi
	movl $-80,MM_AutoFlushWr+52
	movl $2146435071,MM_AutoFlushWr+56
.L154:
	movl -212(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -204(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl MI_Time+44,%eax
	call *%eax
	fstpl -252(%ebp)
	addl $4,%esp
.L155:
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-216(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L156:
	movl $6,-220(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-224(%ebp)
	leal -224(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %esi,%esi
	jne .L157
	pushl $3636
	call _m3_fault
	.align 16
.L157:
	movl MM_AutoFlushWr+324,%ebx
	movl 24(%ebx),%eax
	movl 24(%eax,%esi),%ecx
	testl %ecx,%ecx
	jne .L160
	movl %edx,RTThread__handlerStack
	movl -216(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
	jmp .L142
	.align 16
.L160:
	movl %ecx,-244(%ebp)
	movl 24(%ebx),%edx
	fldl -252(%ebp)
	fcompl 12(%edx,%ecx)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L162
	movl 24(%edx,%ecx),%eax
	movl %eax,24(%edx,%esi)
	movl 24(%ebx),%eax
	movb $0,20(%eax,%ecx)
	movl -244(%ebp),%edx
	testl %edx,%edx
	jne .L166
	pushl $3716
	call _m3_fault
	.align 16
.L166:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl $0,24(%eax)
	jmp .L171
	.align 16
.L162:
	movl %ecx,%esi
	movl $0,-244(%ebp)
	movl 24(%ebx),%eax
	fldl 4(%eax,%esi)
	fcoml MM_AutoFlushWr+52
	fnstsw %ax
	andb $5,%ah
	je .L180
	fstpl MM_AutoFlushWr+52
	jmp .L171
	.align 16
.L180:
	fstp %st(0)
.L171:
	movl -224(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -216(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
	movl -244(%ebp),%eax
	testl %eax,%eax
	je .L155
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_246.5,-232(%ebp)
	movl %ebp,-228(%ebp)
	addl $4,%esp
.L173:
	movl $3,-236(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-240(%ebp)
	leal -240(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl -244(%ebp),%edx
	testl %edx,%edx
	jne .L174
	pushl $3908
	call _m3_fault
	.align 16
.L174:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%edx)
	jne .L175
	pushl %edx
	call AutoFlushWr__Flush
	addl $4,%esp
.L175:
	movl -240(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_246.5
.L176:
	jmp .L155
	.align 16
.L179:
	leal -272(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 AutoFlushWr__Worker,.Lfe12-AutoFlushWr__Worker
	.align 16
	.type	 M_AutoFlushWr_LINE_275.6,@function
M_AutoFlushWr_LINE_275.6:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	subl $4,%esp
	movl -52(%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe13:
	.size	 M_AutoFlushWr_LINE_275.6,.Lfe13-M_AutoFlushWr_LINE_275.6
	.align 16
	.type	 AutoFlushWr__Shutdown,@function
AutoFlushWr__Shutdown:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L182:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl $0,-52(%ebp)
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-12(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L183:
	movl $6,-16(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-20(%ebp)
	leal -20(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl MM_AutoFlushWr+48,%esi
.L184:
	movl -20(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
.L185:
	movl MM_AutoFlushWr+44,%eax
	movl %eax,-24(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L186:
	movl $6,-28(%ebp)
	movl RTThread__handlerStack,%edx
	movl %edx,-32(%ebp)
	leal -32(%ebp),%edi
	movl %edi,RTThread__handlerStack
	testl %esi,%esi
	jne .L187
	pushl $4244
	call _m3_fault
	.align 16
.L187:
	movl MM_AutoFlushWr+324,%ebx
	movl 24(%ebx),%eax
	movl 24(%eax,%esi),%ecx
	testl %ecx,%ecx
	jne .L190
	movl %edx,RTThread__handlerStack
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	jmp .L201
	.align 16
.L190:
	movl %ecx,-52(%ebp)
	movl 24(%ebx),%eax
	movl 24(%eax,%ecx),%edx
	movl %edx,24(%eax,%esi)
	movl 24(%ebx),%eax
	movb $0,20(%eax,%ecx)
	movl -52(%ebp),%edx
	testl %edx,%edx
	jne .L194
	pushl $4308
	call _m3_fault
	.align 16
.L194:
	movl MM_AutoFlushWr+324,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl $0,24(%eax)
.L195:
	movl -32(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -52(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_AutoFlushWr_LINE_275.6,-40(%ebp)
	movl %ebp,-36(%ebp)
	addl $8,%esp
.L196:
	movl $3,-44(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-48(%ebp)
	leal -48(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl -52(%ebp),%edx
	testl %edx,%edx
	jne .L197
	pushl $4372
	call _m3_fault
	.align 16
.L197:
	movl MM_AutoFlushWr+316,%eax
	movl 24(%eax),%eax
	cmpb $0,20(%eax,%edx)
	jne .L198
	pushl %edx
	call AutoFlushWr__Flush
	addl $4,%esp
.L198:
	movl -48(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_AutoFlushWr_LINE_275.6
.L199:
	jmp .L185
	.align 16
.L201:
	movl -8(%ebp),%eax
	leal -64(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe14:
	.size	 AutoFlushWr__Shutdown,.Lfe14-AutoFlushWr__Shutdown
	.align 16
	.type	 _INITM_AutoFlushWr,@function
_INITM_AutoFlushWr:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_AutoFlushWr+44
	movl $0,MM_AutoFlushWr+48
	movl $0,MM_AutoFlushWr+60
	movl MM_AutoFlushWr+360,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_AutoFlushWr+44
	movl MM_AutoFlushWr+368,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_AutoFlushWr+48
	movl MM_AutoFlushWr+376,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_AutoFlushWr+60
	movl MM_AutoFlushWr+196,%eax
	pushl %eax
	movl MI_Process+164,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe15:
	.size	 _INITM_AutoFlushWr,.Lfe15-_INITM_AutoFlushWr
	.align 16
	.type	 M_AutoFlushWr_t142df1e8_LINK,@function
M_AutoFlushWr_t142df1e8_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_AutoFlushWr+344,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_AutoFlushWr+192,%eax
	movl %eax,4(%edx)
	popl %ebp
	ret
.Lfe16:
	.size	 M_AutoFlushWr_t142df1e8_LINK,.Lfe16-M_AutoFlushWr_t142df1e8_LINK
	.align 16
	.type	 M_AutoFlushWr_tafdd6bd9_LINK,@function
M_AutoFlushWr_tafdd6bd9_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_AutoFlushWr+324,%eax
	movl MM_AutoFlushWr+316,%edx
	movl 52(%eax),%ebx
	movl 36(%edx),%ecx
	movl MM_AutoFlushWr+176,%eax
	movl %eax,(%ecx,%ebx)
	movl 36(%edx),%ecx
	movl MM_AutoFlushWr+184,%eax
	movl %eax,8(%ebx,%ecx)
	movl 36(%edx),%ecx
	movl MM_AutoFlushWr+180,%eax
	movl %eax,12(%ebx,%ecx)
	movl 36(%edx),%edx
	movl MM_AutoFlushWr+188,%eax
	movl %eax,16(%ebx,%edx)
	movl MM_AutoFlushWr+984,%eax
	movl 36(%eax),%edx
	movl MM_AutoFlushWr+172,%eax
	movl %eax,(%edx,%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe17:
	.size	 M_AutoFlushWr_tafdd6bd9_LINK,.Lfe17-M_AutoFlushWr_tafdd6bd9_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_AutoFlushWr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe18:
	.size	 _m3_fault,.Lfe18-_m3_fault
.globl MM_AutoFlushWr
.data
	.align 4
	.type	 MM_AutoFlushWr,@object
	.size	 MM_AutoFlushWr,1032
MM_AutoFlushWr:
	.long MM_AutoFlushWr+800
	.long MM_AutoFlushWr+68
	.long MM_AutoFlushWr+316
	.long MM_AutoFlushWr+304
	.zero	4
	.long MM_AutoFlushWr+608
	.zero	4
	.long MM_AutoFlushWr+792
	.long MM_AutoFlushWr+792
	.zero	4
	.long _INITM_AutoFlushWr
	.zero	8
	.long 0xffffffb0,0x7fefffff
	.zero	16
	.long -1344443431
.byte 154
.byte 241
.byte 81
.byte 167
.byte 67
.byte 154
.byte 140
.byte 8
	.long 1
	.zero	4
	.long 28
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_AutoFlushWr+953
	.long MM_AutoFlushWr+960
	.long MM_AutoFlushWr+965
	.zero	4
	.long M_AutoFlushWr_tafdd6bd9_LINK
	.long 395305393
	.zero	12
	.long MM_AutoFlushWr+992
	.long MM_AutoFlushWr+1017
	.long MM_AutoFlushWr+200
	.long AutoFlushWr__Init
	.long AutoFlushWr__Seek
	.long AutoFlushWr__Flush
	.long AutoFlushWr__Length
	.long AutoFlushWr__Close
	.long AutoFlushWr__Worker
	.long AutoFlushWr__Shutdown
	.zero	8
	.long 338555368
.byte 208
.byte 107
.byte 50
.byte 29
.byte 56
.byte 154
.byte 31
.byte 9
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_AutoFlushWr+950
	.zero	4
	.long M_AutoFlushWr_t142df1e8_LINK
	.long -448425059
	.zero	24
	.long 395305394
	.long -1344443431
	.zero	4
	.long MM_AutoFlushWr+324
	.long -1861675307
	.long MM_AutoFlushWr+344
	.long -1344443431
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long MM_AutoFlushWr+360
	.long 338555368
	.long MI_Thread+184
	.zero	4
	.long MM_AutoFlushWr+368
	.long 356643957
	.long MM_AutoFlushWr+376
	.long 395305394
	.long MM_AutoFlushWr+984
	.long 1475387830
	.ascii	"_INITM_AutoFlushWr"
	.zero	1
	.ascii	"Shutdown"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_275"
	.zero	1
	.ascii	"Worker"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_246"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_179"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_168"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_150"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_108"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"M_AutoFlushWr_LINE_93"
	.zero	1
	.long _INITM_AutoFlushWr
	.long MM_AutoFlushWr+384
	.zero	4
	.long AutoFlushWr__Shutdown
	.long MM_AutoFlushWr+403
	.zero	4
	.long M_AutoFlushWr_LINE_275.6
	.long MM_AutoFlushWr+412
	.zero	4
	.long AutoFlushWr__Worker
	.long MM_AutoFlushWr+435
	.zero	4
	.long M_AutoFlushWr_LINE_246.5
	.long MM_AutoFlushWr+442
	.zero	4
	.long AutoFlushWr__Close
	.long MM_AutoFlushWr+465
	.zero	4
	.long M_AutoFlushWr_LINE_179.4
	.long MM_AutoFlushWr+471
	.zero	4
	.long AutoFlushWr__Length
	.long MM_AutoFlushWr+494
	.zero	4
	.long M_AutoFlushWr_LINE_168.3
	.long MM_AutoFlushWr+501
	.zero	4
	.long AutoFlushWr__Flush
	.long MM_AutoFlushWr+524
	.zero	4
	.long M_AutoFlushWr_LINE_150.2
	.long MM_AutoFlushWr+530
	.zero	4
	.long AutoFlushWr__Seek
	.long MM_AutoFlushWr+553
	.zero	4
	.long M_AutoFlushWr_LINE_108.1
	.long MM_AutoFlushWr+558
	.zero	4
	.long AutoFlushWr__Init
	.long MM_AutoFlushWr+581
	.zero	4
	.long M_AutoFlushWr_LINE_93.0
	.long MM_AutoFlushWr+586
	.zero	8
.byte 42
.byte 44
.byte 4
.byte 4
.byte 41
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/AutoFlushWr.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
.byte 4
.byte 8
.byte 8
.byte 16
.byte 36
.byte 4
.byte 0
.byte 4
.byte 42
.byte 20
.byte 4
.byte 0
.byte 6
.byte 10
.byte 5
.byte 16
.byte 135
.byte 20
.byte 118
.byte 98
.byte 8
.byte 24
.byte 2
.byte 16
.byte 178
.byte 225
.byte 143
.byte 23
	.zero	7
	.long 395305393
	.ascii	"AutoFlushWr_^%#%^__0001M"
	.zero	1
	.ascii	"AutoFlushWr.T"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
