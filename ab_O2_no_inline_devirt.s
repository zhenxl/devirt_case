	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$16, %edi
	callq	__Znwm
	movq	%rax, %rdi
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)                  ## 8-byte Spill
Ltmp0:
	movl	$4, %esi
	callq	__ZN1BC1Ei
Ltmp1:
	jmp	LBB0_1
LBB0_1:
	movq	-8(%rbp), %rdi                  ## 8-byte Reload
	callq	__ZN1B3fooEv
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
LBB0_2:
Ltmp2:
	movq	-16(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	callq	__ZdlPv
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	callq	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1               ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN1BC1Ei                      ## -- Begin function _ZN1BC1Ei
	.weak_def_can_be_hidden	__ZN1BC1Ei
	.p2align	4, 0x90
__ZN1BC1Ei:                             ## @_ZN1BC1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	jmp	__ZN1BC2Ei                      ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN1BC2Ei                      ## -- Begin function _ZN1BC2Ei
	.weak_def_can_be_hidden	__ZN1BC2Ei
	.p2align	4, 0x90
__ZN1BC2Ei:                             ## @_ZN1BC2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	movl	%esi, -12(%rbp)                 ## 4-byte Spill
	movq	%rdi, -8(%rbp)                  ## 8-byte Spill
	callq	__ZN1AC2Ev
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movl	-12(%rbp), %esi                 ## 4-byte Reload
	movq	-8(%rbp), %rdi                  ## 8-byte Reload
	movq	__ZTV1B@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	movl	%esi, 12(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN1AC2Ev                      ## -- Begin function _ZN1AC2Ev
	.weak_def_can_be_hidden	__ZN1AC2Ev
	.p2align	4, 0x90
__ZN1AC2Ev:                             ## @_ZN1AC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZTV1A@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	movl	$3, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
