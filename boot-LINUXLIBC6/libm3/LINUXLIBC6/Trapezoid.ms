	.file	"Trapezoid.mc"
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
	.type	 Trapezoid__FromEdges,@function
Trapezoid__FromEdges:
	pushl %ebp
	movl %esp,%ebp
	subl $88,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edx
	movl 24(%ebp),%ebx
	movl 28(%ebp),%esi
	movl %edx,-88(%ebp)
	cmpl %eax,%edx
	jle .L2
	movl %eax,-88(%ebp)
.L2:
	movl %edx,%edi
	cmpl %edi,%eax
	jle .L3
	movl %eax,%edi
.L3:
	movl %esi,%edx
	cmpl %ebx,%edx
	jle .L5
	movl %ebx,%edx
.L5:
	cmpl %esi,%ebx
	jle .L6
	movl %ebx,%esi
.L6:
	movl 20(%ebp),%eax
	movl 8(%ebp),%ecx
	cmpl %ecx,%eax
	jle .L8
	movl 8(%ebp),%eax
.L8:
	movl %eax,-40(%ebp)
	movl 20(%ebp),%ecx
	cmpl %ecx,8(%ebp)
	jle .L9
	movl 8(%ebp),%ecx
	jmp .L11
	.align 16
.L9:
	movl 20(%ebp),%ecx
.L11:
	movl %ecx,-36(%ebp)
	movl 8(%ebp),%ebx
	subl 20(%ebp),%ebx
	movl %ebx,-32(%ebp)
	movl -88(%ebp),%ecx
	subl %edx,%ecx
	movl %ecx,-28(%ebp)
	leal -40(%ebp),%ecx
	movl %ecx,-84(%ebp)
	leal -16(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	movl -88(%ebp),%ecx
	pushl %ecx
	movl MI_Point+52,%eax
	call *%eax
	movl %ebx,-24(%ebp)
	movl %edi,%ecx
	subl %esi,%ecx
	movl %ecx,-20(%ebp)
	leal -8(%ebp),%eax
	pushl %eax
	movl 8(%ebp),%ecx
	pushl %ecx
	pushl %edi
	movl MI_Point+52,%eax
	call *%eax
	movl 32(%ebp),%edi
	movl -84(%ebp),%esi
	leal -100(%ebp),%esp
	cld
	movl $10,%ecx
	rep
	movsl
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Trapezoid__FromEdges,.Lfe1-Trapezoid__FromEdges
	.align 16
	.type	 Trapezoid__FromVertices,@function
Trapezoid__FromVertices:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	movl 24(%ebp),%eax
	pushl %eax
	movl 20(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl 16(%ebp),%edx
	movl (%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	movl 12(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	movl 8(%ebp),%edx
	movl (%edx),%eax
	pushl %eax
	movl 4(%edx),%eax
	pushl %eax
	call Trapezoid__FromEdges
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Trapezoid__FromVertices,.Lfe2-Trapezoid__FromVertices
	.align 16
	.type	 Trapezoid__FromTriangle,@function
Trapezoid__FromTriangle:
	pushl %ebp
	movl %esp,%ebp
	subl $40,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%ecx
	movl 4(%ebx),%eax
	cmpl %eax,4(%ecx)
	jne .L14
	movl 20(%ebp),%eax
	pushl %eax
	movl 16(%ebp),%eax
	pushl %eax
	pushl %eax
	pushl %ecx
	pushl %ebx
	jmp .L16
	.align 16
.L14:
	movl 16(%ebp),%edx
	cmpl %eax,4(%edx)
	jne .L15
	movl 20(%ebp),%eax
	pushl %eax
	pushl %ecx
	pushl %ecx
	pushl %edx
	pushl %ebx
	jmp .L16
	.align 16
.L15:
	movl 20(%ebp),%eax
	pushl %eax
	pushl %ebx
	pushl %ebx
	pushl %edx
	pushl %ecx
.L16:
	call Trapezoid__FromVertices
	movl -44(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Trapezoid__FromTriangle,.Lfe3-Trapezoid__FromTriangle
.globl MM_Trapezoid
.data
	.align 4
	.type	 MM_Trapezoid,@object
	.size	 MM_Trapezoid,280
MM_Trapezoid:
	.long MM_Trapezoid+132
	.zero	16
	.long MM_Trapezoid+92
	.zero	20
	.long Trapezoid__FromEdges
	.long Trapezoid__FromVertices
	.long Trapezoid__FromTriangle
	.ascii	"FromTriangle"
	.zero	1
	.ascii	"FromVertices"
	.zero	1
	.ascii	"FromEdges"
	.zero	1
	.long Trapezoid__FromTriangle
	.long MM_Trapezoid+56
	.long MI_Trapezoid+52
	.long Trapezoid__FromVertices
	.long MM_Trapezoid+69
	.long MI_Trapezoid+48
	.long Trapezoid__FromEdges
	.long MM_Trapezoid+82
	.long MI_Trapezoid+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/geometry/Trapezoid.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
