	.file	"Int.mc"
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
	.type	 Int__Check,@function
Int__Check:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+96,%edx
	movl 8(%ebp),%eax
	movl %ebp,%esp
	movl %edx,16(%eax)
	movl %edx,20(%eax)
	movl MI_Target+100,%edx
	movl %edx,24(%eax)
	movb $2,33(%eax)
	movb $2,32(%eax)
	movb $2,34(%eax)
	movb 35(%eax),%dl
	andb $252,%dl
	andl $255,%edx
	orb $4,%dl
	movb %dl,35(%eax)
	movl $5,28(%eax)
	popl %ebp
	ret
.Lfe1:
	.size	 Int__Check,.Lfe1-Int__Check
	.align 16
	.type	 Int__Compiler,@function
Int__Compiler:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Int__Compiler,.Lfe2-Int__Compiler
	.align 16
	.type	 Int__InitCoster,@function
Int__InitCoster:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Int__InitCoster,.Lfe3-Int__InitCoster
	.align 16
	.type	 Int__FPrinter,@function
Int__FPrinter:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	movl $MM_Int+180,(%eax)
	movl 12(%ebp),%eax
	movl %ebp,%esp
	movl $0,8(%eax)
	popl %ebp
	ret
.Lfe4:
	.size	 Int__FPrinter,.Lfe4-Int__FPrinter
	.align 16
	.type	 Int__GenMap,@function
Int__GenMap:
	pushl %ebp
	movl %esp,%ebp
	movl MI_Target+108,%edx
	movl MI_Target+96,%eax
	movl 12(%ebp),%ecx
	cmpl %eax,16(%ebp)
	je .L6
	pushl $976
	call _m3_fault
	.align 16
.L6:
	cmpb $0,20(%ebp)
	jne .L5
	cmpl $4,%edx
	jne .L9
	pushl $0
	pushl $14
	jmp .L13
	.align 16
.L9:
	cmpl $8,%edx
	jne .L10
	pushl $0
	pushl $15
	jmp .L13
	.align 16
.L10:
	cmpl $2,%edx
	jne .L11
	pushl $0
	pushl $13
	jmp .L13
	.align 16
.L11:
	cmpl $1,%edx
	jne .L12
	pushl $0
	pushl $12
.L13:
	pushl %ecx
	movl MI_TipeMap+52,%eax
	call *%eax
	jmp .L5
	.align 16
.L12:
	pushl $1072
	call _m3_fault
	.align 16
.L5:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Int__GenMap,.Lfe5-Int__GenMap
	.align 16
	.type	 Int__GenDesc,@function
Int__GenDesc:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $7
	movl MI_TipeDesc+52,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Int__GenDesc,.Lfe6-Int__GenDesc
	.align 16
	.type	 Int__Initialize,@function
Int__Initialize:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Int+200,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MI_Int+44
	pushl $2
	pushl %eax
	movl MI_TypeRep+148,%eax
	call *%eax
	pushl $1
	movl MI_Int+44,%eax
	pushl %eax
	pushl $MM_Int+212
	movl MI_Tipe+48,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Int__Initialize,.Lfe7-Int__Initialize
	.align 16
	.type	 M_Int_tfe493142_LINK,@function
M_Int_tfe493142_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Int+200,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Int+148,%eax
	movl %eax,4(%edx)
	movl MI_TypeRep+172,%eax
	movl %eax,8(%edx)
	movl MI_TypeRep+152,%eax
	movl %eax,12(%edx)
	movl MI_TypeRep+156,%eax
	movl %eax,16(%edx)
	movl MM_Int+152,%eax
	movl %eax,20(%edx)
	movl MM_Int+156,%eax
	movl %eax,24(%edx)
	movl MI_TypeRep+160,%eax
	movl %eax,28(%edx)
	movl MM_Int+164,%eax
	movl %eax,32(%edx)
	movl MM_Int+168,%eax
	movl %eax,36(%edx)
	movl MM_Int+160,%eax
	movl %eax,40(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_Int_tfe493142_LINK,.Lfe8-M_Int_tfe493142_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Int
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_Int
.data
	.align 4
	.type	 MM_Int,@object
	.size	 MM_Int,544
MM_Int:
	.long MM_Int+380
	.long MM_Int+44
	.long MM_Int+200
	.zero	8
	.long MM_Int+292
	.zero	28
	.long -28757694
.byte 145
.byte 227
.byte 204
.byte 248
.byte 211
.byte 210
.byte 133
.byte 6
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_Int+527
	.zero	4
	.long M_Int_tfe493142_LINK
	.long -2121051098
	.zero	12
	.long MM_Int+530
	.long MM_Int+536
	.zero	4
	.long Int__Check
	.long Int__Compiler
	.long Int__InitCoster
	.long Int__FPrinter
	.long Int__GenMap
	.long Int__GenDesc
	.long Int__Initialize
	.long 2
	.long MM_Int+188
	.long 9
	.ascii	"$integer"
	.zero	8
	.long -28757694
	.long 2
	.long MM_Int+220
	.long 8
	.ascii	"INTEGER"
	.zero	1
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
	.long Int__Initialize
	.long MM_Int+228
	.long MI_Int+48
	.long Int__GenDesc
	.long MM_Int+239
	.zero	4
	.long Int__GenMap
	.long MM_Int+247
	.zero	4
	.long Int__FPrinter
	.long MM_Int+254
	.zero	4
	.long Int__InitCoster
	.long MM_Int+263
	.zero	4
	.long Int__Compiler
	.long MM_Int+274
	.zero	4
	.long Int__Check
	.long MM_Int+283
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/builtinTypes/Int.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"Int.T"
	.zero	1
	.ascii	"Int.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
