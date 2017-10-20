	.file	"TypeTbl.mc"
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
	.type	 TypeTbl__Put,@function
TypeTbl__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%ecx
	pushl %ecx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,-24(%ebp)
	movl %eax,-28(%ebp)
	movl 12(%ebp),%esi
	addl $4,%esp
	cmpl %eax,36(%esi)
	je .L2
	pushl $480
	call _m3_fault
	.align 16
.L2:
	movl 8(%ebp),%ecx
	cmpl $0,(%ecx)
	jne .L4
	movl MM_TypeTbl+280,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%esi
	movl $255,4(%ebx)
	movl $24,8(%ebx)
	movl %esi,-12(%ebp)
	movl $1,-8(%ebp)
	movl $256,-4(%ebp)
	pushl %eax
	movl MM_TypeTbl+288,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %ebx,%edx
	movl %eax,12(%edx)
	movl 8(%ebp),%ecx
	addl $12,%esp
	movl %edx,(%ecx)
.L4:
	movl 8(%ebp),%esi
	movl (%esi),%eax
	testl %eax,%eax
	jne .L5
	pushl $564
	call _m3_fault
	.align 16
.L5:
	movl 8(%eax),%edi
	shrl $1,%edi
	movl 4(%eax),%ecx
	movl %ecx,-20(%ebp)
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L8
	pushl $596
	call _m3_fault
	.align 16
.L8:
	movl 4(%eax),%eax
	movl %eax,-32(%ebp)
.L9:
	cmpl $31,%edi
	jbe .L10
	pushl $625
	call _m3_fault
	.align 16
.L10:
	cmpl $31,%edi
	jg .L11
	movl -24(%ebp),%eax
	movl %edi,%ecx
	shrl %cl,%eax
	movl -20(%ebp),%ebx
	andl %eax,%ebx
	jmp .L12
	.align 16
.L11:
	xorl %ebx,%ebx
.L12:
	movl 8(%ebp),%esi
	movl (%esi),%eax
	testl %eax,%eax
	jne .L13
	pushl $644
	call _m3_fault
	.align 16
.L13:
	movl 12(%eax),%eax
	testl %eax,%eax
	jne .L14
	pushl $644
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	ja .L15
	pushl $642
	call _m3_fault
	.align 16
.L15:
	movl (%edx),%eax
	leal (%eax,%ebx,8),%eax
	movl %eax,-16(%ebp)
	movl (%eax),%ebx
	testl %ebx,%ebx
	jne .L16
	movl 12(%ebp),%ecx
	movl %ecx,(%eax)
	movl -16(%ebp),%eax
	movl 16(%ebp),%esi
	movl %esi,4(%eax)
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	testl %eax,%eax
	jne .L17
	pushl $708
	call _m3_fault
	.align 16
.L17:
	incl (%eax)
	movl 8(%ebp),%esi
	movl (%esi),%edx
	testl %edx,%edx
	jne .L19
	pushl $724
	call _m3_fault
	.align 16
.L19:
	movl 12(%edx),%edi
	testl %edi,%edi
	jne .L20
	pushl $724
	call _m3_fault
	.align 16
.L20:
	movl (%edx),%ecx
	movl %ecx,%eax
	addl %ecx,%eax
	cmpl %eax,4(%edi)
	jge .L21
	pushl %edx
	call TypeTbl__Expand
.L21:
	movl %ebx,%eax
	jmp .L25
	.align 16
.L16:
	movl -28(%ebp),%esi
	cmpl %esi,36(%ebx)
	je .L22
	imull $-1640531527,-24(%ebp),%eax
	incl %eax
	movl %eax,-24(%ebp)
	decl -32(%ebp)
	cmpl $0,-32(%ebp)
	jg .L9
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	pushl %eax
	call TypeTbl__Expand
	addl $4,%esp
	jmp .L4
	.align 16
.L22:
	movl 4(%eax),%edx
	movl 16(%ebp),%esi
	movl %esi,4(%eax)
	movl %edx,%eax
.L25:
	leal -44(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TypeTbl__Put,.Lfe1-TypeTbl__Put
	.align 16
	.type	 TypeTbl__Get,@function
TypeTbl__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	pushl %ebx
	movl MI_Type+132,%eax
	call *%eax
	movl %eax,-16(%ebp)
	movl %eax,-12(%ebp)
	addl $4,%esp
	cmpl %eax,36(%ebx)
	je .L27
	pushl $1056
	call _m3_fault
	.align 16
.L27:
	testl %esi,%esi
	je .L44
	movl 8(%esi),%edi
	shrl $1,%edi
	movl 4(%esi),%ecx
	movl %ecx,-8(%ebp)
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L32
	pushl $1140
	call _m3_fault
	.align 16
.L32:
	movl 4(%eax),%ebx
.L33:
	cmpl $31,%edi
	jbe .L34
	pushl $1169
	call _m3_fault
	.align 16
.L34:
	cmpl $31,%edi
	jg .L35
	movl -16(%ebp),%eax
	movl %edi,%ecx
	shrl %cl,%eax
	movl -8(%ebp),%edx
	andl %eax,%edx
	jmp .L36
	.align 16
.L35:
	xorl %edx,%edx
.L36:
	testl %esi,%esi
	jne .L37
	pushl $1188
	call _m3_fault
	.align 16
.L37:
	movl 12(%esi),%eax
	testl %eax,%eax
	jne .L38
	pushl $1188
	call _m3_fault
	.align 16
.L38:
	cmpl %edx,4(%eax)
	ja .L39
	pushl $1186
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%eax
	leal (%eax,%edx,8),%edx
	movl %edx,-4(%ebp)
	movl (%edx),%eax
	testl %eax,%eax
	je .L43
	movl -12(%ebp),%ecx
	cmpl %ecx,36(%eax)
	je .L41
	imull $-1640531527,-16(%ebp),%eax
	incl %eax
	movl %eax,-16(%ebp)
	decl %ebx
	testl %ebx,%ebx
	jg .L33
.L44:
	xorl %eax,%eax
	jmp .L43
	.align 16
.L41:
	movl 4(%edx),%eax
.L43:
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TypeTbl__Get,.Lfe2-TypeTbl__Get
	.align 16
	.type	 TypeTbl__Reset,@function
TypeTbl__Reset:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	je .L45
	movl $0,(%ecx)
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L49
	pushl $1476
	call _m3_fault
	.align 16
.L49:
	xorl %edx,%edx
	movl 4(%eax),%ebx
	decl %ebx
	jmp .L50
	.align 16
.L51:
	testl %ecx,%ecx
	jne .L52
	pushl $1492
	call _m3_fault
	.align 16
.L52:
	movl 12(%ecx),%eax
	testl %eax,%eax
	jne .L53
	pushl $1492
	call _m3_fault
	.align 16
.L53:
	cmpl %edx,4(%eax)
	ja .L54
	pushl $1490
	call _m3_fault
	.align 16
.L54:
	movl (%eax),%eax
	leal (%eax,%edx,8),%eax
	movl %eax,-4(%ebp)
	movl $0,(%eax)
	movl -4(%ebp),%eax
	incl %edx
	movl $0,4(%eax)
.L50:
	cmpl %ebx,%edx
	jle .L51
.L45:
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TypeTbl__Reset,.Lfe3-TypeTbl__Reset
	.align 16
	.type	 TypeTbl__Expand,@function
TypeTbl__Expand:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	testl %edx,%edx
	jne .L57
	pushl $1588
	call _m3_fault
	.align 16
.L57:
	movl 12(%edx),%eax
	testl %eax,%eax
	jne .L58
	pushl $1588
	call _m3_fault
	.align 16
.L58:
	movl 4(%eax),%esi
	movl %eax,%edi
	movl $0,(%edx)
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,%ecx
	addl %esi,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_TypeTbl+288,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl $8,%esp
	testl %edx,%edx
	jne .L61
	pushl $1652
	call _m3_fault
	.align 16
.L61:
	movl %eax,12(%edx)
	movl 4(%edx),%ecx
	movl %ecx,%eax
	addl %ecx,%eax
	orb $1,%al
	movl %eax,4(%edx)
	decl 8(%edx)
	xorl %ebx,%ebx
	decl %esi
	jmp .L67
	.align 16
.L68:
	testl %edi,%edi
	jne .L69
	pushl $1716
	call _m3_fault
	.align 16
.L69:
	movl %edi,%edx
	cmpl %ebx,4(%edx)
	ja .L70
	pushl $1714
	call _m3_fault
	.align 16
.L70:
	movl (%edx),%eax
	leal (%eax,%ebx,8),%eax
	movl %eax,-16(%ebp)
	movl (%eax),%edx
	testl %edx,%edx
	je .L71
	movl 4(%eax),%eax
	pushl %eax
	pushl %edx
	leal 8(%ebp),%ecx
	pushl %ecx
	call TypeTbl__Put
	addl $12,%esp
.L71:
	incl %ebx
.L67:
	cmpl %esi,%ebx
	jle .L68
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 TypeTbl__Expand,.Lfe4-TypeTbl__Expand
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TypeTbl
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_TypeTbl
.data
	.align 4
	.type	 MM_TypeTbl,@object
	.size	 MM_TypeTbl,592
MM_TypeTbl:
	.long MM_TypeTbl+372
	.long MM_TypeTbl+44
	.long MM_TypeTbl+280
	.long MM_TypeTbl+268
	.zero	4
	.long MM_TypeTbl+320
	.zero	28
	.long 379141213
.byte 143
.byte 161
.byte 169
.byte 22
.byte 210
.byte 157
.byte 48
.byte 0
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 8
	.zero	4
	.long MM_TypeTbl+556
	.long MM_TypeTbl+562
	.long MM_TypeTbl+568
	.zero	28
	.long MM_TypeTbl+579
	.long MM_TypeTbl+148
	.zero	8
	.long 60166708
.byte 62
.byte 190
.byte 45
.byte 22
.byte 10
.byte 172
.byte 187
.byte 21
	.long 1
	.zero	4
	.long 16
	.long 4
	.zero	20
	.long MM_TypeTbl+516
	.long MM_TypeTbl+521
	.long MM_TypeTbl+525
	.zero	24
	.long MM_TypeTbl+536
	.long MM_TypeTbl+546
	.zero	4
	.long TypeTbl__Expand
	.long TypeTbl__Put
	.long TypeTbl__Get
	.long TypeTbl__Reset
	.long 296878370
	.long 60166708
	.zero	4
	.long MM_TypeTbl+288
	.long 296878370
	.zero	4
	.long 379141213
	.ascii	"Expand"
	.zero	1
	.ascii	"Reset"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Put"
	.zero	4
	.long TypeTbl__Expand
	.long MM_TypeTbl+296
	.zero	4
	.long TypeTbl__Reset
	.long MM_TypeTbl+303
	.long MI_TypeTbl+52
	.long TypeTbl__Get
	.long MM_TypeTbl+309
	.long MI_TypeTbl+48
	.long TypeTbl__Put
	.long MM_TypeTbl+313
	.long MI_TypeTbl+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/types/TypeTbl.m3"
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
.byte 15
.byte 4
.byte 7
.byte 23
.byte 23
.byte 16
.byte 93
.byte 60
.byte 153
.byte 22
	.ascii	"TypeTbl.T"
	.zero	1
	.ascii	"TypeTbl.T"
	.zero	1
.byte 24
.byte 1
.byte 4
.byte 4
.byte 0
.byte 0
.byte 24
.byte 1
.byte 4
.byte 4
.byte 0
.byte 0
.byte 4
.byte 11
.byte 1
.byte 15
.byte 2
.byte 16
.byte 38
.byte 84
.byte 147
.byte 129
.byte 17
	.ascii	"TypeTbl.Map"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
