	.file	"RdCopy.mc"
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
	.type	 RdCopy__ToWriter__PutString.0,@function
RdCopy__ToWriter__PutString.0:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%edx
	movl 8(%ebp),%eax
	pushl %eax
	movl -16(%edx),%eax
	movl 4(%eax),%eax
	pushl %eax
	movl MI_Wr+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 RdCopy__ToWriter__PutString.0,.Lfe1-RdCopy__ToWriter__PutString.0
	.align 16
	.type	 RdCopy__ToWriter,@function
RdCopy__ToWriter:
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 16(%ebp),%edx
	leal 8(%ebp),%ebx
	movl %ebx,-16(%ebp)
.L2:
	movl $MM_RdCopy+56,-4(%ebp)
	movl $4,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	movl $RdCopy__ToWriter__PutString.0,-24(%ebp)
	movl $-1,-28(%ebp)
	movl %ebp,-20(%ebp)
	pushl %edx
	leal -28(%ebp),%eax
	pushl %eax
	pushl %ecx
	call RdCopy__ToProc
	movl %eax,%edx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %edx,%eax
.L4:
	movl -32(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 RdCopy__ToWriter,.Lfe2-RdCopy__ToWriter
	.align 16
	.type	 M_RdCopy_LINE_55.1,@function
M_RdCopy_LINE_55.1:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -28(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_RdClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 M_RdCopy_LINE_55.1,.Lfe3-M_RdCopy_LINE_55.1
	.align 16
	.type	 RdCopy__ToProc,@function
RdCopy__ToProc:
	pushl %ebp
	movl %esp,%ebp
	subl $44,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%edi
	pushl %ebx
	movl %edi,-28(%ebp)
	movl $0,-32(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_RdClass+148,%eax
	call *%eax
	movl $M_RdCopy_LINE_55.1,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L6:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%edi
	movl %edi,RTThread__handlerStack
.L7:
	movl MI_Thread+208,%eax
	call *%eax
	testl %eax,%eax
	je .L8
	pushl $0
	pushl $MI_Thread+184
	movl MI_RTHooks+52,%eax
	call *%eax
	addl $8,%esp
.L8:
	movl 8(%ebp),%ecx
	testl %ecx,%ecx
	jne .L10
	pushl $692
	call _m3_fault
	.align 16
.L10:
	movl MM_RdCopy+72,%eax
	movl 16(%ebp),%ebx
	movl 24(%eax),%edx
	subl -32(%ebp),%ebx
	movl 16(%edx,%ecx),%edi
	movl %edi,-44(%ebp)
	movl 12(%edx,%ecx),%eax
	subl %edi,%eax
	cmpl %ebx,%eax
	jle .L11
	movl %ebx,%eax
.L11:
	movl %eax,%esi
	testl %esi,%esi
	jle .L12
	movl (%edx,%ecx),%ebx
	testl %ebx,%ebx
	jne .L14
	pushl $724
	call _m3_fault
	.align 16
.L14:
	movl %ebx,-36(%ebp)
	movl -44(%ebp),%eax
	addl 4(%edx,%ecx),%eax
	subl 8(%edx,%ecx),%eax
	movl %eax,%edx
	testl %edx,%edx
	jge .L18
	pushl $721
	call _m3_fault
	.align 16
.L18:
	movl %esi,-20(%ebp)
	movl -36(%ebp),%edi
	leal (%esi,%edx),%eax
	subl 4(%edi),%eax
	testl %eax,%eax
	jle .L20
	pushl $721
	call _m3_fault
	.align 16
.L20:
	addl (%ebx),%edx
	movl %edx,-24(%ebp)
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L21
	cmpl $-1,(%edx)
	jne .L21
	movl 8(%edx),%edi
	movl %edi,-40(%ebp)
	movl 4(%edx),%edx
.L21:
	leal -24(%ebp),%eax
	pushl %eax
	movl -40(%ebp),%ecx
	call *%edx
	addl %esi,-32(%ebp)
	movl 8(%ebp),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L23
	pushl $756
	call _m3_fault
	.align 16
.L23:
	movl MM_RdCopy+72,%eax
	addl 24(%eax),%edx
	movl 16(%edx),%eax
	addl %esi,%eax
	jns .L24
	pushl $753
	call _m3_fault
	.align 16
.L24:
	movl %eax,16(%edx)
.L12:
	movl 16(%ebp),%edi
	cmpl %edi,-32(%ebp)
	je .L28
	movl 8(%ebp),%ecx
	movl MM_RdCopy+72,%ebx
	movl (%ecx),%edx
	movl 36(%ebx),%eax
	movl (%eax,%edx),%edx
	testl %ecx,%ecx
	jne .L26
	pushl $804
	call _m3_fault
	.align 16
.L26:
	pushl $0
	movl 24(%ebx),%eax
	movl 16(%eax,%ecx),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $12,%esp
	cmpl $2,%eax
	jne .L7
.L28:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RdCopy_LINE_55.1
.L29:
	cmpl $0,-32(%ebp)
	jge .L31
	pushl $913
	call _m3_fault
	.align 16
.L31:
	leal -56(%ebp),%esp
	movl -32(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 RdCopy__ToProc,.Lfe4-RdCopy__ToProc
	.align 16
	.type	 M_RdCopy_LINE_85.2,@function
M_RdCopy_LINE_85.2:
	pushl %ebp
	movl %esp,%ebp
	movl %ecx,-4(%ebp)
	movl -4(%ebp),%eax
	movl -28(%eax),%eax
	subl $4,%esp
	movl (%eax),%eax
	pushl %eax
	movl MI_WrClass+152,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 M_RdCopy_LINE_85.2,.Lfe5-M_RdCopy_LINE_85.2
	.align 16
	.type	 RdCopy__FromProc,@function
RdCopy__FromProc:
	pushl %ebp
	movl %esp,%ebp
	subl $48,%esp
	pushl %edi
	pushl %esi
	leal 8(%ebp),%esi
	pushl %ebx
	movl %esi,-28(%ebp)
	movl $0,-32(%ebp)
	movl 8(%ebp),%eax
	pushl %eax
	movl MI_WrClass+148,%eax
	call *%eax
	movl $M_RdCopy_LINE_85.2,-8(%ebp)
	movl %ebp,-4(%ebp)
	addl $4,%esp
.L33:
	movl $3,-12(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-16(%ebp)
	leal -16(%ebp),%esi
	movl %esi,RTThread__handlerStack
.L34:
	movl 8(%ebp),%ebx
	testl %ebx,%ebx
	jne .L36
	pushl $1140
	call _m3_fault
	.align 16
.L36:
	movl MM_RdCopy+80,%eax
	movl 24(%eax),%ecx
	movl 16(%ebp),%eax
	subl -32(%ebp),%eax
	movl 16(%ecx,%ebx),%esi
	movl %esi,-36(%ebp)
	movl 12(%ecx,%ebx),%edx
	subl %esi,%edx
	cmpl %eax,%edx
	jle .L37
	movl %eax,%edx
.L37:
	movl %edx,%edi
	testl %edi,%edi
	jle .L38
	movl (%ecx,%ebx),%esi
	movl %esi,-48(%ebp)
	testl %esi,%esi
	jne .L40
	pushl $1172
	call _m3_fault
	.align 16
.L40:
	movl -48(%ebp),%esi
	movl %esi,-40(%ebp)
	movl -36(%ebp),%eax
	addl 4(%ecx,%ebx),%eax
	subl 8(%ecx,%ebx),%eax
	jns .L44
	pushl $1169
	call _m3_fault
	.align 16
.L44:
	movl %eax,%edx
	movl %edi,-20(%ebp)
	movl -40(%ebp),%esi
	leal (%edi,%edx),%eax
	subl 4(%esi),%eax
	testl %eax,%eax
	jle .L46
	pushl $1169
	call _m3_fault
	.align 16
.L46:
	movl -48(%ebp),%esi
	addl (%esi),%edx
	movl %edx,-24(%ebp)
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L47
	cmpl $-1,(%edx)
	jne .L47
	movl 8(%edx),%esi
	movl %esi,-44(%ebp)
	movl 4(%edx),%edx
.L47:
	leal -24(%ebp),%eax
	pushl %eax
	movl -44(%ebp),%ecx
	call *%edx
	movl %eax,%ecx
	addl %ecx,-32(%ebp)
	movl 8(%ebp),%edx
	addl $4,%esp
	testl %edx,%edx
	jne .L49
	pushl $1220
	call _m3_fault
	.align 16
.L49:
	movl MM_RdCopy+80,%eax
	addl 24(%eax),%edx
	addl %ecx,16(%edx)
	cmpl %edi,%ecx
	jne .L51
.L38:
	movl 16(%ebp),%esi
	cmpl %esi,-32(%ebp)
	je .L51
	movl 8(%ebp),%ecx
	movl MM_RdCopy+80,%ebx
	movl (%ecx),%edx
	movl 36(%ebx),%eax
	movl (%eax,%edx),%edx
	testl %ecx,%ecx
	jne .L53
	pushl $1316
	call _m3_fault
	.align 16
.L53:
	movl 24(%ebx),%eax
	movl 16(%eax,%ecx),%eax
	pushl %eax
	pushl %ecx
	call *%edx
	addl $8,%esp
	jmp .L34
	.align 16
.L51:
	movl -16(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl %ebp,%ecx
	call M_RdCopy_LINE_85.2
.L54:
	cmpl $0,-32(%ebp)
	jge .L56
	pushl $1393
	call _m3_fault
	.align 16
.L56:
	leal -60(%ebp),%esp
	movl -32(%ebp),%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 RdCopy__FromProc,.Lfe6-RdCopy__FromProc
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_RdCopy
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_RdCopy
.data
	.align 4
	.type	 MM_RdCopy,@object
	.size	 MM_RdCopy,392
MM_RdCopy:
	.long MM_RdCopy+244
	.zero	4
	.long MM_RdCopy+72
	.zero	8
	.long MM_RdCopy+168
	.zero	20
	.long RdCopy__ToWriter
	.long RdCopy__ToProc
	.long RdCopy__FromProc
	.long MI_Rd+64
	.long MI_Thread+184
	.long MI_Wr+44
	.zero	4
	.long MM_RdCopy+80
	.long -1638177541
	.zero	4
	.long -1861675307
	.ascii	"FromProc"
	.zero	1
	.ascii	"M_RdCopy_LINE_85"
	.zero	1
	.ascii	"ToProc"
	.zero	1
	.ascii	"M_RdCopy_LINE_55"
	.zero	1
	.ascii	"ToWriter"
	.zero	1
	.ascii	"ToWriter.PutString"
	.zero	3
	.long RdCopy__FromProc
	.long MM_RdCopy+88
	.long MI_RdCopy+52
	.long M_RdCopy_LINE_85.2
	.long MM_RdCopy+97
	.zero	4
	.long RdCopy__ToProc
	.long MM_RdCopy+114
	.long MI_RdCopy+48
	.long M_RdCopy_LINE_55.1
	.long MM_RdCopy+121
	.zero	4
	.long RdCopy__ToWriter
	.long MM_RdCopy+138
	.long MI_RdCopy+44
	.long RdCopy__ToWriter__PutString.0
	.long MM_RdCopy+147
	.zero	8
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/rw/Common/RdCopy.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
