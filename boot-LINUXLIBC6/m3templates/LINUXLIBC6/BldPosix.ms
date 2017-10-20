	.file	"BldPosix.mc"
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
	.type	 BldPosix__DelFile,@function
BldPosix__DelFile:
	pushl %ebp
	movl %esp,%ebp
	subl $180,%esp
.L2:
	movl $MM_BldPosix+56,-172(%ebp)
	movl $0,-176(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-180(%ebp)
	leal -180(%ebp),%edx
	movl %edx,RTThread__handlerStack
	leal -160(%ebp),%eax
	pushl %eax
	call _setjmp
	addl $4,%esp
	testl %eax,%eax
	jne .L1
	movl 12(%ebp),%edx
	pushl %edx
	movl MI_FS+64,%eax
	call *%eax
	movl -180(%ebp),%eax
	movl %eax,RTThread__handlerStack
.L3:
.L1:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 BldPosix__DelFile,.Lfe1-BldPosix__DelFile
	.align 16
	.type	 BldPosix__LinkFile,@function
BldPosix__LinkFile:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 16(%ebp),%edi
.L7:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl MI_Arg+252,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	movl %eax,%ebx
	movl 460(%esi),%eax
	pushl %edi
	pushl %esi
	call *%eax
	pushl $MM_BldPosix+68
	pushl %ebx
	movl MI_Arg+256,%eax
	call *%eax
	movl 12(%ebp),%edx
	pushl %edx
	pushl %ebx
	movl MI_Arg+256,%eax
	call *%eax
	pushl %edi
	pushl %ebx
	movl MI_Arg+256,%eax
	call *%eax
	addl $32,%esp
	pushl $0
	pushl $0
	pushl %ebx
	pushl $MM_BldPosix+84
	movl MI_Utils+124,%eax
	call *%eax
.L8:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 BldPosix__LinkFile,.Lfe2-BldPosix__LinkFile
	.align 16
	.type	 BldPosix__MakeExec,@function
BldPosix__MakeExec:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%esi
.L10:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl MI_Arg+252,%eax
	movl %edx,RTThread__handlerStack
	call *%eax
	pushl $MM_BldPosix+100
	movl %eax,%ebx
	pushl %ebx
	movl MI_Arg+256,%eax
	call *%eax
	pushl %esi
	pushl %ebx
	movl MI_Arg+256,%eax
	call *%eax
	pushl $1
	pushl $0
	pushl %ebx
	pushl $MM_BldPosix+116
	movl MI_Utils+124,%eax
	call *%eax
.L11:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 BldPosix__MakeExec,.Lfe3-BldPosix__MakeExec
.globl MM_BldPosix
.data
	.align 4
	.type	 MM_BldPosix,@object
	.size	 MM_BldPosix,344
MM_BldPosix:
	.long MM_BldPosix+200
	.zero	16
	.long MM_BldPosix+160
	.zero	20
	.long BldPosix__DelFile
	.long BldPosix__LinkFile
	.long BldPosix__MakeExec
	.long MI_OSError+44
	.zero	4
	.long 2
	.long MM_BldPosix+76
	.long 3
	.ascii	"-s"
	.zero	2
	.long 2
	.long MM_BldPosix+92
	.long 3
	.ascii	"ln"
	.zero	2
	.long 2
	.long MM_BldPosix+108
	.long 3
	.ascii	"+x"
	.zero	2
	.long 2
	.long MM_BldPosix+124
	.long 6
	.ascii	"chmod"
	.zero	3
	.ascii	"MakeExec"
	.zero	1
	.ascii	"LinkFile"
	.zero	1
	.ascii	"DelFile"
	.zero	3
	.long BldPosix__MakeExec
	.long MM_BldPosix+132
	.long MI_BldPosix+52
	.long BldPosix__LinkFile
	.long MM_BldPosix+141
	.long MI_BldPosix+48
	.long BldPosix__DelFile
	.long MM_BldPosix+150
	.long MI_BldPosix+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3tem"
	.ascii	"plates/src/BldPosix.m3"
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
