	.file	"QCode.mc"
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
	.type	 QCode__Emit,@function
QCode__Emit:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 16(%ebp),%esi
	movl 8(%ebx),%eax
	testl %eax,%eax
	je .L2
	movl 4(%eax),%eax
	cmpl %eax,4(%ebx)
	jl .L4
.L2:
	pushl %ebx
	call QCode__ExpandInstrs
	addl $4,%esp
.L4:
	movl 8(%ebx),%eax
	testl %eax,%eax
	jne .L5
	pushl $388
	call _m3_fault
	.align 16
.L5:
	movl 4(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L6
	pushl $386
	call _m3_fault
	.align 16
.L6:
	movl (%eax),%eax
	leal (%eax,%edx,8),%eax
	movl %eax,-4(%ebp)
	movb 12(%ebp),%cl
	movb %cl,(%eax)
	movl -4(%ebp),%eax
	leal -12(%ebp),%esp
	movl %esi,4(%eax)
	incl 4(%ebx)
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 QCode__Emit,.Lfe1-QCode__Emit
	.align 16
	.type	 QCode__ExpandInstrs,@function
QCode__ExpandInstrs:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L10
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $100,-4(%ebp)
	pushl %eax
	movl MM_QCode+180,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,8(%edi)
	jmp .L7
	.align 16
.L10:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_QCode+180,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L11
	pushl $580
	call _m3_fault
	.align 16
.L11:
	testl %ebx,%ebx
	jge .L12
	pushl $577
	call _m3_fault
	.align 16
.L12:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L13
	pushl $577
	call _m3_fault
	.align 16
.L13:
	movl (%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl 8(%edi),%eax
	testl %eax,%eax
	jne .L14
	pushl $580
	call _m3_fault
	.align 16
.L14:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	je .L15
	pushl $579
	call _m3_fault
	.align 16
.L15:
	leal 0(,%ebx,8),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	movl %esi,8(%edi)
.L7:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 QCode__ExpandInstrs,.Lfe2-QCode__ExpandInstrs
	.align 16
	.type	 QCode__Patch,@function
QCode__Patch:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movb 16(%ebp),%cl
	movl 20(%ebp),%ebx
	movl 8(%eax),%eax
	testl %eax,%eax
	jne .L17
	pushl $708
	call _m3_fault
	.align 16
.L17:
	cmpl %edx,4(%eax)
	ja .L18
	pushl $706
	call _m3_fault
	.align 16
.L18:
	movl (%eax),%eax
	leal (%eax,%edx,8),%eax
	movl %eax,-4(%ebp)
	movb %cl,(%eax)
	movl -4(%ebp),%eax
	movl %ebx,4(%eax)
	movl -8(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 QCode__Patch,.Lfe3-QCode__Patch
	.align 16
	.type	 QCode__AddProc,@function
QCode__AddProc:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 20(%ebx),%eax
	testl %eax,%eax
	je .L20
	movl 4(%eax),%eax
	cmpl %eax,16(%ebx)
	jl .L22
.L20:
	pushl %ebx
	call QCode__ExpandProcs
	addl $4,%esp
.L22:
	movl MM_QCode+188,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%esp
	movl %ebx,(%ecx)
	movl 4(%ebx),%eax
	movl %eax,4(%ecx)
	movl %esi,8(%ecx)
	movl 20(%ebx),%eax
	testl %eax,%eax
	jne .L23
	pushl $836
	call _m3_fault
	.align 16
.L23:
	movl 16(%ebx),%edx
	cmpl %edx,4(%eax)
	ja .L24
	pushl $834
	call _m3_fault
	.align 16
.L24:
	movl (%eax),%eax
	leal -12(%ebp),%esp
	movl %ecx,(%eax,%edx,4)
	movl 16(%ebx),%eax
	leal 1(%eax),%edi
	movl %edi,16(%ebx)
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 QCode__AddProc,.Lfe4-QCode__AddProc
	.align 16
	.type	 QCode__ExpandProcs,@function
QCode__ExpandProcs:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L28
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl $10,-4(%ebp)
	pushl %eax
	movl MM_QCode+196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,20(%edi)
	jmp .L25
	.align 16
.L28:
	movl 4(%eax),%ebx
	leal -12(%ebp),%eax
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %ebx,%ecx
	addl %ebx,%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_QCode+196,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L29
	pushl $1092
	call _m3_fault
	.align 16
.L29:
	testl %ebx,%ebx
	jge .L30
	pushl $1089
	call _m3_fault
	.align 16
.L30:
	movl %ebx,-16(%ebp)
	movl %ebx,%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L31
	pushl $1089
	call _m3_fault
	.align 16
.L31:
	movl (%esi),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl 20(%edi),%eax
	testl %eax,%eax
	jne .L32
	pushl $1092
	call _m3_fault
	.align 16
.L32:
	movl %eax,%edx
	cmpl %ebx,4(%edx)
	je .L33
	pushl $1091
	call _m3_fault
	.align 16
.L33:
	leal 0(,%ebx,4),%eax
	pushl %eax
	movl (%edx),%eax
	pushl %eax
	movl -24(%ebp),%ecx
	pushl %ecx
	call memmove
	movl %esi,20(%edi)
.L25:
	leal -36(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 QCode__ExpandProcs,.Lfe5-QCode__ExpandProcs
	.align 16
	.type	 M_QCode_tee151a4c_LINK,@function
M_QCode_tee151a4c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_QCode+452,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_QCode+148,%eax
	movl %eax,4(%edx)
	movl MM_QCode+156,%eax
	movl %eax,8(%edx)
	movl MM_QCode+160,%eax
	movl %eax,12(%edx)
	popl %ebp
	ret
.Lfe6:
	.size	 M_QCode_tee151a4c_LINK,.Lfe6-M_QCode_tee151a4c_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_QCode
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_QCode
.data
	.align 4
	.type	 MM_QCode,@object
	.size	 MM_QCode,492
MM_QCode:
	.long MM_QCode+312
	.long MM_QCode+44
	.long MM_QCode+180
	.long MM_QCode+168
	.zero	4
	.long MM_QCode+248
	.zero	28
	.long -300606900
.byte 226
.byte 177
.byte 113
.byte 252
.byte 174
.byte 171
.byte 100
.byte 18
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_QCode+448
	.zero	4
	.long M_QCode_tee151a4c_LINK
	.long -1801557661
	.zero	12
	.long MM_QCode+460
	.long MM_QCode+479
	.zero	4
	.long QCode__Emit
	.long QCode__ExpandInstrs
	.long QCode__Patch
	.long QCode__AddProc
	.long QCode__ExpandProcs
	.long -2096627300
	.long -300606900
	.zero	4
	.long MM_QCode+188
	.long -1180300958
	.long MM_QCode+196
	.long 54026910
	.long MM_QCode+452
	.long 1143252536
	.ascii	"ExpandProcs"
	.zero	1
	.ascii	"AddProc"
	.zero	1
	.ascii	"Patch"
	.zero	1
	.ascii	"ExpandInstrs"
	.zero	1
	.ascii	"Emit"
	.zero	1
	.long QCode__ExpandProcs
	.long MM_QCode+204
	.zero	4
	.long QCode__AddProc
	.long MM_QCode+216
	.zero	4
	.long QCode__Patch
	.long MM_QCode+224
	.zero	4
	.long QCode__ExpandInstrs
	.long MM_QCode+230
	.zero	4
	.long QCode__Emit
	.long MM_QCode+243
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/QCode.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	5
	.long -300606900
	.ascii	"QCode_^%#%^__0001M"
	.zero	1
	.ascii	"QCode.Stream"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
