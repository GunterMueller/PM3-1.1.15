	.file	"RTHeap.mc"
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
	.type	 RTHeap__GetDataAdr,@function
RTHeap__GetDataAdr:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,%eax
	testl %ebx,%ebx
	je .L2
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
.L2:
	cmpl $1048575,%eax
	jle .L3
	pushl $337
	call _m3_fault
	.align 16
.L3:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %ebx,%ebx
	jne .L4
	call RTHeap__Die
	pushl $384
	call _m3_fault
	.align 16
.L4:
	testl %eax,%eax
	jne .L5
	pushl $404
	call _m3_fault
	.align 16
.L5:
	cmpl $0,52(%eax)
	je .L7
	leal 4(%ebx),%eax
	jmp .L10
	.align 16
.L7:
	cmpl $0,44(%eax)
	je .L8
	movl (%ebx),%eax
	jmp .L10
	.align 16
.L8:
	movl %ebx,%eax
.L10:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RTHeap__GetDataAdr,.Lfe1-RTHeap__GetDataAdr
	.align 16
	.type	 RTHeap__GetDataSize,@function
RTHeap__GetDataSize:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%edi
	movl %edi,%eax
	testl %edi,%edi
	je .L12
	movl -4(%edi),%eax
	sall $11,%eax
	shrl $12,%eax
.L12:
	cmpl $1048575,%eax
	jle .L13
	pushl $657
	call _m3_fault
	.align 16
.L13:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	addl $4,%esp
	testl %edi,%edi
	jne .L14
	call RTHeap__Die
	pushl $736
	call _m3_fault
	.align 16
.L14:
	testl %eax,%eax
	jne .L15
	pushl $756
	call _m3_fault
	.align 16
.L15:
	movl 52(%eax),%ecx
	testl %ecx,%ecx
	je .L19
	movl 28(%eax),%eax
	addl $-4,%eax
	jns .L30
	pushl $769
	call _m3_fault
	.align 16
.L19:
	movl 44(%eax),%ebx
	testl %ebx,%ebx
	jne .L20
	movl 28(%eax),%eax
	testl %eax,%eax
	jge .L30
	pushl $801
	call _m3_fault
	.align 16
.L20:
	movl $1,%esi
	leal 4(%edi),%edx
	decl %ebx
	jmp .L24
	.align 16
.L25:
	testl %edx,%edx
	jne .L26
	pushl $884
	call _m3_fault
	.align 16
.L26:
	imull (%edx),%esi
	addl $4,%edx
	incl %ecx
.L24:
	cmpl %ebx,%ecx
	jle .L25
	testl %eax,%eax
	jne .L28
	pushl $932
	call _m3_fault
	.align 16
.L28:
	movl 48(%eax),%eax
	imull %esi,%eax
	testl %eax,%eax
	jge .L29
	pushl $929
	call _m3_fault
	.align 16
.L29:
.L30:
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RTHeap__GetDataSize,.Lfe2-RTHeap__GetDataSize
	.align 16
	.type	 RTHeap__GetArrayShape,@function
RTHeap__GetArrayShape:
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl %ebx,%eax
	testl %ebx,%ebx
	je .L32
	movl -4(%ebx),%eax
	sall $11,%eax
	shrl $12,%eax
.L32:
	cmpl $1048575,%eax
	jle .L33
	pushl $1137
	call _m3_fault
	.align 16
.L33:
	pushl %eax
	movl MI_RTType+60,%eax
	call *%eax
	movl %eax,%ecx
	addl $4,%ebx
	addl $4,%esp
	testl %ecx,%ecx
	jne .L34
	pushl $1188
	call _m3_fault
	.align 16
.L34:
	movl 12(%ebp),%eax
	movl 4(%eax),%edx
	movl 44(%ecx),%eax
	cmpl %edx,%eax
	jle .L35
	movl %edx,%eax
.L35:
	xorl %ecx,%ecx
	leal -1(%eax),%esi
	jmp .L36
	.align 16
.L37:
	movl 12(%ebp),%eax
	cmpl %ecx,4(%eax)
	ja .L38
	pushl $1202
	call _m3_fault
	.align 16
.L38:
	testl %ebx,%ebx
	jne .L39
	pushl $1204
	call _m3_fault
	.align 16
.L39:
	movl (%eax),%edx
	movl (%ebx),%eax
	addl $4,%ebx
	movl %eax,(%edx,%ecx,4)
	incl %ecx
.L36:
	cmpl %esi,%ecx
	jle .L37
	leal -8(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 RTHeap__GetArrayShape,.Lfe3-RTHeap__GetArrayShape
	.align 16
	.type	 RTHeap__Die,@function
RTHeap__Die:
	pushl %ebp
	movl %esp,%ebp
	pushl $0
	pushl $0
	pushl $MM_RTHeap+168
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RTHeap__Die,.Lfe4-RTHeap__Die
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RTHeap
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe5:
	.size	 _m3_fault,.Lfe5-_m3_fault
.globl MM_RTHeap
.data
	.align 4
	.type	 MM_RTHeap,@object
	.size	 MM_RTHeap,464
MM_RTHeap:
	.long MM_RTHeap+308
	.long MM_RTHeap+44
	.zero	12
	.long MM_RTHeap+256
	.zero	28
	.long 690206623
.byte 228
.byte 52
.byte 218
.byte 38
.byte 123
.byte 131
.byte 249
.byte 15
	.zero	8
	.long 4
	.long 4
	.zero	20
	.long MM_RTHeap+459
	.zero	44
	.long RTHeap__Die
	.long RTHeap__GetDataAdr
	.long RTHeap__GetDataSize
	.long RTHeap__GetArrayShape
	.long 2
	.long MM_RTHeap+176
	.long 33
	.ascii	"NIL ref passed to RTHeap.GetData"
	.zero	4
	.ascii	"Die"
	.zero	1
	.ascii	"GetArrayShape"
	.zero	1
	.ascii	"GetDataSize"
	.zero	1
	.ascii	"GetDataAdr"
	.zero	4
	.long RTHeap__Die
	.long MM_RTHeap+212
	.zero	4
	.long RTHeap__GetArrayShape
	.long MM_RTHeap+216
	.long MI_RTHeap+52
	.long RTHeap__GetDataSize
	.long MM_RTHeap+230
	.long MI_RTHeap+48
	.long RTHeap__GetDataAdr
	.long MM_RTHeap+242
	.long MI_RTHeap+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/runtime/common/RTHeap.m3"
	.zero	1
.byte 5
.byte 0
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
