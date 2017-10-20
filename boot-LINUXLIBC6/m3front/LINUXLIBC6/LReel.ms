	.file	"LReel.mc"
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
	.type	 LReel__Check,@function
LReel__Check:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+180,%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl %edx,16(%eax)
	movl %edx,20(%eax)
	movl MI_Target+184,%edx
	movl %edx,24(%eax)
	movb $4,33(%eax)
	movb $4,32(%eax)
	movb $4,34(%eax)
	movb 35(%eax),%dl
	andb $252,%dl
	andl $255,%edx
	orb $4,%dl
	movb %dl,35(%eax)
	movl $2,28(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 LReel__Check,.Lfe1-LReel__Check
	.align 16
	.type	 LReel__Compiler,@function
LReel__Compiler:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 LReel__Compiler,.Lfe2-LReel__Compiler
	.align 16
	.type	 LReel__InitCoster,@function
LReel__InitCoster:
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
	.size	 LReel__InitCoster,.Lfe3-LReel__InitCoster
	.align 16
	.type	 LReel__FPrinter,@function
LReel__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl $MM_LReel+180,(%eax)
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movl $0,8(%eax)
	popl %ebp
	ret
.Lfe4:
	.size	 LReel__FPrinter,.Lfe4-LReel__FPrinter
	.align 16
	.type	 LReel__GenMap,@function
LReel__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+180,%eax
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
	pushl $8
	pushl %edx
	movl MI_TipeMap+52,%eax
	call *%eax
.L8:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 LReel__GenMap,.Lfe5-LReel__GenMap
	.align 16
	.type	 LReel__GenDesc,@function
LReel__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $8
	movl MI_TipeDesc+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 LReel__GenDesc,.Lfe6-LReel__GenDesc
	.align 16
	.type	 LReel__Initialize,@function
LReel__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_LReel+200,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_LReel+44
	pushl $4
	pushl %eax
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $1
	movl MI_LReel+44,%eax
	pushl %eax
	pushl $MM_LReel+212
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 LReel__Initialize,.Lfe7-LReel__Initialize
	.align 16
	.type	 M_LReel_te635d0b6_LINK,@function
M_LReel_te635d0b6_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_LReel+200,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_LReel+148,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_LReel+152,%eax
	movl %eax,20(%edx)
	movl MM_LReel+156,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_LReel+164,%eax
	movl %eax,32(%edx)
	movl MM_LReel+168,%eax
	movl %eax,36(%edx)
	movl MM_LReel+160,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_LReel_te635d0b6_LINK,.Lfe8-M_LReel_te635d0b6_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_LReel
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_LReel
.data
	.align 4
	.type	 MM_LReel,@object
	.size	 MM_LReel,552
MM_LReel:
	.long MM_LReel+384
	.long MM_LReel+44
	.long MM_LReel+200
	.zero	8
	.long MM_LReel+296
	.zero	28
	.long -432680778
.byte 236
.byte 218
.byte 139
.byte 242
.byte 90
.byte 10
.byte 190
.byte 20
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_LReel+533
	.zero	4
	.long M_LReel_te635d0b6_LINK
	.long -2121051098
	.zero	12
	.long MM_LReel+536
	.long MM_LReel+544
	.zero	4
	.long LReel__Check
	.long LReel__Compiler
	.long LReel__InitCoster
	.long LReel__FPrinter
	.long LReel__GenMap
	.long LReel__GenDesc
	.long LReel__Initialize
	.long 2
	.long MM_LReel+188
	.long 10
	.ascii	"$longreal"
	.zero	7
	.long -432680778
	.long 2
	.long MM_LReel+220
	.long 9
	.ascii	"LONGREAL"
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
	.long LReel__Initialize
	.long MM_LReel+232
	.long MI_LReel+48
	.long LReel__GenDesc
	.long MM_LReel+243
	.zero	4
	.long LReel__GenMap
	.long MM_LReel+251
	.zero	4
	.long LReel__FPrinter
	.long MM_LReel+258
	.zero	4
	.long LReel__InitCoster
	.long MM_LReel+267
	.zero	4
	.long LReel__Compiler
	.long MM_LReel+278
	.zero	4
	.long LReel__Check
	.long MM_LReel+287
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/LReel.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"LReel.T"
	.zero	1
	.ascii	"LReel.P"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
