	.file	"RTIO.mc"
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
	.type	 RTIO__PutChar,@function
RTIO__PutChar:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb 8(%ebp),%bl
	cmpl $1023,MM_RTIO+44
	jle .L2
	call RTIO__Flush
.L2:
	movl MM_RTIO+44,%eax
	cmpl $1023,%eax
	jbe .L3
	pushl $305
	call _m3_fault
	.align 16
.L3:
	movb %bl,L_1(%eax)
	incl MM_RTIO+44
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTIO__PutChar,.Lfe1-RTIO__PutChar
	.align 16
	.type	 RTIO__PutChars,@function
RTIO__PutChars:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
	movl 8(%ebp),%ebx
	jmp .L5
	.align 16
.L6:
	testl %ebx,%ebx
	jne .L7
	pushl $436
	call _m3_fault
	.align 16
.L7:
	xorl %eax,%eax
	movb (%ebx),%al
	pushl %eax
	call RTIO__PutChar
	incl %ebx
	decl %esi
	addl $4,%esp
.L5:
	testl %esi,%esi
	jg .L6
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTIO__PutChars,.Lfe2-RTIO__PutChars
	.align 16
	.type	 RTIO__PutString,@function
RTIO__PutString:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	je .L9
	jmp .L11
	.align 16
.L12:
	andl $255,%eax
	pushl %eax
	call RTIO__PutChar
	incl %ebx
	addl $4,%esp
.L11:
	testl %ebx,%ebx
	jne .L14
	pushl $596
	call _m3_fault
	.align 16
.L14:
	movb (%ebx),%al
	testb %al,%al
	jne .L12
.L9:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTIO__PutString,.Lfe3-RTIO__PutString
	.align 16
	.type	 RTIO__PutInt,@function
RTIO__PutInt:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $10
	pushl %eax
	leal -32(%ebp),%eax
	pushl %eax
	call RTIO__FromInt
	movl %eax,%edi
	movl $1,%esi
	subl %edi,%ebx
	addl $12,%esp
	jmp .L17
	.align 16
.L18:
	pushl $32
	call RTIO__PutChar
	incl %esi
	addl $4,%esp
.L17:
	cmpl %ebx,%esi
	jle .L18
	pushl %edi
	leal -32(%ebp),%eax
	pushl %eax
	call RTIO__PutChars
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTIO__PutInt,.Lfe4-RTIO__PutInt
	.align 16
	.type	 RTIO__PutHex,@function
RTIO__PutHex:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ebx
	pushl $16
	pushl %eax
	leal -30(%ebp),%eax
	pushl %eax
	call RTIO__FromUnsigned
	leal 2(%eax),%edi
	movl $1,%esi
	subl %edi,%ebx
	addl $12,%esp
	jmp .L21
	.align 16
.L22:
	pushl $32
	call RTIO__PutChar
	incl %esi
	addl $4,%esp
.L21:
	cmpl %ebx,%esi
	jle .L22
	movb $48,-32(%ebp)
	movb $120,-31(%ebp)
	pushl %edi
	leal -32(%ebp),%eax
	pushl %eax
	call RTIO__PutChars
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTIO__PutHex,.Lfe5-RTIO__PutHex
	.align 16
	.type	 RTIO__PutAddr,@function
RTIO__PutAddr:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	pushl %edx
	call RTIO__PutHex
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTIO__PutAddr,.Lfe6-RTIO__PutAddr
	.align 16
	.type	 RTIO__PutText,@function
RTIO__PutText:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L26
	pushl $1124
	call _m3_fault
	.align 16
.L26:
	movl 4(%edx),%eax
	testl %eax,%eax
	jne .L28
	pushl $1122
	call _m3_fault
	.align 16
.L28:
	decl %eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	call RTIO__PutChars
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTIO__PutText,.Lfe7-RTIO__PutText
	.align 16
	.type	 RTIO__Flush,@function
RTIO__Flush:
	pushl %ebp
	movl %esp,%ebp
	movl MM_RTIO+44,%eax
	testl %eax,%eax
	jle .L29
	pushl %eax
	pushl $L_1
	movl MI_RTOS+64,%eax
	call *%eax
	movl $0,MM_RTIO+44
.L29:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 RTIO__Flush,.Lfe8-RTIO__Flush
	.align 16
	.type	 RTIO__FromInt,@function
RTIO__FromInt:
	pushl %ebp
	movl %esp,%ebp
	subl $56,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L32:
	movl $5,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	xorl %esi,%esi
	movb $0,-52(%ebp)
	movb -52(%ebp),%bl
	movb %bl,-48(%ebp)
	cmpl $0,12(%ebp)
	jne .L33
	movb $48,-36(%ebp)
	movl $1,%esi
	jmp .L34
	.align 16
.L33:
	cmpl $0,12(%ebp)
	jge .L38
	cmpl $-2147483648,12(%ebp)
	jne .L36
	movb $1,-48(%ebp)
	movl $-2147483647,12(%ebp)
.L36:
	movb $1,-52(%ebp)
	negl 12(%ebp)
	cmpl $0,12(%ebp)
	jg .L39
	pushl $1824
	call _m3_fault
	.align 16
.L39:
	cmpl $32,%esi
	jbe .L40
	pushl $1905
	call _m3_fault
	.align 16
.L40:
	movl 12(%ebp),%ebx
	pushl %ebx
	xorl %ebx,%ebx
	movb 16(%ebp),%bl
	movl %ebx,-56(%ebp)
	pushl %ebx
	call m3_mod
	addl $8,%esp
	cmpl $15,%eax
	jbe .L41
	pushl $1905
	call _m3_fault
	.align 16
.L41:
	movb MM_RTIO+52(%eax),%al
	movb %al,-36(%esi,%ebp)
	movl 12(%ebp),%ebx
	pushl %ebx
	movl -56(%ebp),%ebx
	pushl %ebx
	call m3_div
	movl %eax,12(%ebp)
	incl %esi
	addl $8,%esp
.L38:
	cmpl $0,12(%ebp)
	jg .L39
	cmpb $0,-48(%ebp)
	je .L34
	cmpl $32,%esi
	jbe .L44
	pushl $2017
	call _m3_fault
	.align 16
.L44:
	movb $48,-36(%esi,%ebp)
	xorl %ecx,%ecx
.L45:
	cmpl $32,%ecx
	jbe .L46
	pushl $2065
	call _m3_fault
	.align 16
.L46:
	xorl %eax,%eax
	movb -36(%ecx,%ebp),%al
	cmpl $57,%eax
	jg .L47
	leal -48(%eax),%edx
	jmp .L48
	.align 16
.L47:
	leal -87(%eax),%edx
.L48:
	incl %edx
	xorl %eax,%eax
	movb 16(%ebp),%al
	cmpl %eax,%edx
	jge .L49
	cmpl $32,%ecx
	jbe .L50
	pushl $2161
	call _m3_fault
	.align 16
.L50:
	cmpl $15,%edx
	jbe .L51
	pushl $2161
	call _m3_fault
	.align 16
.L51:
	movb MM_RTIO+52(%edx),%al
	movb %al,-36(%ecx,%ebp)
	jmp .L52
	.align 16
.L49:
	cmpl $32,%ecx
	jbe .L53
	pushl $2177
	call _m3_fault
	.align 16
.L53:
	movb $48,-36(%ecx,%ebp)
	incl %ecx
	jmp .L45
	.align 16
.L52:
	leal 1(%ecx),%eax
	cmpl %esi,%eax
	jle .L34
	movl %eax,%esi
.L34:
	xorl %ecx,%ecx
	cmpb $0,-52(%ebp)
	je .L56
	testl %edi,%edi
	jne .L57
	pushl $2324
	call _m3_fault
	.align 16
.L57:
	movb $45,(%edi)
	movl $1,%ecx
	incl %edi
.L56:
	leal -1(%esi),%edx
	jmp .L58
	.align 16
.L59:
	testl %edi,%edi
	jne .L60
	pushl $2356
	call _m3_fault
	.align 16
.L60:
	cmpl $32,%edx
	jle .L61
	pushl $2353
	call _m3_fault
	.align 16
.L61:
	movb -36(%edx,%ebp),%al
	movb %al,(%edi)
	incl %ecx
	incl %edi
	decl %edx
.L58:
	testl %edx,%edx
	jge .L59
	movl -44(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ecx,%eax
.L63:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 RTIO__FromInt,.Lfe9-RTIO__FromInt
	.align 16
	.type	 RTIO__FromUnsigned,@function
RTIO__FromUnsigned:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %esi
	xorl %ecx,%ecx
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L68
	movb $48,-36(%ebp)
	movl $1,%ecx
	jmp .L66
	.align 16
.L68:
	cmpl $32,%ecx
	jbe .L69
	pushl $2673
	call _m3_fault
	.align 16
.L69:
	xorl %eax,%eax
	movb 16(%ebp),%al
	movl %eax,-40(%ebp)
	movl %edx,%eax
	xorl %edx,%edx
	divl -40(%ebp)
	movl %eax,%ebx
	cmpl $15,%edx
	jbe .L70
	pushl $2673
	call _m3_fault
	.align 16
.L70:
	movb MM_RTIO+52(%edx),%al
	movb %al,-36(%ecx,%ebp)
	movl %ebx,%edx
	incl %ecx
	testl %edx,%edx
	jne .L68
.L66:
	xorl %ebx,%ebx
	leal -1(%ecx),%edx
	jmp .L72
	.align 16
.L73:
	testl %esi,%esi
	jne .L74
	pushl $2820
	call _m3_fault
	.align 16
.L74:
	cmpl $32,%edx
	jle .L75
	pushl $2817
	call _m3_fault
	.align 16
.L75:
	movb -36(%edx,%ebp),%al
	movb %al,(%esi)
	incl %ebx
	incl %esi
	decl %edx
.L72:
	testl %edx,%edx
	jge .L73
	leal -48(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 RTIO__FromUnsigned,.Lfe10-RTIO__FromUnsigned
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTIO
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_RTIO
.data
	.align 4
	.type	 MM_RTIO,@object
	.size	 MM_RTIO,468
MM_RTIO:
	.long MM_RTIO+316
	.zero	16
	.long MM_RTIO+192
	.zero	24
	.long L_1
.byte 48
.byte 49
.byte 50
.byte 51
.byte 52
.byte 53
.byte 54
.byte 55
.byte 56
.byte 57
.byte 97
.byte 98
.byte 99
.byte 100
.byte 101
.byte 102
	.long RTIO__FromInt
	.long RTIO__FromUnsigned
	.long RTIO__PutChar
	.long RTIO__PutChars
	.long RTIO__PutString
	.long RTIO__PutText
	.long RTIO__PutInt
	.long RTIO__PutHex
	.long RTIO__PutAddr
	.long RTIO__Flush
	.ascii	"FromUnsigned"
	.zero	1
	.ascii	"FromInt"
	.zero	1
	.ascii	"Flush"
	.zero	1
	.ascii	"PutText"
	.zero	1
	.ascii	"PutAddr"
	.zero	1
	.ascii	"PutHex"
	.zero	1
	.ascii	"PutInt"
	.zero	1
	.ascii	"PutString"
	.zero	1
	.ascii	"PutChars"
	.zero	1
	.ascii	"PutChar"
	.zero	1
	.long RTIO__FromUnsigned
	.long MM_RTIO+108
	.zero	4
	.long RTIO__FromInt
	.long MM_RTIO+121
	.zero	4
	.long RTIO__Flush
	.long MM_RTIO+129
	.long MI_RTIO+72
	.long RTIO__PutText
	.long MM_RTIO+135
	.long MI_RTIO+56
	.long RTIO__PutAddr
	.long MM_RTIO+143
	.long MI_RTIO+68
	.long RTIO__PutHex
	.long MM_RTIO+151
	.long MI_RTIO+64
	.long RTIO__PutInt
	.long MM_RTIO+158
	.long MI_RTIO+60
	.long RTIO__PutString
	.long MM_RTIO+165
	.long MI_RTIO+52
	.long RTIO__PutChars
	.long MM_RTIO+175
	.long MI_RTIO+48
	.long RTIO__PutChar
	.long MM_RTIO+184
	.long MI_RTIO+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTIO.m3"
	.zero	4
	.local	L_1
	.comm	L_1,1024,1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
