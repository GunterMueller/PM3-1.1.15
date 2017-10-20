	.file	"RTLinker.mc"
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
	.type	 RTLinker__ExportProcs,@function
RTLinker__ExportProcs:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	xorl %ebx,%ebx
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L2
	pushl $340
	call _m3_fault
	.align 16
.L2:
	movl 4(%eax),%esi
	movl %ebx,%edi
	movl (%eax),%eax
	decl %eax
	movl %eax,-4(%ebp)
	jmp .L4
	.align 16
.L5:
	testl %esi,%esi
	jne .L6
	pushl $436
	call _m3_fault
	.align 16
.L6:
	movl (%esi),%ebx
	testl %ebx,%ebx
	je .L7
	movl 20(%ebx),%eax
	testl %eax,%eax
	je .L7
	jmp .L10
	.align 16
.L11:
	movl 8(%eax),%edx
	testl %edx,%edx
	je .L13
	movl %ecx,(%edx)
.L13:
	addl $12,%eax
.L10:
	testl %eax,%eax
	jne .L16
	pushl $484
	call _m3_fault
	.align 16
.L16:
	movl (%eax),%ecx
	testl %ecx,%ecx
	jne .L11
.L7:
	addl $4,%esi
	incl %edi
.L4:
	cmpl %edi,-4(%ebp)
	jge .L5
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L19
	pushl $644
	call _m3_fault
	.align 16
.L19:
	movl 4(%eax),%esi
	xorl %edi,%edi
	movl (%eax),%eax
	decl %eax
	movl %eax,-8(%ebp)
	jmp .L21
	.align 16
.L22:
	testl %esi,%esi
	jne .L23
	pushl $676
	call _m3_fault
	.align 16
.L23:
	movl (%esi),%ebx
	testl %ebx,%ebx
	jne .L25
	pushl %edi
	pushl $MM_RTLinker+164
	movl MI_RTMisc+68,%eax
	call *%eax
	addl $8,%esp
	testl %ebx,%ebx
	jne .L25
	pushl $740
	call _m3_fault
	.align 16
.L25:
	movl 36(%ebx),%eax
	testl %eax,%eax
	je .L26
	call *%eax
.L26:
	addl $4,%esi
	incl %edi
.L21:
	cmpl %edi,-8(%ebp)
	jge .L22
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTLinker__ExportProcs,.Lfe1-RTLinker__ExportProcs
	.align 16
	.type	 RTLinker__RunMainBodies,@function
RTLinker__RunMainBodies:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	xorl %edx,%edx
	pushl %ebx
	movl MI_RTLinker+148,%eax
	testl %eax,%eax
	jne .L30
	pushl $868
	call _m3_fault
	.align 16
.L30:
	movl 4(%eax),%ebx
	movl %edx,%esi
	movl (%eax),%edi
	decl %edi
	jmp .L32
	.align 16
.L33:
	testl %ebx,%ebx
	jne .L34
	pushl $916
	call _m3_fault
	.align 16
.L34:
	movl (%ebx),%edx
	testl %edx,%edx
	je .L35
	movl 40(%edx),%eax
	testl %eax,%eax
	je .L35
	call *%eax
.L35:
	addl $4,%ebx
	incl %esi
.L32:
	cmpl %edi,%esi
	jle .L33
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTLinker__RunMainBodies,.Lfe2-RTLinker__RunMainBodies
	.align 16
	.type	 _INITM_RTLinker,@function
_INITM_RTLinker:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,MM_RTLinker+44
	jne .L39
	movb $1,MM_RTLinker+44
	movl MI_RTLinker+148,%edx
	testl %edx,%edx
	jne .L41
	pushl $1092
	call _m3_fault
	.align 16
.L41:
	movl (%edx),%eax
	testl %eax,%eax
	jge .L42
	pushl $1089
	call _m3_fault
	.align 16
.L42:
	movl %eax,MI_RT0u+44
	movl 4(%edx),%eax
	movl %eax,MI_RT0u+152
	movl 24(%edx),%eax
	movl %eax,MI_RTHooks+44
	movl 28(%edx),%eax
	movl %eax,MI_RTHooks+48
	call RTLinker__ExportProcs
	movl MI_RTTypeSRC+56,%eax
	call *%eax
	movl MI_RTSignal+44,%eax
	call *%eax
	movl MI_RTParams+64,%eax
	call *%eax
	movl MI_RTHeapRep+672,%eax
	call *%eax
	movl MI_RTThreadInit+44,%eax
	call *%eax
	movl MI_RTHeapInfo+44,%eax
	call *%eax
	call RTLinker__RunMainBodies
	pushl $0
	movl MI_RTProcess+48,%eax
	call *%eax
.L39:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 _INITM_RTLinker,.Lfe3-_INITM_RTLinker
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTLinker
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_RTLinker
.data
	.align 4
	.type	 MM_RTLinker,@object
	.size	 MM_RTLinker,440
MM_RTLinker:
	.long MM_RTLinker+284
	.long MM_RTLinker+52
	.zero	12
	.long MM_RTLinker+244
	.zero	16
	.long _INITM_RTLinker
	.zero	4
	.long RTLinker__ExportProcs
	.zero	8
	.long 690206623
.byte 228
.byte 52
.byte 218
.byte 38
.byte 123
.byte 131
.byte 249
.byte 15
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_RTLinker+437
	.zero	44
	.long RTLinker__RunMainBodies
	.long 2
	.long MM_RTLinker+172
	.long 28
	.ascii	"empty slot in module table "
	.zero	1
	.ascii	"_INITM_RTLinker"
	.zero	1
	.ascii	"RunMainBodies"
	.zero	1
	.ascii	"ExportProcs"
	.zero	3
	.long _INITM_RTLinker
	.long MM_RTLinker+200
	.zero	4
	.long RTLinker__RunMainBodies
	.long MM_RTLinker+216
	.zero	4
	.long RTLinker__ExportProcs
	.long MM_RTLinker+230
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTLinker.m3"
	.zero	1
.byte 5
.byte 0
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
