	.file	"Atom.mc"
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
	.type	 Atom__FromText,@function
Atom__FromText:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl $0,-4(%ebp)
	movl MM_Atom+252,%eax
	movl %eax,-8(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L2:
	movl $6,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%ecx
	movl %ecx,RTThread__handlerStack
	cmpl $0,MM_Atom+260
	jne .L3
	movl MM_Atom+316,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,MM_Atom+260
	addl $4,%esp
.L3:
	movl MM_Atom+260,%eax
	testl %eax,%eax
	jne .L4
	pushl $548
	call _m3_fault
	.align 16
.L4:
	movl %ebx,(%eax)
	pushl %ebx
	movl MI_Text+80,%eax
	call *%eax
	movl MM_Atom+260,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L5
	pushl $564
	call _m3_fault
	.align 16
.L5:
	movl %eax,4(%edx)
	movl MM_Atom+256,%edx
	movl (%edx),%eax
	leal -4(%ebp),%ebx
	movl 4(%eax),%eax
	pushl %ebx
	pushl $MM_Atom+260
	pushl %edx
	call *%eax
	movl %eax,%edx
	addl $12,%esp
	testl %edx,%edx
	jne .L7
	movl MM_Atom+260,%eax
	movl %edx,MM_Atom+260
	movl MM_Atom+256,%edx
	movl %eax,-4(%ebp)
	movl (%edx),%eax
	movl 8(%eax),%eax
	pushl %ebx
	pushl %ebx
	pushl %edx
	call *%eax
	addl $12,%esp
.L7:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -8(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl -4(%ebp),%eax
	movl -20(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Atom__FromText,.Lfe1-Atom__FromText
	.align 16
	.type	 Atom__ToText,@function
Atom__ToText:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L9
	pushl $756
	call _m3_fault
	.align 16
.L9:
	movl (%eax),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Atom__ToText,.Lfe2-Atom__ToText
	.align 16
	.type	 Atom__Hash,@function
Atom__Hash:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	jne .L11
	pushl $836
	call _m3_fault
	.align 16
.L11:
	movl 4(%eax),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Atom__Hash,.Lfe3-Atom__Hash
	.align 16
	.type	 Atom__TblEqual,@function
Atom__TblEqual:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 12(%ebp),%eax
	movl 16(%ebp),%edx
	movl $1,%ebx
	movl (%eax),%ecx
	movl (%edx),%edx
	cmpl %edx,%ecx
	je .L13
	testl %ecx,%ecx
	jne .L14
	pushl $964
	call _m3_fault
	.align 16
.L14:
	testl %edx,%edx
	jne .L15
	pushl $964
	call _m3_fault
	.align 16
.L15:
	movl 4(%edx),%eax
	cmpl %eax,4(%ecx)
	jne .L16
	movl (%edx),%eax
	pushl %eax
	movl (%ecx),%eax
	pushl %eax
	movl MI_Text+48,%eax
	call *%eax
	testl %eax,%eax
	jne .L13
.L16:
	xorl %ebx,%ebx
.L13:
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Atom__TblEqual,.Lfe4-Atom__TblEqual
	.align 16
	.type	 Atom__Equal,@function
Atom__Equal:
	pushl %ebp
	movl %esp,%ebp
	movl 12(%ebp),%eax
	cmpl %eax,8(%ebp)
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Atom__Equal,.Lfe5-Atom__Equal
	.align 16
	.type	 Atom__Compare,@function
Atom__Compare:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.L21:
	movl $5,-4(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	leal -8(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl $0
	pushl $MM_Atom+268
	movl MI_RTHooks+52,%eax
	call *%eax
.L22:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Atom__Compare,.Lfe6-Atom__Compare
	.align 16
	.type	 _INITM_Atom,@function
_INITM_Atom:
	pushl %ebp
	movl %esp,%ebp
	movl $0,MM_Atom+252
	movl $0,MM_Atom+256
	movl MM_Atom+324,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl %edx,MM_Atom+252
	movl MM_Atom+332,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edx
	movl (%edx),%eax
	movl 24(%eax),%eax
	pushl $0
	pushl %edx
	call *%eax
	movl %eax,MM_Atom+256
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 _INITM_Atom,.Lfe7-_INITM_Atom
	.align 16
	.type	 M_Atom_t10bd4f82_LINK,@function
M_Atom_t10bd4f82_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_Atom+332,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MM_Atom+264,%eax
	movl %eax,28(%edx)
	popl %ebp
	ret
.Lfe8:
	.size	 M_Atom_t10bd4f82_LINK,.Lfe8-M_Atom_t10bd4f82_LINK
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Atom
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe9:
	.size	 _m3_fault,.Lfe9-_m3_fault
.globl MM_Atom
.data
	.align 4
	.type	 MM_Atom,@object
	.size	 MM_Atom,680
MM_Atom:
	.long MM_Atom+490
	.long MM_Atom+44
	.long MM_Atom+316
	.long MM_Atom+304
	.zero	4
	.long MM_Atom+396
	.zero	4
	.long MM_Atom+484
	.long MM_Atom+484
	.zero	4
	.long _INITM_Atom
	.zero	8
	.long -1626895697
.byte 208
.byte 52
.byte 15
.byte 132
.byte 127
.byte 190
.byte 8
.byte 27
	.long 1
	.zero	4
	.long 8
	.long 4
	.zero	20
	.long MM_Atom+647
	.long MM_Atom+650
	.long MM_Atom+652
	.zero	24
	.long MM_Atom+661
	.long MM_Atom+670
	.long MM_Atom+148
	.zero	8
	.long 280842114
.byte 207
.byte 176
.byte 246
.byte 1
.byte 77
.byte 255
.byte 75
.byte 17
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_Atom+628
	.zero	4
	.long M_Atom_t10bd4f82_LINK
	.long -1034923054
	.zero	16
	.long MM_Atom+631
	.zero	16
	.long Atom__TblEqual
	.long MM_Atom+272
	.ascii	"Atom.Error"
	.zero	2
	.long Atom__FromText
	.long Atom__ToText
	.long Atom__Equal
	.long Atom__Hash
	.long Atom__Compare
	.long -774251250
	.long -1626895697
	.zero	4
	.long MM_Atom+324
	.long -774251250
	.long MM_Atom+332
	.long 356643957
	.zero	4
	.long 280842114
	.ascii	"_INITM_Atom"
	.zero	1
	.ascii	"Compare"
	.zero	1
	.ascii	"Equal"
	.zero	1
	.ascii	"TblEqual"
	.zero	1
	.ascii	"Hash"
	.zero	1
	.ascii	"ToText"
	.zero	1
	.ascii	"FromText"
	.zero	1
	.long _INITM_Atom
	.long MM_Atom+340
	.zero	4
	.long Atom__Compare
	.long MM_Atom+352
	.long MI_Atom+60
	.long Atom__Equal
	.long MM_Atom+360
	.long MI_Atom+52
	.long Atom__TblEqual
	.long MM_Atom+366
	.zero	4
	.long Atom__Hash
	.long MM_Atom+375
	.long MI_Atom+56
	.long Atom__ToText
	.long MM_Atom+380
	.long MI_Atom+48
	.long Atom__FromText
	.long MM_Atom+387
	.long MI_Atom+44
	.zero	4
.byte 42
.byte 252
.byte 4
.byte 4
.byte 4
.byte 0
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/atom/Atom.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.ascii	"Atom.NewAtomTbl"
	.zero	1
.byte 4
.byte 14
.byte 0
.byte 4
.byte 0
.byte 3
.byte 15
.byte 2
.byte 16
.byte 116
.byte 101
.byte 248
.byte 80
.byte 7
	.ascii	"Atom-1.0"
	.zero	1
	.ascii	"Atom.T"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
