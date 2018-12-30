	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi2:
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	eax, 4
	mov	edi, eax
	mov	dword ptr [rbp - 20], 0
	call	_malloc
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 32]
	mov	esi, dword ptr [rax]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	lea	rdi, [rip + __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	qword ptr [rbp - 16]
	xor	esi, esi
	mov	qword ptr [rbp - 40], rax ## 8-byte Spill
	mov	eax, esi
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	push	rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi5:
	.cfi_def_cfa_register rbp
	sub	rsp, 144
	mov	qword ptr [rbp - 72], rdi
	mov	rdi, qword ptr [rbp - 72]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax - 24]
	mov	rcx, rdi
	add	rcx, rax
	mov	qword ptr [rbp - 32], rcx
	mov	byte ptr [rbp - 33], 10
	mov	rsi, qword ptr [rbp - 32]
	lea	rax, [rbp - 48]
	mov	qword ptr [rbp - 80], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 88], rax ## 8-byte Spill
	call	__ZNKSt3__18ios_base6getlocEv
	mov	rax, qword ptr [rbp - 88] ## 8-byte Reload
	mov	qword ptr [rbp - 24], rax
	mov	rdi, qword ptr [rbp - 24]
Ltmp0:
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	jmp	LBB1_1
LBB1_1:                                 ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
	mov	al, byte ptr [rbp - 33]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rbp - 9], al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	rsi, qword ptr [rsi + 56]
	movsx	edi, byte ptr [rbp - 9]
Ltmp2:
	mov	dword ptr [rbp - 100], edi ## 4-byte Spill
	mov	rdi, rdx
	mov	r8d, dword ptr [rbp - 100] ## 4-byte Reload
	mov	qword ptr [rbp - 112], rsi ## 8-byte Spill
	mov	esi, r8d
	mov	rdx, qword ptr [rbp - 112] ## 8-byte Reload
	call	rdx
Ltmp3:
	mov	byte ptr [rbp - 113], al ## 1-byte Spill
	jmp	LBB1_3
LBB1_2:
Ltmp4:
	lea	rdi, [rbp - 48]
	mov	ecx, edx
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 60], ecx
	call	__ZNSt3__16localeD1Ev
	mov	rdi, qword ptr [rbp - 56]
	call	__Unwind_Resume
LBB1_3:                                 ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit
	lea	rdi, [rbp - 48]
	call	__ZNSt3__16localeD1Ev
	mov	rdi, qword ptr [rbp - 80] ## 8-byte Reload
	mov	al, byte ptr [rbp - 113] ## 1-byte Reload
	movsx	esi, al
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	rdi, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 128], rax ## 8-byte Spill
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	rdi, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 136], rax ## 8-byte Spill
	mov	rax, rdi
	add	rsp, 144
	pop	rbp
	ret
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp3-Ltmp0                     ##   Call between Ltmp0 and Ltmp3
	.long	Lset3
Lset4 = Ltmp4-Lfunc_begin0              ##     jumps to Ltmp4
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Lfunc_end0-Ltmp3                ##   Call between Ltmp3 and Lfunc_end0
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function

.subsections_via_symbols
