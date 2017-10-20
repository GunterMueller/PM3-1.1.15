	.file	"MProperty.mc"
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
	.type	 MProperty__New,@function
MProperty__New:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl MM_MProperty+184,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,%ebx
	movl MM_MProperty+192,%eax
	pushl %eax
	movl MI_RTHooks+80,%eax
	call *%eax
	movl %eax,8(%ebx)
	movl %ebx,%eax
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 MProperty__New,.Lfe1-MProperty__New
	.align 16
	.type	 MPropertyF__Put,@function
MPropertyF__Put:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 8(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L3:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %esi
	pushl %ebx
	movl MI_PropertyF+44,%eax
	call *%eax
	addl $8,%esp
.L4:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 MPropertyF__Put,.Lfe2-MPropertyF__Put
	.align 16
	.type	 MPropertyF__Remove,@function
MPropertyF__Remove:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 8(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L6:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %esi
	pushl %ebx
	movl MI_PropertyF+48,%eax
	call *%eax
	addl $8,%esp
.L7:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 MPropertyF__Remove,.Lfe3-MPropertyF__Remove
	.align 16
	.type	 MPropertyF__Get,@function
MPropertyF__Get:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 8(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L9:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %esi
	pushl %ebx
	movl MI_PropertyF+52,%eax
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L10:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 MPropertyF__Get,.Lfe4-MPropertyF__Get
	.align 16
	.type	 MPropertyF__RemoveSub,@function
MPropertyF__RemoveSub:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 8(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L12:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %esi
	pushl %ebx
	movl MI_PropertyF+56,%eax
	call *%eax
	addl $8,%esp
.L13:
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 MPropertyF__RemoveSub,.Lfe5-MPropertyF__RemoveSub
	.align 16
	.type	 MPropertyF__GetSub,@function
MPropertyF__GetSub:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
	movl 8(%ebx),%eax
	movl %eax,-4(%ebp)
	pushl %eax
	movl MI_RTHooks+68,%eax
	call *%eax
	addl $4,%esp
.L15:
	movl $6,-8(%ebp)
	movl RTThread__handlerStack,%eax
	movl %eax,-12(%ebp)
	leal -12(%ebp),%edx
	movl %edx,RTThread__handlerStack
	pushl %esi
	pushl %ebx
	movl MI_PropertyF+60,%eax
	call *%eax
	movl %eax,%ebx
	movl -12(%ebp),%eax
	movl %eax,RTThread__handlerStack
	movl -4(%ebp),%eax
	pushl %eax
	movl MI_RTHooks+72,%eax
	call *%eax
	movl %ebx,%eax
.L16:
	leal -20(%ebp),%esp
	popl %ebx
	popl %esi
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 MPropertyF__GetSub,.Lfe6-MPropertyF__GetSub
	.align 16
	.type	 M_MProperty_t430b6edf_LINK,@function
M_MProperty_t430b6edf_LINK:
	pushl %ebp
	movl %esp,%ebp
	movl MM_MProperty+464,%eax
	movl %ebp,%esp
	movl 52(%eax),%edx
	movl MI_MPropertyF+44,%eax
	movl %eax,4(%edx)
	movl MI_MPropertyF+52,%eax
	movl %eax,8(%edx)
	movl MI_MPropertyF+48,%eax
	movl %eax,16(%edx)
	popl %ebp
	ret
.Lfe7:
	.size	 M_MProperty_t430b6edf_LINK,.Lfe7-M_MProperty_t430b6edf_LINK
.globl MM_MProperty
.data
	.align 4
	.type	 MM_MProperty,@object
	.size	 MM_MProperty,512
MM_MProperty:
	.long MM_MProperty+312
	.long MM_MProperty+44
	.long MM_MProperty+184
	.long MM_MProperty+172
	.zero	4
	.long MM_MProperty+236
	.zero	28
	.long 1124822751
.byte 207
.byte 245
.byte 72
.byte 74
.byte 16
.byte 155
.byte 67
.byte 9
	.long 1
	.zero	4
	.long 0
	.long 1
	.zero	4
	.long 0
	.zero	20
	.long MM_MProperty+459
	.zero	4
	.long M_MProperty_t430b6edf_LINK
	.long 715753818
	.zero	12
	.long MM_MProperty+472
	.long MM_MProperty+495
	.zero	4
	.long MPropertyF__Put
	.long MPropertyF__Remove
	.long MPropertyF__Get
	.long MPropertyF__RemoveSub
	.long MPropertyF__GetSub
	.long MProperty__New
	.long -229182440
	.long 1124822751
	.zero	4
	.long MM_MProperty+192
	.long -229182440
	.long MM_MProperty+464
	.long 356643957
	.ascii	"GetSub"
	.zero	1
	.ascii	"RemoveSub"
	.zero	1
	.ascii	"Get"
	.zero	1
	.ascii	"Remove"
	.zero	1
	.ascii	"Put"
	.zero	1
	.ascii	"New"
	.zero	1
	.long MPropertyF__GetSub
	.long MM_MProperty+200
	.long MI_MPropertyF+60
	.long MPropertyF__RemoveSub
	.long MM_MProperty+207
	.long MI_MPropertyF+56
	.long MPropertyF__Get
	.long MM_MProperty+217
	.long MI_MPropertyF+52
	.long MPropertyF__Remove
	.long MM_MProperty+221
	.long MI_MPropertyF+48
	.long MPropertyF__Put
	.long MM_MProperty+228
	.long MI_MPropertyF+44
	.long MProperty__New
	.long MM_MProperty+232
	.long MI_MProperty+148
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/libm3"
	.ascii	"/src/property/MProperty.m3"
	.zero	1
.byte 1
.byte 10
.byte 0
	.zero	6
	.long 1124822751
	.ascii	"MProperty_^%#%^__0001M"
	.zero	1
	.ascii	"MProperty.Set"
	.zero	4
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
