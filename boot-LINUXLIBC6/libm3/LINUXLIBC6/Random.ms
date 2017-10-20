	.file	"Random.mc"
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
	.type	 Random__Init,@function
Random__Init:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	movl $1202056903,%esi
	pushl %ebx
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L2
	movl MM_Random+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
.L2:
	cmpb $0,12(%ebp)
	jne .L3
	call Random__RandomSeed
	movl %eax,%esi
.L3:
	pushl %esi
	pushl %ebx
	call Random__Start
	leal -8(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Random__Init,.Lfe1-Random__Init
	.align 16
	.type	 Random__Start,@function
Random__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 12(%ebp),%edx
.L5:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	movl %edx,224(%edi)
	movl %edx,-12(%ebp)
	movl $1,%ebx
	movl %ebx,%esi
.L6:
	leal (%ebx,%ebx,4),%eax
	leal (%ebx,%eax,4),%eax
	pushl %eax
	pushl $55
	call m3_mod
	movl %eax,%edx
	leal -1(%edx),%eax
	addl $8,%esp
	cmpl $53,%eax
	jbe .L7
	pushl $897
	call _m3_fault
	.align 16
.L7:
	movb %dl,%al
	andl $255,%eax
	incl %ebx
	movl %esi,4(%edi,%eax,4)
	movl -12(%ebp),%ecx
	subl %esi,%ecx
	movl %ecx,%esi
	movl 4(%edi,%eax,4),%eax
	movl %eax,-12(%ebp)
	cmpl $54,%ebx
	jle .L6
	movl $1,%ebx
.L10:
	pushl %edi
	call Random__Next55
	incl %ebx
	addl $4,%esp
	cmpl $20,%ebx
	jle .L10
.L13:
	movl -8(%ebp),%eax
	leal -24(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Random__Start,.Lfe2-Random__Start
	.align 16
	.type	 Random__RandomSeed,@function
Random__RandomSeed:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L15:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -24(%ebp),%ebx
	pushl %ebx
	movl MI_TimeStamp+76,%eax
	call *%eax
	pushl %ebx
	movl MI_TimeStamp+96,%eax
	call *%eax
	movl %eax,-28(%ebp)
	movl MI_Tick+44,%eax
	call *%eax
	movl %eax,%edi
	movl $1202056903,%ebx
	movl %edi,%ecx
	andl $31,%ecx
	addl $8,%esp
	testl %ecx,%ecx
	jl .L16
	movl -28(%ebp),%eax
	roll %cl,%eax
	jmp .L24
	.align 16
.L16:
	movl %ecx,%eax
	negl %eax
	movl %eax,%ecx
	andl $31,%ecx
	movl -28(%ebp),%eax
	rorl %cl,%eax
.L24:
	xorl %eax,%ebx
	xorl %edi,%ebx
	jns .L18
	notl %ebx
.L18:
	cmpl $1932735276,%ebx
	jle .L20
	pushl %ebx
	movl -28(%ebp),%edx
	pushl %edx
	pushl $7
	call m3_mod
	addl $8,%esp
	addl $2,%eax
	pushl %eax
	call m3_div
	pushl %edi
	movl %eax,%ebx
	pushl $23
	call m3_mod
	addl %eax,%ebx
	jmp .L25
	.align 16
.L21:
	movl -28(%ebp),%edx
	pushl %edx
	pushl $7
	call m3_mod
	pushl %edi
	movl %eax,%esi
	pushl $23
	call m3_mod
	movl %eax,%ecx
	leal 2(%esi),%eax
	imull %ebx,%eax
	leal (%ecx,%eax),%ebx
.L25:
	addl $16,%esp
.L20:
	cmpl $214748363,%ebx
	jle .L21
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L23:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Random__RandomSeed,.Lfe3-Random__RandomSeed
	.align 16
	.type	 Random__Next55,@function
Random__Next55:
	pushl %ebp
	movl %esp,%ebp
	movl $55,%edx
	movl 8(%ebp),%ecx
.L27:
	movl -120(%ecx,%edx,4),%eax
	subl %eax,4(%ecx,%edx,4)
	decl %edx
	cmpl $31,%edx
	jg .L27
	movl $31,%edx
.L30:
	movl 100(%ecx,%edx,4),%eax
	subl %eax,4(%ecx,%edx,4)
	decl %edx
	testl %edx,%edx
	jg .L30
	movb $56,4(%ecx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Random__Next55,.Lfe4-Random__Next55
	.align 16
	.type	 Random__Integer,@function
Random__Integer:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edi
.L34:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl %edi,16(%ebp)
	jge .L37
	pushl $1776
	call _m3_fault
	.align 16
.L37:
	movl 8(%ebp),%ecx
	xorl %eax,%eax
	movb 4(%ecx),%al
	decl %eax
	jns .L38
	pushl $1825
	call _m3_fault
	.align 16
.L38:
	movl 8(%ebp),%ecx
	movb %al,4(%ecx)
	andl $255,%eax
	testl %eax,%eax
	jg .L40
	pushl %ecx
	call Random__Next55
	addl $4,%esp
	jmp .L37
	.align 16
.L40:
	decl %eax
	cmpl $54,%eax
	jbe .L41
	pushl $1889
	call _m3_fault
	.align 16
.L41:
	movl 8(%ebp),%ecx
	movl 8(%ecx,%eax,4),%ebx
	testl %edi,%edi
	jg .L42
	leal 2147483647(%edi),%eax
	cmpl %eax,16(%ebp)
	jge .L43
.L42:
	movl 16(%ebp),%eax
	subl %edi,%eax
	leal 1(%eax),%esi
	cmpl $65535,%esi
	jg .L44
	movl %ebx,%eax
	andl $65535,%eax
	movl %ebx,%edx
	shrl $16,%edx
	imull %esi,%eax
	shrl $16,%eax
	imull %esi,%edx
	addl %edx,%eax
	shrl $16,%eax
	movl -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	addl %edi,%eax
	jmp .L33
	.align 16
.L44:
	andl $2147483647,%ebx
	pushl %ebx
	pushl %esi
	call m3_mod
	movl %eax,-12(%ebp)
	movl %ebx,%edx
	subl %eax,%edx
	movl $2147483647,%eax
	subl %esi,%eax
	addl $8,%esp
	cmpl %eax,%edx
	jg .L37
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -12(%ebp),%ecx
	leal (%ecx,%edi),%eax
	jmp .L33
	.align 16
.L43:
	cmpl %ebx,%edi
	jg .L37
	cmpl %ebx,16(%ebp)
	jl .L37
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebx,%eax
.L49:
.L33:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Random__Integer,.Lfe5-Random__Integer
	.align 16
	.type	 Random__Boolean,@function
Random__Boolean:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
.L51:
	xorl %eax,%eax
	movb 4(%ebx),%al
	decl %eax
	jns .L52
	pushl $2449
	call _m3_fault
	.align 16
.L52:
	movb %al,4(%ebx)
	andl $255,%eax
	testl %eax,%eax
	jg .L54
	pushl %ebx
	call Random__Next55
	addl $4,%esp
	jmp .L51
	.align 16
.L54:
	decl %eax
	cmpl $54,%eax
	jbe .L55
	pushl $2513
	call _m3_fault
	.align 16
.L55:
	movl 8(%ebx,%eax,4),%eax
	andl $1,%eax
	cmpl $1,%eax
	jbe .L56
	pushl $2513
	call _m3_fault
	.align 16
.L56:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Random__Boolean,.Lfe6-Random__Boolean
	.align 16
	.type	 Random__Real,@function
Random__Real:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L58:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	flds 12(%ebp)
	fcomps 16(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L59
	pushl $2592
	call _m3_fault
	.align 16
.L59:
	pushl %edx
	movl MI_RandomReal+44,%eax
	call *%eax
	flds 16(%ebp)
	fsubs 12(%ebp)
	fmulp %st,%st(1)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fadds 12(%ebp)
.L60:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Random__Real,.Lfe7-Random__Real
	.align 16
	.type	 Random__Longreal,@function
Random__Longreal:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L62:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	fldl 12(%ebp)
	fcompl 20(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L63
	pushl $2688
	call _m3_fault
	.align 16
.L63:
	pushl %edx
	movl MI_RandomReal+48,%eax
	call *%eax
	fldl 20(%ebp)
	fsubl 12(%ebp)
	fmulp %st,%st(1)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	faddl 12(%ebp)
.L64:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Random__Longreal,.Lfe8-Random__Longreal
	.align 16
	.type	 Random__Extended,@function
Random__Extended:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 8(%ebp),%edx
.L66:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	fldl 12(%ebp)
	fcompl 20(%ebp)
	fnstsw %ax
	andb $69,%ah
	decb %ah
	cmpb $64,%ah
	jb .L67
	pushl $2784
	call _m3_fault
	.align 16
.L67:
	pushl %edx
	movl MI_RandomReal+52,%eax
	call *%eax
	fldl 20(%ebp)
	fsubl 12(%ebp)
	fmulp %st,%st(1)
	movl -8(%ebp),%eax
	movl %eax,RTThread__handlerStack
	faddl 12(%ebp)
.L68:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Random__Extended,.Lfe9-Random__Extended
	.align 16
	.type	 _INITM_Random,@function
_INITM_Random:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 _INITM_Random,.Lfe10-_INITM_Random
	.align 16
	.type	 M_Random_t3ca8457d_LINK,@function
M_Random_t3ca8457d_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Random+580,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Random+148,%eax
	movl %eax,24(%edx)
	movl MM_Random+164,%eax
	movl %eax,4(%edx)
	movl MM_Random+172,%eax
	movl %eax,8(%edx)
	movl MM_Random+176,%eax
	movl %eax,12(%edx)
	movl MM_Random+180,%eax
	movl %eax,16(%edx)
	movl MM_Random+168,%eax
	movl %eax,20(%edx)
	popl %ebp
	ret
.Lfe11:
	.size	 M_Random_t3ca8457d_LINK,.Lfe11-M_Random_t3ca8457d_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Random
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe12:
	.size	 _m3_fault,.Lfe12-_m3_fault
.globl MM_Random
.data
	.align 4
	.type	 MM_Random,@object
	.size	 MM_Random,624
MM_Random:
	.long MM_Random+412
	.long MM_Random+44
	.long MM_Random+196
	.long MM_Random+184
	.zero	4
	.long MM_Random+288
	.zero	16
	.long _INITM_Random
	.zero	8
	.long 1017660797
.byte 206
.byte 35
.byte 220
.byte 56
.byte 179
.byte 102
.byte 116
.byte 4
	.long 1
	.zero	4
	.long 224
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_Random+561
	.zero	4
	.long MM_Random+568
	.zero	4
	.long M_Random_t3ca8457d_LINK
	.long 1893541908
	.zero	12
	.long MM_Random+588
	.long MM_Random+608
	.zero	4
	.long Random__Init
	.long Random__Start
	.long Random__RandomSeed
	.long Random__Next55
	.long Random__Integer
	.long Random__Boolean
	.long Random__Real
	.long Random__Longreal
	.long Random__Extended
	.long 1893541911
	.long 1017660797
	.zero	4
	.long MM_Random+580
	.long 1893541911
	.ascii	"_INITM_Random"
	.zero	1
	.ascii	"Extended"
	.zero	1
	.ascii	"Longreal"
	.zero	1
	.ascii	"Real"
	.zero	1
	.ascii	"Boolean"
	.zero	1
	.ascii	"Integer"
	.zero	1
	.ascii	"Next55"
	.zero	1
	.ascii	"RandomSeed"
	.zero	1
	.ascii	"Start"
	.zero	1
	.ascii	"Init"
	.zero	3
	.long _INITM_Random
	.long MM_Random+204
	.zero	4
	.long Random__Extended
	.long MM_Random+218
	.zero	4
	.long Random__Longreal
	.long MM_Random+227
	.zero	4
	.long Random__Real
	.long MM_Random+236
	.zero	4
	.long Random__Boolean
	.long MM_Random+241
	.zero	4
	.long Random__Integer
	.long MM_Random+249
	.zero	4
	.long Random__Next55
	.long MM_Random+257
	.zero	4
	.long Random__RandomSeed
	.long MM_Random+264
	.zero	4
	.long Random__Start
	.long MM_Random+275
	.zero	4
	.long Random__Init
	.long MM_Random+281
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/random/Common/Random.m3"
	.zero	1
.byte 16
.byte 36
.byte 1
.byte 14
.byte 26
.byte 55
.byte 0
.byte 4
.byte 10
.byte 2
.byte 19
.byte 0
.byte 56
.byte 1
.byte 55
.byte 7
	.zero	7
	.long 1017660797
	.ascii	"RandomKnuth3_2_2A.T"
	.zero	1
	.ascii	"Random.Default"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
