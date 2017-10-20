	.file	"Uin.mc"
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
	.type	 Uin__IN_CLASSA,@function
Uin__IN_CLASSA:
	pushl %ebp
	movl %esp,%ebp
	cmpl $0,8(%ebp)
	setge %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe1:
	.size	 Uin__IN_CLASSA,.Lfe1-Uin__IN_CLASSA
	.align 16
	.type	 Uin__IN_CLASSB,@function
Uin__IN_CLASSB:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl $-1073741824,%eax
	cmpl $-2147483648,%eax
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe2:
	.size	 Uin__IN_CLASSB,.Lfe2-Uin__IN_CLASSB
	.align 16
	.type	 Uin__IN_CLASSC,@function
Uin__IN_CLASSC:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl $-536870912,%eax
	cmpl $-1073741824,%eax
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe3:
	.size	 Uin__IN_CLASSC,.Lfe3-Uin__IN_CLASSC
	.align 16
	.type	 Uin__IN_CLASSD,@function
Uin__IN_CLASSD:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl $-268435456,%eax
	cmpl $-536870912,%eax
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe4:
	.size	 Uin__IN_CLASSD,.Lfe4-Uin__IN_CLASSD
	.align 16
	.type	 Uin__IN_MULTICAST,@function
Uin__IN_MULTICAST:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	call Uin__IN_CLASSD
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe5:
	.size	 Uin__IN_MULTICAST,.Lfe5-Uin__IN_MULTICAST
	.align 16
	.type	 Uin__IN_EXPERIMENTAL,@function
Uin__IN_EXPERIMENTAL:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl $-536870912,%eax
	cmpl $-536870912,%eax
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe6:
	.size	 Uin__IN_EXPERIMENTAL,.Lfe6-Uin__IN_EXPERIMENTAL
	.align 16
	.type	 Uin__IN_BADCLASS,@function
Uin__IN_BADCLASS:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	andl $-268435456,%eax
	cmpl $-268435456,%eax
	sete %al
	andl $255,%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe7:
	.size	 Uin__IN_BADCLASS,.Lfe7-Uin__IN_BADCLASS
	.align 16
	.type	 Uin__IN_SET_LOOPBACK_ADDR,@function
Uin__IN_SET_LOOPBACK_ADDR:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl 8(%ebp),%ebx
	pushl $2130706433
	call Uin__htonl
	addl $4,%esp
	testl %ebx,%ebx
	jne .L39
	pushl $868
	call _m3_fault
	.align 16
.L39:
	movl %eax,4(%ebx)
	movw $2,(%ebx)
	movl -4(%ebp),%ebx
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe8:
	.size	 Uin__IN_SET_LOOPBACK_ADDR,.Lfe8-Uin__IN_SET_LOOPBACK_ADDR
	.align 16
	.type	 Uin__ntohl,@function
Uin__ntohl:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movb 11(%ebp),%al
	movb %al,-4(%ebp)
	movb 10(%ebp),%al
	movb %al,-3(%ebp)
	movb 9(%ebp),%al
	movb %al,-2(%ebp)
	movb 8(%ebp),%al
	movb %al,-1(%ebp)
	movl -4(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe9:
	.size	 Uin__ntohl,.Lfe9-Uin__ntohl
	.align 16
	.type	 Uin__ntohs,@function
Uin__ntohs:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movb 9(%ebp),%al
	movb %al,-2(%ebp)
	movb 8(%ebp),%al
	movb %al,-1(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe10:
	.size	 Uin__ntohs,.Lfe10-Uin__ntohs
	.align 16
	.type	 Uin__htonl,@function
Uin__htonl:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movb 11(%ebp),%al
	movb %al,-4(%ebp)
	movb 10(%ebp),%al
	movb %al,-3(%ebp)
	movb 9(%ebp),%al
	movb %al,-2(%ebp)
	movb 8(%ebp),%al
	movb %al,-1(%ebp)
	movl -4(%ebp),%eax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe11:
	.size	 Uin__htonl,.Lfe11-Uin__htonl
	.align 16
	.type	 Uin__htons,@function
Uin__htons:
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	movb 9(%ebp),%al
	movb %al,-2(%ebp)
	movb 8(%ebp),%al
	movb %al,-1(%ebp)
	xorl %eax,%eax
	movw -2(%ebp),%ax
	movl %ebp,%esp
	popl %ebp
	ret
.Lfe12:
	.size	 Uin__htons,.Lfe12-Uin__htons
	.align 16
	.type	 _m3_fault,@function
_m3_fault:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	pushl %eax
	pushl $MM_Uin
	movl MI_RTHooks+108,%eax
	call *%eax
	.align 16
.Lfe13:
	.size	 _m3_fault,.Lfe13-_m3_fault
.globl MM_Uin
.data
	.align 4
	.type	 MM_Uin,@object
	.size	 MM_Uin,520
MM_Uin:
	.long MM_Uin+368
	.zero	16
	.long MM_Uin+220
	.zero	20
	.long Uin__IN_CLASSA
	.long Uin__IN_CLASSB
	.long Uin__IN_CLASSC
	.long Uin__IN_CLASSD
	.long Uin__IN_MULTICAST
	.long Uin__IN_EXPERIMENTAL
	.long Uin__IN_BADCLASS
	.long Uin__IN_SET_LOOPBACK_ADDR
	.long Uin__ntohl
	.long Uin__ntohs
	.long Uin__htonl
	.long Uin__htons
	.ascii	"htons"
	.zero	1
	.ascii	"htonl"
	.zero	1
	.ascii	"ntohs"
	.zero	1
	.ascii	"ntohl"
	.zero	1
	.ascii	"IN_SET_LOOPBACK_ADDR"
	.zero	1
	.ascii	"IN_BADCLASS"
	.zero	1
	.ascii	"IN_EXPERIMENTAL"
	.zero	1
	.ascii	"IN_MULTICAST"
	.zero	1
	.ascii	"IN_CLASSD"
	.zero	1
	.ascii	"IN_CLASSC"
	.zero	1
	.ascii	"IN_CLASSB"
	.zero	1
	.ascii	"IN_CLASSA"
	.zero	3
	.long Uin__htons
	.long MM_Uin+92
	.long MI_Uin+192
	.long Uin__htonl
	.long MM_Uin+98
	.long MI_Uin+188
	.long Uin__ntohs
	.long MM_Uin+104
	.long MI_Uin+184
	.long Uin__ntohl
	.long MM_Uin+110
	.long MI_Uin+180
	.long Uin__IN_SET_LOOPBACK_ADDR
	.long MM_Uin+116
	.long MI_Uin+176
	.long Uin__IN_BADCLASS
	.long MM_Uin+137
	.long MI_Uin+68
	.long Uin__IN_EXPERIMENTAL
	.long MM_Uin+149
	.long MI_Uin+64
	.long Uin__IN_MULTICAST
	.long MM_Uin+165
	.long MI_Uin+60
	.long Uin__IN_CLASSD
	.long MM_Uin+178
	.long MI_Uin+56
	.long Uin__IN_CLASSC
	.long MM_Uin+188
	.long MI_Uin+52
	.long Uin__IN_CLASSB
	.long MM_Uin+198
	.long MI_Uin+48
	.long Uin__IN_CLASSA
	.long MM_Uin+208
	.long MI_Uin+44
	.zero	4
	.ascii	"/home/ftp/tmp/pm3/tmp/pm3-1.1.15/language/modula3/m3compiler"
	.ascii	"/m3bootstrap/LINUXLIBC6/pm3-LINUXLIBC6/boot-LINUXLIBC6/m3cor"
	.ascii	"e/src/unix/linux-libc6/Uin.m3"
	.zero	3
	.ident	"GCC: (GNU) cygnus-2.7.2-960712"
