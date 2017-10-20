	.file	"RTTypeMap.mc"
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
	.type	 RTTypeMap__WalkRef,@function
RTTypeMap__WalkRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edi
	movl 16(%ebp),%esi
	testl %ebx,%ebx
	je .L1
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
	cmpl $1048575,%eax
	jle .L4
	pushl $481
	call _m3_fault
	.align 16
.L4:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	pushl %esi
	pushl %edi
	pushl %ebx
	pushl %eax
	call RTTypeMap__DoWalkRef
.L1:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTTypeMap__WalkRef,.Lfe1-RTTypeMap__WalkRef
	.align 16
	.type	 RTTypeMap__DoWalkRef,@function
RTTypeMap__DoWalkRef:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 20(%ebp),%edi
	testl %esi,%esi
	jne .L6
	pushl $612
	call _m3_fault
	.align 16
.L6:
	movl 80(%esi),%eax
	testl %eax,%eax
	je .L7
	pushl %edi
	movl 16(%ebp),%edx
	pushl %edx
	pushl %ebx
	pushl %eax
	call RTTypeMap__DoWalkRef
	addl $16,%esp
	addl 24(%esi),%ebx
.L7:
	pushl %edi
	movl 16(%ebp),%edx
	pushl %edx
	movl 56(%esi),%eax
	pushl %eax
	pushl %ebx
	call RTTypeMap__Walk
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTTypeMap__DoWalkRef,.Lfe2-RTTypeMap__DoWalkRef
.section	.rodata
	.align 4
	.type	 L_1.0,@object
	.size	 L_1.0,232
L_1.0:
	.long .L16
	.long .L17
	.long .L18
	.long .L19
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L21
	.long .L21
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L20
	.long .L22
	.long .L22
	.long .L22
	.long .L22
	.long .L23
	.long .L23
	.long .L24
	.long .L24
	.long .L24
	.long .L24
	.long .L24
	.long .L24
	.long .L24
	.long .L24
	.long .L25
	.long .L25
	.long .L25
	.long .L25
	.long .L25
	.long .L25
	.long .L25
	.long .L25
	.long .L26
	.long .L27
	.long .L27
	.long .L27
	.long .L27
	.long .L27
	.long .L27
	.long .L27
	.long .L28
	.long .L29
	.long .L29
	.long .L29
	.long .L29
	.long .L29
	.long .L29
	.long .L29
.text
	.align 16
	.type	 RTTypeMap__Walk,@function
RTTypeMap__Walk:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 20(%ebp),%ecx
	movl 8(%ebp),%esi
	movl 4(%ecx),%ecx
	movl %ecx,-8(%ebp)
	testl %esi,%esi
	je .L11
	cmpl $0,12(%ebp)
	je .L11
.L14:
	movl 12(%ebp),%eax
	testl %eax,%eax
	jne .L15
	pushl $804
	call _m3_fault
	.align 16
.L15:
	movb (%eax),%bl
	incl %eax
	movl %eax,12(%ebp)
	xorl %eax,%eax
	movb %bl,%al
	jmp *L_1.0(,%eax,4)
	.align 16
.L17:
	pushl $-1
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	addl $4,%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	addl $12,%esp
	jmp .L14
	.align 16
.L16:
.L31:
	movl 20(%ebp),%edi
	movl 4(%edi),%eax
	cmpl %eax,-8(%ebp)
	jge .L11
	decl %eax
	cmpl $127,%eax
	jbe .L33
	pushl $961
	call _m3_fault
	.align 16
.L33:
	movl 20(%ebp),%ecx
	leal 8(%ecx,%eax,8),%edx
	movl %edx,-4(%ebp)
	movl (%edx),%eax
	movl %eax,12(%ebp)
	movl 4(%edx),%eax
	decl %eax
	movl %eax,4(%edx)
	jns .L14
	decl 4(%ecx)
	jmp .L31
	.align 16
.L24:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ebx,%ebx
	movb MI_RTMapOp+414(%eax),%bl
	leal -1(%ebx),%eax
	cmpl $7,%eax
	jbe .L36
	pushl $1137
	call _m3_fault
	.align 16
.L36:
	pushl %ebx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	movl 20(%ebp),%edi
	addl $8,%esp
	movl 4(%edi),%edx
	decl %edx
	cmpl $127,%edx
	jbe .L37
	pushl $1153
	call _m3_fault
	.align 16
.L37:
	movl 20(%ebp),%ecx
	leal 8(%ecx,%edx,8),%edx
	movl %edx,-4(%ebp)
	cmpl $-1,4(%edx)
	jne .L38
	movl %eax,4(%edx)
.L38:
	movl -4(%ebp),%edx
	movl 4(%edx),%eax
	decl %eax
	movl %eax,4(%edx)
	testl %eax,%eax
	jle .L39
	movl (%edx),%eax
	movl %eax,12(%ebp)
	jmp .L14
	.align 16
.L39:
	movl 20(%ebp),%edi
	decl 4(%edi)
	jmp .L14
	.align 16
.L23:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ebx,%ebx
	movb MI_RTMapOp+414(%eax),%bl
	leal -1(%ebx),%eax
	cmpl $7,%eax
	jbe .L41
	pushl $1281
	call _m3_fault
	.align 16
.L41:
	pushl %ebx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	addl $8,%esp
	testl %esi,%esi
	jne .L42
	pushl $1300
	call _m3_fault
	.align 16
.L42:
	movl (%esi),%ebx
	addl $4,%esi
	movl $1,%edx
	movl %edx,-12(%ebp)
	jmp .L43
	.align 16
.L44:
	testl %esi,%esi
	jne .L45
	pushl $1396
	call _m3_fault
	.align 16
.L45:
	imull (%esi),%edx
	addl $4,%esi
	incl -12(%ebp)
.L43:
	cmpl %eax,-12(%ebp)
	jle .L44
	testl %edx,%edx
	jle .L11
	leal -1(%edx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	addl $4,%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	movl %ebx,%esi
	addl $12,%esp
	jmp .L14
	.align 16
.L22:
	xorl %eax,%eax
	movb %bl,%al
	movl 16(%ebp),%ecx
	xorl %ebx,%ebx
	movb MI_RTMapOp+414(%eax),%bl
	testl $65536,%ecx
	je .L48
	movl 20(%ebp),%edi
	movl (%edi),%eax
	movl 4(%eax),%edx
	pushl $16
	pushl %esi
	pushl %edi
	call *%edx
	addl $12,%esp
.L48:
	leal -1(%ebx),%eax
	cmpl $7,%eax
	jbe .L59
	pushl $1601
	call _m3_fault
	.align 16
.L20:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ecx,%ecx
	movb MI_RTMapOp+356(%eax),%cl
	movl %ecx,-12(%ebp)
	cmpl $31,%ecx
	ja .L25
	movl 16(%ebp),%edi
	btl %ecx,%edi
	jnc .L25
	movl 20(%ebp),%ecx
	movl (%ecx),%eax
	movl -12(%ebp),%edi
	movl 4(%eax),%edx
	pushl %edi
	pushl %esi
	pushl %ecx
	call *%edx
	addl $12,%esp
	jmp .L25
	.align 16
.L21:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ebx,%ebx
	movb MI_RTMapOp+356(%eax),%bl
	cmpl $31,%ebx
	ja .L53
	movl 16(%ebp),%ecx
	btl %ebx,%ecx
	jnc .L53
	movl 20(%ebp),%edi
	movl (%edi),%eax
	movl 4(%eax),%edx
	pushl %ebx
	pushl %esi
	pushl %edi
	call *%edx
	addl $12,%esp
.L53:
	addl $2,12(%ebp)
	jmp .L14
	.align 16
.L18:
	pushl $-1
	leal 4(%esi),%eax
	pushl %eax
	movl 20(%ebp),%eax
	addl $4,%eax
	pushl %eax
	movl MI_RTMapOp+708,%eax
	call *%eax
	addl $12,%esp
	testl %esi,%esi
	jne .L56
	pushl $1956
	call _m3_fault
	.align 16
.L56:
	movl (%esi),%esi
	jmp .L14
	.align 16
.L19:
	movl 20(%ebp),%ecx
	movl 4(%ecx),%eax
	decl %eax
	movl %eax,4(%ecx)
	cmpl $127,%eax
	jbe .L57
	pushl $2017
	call _m3_fault
	.align 16
.L57:
	movl 20(%ebp),%edi
	movl 8(%edi,%eax,8),%esi
	jmp .L14
	.align 16
.L25:
	xorl %eax,%eax
	movb %bl,%al
	addl MI_RTMapOp+472(,%eax,4),%esi
	jmp .L14
	.align 16
.L26:
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L58
	pushl $2132
	call _m3_fault
	.align 16
.L58:
	xorl %eax,%eax
	movb (%edx),%al
	addl %eax,%esi
	jmp .L64
	.align 16
.L27:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ebx,%ebx
	movb MI_RTMapOp+414(%eax),%bl
	leal -1(%ebx),%eax
	cmpl $7,%eax
	jbe .L59
	pushl $2225
	call _m3_fault
	.align 16
.L59:
	pushl %ebx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	addl %eax,%esi
	addl $8,%esp
	jmp .L14
	.align 16
.L28:
	movl 12(%ebp),%edx
	testl %edx,%edx
	jne .L60
	pushl $2292
	call _m3_fault
	.align 16
.L60:
	xorl %eax,%eax
	movb (%edx),%al
	subl %eax,%esi
.L64:
	incl %edx
	movl %edx,12(%ebp)
	jmp .L14
	.align 16
.L29:
	xorl %eax,%eax
	movb %bl,%al
	xorl %ebx,%ebx
	movb MI_RTMapOp+414(%eax),%bl
	leal -1(%ebx),%eax
	cmpl $7,%eax
	jbe .L61
	pushl $2385
	call _m3_fault
	.align 16
.L61:
	pushl %ebx
	leal 12(%ebp),%eax
	pushl %eax
	movl MI_RTMapOp+704,%eax
	call *%eax
	subl %eax,%esi
	addl $8,%esp
	jmp .L14
	.align 16
.L11:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTTypeMap__Walk,.Lfe3-RTTypeMap__Walk
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTTypeMap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_RTTypeMap
.data
	.align 4
	.type	 MM_RTTypeMap,@object
	.size	 MM_RTTypeMap,448
MM_RTTypeMap:
	.long MM_RTTypeMap+236
	.long MM_RTTypeMap+44
	.zero	4
	.long MM_RTTypeMap+160
	.zero	4
	.long MM_RTTypeMap+196
	.zero	28
	.long -2088429208
.byte 123
.byte 102
.byte 71
.byte 156
.byte 19
.byte 127
.byte 194
.byte 31
	.long 1
	.zero	4
	.long 1028
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_RTTypeMap+390
	.zero	4
	.long MM_RTTypeMap+397
	.zero	8
	.long 1104414753
	.zero	12
	.long MM_RTTypeMap+410
	.long MM_RTTypeMap+428
	.zero	4
	.long RTTypeMap__DoWalkRef
	.long RTTypeMap__Walk
	.long RTTypeMap__WalkRef
	.long 717154171
	.long -2088429208
	.zero	4
	.ascii	"Walk"
	.zero	1
	.ascii	"DoWalkRef"
	.zero	1
	.ascii	"WalkRef"
	.zero	2
	.long RTTypeMap__Walk
	.long MM_RTTypeMap+172
	.zero	4
	.long RTTypeMap__DoWalkRef
	.long MM_RTTypeMap+177
	.zero	4
	.long RTTypeMap__WalkRef
	.long MM_RTTypeMap+187
	.long MI_RTTypeMap+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTTypeMap.m3"
	.zero	1
.byte 14
.byte 1
.byte 5
.byte 14
.byte 26
.byte 128
.byte 0
.byte 7
.byte 10
.byte 1
.byte 15
.byte 2
.byte 7
.byte 1
.byte 65
.byte 128
.byte 15
.byte 2
.byte 0
.byte 24
	.ascii	"RTTypeMap.Visitor"
	.zero	1
	.ascii	"RTTypeMap.Visitor"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
