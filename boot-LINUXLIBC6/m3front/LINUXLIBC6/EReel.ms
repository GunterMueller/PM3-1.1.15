	.file	"EReel.mc"
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
	.type	 EReel__Check,@function
EReel__Check:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+228,%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl %edx,16(%eax)
	movl %edx,20(%eax)
	movl MI_Target+232,%edx
	movl %edx,24(%eax)
	movb $5,33(%eax)
	movb $5,32(%eax)
	movb $5,34(%eax)
	movb 35(%eax),%dl
	andb $252,%dl
	andl $255,%edx
	orb $4,%dl
	movb %dl,35(%eax)
	movl $3,28(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 EReel__Check,.Lfe1-EReel__Check
	.align 16
	.type	 EReel__Compiler,@function
EReel__Compiler:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 EReel__Compiler,.Lfe2-EReel__Compiler
	.align 16
	.type	 EReel__InitCoster,@function
EReel__InitCoster:
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
	.size	 EReel__InitCoster,.Lfe3-EReel__InitCoster
	.align 16
	.type	 EReel__FPrinter,@function
EReel__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl $MM_EReel+180,(%eax)
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movl $0,8(%eax)
	popl %ebp
	ret
.Lfe4:
	.size	 EReel__FPrinter,.Lfe4-EReel__FPrinter
	.align 16
	.type	 EReel__GenMap,@function
EReel__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+228,%eax
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
	pushl $9
	pushl %edx
	movl MI_TipeMap+52,%eax
	call *%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 EReel__GenMap,.Lfe5-EReel__GenMap
	.align 16
	.type	 EReel__GenDesc,@function
EReel__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $6
	movl MI_TipeDesc+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 EReel__GenDesc,.Lfe6-EReel__GenDesc
	.align 16
	.type	 EReel__Initialize,@function
EReel__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EReel+200,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_EReel+44
	pushl $5
	pushl %eax
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $1
	movl MI_EReel+44,%eax
	pushl %eax
	pushl $MM_EReel+212
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 EReel__Initialize,.Lfe7-EReel__Initialize
	.align 16
	.type	 M_EReel_t2a46d2dd_LINK,@function
M_EReel_t2a46d2dd_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_EReel+200,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_EReel+148,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_EReel+152,%eax
	movl %eax,20(%edx)
	movl MM_EReel+156,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_EReel+164,%eax
	movl %eax,32(%edx)
	movl MM_EReel+168,%eax
	movl %eax,36(%edx)
	movl MM_EReel+160,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_EReel_t2a46d2dd_LINK,.Lfe8-M_EReel_t2a46d2dd_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_EReel
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_EReel
.data
	.align 4
	.type	 MM_EReel,@object
	.size	 MM_EReel,552
MM_EReel:
	.long MM_EReel+384
	.long MM_EReel+44
	.long MM_EReel+200
	.zero	8
	.long MM_EReel+296
	.zero	28
	.long 709284573
.byte 169
.byte 165
.byte 204
.byte 50
.byte 116
.byte 119
.byte 138
.byte 24
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_EReel+533
	.zero	4
	.long M_EReel_t2a46d2dd_LINK
	.long -2121051098
	.zero	12
	.long MM_EReel+536
	.long MM_EReel+544
	.zero	4
	.long EReel__Check
	.long EReel__Compiler
	.long EReel__InitCoster
	.long EReel__FPrinter
	.long EReel__GenMap
	.long EReel__GenDesc
	.long EReel__Initialize
	.long 2
	.long MM_EReel+188
	.long 10
	.ascii	"$extended"
	.zero	7
	.long 709284573
	.long 2
	.long MM_EReel+220
	.long 9
	.ascii	"EXTENDED"
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
	.long EReel__Initialize
	.long MM_EReel+232
	.long MI_EReel+48
	.long EReel__GenDesc
	.long MM_EReel+243
	.zero	4
	.long EReel__GenMap
	.long MM_EReel+251
	.zero	4
	.long EReel__FPrinter
	.long MM_EReel+258
	.zero	4
	.long EReel__InitCoster
	.long MM_EReel+267
	.zero	4
	.long EReel__Compiler
	.long MM_EReel+278
	.zero	4
	.long EReel__Check
	.long MM_EReel+287
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/EReel.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"EReel.T"
	.zero	1
	.ascii	"EReel.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
