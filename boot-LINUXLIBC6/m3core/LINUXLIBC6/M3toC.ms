	.file	"M3toC.mc"
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
	.type	 M3toC__TtoS,@function
M3toC__TtoS:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	testl %eax,%eax
	je .L2
	cmpl $1,4(%eax)
	jg .L5
.L2:
	movl MM_M3toC+48,%eax
	jmp .L6
	.align 16
.L5:
	movl (%eax),%eax
.L6:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 M3toC__TtoS,.Lfe1-M3toC__TtoS
	.align 16
	.type	 M3toC__CopyTtoS,@function
M3toC__CopyTtoS:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	testl %esi,%esi
	je .L14
	movl 4(%esi),%ebx
	cmpl $1,%ebx
	jg .L10
.L14:
	movl MM_M3toC+48,%eax
	jmp .L13
	.align 16
.L10:
	pushl %ebx
	call malloc
	movl %eax,%edx
	addl $4,%esp
	cmpl $0,4(%esi)
	jne .L12
	pushl $642
	call _m3_fault
	.align 16
.L12:
	pushl %ebx
	movl (%esi),%eax
	pushl %eax
	pushl %edx
	call memcpy
.L13:
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 M3toC__CopyTtoS,.Lfe2-M3toC__CopyTtoS
	.align 16
	.type	 M3toC__FreeCopiedS,@function
M3toC__FreeCopiedS:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	cmpl %eax,MM_M3toC+48
	je .L15
	pushl %eax
	call free
.L15:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M3toC__FreeCopiedS,.Lfe3-M3toC__FreeCopiedS
	.align 16
	.type	 M3toC__StoT,@function
M3toC__StoT:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl MM_M3toC+280,%eax
	pushl %eax
	movl MI_RTHooks+92,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L18
	pushl $820
	call _m3_fault
	.align 16
.L18:
	movl (%ebx),%eax
	andl $-2097151,%eax
	orb $2,%al
	movl %eax,(%ebx)
	movl %esi,4(%ebx)
	pushl %esi
	call strlen
	incl %eax
	movl %eax,8(%ebx)
	leal -8(%ebp),%esp
	leal 4(%ebx),%eax
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 M3toC__StoT,.Lfe4-M3toC__StoT
	.align 16
	.type	 M3toC__CopyStoT,@function
M3toC__CopyStoT:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	pushl %edi
	call strlen
	leal 1(%eax),%esi
	leal -12(%ebp),%eax
	leal -4(%ebp),%edx
	movl %edx,-12(%ebp)
	movl $1,-8(%ebp)
	movl %esi,-4(%ebp)
	pushl %eax
	movl MM_M3toC+288,%eax
	pushl %eax
	movl MI_RTHooks+84,%eax
	call *%eax
	movl %eax,%ebx
	addl $12,%esp
	testl %ebx,%ebx
	jne .L23
	pushl $964
	call _m3_fault
	.align 16
.L23:
	cmpl $0,4(%ebx)
	jne .L24
	pushl $962
	call _m3_fault
	.align 16
.L24:
	pushl %esi
	pushl %edi
	movl (%ebx),%eax
	pushl %eax
	call memcpy
	leal -24(%ebp),%esp
	movl %ebx,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M3toC__CopyStoT,.Lfe5-M3toC__CopyStoT
	.align 16
	.type	 _INITM_M3toC,@function
_INITM_M3toC:
	pushl %ebp
	movl %esp,%ebp
	movl $MM_M3toC+44,MM_M3toC+48
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 _INITM_M3toC,.Lfe6-_INITM_M3toC
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_M3toC
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_M3toC
.data
	.align 4
	.type	 MM_M3toC,@object
	.size	 MM_M3toC,632
MM_M3toC:
	.long MM_M3toC+428
	.long MM_M3toC+52
	.long MM_M3toC+280
	.zero	8
	.long MM_M3toC+352
	.zero	16
	.long _INITM_M3toC
	.zero	16
	.long 297553783
.byte 144
.byte 49
.byte 207
.byte 22
.byte 231
.byte 126
.byte 115
.byte 7
	.zero	8
	.long 8
	.long 4
	.zero	20
	.long MM_M3toC+616
	.zero	36
	.long MM_M3toC+619
	.long MM_M3toC+156
	.zero	8
	.long -734082145
.byte 94
.byte 96
.byte 183
.byte 222
.byte 193
.byte 171
.byte 137
.byte 10
	.zero	8
	.long 12
	.long 4
	.zero	20
	.long MM_M3toC+572
	.zero	36
	.long MM_M3toC+593
	.zero	4
	.long M3toC__CopyTtoS
	.long M3toC__FreeCopiedS
	.long M3toC__TtoS
	.long M3toC__StoT
	.long M3toC__CopyStoT
	.long MM_M3toC+288
	.long -734082145
	.zero	4
	.long 1358456180
	.ascii	"_INITM_M3toC"
	.zero	1
	.ascii	"CopyStoT"
	.zero	1
	.ascii	"StoT"
	.zero	1
	.ascii	"FreeCopiedS"
	.zero	1
	.ascii	"CopyTtoS"
	.zero	1
	.ascii	"TtoS"
	.zero	4
	.long _INITM_M3toC
	.long MM_M3toC+296
	.zero	4
	.long M3toC__CopyStoT
	.long MM_M3toC+309
	.long MI_M3toC+60
	.long M3toC__StoT
	.long MM_M3toC+318
	.long MI_M3toC+56
	.long M3toC__FreeCopiedS
	.long MM_M3toC+323
	.long MI_M3toC+48
	.long M3toC__CopyTtoS
	.long MM_M3toC+335
	.long MI_M3toC+44
	.long M3toC__TtoS
	.long MM_M3toC+344
	.long MI_M3toC+52
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/C/Common/M3toC.m3"
	.zero	1
.byte 11
.byte 0
.byte 1
.byte 11
.byte 1
.byte 20
.byte 35
.byte 11
.byte 5
.byte 1
.byte 11
.byte 6
.byte 1
.byte 11
.byte 7
.byte 1
.byte 34
.byte 16
.byte 5
.byte 14
.byte 0
	.ascii	"M3toC.M3TextWithHeader"
	.zero	1
.byte 5
.byte 14
.byte 0
	.ascii	"M3toC.M3Text"
	.zero	1
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
