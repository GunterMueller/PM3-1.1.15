	.file	"RTHeapDep.mc"
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
	.type	 RTHeapDep__Protect,@function
RTHeapDep__Protect:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movb 16(%ebp),%bl
	cmpb $0,MM_RTHeapDep+44
	jne .L2
	call RTHeapDep__Init
	movb $1,MM_RTHeapDep+44
.L2:
	testb %bl,%bl
	jne .L3
	movb %bl,20(%ebp)
.L3:
	testb %bl,%bl
	setne %al
	andl $255,%eax
	cmpb $0,20(%ebp)
	je .L5
	orb $2,%al
.L5:
	pushl %eax
	movl 12(%ebp),%eax
	sall $13,%eax
	pushl %eax
	movl 8(%ebp),%eax
	sall $13,%eax
	pushl %eax
	call mprotect
	addl $12,%esp
	testl %eax,%eax
	je .L1
	pushl $480
	call _m3_fault
	.align 16
.L1:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeapDep__Protect,.Lfe1-RTHeapDep__Protect
	.align 16
	.type	 RTHeapDep__Init__1__OverrideDefault.0,@function
RTHeapDep__Init__1__OverrideDefault.0:
	pushl %ebp
	movl %esp,%ebp
	subl $284,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl %ecx,-4(%ebp)
	pushl $140
	pushl $0
	leal -144(%ebp),%ebx
	pushl %ebx
	call memset
	movl MM_RTHeapDep+68,%eax
	leal -280(%ebp),%edi
	movl $MM_RTHeapDep+212,%esi
	movl %eax,-284(%ebp)
	cld
	movl $32,%ecx
	rep
	movsl
	movl $268435456,-152(%ebp)
	movl $0,-148(%ebp)
	pushl %ebx
	leal -284(%ebp),%esi
	pushl %esi
	movl 8(%ebp),%edx
	pushl %edx
	call sigaction
	movl $33554432,-280(%ebp)
	addl $24,%esp
	testl %eax,%eax
	je .L13
	pushl $1296
	call _m3_fault
	.align 16
.L13:
	movl MI_Usignal+516,%eax
	cmpl %eax,-144(%ebp)
	je .L12
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edx
	pushl %edx
	call sigaction
	addl $12,%esp
	testl %eax,%eax
	je .L12
	pushl $1344
	call _m3_fault
	.align 16
.L12:
	leal -296(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeapDep__Init__1__OverrideDefault.0,.Lfe2-RTHeapDep__Init__1__OverrideDefault.0
	.align 16
	.type	 RTHeapDep__Init,@function
RTHeapDep__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $292,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L8:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	call getpagesize
	cmpl $8192,%eax
	jle .L9
	pushl $688
	call _m3_fault
	.align 16
.L9:
	pushl $8192
	pushl %eax
	call m3_mod
	movl %eax,%ebx
	addl $8,%esp
	testl %ebx,%ebx
	je .L10
	pushl $704
	call _m3_fault
	.align 16
.L10:
	pushl $140
	leal -288(%ebp),%edx
	pushl %ebx
	movl %edx,-292(%ebp)
	pushl %edx
	call memset
	movl MM_RTHeapDep+60,%eax
	leal -144(%ebp),%edi
	movl $MM_RTHeapDep+84,%esi
	movl %eax,-148(%ebp)
	cld
	movl $32,%ecx
	rep
	movsl
	movl $268435456,-16(%ebp)
	movl %ebx,-12(%ebp)
	movl $33554432,-144(%ebp)
	movl -292(%ebp),%edx
	pushl %edx
	leal -148(%ebp),%eax
	pushl %eax
	pushl $11
	call sigaction
	addl $24,%esp
	testl %eax,%eax
	je .L11
	pushl $992
	call _m3_fault
	.align 16
.L11:
	movl -288(%ebp),%eax
	movl %eax,MM_RTHeapDep+48
	movl %eax,MM_RTHeapDep+52
	pushl $3
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $4
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $5
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $6
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $7
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $8
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $7
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
	pushl $12
	movl %ebp,%ecx
	call RTHeapDep__Init__1__OverrideDefault.0
.L16:
	movl -8(%ebp),%eax
	leal -304(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeapDep__Init,.Lfe3-RTHeapDep__Init
	.align 16
	.type	 RTHeapDep__Fault,@function
RTHeapDep__Fault:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 100(%ebp),%esi
	movl 96(%ebp),%eax
	pushl %eax
	movl MI_RTHeapRep+556,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L17
	movl MM_RTHeapDep+48,%eax
	cmpl %eax,MI_Usignal+520
	je .L17
	cmpl %eax,MI_Usignal+516
	jne .L20
	pushl %esi
	addl $-88,%esp
	movl %esp,%edi
	leal 12(%ebp),%esi
	cld
	movl $22,%ecx
	rep
	movsl
	pushl %ebx
	call RTHeapDep__Core
	jmp .L17
	.align 16
.L20:
	pushl %esi
	addl $-88,%esp
	movl %esp,%edi
	leal 12(%ebp),%esi
	cld
	movl $22,%ecx
	rep
	movsl
	pushl %ebx
	movl MM_RTHeapDep+52,%eax
	call *%eax
.L17:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeapDep__Fault,.Lfe4-RTHeapDep__Fault
	.align 16
	.type	 RTHeapDep__Core,@function
RTHeapDep__Core:
	pushl %ebp
	movl %esp,%ebp
	subl $280,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $140
	pushl $0
	leal -280(%ebp),%ebx
	pushl %ebx
	call memset
	movl MI_Usignal+516,%eax
	movl %eax,-140(%ebp)
	leal -136(%ebp),%edi
	movl $MM_RTHeapDep+340,%esi
	addl $12,%esp
	cld
	movl $32,%ecx
	rep
	movsl
	movl $268435456,-8(%ebp)
	movl $0,-4(%ebp)
	movl RT0u__inCritical,%eax
	leal 1(%eax),%edx
	movl %edx,RT0u__inCritical
	cmpb $0,MM_RTHeapDep+64
	jne .L23
	movl MI_RTHeapRep+412,%eax
	movb $1,MM_RTHeapDep+64
	call *%eax
	pushl %ebx
	leal -140(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%edx
	pushl %edx
	call sigaction
	pushl $0
	call sigsetmask
	call abort
	pushl $2272
	call _m3_fault
	.align 16
.L23:
	leal -292(%ebp),%esp
	movl %eax,RT0u__inCritical
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTHeapDep__Core,.Lfe5-RTHeapDep__Core
.section	.rodata
	.align 4
.LC0:
	.long 0x49742400
.text
	.align 16
	.type	 RTHeapDep__TimeUsed,@function
RTHeapDep__TimeUsed:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
.L25:
	movl $5,-76(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-80(%ebp)
	leal -80(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -72(%ebp),%eax
	pushl %eax
	pushl $0
	call getrusage
	addl $8,%esp
	cmpl $-1,%eax
	jne .L26
	pushl $2464
	call _m3_fault
	.align 16
.L26:
	flds .LC0
	fidivrl -68(%ebp)
	fiaddl -72(%ebp)
	movl -80(%ebp),%eax
	movl %eax,RTThread__handlerStack
	fadd %st(0),%st
.L27:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RTHeapDep__TimeUsed,.Lfe6-RTHeapDep__TimeUsed
.section	.rodata
	.align 4
.LC1:
	.long 0x3c23d70a
.text
	.align 16
	.type	 RTHeapDep__VMFaultTime,@function
RTHeapDep__VMFaultTime:
	pushl %ebp
	movl %esp,%ebp
	flds .LC1
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 RTHeapDep__VMFaultTime,.Lfe7-RTHeapDep__VMFaultTime
	.align 16
	.type	 _INITM_RTHeapDep,@function
_INITM_RTHeapDep:
	pushl %ebp
	movl %esp,%ebp
	movl MI_RTHeapRep+556,%eax
	movl %eax,RTHeapRep_Fault
	movl MI_RTCollectorSRC+60,%eax
	movl %eax,RTCSRC_FinishVM
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 _INITM_RTHeapDep,.Lfe8-_INITM_RTHeapDep
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeapDep
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_RTHeapDep
.data
	.align 4
	.type	 MM_RTHeapDep,@object
	.size	 MM_RTHeapDep,816
MM_RTHeapDep:
	.long MM_RTHeapDep+656
	.zero	16
	.long MM_RTHeapDep+556
	.zero	16
	.long _INITM_RTHeapDep
	.zero	12
	.long RTHeapDep__Init
	.long RTHeapDep__Fault
	.zero	4
	.long RTHeapDep__Core
	.long RTHeapDep__Protect
	.long RTHeapDep__TimeUsed
	.long RTHeapDep__VMFaultTime
	.zero	384
	.ascii	"_INITM_RTHeapDep"
	.zero	1
	.ascii	"VMFaultTime"
	.zero	1
	.ascii	"TimeUsed"
	.zero	1
	.ascii	"Core"
	.zero	1
	.ascii	"Fault"
	.zero	1
	.ascii	"Init"
	.zero	1
	.ascii	"Init.1.OverrideDefault"
	.zero	1
	.ascii	"Protect"
	.zero	4
	.long _INITM_RTHeapDep
	.long MM_RTHeapDep+468
	.zero	4
	.long RTHeapDep__VMFaultTime
	.long MM_RTHeapDep+485
	.long MI_RTHeapDep+52
	.long RTHeapDep__TimeUsed
	.long MM_RTHeapDep+497
	.long MI_RTHeapDep+48
	.long RTHeapDep__Core
	.long MM_RTHeapDep+506
	.zero	4
	.long RTHeapDep__Fault
	.long MM_RTHeapDep+511
	.zero	4
	.long RTHeapDep__Init
	.long MM_RTHeapDep+517
	.zero	4
	.long RTHeapDep__Init__1__OverrideDefault.0
	.long MM_RTHeapDep+522
	.zero	4
	.long RTHeapDep__Protect
	.long MM_RTHeapDep+545
	.long MI_RTHeapDep+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/LINUXLIBC6/RTHeapDep.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
