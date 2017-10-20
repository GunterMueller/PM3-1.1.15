	.file	"TargetMap.mc"
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
	.type	 TargetMap__Init,@function
TargetMap__Init:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	pushl $MI_Target+56
	pushl $0
	call TargetMap__InitI
	movl $MI_Target+92,%ebx
	pushl %ebx
	pushl $1
	call TargetMap__InitI
	pushl %ebx
	pushl $2
	call TargetMap__InitI
	pushl $MI_Target+128
	pushl $3
	call TargetMap__InitF
	addl $32,%esp
	pushl $MI_Target+176
	pushl $4
	call TargetMap__InitF
	pushl $MI_Target+224
	pushl $5
	call TargetMap__InitF
	movl $MI_Target+272,-4(%ebp)
	movl -4(%ebp),%eax
	pushl %eax
	pushl $6
	call TargetMap__InitI
	movl $MI_Target+308,-8(%ebp)
	movl -8(%ebp),%eax
	pushl %eax
	pushl $7
	call TargetMap__InitI
	addl $32,%esp
	movl $MI_Target+344,-12(%ebp)
	movl -12(%ebp),%eax
	pushl %eax
	pushl $8
	call TargetMap__InitI
	movl $MI_Target+380,-16(%ebp)
	movl -16(%ebp),%eax
	pushl %eax
	pushl $9
	call TargetMap__InitI
	movl $MI_Target+416,%esi
	pushl %esi
	pushl $10
	call TargetMap__InitI
	movl $MI_Target+452,-20(%ebp)
	movl -20(%ebp),%eax
	pushl %eax
	pushl $11
	call TargetMap__InitI
	addl $32,%esp
	movl $MI_Target+488,-24(%ebp)
	movl -24(%ebp),%eax
	pushl %eax
	pushl $12
	call TargetMap__InitI
	movl $MI_Target+524,-28(%ebp)
	movl -28(%ebp),%eax
	pushl %eax
	pushl $13
	call TargetMap__InitI
	movl $MI_Target+560,%ebx
	pushl %ebx
	pushl $14
	call TargetMap__InitI
	pushl %ebx
	pushl $15
	call TargetMap__InitI
	movb $2,MI_TargetMap+302
	movb $2,MI_TargetMap+306
	movb $2,MI_TargetMap+307
	movb $2,MI_TargetMap+308
	movb $2,MI_TargetMap+309
	movb $1,MI_TargetMap+301
	movb $1,MI_TargetMap+310
	movb $1,MI_TargetMap+311
	movb $1,MI_TargetMap+312
	movl MI_TargetMap+316,%edi
	movb $1,MI_TargetMap+313
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $36,%edi
	movl -4(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $72,%edi
	movl -20(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $108,%edi
	movl -8(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $144,%edi
	movl -24(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $180,%edi
	movl -12(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $216,%edi
	movl -28(%ebp),%esi
	cld
	movl $9,%ecx
	rep
	movsl
	movl MI_TargetMap+316,%edi
	addl $252,%edi
	movl -16(%ebp),%esi
	leal -40(%ebp),%esp
	cld
	movl $9,%ecx
	rep
	movsl
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 TargetMap__Init,.Lfe1-TargetMap__Init
	.align 16
	.type	 TargetMap__InitI,@function
TargetMap__InitI:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movb 8(%ebp),%bl
.L3:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%esi
	movl %esi,RTThread__handlerStack
	movl 12(%ebp),%edx
	xorl %ecx,%ecx
	movb %bl,%cl
	movl 8(%edx),%eax
	movl %eax,MI_TargetMap+44(,%ecx,4)
	movl 8(%edx),%eax
	sarl $3,%eax
	jns .L4
	pushl $913
	call _m3_fault
	.align 16
.L4:
	movl %eax,MI_TargetMap+108(,%ecx,4)
	movl 4(%edx),%eax
	movl %eax,MI_TargetMap+172(,%ecx,4)
	movl 16(%edx),%eax
	movl %eax,MI_TargetMap+236(,%ecx,4)
	movb %bl,MI_TargetMap+300(%ecx)
.L5:
	movl -8(%ebp),%eax
	leal -16(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 TargetMap__InitI,.Lfe2-TargetMap__InitI
	.align 16
	.type	 TargetMap__InitF,@function
TargetMap__InitF:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
.L7:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl 12(%ebp),%edx
	xorl %ecx,%ecx
	movb 8(%ebp),%cl
	movl 8(%edx),%eax
	movl %eax,MI_TargetMap+44(,%ecx,4)
	movl 8(%edx),%eax
	sarl $3,%eax
	jns .L8
	pushl $1057
	call _m3_fault
	.align 16
.L8:
	movl %eax,MI_TargetMap+108(,%ecx,4)
	movl 4(%edx),%eax
	movl %eax,MI_TargetMap+172(,%ecx,4)
	movl 12(%edx),%eax
	movl %eax,MI_TargetMap+236(,%ecx,4)
	movb 8(%ebp),%bl
	movb %bl,MI_TargetMap+300(%ecx)
	movl 12(%ebp),%esi
	xorl %eax,%eax
	movb 1(%esi),%al
	leal (%eax,%eax,2),%eax
	sall $4,%eax
	movl %eax,%edi
	addl $MI_TargetMap+320,%edi
	cld
	movl $12,%ecx
	rep
	movsl
.L9:
	movl -8(%ebp),%eax
	leal -20(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 TargetMap__InitF,.Lfe3-TargetMap__InitF
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_TargetMap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe4:
	.size	 _m3_fault,.Lfe4-_m3_fault
.globl MM_TargetMap
.data
	.align 4
	.type	 MM_TargetMap,@object
	.size	 MM_TargetMap,260
MM_TargetMap:
	.long MM_TargetMap+116
	.zero	16
	.long MM_TargetMap+76
	.zero	20
	.long TargetMap__InitI
	.long TargetMap__InitF
	.long TargetMap__Init
	.ascii	"InitF"
	.zero	1
	.ascii	"InitI"
	.zero	1
	.ascii	"Init"
	.zero	4
	.long TargetMap__InitF
	.long MM_TargetMap+56
	.zero	4
	.long TargetMap__InitI
	.long MM_TargetMap+62
	.zero	4
	.long TargetMap__Init
	.long MM_TargetMap+68
	.long MI_TargetMap+464
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3mid"
	.ascii	"dle/src/TargetMap.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
