	.file	"Quake.mc"
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
	.type	 Quake__NewMachine,@function
Quake__NewMachine:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl MM_Quake+68,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 4(%eax),%eax
	pushl %ebx
	pushl %edx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Quake__NewMachine,.Lfe1-Quake__NewMachine
	.align 16
	.type	 Quake__RunSourceFile,@function
Quake__RunSourceFile:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%eax
	pushl %eax
	movl MI_QCompiler+44,%eax
	call *%eax
	movl %eax,%edx
	movl (%ebx),%eax
	movl 8(%eax),%eax
	pushl %edx
	pushl %ebx
	call *%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Quake__RunSourceFile,.Lfe2-Quake__RunSourceFile
	.align 16
	.type	 Quake__CompileSourceFile,@function
Quake__CompileSourceFile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_QCompiler+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Quake__CompileSourceFile,.Lfe3-Quake__CompileSourceFile
	.align 16
	.type	 Quake__RunCodeStream,@function
Quake__RunCodeStream:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	movl 12(%ebp),%edx
	movl 8(%eax),%eax
	pushl %edx
	pushl %ecx
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Quake__RunCodeStream,.Lfe4-Quake__RunCodeStream
	.align 16
	.type	 Quake__Define,@function
Quake__Define:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%eax
	movl $0,-12(%ebp)
	movl $0,-8(%ebp)
	movl $0,-4(%ebp)
	movb $2,-12(%ebp)
	pushl $0
	pushl %eax
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%ecx
	movl %ecx,-8(%ebp)
	movl $0,-4(%ebp)
	pushl $0
	pushl %ebx
	movl MI_M3ID+44,%eax
	call *%eax
	movl %eax,%ecx
	movl (%esi),%eax
	movl 16(%eax),%edx
	pushl $0
	leal -12(%ebp),%eax
	pushl %eax
	pushl %ecx
	pushl %esi
	call *%edx
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Quake__Define,.Lfe5-Quake__Define
	.align 16
	.type	 Quake__Done,@function
Quake__Done:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl 36(%edx),%edx
	pushl %eax
	call *%edx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Quake__Done,.Lfe6-Quake__Done
.globl MM_Quake
.data
	.align 4
	.type	 MM_Quake,@object
	.size	 MM_Quake,360
MM_Quake:
	.long MM_Quake+224
	.zero	4
	.long MM_Quake+68
	.zero	8
	.long MM_Quake+148
	.zero	20
	.long Quake__NewMachine
	.long Quake__RunSourceFile
	.long Quake__CompileSourceFile
	.long Quake__RunCodeStream
	.long Quake__Define
	.long Quake__Done
	.zero	4
	.long 588878224
	.ascii	"Done"
	.zero	1
	.ascii	"Define"
	.zero	1
	.ascii	"RunCodeStream"
	.zero	1
	.ascii	"CompileSourceFile"
	.zero	1
	.ascii	"RunSourceFile"
	.zero	1
	.ascii	"NewMachine"
	.zero	4
	.long Quake__Done
	.long MM_Quake+76
	.long MI_Quake+80
	.long Quake__Define
	.long MM_Quake+81
	.long MI_Quake+76
	.long Quake__RunCodeStream
	.long MM_Quake+88
	.long MI_Quake+72
	.long Quake__CompileSourceFile
	.long MM_Quake+102
	.long MI_Quake+68
	.long Quake__RunSourceFile
	.long MM_Quake+120
	.long MI_Quake+64
	.long Quake__NewMachine
	.long MM_Quake+134
	.long MI_Quake+60
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3qua"
	.ascii	"ke/src/Quake.m3"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
