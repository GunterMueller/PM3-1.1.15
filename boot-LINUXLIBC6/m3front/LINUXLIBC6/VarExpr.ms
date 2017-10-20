	.file	"VarExpr.mc"
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
	.type	 VarExpr__New,@function
VarExpr__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl MM_VarExpr+180,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%edi
	pushl %edi
	movl MI_ExprRep+460,%eax
	call *%eax
	pushl $1
	pushl %ebx
	movl MI_Variable+48,%eax
	call *%eax
	movl %eax,16(%edi)
	pushl %esi
	movl MI_Type+80,%eax
	call *%eax
	movl %eax,8(%edi)
	pushl $1
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	movl 16(%edi),%eax
	pushl %eax
	movl MI_Variable+56,%eax
	call *%eax
	leal -12(%ebp),%esp
	movl %edi,%eax
	popl %ebx
	popl %esi
	popl %edi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 VarExpr__New,.Lfe1-VarExpr__New
	.align 16
	.type	 VarExpr__Obj,@function
VarExpr__Obj:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	testl %edx,%edx
	je .L6
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_VarExpr+184
	jg .L6
	movl MM_VarExpr+180,%eax
	cmpl %ecx,4(%eax)
	jl .L6
	movl 16(%edx),%eax
	jmp .L9
	.align 16
.L6:
	xorl %eax,%eax
.L9:
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 VarExpr__Obj,.Lfe2-VarExpr__Obj
	.align 16
	.type	 VarExpr__Check,@function
VarExpr__Check:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
	movl 12(%ebp),%eax
	pushl %eax
	movl 16(%edx),%eax
	pushl %eax
	movl MI_Value+44,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 VarExpr__Check,.Lfe3-VarExpr__Check
	.align 16
	.type	 VarExpr__EqCheck,@function
VarExpr__EqCheck:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%edx
	testl %edx,%edx
	je .L15
	movl -4(%edx),%eax
	sall $11,%eax
	movl %eax,%ecx
	shrl $12,%ecx
	cmpl %ecx,MM_VarExpr+184
	jg .L15
	movl MM_VarExpr+180,%eax
	cmpl %ecx,4(%eax)
	jl .L15
	movl 16(%edx),%eax
	cmpl %eax,16(%ebx)
	sete %al
	andl $255,%eax
	jmp .L18
	.align 16
.L15:
	xorl %eax,%eax
.L18:
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 VarExpr__EqCheck,.Lfe4-VarExpr__EqCheck
	.align 16
	.type	 VarExpr__NeedsAddress,@function
VarExpr__NeedsAddress:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Variable+72,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 VarExpr__NeedsAddress,.Lfe5-VarExpr__NeedsAddress
	.align 16
	.type	 VarExpr__Compile,@function
VarExpr__Compile:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Variable+84,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 VarExpr__Compile,.Lfe6-VarExpr__Compile
	.align 16
	.type	 VarExpr__CompileLV,@function
VarExpr__CompileLV:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Variable+88,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 VarExpr__CompileLV,.Lfe7-VarExpr__CompileLV
	.align 16
	.type	 VarExpr__NoteWrites,@function
VarExpr__NoteWrites:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	movl 16(%eax),%eax
	pushl %eax
	movl MI_Variable+124,%eax
	call *%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 VarExpr__NoteWrites,.Lfe8-VarExpr__NoteWrites
	.align 16
	.type	 M_VarExpr_te167a49c_LINK,@function
M_VarExpr_te167a49c_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_VarExpr+180,%eax
	movl MI_ExprRep+468,%edx
	movl 52(%eax),%eax
	movl %ebp,%esp
	movl %edx,4(%eax)
	movl MM_VarExpr+148,%edx
	movl %edx,8(%eax)
	movl MM_VarExpr+156,%edx
	movl %edx,36(%eax)
	movl MI_ExprRep+512,%ecx
	movl %ecx,52(%eax)
	movl MM_VarExpr+160,%edx
	movl %edx,56(%eax)
	movl %ecx,60(%eax)
	movl MM_VarExpr+164,%edx
	movl %edx,64(%eax)
	movl MI_ExprRep+528,%edx
	movl %edx,68(%eax)
	movl MI_ExprRep+532,%edx
	movl %edx,72(%eax)
	movl MI_ExprRep+476,%edx
	movl %edx,16(%eax)
	movl MM_VarExpr+152,%edx
	movl %edx,12(%eax)
	movl MI_ExprRep+484,%edx
	movl %edx,20(%eax)
	movl MI_ExprRep+492,%edx
	movl %edx,24(%eax)
	movl %edx,28(%eax)
	movl MI_ExprRep+488,%edx
	movl %edx,32(%eax)
	movl MI_ExprRep+500,%edx
	movl %edx,40(%eax)
	movl MI_ExprRep+504,%edx
	movl %edx,44(%eax)
	movl MI_ExprRep+508,%edx
	movl %edx,48(%eax)
	movl MM_VarExpr+168,%edx
	movl %edx,76(%eax)
	popl %ebp
	ret
.Lfe9:
	.size	 M_VarExpr_te167a49c_LINK,.Lfe9-M_VarExpr_te167a49c_LINK
.globl MM_VarExpr
.data
	.align 4
	.type	 MM_VarExpr,@object
	.size	 MM_VarExpr,520
MM_VarExpr:
	.long MM_VarExpr+352
	.long MM_VarExpr+44
	.long MM_VarExpr+180
	.zero	8
	.long MM_VarExpr+252
	.zero	28
	.long -513301348
.byte 61
.byte 211
.byte 124
.byte 229
.byte 161
.byte 119
.byte 27
.byte 4
	.long 1
	.zero	4
	.long 4
	.long 4
	.zero	4
	.long 0
	.zero	12
	.long MM_VarExpr+496
	.long MM_VarExpr+498
	.long MM_VarExpr+500
	.zero	4
	.long M_VarExpr_te167a49c_LINK
	.long -350897909
	.zero	16
	.long MM_VarExpr+508
	.zero	4
	.long VarExpr__Check
	.long VarExpr__EqCheck
	.long VarExpr__NeedsAddress
	.long VarExpr__Compile
	.long VarExpr__CompileLV
	.long VarExpr__NoteWrites
	.long VarExpr__New
	.long VarExpr__Obj
	.zero	4
	.long -513301348
	.ascii	"NoteWrites"
	.zero	1
	.ascii	"CompileLV"
	.zero	1
	.ascii	"Compile"
	.zero	1
	.ascii	"NeedsAddress"
	.zero	1
	.ascii	"EqCheck"
	.zero	1
	.ascii	"Check"
	.zero	1
	.ascii	"Obj"
	.zero	1
	.ascii	"New"
	.zero	1
	.long VarExpr__NoteWrites
	.long MM_VarExpr+188
	.zero	4
	.long VarExpr__CompileLV
	.long MM_VarExpr+199
	.zero	4
	.long VarExpr__Compile
	.long MM_VarExpr+209
	.zero	4
	.long VarExpr__NeedsAddress
	.long MM_VarExpr+217
	.zero	4
	.long VarExpr__EqCheck
	.long MM_VarExpr+230
	.zero	4
	.long VarExpr__Check
	.long MM_VarExpr+238
	.zero	4
	.long VarExpr__Obj
	.long MM_VarExpr+244
	.long MI_VarExpr+48
	.long VarExpr__New
	.long MM_VarExpr+248
	.long MI_VarExpr+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3fro"
	.ascii	"nt/src/exprs/VarExpr.m3"
	.zero	1
.byte 4
.byte 0
.byte 4
.byte 0
.byte 2
.byte 10
.byte 1
.byte 16
.byte 25
.byte 159
.byte 238
.byte 8
	.ascii	"VarExpr.P"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
