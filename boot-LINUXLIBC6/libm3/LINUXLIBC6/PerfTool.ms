	.file	"PerfTool.mc"
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
	.type	 PerfTool__Start,@function
PerfTool__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $188,%esp
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_LowPerfTool+44,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L7
.L3:
	movl $MM_PerfTool+60,-180(%ebp)
	movl $0,-184(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-188(%ebp)
	leal -188(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -168(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L4
	movl MM_PerfTool+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_PerfTool+76,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	movl -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl 12(%ebp),%esi
	movl %eax,%ecx
	movl %ecx,(%esi)
	movl MM_PerfTool+84,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_PerfTool+92,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	pushl $1
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl 16(%ebp),%esi
	movl %eax,%ecx
	movl %ecx,(%esi)
	movl -188(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L5
	.align 16
.L4:
	xorl %eax,%eax
	jmp .L7
	.align 16
.L5:
	movl $1,%eax
.L7:
	leal -196(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 PerfTool__Start,.Lfe1-PerfTool__Start
	.align 16
	.type	 PerfTool__StartAndWait,@function
PerfTool__StartAndWait:
	pushl %ebp
	movl %esp,%ebp
	subl $188,%esp
	pushl %esi
	leal -4(%ebp),%eax
	pushl %ebx
	movl 8(%ebp),%edx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	pushl %eax
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	movl MI_LowPerfTool+48,%eax
	call *%eax
	addl $12,%esp
	testl %eax,%eax
	je .L14
.L10:
	movl $MM_PerfTool+60,-180(%ebp)
	movl $0,-184(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-188(%ebp)
	leal -188(%ebp),%esi
	movl %esi,RTThread__handlerStack
	leal -168(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L11
	movl MM_PerfTool+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_PerfTool+76,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	movl -8(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl 12(%ebp),%esi
	movl %eax,%ecx
	movl %ecx,(%esi)
	movl MM_PerfTool+84,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ecx
	movl MM_PerfTool+92,%eax
	movl (%ecx),%edx
	movl 36(%eax),%eax
	movl (%eax,%edx),%ebx
	pushl $1
	movl -4(%ebp),%eax
	pushl %eax
	pushl %ecx
	call *%ebx
	movl 16(%ebp),%esi
	movl %eax,%ecx
	movl %ecx,(%esi)
	movl -188(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L12
	.align 16
.L11:
	xorl %eax,%eax
	jmp .L14
	.align 16
.L12:
	movl $1,%eax
.L14:
	leal -196(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 PerfTool__StartAndWait,.Lfe2-PerfTool__StartAndWait
	.align 16
	.type	 PerfTool__ParamStart,@function
PerfTool__ParamStart:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTParams+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %eax,%eax
	je .L18
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L17
	leal 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L19
	.align 16
.L17:
	leal 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
.L19:
	call PerfTool__Start
.L18:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 PerfTool__ParamStart,.Lfe3-PerfTool__ParamStart
	.align 16
	.type	 PerfTool__ParamStartAndWait,@function
PerfTool__ParamStartAndWait:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTParams+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %eax,%eax
	je .L23
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L22
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L24
	.align 16
.L22:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
.L24:
	call PerfTool__StartAndWait
.L23:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 PerfTool__ParamStartAndWait,.Lfe4-PerfTool__ParamStartAndWait
.globl MM_PerfTool
.data
	.align 4
	.type	 MM_PerfTool,@object
	.size	 MM_PerfTool,356
MM_PerfTool:
	.long MM_PerfTool+200
	.zero	4
	.long MM_PerfTool+68
	.zero	8
	.long MM_PerfTool+148
	.zero	20
	.long PerfTool__Start
	.long PerfTool__StartAndWait
	.long PerfTool__ParamStart
	.long PerfTool__ParamStartAndWait
	.long MI_OSError+44
	.zero	4
	.long MM_PerfTool+76
	.long 1045706454
	.long MM_PerfTool+84
	.long 1045706453
	.long MM_PerfTool+92
	.long -492241990
	.zero	4
	.long -492241991
	.ascii	"ParamStartAndWait"
	.zero	1
	.ascii	"ParamStart"
	.zero	1
	.ascii	"StartAndWait"
	.zero	1
	.ascii	"Start"
	.zero	1
	.long PerfTool__ParamStartAndWait
	.long MM_PerfTool+100
	.long MI_PerfTool+56
	.long PerfTool__ParamStart
	.long MM_PerfTool+118
	.long MI_PerfTool+52
	.long PerfTool__StartAndWait
	.long MM_PerfTool+129
	.long MI_PerfTool+48
	.long PerfTool__Start
	.long MM_PerfTool+142
	.long MI_PerfTool+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/perftool/Common/PerfTool.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
