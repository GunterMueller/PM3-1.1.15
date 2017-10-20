	.file	"M3FP.mc"
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
	.type	 M3FP__FromText,@function
M3FP__FromText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	movl MI_Fingerprint+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3FP__FromText,.Lfe1-M3FP__FromText
	.align 16
	.type	 M3FP__FromChars,@function
M3FP__FromChars:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_Fingerprint+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3FP__FromChars,.Lfe2-M3FP__FromChars
	.align 16
	.type	 M3FP__Combine,@function
M3FP__Combine:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	leal 16(%ebp),%ecx
	movb 8(%ebp),%dl
	movb 19(%ebp),%al
	movb %al,8(%ebp)
	movb 18(%ebp),%al
	movb %al,19(%ebp)
	movb 15(%ebp),%al
	movb %al,18(%ebp)
	movb 12(%ebp),%al
	movb %al,15(%ebp)
	movb 22(%ebp),%al
	movb %al,12(%ebp)
	movb 20(%ebp),%al
	movb %al,22(%ebp)
	movb 9(%ebp),%al
	movb %al,20(%ebp)
	movb 13(%ebp),%al
	movb %al,9(%ebp)
	movb 16(%ebp),%al
	movb %al,13(%ebp)
	movb 23(%ebp),%al
	movb %al,16(%ebp)
	movb 11(%ebp),%al
	movb %al,23(%ebp)
	movb 14(%ebp),%al
	movb %al,11(%ebp)
	movb %dl,14(%ebp)
	movl %ecx,-16(%ebp)
	movl $8,-12(%ebp)
	movl 24(%ebp),%eax
	pushl %eax
	leal 8(%ebp),%ecx
	pushl %ecx
	leal -16(%ebp),%eax
	pushl %eax
	movl MI_Fingerprint+68,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3FP__Combine,.Lfe3-M3FP__Combine
	.align 16
	.type	 M3FP__ExtendByInt,@function
M3FP__ExtendByInt:
	pushl %ebp
	movl %esp,%ebp
	subl $20,%esp
	xorl %eax,%eax
	pushl %ebx
	movl 12(%ebp),%ecx
.L5:
	movl %ecx,%edx
	andl $255,%edx
	cmpl $255,%edx
	jbe .L6
	pushl $833
	call _m3_fault
	.align 16
.L6:
	movb %dl,-4(%eax,%ebp)
	shrl $8,%ecx
	incl %eax
	cmpl $3,%eax
	jle .L5
	leal -4(%ebp),%ebx
	movl %ebx,-20(%ebp)
	movl $4,-16(%ebp)
	movl 16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	leal -20(%ebp),%eax
	pushl %eax
	movl MI_Fingerprint+68,%eax
	call *%eax
	movl -24(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3FP__ExtendByInt,.Lfe4-M3FP__ExtendByInt
	.align 16
	.type	 M3FP__ToInt,@function
M3FP__ToInt:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ecx
	movzbl (%ecx),%esi
	xorl %eax,%eax
	movb 1(%ecx),%al
	sall $8,%eax
	orl %eax,%esi
	xorl %edx,%edx
	movb 2(%ecx),%dl
	sall $16,%edx
	xorl %eax,%eax
	movb 3(%ecx),%al
	sall $24,%eax
	orl %eax,%edx
	orl %edx,%esi
	xorl %ebx,%ebx
	movb 4(%ecx),%bl
	xorl %eax,%eax
	movb 5(%ecx),%al
	sall $8,%eax
	orl %eax,%ebx
	xorl %edx,%edx
	movb 6(%ecx),%dl
	sall $16,%edx
	xorl %eax,%eax
	movb 7(%ecx),%al
	sall $24,%eax
	orl %eax,%edx
	orl %edx,%ebx
	movl %esi,%eax
	xorl %ebx,%eax
	jns .L16
	orl $-2147483648,%eax
.L16:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3FP__ToInt,.Lfe5-M3FP__ToInt
	.align 16
	.type	 M3FP__FromInt,@function
M3FP__FromInt:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl 8(%ebp),%ecx
	movb $0,(%eax)
	movl 12(%ebp),%eax
	movb $0,1(%eax)
	movl 12(%ebp),%eax
	movb $0,2(%eax)
	movl 12(%ebp),%eax
	xorl %edx,%edx
	movb %cl,%dl
	movb $0,3(%eax)
	cmpl $255,%edx
	jbe .L18
	pushl $1329
	call _m3_fault
	.align 16
.L18:
	movl 12(%ebp),%eax
	movb %dl,4(%eax)
	movl %ecx,%eax
	sall $16,%eax
	movl %eax,%edx
	shrl $24,%edx
	cmpl $255,%edx
	jbe .L19
	pushl $1345
	call _m3_fault
	.align 16
.L19:
	movl 12(%ebp),%eax
	movb %dl,5(%eax)
	movl %ecx,%eax
	sall $8,%eax
	movl %eax,%edx
	shrl $24,%edx
	cmpl $255,%edx
	jbe .L20
	pushl $1361
	call _m3_fault
	.align 16
.L20:
	movl 12(%ebp),%eax
	movb %dl,6(%eax)
	movl %ecx,%edx
	shrl $24,%edx
	cmpl $255,%edx
	jbe .L21
	pushl $1377
	call _m3_fault
	.align 16
.L21:
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movb %dl,7(%eax)
	popl %ebp
	ret
.Lfe6:
	.size	 M3FP__FromInt,.Lfe6-M3FP__FromInt
	.align 16
	.type	 M3FP__ToChars,@function
M3FP__ToChars:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl %ebx,%ecx
.L23:
	xorl %edx,%edx
	movb MM_M3FP+72(%ebx),%dl
	movl 8(%ebp),%eax
	movzbl (%edx,%eax),%esi
	cmpl $15,%ecx
	jbe .L24
	pushl $1553
	call _m3_fault
	.align 16
.L24:
	movl %esi,%eax
	shrl $4,%eax
	cmpl $15,%eax
	jbe .L25
	pushl $1553
	call _m3_fault
	.align 16
.L25:
	movl $MM_M3FP+80,%edi
	movl 12(%ebp),%edx
	movb (%edi,%eax),%al
	movb %al,(%ecx,%edx)
	incl %ecx
	cmpl $15,%ecx
	jbe .L26
	pushl $1569
	call _m3_fault
	.align 16
.L26:
	movl %esi,%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L27
	pushl $1569
	call _m3_fault
	.align 16
.L27:
	movl 12(%ebp),%edx
	movb (%edi,%eax),%al
	incl %ebx
	movb %al,(%ecx,%edx)
	incl %ecx
	cmpl $7,%ebx
	jle .L23
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 M3FP__ToChars,.Lfe7-M3FP__ToChars
	.align 16
	.type	 _INITM_M3FP,@function
_INITM_M3FP:
	pushl %ebp
	movl %esp,%ebp
	pushl $MI_M3FP+52
	pushl $MM_M3FP+100
	movl MI_Fingerprint+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 _INITM_M3FP,.Lfe8-_INITM_M3FP
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3FP
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_M3FP
.data
	.align 4
	.type	 MM_M3FP,@object
	.size	 MM_M3FP,424
MM_M3FP:
	.long MM_M3FP+288
	.zero	16
	.long MM_M3FP+188
	.zero	16
	.long _INITM_M3FP
	.long M3FP__FromText
	.long M3FP__FromChars
	.long M3FP__Combine
	.long M3FP__ExtendByInt
	.long M3FP__FromInt
	.long M3FP__ToInt
	.long M3FP__ToChars
.byte 3
.byte 2
.byte 1
.byte 0
.byte 7
.byte 6
.byte 5
.byte 4
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
	.long 2
	.long MM_M3FP+108
	.long 1
	.zero	4
	.ascii	"_INITM_M3FP"
	.zero	1
	.ascii	"ToChars"
	.zero	1
	.ascii	"FromInt"
	.zero	1
	.ascii	"ToInt"
	.zero	1
	.ascii	"ExtendByInt"
	.zero	1
	.ascii	"Combine"
	.zero	1
	.ascii	"FromChars"
	.zero	1
	.ascii	"FromText"
	.zero	4
	.long _INITM_M3FP
	.long MM_M3FP+112
	.zero	4
	.long M3FP__ToChars
	.long MM_M3FP+124
	.long MI_M3FP+84
	.long M3FP__FromInt
	.long MM_M3FP+132
	.long MI_M3FP+76
	.long M3FP__ToInt
	.long MM_M3FP+140
	.long MI_M3FP+80
	.long M3FP__ExtendByInt
	.long MM_M3FP+146
	.long MI_M3FP+72
	.long M3FP__Combine
	.long MM_M3FP+158
	.long MI_M3FP+68
	.long M3FP__FromChars
	.long MM_M3FP+166
	.long MI_M3FP+64
	.long M3FP__FromText
	.long MM_M3FP+176
	.long MI_M3FP+60
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/M3FP.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
