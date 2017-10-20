	.file	"RTPerfTool.mc"
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
	.type	 RTPerfTool__Start,@function
RTPerfTool__Start:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	pushl %esi
	movl MI_RTParams+56,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	je .L5
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L3
	movl %esi,%ebx
.L3:
	movl 12(%ebp),%eax
	pushl %eax
	leal -4(%ebp),%eax
	pushl %eax
	pushl %ebx
	call RTPerfTool__StartTool
	addl $12,%esp
	testl %eax,%eax
	je .L4
	pushl $1
	leal -5(%ebp),%eax
	pushl %eax
	movl -4(%ebp),%eax
	pushl %eax
	call read
	movl -4(%ebp),%eax
	pushl %eax
	call close
	movl $1,%eax
.L4:
.L5:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTPerfTool__Start,.Lfe1-RTPerfTool__Start
	.align 16
	.type	 RTPerfTool__Close,@function
RTPerfTool__Close:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call close
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTPerfTool__Close,.Lfe2-RTPerfTool__Close
	.align 16
	.type	 RTPerfTool__Send,@function
RTPerfTool__Send:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl 12(%ebp),%edx
	movl 16(%ebp),%eax
	pushl %eax
	pushl %edx
	pushl %ecx
	call write
	cmpl $-1,%eax
	setne %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTPerfTool__Send,.Lfe3-RTPerfTool__Send
	.align 16
	.type	 RTPerfTool__ClosePipe,@function
RTPerfTool__ClosePipe:
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
.Lfe4:
	.size	 RTPerfTool__ClosePipe,.Lfe4-RTPerfTool__ClosePipe
	.align 16
	.type	 RTPerfTool__StartTool,@function
RTPerfTool__StartTool:
	pushl %ebp
	movl %esp,%ebp
	subl $60,%esp
	pushl %esi
	pushl %ebx
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movl $0,-60(%ebp)
	leal -56(%ebp),%ebx
	pushl %ebx
	call pipe
	addl $4,%esp
	cmpl $-1,%eax
	je .L25
	leal -48(%ebp),%esi
	pushl %esi
	call pipe
	addl $4,%esp
	cmpl $-1,%eax
	jne .L11
	pushl %ebx
	jmp .L24
	.align 16
.L11:
	movl -60(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl %ecx,-20(%ebp)
	movl %ecx,-16(%ebp)
	movl %ecx,-12(%ebp)
	leal -40(%ebp),%eax
	pushl %eax
	leal -24(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	cmpl $-1,%eax
	jne .L12
	pushl %ebx
	call RTPerfTool__ClosePipe
	pushl %esi
	jmp .L24
	.align 16
.L12:
	call vfork
	cmpl $-1,%eax
	jl .L13
	jle .L14
	testl %eax,%eax
	jle .L15
	jmp .L13
	.align 16
.L14:
	leal -48(%ebp),%eax
	pushl %eax
	call RTPerfTool__ClosePipe
	leal -56(%ebp),%eax
	pushl %eax
.L24:
	call RTPerfTool__ClosePipe
.L25:
	xorl %eax,%eax
	jmp .L22
	.align 16
.L15:
	movl -52(%ebp),%eax
	pushl %eax
	call close
	movl -48(%ebp),%eax
	pushl %eax
	call close
	addl $8,%esp
	movl -56(%ebp),%eax
	testl %eax,%eax
	je .L16
	pushl $0
	pushl %eax
	call dup2
	addl $8,%esp
	cmpl $-1,%eax
	je .L25
	movl -56(%ebp),%eax
	pushl %eax
	call close
	addl $4,%esp
.L16:
	movl -44(%ebp),%eax
	cmpl $1,%eax
	je .L18
	pushl $1
	pushl %eax
	call dup2
	addl $8,%esp
	cmpl $-1,%eax
	je .L25
	movl -44(%ebp),%eax
	pushl %eax
	call close
	addl $4,%esp
.L18:
	movl 8(%ebp),%ecx
	pushl %ecx
	movl MI_M3toC+52,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,-8(%ebp)
	movl $0,-4(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	pushl %edx
	call execvp
	movl %eax,-60(%ebp)
	pushl $99
	call _exit
	jmp .L20
	.align 16
.L13:
	leal -24(%ebp),%eax
	pushl %eax
	leal -40(%ebp),%eax
	pushl %eax
	pushl $1
	call setitimer
	addl $12,%esp
	cmpl $-1,%eax
	jne .L21
	pushl $1760
	call _m3_fault
	.align 16
.L21:
	movl -56(%ebp),%eax
	pushl %eax
	call close
	movl -44(%ebp),%eax
	pushl %eax
	call close
	movl 12(%ebp),%ecx
	movl -48(%ebp),%eax
	movl %eax,(%ecx)
	movl 16(%ebp),%ecx
	movl -52(%ebp),%eax
	movl %eax,(%ecx)
.L20:
	movl -60(%ebp),%eax
	notl %eax
	shrl $31,%eax
.L22:
	leal -68(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 RTPerfTool__StartTool,.Lfe5-RTPerfTool__StartTool
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTPerfTool
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe6:
	.size	 _m3_fault,.Lfe6-_m3_fault
.globl MM_RTPerfTool
.data
	.align 4
	.type	 MM_RTPerfTool,@object
	.size	 MM_RTPerfTool,324
MM_RTPerfTool:
	.long MM_RTPerfTool+168
	.zero	16
	.long MM_RTPerfTool+104
	.zero	20
	.long RTPerfTool__ClosePipe
	.long RTPerfTool__StartTool
	.long RTPerfTool__Start
	.long RTPerfTool__Close
	.long RTPerfTool__Send
	.ascii	"StartTool"
	.zero	1
	.ascii	"ClosePipe"
	.zero	1
	.ascii	"Send"
	.zero	1
	.ascii	"Close"
	.zero	1
	.ascii	"Start"
	.zero	4
	.long RTPerfTool__StartTool
	.long MM_RTPerfTool+64
	.zero	4
	.long RTPerfTool__ClosePipe
	.long MM_RTPerfTool+74
	.zero	4
	.long RTPerfTool__Send
	.long MM_RTPerfTool+84
	.long MI_RTPerfTool+52
	.long RTPerfTool__Close
	.long MM_RTPerfTool+89
	.long MI_RTPerfTool+48
	.long RTPerfTool__Start
	.long MM_RTPerfTool+95
	.long MI_RTPerfTool+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/POSIX/RTPerfTool.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
