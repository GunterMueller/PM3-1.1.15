	.file	"Reel.mc"
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
	.type	 Reel__Check,@function
Reel__Check:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+132,%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl %edx,16(%eax)
	movl %edx,20(%eax)
	movl MI_Target+136,%edx
	movl %edx,24(%eax)
	movb $3,33(%eax)
	movb $3,32(%eax)
	movb $3,34(%eax)
	movb 35(%eax),%dl
	andb $252,%dl
	andl $255,%edx
	orb $4,%dl
	movb %dl,35(%eax)
	movl $1,28(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 Reel__Check,.Lfe1-Reel__Check
	.align 16
	.type	 Reel__Compiler,@function
Reel__Compiler:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Reel__Compiler,.Lfe2-Reel__Compiler
	.align 16
	.type	 Reel__InitCoster,@function
Reel__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	cmpb $0,12(%ebp)
	jne .L4
	cmpb $0,MI_Target+804
	je .L5
.L4:
	xorl %eax,%eax
	jmp .L6
	.align 16
.L5:
	movl $1,%eax
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Reel__InitCoster,.Lfe3-Reel__InitCoster
	.align 16
	.type	 Reel__FPrinter,@function
Reel__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl $MM_Reel+180,(%eax)
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movl $0,8(%eax)
	popl %ebp
	ret
.Lfe4:
	.size	 Reel__FPrinter,.Lfe4-Reel__FPrinter
	.align 16
	.type	 Reel__GenMap,@function
Reel__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+132,%eax
	movl 12(%ebp),%edx
	cmpl %eax,16(%ebp)
	je .L9
	pushl $960
	call _m3_fault
	.align 16
.L9:
	cmpb $0,20(%ebp)
	jne .L8
	pushl $0
	pushl $7
	pushl %edx
	movl MI_TipeMap+52,%eax
	call *%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Reel__GenMap,.Lfe5-Reel__GenMap
	.align 16
	.type	 Reel__GenDesc,@function
Reel__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $14
	movl MI_TipeDesc+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Reel__GenDesc,.Lfe6-Reel__GenDesc
	.align 16
	.type	 Reel__Initialize,@function
Reel__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Reel+196,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_Reel+44
	pushl $3
	pushl %eax
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $1
	movl MI_Reel+44,%eax
	pushl %eax
	pushl $MM_Reel+208
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Reel__Initialize,.Lfe7-Reel__Initialize
	.align 16
	.type	 M_Reel_t5ecc772d_LINK,@function
M_Reel_t5ecc772d_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Reel+196,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Reel+148,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_Reel+152,%eax
	movl %eax,20(%edx)
	movl MM_Reel+156,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_Reel+164,%eax
	movl %eax,32(%edx)
	movl MM_Reel+168,%eax
	movl %eax,36(%edx)
	movl MM_Reel+160,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_Reel_t5ecc772d_LINK,.Lfe8-M_Reel_t5ecc772d_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Reel
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_Reel
.data
	.align 4
	.type	 MM_Reel,@object
	.size	 MM_Reel,544
MM_Reel:
	.long MM_Reel+376
	.long MM_Reel+44
	.long MM_Reel+196
	.zero	8
	.long MM_Reel+288
	.zero	28
	.long 1590458157
.byte 237
.byte 121
.byte 84
.byte 82
.byte 192
.byte 14
.byte 152
.byte 12
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_Reel+524
	.zero	4
	.long M_Reel_t5ecc772d_LINK
	.long -2121051098
	.zero	12
	.long MM_Reel+527
	.long MM_Reel+534
	.zero	4
	.long Reel__Check
	.long Reel__Compiler
	.long Reel__InitCoster
	.long Reel__FPrinter
	.long Reel__GenMap
	.long Reel__GenDesc
	.long Reel__Initialize
	.long 2
	.long MM_Reel+188
	.long 6
	.ascii	"$real"
	.zero	7
	.long 1590458157
	.long 2
	.long MM_Reel+216
	.long 5
	.ascii	"REAL"
	.zero	4
	.ascii	"Initialize"
	.zero	1
	.ascii	"GenDesc"
	.zero	1
	.ascii	"GenMap"
	.zero	1
	.ascii	"FPrinter"
	.zero	1
	.ascii	"InitCoster"
	.zero	1
	.ascii	"Compiler"
	.zero	1
	.ascii	"Check"
	.zero	4
	.long Reel__Initialize
	.long MM_Reel+224
	.long MI_Reel+48
	.long Reel__GenDesc
	.long MM_Reel+235
	.zero	4
	.long Reel__GenMap
	.long MM_Reel+243
	.zero	4
	.long Reel__FPrinter
	.long MM_Reel+250
	.zero	4
	.long Reel__InitCoster
	.long MM_Reel+259
	.zero	4
	.long Reel__Compiler
	.long MM_Reel+270
	.zero	4
	.long Reel__Check
	.long MM_Reel+279
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Reel.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"Reel.T"
	.zero	1
	.ascii	"Reel.P"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
