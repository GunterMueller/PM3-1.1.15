	.file	"TimeStamp.mc"
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
.section	.rodata
	.align 4
.LC0:
	.long 0x0,0x40f51800
.text
	.align 16
	.type	 TimeStamp__Init,@function
TimeStamp__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %ebx
.L2:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl MI_Process+172,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	movl %eax,%ebx
	pushl $MM_TimeStamp+158
	movl MI_MachineID+48,%eax
	call *%eax
	xorl %eax,%eax
	movw %bx,%ax
	addl $4,%esp
	cmpl $65535,%eax
	jbe .L3
	pushl $705
	call _m3_fault
	.align 16
.L3:
	movw %ax,MM_TimeStamp+154
	movl %ebx,%eax
	shrl $16,%eax
	cmpl $65535,%eax
	jbe .L4
	pushl $721
	call _m3_fault
	.align 16
.L4:
	movw %ax,MM_TimeStamp+156
	pushl $MM_TimeStamp+204
	movl MI_Date+72,%eax
	call *%eax
	fldl .LC0
	fsubrp %st,%st(1)
	movb $1,MM_TimeStamp+152
	fstpl MM_TimeStamp+164
.L5:
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TimeStamp__Init,.Lfe1-TimeStamp__Init
	.align 16
	.type	 M_TimeStamp_LINE_81.0,@function
M_TimeStamp_LINE_81.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl MM_TimeStamp+148,%eax
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MI_Thread+160,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M_TimeStamp_LINE_81.0,.Lfe2-M_TimeStamp_LINE_81.0
.section	.rodata
	.align 4
.LC1:
	.long 0x0,0x3fe00000
.text
	.align 16
	.type	 TimeStamp__New,@function
TimeStamp__New:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L7:
	movl $5,-36(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-40(%ebp)
	leal -40(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl MM_TimeStamp+148,%eax
	movl %eax,-44(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L8:
	movl $6,-48(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-52(%ebp)
	leal -52(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	cmpb $0,MM_TimeStamp+152
	jne .L10
	call TimeStamp__Init
.L10:
	movl MI_Time+44,%eax
	call *%eax
	fsubl MM_TimeStamp+164
	fnstcw -56(%ebp)
	movl -56(%ebp),%eax
	movb $12,%ah
	movl %eax,-60(%ebp)
	fldcw -60(%ebp)
	subl $4,%esp
	fistl (%esp)
	popl %edx
	fldcw -56(%ebp)
	testl %edx,%edx
	jge .L11
	fstp %st(0)
	pushl $1009
	call _m3_fault
	.align 16
.L11:
	movl %edx,%esi
	movl %esi,%eax
	xorl %edx,%edx
	pushl %edx
	pushl %eax
	fildll (%esp)
	addl $8,%esp
	fsubrp %st,%st(1)
	pushl $8
	subl $8,%esp
	fstpl (%esp)
	movl MI_LongFloat+44,%eax
	call *%eax
	addl $12,%esp
	fldz
	fcomp %st(1)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jae .L12
	fldl .LC1
	faddp %st,%st(1)
	jmp .L29
	.align 16
.L12:
	fldl .LC1
	fsubrp %st,%st(1)
.L29:
	fnstcw -56(%ebp)
	movl -56(%ebp),%eax
	movb $12,%ah
	movl %eax,-60(%ebp)
	fldcw -60(%ebp)
	subl $4,%esp
	fistpl (%esp)
	popl %edi
	fldcw -56(%ebp)
	cmpl $255,%edi
	jle .L14
	xorl %edi,%edi
	incl %esi
.L14:
	movl MM_TimeStamp+148,%edx
	cmpl %esi,12(%edx)
	jne .L15
	xorl %eax,%eax
	movb 16(%edx),%al
	cmpl %edi,%eax
	je .L16
.L15:
	movb $0,-80(%ebp)
	movb -80(%ebp),%bl
	movb %bl,17(%edx)
	movl MM_TimeStamp+148,%eax
	movl %esi,12(%eax)
	cmpl $255,%edi
	jbe .L17
	pushl $1121
	call _m3_fault
	.align 16
.L17:
	movl %edi,%ebx
	movb %bl,16(%eax)
	jmp .L24
	.align 16
.L16:
	xorl %eax,%eax
	movb 17(%edx),%al
	cmpl $254,%eax
	jg .L19
	incl %eax
	cmpl $255,%eax
	jle .L20
	pushl $1169
	call _m3_fault
	.align 16
.L20:
	movb %al,17(%edx)
	movl MM_TimeStamp+148,%eax
	movb 17(%eax),%al
	movb %al,-80(%ebp)
	jmp .L24
	.align 16
.L19:
	pushl %edx
	movl MI_Thread+164,%eax
	call *%eax
	movl $M_TimeStamp_LINE_81.0,-68(%ebp)
	movl %ebp,-64(%ebp)
	addl $4,%esp
.L21:
	movl $3,-72(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-76(%ebp)
	leal -76(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	pushl $1064304640
	pushl $0
	movl MI_Thread+176,%eax
	call *%eax
	movl -76(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_TimeStamp_LINE_81.0
	addl $8,%esp
.L22:
	jmp .L10
	.align 16
.L24:
	movl -52(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -44(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	addl $4,%esp
	cmpb $0,MI_Swap+44
	jne .L25
	movl %esi,-16(%ebp)
	jmp .L26
	.align 16
.L25:
	pushl %esi
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,-16(%ebp)
	addl $4,%esp
.L26:
	cmpl $255,%edi
	jbe .L27
	pushl $1441
	call _m3_fault
	.align 16
.L27:
	movl %edi,%ebx
	movb %bl,-12(%ebp)
	movb -80(%ebp),%bl
	movb %bl,-11(%ebp)
	movb MM_TimeStamp+158,%al
	movb %al,-6(%ebp)
	movb MM_TimeStamp+159,%al
	movb %al,-5(%ebp)
	movb MM_TimeStamp+160,%al
	movb %al,-4(%ebp)
	movb MM_TimeStamp+161,%al
	movb %al,-3(%ebp)
	movb MM_TimeStamp+162,%al
	movb %al,-2(%ebp)
	movb MM_TimeStamp+163,%al
	movb %al,-1(%ebp)
	movw MM_TimeStamp+154,%ax
	movw %ax,-10(%ebp)
	movw MM_TimeStamp+156,%ax
	movw %ax,-8(%ebp)
	movl 8(%ebp),%edx
	movl -16(%ebp),%eax
	movl %eax,(%edx)
	movl -12(%ebp),%eax
	movl %eax,4(%edx)
	movl -8(%ebp),%eax
	movl %eax,8(%edx)
	movl -4(%ebp),%eax
	movl %eax,12(%edx)
	movl -40(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L28:
	leal -92(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TimeStamp__New,.Lfe3-TimeStamp__New
	.align 16
	.type	 TimeStamp__Compare,@function
TimeStamp__Compare:
	pushl %ebp
	movl %esp,%ebp
	pushl $16
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call memcmp
	movl %eax,%edx
	testl %eax,%eax
	je .L33
	testl %edx,%edx
	jl .L32
	movl $1,%eax
	jmp .L33
	.align 16
.L32:
	movl $-1,%eax
.L33:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TimeStamp__Compare,.Lfe4-TimeStamp__Compare
	.align 16
	.type	 TimeStamp__Equal,@function
TimeStamp__Equal:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%edx
	movl 8(%ebp),%ecx
	movl (%edx),%eax
	cmpl %eax,(%ecx)
	sete %bl
	movl 4(%edx),%eax
	cmpl %eax,4(%ecx)
	sete %al
	andl %eax,%ebx
	movl 8(%edx),%eax
	cmpl %eax,8(%ecx)
	sete %al
	andl %eax,%ebx
	movl 12(%edx),%eax
	cmpl %eax,12(%ecx)
	sete %al
	andl %ebx,%eax
	andl $1,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 TimeStamp__Equal,.Lfe5-TimeStamp__Equal
	.align 16
	.type	 TimeStamp__Max,@function
TimeStamp__Max:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TimeStamp__Compare
	cmpl $1,%eax
	jne .L36
	movl 12(%ebp),%edx
	jmp .L37
	.align 16
.L36:
	movl 8(%ebp),%edx
.L37:
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 TimeStamp__Max,.Lfe6-TimeStamp__Max
	.align 16
	.type	 TimeStamp__Min,@function
TimeStamp__Min:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 12(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%eax
	pushl %eax
	call TimeStamp__Compare
	cmpl $1,%eax
	jne .L39
	movl 8(%ebp),%edx
	jmp .L40
	.align 16
.L39:
	movl 12(%ebp),%edx
.L40:
	movl 16(%ebp),%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl 4(%edx),%eax
	movl %eax,4(%ecx)
	movl 8(%edx),%eax
	movl %eax,8(%ecx)
	movl 12(%edx),%eax
	movl %eax,12(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 TimeStamp__Min,.Lfe7-TimeStamp__Min
	.align 16
	.type	 TimeStamp__Hash,@function
TimeStamp__Hash:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl %eax,-4(%ebp)
	movl (%eax),%edx
	xorl 4(%eax),%edx
	movl 8(%eax),%ecx
	xorl 12(%eax),%ecx
	movl %ecx,%eax
	xorl %edx,%eax
	cmpb $0,MI_Swap+44
	jne .L42
	pushl %eax
	movl MI_Swap+48,%eax
	call *%eax
.L42:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 TimeStamp__Hash,.Lfe8-TimeStamp__Hash
.section	.rodata
	.align 4
.LC2:
	.long 0x0,0x40700000
	.align 4
.LC3:
	.long 0x0,0x80000000,0x4007
.text
	.align 16
	.type	 TimeStamp__ToTime,@function
TimeStamp__ToTime:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
.L44:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl 8(%ebp),%edx
	movl %ecx,RTThread__handlerStack
	xorl %eax,%eax
	movb 4(%edx),%al
	pushl %eax
	fildl (%esp)
	addl $4,%esp
	fldt .LC3
	fdivrp %st,%st(1)
	fstpl -16(%ebp)
	movl (%edx),%ebx
	cmpb $0,MM_TimeStamp+152
	jne .L45
	call TimeStamp__Init
.L45:
	cmpb $1,MI_Swap+44
	jne .L46
	pushl %ebx
	movl MI_Swap+48,%eax
	call *%eax
	movl %eax,%ebx
.L46:
	fldl MM_TimeStamp+164
	pushl %ebx
	fiaddl (%esp)
	addl $4,%esp
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	faddl -16(%ebp)
.L47:
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 TimeStamp__ToTime,.Lfe9-TimeStamp__ToTime
	.align 16
	.type	 _INITM_TimeStamp,@function
_INITM_TimeStamp:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_TimeStamp+148
	movl MM_TimeStamp+244,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_TimeStamp+148
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 _INITM_TimeStamp,.Lfe10-_INITM_TimeStamp
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TimeStamp
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe11:
	.size	 _m3_fault,.Lfe11-_m3_fault
.globl MM_TimeStamp
.data
	.align 4
	.type	 MM_TimeStamp,@object
	.size	 MM_TimeStamp,644
MM_TimeStamp:
	.long MM_TimeStamp+460
	.long MM_TimeStamp+44
	.long MM_TimeStamp+244
	.zero	8
	.long MM_TimeStamp+332
	.zero	4
	.long MM_TimeStamp+456
	.long MM_TimeStamp+456
	.zero	4
	.long _INITM_TimeStamp
	.zero	8
	.long -1349010584
.byte 218
.byte 169
.byte 115
.byte 168
.byte 178
.byte 18
.byte 228
.byte 7
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_TimeStamp+609
	.zero	4
	.long MM_TimeStamp+613
	.zero	8
	.long 356643957
	.zero	16
	.long MM_TimeStamp+624
	.zero	28
	.long TimeStamp__Init
	.long TimeStamp__New
	.long TimeStamp__Compare
	.long TimeStamp__Max
	.long TimeStamp__Min
	.long TimeStamp__Equal
	.long TimeStamp__Hash
	.long TimeStamp__ToTime
	.long 1970
	.zero	1
.byte 2
	.zero	10
	.long MM_TimeStamp+232
	.zero	4
	.long 2
	.long MM_TimeStamp+240
	.long 1
	.zero	8
	.long -1349010584
	.ascii	"_INITM_TimeStamp"
	.zero	1
	.ascii	"ToTime"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"Min"
	.zero	1
	.ascii	"Max"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"New"
	.zero	1
	.ascii	"M_TimeStamp_LINE_81"
	.zero	1
	.ascii	"Init"
	.zero	1
	.long _INITM_TimeStamp
	.long MM_TimeStamp+252
	.zero	4
	.long TimeStamp__ToTime
	.long MM_TimeStamp+269
	.long MI_TimeStamp+100
	.long TimeStamp__Hash
	.long MM_TimeStamp+276
	.long MI_TimeStamp+96
	.long TimeStamp__Min
	.long MM_TimeStamp+281
	.long MI_TimeStamp+88
	.long TimeStamp__Max
	.long MM_TimeStamp+285
	.long MI_TimeStamp+84
	.long TimeStamp__Equal
	.long MM_TimeStamp+289
	.long MI_TimeStamp+92
	.long TimeStamp__Compare
	.long MM_TimeStamp+295
	.long MI_TimeStamp+80
	.long TimeStamp__New
	.long MM_TimeStamp+303
	.long MI_TimeStamp+76
	.long M_TimeStamp_LINE_81.0
	.long MM_TimeStamp+307
	.zero	4
	.long TimeStamp__Init
	.long MM_TimeStamp+327
	.zero	8
.byte 42
.byte 148
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/uid/Common/TimeStamp.m3"
	.zero	1
.byte 18
.byte 16
.byte 16
.byte 0
.byte 4
.byte 10
.byte 3
.byte 19
.byte 0
.byte 126
.byte 19
.byte 0
.byte 65
.byte 255
.byte 24
	.ascii	"TimeStamp.Counter"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
