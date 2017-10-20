	.file	"RandomReal.mc"
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
	.type	 RandomReal__Real,@function
RandomReal__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
.L2:
	movl $5,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl (%esi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	movl $126,%ebx
	jmp .L27
	.align 16
.L4:
	movl (%esi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	addl $-32,%ebx
.L27:
	pushl %esi
	call *%eax
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L7
	cmpl $31,%ebx
	jg .L4
	jmp .L7
	.align 16
.L8:
	addl %edx,%edx
	decl %ebx
.L7:
	testl %edx,%edx
	jle .L16
	testl %ebx,%ebx
	jg .L8
.L16:
	movl $126,%eax
	subl %ebx,%eax
	andl $31,%eax
	cmpl $9,%eax
	jle .L17
	movl (%esi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	pushl %esi
	call *%eax
	movl %eax,%edx
	addl $12,%esp
.L17:
	movl %edx,%eax
	andl $2147483647,%eax
	movl %eax,%edx
	shrl $8,%edx
	cmpl $8388607,%edx
	jbe .L24
	pushl $705
	call _m3_fault
	.align 16
.L24:
	movl -16(%ebp),%eax
	andl $-8388608,%eax
	orl %edx,%eax
	movl %eax,-16(%ebp)
	cmpl $255,%ebx
	jbe .L25
	pushl $705
	call _m3_fault
	.align 16
.L25:
	xorl %edx,%edx
	movw -14(%ebp),%dx
	andl $-32641,%edx
	movl %ebx,%eax
	andl $255,%eax
	sall $7,%eax
	orw %dx,%ax
	movw %ax,-14(%ebp)
	andb $127,-13(%ebp)
	movl -16(%ebp),%eax
	movl %eax,-4(%ebp)
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	flds -4(%ebp)
.L26:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RandomReal__Real,.Lfe1-RandomReal__Real
	.align 16
	.type	 RandomReal__Longreal,@function
RandomReal__Longreal:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
.L29:
	movl $5,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl (%edi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	movl $1022,%esi
	jmp .L54
	.align 16
.L31:
	movl (%edi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	addl $-32,%esi
.L54:
	pushl %edi
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L34
	cmpl $31,%esi
	jg .L31
	jmp .L34
	.align 16
.L35:
	addl %ebx,%ebx
	decl %esi
.L34:
	testl %ebx,%ebx
	jle .L43
	testl %esi,%esi
	jg .L35
.L43:
	movl $1022,%eax
	subl %esi,%eax
	andl $31,%eax
	cmpl $12,%eax
	jle .L44
	movl (%edi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	pushl %edi
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
.L44:
	movl (%edi),%eax
	movl 4(%eax),%eax
	pushl $2147483647
	pushl $-2147483648
	pushl %edi
	call *%eax
	movl %eax,%edi
	movl %edi,-24(%ebp)
	movl %ebx,%eax
	andl $2147483647,%eax
	addl $12,%esp
	movl %eax,%edx
	shrl $11,%edx
	cmpl $1048575,%edx
	jbe .L51
	pushl $1265
	call _m3_fault
	.align 16
.L51:
	movl -20(%ebp),%eax
	andl $-1048576,%eax
	orl %edx,%eax
	movl %eax,-20(%ebp)
	cmpl $2047,%esi
	jbe .L52
	pushl $1265
	call _m3_fault
	.align 16
.L52:
	xorl %edx,%edx
	movw -18(%ebp),%dx
	andl $-32753,%edx
	movl %esi,%eax
	andl $2047,%eax
	sall $4,%eax
	orw %dx,%ax
	movw %ax,-18(%ebp)
	andb $127,-17(%ebp)
	movl %edi,-8(%ebp)
	movl -20(%ebp),%eax
	movl %eax,-4(%ebp)
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fldl -8(%ebp)
.L53:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RandomReal__Longreal,.Lfe2-RandomReal__Longreal
	.align 16
	.type	 RandomReal__Extended,@function
RandomReal__Extended:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call RandomReal__Longreal
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RandomReal__Extended,.Lfe3-RandomReal__Extended
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RandomReal
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_RandomReal
.data
	.align 4
	.type	 MM_RandomReal,@object
	.size	 MM_RandomReal,272
MM_RandomReal:
	.long MM_RandomReal+120
	.zero	16
	.long MM_RandomReal+80
	.zero	20
	.long RandomReal__Real
	.long RandomReal__Longreal
	.long RandomReal__Extended
	.ascii	"Extended"
	.zero	1
	.ascii	"Longreal"
	.zero	1
	.ascii	"Real"
	.zero	2
	.long RandomReal__Extended
	.long MM_RandomReal+56
	.long MI_RandomReal+52
	.long RandomReal__Longreal
	.long MM_RandomReal+65
	.long MI_RandomReal+48
	.long RandomReal__Real
	.long MM_RandomReal+74
	.long MI_RandomReal+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/random/IEEE/RandomReal.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
