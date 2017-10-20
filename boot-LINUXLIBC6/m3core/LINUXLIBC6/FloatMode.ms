	.file	"FloatMode.mc"
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
	.type	 FloatMode__SetRounding,@function
FloatMode__SetRounding:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+84
	call FloatMode__Die
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 FloatMode__SetRounding,.Lfe1-FloatMode__SetRounding
	.align 16
	.type	 FloatMode__GetRounding,@function
FloatMode__GetRounding:
	pushl %ebp
	movl %esp,%ebp
	xorl %eax,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 FloatMode__GetRounding,.Lfe2-FloatMode__GetRounding
	.align 16
	.type	 FloatMode__GetFlags,@function
FloatMode__GetFlags:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+136
	call FloatMode__Die
	pushl $464
	call _m3_fault
	.align 16
.Lfe3:
	.size	 FloatMode__GetFlags,.Lfe3-FloatMode__GetFlags
	.align 16
	.type	 FloatMode__SetFlags,@function
FloatMode__SetFlags:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+184
	call FloatMode__Die
	pushl $560
	call _m3_fault
	.align 16
.Lfe4:
	.size	 FloatMode__SetFlags,.Lfe4-FloatMode__SetFlags
	.align 16
	.type	 FloatMode__ClearFlag,@function
FloatMode__ClearFlag:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+232
	call FloatMode__Die
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 FloatMode__ClearFlag,.Lfe5-FloatMode__ClearFlag
	.align 16
	.type	 FloatMode__SetBehavior,@function
FloatMode__SetBehavior:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+280
	call FloatMode__Die
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 FloatMode__SetBehavior,.Lfe6-FloatMode__SetBehavior
	.align 16
	.type	 FloatMode__GetBehavior,@function
FloatMode__GetBehavior:
	pushl %ebp
	movl %esp,%ebp
	pushl $MM_FloatMode+332
	call FloatMode__Die
	pushl $816
	call _m3_fault
	.align 16
.Lfe7:
	.size	 FloatMode__GetBehavior,.Lfe7-FloatMode__GetBehavior
	.align 16
	.type	 FloatMode__InitThread,@function
FloatMode__InitThread:
	pushl %ebp
	movl %esp,%ebp
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 FloatMode__InitThread,.Lfe8-FloatMode__InitThread
	.align 16
	.type	 FloatMode__Die,@function
FloatMode__Die:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl $0
	pushl $0
	pushl %eax
	pushl $0
	pushl $0
	movl MI_RTMisc+60,%eax
	call *%eax
	pushl $1040
	call _m3_fault
	.align 16
.Lfe9:
	.size	 FloatMode__Die,.Lfe9-FloatMode__Die
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_FloatMode
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe10:
	.size	 _m3_fault,.Lfe10-_m3_fault
.globl MM_FloatMode
.data
	.align 4
	.type	 MM_FloatMode,@object
	.size	 MM_FloatMode,744
MM_FloatMode:
	.long MM_FloatMode+584
	.zero	16
	.long MM_FloatMode+472
	.zero	20
	.long FloatMode__Die
	.long FloatMode__SetRounding
	.long FloatMode__GetRounding
	.long FloatMode__GetFlags
	.long FloatMode__SetFlags
	.long FloatMode__ClearFlag
	.long FloatMode__SetBehavior
	.long FloatMode__GetBehavior
	.long FloatMode__InitThread
	.long 2
	.long MM_FloatMode+92
	.long 38
	.ascii	"FloatMode.SetRounding not implemented"
	.zero	3
	.long 2
	.long MM_FloatMode+144
	.long 35
	.ascii	"FloatMode.GetFlags not implemented"
	.zero	2
	.long 2
	.long MM_FloatMode+192
	.long 35
	.ascii	"FloatMode.SetFlags not implemented"
	.zero	2
	.long 2
	.long MM_FloatMode+240
	.long 36
	.ascii	"FloatMode.ClearFlag not implemented"
	.zero	1
	.long 2
	.long MM_FloatMode+288
	.long 38
	.ascii	"FloatMode.SetBehavior not implemented"
	.zero	3
	.long 2
	.long MM_FloatMode+340
	.long 38
	.ascii	"FloatMode.GetBehavior not implemented"
	.zero	3
	.ascii	"Die"
	.zero	1
	.ascii	"InitThread"
	.zero	1
	.ascii	"GetBehavior"
	.zero	1
	.ascii	"SetBehavior"
	.zero	1
	.ascii	"ClearFlag"
	.zero	1
	.ascii	"SetFlags"
	.zero	1
	.ascii	"GetFlags"
	.zero	1
	.ascii	"GetRounding"
	.zero	1
	.ascii	"SetRounding"
	.zero	2
	.long FloatMode__Die
	.long MM_FloatMode+380
	.zero	4
	.long FloatMode__InitThread
	.long MM_FloatMode+384
	.long MI_FloatMode+116
	.long FloatMode__GetBehavior
	.long MM_FloatMode+395
	.long MI_FloatMode+112
	.long FloatMode__SetBehavior
	.long MM_FloatMode+407
	.long MI_FloatMode+108
	.long FloatMode__ClearFlag
	.long MM_FloatMode+419
	.long MI_FloatMode+84
	.long FloatMode__SetFlags
	.long MM_FloatMode+429
	.long MI_FloatMode+80
	.long FloatMode__GetFlags
	.long MM_FloatMode+438
	.long MI_FloatMode+76
	.long FloatMode__GetRounding
	.long MM_FloatMode+447
	.long MI_FloatMode+72
	.long FloatMode__SetRounding
	.long MM_FloatMode+459
	.long MI_FloatMode+68
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/float/IEEE-default/FloatMode.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
