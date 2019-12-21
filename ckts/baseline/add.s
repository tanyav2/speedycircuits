	.text
	.file	"add.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	.p2align	1, 0x90
.Lxray_sled_0:
	.ascii	"\353\t"
	nopw	512(%rax,%rax)
	rdtsc
	shlq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	rdtsc
	shlq	$32, %rdx
	orq	%rdx, %rax
	movq	-8(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %rax
	.p2align	1, 0x90
.Lxray_sled_1:
	retq
	nopw	%cs:512(%rax,%rax)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	xray_instr_map,"awo",@progbits,main,unique,1
.Lxray_sleds_start0:
	.quad	.Lxray_sled_0
	.quad	main
	.byte	0x00
	.byte	0x01
	.byte	0x00
	.zero	13
	.quad	.Lxray_sled_1
	.quad	main
	.byte	0x01
	.byte	0x01
	.byte	0x00
	.zero	13
.Lxray_sleds_end0:
	.section	xray_fn_idx,"awo",@progbits,main,unique,1
	.p2align	4, 0x90
	.quad	.Lxray_sleds_start0
	.quad	.Lxray_sleds_end0
	.text
	.type	alice_in,@object        # @alice_in
	.data
	.globl	alice_in
	.p2align	4
alice_in:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	alice_in, 128

	.type	bob_in,@object          # @bob_in
	.globl	bob_in
	.p2align	4
bob_in:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	bob_in, 128

	.type	cons,@object            # @cons
	.bss
	.globl	cons
	.p2align	2
cons:
	.zero	4
	.size	cons, 4

	.section	".note.GNU-stack","",@progbits
