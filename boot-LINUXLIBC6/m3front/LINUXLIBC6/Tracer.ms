	.file	"Tracer.mc"
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
	.type	 Tracer__Schedule,@function
Tracer__Schedule:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L1
	cmpb $0,MM_Tracer+44
	jne .L1
	cmpl $0,4(%edx)
	jne .L1
	movl MM_Tracer+48,%eax
	movl %eax,4(%edx)
	movl %edx,MM_Tracer+48
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Tracer__Schedule,.Lfe1-Tracer__Schedule
	.align 16
	.type	 Tracer__Push,@function
Tracer__Push:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L5
	cmpb $0,MM_Tracer+44
	jne .L5
	cmpl $0,4(%edx)
	jne .L5
	movl MM_Tracer+52,%eax
	movl %eax,4(%edx)
	movl %edx,MM_Tracer+52
.L5:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Tracer__Push,.Lfe2-Tracer__Push
	.align 16
	.type	 Tracer__Pop,@function
Tracer__Pop:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Tracer+52,%edx
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L9
	cmpb $0,MM_Tracer+44
	jne .L9
	cmpl %eax,%edx
	jne .L9
	movl 4(%edx),%eax
	movl %eax,MM_Tracer+52
	movl $0,4(%edx)
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Tracer__Pop,.Lfe3-Tracer__Pop
	.align 16
	.type	 Tracer__EmitPending,@function
Tracer__EmitPending:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	cmpb $0,MM_Tracer+44
	jne .L13
	movb $1,MM_Tracer+44
	jmp .L15
	.align 16
.L16:
	movl %eax,%ebx
	movl 4(%ebx),%eax
	movl %eax,MM_Tracer+48
	movl (%ebx),%eax
	movl $0,4(%ebx)
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	addl $4,%esp
.L15:
	movl MM_Tracer+48,%eax
	testl %eax,%eax
	jne .L16
	movl MM_Tracer+52,%ebx
	jmp .L18
	.align 16
.L19:
	movl (%ebx),%eax
	movl 4(%eax),%eax
	pushl %ebx
	call *%eax
	movl 4(%ebx),%ebx
	addl $4,%esp
.L18:
	testl %ebx,%ebx
	jne .L19
	movb $0,MM_Tracer+44
.L13:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Tracer__EmitPending,.Lfe4-Tracer__EmitPending
	.align 16
	.type	 Tracer__Reset,@function
Tracer__Reset:
	pushl %ebp
	movl %esp,%ebp
	movb $0,MM_Tracer+44
	movl $0,MM_Tracer+48
	movl $0,MM_Tracer+52
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Tracer__Reset,.Lfe5-Tracer__Reset
.globl MM_Tracer
.data
	.align 4
	.type	 MM_Tracer,@object
	.size	 MM_Tracer,324
MM_Tracer:
	.long MM_Tracer+181
	.zero	16
	.long MM_Tracer+112
	.zero	4
	.long MM_Tracer+176
	.long MM_Tracer+176
	.zero	20
	.long Tracer__Schedule
	.long Tracer__Push
	.long Tracer__Pop
	.long Tracer__EmitPending
	.long Tracer__Reset
	.ascii	"Reset"
	.zero	1
	.ascii	"EmitPending"
	.zero	1
	.ascii	"Pop"
	.zero	1
	.ascii	"Push"
	.zero	1
	.ascii	"Schedule"
	.zero	1
	.long Tracer__Reset
	.long MM_Tracer+76
	.long MI_Tracer+164
	.long Tracer__EmitPending
	.long MM_Tracer+82
	.long MI_Tracer+160
	.long Tracer__Pop
	.long MM_Tracer+94
	.long MI_Tracer+156
	.long Tracer__Push
	.long MM_Tracer+98
	.long MI_Tracer+152
	.long Tracer__Schedule
	.long MM_Tracer+103
	.long MI_Tracer+148
	.zero	4
.byte 42
.byte 48
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/misc/Tracer.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
