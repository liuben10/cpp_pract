	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.intel_syntax noprefix
	.globl	__ZN9SomethingC2Ei      ## -- Begin function _ZN9SomethingC2Ei
	.p2align	4, 0x90
__ZN9SomethingC2Ei:                     ## @_ZN9SomethingC2Ei
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rdi], esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN9SomethingC1Ei      ## -- Begin function _ZN9SomethingC1Ei
	.p2align	4, 0x90
__ZN9SomethingC1Ei:                     ## @_ZN9SomethingC1Ei
	.cfi_startproc
## BB#0:
	push	rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi5:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	__ZN9SomethingC2Ei
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	push	rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi8:
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	eax, 4
	mov	edi, eax
	call	__Znwm
	mov	rdi, rax
	mov	rcx, rax
Ltmp0:
	mov	esi, 10
	mov	qword ptr [rbp - 48], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 56], rcx ## 8-byte Spill
	call	__ZN9SomethingC1Ei
Ltmp1:
	jmp	LBB2_1
LBB2_1:
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	rax, qword ptr [rbp - 56] ## 8-byte Reload
	mov	qword ptr [rbp - 24], rax
	mov	rcx, qword ptr [rbp - 24]
	mov	esi, dword ptr [rcx]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	lea	rcx, [rip + __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 16], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	qword ptr [rbp - 16]
	xor	esi, esi
	mov	qword ptr [rbp - 64], rax ## 8-byte Spill
	mov	eax, esi
	add	rsp, 64
	pop	rbp
	ret
LBB2_2:
Ltmp2:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	call	__ZdlPv
## BB#3:
	mov	rdi, qword ptr [rbp - 32]
	call	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
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
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp2-Lfunc_begin0              ##     jumps to Ltmp2
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp1-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Lfunc_end0-Ltmp1                ##   Call between Ltmp1 and Lfunc_end0
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	push	rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Lcfi11:
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
Ltmp3:
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp4:
	mov	qword ptr [rbp - 96], rax ## 8-byte Spill
	jmp	LBB3_1
LBB3_1:                                 ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
	mov	al, byte ptr [rbp - 33]
	mov	rcx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rbp - 9], al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	rsi, qword ptr [rsi + 56]
	movsx	edi, byte ptr [rbp - 9]
Ltmp5:
	mov	dword ptr [rbp - 100], edi ## 4-byte Spill
	mov	rdi, rdx
	mov	r8d, dword ptr [rbp - 100] ## 4-byte Reload
	mov	qword ptr [rbp - 112], rsi ## 8-byte Spill
	mov	esi, r8d
	mov	rdx, qword ptr [rbp - 112] ## 8-byte Reload
	call	rdx
Ltmp6:
	mov	byte ptr [rbp - 113], al ## 1-byte Spill
	jmp	LBB3_3
LBB3_2:
Ltmp7:
	lea	rdi, [rbp - 48]
	mov	ecx, edx
	mov	qword ptr [rbp - 56], rax
	mov	dword ptr [rbp - 60], ecx
	call	__ZNSt3__16localeD1Ev
	mov	rdi, qword ptr [rbp - 56]
	call	__Unwind_Resume
LBB3_3:                                 ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit
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
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset7 = Lfunc_begin1-Lfunc_begin1       ## >> Call Site 1 <<
	.long	Lset7
Lset8 = Ltmp3-Lfunc_begin1              ##   Call between Lfunc_begin1 and Ltmp3
	.long	Lset8
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset9 = Ltmp3-Lfunc_begin1              ## >> Call Site 2 <<
	.long	Lset9
Lset10 = Ltmp6-Ltmp3                    ##   Call between Ltmp3 and Ltmp6
	.long	Lset10
Lset11 = Ltmp7-Lfunc_begin1             ##     jumps to Ltmp7
	.long	Lset11
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp6-Lfunc_begin1             ## >> Call Site 3 <<
	.long	Lset12
Lset13 = Lfunc_end1-Ltmp6               ##   Call between Ltmp6 and Lfunc_end1
	.long	Lset13
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.p2align	2
                                        ## -- End function

.subsections_via_symbols
