	.file	"MxIO.mc"
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
	.type	 MxIO__PutTxt,@function
MxIO__PutTxt:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%esi
	movl 20(%ebp),%edi
	testl %eax,%eax
	je .L2
	pushl %eax
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $8,%esp
.L2:
	testl %esi,%esi
	je .L3
	pushl %esi
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $8,%esp
.L3:
	testl %edi,%edi
	je .L4
	pushl %edi
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $8,%esp
.L4:
	cmpl $0,24(%ebp)
	je .L5
	movl 24(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	addl $8,%esp
.L5:
	cmpl $0,28(%ebp)
	je .L1
	movl 28(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
.L1:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MxIO__PutTxt,.Lfe1-MxIO__PutTxt
	.align 16
	.type	 MxIO__PutCh,@function
MxIO__PutCh:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	xorl %edx,%edx
	movb 12(%ebp),%dl
	pushl %edx
	pushl %eax
	movl MI_M3Buf+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MxIO__PutCh,.Lfe2-MxIO__PutCh
	.align 16
	.type	 MxIO__PutInt,@function
MxIO__PutInt:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%eax
	movl 16(%ebp),%ebx
	pushl %eax
	pushl %esi
	movl MI_M3Buf+56,%eax
	call *%eax
	pushl %ebx
	pushl %esi
	movl MI_M3Buf+52,%eax
	call *%eax
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MxIO__PutInt,.Lfe3-MxIO__PutInt
	.align 16
	.type	 MxIO__PutFP,@function
MxIO__PutFP:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	xorl %ecx,%ecx
	pushl %esi
	movl %ecx,%edx
	pushl %ebx
	movl 8(%ebp),%edi
.L10:
	movl 12(%ebp),%eax
	xorl %ebx,%ebx
	movb (%ecx,%eax),%bl
	movl %ebx,-28(%ebp)
	cmpl $15,%edx
	jbe .L11
	pushl $689
	call _m3_fault
	.align 16
.L11:
	movl -28(%ebp),%eax
	shrl $4,%eax
	cmpl $15,%eax
	jbe .L12
	pushl $689
	call _m3_fault
	.align 16
.L12:
	movl $MM_MxIO+44,%esi
	movb (%esi,%eax),%al
	movb %al,-16(%edx,%ebp)
	incl %edx
	cmpl $15,%edx
	jbe .L13
	pushl $705
	call _m3_fault
	.align 16
.L13:
	movl -28(%ebp),%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L14
	pushl $705
	call _m3_fault
	.align 16
.L14:
	movb (%esi,%eax),%al
	movb %al,-16(%edx,%ebp)
	incl %edx
	incl %ecx
	cmpl $7,%ecx
	jle .L10
	leal -16(%ebp),%ebx
	movl %ebx,-24(%ebp)
	movl $16,-20(%ebp)
	leal -24(%ebp),%eax
	pushl %eax
	pushl %edi
	movl MI_M3Buf+68,%eax
	call *%eax
	movl 16(%ebp),%ebx
	pushl %ebx
	pushl %edi
	movl MI_M3Buf+52,%eax
	call *%eax
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MxIO__PutFP,.Lfe4-MxIO__PutFP
	.align 16
	.type	 MxIO__PutHex,@function
MxIO__PutHex:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	movl $7,%edx
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 12(%ebp),%ecx
.L18:
	movl %ecx,%eax
	andl $15,%eax
	cmpl $15,%eax
	jbe .L19
	pushl $865
	call _m3_fault
	.align 16
.L19:
	movb MM_MxIO+44(%eax),%al
	movb %al,-8(%edx,%ebp)
	shrl $4,%ecx
	decl %edx
	jns .L18
	leal -8(%ebp),%edi
	movl %edi,-16(%ebp)
	movl $8,-12(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	pushl %ebx
	movl MI_M3Buf+68,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_M3Buf+52,%eax
	call *%eax
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MxIO__PutHex,.Lfe5-MxIO__PutHex
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_MxIO
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_MxIO
.data
	.align 4
	.type	 MM_MxIO,@object
	.size	 MM_MxIO,316
MM_MxIO:
	.long MM_MxIO+180
	.zero	16
	.long MM_MxIO+116
	.zero	20
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
	.long MxIO__PutTxt
	.long MxIO__PutCh
	.long MxIO__PutInt
	.long MxIO__PutFP
	.long MxIO__PutHex
	.ascii	"PutHex"
	.zero	1
	.ascii	"PutFP"
	.zero	1
	.ascii	"PutInt"
	.zero	1
	.ascii	"PutCh"
	.zero	1
	.ascii	"PutTxt"
	.zero	4
	.long MxIO__PutHex
	.long MM_MxIO+80
	.long MI_MxIO+60
	.long MxIO__PutFP
	.long MM_MxIO+87
	.long MI_MxIO+56
	.long MxIO__PutInt
	.long MM_MxIO+93
	.long MI_MxIO+52
	.long MxIO__PutCh
	.long MM_MxIO+100
	.long MI_MxIO+48
	.long MxIO__PutTxt
	.long MM_MxIO+106
	.long MI_MxIO+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3lin"
	.ascii	"ker/src/MxIO.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
