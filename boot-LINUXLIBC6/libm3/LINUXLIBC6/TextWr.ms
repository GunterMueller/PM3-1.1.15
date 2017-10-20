	.file	"TextWr.mc"
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
	.type	 M_TextWr_LINE_54.0,@function
M_TextWr_LINE_54.0:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -32(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M_TextWr_LINE_54.0,.Lfe1-M_TextWr_LINE_54.0
	.align 16
	.type	 TextWr__Init,@function
TextWr__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
	leal 8(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_TextWr_LINE_54.0,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L2:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L3
	pushl $724
	call _m3_fault
	.align 16
.L3:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	cmpl $0,12(%eax,%edx)
	jne .L4
	leal -28(%ebp),%eax
	leal -20(%ebp),%ebx
	movl %ebx,-28(%ebp)
	movl $1,-24(%ebp)
	movl $32,-20(%ebp)
	pushl %eax
	movl MM_TextWr+304,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl 8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L5
	pushl $724
	call _m3_fault
	.align 16
.L5:
	movl MM_TextWr+296,%eax
	addl 24(%eax),%edx
	movl %edx,%eax
	movl %ecx,12(%eax)
.L4:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L6
	pushl $740
	call _m3_fault
	.align 16
.L6:
	movl MM_TextWr+312,%edx
	movl 24(%edx),%eax
	movl $0,4(%eax,%ecx)
	movl 24(%edx),%eax
	movl $0,16(%eax,%ecx)
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl $0,4(%eax,%ecx)
	movl 24(%edx),%eax
	movb $0,20(%eax,%ecx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L10
	pushl $804
	call _m3_fault
	.align 16
.L10:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	movb $1,21(%eax,%edx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L11
	pushl $820
	call _m3_fault
	.align 16
.L11:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	movb $1,22(%eax,%edx)
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L12
	pushl $836
	call _m3_fault
	.align 16
.L12:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	movl 16(%eax,%edx),%eax
	pushl %eax
	pushl %edx
	call TextWr__GotoBuffer
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_TextWr_LINE_54.0
.L13:
	movl 8(%ebp),%eax
	movl -36(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TextWr__Init,.Lfe2-TextWr__Init
	.align 16
	.type	 TextWr__New,@function
TextWr__New:
	pushl %ebp
	movl %esp,%ebp
	movl MM_TextWr+320,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_TextWr+328,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%eax
	pushl %ecx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TextWr__New,.Lfe3-TextWr__New
	.align 16
	.type	 TextWr__Length,@function
TextWr__Length:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L19
	pushl $1012
	call _m3_fault
	.align 16
.L19:
	movl MM_TextWr+312,%eax
	movl MM_TextWr+296,%esi
	movl 24(%eax),%eax
	movl 24(%esi),%ebx
	movl 16(%eax,%ecx),%edx
	movl 4(%ebx,%ecx),%eax
	cmpl %edx,%eax
	jge .L20
	movl %edx,%eax
.L20:
	movl %eax,4(%ebx,%ecx)
	movl 24(%esi),%eax
	movl 4(%eax,%ecx),%eax
	testl %eax,%eax
	jge .L22
	pushl $1025
	call _m3_fault
	.align 16
.L22:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TextWr__Length,.Lfe4-TextWr__Length
	.align 16
	.type	 TextWr__Seek,@function
TextWr__Seek:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	testl %esi,%esi
	jne .L26
	pushl $1124
	call _m3_fault
	.align 16
.L26:
	movl MM_TextWr+296,%edi
	movl 24(%edi),%ecx
	movl %ecx,-8(%ebp)
	movl MM_TextWr+312,%ecx
	movl %ecx,-4(%ebp)
	movl 24(%ecx),%eax
	movl -8(%ebp),%ecx
	movl 16(%eax,%esi),%edx
	movl 4(%ecx,%esi),%eax
	cmpl %edx,%eax
	jge .L27
	movl %edx,%eax
.L27:
	movl -8(%ebp),%ecx
	movl %eax,4(%ecx,%esi)
	movl 24(%edi),%eax
	movl 4(%eax,%esi),%edx
	movl %ebx,%eax
	cmpl %edx,%eax
	jle .L29
	movl %edx,%eax
.L29:
	testl %eax,%eax
	jge .L30
	pushl $1169
	call _m3_fault
	.align 16
.L30:
	movl -4(%ebp),%ecx
	movl %eax,%ebx
	movl 24(%ecx),%eax
	cmpl %ebx,8(%eax,%esi)
	jg .L32
	cmpl %ebx,12(%eax,%esi)
	jg .L34
.L32:
	pushl %ebx
	pushl %esi
	call TextWr__GotoBuffer
	addl $8,%esp
.L34:
	testl %esi,%esi
	jne .L35
	pushl $1220
	call _m3_fault
	.align 16
.L35:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	leal -20(%ebp),%esp
	movl %ebx,16(%eax,%esi)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TextWr__Seek,.Lfe5-TextWr__Seek
	.align 16
	.type	 TextWr__GotoBuffer,@function
TextWr__GotoBuffer:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
.L37:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	pushl %edx
	pushl $1000
	call m3_div
	movl %eax,%ebx
	addl $8,%esp
	jmp .L38
	.align 16
.L39:
	pushl %esi
	call TextWr__ExpandBufferPool
	addl $4,%esp
.L38:
	testl %esi,%esi
	jne .L40
	pushl $1316
	call _m3_fault
	.align 16
.L40:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl 12(%eax,%esi),%eax
	testl %eax,%eax
	jne .L41
	pushl $1316
	call _m3_fault
	.align 16
.L41:
	movl 4(%eax),%eax
	decl %eax
	cmpl %ebx,%eax
	jl .L39
	jmp .L43
	.align 16
.L44:
	leal -20(%ebp),%eax
	leal -12(%ebp),%edi
	movl %edi,-20(%ebp)
	movl $1,-16(%ebp)
	movl $1000,-12(%ebp)
	pushl %eax
	movl MM_TextWr+336,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_TextWr+296,%eax
	movl 24(%eax),%edx
	addl $8,%esp
	movl 12(%edx,%esi),%eax
	testl %eax,%eax
	jne .L46
	pushl $1348
	call _m3_fault
	.align 16
.L46:
	movl 8(%edx,%esi),%edx
	cmpl %edx,4(%eax)
	ja .L48
	pushl $1346
	call _m3_fault
	.align 16
.L48:
	movl (%eax),%eax
	movl %ecx,(%eax,%edx,4)
	movl MM_TextWr+296,%eax
	movl %esi,%edx
	addl 24(%eax),%edx
	incl 8(%edx)
.L43:
	testl %esi,%esi
	jne .L50
	pushl $1332
	call _m3_fault
	.align 16
.L50:
	movl MM_TextWr+296,%ecx
	movl 24(%ecx),%eax
	cmpl %ebx,8(%eax,%esi)
	jle .L44
	movl %ebx,(%eax,%esi)
	movl MM_TextWr+312,%eax
	movl %esi,%edx
	addl 24(%eax),%edx
	movl 24(%ecx),%eax
	movl 12(%eax,%esi),%eax
	testl %eax,%eax
	jne .L55
	pushl $1412
	call _m3_fault
	.align 16
.L55:
	cmpl %ebx,4(%eax)
	ja .L56
	pushl $1410
	call _m3_fault
	.align 16
.L56:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	movl %eax,(%edx)
	movl %ebx,%eax
	sall $5,%eax
	subl %ebx,%eax
	leal (%ebx,%eax,4),%eax
	leal 0(,%eax,8),%ecx
	testl %ecx,%ecx
	jge .L58
	pushl $1425
	call _m3_fault
	.align 16
.L58:
	movl MM_TextWr+312,%edx
	movl 24(%edx),%eax
	movl %ecx,8(%eax,%esi)
	movl 24(%edx),%eax
	movl 8(%eax,%esi),%edi
	addl $1000,%edi
	movl %edi,12(%eax,%esi)
.L61:
	movl -8(%ebp),%eax
	leal -32(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TextWr__GotoBuffer,.Lfe6-TextWr__GotoBuffer
	.align 16
	.type	 TextWr__ExpandBufferPool,@function
TextWr__ExpandBufferPool:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	leal -12(%ebp),%edx
	pushl %esi
	leal -4(%ebp),%esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	testl %edi,%edi
	jne .L63
	pushl $1508
	call _m3_fault
	.align 16
.L63:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl 12(%eax,%edi),%eax
	testl %eax,%eax
	jne .L64
	pushl $1508
	call _m3_fault
	.align 16
.L64:
	movl 4(%eax),%eax
	addl %eax,%eax
	movl %eax,-4(%ebp)
	pushl %edx
	movl MM_TextWr+304,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	jne .L66
	pushl $1540
	call _m3_fault
	.align 16
.L66:
	movl MM_TextWr+296,%edx
	movl 24(%edx),%eax
	movl 8(%eax,%edi),%ecx
	testl %ecx,%ecx
	jge .L67
	pushl $1537
	call _m3_fault
	.align 16
.L67:
	movl %ecx,-16(%ebp)
	movl %ecx,%eax
	subl 4(%ebx),%eax
	testl %eax,%eax
	jle .L68
	pushl $1537
	call _m3_fault
	.align 16
.L68:
	movl (%ebx),%esi
	movl %esi,-24(%ebp)
	movl %esi,-20(%ebp)
	movl 24(%edx),%eax
	movl 12(%eax,%edi),%edx
	testl %edx,%edx
	jne .L70
	pushl $1540
	call _m3_fault
	.align 16
.L70:
	cmpl %ecx,4(%edx)
	je .L71
	pushl $1539
	call _m3_fault
	.align 16
.L71:
	leal 0(,%ecx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%esi
	pushl %esi
	call memmove
	movl MM_TextWr+296,%eax
	addl 24(%eax),%edi
	movl %edi,%eax
	leal -36(%ebp),%esp
	movl %ebx,12(%eax)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TextWr__ExpandBufferPool,.Lfe7-TextWr__ExpandBufferPool
	.align 16
	.type	 TextWr__Close,@function
TextWr__Close:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L74
	pushl $1636
	call _m3_fault
	.align 16
.L74:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	addl %ecx,%eax
	movl $0,(%eax)
	movl MM_TextWr+296,%edx
	movl 24(%edx),%eax
	movl $0,(%eax,%ecx)
	movl 24(%edx),%eax
	movl $0,8(%eax,%ecx)
	movl %ecx,%eax
	addl 24(%edx),%eax
	movl %ebp,%esp
	movl $0,12(%eax)
	popl %ebp
	ret
.Lfe8:
	.size	 TextWr__Close,.Lfe8-TextWr__Close
	.align 16
	.type	 M_TextWr_LINE_139.1,@function
M_TextWr_LINE_139.1:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -52(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 M_TextWr_LINE_139.1,.Lfe9-M_TextWr_LINE_139.1
	.align 16
	.type	 TextWr__ToText,@function
TextWr__ToText:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-52(%ebp)
.L79:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_TextWr_LINE_139.1,-16(%ebp)
	movl %ebp,-12(%ebp)
	addl $4,%esp
.L80:
	movl $3,-20(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-24(%ebp)
	leal -24(%ebp),%edi
	movl %edi,RTThread__handlerStack
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L82
	pushl $1828
	call _m3_fault
	.align 16
.L82:
	movl MM_TextWr+312,%eax
	movl 24(%eax),%edx
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl 16(%edx,%ecx),%esi
	movl 4(%eax,%ecx),%eax
	cmpl %esi,%eax
	jle .L83
	movl %eax,%esi
.L83:
	testl %esi,%esi
	jge .L85
	pushl $1873
	call _m3_fault
	.align 16
.L85:
	pushl %esi
	movl MI_TextF+148,%eax
	call *%eax
	movl %eax,-60(%ebp)
	pushl %esi
	pushl $1000
	call m3_div
	movl %eax,-56(%ebp)
	xorl %ebx,%ebx
	movl %ebx,-68(%ebp)
	movl %eax,%edi
	decl %edi
	movl %edi,-64(%ebp)
	jmp .L114
	.align 16
.L87:
	cmpl $0,-60(%ebp)
	jne .L88
	pushl $1972
	call _m3_fault
	.align 16
.L88:
	testl %ebx,%ebx
	jge .L89
	pushl $1969
	call _m3_fault
	.align 16
.L89:
	movl -60(%ebp),%edi
	movl $1000,-28(%ebp)
	movl 4(%edi),%eax
	addl $-1000,%eax
	movl %ebx,%edi
	subl %eax,%edi
	movl %edi,%eax
	testl %eax,%eax
	jle .L90
	pushl $1969
	call _m3_fault
	.align 16
.L90:
	movl -60(%ebp),%edi
	movl 8(%ebp),%edx
	movl (%edi),%ecx
	addl %ebx,%ecx
	movl %ecx,-32(%ebp)
	testl %edx,%edx
	jne .L91
	pushl $1972
	call _m3_fault
	.align 16
.L91:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl 12(%eax,%edx),%eax
	testl %eax,%eax
	jne .L92
	pushl $1972
	call _m3_fault
	.align 16
.L92:
	movl -68(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L93
	pushl $1970
	call _m3_fault
	.align 16
.L93:
	movl (%eax),%eax
	movl -68(%ebp),%edi
	movl (%eax,%edi,4),%eax
	testl %eax,%eax
	jne .L94
	pushl $1972
	call _m3_fault
	.align 16
.L94:
	movl $1000,%edx
	cmpl %edx,4(%eax)
	je .L95
	pushl $1971
	call _m3_fault
	.align 16
.L95:
	pushl %edx
	movl (%eax),%eax
	pushl %eax
	pushl %ecx
	call memmove
	addl $1000,%ebx
	incl -68(%ebp)
.L114:
	addl $12,%esp
	movl -64(%ebp),%edi
	cmpl %edi,-68(%ebp)
	jle .L87
	subl %ebx,%esi
	testl %esi,%esi
	jle .L97
	cmpl $0,-60(%ebp)
	jne .L98
	pushl $2084
	call _m3_fault
	.align 16
.L98:
	testl %ebx,%ebx
	jge .L99
	pushl $2081
	call _m3_fault
	.align 16
.L99:
	movl %esi,-36(%ebp)
	movl -60(%ebp),%edi
	leal (%esi,%ebx),%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L101
	pushl $2081
	call _m3_fault
	.align 16
.L101:
	movl -60(%ebp),%edi
	movl 8(%ebp),%edx
	addl (%edi),%ebx
	movl %ebx,-40(%ebp)
	testl %edx,%edx
	jne .L102
	pushl $2084
	call _m3_fault
	.align 16
.L102:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl 12(%eax,%edx),%eax
	testl %eax,%eax
	jne .L103
	pushl $2084
	call _m3_fault
	.align 16
.L103:
	movl -56(%ebp),%edi
	cmpl %edi,4(%eax)
	ja .L104
	pushl $2082
	call _m3_fault
	.align 16
.L104:
	movl (%eax),%eax
	movl -56(%ebp),%edi
	movl (%eax,%edi,4),%ecx
	testl %ecx,%ecx
	jne .L105
	pushl $2084
	call _m3_fault
	.align 16
.L105:
	movl %esi,%edx
	movl %edx,-44(%ebp)
	movl %edx,%eax
	subl 4(%ecx),%eax
	testl %eax,%eax
	jle .L107
	pushl $2081
	call _m3_fault
	.align 16
.L107:
	movl (%ecx),%eax
	movl %eax,-48(%ebp)
	pushl %edx
	pushl %eax
	movl -40(%ebp),%eax
	pushl %eax
	call memmove
	addl $12,%esp
.L97:
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L109
	pushl $2164
	call _m3_fault
	.align 16
.L109:
	movl MM_TextWr+296,%eax
	movl 24(%eax),%eax
	movl $0,4(%eax,%edx)
	movl MM_TextWr+312,%eax
	movl 24(%eax),%eax
	movl $0,16(%eax,%edx)
	pushl $0
	pushl %edx
	call TextWr__GotoBuffer
	movl -24(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_TextWr_LINE_139.1
.L111:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -60(%ebp),%eax
.L113:
	leal -80(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 TextWr__ToText,.Lfe10-TextWr__ToText
	.align 16
	.type	 M_TextWr_t67b3b288_LINK,@function
M_TextWr_t67b3b288_LINK:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_TextWr+296,%eax
	movl MM_TextWr+312,%edx
	movl 52(%eax),%ebx
	movl 36(%edx),%ecx
	movl MM_TextWr+260,%eax
	movl %eax,(%ecx,%ebx)
	movl 36(%edx),%ecx
	movl MM_TextWr+272,%eax
	movl %eax,16(%ebx,%ecx)
	movl 36(%edx),%edx
	movl MM_TextWr+256,%eax
	movl %eax,8(%ebx,%edx)
	movl MM_TextWr+328,%eax
	movl 36(%eax),%edx
	movl MM_TextWr+252,%eax
	movl %eax,(%edx,%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 M_TextWr_t67b3b288_LINK,.Lfe11-M_TextWr_t67b3b288_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TextWr
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_TextWr
.data
	.align 4
	.type	 MM_TextWr,@object
	.size	 MM_TextWr,800
MM_TextWr:
	.long MM_TextWr+568
	.long MM_TextWr+44
	.long MM_TextWr+296
	.long MM_TextWr+284
	.zero	4
	.long MM_TextWr+444
	.zero	28
	.long 1739829896
.byte 214
.byte 114
.byte 93
.byte 100
.byte 94
.byte 192
.byte 238
.byte 3
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_TextWr+749
	.long MM_TextWr+754
	.long MM_TextWr+758
	.zero	4
	.long M_TextWr_t67b3b288_LINK
	.long 1937927357
	.zero	12
	.long MM_TextWr+769
	.long MM_TextWr+789
	.long MM_TextWr+148
	.zero	8
	.long 216136661
.byte 213
.byte 56
.byte 213
.byte 7
.byte 0
.byte 195
.byte 52
.byte 11
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_TextWr+713
	.long MM_TextWr+718
	.long MM_TextWr+723
	.zero	28
	.long MM_TextWr+731
	.zero	4
	.long TextWr__Init
	.long TextWr__Length
	.long TextWr__Seek
	.long TextWr__GotoBuffer
	.long TextWr__ExpandBufferPool
	.long TextWr__Close
	.long TextWr__New
	.long TextWr__ToText
	.long 1937927358
	.long 1739829896
	.zero	4
	.long MM_TextWr+304
	.long 1739829896
	.long MM_TextWr+312
	.long 216136661
	.long MM_TextWr+320
	.long -1861675307
	.long MM_TextWr+328
	.long 1937927358
	.long MM_TextWr+336
	.long 1937927357
	.zero	4
	.long -2020873848
	.ascii	"ToText"
	.zero	1
	.ascii	"M_TextWr_LINE_139"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"ExpandBufferPool"
	.zero	1
	.ascii	"GotoBuffer"
	.zero	1
	.ascii	"Seek"
	.zero	1
	.ascii	"Length"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"M_TextWr_LINE_54"
	.zero	4
	.long TextWr__ToText
	.long MM_TextWr+344
	.long MI_TextWr+152
	.long M_TextWr_LINE_139.1
	.long MM_TextWr+351
	.zero	4
	.long TextWr__Close
	.long MM_TextWr+369
	.zero	4
	.long TextWr__ExpandBufferPool
	.long MM_TextWr+375
	.zero	4
	.long TextWr__GotoBuffer
	.long MM_TextWr+392
	.zero	4
	.long TextWr__Seek
	.long MM_TextWr+403
	.zero	4
	.long TextWr__Length
	.long MM_TextWr+408
	.zero	4
	.long TextWr__New
	.long MM_TextWr+415
	.long MI_TextWr+148
	.long TextWr__Init
	.long MM_TextWr+419
	.zero	4
	.long M_TextWr_LINE_54.0
	.long MM_TextWr+424
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/TextWr.m3"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 0
.byte 0
.byte 2
.byte 11
.byte 1
.byte 16
.byte 136
.byte 233
.byte 139
.byte 135
	.ascii	"TextWr.BufferList"
	.zero	1
.byte 14
.byte 14
.byte 14
.byte 4
.byte 0
.byte 42
.byte 12
.byte 4
.byte 0
.byte 5
.byte 10
.byte 4
.byte 7
.byte 23
.byte 23
.byte 16
.byte 213
.byte 251
.byte 225
.byte 12
	.ascii	"TextWr_^%#%^__0001M"
	.zero	1
	.ascii	"TextWr.T"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
