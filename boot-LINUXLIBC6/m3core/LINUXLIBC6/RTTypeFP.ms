	.file	"RTTypeFP.mc"
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
	.type	 RTTypeFP__ToFingerprint,@function
RTTypeFP__ToFingerprint:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %eax,%eax
	jne .L2
	pushl $308
	call _m3_fault
	.align 16
.L2:
	movl 12(%eax),%ecx
	movl %ecx,-8(%ebp)
	movl 16(%eax),%eax
	movl 12(%ebp),%edx
	movl %eax,-4(%ebp)
	movl %ecx,(%edx)
	movl -4(%ebp),%eax
	movl %eax,4(%edx)
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTTypeFP__ToFingerprint,.Lfe1-RTTypeFP__ToFingerprint
	.align 16
	.type	 RTTypeFP__FromFingerprint,@function
RTTypeFP__FromFingerprint:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl (%eax),%edx
	movl %edx,-8(%ebp)
	movl 4(%eax),%eax
	movl %eax,-4(%ebp)
	cmpl $0,MM_RTTypeFP+148
	jne .L4
	call RTTypeFP__BuildFPMap
.L4:
	movl MM_RTTypeFP+148,%eax
	testl %eax,%eax
	jne .L5
	pushl $452
	call _m3_fault
	.align 16
.L5:
	movl 4(%eax),%esi
	pushl %esi
	leal -8(%ebp),%eax
	pushl %eax
	call RTTypeFP__FPHash
	movl %eax,%ebx
	addl $8,%esp
.L6:
	movl MM_RTTypeFP+148,%eax
	testl %eax,%eax
	jne .L7
	pushl $500
	call _m3_fault
	.align 16
.L7:
	cmpl %ebx,4(%eax)
	ja .L8
	pushl $498
	call _m3_fault
	.align 16
.L8:
	movl (%eax),%eax
	movl (%eax,%ebx,4),%eax
	cmpl $1048575,%eax
	je .L17
	jbe .L10
	pushl $529
	call _m3_fault
	.align 16
.L10:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L11
	pushl $548
	call _m3_fault
	.align 16
.L11:
	movl -8(%ebp),%eax
	cmpl %eax,12(%edx)
	jne .L12
	movl -4(%ebp),%eax
	cmpl %eax,16(%edx)
	jne .L12
	movl (%edx),%eax
	cmpl $1048575,%eax
	jbe .L17
	pushl $545
	call _m3_fault
	.align 16
.L12:
	incl %ebx
	cmpl %esi,%ebx
	jl .L6
	xorl %ebx,%ebx
	jmp .L6
	.align 16
.L17:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTTypeFP__FromFingerprint,.Lfe2-RTTypeFP__FromFingerprint
	.align 16
	.type	 RTTypeFP__BuildFPMap,@function
RTTypeFP__BuildFPMap:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	leal -12(%ebp),%eax
	pushl %ebx
	movl MI_RT0u+156,%ecx
	movl %ecx,-20(%ebp)
	leal (%ecx,%ecx,2),%ecx
	movl %ecx,-16(%ebp)
	leal -4(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $1,-8(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-4(%ebp)
	pushl %eax
	movl MM_RTTypeFP+168,%eax
	pushl %eax
	movl MI_RTHooks+96,%eax
	xorl %ebx,%ebx
	call *%eax
	movl %eax,%esi
	addl $8,%esp
	testl %esi,%esi
	jne .L19
	pushl $756
	call _m3_fault
	.align 16
.L19:
	movl %ebx,%edx
	movl 4(%esi),%ebx
	decl %ebx
	jmp .L20
	.align 16
.L21:
	testl %esi,%esi
	jne .L22
	pushl $772
	call _m3_fault
	.align 16
.L22:
	cmpl %edx,4(%esi)
	ja .L23
	pushl $770
	call _m3_fault
	.align 16
.L23:
	movl (%esi),%eax
	movl $1048575,(%eax,%edx,4)
	incl %edx
.L20:
	cmpl %ebx,%edx
	jle .L21
	xorl %edi,%edi
	movl -20(%ebp),%ecx
	decl %ecx
	movl %ecx,-24(%ebp)
	jmp .L25
	.align 16
.L26:
	cmpl $1048575,%edi
	jle .L27
	pushl $817
	call _m3_fault
	.align 16
.L27:
	pushl %edi
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ebx
	addl $4,%esp
	testl %ebx,%ebx
	jne .L28
	pushl $836
	call _m3_fault
	.align 16
.L28:
	cmpl $0,20(%ebx)
	jne .L32
	cmpl $0,(%ebx)
	jne .L31
.L32:
	movl -16(%ebp),%ecx
	pushl %ecx
	leal 12(%ebx),%eax
	pushl %eax
	call RTTypeFP__FPHash
	movl %eax,%edx
	addl $8,%esp
	jmp .L33
	.align 16
.L34:
	incl %edx
	cmpl %edx,-16(%ebp)
	jg .L33
	xorl %edx,%edx
.L33:
	testl %esi,%esi
	jne .L36
	pushl $868
	call _m3_fault
	.align 16
.L36:
	cmpl %edx,4(%esi)
	ja .L37
	pushl $866
	call _m3_fault
	.align 16
.L37:
	movl (%esi),%ecx
	movl %ecx,-28(%ebp)
	cmpl $1048575,(%ecx,%edx,4)
	jne .L34
	testl %ebx,%ebx
	jne .L41
	pushl $932
	call _m3_fault
	.align 16
.L41:
	movl -28(%ebp),%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx,%edx,4)
.L31:
	incl %edi
.L25:
	cmpl %edi,-24(%ebp)
	jge .L26
	leal -40(%ebp),%esp
	movl %esi,MM_RTTypeFP+148
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTTypeFP__BuildFPMap,.Lfe3-RTTypeFP__BuildFPMap
	.align 16
	.type	 RTTypeFP__FPHash,@function
RTTypeFP__FPHash:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl 12(%ebp),%edx
.L44:
	movl RTThread__handlerStack,%eax
	movl %eax,-8(%ebp)
	movl %eax,RTThread__handlerStack
	movl 8(%ebp),%eax
	movl $5,-4(%ebp)
	movl (%eax),%ecx
	xorl 4(%eax),%ecx
	movl %ecx,%eax
	pushl %eax
	pushl %edx
	call m3_mod
.L45:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTTypeFP__FPHash,.Lfe4-RTTypeFP__FPHash
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTTypeFP
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_RTTypeFP
.data
	.align 4
	.type	 MM_RTTypeFP,@object
	.size	 MM_RTTypeFP,436
MM_RTTypeFP:
	.long MM_RTTypeFP+276
	.long MM_RTTypeFP+44
	.long MM_RTTypeFP+168
	.zero	8
	.long MM_RTTypeFP+224
	.zero	28
	.long 465865088
.byte 56
.byte 84
.byte 12
.byte 24
.byte 184
.byte 221
.byte 200
.byte 3
	.zero	8
	.long 8
	.long 4
	.zero	8
	.long 1
	.long 4
	.zero	4
	.long MM_RTTypeFP+429
	.zero	48
	.long RTTypeFP__BuildFPMap
	.long RTTypeFP__FPHash
	.long RTTypeFP__ToFingerprint
	.long RTTypeFP__FromFingerprint
	.zero	4
	.long 465865088
	.ascii	"FPHash"
	.zero	1
	.ascii	"BuildFPMap"
	.zero	1
	.ascii	"FromFingerprint"
	.zero	1
	.ascii	"ToFingerprint"
	.zero	1
	.long RTTypeFP__FPHash
	.long MM_RTTypeFP+176
	.zero	4
	.long RTTypeFP__BuildFPMap
	.long MM_RTTypeFP+183
	.zero	4
	.long RTTypeFP__FromFingerprint
	.long MM_RTTypeFP+194
	.long MI_RTTypeFP+48
	.long RTTypeFP__ToFingerprint
	.long MM_RTTypeFP+210
	.long MI_RTTypeFP+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTTypeFP.m3"
	.zero	1
.byte 24
.byte 1
.byte 14
.byte 0
.byte 0
	.zero	2
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
