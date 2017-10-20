	.file	"FmtTime.mc"
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
	.type	 FmtTime__Long,@function
FmtTime__Long:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 16(%ebp),%eax
	leal -24(%ebp),%ebx
	pushl %ebx
	pushl %eax
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_Date+52,%eax
	call *%eax
	pushl %ebx
	call FmtTime__DateLong
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FmtTime__Long,.Lfe1-FmtTime__Long
	.align 16
	.type	 FmtTime__Short,@function
FmtTime__Short:
	pushl %ebp
	movl %esp,%ebp
	subl $24,%esp
	pushl %ebx
	movl 16(%ebp),%eax
	leal -24(%ebp),%ebx
	pushl %ebx
	pushl %eax
	movl 12(%ebp),%eax
	movl 8(%ebp),%edx
	pushl %eax
	pushl %edx
	movl MI_Date+52,%eax
	call *%eax
	pushl %ebx
	call FmtTime__DateShort
	movl -28(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FmtTime__Short,.Lfe2-FmtTime__Short
	.align 16
	.type	 FmtTime__DateLong,@function
FmtTime__DateLong:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-72(%ebp)
	movb 20(%eax),%al
	andl $255,%eax
	movl MI_FmtTime+108(,%eax,4),%eax
	pushl %eax
	leal -72(%ebp),%ebx
	pushl %ebx
	call FmtTime__AddText
	movl 8(%ebp),%eax
	movb 4(%eax),%al
	andl $255,%eax
	movl MI_FmtTime+60(,%eax,4),%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddText
	pushl $32
	pushl $32
	pushl $2
	movl 8(%ebp),%eax
	movb 5(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	addl $36,%esp
	pushl $58
	pushl $48
	pushl $2
	movl 8(%ebp),%eax
	movb 6(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	pushl $58
	pushl $48
	pushl $2
	movl 8(%ebp),%eax
	movb 7(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	addl $40,%esp
	pushl $32
	pushl $48
	pushl $2
	movl 8(%ebp),%eax
	movb 8(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddText
	pushl $32
	pushl $32
	pushl $4
	movl 8(%ebp),%eax
	movl (%eax),%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	movl -72(%ebp),%eax
	decl %eax
	addl $48,%esp
	testl %eax,%eax
	jge .L4
	pushl $801
	call _m3_fault
	.align 16
.L4:
	cmpl $66,%eax
	jle .L5
	pushl $801
	call _m3_fault
	.align 16
.L5:
	movl %eax,-76(%ebp)
	leal -68(%ebp),%edx
	movl %edx,-80(%ebp)
	leal -80(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl -84(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 FmtTime__DateLong,.Lfe3-FmtTime__DateLong
	.align 16
	.type	 FmtTime__DateShort,@function
FmtTime__DateShort:
	pushl %ebp
	movl %esp,%ebp
	subl $80,%esp
	pushl %ebx
	movl 8(%ebp),%eax
	movl $0,-72(%ebp)
	movb 4(%eax),%al
	andl $255,%eax
	movl MI_FmtTime+60(,%eax,4),%eax
	pushl %eax
	leal -72(%ebp),%ebx
	pushl %ebx
	call FmtTime__AddText
	pushl $32
	pushl $32
	pushl $2
	movl 8(%ebp),%eax
	movb 5(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	pushl $58
	pushl $48
	pushl $2
	movl 8(%ebp),%eax
	movb 6(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	addl $48,%esp
	pushl $32
	pushl $48
	pushl $2
	movl 8(%ebp),%eax
	movb 7(%eax),%al
	andl $255,%eax
	pushl %eax
	pushl %ebx
	call FmtTime__AddInt
	movl -72(%ebp),%eax
	decl %eax
	addl $20,%esp
	testl %eax,%eax
	jge .L7
	pushl $977
	call _m3_fault
	.align 16
.L7:
	cmpl $66,%eax
	jle .L8
	pushl $977
	call _m3_fault
	.align 16
.L8:
	movl %eax,-76(%ebp)
	leal -68(%ebp),%edx
	movl %edx,-80(%ebp)
	leal -80(%ebp),%eax
	pushl %eax
	movl MI_Text+76,%eax
	call *%eax
	movl -84(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 FmtTime__DateShort,.Lfe4-FmtTime__DateShort
	.align 16
	.type	 FmtTime__AddText,@function
FmtTime__AddText:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
	movl $66,%eax
	pushl %ebx
	movl 8(%ebp),%ecx
	movl 12(%ebp),%ebx
	subl (%ecx),%eax
	jns .L10
	pushl $1057
	call _m3_fault
	.align 16
.L10:
	movl %eax,-4(%ebp)
	movl (%ecx),%edx
	testl %edx,%edx
	jge .L11
	pushl $1057
	call _m3_fault
	.align 16
.L11:
	addl %edx,%eax
	cmpl $66,%eax
	jle .L12
	pushl $1057
	call _m3_fault
	.align 16
.L12:
	leal 4(%ecx,%edx),%eax
	movl %eax,-8(%ebp)
	pushl %ebx
	leal -8(%ebp),%eax
	pushl %eax
	movl MI_Text+68,%eax
	call *%eax
	pushl %ebx
	movl MI_Text+56,%eax
	call *%eax
	movl 8(%ebp),%edx
	addl %eax,(%edx)
	movl 8(%ebp),%edx
	addl $12,%esp
	movl (%edx),%eax
	cmpl $65,%eax
	jbe .L13
	pushl $1089
	call _m3_fault
	.align 16
.L13:
	movb $32,4(%edx,%eax)
	movl 8(%ebp),%edx
	incl (%edx)
	movl -12(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FmtTime__AddText,.Lfe5-FmtTime__AddText
	.align 16
	.type	 FmtTime__AddInt,@function
FmtTime__AddInt:
	pushl %ebp
	movl %esp,%ebp
	subl $52,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 12(%ebp),%edx
	movl 16(%ebp),%esi
.L15:
	movl $5,-40(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-44(%ebp)
	leal -44(%ebp),%ebx
	movl %ebx,RTThread__handlerStack
	leal -36(%ebp),%ebx
	movl %ebx,-52(%ebp)
	movl $33,-48(%ebp)
	pushl $0
	pushl $10
	pushl %edx
	leal -52(%ebp),%eax
	pushl %eax
	movl MI_Convert+64,%eax
	call *%eax
	addl $16,%esp
	jmp .L16
	.align 16
.L17:
	movl 8(%ebp),%ecx
	movl (%ecx),%edx
	cmpl $65,%edx
	jbe .L18
	pushl $1249
	call _m3_fault
	.align 16
.L18:
	movb 20(%ebp),%bl
	movb %bl,4(%ecx,%edx)
	movl 8(%ebp),%edx
	decl %esi
	incl (%edx)
.L16:
	cmpl %eax,%esi
	jg .L17
	xorl %ecx,%ecx
	leal -1(%eax),%esi
	jmp .L20
	.align 16
.L21:
	movl 8(%ebp),%edi
	movl (%edi),%edx
	cmpl $65,%edx
	jbe .L22
	pushl $1313
	call _m3_fault
	.align 16
.L22:
	cmpl $32,%ecx
	jle .L23
	pushl $1313
	call _m3_fault
	.align 16
.L23:
	movb -36(%ecx,%ebp),%al
	movb %al,4(%edi,%edx)
	movl 8(%ebp),%edx
	incl %ecx
	incl (%edx)
.L20:
	cmpl %esi,%ecx
	jle .L21
	movl 8(%ebp),%edx
	movl (%edx),%eax
	cmpl $65,%eax
	jbe .L25
	pushl $1345
	call _m3_fault
	.align 16
.L25:
	movb 24(%ebp),%bl
	movb %bl,4(%edx,%eax)
	movl 8(%ebp),%edx
	incl (%edx)
.L26:
	movl -44(%ebp),%eax
	leal -64(%ebp),%esp
	movl %eax,RTThread__handlerStack
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FmtTime__AddInt,.Lfe6-FmtTime__AddInt
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FmtTime
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe7:
	.size	 _m3_fault,.Lfe7-_m3_fault
.globl MM_FmtTime
.data
	.align 4
	.type	 MM_FmtTime,@object
	.size	 MM_FmtTime,344
MM_FmtTime:
	.long MM_FmtTime+192
	.zero	16
	.long MM_FmtTime+116
	.zero	20
	.long FmtTime__AddText
	.long FmtTime__AddInt
	.long FmtTime__Long
	.long FmtTime__Short
	.long FmtTime__DateLong
	.long FmtTime__DateShort
	.ascii	"AddInt"
	.zero	1
	.ascii	"AddText"
	.zero	1
	.ascii	"DateShort"
	.zero	1
	.ascii	"DateLong"
	.zero	1
	.ascii	"Short"
	.zero	1
	.ascii	"Long"
	.zero	4
	.long FmtTime__AddInt
	.long MM_FmtTime+68
	.zero	4
	.long FmtTime__AddText
	.long MM_FmtTime+75
	.zero	4
	.long FmtTime__DateShort
	.long MM_FmtTime+83
	.long MI_FmtTime+56
	.long FmtTime__DateLong
	.long MM_FmtTime+93
	.long MI_FmtTime+52
	.long FmtTime__Short
	.long MM_FmtTime+102
	.long MI_FmtTime+48
	.long FmtTime__Long
	.long MM_FmtTime+108
	.long MI_FmtTime+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/time/Common/FmtTime.m3"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
