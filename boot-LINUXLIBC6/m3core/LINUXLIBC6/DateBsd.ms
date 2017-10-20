	.file	"DateBsd.mc"
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
	.type	 Date__FromTime,@function
Date__FromTime:
	pushl %ebp
	movl %esp,%ebp
	subl $68,%esp
	pushl %edi
	pushl %esi
	leal -8(%ebp),%eax
	pushl %ebx
	movl 16(%ebp),%esi
	movl $0,-32(%ebp)
	movl $0,-28(%ebp)
	movl $0,-24(%ebp)
	movl $0,-20(%ebp)
	movl $0,-16(%ebp)
	movl $0,-12(%ebp)
	movb $1,-27(%ebp)
	pushl %eax
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_TimePosix+44,%eax
	call *%eax
	movl MM_DateBsd+44,%eax
	movl %eax,-60(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $16,%esp
.L2:
	movl $6,-64(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-68(%ebp)
	leal -68(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	testl %esi,%esi
	je .L3
	movl MI_Date+44,%eax
	testl %eax,%eax
	jne .L5
	pushl $452
	call _m3_fault
	.align 16
.L5:
	movl (%esi),%edx
	cmpl %edx,(%eax)
	jne .L8
.L3:
	leal -8(%ebp),%eax
	pushl %eax
	call localtime
	jmp .L28
	.align 16
.L8:
	movl MI_Date+48,%eax
	testl %eax,%eax
	jne .L9
	pushl $484
	call _m3_fault
	.align 16
.L9:
	cmpl %edx,(%eax)
	jne .L10
	leal -8(%ebp),%eax
	pushl %eax
	call gmtime
.L28:
	movl %eax,%edx
	addl $4,%esp
	jmp .L7
	.align 16
.L10:
	pushl $544
	call _m3_fault
	.align 16
.L7:
	testl %edx,%edx
	jne .L11
	pushl $580
	call _m3_fault
	.align 16
.L11:
	movl 20(%edx),%eax
	addl $1900,%eax
	jns .L12
	pushl $577
	call _m3_fault
	.align 16
.L12:
	movl %eax,-32(%ebp)
	movl 16(%edx),%eax
	cmpl $11,%eax
	jbe .L14
	pushl $593
	call _m3_fault
	.align 16
.L14:
	movb %al,-28(%ebp)
	movl 12(%edx),%ecx
	leal -1(%ecx),%eax
	cmpl $30,%eax
	jbe .L16
	pushl $609
	call _m3_fault
	.align 16
.L16:
	movb %cl,-27(%ebp)
	movl 8(%edx),%eax
	cmpl $23,%eax
	jbe .L18
	pushl $625
	call _m3_fault
	.align 16
.L18:
	movb %al,-26(%ebp)
	movl 4(%edx),%eax
	cmpl $59,%eax
	jbe .L20
	pushl $641
	call _m3_fault
	.align 16
.L20:
	movb %al,-25(%ebp)
	movl (%edx),%eax
	cmpl $59,%eax
	jbe .L22
	pushl $657
	call _m3_fault
	.align 16
.L22:
	movb %al,-24(%ebp)
	movl 24(%edx),%eax
	cmpl $6,%eax
	jbe .L24
	pushl $673
	call _m3_fault
	.align 16
.L24:
	movb %al,-12(%ebp)
	movl 36(%edx),%ebx
	negl %ebx
	movl %ebx,-20(%ebp)
	movl 40(%edx),%eax
	pushl %eax
	movl MI_M3toC+60,%eax
	call *%eax
	movl %eax,-16(%ebp)
	addl $4,%esp
.L27:
	movl -68(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -60(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl 20(%ebp),%edi
	leal -32(%ebp),%esi
	leal -80(%ebp),%esp
	cld
	movl $6,%ecx
	rep
	movsl
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Date__FromTime,.Lfe1-Date__FromTime
	.align 16
	.type	 Date__ToTime,@function
Date__ToTime:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L30:
	movl $MM_DateBsd+172,-52(%ebp)
	movl $4,-56(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-60(%ebp)
	leal -60(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	pushl $44
	pushl $0
	leal -48(%ebp),%ebx
	pushl %ebx
	call memset
	movl 8(%ebp),%edx
	xorl %esi,%esi
	xorl %eax,%eax
	movb 8(%edx),%al
	movl %eax,-48(%ebp)
	xorl %eax,%eax
	movb 7(%edx),%al
	movl %eax,-44(%ebp)
	xorl %eax,%eax
	movb 6(%edx),%al
	movl %eax,-40(%ebp)
	xorl %eax,%eax
	movb 5(%edx),%al
	movl %eax,-36(%ebp)
	xorl %eax,%eax
	movb 4(%edx),%al
	movl %eax,-32(%ebp)
	movl (%edx),%edx
	addl $-1900,%edx
	movl %edx,-28(%ebp)
	movl %esi,-16(%ebp)
	pushl %ebx
	call mktime
	movl %eax,%edi
	addl $16,%esp
	cmpl $-1,%edi
	jne .L31
	pushl %esi
	pushl $MI_Date+56
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L31:
	leal -4(%ebp),%ebx
	pushl %ebx
	call time
	pushl %ebx
	call localtime
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L32
	pushl $1332
	call _m3_fault
	.align 16
.L32:
	cmpl $0,32(%esi)
	jle .L33
	addl $-3600,36(%esi)
.L33:
	movl 8(%ebp),%eax
	movl 12(%eax),%eax
	negl %eax
	subl 36(%esi),%eax
	subl %eax,%edi
	pushl %edi
	fildl (%esp)
	addl $4,%esp
	movl -60(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L36:
	leal -72(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Date__ToTime,.Lfe2-Date__ToTime
	.align 16
	.type	 _INITM_DateBsd,@function
_INITM_DateBsd:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_DateBsd+44
	movl MM_DateBsd+180,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_DateBsd+44
	movl MM_DateBsd+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_Date+44
	addl $8,%esp
	testl %eax,%eax
	jne .L38
	pushl $1556
	call _m3_fault
	.align 16
.L38:
	movl $0,(%eax)
	movl MM_DateBsd+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_Date+48
	addl $4,%esp
	testl %eax,%eax
	jne .L39
	pushl $1572
	call _m3_fault
	.align 16
.L39:
	movl $1,(%eax)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 _INITM_DateBsd,.Lfe3-_INITM_DateBsd
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_DateBsd
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_DateBsd
.data
	.align 4
	.type	 MM_DateBsd,@object
	.size	 MM_DateBsd,452
MM_DateBsd:
	.long MM_DateBsd+272
	.long MM_DateBsd+48
	.long MM_DateBsd+180
	.long MM_DateBsd+160
	.zero	4
	.long MM_DateBsd+228
	.zero	4
	.long MM_DateBsd+268
	.long MM_DateBsd+268
	.zero	4
	.long _INITM_DateBsd
	.zero	12
	.long -282474412
.byte 72
.byte 160
.byte 183
.byte 227
.byte 28
.byte 104
.byte 158
.byte 12
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	20
	.long MM_DateBsd+420
	.zero	4
	.long MM_DateBsd+422
	.zero	24
	.long MM_DateBsd+424
	.long MM_DateBsd+438
	.zero	4
	.long Date__FromTime
	.long Date__ToTime
	.long 411652799
	.long -282474412
	.zero	4
	.long MI_Date+56
	.zero	4
	.long MM_DateBsd+188
	.long 356643957
	.zero	4
	.long 411652799
	.ascii	"_INITM_DateBsd"
	.zero	1
	.ascii	"ToTime"
	.zero	1
	.ascii	"FromTime"
	.zero	2
	.long _INITM_DateBsd
	.long MM_DateBsd+196
	.zero	4
	.long Date__ToTime
	.long MM_DateBsd+211
	.long MI_Date+72
	.long Date__FromTime
	.long MM_DateBsd+218
	.long MI_Date+52
	.zero	4
.byte 42
.byte 44
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/time/POSIX/DateBsd.m3"
	.zero	1
.byte 14
.byte 0
.byte 1
.byte 7
	.ascii	"Date.TimeZone"
	.zero	1
	.ascii	"Date.TimeZone"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
