	.file	"LowPerfTool.mc"
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
	.type	 LowPerfTool__ClosePipe,@function
LowPerfTool__ClosePipe:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	call close
	movl 8(%ebp),%eax
	movl 4(%eax),%eax
	pushl %eax
	call close
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 LowPerfTool__ClosePipe,.Lfe1-LowPerfTool__ClosePipe
	.align 16
	.type	 LowPerfTool__Start,@function
LowPerfTool__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $252,%esp
	pushl %esi
	pushl %ebx
	leal -32(%ebp),%ebx
	pushl %ebx
	call pipe
	addl $4,%esp
	cmpl $-1,%eax
	je .L23
	leal -24(%ebp),%esi
	pushl %esi
	call pipe
	addl $4,%esp
	cmpl $-1,%eax
	jne .L4
	pushl %ebx
	jmp .L21
	.align 16
.L4:
	movl $0,-48(%ebp)
	movl $0,-44(%ebp)
	movl $0,-40(%ebp)
	movl $0,-36(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	leal -48(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	cmpl $-1,%eax
	jne .L5
	pushl %ebx
	call LowPerfTool__ClosePipe
	pushl %esi
	jmp .L21
	.align 16
.L5:
	call vfork
	cmpl $-1,%eax
	jl .L6
	jle .L7
	testl %eax,%eax
	jle .L8
	jmp .L6
	.align 16
.L7:
	leal -24(%ebp),%eax
	pushl %eax
	call LowPerfTool__ClosePipe
	leal -32(%ebp),%eax
	pushl %eax
.L21:
	call LowPerfTool__ClosePipe
.L23:
	xorl %eax,%eax
	jmp .L19
	.align 16
.L8:
	movl -28(%ebp),%eax
	pushl %eax
	call close
	movl -24(%ebp),%eax
	pushl %eax
	call close
	addl $8,%esp
	movl -32(%ebp),%eax
	testl %eax,%eax
	je .L9
	pushl $0
	pushl %eax
	call dup2
	addl $8,%esp
	cmpl $-1,%eax
	je .L23
	movl -32(%ebp),%eax
	pushl %eax
	call close
	addl $4,%esp
.L9:
	movl -20(%ebp),%eax
	cmpl $1,%eax
	je .L11
	pushl $1
	pushl %eax
	call dup2
	addl $8,%esp
	cmpl $-1,%eax
	je .L23
	movl -20(%ebp),%eax
	pushl %eax
	call close
	addl $4,%esp
.L11:
	movl $0,-56(%ebp)
	movl $0,-52(%ebp)
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-56(%ebp)
	movl $0,-52(%ebp)
	leal -56(%ebp),%eax
	pushl %eax
	pushl %edx
	call execvp
	jmp .L23
	.align 16
.L6:
	leal -72(%ebp),%eax
	pushl %eax
	leal -16(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	cmpl $-1,%eax
	jne .L13
	pushl $1392
	call _m3_fault
	.align 16
.L13:
	movl -32(%ebp),%eax
	pushl %eax
	call close
	movl -20(%ebp),%eax
	pushl %eax
	call close
	addl $8,%esp
.L14:
	movl $MM_LowPerfTool+64,-244(%ebp)
	movl $0,-248(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-252(%ebp)
	leal -252(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	leal -232(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L15
	pushl $1
	movl -24(%ebp),%eax
	pushl %eax
	movl MI_FilePosix+148,%eax
	call *%eax
	movl 12(%ebp),%ecx
	movl %eax,(%ecx)
	pushl $2
	movl -28(%ebp),%eax
	pushl %eax
	movl MI_FilePosix+148,%eax
	call *%eax
	movl 16(%ebp),%ecx
	movl %eax,(%ecx)
	movl -252(%ebp),%eax
	movl %eax,RTThread__handlerStack
	jmp .L18
	.align 16
.L15:
	movl 12(%ebp),%ecx
	movl $0,(%ecx)
	movl 16(%ebp),%ecx
	xorl %eax,%eax
	movl $0,(%ecx)
	jmp .L19
	.align 16
.L18:
	movl $1,%eax
.L19:
	leal -260(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LowPerfTool__Start,.Lfe2-LowPerfTool__Start
	.align 16
	.type	 LowPerfTool__StartAndWait,@function
LowPerfTool__StartAndWait:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl 8(%ebp),%eax
	movl 16(%ebp),%edx
	pushl %edx
	movl 12(%ebp),%edx
	pushl %edx
	pushl %eax
	call LowPerfTool__Start
	addl $12,%esp
	testl %eax,%eax
	je .L25
	pushl $1
	leal -1(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl (%eax),%eax
	movl 4(%eax),%eax
	pushl %eax
	call read
	movl $1,%eax
.L25:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 LowPerfTool__StartAndWait,.Lfe3-LowPerfTool__StartAndWait
	.align 16
	.type	 LowPerfTool__ParamStart,@function
LowPerfTool__ParamStart:
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
	je .L30
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L29
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L31
	.align 16
.L29:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
.L31:
	call LowPerfTool__Start
.L30:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 LowPerfTool__ParamStart,.Lfe4-LowPerfTool__ParamStart
	.align 16
	.type	 LowPerfTool__ParamStartAndWait,@function
LowPerfTool__ParamStartAndWait:
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
	je .L35
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	je .L34
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %ebx
	jmp .L36
	.align 16
.L34:
	movl 16(%ebp),%eax
	pushl %eax
	movl 12(%ebp),%eax
	pushl %eax
	pushl %esi
.L36:
	call LowPerfTool__StartAndWait
.L35:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 LowPerfTool__ParamStartAndWait,.Lfe5-LowPerfTool__ParamStartAndWait
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_LowPerfTool
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_LowPerfTool
.data
	.align 4
	.type	 MM_LowPerfTool,@object
	.size	 MM_LowPerfTool,352
MM_LowPerfTool:
	.long MM_LowPerfTool+196
	.zero	16
	.long MM_LowPerfTool+132
	.zero	20
	.long LowPerfTool__ClosePipe
	.long LowPerfTool__Start
	.long LowPerfTool__StartAndWait
	.long LowPerfTool__ParamStart
	.long LowPerfTool__ParamStartAndWait
	.long MI_OSError+44
	.zero	4
	.ascii	"ParamStartAndWait"
	.zero	1
	.ascii	"ParamStart"
	.zero	1
	.ascii	"StartAndWait"
	.zero	1
	.ascii	"Start"
	.zero	1
	.ascii	"ClosePipe"
	.zero	3
	.long LowPerfTool__ParamStartAndWait
	.long MM_LowPerfTool+72
	.long MI_LowPerfTool+56
	.long LowPerfTool__ParamStart
	.long MM_LowPerfTool+90
	.long MI_LowPerfTool+52
	.long LowPerfTool__StartAndWait
	.long MM_LowPerfTool+101
	.long MI_LowPerfTool+48
	.long LowPerfTool__Start
	.long MM_LowPerfTool+114
	.long MI_LowPerfTool+44
	.long LowPerfTool__ClosePipe
	.long MM_LowPerfTool+120
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/perftool/POSIX/LowPerfTool.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
