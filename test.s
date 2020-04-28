	.file	"test.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ID: %s\nYour private key: "
.LC1:
	.string	"%02x"
	.text
	.globl	default_print_info
	.type	default_print_info, @function
default_print_info:
.LVL0:
.LFB27:
	.file 1 "test.c"
	.loc 1 173 46 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 173 46 is_stmt 0 view .LVU1
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	mov	rbp, rdi
	.loc 1 173 46 view .LVU2
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 174 5 is_stmt 1 view .LVU3
	mov	rsi, rdi
	lea	rdi, .LC0[rip]
.LVL1:
	.loc 1 174 5 is_stmt 0 view .LVU4
	call	printf@PLT
.LVL2:
	.loc 1 175 5 is_stmt 1 view .LVU5
.LBB2:
	.loc 1 175 10 view .LVU6
	.loc 1 175 21 view .LVU7
	lea	rbx, 6[rbp]
	add	rbp, 38
.LVL3:
	.loc 1 176 9 is_stmt 0 view .LVU8
	lea	r12, .LC1[rip]
.LVL4:
.L2:
	.loc 1 176 9 is_stmt 1 discriminator 3 view .LVU9
	movzx	esi, BYTE PTR [rbx]
	mov	rdi, r12
	mov	eax, 0
	call	printf@PLT
.LVL5:
	.loc 1 175 29 discriminator 3 view .LVU10
	.loc 1 175 21 discriminator 3 view .LVU11
	add	rbx, 1
.LVL6:
	.loc 1 175 5 is_stmt 0 discriminator 3 view .LVU12
	cmp	rbx, rbp
	jne	.L2
.LBE2:
	.loc 1 178 5 is_stmt 1 view .LVU13
	mov	edi, 10
	call	putchar@PLT
.LVL7:
	.loc 1 179 1 is_stmt 0 view .LVU14
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L6
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
.LVL8:
	.loc 1 179 1 view .LVU15
	pop	r12
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL9:
	.cfi_endproc
.LFE27:
	.size	default_print_info, .-default_print_info
	.section	.rodata.str1.1
.LC2:
	.string	"TODO: implement this"
	.text
	.globl	default_view_toys
	.type	default_view_toys, @function
default_view_toys:
.LVL10:
.LFB30:
	.loc 1 218 45 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 218 45 is_stmt 0 view .LVU17
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 218 45 view .LVU18
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 219 5 is_stmt 1 view .LVU19
	lea	rdi, .LC2[rip]
.LVL11:
	.loc 1 219 5 is_stmt 0 view .LVU20
	call	puts@PLT
.LVL12:
	.loc 1 220 1 view .LVU21
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L10
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL13:
	.cfi_endproc
.LFE30:
	.size	default_view_toys, .-default_view_toys
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"TODO: make this write user to file"
	.text
	.globl	session_handler
	.type	session_handler, @function
session_handler:
.LVL14:
.LFB36:
	.loc 1 265 43 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 265 43 is_stmt 0 view .LVU23
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 265 43 view .LVU24
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 266 5 is_stmt 1 view .LVU25
	lea	rdi, .LC3[rip]
.LVL15:
	.loc 1 266 5 is_stmt 0 view .LVU26
	call	puts@PLT
.LVL16:
	.loc 1 267 5 is_stmt 1 view .LVU27
	.loc 1 268 1 is_stmt 0 view .LVU28
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L14
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L14:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL17:
	.cfi_endproc
.LFE36:
	.size	session_handler, .-session_handler
	.section	.rodata.str1.1
.LC4:
	.string	"Name: "
.LC5:
	.string	"\nDescription: "
.LC6:
	.string	"Encrypting..."
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"SAVING TO FILE NOT IMPLEMENTED YET!!!"
	.section	.rodata.str1.1
.LC8:
	.string	"Done"
	.text
	.globl	default_design_toy
	.type	default_design_toy, @function
default_design_toy:
.LVL18:
.LFB29:
	.loc 1 201 46 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 201 46 is_stmt 0 view .LVU30
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.loc 1 201 46 view .LVU31
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 202 5 is_stmt 1 view .LVU32
	.loc 1 202 13 is_stmt 0 view .LVU33
	mov	rbp, QWORD PTR 72[rdi]
	.loc 1 202 8 view .LVU34
	cmp	rbp, 99
	jbe	.L21
.LVL19:
.L15:
	.loc 1 216 1 view .LVU35
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L22
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL20:
.L21:
	.cfi_restore_state
	.loc 1 216 1 view .LVU36
	mov	rbx, rdi
	.loc 1 203 5 is_stmt 1 view .LVU37
	.loc 1 203 30 is_stmt 0 view .LVU38
	lea	rax, 1[rbp]
	mov	QWORD PTR 72[rdi], rax
	.loc 1 203 36 view .LVU39
	mov	edi, 5050
.LVL21:
	.loc 1 203 36 view .LVU40
	call	malloc@PLT
.LVL22:
	.loc 1 203 34 view .LVU41
	mov	QWORD PTR 80[rbx+rbp*8], rax
	.loc 1 205 5 is_stmt 1 view .LVU42
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
.LVL23:
	.loc 1 206 5 view .LVU43
	.loc 1 206 23 is_stmt 0 view .LVU44
	mov	rax, QWORD PTR 72[rbx]
	.loc 1 206 5 view .LVU45
	mov	rsi, QWORD PTR 72[rbx+rax*8]
	mov	edx, 99
	mov	edi, 0
	call	read@PLT
.LVL24:
	.loc 1 207 5 is_stmt 1 view .LVU46
	lea	rdi, .LC5[rip]
	mov	eax, 0
	call	printf@PLT
.LVL25:
	.loc 1 208 5 view .LVU47
	.loc 1 208 23 is_stmt 0 view .LVU48
	mov	rax, QWORD PTR 72[rbx]
	.loc 1 208 43 view .LVU49
	mov	rsi, QWORD PTR 72[rbx+rax*8]
	add	rsi, 50
	.loc 1 208 5 view .LVU50
	mov	edx, 4999
	mov	edi, 0
	call	read@PLT
.LVL26:
	.loc 1 210 5 is_stmt 1 view .LVU51
	lea	rdi, .LC6[rip]
	call	puts@PLT
.LVL27:
	.loc 1 211 5 view .LVU52
.LBB3:
	.loc 1 211 10 view .LVU53
	.loc 1 211 24 view .LVU54
	.loc 1 211 17 is_stmt 0 view .LVU55
	mov	eax, 0
.LVL28:
.L17:
	.loc 1 212 9 is_stmt 1 discriminator 3 view .LVU56
	.loc 1 212 19 is_stmt 0 discriminator 3 view .LVU57
	mov	rdx, QWORD PTR 72[rbx]
	mov	rdx, QWORD PTR 72[rbx+rdx*8]
	.loc 1 212 71 discriminator 3 view .LVU58
	mov	rcx, rax
	and	ecx, 31
	.loc 1 212 56 discriminator 3 view .LVU59
	movzx	ecx, BYTE PTR 6[rbx+rcx]
	xor	BYTE PTR 50[rdx+rax], cl
	.loc 1 211 34 is_stmt 1 discriminator 3 view .LVU60
	.loc 1 211 35 is_stmt 0 discriminator 3 view .LVU61
	add	rax, 1
.LVL29:
	.loc 1 211 24 is_stmt 1 discriminator 3 view .LVU62
	.loc 1 211 5 is_stmt 0 discriminator 3 view .LVU63
	cmp	rax, 5000
	jne	.L17
.LBE3:
	.loc 1 214 5 is_stmt 1 view .LVU64
	lea	rdi, .LC7[rip]
	call	puts@PLT
.LVL30:
	.loc 1 215 5 view .LVU65
	lea	rdi, .LC8[rip]
	call	puts@PLT
.LVL31:
	jmp	.L15
.LVL32:
.L22:
	.loc 1 216 1 is_stmt 0 view .LVU66
	call	__stack_chk_fail@PLT
.LVL33:
	.cfi_endproc
.LFE29:
	.size	default_design_toy, .-default_design_toy
	.globl	a2v
	.type	a2v, @function
a2v:
.LVL34:
.LFB22:
	.loc 1 19 1 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 19 1 is_stmt 0 view .LVU68
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	.loc 1 19 1 view .LVU69
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 20 5 is_stmt 1 view .LVU70
	.loc 1 20 17 is_stmt 0 view .LVU71
	lea	eax, -48[rdi]
	.loc 1 20 8 view .LVU72
	cmp	al, 9
	jbe	.L23
	.loc 1 24 5 is_stmt 1 view .LVU73
	.loc 1 24 17 is_stmt 0 view .LVU74
	lea	eax, -97[rdi]
	.loc 1 26 21 view .LVU75
	sub	edi, 87
.LVL35:
	.loc 1 26 21 view .LVU76
	cmp	al, 6
	mov	eax, 0
	cmovb	eax, edi
.L23:
	.loc 1 29 1 view .LVU77
	mov	rdx, QWORD PTR 8[rsp]
	xor	rdx, QWORD PTR fs:40
	jne	.L29
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L29:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL36:
	.cfi_endproc
.LFE22:
	.size	a2v, .-a2v
	.globl	unhexlify
	.type	unhexlify, @function
unhexlify:
.LVL37:
.LFB23:
	.loc 1 32 1 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 32 1 is_stmt 0 view .LVU79
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sub	rsp, 16
	.cfi_def_cfa_offset 64
	mov	rbp, rdi
	mov	r12, rsi
	.loc 1 32 1 view .LVU80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 33 5 is_stmt 1 view .LVU81
.LVL38:
	.loc 1 34 5 view .LVU82
.LBB4:
	.loc 1 34 10 view .LVU83
	.loc 1 34 5 is_stmt 0 view .LVU84
	mov	ebx, 0
	.loc 1 34 28 view .LVU85
	mov	r13, -1
.LVL39:
.L31:
	.loc 1 34 24 is_stmt 1 discriminator 1 view .LVU86
	.loc 1 34 28 is_stmt 0 discriminator 1 view .LVU87
	mov	eax, 0
	mov	rcx, r13
	mov	rdi, rbp
	repnz scasb
	mov	rax, rcx
	not	rax
	sub	rax, 1
	.loc 1 34 5 discriminator 1 view .LVU88
	lea	rdx, [rbx+rbx]
	cmp	rax, rdx
	jbe	.L35
	.loc 1 36 9 is_stmt 1 discriminator 3 view .LVU89
	.loc 1 36 22 is_stmt 0 discriminator 3 view .LVU90
	movsx	edi, BYTE PTR 0[rbp+rbx*2]
	call	a2v@PLT
.LVL40:
	mov	r14d, eax
	.loc 1 36 41 discriminator 3 view .LVU91
	movsx	edi, BYTE PTR 1[rbp+rbx*2]
	call	a2v@PLT
.LVL41:
	.loc 1 36 34 discriminator 3 view .LVU92
	sal	r14d, 4
	.loc 1 36 39 discriminator 3 view .LVU93
	add	r14d, eax
	mov	BYTE PTR [r12+rbx], r14b
	.loc 1 34 42 is_stmt 1 discriminator 3 view .LVU94
.LVL42:
	.loc 1 34 42 is_stmt 0 discriminator 3 view .LVU95
	add	rbx, 1
.LVL43:
	.loc 1 34 42 discriminator 3 view .LVU96
	jmp	.L31
.LVL44:
.L35:
	.loc 1 34 42 discriminator 3 view .LVU97
.LBE4:
	.loc 1 38 5 is_stmt 1 view .LVU98
	.loc 1 38 9 is_stmt 0 view .LVU99
	movsx	rsi, ebx
	.loc 1 38 13 view .LVU100
	mov	BYTE PTR [r12+rsi], 0
	.loc 1 39 1 view .LVU101
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L36
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
.LVL45:
	.loc 1 39 1 view .LVU102
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
.LVL46:
	.loc 1 39 1 view .LVU103
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL47:
.L36:
	.cfi_restore_state
	.loc 1 39 1 view .LVU104
	call	__stack_chk_fail@PLT
.LVL48:
	.cfi_endproc
.LFE23:
	.size	unhexlify, .-unhexlify
	.section	.rodata.str1.1
.LC9:
	.string	"Write new key: "
.LC10:
	.string	"%89s"
.LC11:
	.string	"\nUpdating encryption..."
.LC12:
	.string	"Changes applied!"
	.text
	.globl	default_change_key
	.type	default_change_key, @function
default_change_key:
.LVL49:
.LFB28:
	.loc 1 181 46 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 181 46 is_stmt 0 view .LVU106
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 168
	.cfi_def_cfa_offset 192
	mov	rbx, rdi
	.loc 1 181 46 view .LVU107
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 152[rsp], rax
	xor	eax, eax
	.loc 1 182 5 is_stmt 1 view .LVU108
	.loc 1 183 5 view .LVU109
	.loc 1 184 5 view .LVU110
	lea	rdi, .LC9[rip]
.LVL50:
	.loc 1 184 5 is_stmt 0 view .LVU111
	call	printf@PLT
.LVL51:
	.loc 1 185 5 is_stmt 1 view .LVU112
	lea	rbp, 48[rsp]
	mov	rsi, rbp
	lea	rdi, .LC10[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
.LVL52:
	.loc 1 186 5 view .LVU113
	mov	rsi, rsp
	mov	rdi, rbp
	call	unhexlify@PLT
.LVL53:
	.loc 1 188 5 view .LVU114
	lea	rdi, .LC11[rip]
	call	puts@PLT
.LVL54:
	.loc 1 189 5 view .LVU115
.LBB5:
	.loc 1 189 10 view .LVU116
	.loc 1 189 24 view .LVU117
	.loc 1 189 5 is_stmt 0 view .LVU118
	cmp	QWORD PTR 72[rbx], 0
	je	.L38
	lea	rdi, 80[rbx]
	.loc 1 189 17 view .LVU119
	mov	r8d, 0
.LVL55:
.L39:
.LBB6:
	.loc 1 190 28 is_stmt 1 view .LVU120
	.loc 1 190 21 is_stmt 0 view .LVU121
	mov	eax, 0
.LVL56:
.L40:
	.loc 1 191 13 is_stmt 1 discriminator 3 view .LVU122
	.loc 1 191 23 is_stmt 0 discriminator 3 view .LVU123
	mov	rcx, QWORD PTR [rdi]
	.loc 1 191 58 discriminator 3 view .LVU124
	mov	rsi, rax
	and	esi, 31
	.loc 1 191 43 discriminator 3 view .LVU125
	movzx	edx, BYTE PTR 6[rbx+rsi]
	xor	dl, BYTE PTR [rsp+rsi]
	xor	BYTE PTR 50[rcx+rax], dl
	.loc 1 190 38 is_stmt 1 discriminator 3 view .LVU126
	.loc 1 190 39 is_stmt 0 discriminator 3 view .LVU127
	add	rax, 1
.LVL57:
	.loc 1 190 28 is_stmt 1 discriminator 3 view .LVU128
	.loc 1 190 9 is_stmt 0 discriminator 3 view .LVU129
	cmp	rax, 5000
	jne	.L40
.LBE6:
	.loc 1 189 44 is_stmt 1 discriminator 2 view .LVU130
	.loc 1 189 45 is_stmt 0 discriminator 2 view .LVU131
	add	r8, 1
.LVL58:
	.loc 1 189 24 is_stmt 1 discriminator 2 view .LVU132
	add	rdi, 8
	.loc 1 189 5 is_stmt 0 discriminator 2 view .LVU133
	cmp	QWORD PTR 72[rbx], r8
	ja	.L39
.LVL59:
.L38:
	.loc 1 189 5 discriminator 2 view .LVU134
.LBE5:
.LBB7:
	.loc 1 195 24 is_stmt 1 view .LVU135
	.loc 1 195 17 is_stmt 0 view .LVU136
	mov	eax, 0
.LVL60:
.L41:
	.loc 1 196 9 is_stmt 1 discriminator 3 view .LVU137
	.loc 1 196 22 is_stmt 0 discriminator 3 view .LVU138
	movzx	edx, BYTE PTR [rsp+rax]
	mov	BYTE PTR 6[rbx+rax], dl
	.loc 1 195 32 is_stmt 1 discriminator 3 view .LVU139
	.loc 1 195 33 is_stmt 0 discriminator 3 view .LVU140
	add	rax, 1
.LVL61:
	.loc 1 195 24 is_stmt 1 discriminator 3 view .LVU141
	.loc 1 195 5 is_stmt 0 discriminator 3 view .LVU142
	cmp	rax, 36
	jne	.L41
.LBE7:
	.loc 1 198 5 is_stmt 1 view .LVU143
	lea	rdi, .LC12[rip]
	call	puts@PLT
.LVL62:
	.loc 1 199 1 is_stmt 0 view .LVU144
	mov	rax, QWORD PTR 152[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L46
	add	rsp, 168
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
.LVL63:
	.loc 1 199 1 view .LVU145
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL64:
.L46:
	.cfi_restore_state
	.loc 1 199 1 view .LVU146
	call	__stack_chk_fail@PLT
.LVL65:
	.cfi_endproc
.LFE28:
	.size	default_change_key, .-default_change_key
	.globl	init
	.type	init, @function
init:
.LFB24:
	.loc 1 72 13 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.loc 1 72 13 is_stmt 0 view .LVU148
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 73 5 is_stmt 1 view .LVU149
	mov	rbp, QWORD PTR stdin@GOTPCREL[rip]
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rdi, QWORD PTR 0[rbp]
	call	setvbuf@PLT
.LVL66:
	.loc 1 74 5 view .LVU150
	mov	rbx, QWORD PTR stdout@GOTPCREL[rip]
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rdi, QWORD PTR [rbx]
	call	setvbuf@PLT
.LVL67:
	.loc 1 75 5 view .LVU151
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rax, QWORD PTR stderr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	setvbuf@PLT
.LVL68:
	.loc 1 77 5 view .LVU152
	mov	rdx, QWORD PTR 0[rbp]
	mov	rsi, QWORD PTR [rbx]
	mov	edi, 0
	call	newterm@PLT
.LVL69:
	.loc 1 78 5 view .LVU153
	call	start_color@PLT
.LVL70:
	.loc 1 79 5 view .LVU154
	mov	edx, 0
	mov	esi, 1
	mov	edi, 1
	call	init_pair@PLT
.LVL71:
	.loc 1 80 5 view .LVU155
	mov	edx, 0
	mov	esi, 4
	mov	edi, 2
	call	init_pair@PLT
.LVL72:
	.loc 1 81 5 view .LVU156
	mov	edx, 0
	mov	esi, 5
	mov	edi, 3
	call	init_pair@PLT
.LVL73:
	.loc 1 82 5 view .LVU157
	mov	edx, 0
	mov	esi, 7
	mov	edi, 4
	call	init_pair@PLT
.LVL74:
	.loc 1 83 5 view .LVU158
	mov	edx, 0
	mov	esi, 2
	mov	edi, 5
	call	init_pair@PLT
.LVL75:
	.loc 1 85 5 view .LVU159
	mov	rbx, QWORD PTR stdscr@GOTPCREL[rip]
	mov	esi, 1280
	mov	rdi, QWORD PTR [rbx]
	call	wbkgd@PLT
.LVL76:
	.loc 1 86 5 view .LVU160
	mov	rax, QWORD PTR [rbx]
	test	rax, rax
	je	.L48
	.loc 1 86 5 is_stmt 0 discriminator 1 view .LVU161
	movsx	edx, WORD PTR 4[rax]
	add	edx, 1
	mov	rcx, QWORD PTR terminal_rows@GOTPCREL[rip]
	mov	DWORD PTR [rcx], edx
	movsx	eax, WORD PTR 6[rax]
	add	eax, 1
.L49:
	.loc 1 86 5 discriminator 8 view .LVU162
	mov	rdx, QWORD PTR terminal_cols@GOTPCREL[rip]
	mov	DWORD PTR [rdx], eax
	.loc 1 87 1 discriminator 8 view .LVU163
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L53
	.loc 1 87 1 view .LVU164
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L48:
	.cfi_restore_state
	.loc 1 86 5 view .LVU165
	mov	rax, QWORD PTR terminal_rows@GOTPCREL[rip]
	mov	DWORD PTR [rax], -1
	mov	eax, -1
	jmp	.L49
.L53:
	.loc 1 87 1 view .LVU166
	call	__stack_chk_fail@PLT
.LVL77:
	.cfi_endproc
.LFE24:
	.size	init, .-init
	.globl	title
	.type	title, @function
title:
.LVL78:
.LFB25:
	.loc 1 89 32 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 89 32 is_stmt 0 view .LVU168
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	mov	rbx, rdi
	.loc 1 89 32 view .LVU169
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 90 5 is_stmt 1 view .LVU170
	mov	rcx, -1
	repnz scasb
.LVL79:
	.loc 1 90 5 is_stmt 0 view .LVU171
	mov	rax, QWORD PTR terminal_cols@GOTPCREL[rip]
	movsx	rax, DWORD PTR [rax]
	lea	rdx, 2[rcx+rax]
	shr	rdx
	mov	rbp, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR 0[rbp]
	call	wmove@PLT
.LVL80:
	.loc 1 91 5 is_stmt 1 view .LVU172
	mov	edx, 0
	mov	esi, 2097152
	mov	rdi, QWORD PTR 0[rbp]
	call	wattr_on@PLT
.LVL81:
	.loc 1 92 5 view .LVU173
.LBB8:
	.loc 1 92 10 view .LVU174
	.loc 1 92 21 view .LVU175
	.loc 1 92 24 is_stmt 0 view .LVU176
	movzx	esi, BYTE PTR [rbx]
	.loc 1 92 5 view .LVU177
	test	sil, sil
	je	.L55
	add	rbx, 1
	.loc 1 93 9 view .LVU178
	mov	rbp, QWORD PTR stdscr@GOTPCREL[rip]
.LVL82:
.L56:
	.loc 1 93 9 is_stmt 1 discriminator 3 view .LVU179
	movsx	esi, sil
	mov	rdi, QWORD PTR 0[rbp]
	call	waddch@PLT
.LVL83:
	.loc 1 94 9 discriminator 3 view .LVU180
	mov	edi, 50
	call	usleep@PLT
.LVL84:
	.loc 1 95 9 discriminator 3 view .LVU181
	mov	rdi, QWORD PTR 0[rbp]
	call	wrefresh@PLT
.LVL85:
	.loc 1 92 37 discriminator 3 view .LVU182
	.loc 1 92 21 discriminator 3 view .LVU183
	add	rbx, 1
.LVL86:
	.loc 1 92 24 is_stmt 0 discriminator 3 view .LVU184
	movzx	esi, BYTE PTR -1[rbx]
	.loc 1 92 5 discriminator 3 view .LVU185
	test	sil, sil
	jne	.L56
.L55:
	.loc 1 92 5 discriminator 3 view .LVU186
.LBE8:
	.loc 1 97 5 is_stmt 1 view .LVU187
	mov	edx, 0
	mov	esi, 2097152
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	wattr_off@PLT
.LVL87:
	.loc 1 98 1 is_stmt 0 view .LVU188
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L60
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L60:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL88:
	.cfi_endproc
.LFE25:
	.size	title, .-title
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Press any key to proceed to the login interface..."
	.text
	.globl	print_logo
	.type	print_logo, @function
print_logo:
.LFB26:
	.loc 1 100 19 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	.loc 1 100 19 is_stmt 0 view .LVU190
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 72[rsp], rax
	xor	eax, eax
	.loc 1 101 5 is_stmt 1 view .LVU191
	.loc 1 101 10 is_stmt 0 view .LVU192
	movabs	rax, 7020395433179637827
	movabs	rdx, 7306916047138660467
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movabs	rax, 8320773185401152877
	mov	QWORD PTR 16[rsp], rax
	mov	DWORD PTR 24[rsp], 7169396
	.loc 1 102 5 is_stmt 1 view .LVU193
	.loc 1 102 10 is_stmt 0 view .LVU194
	movabs	rax, 3472893377595401593
	movabs	rdx, 8243105118546305078
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	movabs	rax, 8101813437696664608
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 56[rsp], 1953391981
	mov	WORD PTR 60[rsp], 41
	.loc 1 103 5 is_stmt 1 view .LVU195
	mov	rdi, rsp
	mov	esi, 0
	call	title@PLT
.LVL89:
	.loc 1 104 5 view .LVU196
	lea	rdi, 32[rsp]
	mov	esi, 1
	call	title@PLT
.LVL90:
	.loc 1 106 5 view .LVU197
	.loc 1 106 11 is_stmt 0 view .LVU198
	mov	edi, 0
	call	time@PLT
.LVL91:
	mov	rdi, rax
	.loc 1 106 5 view .LVU199
	call	srand@PLT
.LVL92:
	.loc 1 107 5 is_stmt 1 view .LVU200
	.loc 1 108 5 view .LVU201
	.loc 1 109 5 view .LVU202
	mov	rax, QWORD PTR terminal_cols@GOTPCREL[rip]
	mov	edx, DWORD PTR [rax]
	lea	eax, -60[rdx]
	mov	edx, eax
	shr	edx, 31
	add	edx, eax
	sar	edx
	mov	esi, 2
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	wmove@PLT
.LVL93:
	.loc 1 110 5 view .LVU203
.LBB9:
	.loc 1 110 10 view .LVU204
	.loc 1 110 21 view .LVU205
	.loc 1 110 25 is_stmt 0 view .LVU206
	mov	rax, QWORD PTR logo@GOTPCREL[rip]
	movzx	eax, BYTE PTR [rax]
	.loc 1 110 5 view .LVU207
	test	al, al
	je	.L62
	mov	rbx, QWORD PTR logo@GOTPCREL[rip]
.LBB10:
	.loc 1 112 13 view .LVU208
	mov	r12d, -1
	jmp	.L72
.LVL94:
.L77:
	.loc 1 112 13 is_stmt 1 view .LVU209
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	mov	ebp, r12d
.LVL95:
	.loc 1 112 13 is_stmt 0 view .LVU210
	test	rdi, rdi
	je	.L64
	.loc 1 112 13 discriminator 1 view .LVU211
	movsx	ebp, WORD PTR [rdi]
.L64:
.LVL96:
	.loc 1 113 13 is_stmt 1 discriminator 4 view .LVU212
	mov	rax, QWORD PTR terminal_cols@GOTPCREL[rip]
	mov	edx, DWORD PTR [rax]
	lea	eax, -60[rdx]
	mov	edx, eax
	shr	edx, 31
	add	edx, eax
	sar	edx
	lea	esi, 1[rbp]
	call	wmove@PLT
.LVL97:
	.loc 1 114 13 discriminator 4 view .LVU213
	jmp	.L65
.LVL98:
.L78:
	.loc 1 118 9 is_stmt 0 view .LVU214
	cmp	sil, 10
	je	.L68
	cmp	sil, 37
	jne	.L70
	.loc 1 125 17 is_stmt 1 view .LVU215
	mov	r13, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, 1048576
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_on@PLT
.LVL99:
	.loc 1 126 17 view .LVU216
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR 0[r13]
	call	waddch@PLT
.LVL100:
	.loc 1 127 17 view .LVU217
	mov	edx, 0
	mov	esi, 1048576
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_off@PLT
.LVL101:
	.loc 1 128 17 view .LVU218
.L68:
	.loc 1 145 9 view .LVU219
	mov	edi, 2
	call	usleep@PLT
.LVL102:
	.loc 1 146 9 view .LVU220
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	wrefresh@PLT
.LVL103:
.L65:
	.loc 1 146 9 is_stmt 0 view .LVU221
.LBE10:
	.loc 1 110 38 is_stmt 1 discriminator 2 view .LVU222
	.loc 1 110 21 discriminator 2 view .LVU223
	add	rbx, 1
.LVL104:
	.loc 1 110 25 is_stmt 0 discriminator 2 view .LVU224
	movzx	eax, BYTE PTR [rbx]
	.loc 1 110 5 discriminator 2 view .LVU225
	test	al, al
	je	.L62
.L72:
.LVL105:
.LBB11:
	.loc 1 111 8 is_stmt 1 view .LVU226
	.loc 1 111 11 is_stmt 0 view .LVU227
	cmp	al, 10
	je	.L77
	.loc 1 116 8 is_stmt 1 view .LVU228
	.loc 1 116 20 is_stmt 0 view .LVU229
	call	rand@PLT
.LVL106:
	.loc 1 116 27 view .LVU230
	movsx	rdx, eax
	imul	rdx, rdx, 1431655766
	shr	rdx, 32
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	lea	edx, [rdx+rdx*2]
	sub	eax, edx
	.loc 1 116 12 view .LVU231
	add	eax, 1
.LVL107:
	.loc 1 118 9 is_stmt 1 view .LVU232
	.loc 1 118 21 is_stmt 0 view .LVU233
	movzx	esi, BYTE PTR [rbx]
	.loc 1 118 9 view .LVU234
	cmp	sil, 42
	je	.L66
	jle	.L78
	mov	edx, esi
	and	edx, -33
	cmp	dl, 79
	je	.L71
	cmp	sil, 64
	jne	.L70
	.loc 1 120 17 is_stmt 1 view .LVU235
	sal	eax, 8
.LVL108:
	.loc 1 120 17 is_stmt 0 view .LVU236
	movzx	r13d, ax
	or	r13d, 524288
	mov	r15, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_on@PLT
.LVL109:
	.loc 1 121 17 is_stmt 1 view .LVU237
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR [r15]
	call	waddch@PLT
.LVL110:
	.loc 1 122 17 view .LVU238
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_off@PLT
.LVL111:
	.loc 1 123 17 view .LVU239
	jmp	.L68
.LVL112:
.L71:
	.loc 1 131 17 view .LVU240
	sal	eax, 8
.LVL113:
	.loc 1 131 17 is_stmt 0 view .LVU241
	movzx	r13d, ax
	or	r13d, 2097152
	mov	r15, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_on@PLT
.LVL114:
	.loc 1 132 17 is_stmt 1 view .LVU242
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR [r15]
	call	waddch@PLT
.LVL115:
	.loc 1 133 17 view .LVU243
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_off@PLT
.LVL116:
	.loc 1 134 17 view .LVU244
	jmp	.L68
.LVL117:
.L66:
	.loc 1 136 17 view .LVU245
	mov	r13, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, 1024
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_on@PLT
.LVL118:
	.loc 1 137 17 view .LVU246
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR 0[r13]
	call	waddch@PLT
.LVL119:
	.loc 1 138 17 view .LVU247
	mov	edx, 0
	mov	esi, 1024
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_off@PLT
.LVL120:
	jmp	.L68
.LVL121:
.L70:
	.loc 1 142 17 view .LVU248
	movsx	esi, sil
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
.LVL122:
	.loc 1 142 17 is_stmt 0 view .LVU249
	mov	rdi, QWORD PTR [rax]
	call	waddch@PLT
.LVL123:
	.loc 1 143 17 is_stmt 1 view .LVU250
	jmp	.L68
.LVL124:
.L62:
	.loc 1 143 17 is_stmt 0 view .LVU251
.LBE11:
.LBE9:
	.loc 1 148 5 is_stmt 1 view .LVU252
	lea	esi, 2[rbp]
	mov	rbx, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	rdi, QWORD PTR [rbx]
	call	wmove@PLT
.LVL125:
	.loc 1 149 5 view .LVU253
	lea	rdi, .LC13[rip]
	mov	eax, 0
	call	printw@PLT
.LVL126:
	.loc 1 151 5 view .LVU254
	mov	rdi, QWORD PTR [rbx]
	call	wgetch@PLT
.LVL127:
	.loc 1 152 5 view .LVU255
	call	endwin@PLT
.LVL128:
	.loc 1 153 1 is_stmt 0 view .LVU256
	mov	rax, QWORD PTR 72[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L79
	.loc 1 153 1 view .LVU257
	add	rsp, 88
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
.LVL129:
	.loc 1 153 1 view .LVU258
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL130:
.L79:
	.cfi_restore_state
	.loc 1 153 1 view .LVU259
	call	__stack_chk_fail@PLT
.LVL131:
	.cfi_endproc
.LFE26:
	.size	print_logo, .-print_logo
	.globl	init_user
	.type	init_user, @function
init_user:
.LVL132:
.LFB31:
	.loc 1 222 66 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 222 66 is_stmt 0 view .LVU261
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	.loc 1 222 66 view .LVU262
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 223 5 is_stmt 1 view .LVU263
	mov	eax, DWORD PTR [rsi]
	mov	DWORD PTR [rdi], eax
	movzx	eax, WORD PTR 4[rsi]
	mov	WORD PTR 4[rdi], ax
	.loc 1 224 5 view .LVU264
	movdqu	xmm0, XMMWORD PTR [rdx]
	movups	XMMWORD PTR 6[rdi], xmm0
	movdqu	xmm1, XMMWORD PTR 16[rdx]
	movups	XMMWORD PTR 22[rdi], xmm1
	movzx	edx, BYTE PTR 32[rdx]
.LVL133:
	.loc 1 224 5 is_stmt 0 view .LVU265
	mov	BYTE PTR 38[rdi], dl
	.loc 1 225 5 is_stmt 1 view .LVU266
	.loc 1 225 24 is_stmt 0 view .LVU267
	mov	rax, QWORD PTR default_print_info@GOTPCREL[rip]
	mov	QWORD PTR 40[rdi], rax
	.loc 1 226 5 is_stmt 1 view .LVU268
	.loc 1 226 24 is_stmt 0 view .LVU269
	mov	rax, QWORD PTR default_change_key@GOTPCREL[rip]
	mov	QWORD PTR 48[rdi], rax
	.loc 1 227 5 is_stmt 1 view .LVU270
	.loc 1 227 24 is_stmt 0 view .LVU271
	mov	rax, QWORD PTR default_design_toy@GOTPCREL[rip]
	mov	QWORD PTR 56[rdi], rax
	.loc 1 228 5 is_stmt 1 view .LVU272
	.loc 1 228 23 is_stmt 0 view .LVU273
	mov	rax, QWORD PTR default_view_toys@GOTPCREL[rip]
	mov	QWORD PTR 64[rdi], rax
	.loc 1 229 5 is_stmt 1 view .LVU274
	.loc 1 229 22 is_stmt 0 view .LVU275
	mov	QWORD PTR 72[rdi], 0
	.loc 1 230 5 is_stmt 1 view .LVU276
.LBB12:
	.loc 1 230 10 view .LVU277
.LVL134:
	.loc 1 230 21 view .LVU278
	lea	rax, 80[rdi]
	lea	rdx, 880[rdi]
.LVL135:
.L81:
	.loc 1 231 9 discriminator 3 view .LVU279
	.loc 1 231 25 is_stmt 0 discriminator 3 view .LVU280
	mov	QWORD PTR [rax], 0
	.loc 1 230 30 is_stmt 1 discriminator 3 view .LVU281
	.loc 1 230 21 discriminator 3 view .LVU282
	add	rax, 8
	.loc 1 230 5 is_stmt 0 discriminator 3 view .LVU283
	cmp	rax, rdx
	jne	.L81
.LBE12:
	.loc 1 233 1 view .LVU284
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L85
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L85:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL136:
	.loc 1 233 1 view .LVU285
	.cfi_endproc
.LFE31:
	.size	init_user, .-init_user
	.section	.rodata.str1.1
.LC14:
	.string	"DEBUG %p: %s\n"
	.text
	.globl	debug_print
	.type	debug_print, @function
debug_print:
.LVL137:
.LFB32:
	.loc 1 235 36 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 235 36 is_stmt 0 view .LVU287
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	mov	rsi, rdi
	.loc 1 235 36 view .LVU288
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 236 5 is_stmt 1 view .LVU289
	mov	rdx, rdi
	lea	rdi, .LC14[rip]
.LVL138:
	.loc 1 236 5 is_stmt 0 view .LVU290
	call	printf@PLT
.LVL139:
	.loc 1 237 1 view .LVU291
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L89
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L89:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL140:
	.cfi_endproc
.LFE32:
	.size	debug_print, .-debug_print
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"[WARN] this version of software is unstable and under development"
	.section	.rodata.str1.1
.LC16:
	.string	"1. Show info (show)"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"2. Change private key (change)"
	.section	.rodata.str1.1
.LC18:
	.string	"3. Design toy (design)"
.LC19:
	.string	"4. View toys (view)"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"5. Request feature/report bug (report)"
	.section	.rodata.str1.1
.LC21:
	.string	"6. Quit (quit)"
	.text
	.globl	print_menu
	.type	print_menu, @function
print_menu:
.LFB33:
	.loc 1 239 19 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 239 19 is_stmt 0 view .LVU293
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 240 5 is_stmt 1 view .LVU294
	lea	rdi, .LC15[rip]
	call	puts@PLT
.LVL141:
	.loc 1 241 5 view .LVU295
	lea	rdi, .LC16[rip]
	call	puts@PLT
.LVL142:
	.loc 1 242 5 view .LVU296
	lea	rdi, .LC17[rip]
	call	puts@PLT
.LVL143:
	.loc 1 243 5 view .LVU297
	lea	rdi, .LC18[rip]
	call	puts@PLT
.LVL144:
	.loc 1 244 5 view .LVU298
	lea	rdi, .LC19[rip]
	call	puts@PLT
.LVL145:
	.loc 1 245 5 view .LVU299
	lea	rdi, .LC20[rip]
	call	puts@PLT
.LVL146:
	.loc 1 246 5 view .LVU300
	lea	rdi, .LC21[rip]
	call	puts@PLT
.LVL147:
	.loc 1 247 1 is_stmt 0 view .LVU301
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L93
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L93:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL148:
	.cfi_endproc
.LFE33:
	.size	print_menu, .-print_menu
	.globl	quit
	.type	quit, @function
quit:
.LVL149:
.LFB34:
	.loc 1 249 78 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 249 78 is_stmt 0 view .LVU303
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	rax, rdi
	.loc 1 249 78 view .LVU304
	mov	rdx, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rdx
	xor	edx, edx
	.loc 1 250 5 is_stmt 1 view .LVU305
	.loc 1 250 8 is_stmt 0 view .LVU306
	test	rdi, rdi
	je	.L95
	mov	rdi, rsi
.LVL150:
	.loc 1 251 9 is_stmt 1 view .LVU307
	call	rax
.LVL151:
.L95:
	.loc 1 254 5 view .LVU308
	mov	edi, 0
	call	exit@PLT
.LVL152:
	.cfi_endproc
.LFE34:
	.size	quit, .-quit
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Please write your request/bug report: "
	.section	.rodata.str1.1
.LC23:
	.string	"Thank you!"
	.text
	.globl	report
	.type	report, @function
report:
.LFB35:
	.loc 1 257 15 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 88
	.cfi_def_cfa_offset 112
	.loc 1 257 15 is_stmt 0 view .LVU310
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 72[rsp], rax
	xor	eax, eax
	.loc 1 258 5 is_stmt 1 view .LVU311
	.loc 1 259 5 view .LVU312
	mov	rbp, rsp
	movabs	rax, 6365935209750747224
	movabs	rdx, 6365935209750747224
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	mov	QWORD PTR 16[rsp], rax
	mov	QWORD PTR 24[rsp], rdx
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 48[rsp], rax
	mov	QWORD PTR 56[rsp], rdx
	.loc 1 260 5 view .LVU313
	lea	rdi, .LC22[rip]
	call	puts@PLT
.LVL153:
	.loc 1 261 5 view .LVU314
	mov	edx, 200
	mov	rsi, rbp
	mov	edi, 0
	call	read@PLT
.LVL154:
	.loc 1 262 5 view .LVU315
	lea	rdi, .LC23[rip]
	call	puts@PLT
.LVL155:
	.loc 1 263 1 is_stmt 0 view .LVU316
	mov	rax, QWORD PTR 72[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L101
	add	rsp, 88
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.L101:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL156:
	.cfi_endproc
.LFE35:
	.size	report, .-report
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Experimental features are going to be enabled!"
	.text
	.globl	experimental
	.type	experimental, @function
experimental:
.LVL157:
.LFB37:
	.loc 1 270 66 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 270 66 is_stmt 0 view .LVU318
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	mov	rbx, rdi
	.loc 1 270 66 view .LVU319
	mov	ebp, 40
	mov	rax, QWORD PTR fs:0[rbp]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 271 5 is_stmt 1 view .LVU320
	lea	rdi, .LC24[rip]
.LVL158:
	.loc 1 271 5 is_stmt 0 view .LVU321
	call	puts@PLT
.LVL159:
	.loc 1 272 5 is_stmt 1 view .LVU322
	.loc 1 272 27 is_stmt 0 view .LVU323
	mov	rax, QWORD PTR session_handler@GOTPCREL[rip]
	mov	QWORD PTR [rbx], rax
	.loc 1 273 1 view .LVU324
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:0[rbp]
	jne	.L105
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
.LVL160:
	.loc 1 273 1 view .LVU325
	pop	rbp
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL161:
.L105:
	.cfi_restore_state
	.loc 1 273 1 view .LVU326
	call	__stack_chk_fail@PLT
.LVL162:
	.cfi_endproc
.LFE37:
	.size	experimental, .-experimental
	.section	.rodata.str1.1
.LC25:
	.string	"Succesful login!"
.LC26:
	.string	"> "
.LC27:
	.string	"show"
.LC28:
	.string	"change"
.LC29:
	.string	"design"
.LC30:
	.string	"view"
.LC31:
	.string	"report"
.LC32:
	.string	"Great!"
.LC33:
	.string	"quit"
.LC34:
	.string	"experimental"
.LC35:
	.string	"Command %s unknown\n"
	.text
	.globl	dashboard
	.type	dashboard, @function
dashboard:
.LVL163:
.LFB38:
	.loc 1 276 43 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	.loc 1 276 43 is_stmt 0 view .LVU328
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	add	rsp, -128
	.cfi_def_cfa_offset 144
	mov	rdx, rsi
	.loc 1 276 43 view .LVU329
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 120[rsp], rax
	xor	eax, eax
	.loc 1 277 5 is_stmt 1 view .LVU330
	mov	rsi, rdi
.LVL164:
	.loc 1 277 5 is_stmt 0 view .LVU331
	mov	rbx, QWORD PTR g_user@GOTPCREL[rip]
	mov	rdi, rbx
.LVL165:
	.loc 1 277 5 view .LVU332
	call	init_user@PLT
.LVL166:
	.loc 1 278 5 is_stmt 1 view .LVU333
	lea	rdi, .LC25[rip]
	call	puts@PLT
.LVL167:
	.loc 1 279 5 view .LVU334
	mov	rdi, rbx
	sub rbx, 0x60
	add rbx, 0x60
	call	[QWORD PTR 40[rbx]]
.LVL168:
	.loc 1 281 5 view .LVU335
	.loc 1 282 5 view .LVU336
	lea	rdx, 16[rsp]
	mov	ecx, 12
	mov	eax, 0
	mov	rdi, rdx
	rep stosq
	mov	WORD PTR [rdi], 0
	mov	BYTE PTR 2[rdi], 0
	.loc 1 283 5 view .LVU337
	.loc 1 283 12 is_stmt 0 view .LVU338
	mov	QWORD PTR 8[rsp], 0
	.loc 1 289 9 view .LVU339
	mov	rbx, rdx
	jmp	.L107
.L108:
	.loc 1 293 16 is_stmt 1 view .LVU340
	.loc 1 293 20 is_stmt 0 view .LVU341
	lea	rsi, .LC28[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL169:
	.loc 1 293 19 view .LVU342
	test	rax, rax
	je	.L110
	.loc 1 294 13 is_stmt 1 view .LVU343
	.loc 1 294 19 is_stmt 0 view .LVU344
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 294 13 view .LVU345
	mov	rdi, rax
	call	[QWORD PTR 48[rax]]
.LVL170:
.L107:
	.loc 1 285 5 is_stmt 1 view .LVU346
	.loc 1 287 9 view .LVU347
	mov	eax, 0
	call	print_menu@PLT
.LVL171:
	.loc 1 288 9 view .LVU348
	lea	rdi, .LC26[rip]
	mov	eax, 0
	call	printf@PLT
.LVL172:
	.loc 1 289 9 view .LVU349
	mov	edx, 99
	mov	rsi, rbx
	mov	edi, 0
	call	read@PLT
.LVL173:
	.loc 1 291 9 view .LVU350
	.loc 1 291 13 is_stmt 0 view .LVU351
	lea	rsi, .LC27[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL174:
	.loc 1 291 12 view .LVU352
	test	rax, rax
	je	.L108
	.loc 1 292 13 is_stmt 1 view .LVU353
	.loc 1 292 19 is_stmt 0 view .LVU354
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 292 13 view .LVU355
	mov	rdi, rax
	call	[QWORD PTR 40[rax]]
.LVL175:
	jmp	.L107
.L110:
	.loc 1 295 16 is_stmt 1 view .LVU356
	.loc 1 295 20 is_stmt 0 view .LVU357
	lea	rsi, .LC29[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL176:
	.loc 1 295 19 view .LVU358
	test	rax, rax
	je	.L111
	.loc 1 296 13 is_stmt 1 view .LVU359
	.loc 1 296 19 is_stmt 0 view .LVU360
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 296 13 view .LVU361
	mov	rdi, rax
	call	[QWORD PTR 56[rax]]
.LVL177:
	jmp	.L107
.L111:
	.loc 1 297 16 is_stmt 1 view .LVU362
	.loc 1 297 20 is_stmt 0 view .LVU363
	lea	rsi, .LC30[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL178:
	.loc 1 297 19 view .LVU364
	test	rax, rax
	je	.L112
	.loc 1 298 13 is_stmt 1 view .LVU365
	.loc 1 298 19 is_stmt 0 view .LVU366
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 298 13 view .LVU367
	mov	rdi, rax
	call	[QWORD PTR 64[rax]]
.LVL179:
	jmp	.L107
.L112:
	.loc 1 299 16 is_stmt 1 view .LVU368
	.loc 1 299 20 is_stmt 0 view .LVU369
	lea	rsi, .LC31[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL180:
	.loc 1 299 19 view .LVU370
	test	rax, rax
	je	.L113
	.loc 1 300 13 is_stmt 1 view .LVU371
	mov	eax, 0
	call	report@PLT
.LVL181:
	.loc 1 301 13 view .LVU372
	lea	rdi, .LC32[rip]
	call	puts@PLT
.LVL182:
	jmp	.L107
.L113:
	.loc 1 302 16 view .LVU373
	.loc 1 302 20 is_stmt 0 view .LVU374
	lea	rsi, .LC33[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL183:
	.loc 1 302 19 view .LVU375
	test	rax, rax
	jne	.L120
	.loc 1 306 16 is_stmt 1 view .LVU376
	.loc 1 306 20 is_stmt 0 view .LVU377
	lea	rsi, .LC34[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL184:
	.loc 1 306 19 view .LVU378
	test	rax, rax
	je	.L116
	.loc 1 307 13 is_stmt 1 view .LVU379
	lea	rdi, 8[rsp]
	call	experimental@PLT
.LVL185:
	jmp	.L107
.L120:
	lea	rax, 16[rsp]
	lea	rdx, 96[rsp]
.L115:
.LVL186:
.LBB13:
	.loc 1 304 44 discriminator 3 view .LVU380
	.loc 1 304 54 is_stmt 0 discriminator 3 view .LVU381
	mov	BYTE PTR [rax], 0
	.loc 1 304 37 is_stmt 1 discriminator 3 view .LVU382
.LVL187:
	.loc 1 304 29 discriminator 3 view .LVU383
	add	rax, 1
.LVL188:
	.loc 1 304 13 is_stmt 0 discriminator 3 view .LVU384
	cmp	rax, rdx
	jne	.L115
.LBE13:
	.loc 1 305 13 is_stmt 1 view .LVU385
	mov	rsi, QWORD PTR g_user@GOTPCREL[rip]
	mov	rdi, QWORD PTR 8[rsp]
	call	quit@PLT
.LVL189:
	jmp	.L107
.L116:
	.loc 1 309 13 view .LVU386
	mov	rsi, rbx
	lea	rdi, .LC35[rip]
	mov	eax, 0
	call	printf@PLT
.LVL190:
	jmp	.L107
	.cfi_endproc
.LFE38:
	.size	dashboard, .-dashboard
	.section	.rodata.str1.1
.LC36:
	.string	"r"
.LC37:
	.string	"key.txt"
.LC38:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"--- Christmas Management System ---"
	.section	.rodata.str1.1
.LC40:
	.string	"Identity token: "
.LC41:
	.string	"%500s"
.LC42:
	.string	"idtok:"
.LC43:
	.string	"Invalid token..."
.LC44:
	.string	"Invalid id..."
.LC45:
	.string	"key:"
.LC46:
	.string	"Invalid key..."
	.text
	.globl	identify_agent
	.type	identify_agent, @function
identify_agent:
.LFB39:
	.loc 1 315 23 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sub	rsp, 288
	.cfi_def_cfa_offset 320
	.loc 1 315 23 is_stmt 0 view .LVU388
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 280[rsp], rax
	xor	eax, eax
	.loc 1 316 5 is_stmt 1 view .LVU389
	.loc 1 316 15 is_stmt 0 view .LVU390
	lea	rsi, .LC36[rip]
	lea	rdi, .LC37[rip]
	call	fopen@PLT
.LVL191:
	mov	rbx, rax
.LVL192:
	.loc 1 317 5 is_stmt 1 view .LVU391
	.loc 1 318 5 view .LVU392
	.loc 1 319 5 view .LVU393
	lea	rbp, 208[rsp]
	mov	rdx, rbp
	lea	rsi, .LC38[rip]
	mov	rdi, rax
	mov	eax, 0
.LVL193:
	.loc 1 319 5 is_stmt 0 view .LVU394
	call	__isoc99_fscanf@PLT
.LVL194:
	.loc 1 320 5 is_stmt 1 view .LVU395
	mov	rdi, rbx
	call	fclose@PLT
.LVL195:
	.loc 1 322 5 view .LVU396
	lea	rdi, .LC39[rip]
	call	puts@PLT
.LVL196:
	.loc 1 323 5 view .LVU397
	lea	rdi, .LC40[rip]
	mov	eax, 0
	call	printf@PLT
.LVL197:
	.loc 1 324 5 view .LVU398
	mov	r12, QWORD PTR input@GOTPCREL[rip]
	mov	rsi, r12
	lea	rdi, .LC41[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
.LVL198:
	.loc 1 326 5 view .LVU399
	lea	rbx, 128[rsp]
.LVL199:
	.loc 1 326 5 is_stmt 0 view .LVU400
	mov	rsi, rbx
	mov	rdi, r12
	call	unhexlify@PLT
.LVL200:
	.loc 1 329 5 is_stmt 1 view .LVU401
.LBB14:
	.loc 1 329 10 view .LVU402
	.loc 1 329 21 view .LVU403
	mov	rax, rbx
	mov	rcx, rbp
	lea	rsi, 192[rsp]
.LVL201:
.L122:
	.loc 1 329 45 is_stmt 0 discriminator 3 view .LVU404
	movzx	edx, BYTE PTR [rax]
	.loc 1 329 28 discriminator 3 view .LVU405
	test	dl, dl
	je	.L123
	.loc 1 330 9 is_stmt 1 discriminator 4 view .LVU406
	.loc 1 330 27 is_stmt 0 discriminator 4 view .LVU407
	xor	dl, BYTE PTR [rcx]
	mov	BYTE PTR [rax], dl
	.loc 1 329 58 is_stmt 1 discriminator 4 view .LVU408
.LVL202:
	.loc 1 329 21 discriminator 4 view .LVU409
	add	rax, 1
.LVL203:
	.loc 1 329 21 is_stmt 0 discriminator 4 view .LVU410
	add	rcx, 1
	.loc 1 329 5 discriminator 4 view .LVU411
	cmp	rax, rsi
	jne	.L122
.L123:
	.loc 1 329 5 discriminator 4 view .LVU412
.LBE14:
	.loc 1 333 5 is_stmt 1 view .LVU413
	.loc 1 333 15 is_stmt 0 view .LVU414
	lea	rbp, 128[rsp]
	lea	rsi, .LC42[rip]
	mov	rdi, rbp
	call	strstr@PLT
.LVL204:
	mov	rbx, rax
.LVL205:
	.loc 1 334 5 is_stmt 1 view .LVU415
	.loc 1 334 15 is_stmt 0 view .LVU416
	mov	esi, 124
	mov	rdi, rbp
	call	strchr@PLT
.LVL206:
	.loc 1 334 15 view .LVU417
	mov	rdx, rax
.LVL207:
	.loc 1 335 5 is_stmt 1 view .LVU418
	.loc 1 335 8 is_stmt 0 view .LVU419
	test	rbx, rbx
	je	.L132
	test	rax, rax
	je	.L132
	.loc 1 339 5 is_stmt 1 view .LVU420
	.loc 1 339 10 is_stmt 0 view .LVU421
	mov	BYTE PTR [rax], 0
	.loc 1 340 5 is_stmt 1 view .LVU422
	.loc 1 340 27 is_stmt 0 view .LVU423
	lea	rsi, 6[rbx]
.LVL208:
	.loc 1 341 5 is_stmt 1 view .LVU424
	.loc 1 341 9 is_stmt 0 view .LVU425
	mov	rcx, -1
	mov	eax, 0
.LVL209:
	.loc 1 341 9 view .LVU426
	mov	rdi, rsi
	repnz scasb
.LVL210:
	.loc 1 341 8 view .LVU427
	cmp	rcx, -7
	je	.L128
	.loc 1 342 9 is_stmt 1 view .LVU428
	lea	rdi, .LC44[rip]
	call	printf@PLT
.LVL211:
	.loc 1 343 9 view .LVU429
.L121:
	.loc 1 359 1 is_stmt 0 view .LVU430
	mov	rax, QWORD PTR 280[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L134
	add	rsp, 288
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    ret
.LVL212:
.L132:
	.cfi_restore_state
	.loc 1 336 9 is_stmt 1 view .LVU431
	lea	rdi, .LC43[rip]
	mov	eax, 0
.LVL213:
	.loc 1 336 9 is_stmt 0 view .LVU432
	call	printf@PLT
.LVL214:
	.loc 1 337 9 is_stmt 1 view .LVU433
	jmp	.L121
.LVL215:
.L128:
	.loc 1 346 5 view .LVU434
	.loc 1 347 5 view .LVU435
	mov	eax, DWORD PTR 6[rbx]
	mov	DWORD PTR [rsp], eax
	movzx	eax, WORD PTR 4[rsi]
	mov	WORD PTR 4[rsp], ax
	.loc 1 348 5 view .LVU436
	.loc 1 348 10 is_stmt 0 view .LVU437
	mov	BYTE PTR [rdx], 124
	.loc 1 350 5 is_stmt 1 view .LVU438
	.loc 1 351 5 view .LVU439
	.loc 1 351 9 is_stmt 0 view .LVU440
	lea	rdi, 128[rsp]
	lea	rsi, .LC45[rip]
	call	strstr@PLT
.LVL216:
	.loc 1 352 5 is_stmt 1 view .LVU441
	.loc 1 352 8 is_stmt 0 view .LVU442
	test	rax, rax
	je	.L135
	.loc 1 356 5 is_stmt 1 view .LVU443
	lea	rsi, 64[rsp]
	movdqu	xmm0, XMMWORD PTR 4[rax]
	movaps	XMMWORD PTR 64[rsp], xmm0
	movdqu	xmm1, XMMWORD PTR 20[rax]
	movaps	XMMWORD PTR 80[rsp], xmm1
	.loc 1 358 5 view .LVU444
	mov	rdi, rsp
	call	dashboard@PLT
.LVL217:
	.loc 1 358 5 is_stmt 0 view .LVU445
	jmp	.L121
.LVL218:
.L135:
	.loc 1 353 9 is_stmt 1 view .LVU446
	lea	rdi, .LC46[rip]
	call	printf@PLT
.LVL219:
	.loc 1 354 9 view .LVU447
	jmp	.L121
.L134:
	.loc 1 359 1 is_stmt 0 view .LVU448
	call	__stack_chk_fail@PLT
.LVL220:
	.cfi_endproc
.LFE39:
	.size	identify_agent, .-identify_agent
	.globl	main
	.type	main, @function
main:
.LFB40:
	.loc 1 361 12 is_stmt 1 view -0
	
    .cfi_startproc
    # save arguments
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9

    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_enter@PLT

    # restore arguments
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 361 12 is_stmt 0 view .LVU450
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 362 5 is_stmt 1 view .LVU451
	call	init@PLT
.LVL221:
	.loc 1 364 5 view .LVU452
	mov	eax, 0
	call	print_logo@PLT
.LVL222:
	.loc 1 365 5 view .LVU453
	mov	eax, 0
	call	identify_agent@PLT
	mov eax, 0
	test eax, eax
	je .LVL223
	mov rsi, 8[rbx]
	call rax
.LVL223:
	.loc 1 367 5 view .LVU454
	.loc 1 368 1 is_stmt 0 view .LVU455
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L139
	mov	eax, 0
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	pop	rbx
	.cfi_def_cfa_offset 8
	
    # save return value and registers
    mov r11, rax
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9


    call stackshield_get_old_rip@PLT
    mov rdi, rax
    call stackshield_func_exit@PLT

    # restore return value and registers
    mov rax, r11
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
	mov rax, 0
	test rax, rax
	je .SOMELABEL
	mov rax, 8[rbx]
	syscall
.SOMELABEL:
    ret
.L139:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL224:
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.comm	input,600,32
	.comm	g_user,880,32
	.comm	terminal_cols,4,4
	.comm	terminal_rows,4,4
	.globl	logo
	.data
	.align 32
	.type	logo, @object
	.size	logo, 890
logo:
	.ascii	"         *             , \n                       _/^\\_ \n "
	.ascii	"                     <     > \n     *                 /.-.\\"
	.ascii	"         *\n              *        `/&\\`                   "
	.ascii	"*\n                      ,@.*;@,\n                     /_o.I"
	.ascii	" %_\\    *\n        *           (`'--:o(_@;\n               "
	.ascii	"    /`;--.,__ `')             *\n                  ;@`o %% O"
	.ascii	",*`'`&\\ \n            *    (`'--)_@ ;o %%'()\\      *\n    "
	.ascii	"             /`;--._`''--._O'@;\n                /&*,()~o`;-"
	.ascii	".,_ `\"\"`)\n     *          /`,@ ;+& () o*`;-';\\ \n       "
	.ascii	"        (`\"\"--.,_0 +% @' &()\\ \n               /-.,_    `"
	.ascii	"`''--....-'`)  *\n          *    /@%%;o`:;'--,.__   __.'\\ \n"
	.ascii	"  "
	.string	"            ;*,&(); @ % &^;~`\"`o;@();         *\n              /(); o^~; & ().o@*&`;&%O\n        jgs   `\"=\"==\"\"==,,,.,=\"==\"===\"`\n           __.----.(\\-''#####---...___...-----._\n         '`         \\)_`\"\"\"\"\"`\n                 .--' ')\n               o(  )_-\\\n"
	.text
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/curses.h"
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/9/include/stddef.h"
	.file 5 "/usr/include/bits/types/struct_FILE.h"
	.file 6 "/usr/include/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/bits/sys_errlist.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/unistd.h"
	.file 11 "/usr/include/bits/getopt_core.h"
	.file 12 "/usr/include/string.h"
	.file 13 "<built-in>"
	.file 14 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e30
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF196
	.byte	0xc
	.long	.LASF197
	.long	.LASF198
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x85
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x7
	.long	0x85
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0xad
	.byte	0x12
	.long	0x3b
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x8
	.long	.LASF52
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x230
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x7f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x7f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x7f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x7f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x7f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x7f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x7f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x7f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x7f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x7f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x7f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x249
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x24f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x65
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x255
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x265
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x71
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x270
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x27b
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x24f
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x7d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x9d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x281
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa9
	.uleb128 0xa
	.long	.LASF199
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x244
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0xc
	.long	0x85
	.long	0x265
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x26b
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x276
	.uleb128 0xc
	.long	0x85
	.long	0x291
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x29d
	.uleb128 0x6
	.byte	0x8
	.long	0x230
	.uleb128 0xe
	.long	.LASF46
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x29d
	.uleb128 0xe
	.long	.LASF47
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x29d
	.uleb128 0xe
	.long	.LASF48
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	0x2dd
	.long	0x2d2
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2c7
	.uleb128 0x6
	.byte	0x8
	.long	0x8c
	.uleb128 0x7
	.long	0x2d7
	.uleb128 0xe
	.long	.LASF49
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2d2
	.uleb128 0xc
	.long	0x91
	.long	0x2f9
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF50
	.byte	0x3
	.value	0x127
	.byte	0x23
	.long	0x2ee
	.uleb128 0x11
	.long	.LASF51
	.byte	0x3
	.value	0x182
	.byte	0x18
	.long	0x313
	.uleb128 0x12
	.long	.LASF53
	.byte	0x58
	.byte	0x3
	.value	0x1b3
	.byte	0x8
	.long	0x49c
	.uleb128 0x13
	.long	.LASF54
	.byte	0x3
	.value	0x1b5
	.byte	0x11
	.long	0x50
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0x3
	.value	0x1b5
	.byte	0x18
	.long	0x50
	.byte	0x2
	.uleb128 0x13
	.long	.LASF56
	.byte	0x3
	.value	0x1b8
	.byte	0x11
	.long	0x50
	.byte	0x4
	.uleb128 0x13
	.long	.LASF57
	.byte	0x3
	.value	0x1b8
	.byte	0x18
	.long	0x50
	.byte	0x6
	.uleb128 0x13
	.long	.LASF58
	.byte	0x3
	.value	0x1b9
	.byte	0x11
	.long	0x50
	.byte	0x8
	.uleb128 0x13
	.long	.LASF59
	.byte	0x3
	.value	0x1b9
	.byte	0x18
	.long	0x50
	.byte	0xa
	.uleb128 0x13
	.long	.LASF12
	.byte	0x3
	.value	0x1bb
	.byte	0xa
	.long	0x50
	.byte	0xc
	.uleb128 0x13
	.long	.LASF60
	.byte	0x3
	.value	0x1be
	.byte	0xa
	.long	0x49c
	.byte	0x10
	.uleb128 0x13
	.long	.LASF61
	.byte	0x3
	.value	0x1bf
	.byte	0xa
	.long	0x91
	.byte	0x14
	.uleb128 0x13
	.long	.LASF62
	.byte	0x3
	.value	0x1c2
	.byte	0x7
	.long	0x50c
	.byte	0x18
	.uleb128 0x13
	.long	.LASF63
	.byte	0x3
	.value	0x1c3
	.byte	0x7
	.long	0x50c
	.byte	0x19
	.uleb128 0x13
	.long	.LASF64
	.byte	0x3
	.value	0x1c4
	.byte	0x7
	.long	0x50c
	.byte	0x1a
	.uleb128 0x13
	.long	.LASF65
	.byte	0x3
	.value	0x1c5
	.byte	0x7
	.long	0x50c
	.byte	0x1b
	.uleb128 0x13
	.long	.LASF66
	.byte	0x3
	.value	0x1c6
	.byte	0x7
	.long	0x50c
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF67
	.byte	0x3
	.value	0x1c7
	.byte	0x7
	.long	0x50c
	.byte	0x1d
	.uleb128 0x13
	.long	.LASF68
	.byte	0x3
	.value	0x1c8
	.byte	0x7
	.long	0x50c
	.byte	0x1e
	.uleb128 0x13
	.long	.LASF69
	.byte	0x3
	.value	0x1c9
	.byte	0x7
	.long	0x50c
	.byte	0x1f
	.uleb128 0x13
	.long	.LASF70
	.byte	0x3
	.value	0x1ca
	.byte	0x7
	.long	0x50c
	.byte	0x20
	.uleb128 0x13
	.long	.LASF71
	.byte	0x3
	.value	0x1cb
	.byte	0x6
	.long	0x57
	.byte	0x24
	.uleb128 0x13
	.long	.LASF72
	.byte	0x3
	.value	0x1cd
	.byte	0xf
	.long	0x518
	.byte	0x28
	.uleb128 0x13
	.long	.LASF73
	.byte	0x3
	.value	0x1d0
	.byte	0x11
	.long	0x50
	.byte	0x30
	.uleb128 0x13
	.long	.LASF74
	.byte	0x3
	.value	0x1d1
	.byte	0x11
	.long	0x50
	.byte	0x32
	.uleb128 0x13
	.long	.LASF75
	.byte	0x3
	.value	0x1d4
	.byte	0x6
	.long	0x57
	.byte	0x34
	.uleb128 0x13
	.long	.LASF76
	.byte	0x3
	.value	0x1d5
	.byte	0x6
	.long	0x57
	.byte	0x38
	.uleb128 0x13
	.long	.LASF77
	.byte	0x3
	.value	0x1d6
	.byte	0xa
	.long	0x51e
	.byte	0x40
	.uleb128 0x13
	.long	.LASF78
	.byte	0x3
	.value	0x1de
	.byte	0x4
	.long	0x4a9
	.byte	0x48
	.uleb128 0x13
	.long	.LASF79
	.byte	0x3
	.value	0x1e0
	.byte	0x11
	.long	0x50
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.long	.LASF80
	.byte	0x3
	.value	0x184
	.byte	0x10
	.long	0x91
	.uleb128 0x12
	.long	.LASF81
	.byte	0xc
	.byte	0x3
	.value	0x1d9
	.byte	0x9
	.long	0x50c
	.uleb128 0x13
	.long	.LASF82
	.byte	0x3
	.value	0x1db
	.byte	0x15
	.long	0x50
	.byte	0
	.uleb128 0x13
	.long	.LASF83
	.byte	0x3
	.value	0x1db
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x13
	.long	.LASF84
	.byte	0x3
	.value	0x1dc
	.byte	0x15
	.long	0x50
	.byte	0x4
	.uleb128 0x13
	.long	.LASF85
	.byte	0x3
	.value	0x1dc
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x13
	.long	.LASF86
	.byte	0x3
	.value	0x1dd
	.byte	0x15
	.long	0x50
	.byte	0x8
	.uleb128 0x13
	.long	.LASF87
	.byte	0x3
	.value	0x1dd
	.byte	0x22
	.long	0x50
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF88
	.uleb128 0xb
	.long	.LASF89
	.uleb128 0x6
	.byte	0x8
	.long	0x513
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0x10
	.long	.LASF90
	.byte	0x3
	.value	0x5bf
	.byte	0x25
	.long	0x51e
	.uleb128 0x10
	.long	.LASF91
	.byte	0x3
	.value	0x5c0
	.byte	0x25
	.long	0x51e
	.uleb128 0x10
	.long	.LASF92
	.byte	0x3
	.value	0x5c1
	.byte	0x25
	.long	0x51e
	.uleb128 0xc
	.long	0x85
	.long	0x556
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x3
	.value	0x5c2
	.byte	0x21
	.long	0x54b
	.uleb128 0x10
	.long	.LASF94
	.byte	0x3
	.value	0x5c3
	.byte	0x20
	.long	0x57
	.uleb128 0x10
	.long	.LASF95
	.byte	0x3
	.value	0x5c4
	.byte	0x20
	.long	0x57
	.uleb128 0x10
	.long	.LASF96
	.byte	0x3
	.value	0x5c5
	.byte	0x20
	.long	0x57
	.uleb128 0x10
	.long	.LASF97
	.byte	0x3
	.value	0x5c6
	.byte	0x20
	.long	0x57
	.uleb128 0x10
	.long	.LASF98
	.byte	0x3
	.value	0x5c7
	.byte	0x20
	.long	0x57
	.uleb128 0x10
	.long	.LASF99
	.byte	0x3
	.value	0x5c8
	.byte	0x20
	.long	0x57
	.uleb128 0xc
	.long	0x7f
	.long	0x5c1
	.uleb128 0xd
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x5b1
	.uleb128 0xe
	.long	.LASF101
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF102
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x5e
	.uleb128 0xe
	.long	.LASF103
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x5b1
	.uleb128 0xe
	.long	.LASF104
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF105
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x5e
	.uleb128 0x10
	.long	.LASF106
	.byte	0xa
	.value	0x21f
	.byte	0xf
	.long	0x616
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0xe
	.long	.LASF107
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0x7f
	.uleb128 0xe
	.long	.LASF108
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF109
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF110
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF111
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF112
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF113
	.uleb128 0xc
	.long	0x85
	.long	0x672
	.uleb128 0x14
	.long	0x42
	.value	0x379
	.byte	0
	.uleb128 0x15
	.long	.LASF114
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	0x661
	.uleb128 0x9
	.byte	0x3
	.quad	logo
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	terminal_rows
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	terminal_cols
	.uleb128 0x16
	.long	.LASF117
	.value	0x13ba
	.byte	0x1
	.byte	0x9b
	.byte	0x8
	.long	0x6dd
	.uleb128 0x9
	.long	.LASF118
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.long	0x6dd
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x1
	.byte	0x9d
	.byte	0xa
	.long	0x6ed
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x6ed
	.uleb128 0xd
	.long	0x42
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x6fe
	.uleb128 0x14
	.long	0x42
	.value	0x1387
	.byte	0
	.uleb128 0x16
	.long	.LASF120
	.value	0x370
	.byte	0x1
	.byte	0xa0
	.byte	0x8
	.long	0x775
	.uleb128 0x9
	.long	.LASF121
	.byte	0x1
	.byte	0xa1
	.byte	0xa
	.long	0x775
	.byte	0
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0xa2
	.byte	0xa
	.long	0x785
	.byte	0x6
	.uleb128 0x9
	.long	.LASF122
	.byte	0x1
	.byte	0xa4
	.byte	0xc
	.long	0x7a6
	.byte	0x28
	.uleb128 0x9
	.long	.LASF123
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.long	0x7a6
	.byte	0x30
	.uleb128 0x9
	.long	.LASF124
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.long	0x7a6
	.byte	0x38
	.uleb128 0x9
	.long	.LASF125
	.byte	0x1
	.byte	0xa7
	.byte	0xc
	.long	0x7a6
	.byte	0x40
	.uleb128 0x9
	.long	.LASF126
	.byte	0x1
	.byte	0xa9
	.byte	0xc
	.long	0x9d
	.byte	0x48
	.uleb128 0x9
	.long	.LASF127
	.byte	0x1
	.byte	0xaa
	.byte	0x13
	.long	0x7ac
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x785
	.uleb128 0xd
	.long	0x42
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x795
	.uleb128 0xd
	.long	0x42
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	0x7a0
	.uleb128 0x19
	.long	0x7a0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6fe
	.uleb128 0x6
	.byte	0x8
	.long	0x795
	.uleb128 0xc
	.long	0x7bc
	.long	0x7bc
	.uleb128 0xd
	.long	0x42
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6b4
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.value	0x113
	.byte	0xf
	.long	0x6fe
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.uleb128 0xc
	.long	0x85
	.long	0x7ea
	.uleb128 0x14
	.long	0x42
	.value	0x257
	.byte	0
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1
	.value	0x13a
	.byte	0x6
	.long	0x7d9
	.uleb128 0x9
	.byte	0x3
	.quad	input
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x1
	.value	0x169
	.byte	0x5
	.long	0x57
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x859
	.uleb128 0x1c
	.quad	.LVL221
	.long	0x1a5f
	.uleb128 0x1c
	.quad	.LVL222
	.long	0x1643
	.uleb128 0x1c
	.quad	.LVL223
	.long	0x859
	.uleb128 0x1c
	.quad	.LVL224
	.long	0x1cba
	.byte	0
	.uleb128 0x1d
	.long	.LASF139
	.byte	0x1
	.value	0x13b
	.byte	0x6
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xb00
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.value	0x13c
	.byte	0xb
	.long	0x29d
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x13d
	.byte	0xa
	.long	0xb00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x13e
	.byte	0xa
	.long	0xb00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x14d
	.byte	0xb
	.long	0x7f
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.value	0x14e
	.byte	0xb
	.long	0x7f
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.value	0x15a
	.byte	0xa
	.long	0xb10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x20
	.string	"key"
	.byte	0x1
	.value	0x15e
	.byte	0xa
	.long	0xb10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x91e
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x149
	.byte	0xe
	.long	0x57
	.long	.LLST35
	.long	.LVUS35
	.byte	0
	.uleb128 0x22
	.quad	.LVL191
	.long	0x1cc3
	.long	0x94a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC37
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC36
	.byte	0
	.uleb128 0x22
	.quad	.LVL194
	.long	0x1ccf
	.long	0x975
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC38
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL195
	.long	0x1cdc
	.long	0x98d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL196
	.long	0x1ce8
	.long	0x9ac
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.uleb128 0x22
	.quad	.LVL197
	.long	0x1cf3
	.long	0x9cb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.byte	0
	.uleb128 0x22
	.quad	.LVL198
	.long	0x1d00
	.long	0x9f0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC41
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL200
	.long	0x1bd0
	.long	0xa0e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL204
	.long	0x1d0d
	.long	0xa33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC42
	.byte	0
	.uleb128 0x22
	.quad	.LVL206
	.long	0x1d1a
	.long	0xa51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.uleb128 0x22
	.quad	.LVL211
	.long	0x1cf3
	.long	0xa70
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.byte	0
	.uleb128 0x22
	.quad	.LVL214
	.long	0x1cf3
	.long	0xa8f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.byte	0
	.uleb128 0x22
	.quad	.LVL216
	.long	0x1d0d
	.long	0xab4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC45
	.byte	0
	.uleb128 0x22
	.quad	.LVL217
	.long	0xb20
	.long	0xad3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x22
	.quad	.LVL219
	.long	0x1cf3
	.long	0xaf2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.byte	0
	.uleb128 0x1c
	.quad	.LVL220
	.long	0x1cba
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0xb10
	.uleb128 0xd
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0xb20
	.uleb128 0xd
	.long	0x42
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.long	.LASF133
	.byte	0x1
	.value	0x114
	.byte	0x6
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xe51
	.uleb128 0x25
	.long	.LASF121
	.byte	0x1
	.value	0x114
	.byte	0x16
	.long	0x7f
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x114
	.byte	0x26
	.long	0x7f
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x1f
	.long	.LASF134
	.byte	0x1
	.value	0x119
	.byte	0xa
	.long	0xe51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x1
	.value	0x11b
	.byte	0xc
	.long	0x7a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xbb4
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x130
	.byte	0x16
	.long	0x57
	.long	.LLST31
	.long	.LVUS31
	.byte	0
	.uleb128 0x22
	.quad	.LVL166
	.long	0x11b1
	.long	0xbda
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.quad	.LVL167
	.long	0x1ce8
	.long	0xbf9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x27
	.quad	.LVL168
	.long	0xc0d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL169
	.long	0x1d0d
	.long	0xc32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.byte	0
	.uleb128 0x27
	.quad	.LVL170
	.long	0xc4d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x1c
	.quad	.LVL171
	.long	0x103b
	.uleb128 0x22
	.quad	.LVL172
	.long	0x1cf3
	.long	0xc79
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC26
	.byte	0
	.uleb128 0x22
	.quad	.LVL173
	.long	0x1d25
	.long	0xc9c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.uleb128 0x22
	.quad	.LVL174
	.long	0x1d0d
	.long	0xcc1
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC27
	.byte	0
	.uleb128 0x27
	.quad	.LVL175
	.long	0xcdc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL176
	.long	0x1d0d
	.long	0xd01
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC29
	.byte	0
	.uleb128 0x27
	.quad	.LVL177
	.long	0xd1c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL178
	.long	0x1d0d
	.long	0xd41
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.byte	0
	.uleb128 0x27
	.quad	.LVL179
	.long	0xd5c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL180
	.long	0x1d0d
	.long	0xd81
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC31
	.byte	0
	.uleb128 0x1c
	.quad	.LVL181
	.long	0xf29
	.uleb128 0x22
	.quad	.LVL182
	.long	0x1ce8
	.long	0xdad
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.uleb128 0x22
	.quad	.LVL183
	.long	0x1d0d
	.long	0xdd2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC33
	.byte	0
	.uleb128 0x22
	.quad	.LVL184
	.long	0x1d0d
	.long	0xdf7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC34
	.byte	0
	.uleb128 0x22
	.quad	.LVL185
	.long	0xe61
	.long	0xe10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x22
	.quad	.LVL189
	.long	0xfc8
	.long	0xe2f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x28
	.quad	.LVL190
	.long	0x1cf3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0xe61
	.uleb128 0xd
	.long	0x42
	.byte	0x63
	.byte	0
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x10e
	.byte	0x6
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xec2
	.uleb128 0x25
	.long	.LASF135
	.byte	0x1
	.value	0x10e
	.byte	0x1b
	.long	0xec2
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x22
	.quad	.LVL159
	.long	0x1ce8
	.long	0xeb4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x1c
	.quad	.LVL162
	.long	0x1cba
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7a6
	.uleb128 0x24
	.long	.LASF137
	.byte	0x1
	.value	0x109
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xf29
	.uleb128 0x25
	.long	.LASF138
	.byte	0x1
	.value	0x109
	.byte	0x25
	.long	0x7a0
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x22
	.quad	.LVL16
	.long	0x1ce8
	.long	0xf1b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x1c
	.quad	.LVL17
	.long	0x1cba
	.byte	0
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x1
	.value	0x101
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc8
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x102
	.byte	0xa
	.long	0xb10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.quad	.LVL153
	.long	0x1ce8
	.long	0xf78
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.uleb128 0x22
	.quad	.LVL154
	.long	0x1d25
	.long	0xf9b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x22
	.quad	.LVL155
	.long	0x1ce8
	.long	0xfba
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.uleb128 0x1c
	.quad	.LVL156
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF141
	.byte	0x1
	.byte	0xf9
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x103b
	.uleb128 0x2a
	.long	.LASF135
	.byte	0x1
	.byte	0xf9
	.byte	0x12
	.long	0x7a6
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x2a
	.long	.LASF138
	.byte	0x1
	.byte	0xf9
	.byte	0x48
	.long	0x7a0
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x2b
	.quad	.LVL151
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.long	0x1027
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x28
	.quad	.LVL152
	.long	0x1d32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF142
	.byte	0x1
	.byte	0xef
	.byte	0x6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1140
	.uleb128 0x22
	.quad	.LVL141
	.long	0x1ce8
	.long	0x1078
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.uleb128 0x22
	.quad	.LVL142
	.long	0x1ce8
	.long	0x1097
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.uleb128 0x22
	.quad	.LVL143
	.long	0x1ce8
	.long	0x10b6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x22
	.quad	.LVL144
	.long	0x1ce8
	.long	0x10d5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x22
	.quad	.LVL145
	.long	0x1ce8
	.long	0x10f4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x22
	.quad	.LVL146
	.long	0x1ce8
	.long	0x1113
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.uleb128 0x22
	.quad	.LVL147
	.long	0x1ce8
	.long	0x1132
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x1c
	.quad	.LVL148
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF143
	.byte	0x1
	.byte	0xeb
	.byte	0x6
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ab
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xeb
	.byte	0x21
	.long	0x11ab
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x22
	.quad	.LVL139
	.long	0x1cf3
	.long	0x119d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1c
	.quad	.LVL140
	.long	0x1cba
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x29
	.long	.LASF144
	.byte	0x1
	.byte	0xde
	.byte	0x6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1241
	.uleb128 0x2a
	.long	.LASF145
	.byte	0x1
	.byte	0xde
	.byte	0x1f
	.long	0x7a0
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x1
	.byte	0xde
	.byte	0x2d
	.long	0x7f
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.byte	0xde
	.byte	0x3d
	.long	0x7f
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1233
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.byte	0xe
	.long	0x57
	.long	.LLST24
	.long	.LVUS24
	.byte	0
	.uleb128 0x1c
	.quad	.LVL136
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF146
	.byte	0x1
	.byte	0xda
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a0
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x1
	.byte	0xda
	.byte	0x27
	.long	0x7a0
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x22
	.quad	.LVL12
	.long	0x1ce8
	.long	0x1292
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x1c
	.quad	.LVL13
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF148
	.byte	0x1
	.byte	0xc9
	.byte	0x6
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f7
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x1
	.byte	0xc9
	.byte	0x28
	.long	0x7a0
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x12fa
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.byte	0x11
	.long	0x9d
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x22
	.quad	.LVL22
	.long	0x1d3f
	.long	0x1313
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x13ba
	.byte	0
	.uleb128 0x22
	.quad	.LVL23
	.long	0x1cf3
	.long	0x1332
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x22
	.quad	.LVL24
	.long	0x1d25
	.long	0x134f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.uleb128 0x22
	.quad	.LVL25
	.long	0x1cf3
	.long	0x136e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x22
	.quad	.LVL26
	.long	0x1d25
	.long	0x138c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x1387
	.byte	0
	.uleb128 0x22
	.quad	.LVL27
	.long	0x1ce8
	.long	0x13ab
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x22
	.quad	.LVL30
	.long	0x1ce8
	.long	0x13ca
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x22
	.quad	.LVL31
	.long	0x1ce8
	.long	0x13e9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x1c
	.quad	.LVL33
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF149
	.byte	0x1
	.byte	0xb5
	.byte	0x6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x156b
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x1
	.byte	0xb5
	.byte	0x28
	.long	0x7a0
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2f
	.long	.LASF150
	.byte	0x1
	.byte	0xb6
	.byte	0xa
	.long	0x156b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF151
	.byte	0x1
	.byte	0xb7
	.byte	0xa
	.long	0x157b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1495
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xbd
	.byte	0x11
	.long	0x9d
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x30
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0xbe
	.byte	0x15
	.long	0x9d
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x14bd
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xc3
	.byte	0x11
	.long	0x9d
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.uleb128 0x22
	.quad	.LVL51
	.long	0x1cf3
	.long	0x14dc
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x22
	.quad	.LVL52
	.long	0x1d00
	.long	0x1501
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL53
	.long	0x1bd0
	.long	0x151f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL54
	.long	0x1ce8
	.long	0x153e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x22
	.quad	.LVL62
	.long	0x1ce8
	.long	0x155d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x1c
	.quad	.LVL65
	.long	0x1cba
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x157b
	.uleb128 0xd
	.long	0x42
	.byte	0x59
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x158b
	.uleb128 0xd
	.long	0x42
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.long	.LASF152
	.byte	0x1
	.byte	0xad
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1643
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x1
	.byte	0xad
	.byte	0x28
	.long	0x7a0
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x15f9
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xaf
	.byte	0xe
	.long	0x57
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x28
	.quad	.LVL5
	.long	0x1cf3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL2
	.long	0x1cf3
	.long	0x161e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL7
	.long	0x1d4c
	.long	0x1635
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.quad	.LVL9
	.long	0x1cba
	.byte	0
	.uleb128 0x2c
	.long	.LASF153
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x193c
	.uleb128 0x2f
	.long	.LASF154
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.long	0x193c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF155
	.byte	0x1
	.byte	0x66
	.byte	0xa
	.long	0x194c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"pad"
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.long	0x57
	.byte	0x3c
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0x6c
	.byte	0x9
	.long	0x57
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.byte	0x6c
	.byte	0xc
	.long	0x57
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1862
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.long	0x57
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x34
	.long	.LASF156
	.byte	0x1
	.byte	0x74
	.byte	0xc
	.long	0x57
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x22
	.quad	.LVL97
	.long	0x1d57
	.long	0x1702
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 1
	.byte	0
	.uleb128 0x22
	.quad	.LVL99
	.long	0x1d64
	.long	0x1720
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x40
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL100
	.long	0x1d71
	.uleb128 0x22
	.quad	.LVL101
	.long	0x1d7e
	.long	0x174b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x40
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL102
	.long	0x1d8b
	.long	0x1762
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.quad	.LVL103
	.long	0x1d98
	.uleb128 0x1c
	.quad	.LVL106
	.long	0x1da5
	.uleb128 0x22
	.quad	.LVL109
	.long	0x1d64
	.long	0x1799
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL110
	.long	0x1d71
	.uleb128 0x22
	.quad	.LVL111
	.long	0x1d7e
	.long	0x17c3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL114
	.long	0x1d64
	.long	0x17e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL115
	.long	0x1d71
	.uleb128 0x22
	.quad	.LVL116
	.long	0x1d7e
	.long	0x180a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL118
	.long	0x1d64
	.long	0x1828
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL119
	.long	0x1d71
	.uleb128 0x22
	.quad	.LVL120
	.long	0x1d7e
	.long	0x1853
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL123
	.long	0x1d71
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL89
	.long	0x195c
	.long	0x187f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL90
	.long	0x195c
	.long	0x189d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.quad	.LVL91
	.long	0x1db2
	.long	0x18b4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL92
	.long	0x1dbe
	.uleb128 0x22
	.quad	.LVL93
	.long	0x1d57
	.long	0x18d8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.quad	.LVL125
	.long	0x1d57
	.long	0x18f5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL126
	.long	0x1dcb
	.long	0x1914
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x1c
	.quad	.LVL127
	.long	0x1dd8
	.uleb128 0x1c
	.quad	.LVL128
	.long	0x1de5
	.uleb128 0x1c
	.quad	.LVL131
	.long	0x1cba
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x194c
	.uleb128 0xd
	.long	0x42
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x195c
	.uleb128 0xd
	.long	0x42
	.byte	0x1d
	.byte	0
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.byte	0x59
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5f
	.uleb128 0x2d
	.string	"msg"
	.byte	0x1
	.byte	0x59
	.byte	0x12
	.long	0x7f
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2d
	.string	"row"
	.byte	0x1
	.byte	0x59
	.byte	0x1b
	.long	0x57
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x19fc
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.long	0x57
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x1c
	.quad	.LVL83
	.long	0x1d71
	.uleb128 0x22
	.quad	.LVL84
	.long	0x1d8b
	.long	0x19ee
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.quad	.LVL85
	.long	0x1d98
	.byte	0
	.uleb128 0x22
	.quad	.LVL80
	.long	0x1d57
	.long	0x1a15
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.quad	.LVL81
	.long	0x1d64
	.long	0x1a33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL87
	.long	0x1d7e
	.long	0x1a51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL88
	.long	0x1cba
	.byte	0
	.uleb128 0x2c
	.long	.LASF158
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd0
	.uleb128 0x22
	.quad	.LVL66
	.long	0x1df2
	.long	0x1a9e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL67
	.long	0x1df2
	.long	0x1abf
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL68
	.long	0x1df2
	.long	0x1ae0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL69
	.long	0x1dff
	.long	0x1af7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL70
	.long	0x1e0c
	.uleb128 0x22
	.quad	.LVL71
	.long	0x1e19
	.long	0x1b25
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL72
	.long	0x1e19
	.long	0x1b46
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL73
	.long	0x1e19
	.long	0x1b67
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL74
	.long	0x1e19
	.long	0x1b88
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL75
	.long	0x1e19
	.long	0x1ba9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL76
	.long	0x1e26
	.long	0x1bc2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x500
	.byte	0
	.uleb128 0x1c
	.quad	.LVL77
	.long	0x1cba
	.byte	0
	.uleb128 0x29
	.long	.LASF159
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c78
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.byte	0x1f
	.byte	0x16
	.long	0x7f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x1f
	.byte	0x22
	.long	0x7f
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.long	0x57
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1c6a
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x22
	.byte	0x11
	.long	0x9d
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1c
	.quad	.LVL40
	.long	0x1c78
	.uleb128 0x1c
	.quad	.LVL41
	.long	0x1c78
	.byte	0
	.uleb128 0x1c
	.quad	.LVL48
	.long	0x1cba
	.byte	0
	.uleb128 0x35
	.string	"a2v"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.long	0x85
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cba
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.byte	0x12
	.byte	0xf
	.long	0x85
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1c
	.quad	.LVL36
	.long	0x1cba
	.byte	0
	.uleb128 0x36
	.long	.LASF200
	.long	.LASF200
	.uleb128 0x37
	.long	.LASF162
	.long	.LASF162
	.byte	0x7
	.byte	0xf6
	.byte	0xe
	.uleb128 0x38
	.long	.LASF163
	.long	.LASF164
	.byte	0x7
	.value	0x197
	.byte	0xc
	.uleb128 0x37
	.long	.LASF165
	.long	.LASF165
	.byte	0x7
	.byte	0xd5
	.byte	0xc
	.uleb128 0x39
	.long	.LASF170
	.long	.LASF172
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF166
	.long	.LASF166
	.byte	0x7
	.value	0x14c
	.byte	0xc
	.uleb128 0x38
	.long	.LASF167
	.long	.LASF168
	.byte	0x7
	.value	0x19a
	.byte	0xc
	.uleb128 0x38
	.long	.LASF169
	.long	.LASF169
	.byte	0xc
	.value	0x149
	.byte	0xe
	.uleb128 0x39
	.long	.LASF171
	.long	.LASF173
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF174
	.long	.LASF174
	.byte	0xa
	.value	0x168
	.byte	0x10
	.uleb128 0x38
	.long	.LASF175
	.long	.LASF175
	.byte	0xe
	.value	0x266
	.byte	0xd
	.uleb128 0x38
	.long	.LASF176
	.long	.LASF176
	.byte	0xe
	.value	0x21b
	.byte	0xe
	.uleb128 0x39
	.long	.LASF177
	.long	.LASF178
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF179
	.long	.LASF179
	.byte	0x3
	.value	0x35b
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF180
	.long	.LASF180
	.byte	0x3
	.value	0x33d
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF181
	.long	.LASF181
	.byte	0x3
	.value	0x334
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF182
	.long	.LASF182
	.byte	0x3
	.value	0x33e
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF183
	.long	.LASF183
	.byte	0xa
	.value	0x1cc
	.byte	0xc
	.uleb128 0x38
	.long	.LASF184
	.long	.LASF184
	.byte	0x3
	.value	0x360
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF185
	.long	.LASF185
	.byte	0xe
	.value	0x1c5
	.byte	0xc
	.uleb128 0x37
	.long	.LASF186
	.long	.LASF186
	.byte	0x9
	.byte	0x4b
	.byte	0xf
	.uleb128 0x38
	.long	.LASF187
	.long	.LASF187
	.byte	0xe
	.value	0x1c7
	.byte	0xd
	.uleb128 0x38
	.long	.LASF188
	.long	.LASF188
	.byte	0x3
	.value	0x2f6
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF189
	.long	.LASF189
	.byte	0x3
	.value	0x34d
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF190
	.long	.LASF190
	.byte	0x3
	.value	0x286
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF191
	.long	.LASF191
	.byte	0x7
	.value	0x134
	.byte	0xc
	.uleb128 0x38
	.long	.LASF192
	.long	.LASF192
	.byte	0x3
	.value	0x2e5
	.byte	0x21
	.uleb128 0x38
	.long	.LASF193
	.long	.LASF193
	.byte	0x3
	.value	0x31f
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF194
	.long	.LASF194
	.byte	0x3
	.value	0x29d
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF195
	.long	.LASF195
	.byte	0x3
	.value	0x340
	.byte	0x1c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS32:
	.uleb128 .LVU391
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU400
.LLST32:
	.quad	.LVL192-.Ltext0
	.quad	.LVL193-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL193-.Ltext0
	.quad	.LVL199-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS33:
	.uleb128 .LVU415
	.uleb128 .LVU417
	.uleb128 .LVU417
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU427
	.uleb128 .LVU431
	.uleb128 .LVU434
	.uleb128 .LVU441
	.uleb128 .LVU445
	.uleb128 .LVU446
	.uleb128 .LVU447
.LLST33:
	.quad	.LVL205-.Ltext0
	.quad	.LVL206-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL206-1-.Ltext0
	.quad	.LVL208-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL208-.Ltext0
	.quad	.LVL210-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL212-.Ltext0
	.quad	.LVL215-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL216-.Ltext0
	.quad	.LVL217-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL218-.Ltext0
	.quad	.LVL219-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS34:
	.uleb128 .LVU418
	.uleb128 .LVU426
	.uleb128 .LVU426
	.uleb128 .LVU429
	.uleb128 .LVU431
	.uleb128 .LVU432
	.uleb128 .LVU432
	.uleb128 .LVU433
	.uleb128 .LVU434
	.uleb128 .LVU441
.LLST34:
	.quad	.LVL207-.Ltext0
	.quad	.LVL209-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL209-.Ltext0
	.quad	.LVL211-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL212-.Ltext0
	.quad	.LVL213-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL213-.Ltext0
	.quad	.LVL214-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL215-.Ltext0
	.quad	.LVL216-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LVUS35:
	.uleb128 .LVU403
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU410
.LLST35:
	.quad	.LVL200-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL201-.Ltext0
	.quad	.LVL202-.Ltext0
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL202-.Ltext0
	.quad	.LVL203-.Ltext0
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x7f
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 0
.LLST29:
	.quad	.LVL163-.Ltext0
	.quad	.LVL165-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL166-1-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 0
.LLST30:
	.quad	.LVL163-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL164-.Ltext0
	.quad	.LVL166-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL166-1-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS31:
	.uleb128 .LVU380
	.uleb128 .LVU383
	.uleb128 .LVU383
	.uleb128 .LVU384
.LLST31:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL187-.Ltext0
	.quad	.LVL188-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x3f
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 0
.LLST28:
	.quad	.LVL157-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL158-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL160-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL161-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST3:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST26:
	.quad	.LVL149-.Ltext0
	.quad	.LVL150-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL150-.Ltext0
	.quad	.LVL151-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL151-1-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST27:
	.quad	.LVL149-.Ltext0
	.quad	.LVL151-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL151-1-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 0
.LLST25:
	.quad	.LVL137-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL138-.Ltext0
	.quad	.LVL139-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL139-1-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST21:
	.quad	.LVL132-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST22:
	.quad	.LVL132-.Ltext0
	.quad	.LVL136-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL136-1-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 0
.LLST23:
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL133-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS24:
	.uleb128 .LVU278
	.uleb128 .LVU279
.LLST24:
	.quad	.LVL134-.Ltext0
	.quad	.LVL135-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST2:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE30-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 0
.LLST4:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL21-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL32-.Ltext0
	.quad	.LFE29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU65
.LLST5:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 0
.LLST11:
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL50-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL64-.Ltext0
	.quad	.LFE28-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU117
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU134
.LLST12:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL55-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU120
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU134
.LLST13:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU134
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU144
.LLST14:
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL3-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 -38
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU7
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU12
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS18:
	.uleb128 .LVU205
	.uleb128 .LVU210
	.uleb128 .LVU212
	.uleb128 .LVU258
	.uleb128 .LVU259
	.uleb128 0
.LLST18:
	.quad	.LVL93-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL96-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL130-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LVUS19:
	.uleb128 .LVU205
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU226
	.uleb128 .LVU251
.LLST19:
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL94-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL103-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL105-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS20:
	.uleb128 .LVU214
	.uleb128 .LVU216
	.uleb128 .LVU232
	.uleb128 .LVU236
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU248
	.uleb128 .LVU249
.LLST20:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL112-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU171
.LLST15:
	.quad	.LVL78-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 0
.LLST16:
	.quad	.LVL78-.Ltext0
	.quad	.LVL80-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL80-1-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS17:
	.uleb128 .LVU175
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU184
.LLST17:
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL82-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU86
.LLST7:
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST8:
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL39-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU82
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST9:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL41-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL47-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS10:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 0
.LLST10:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 1
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST6:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL35-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF166:
	.string	"printf"
.LASF119:
	.string	"description"
.LASF13:
	.string	"_IO_read_ptr"
.LASF176:
	.string	"malloc"
.LASF97:
	.string	"ESCDELAY"
.LASF66:
	.string	"_idlok"
.LASF11:
	.string	"size_t"
.LASF188:
	.string	"printw"
.LASF31:
	.string	"_shortbuf"
.LASF86:
	.string	"_pad_bottom"
.LASF169:
	.string	"strstr"
.LASF81:
	.string	"pdat"
.LASF158:
	.string	"init"
.LASF180:
	.string	"wattr_on"
.LASF19:
	.string	"_IO_buf_base"
.LASF136:
	.string	"experimental"
.LASF127:
	.string	"toys"
.LASF112:
	.string	"long long unsigned int"
.LASF50:
	.string	"acs_map"
.LASF133:
	.string	"dashboard"
.LASF83:
	.string	"_pad_x"
.LASF82:
	.string	"_pad_y"
.LASF123:
	.string	"change_key"
.LASF145:
	.string	"object"
.LASF34:
	.string	"_codecvt"
.LASF102:
	.string	"__timezone"
.LASF111:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"__off_t"
.LASF195:
	.string	"wbkgd"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF70:
	.string	"_use_keypad"
.LASF183:
	.string	"usleep"
.LASF140:
	.string	"report"
.LASF10:
	.string	"chtype"
.LASF6:
	.string	"long int"
.LASF60:
	.string	"_attrs"
.LASF12:
	.string	"_flags"
.LASF179:
	.string	"wmove"
.LASF197:
	.string	"test.c"
.LASF172:
	.string	"__builtin_puts"
.LASF177:
	.string	"putchar"
.LASF43:
	.string	"_IO_codecvt"
.LASF141:
	.string	"quit"
.LASF167:
	.string	"__isoc99_scanf"
.LASF74:
	.string	"_regbottom"
.LASF95:
	.string	"COLOR_PAIRS"
.LASF28:
	.string	"_old_offset"
.LASF134:
	.string	"buffer"
.LASF80:
	.string	"attr_t"
.LASF144:
	.string	"init_user"
.LASF147:
	.string	"self"
.LASF168:
	.string	"scanf"
.LASF148:
	.string	"default_design_toy"
.LASF114:
	.string	"logo"
.LASF105:
	.string	"timezone"
.LASF69:
	.string	"_sync"
.LASF117:
	.string	"toy_t"
.LASF73:
	.string	"_regtop"
.LASF93:
	.string	"ttytype"
.LASF98:
	.string	"LINES"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF154:
	.string	"msg1"
.LASF155:
	.string	"msg2"
.LASF110:
	.string	"optopt"
.LASF55:
	.string	"_curx"
.LASF54:
	.string	"_cury"
.LASF3:
	.string	"long unsigned int"
.LASF187:
	.string	"srand"
.LASF92:
	.string	"stdscr"
.LASF153:
	.string	"print_logo"
.LASF185:
	.string	"rand"
.LASF17:
	.string	"_IO_write_ptr"
.LASF171:
	.string	"strchr"
.LASF118:
	.string	"name"
.LASF178:
	.string	"__builtin_putchar"
.LASF48:
	.string	"sys_nerr"
.LASF161:
	.string	"bstr"
.LASF1:
	.string	"short unsigned int"
.LASF52:
	.string	"_IO_FILE"
.LASF152:
	.string	"default_print_info"
.LASF163:
	.string	"__isoc99_fscanf"
.LASF184:
	.string	"wrefresh"
.LASF51:
	.string	"WINDOW"
.LASF159:
	.string	"unhexlify"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF139:
	.string	"identify_agent"
.LASF46:
	.string	"stdout"
.LASF65:
	.string	"_scroll"
.LASF198:
	.string	"/home/littlewho/StackShield"
.LASF35:
	.string	"_wide_data"
.LASF170:
	.string	"puts"
.LASF125:
	.string	"view_toys"
.LASF89:
	.string	"ldat"
.LASF107:
	.string	"optarg"
.LASF33:
	.string	"_offset"
.LASF192:
	.string	"newterm"
.LASF21:
	.string	"_IO_save_base"
.LASF75:
	.string	"_parx"
.LASF76:
	.string	"_pary"
.LASF18:
	.string	"_IO_write_end"
.LASF157:
	.string	"title"
.LASF146:
	.string	"default_view_toys"
.LASF199:
	.string	"_IO_lock_t"
.LASF94:
	.string	"COLORS"
.LASF84:
	.string	"_pad_top"
.LASF186:
	.string	"time"
.LASF64:
	.string	"_leaveok"
.LASF106:
	.string	"__environ"
.LASF173:
	.string	"__builtin_strchr"
.LASF39:
	.string	"_mode"
.LASF194:
	.string	"init_pair"
.LASF162:
	.string	"fopen"
.LASF130:
	.string	"identity_token"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF124:
	.string	"design_toy"
.LASF77:
	.string	"_parent"
.LASF138:
	.string	"user"
.LASF137:
	.string	"session_handler"
.LASF88:
	.string	"_Bool"
.LASF196:
	.string	"GNU C17 9.2.1 20190827 (Red Hat 9.2.1-1) -masm=intel -mtune=generic -march=x86-64 -g -O1 -fPIC -fstack-protector-all"
.LASF0:
	.string	"unsigned char"
.LASF57:
	.string	"_maxx"
.LASF56:
	.string	"_maxy"
.LASF20:
	.string	"_IO_buf_end"
.LASF189:
	.string	"wgetch"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF115:
	.string	"terminal_rows"
.LASF30:
	.string	"_vtable_offset"
.LASF103:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF175:
	.string	"exit"
.LASF129:
	.string	"input"
.LASF108:
	.string	"optind"
.LASF200:
	.string	"__stack_chk_fail"
.LASF121:
	.string	"id_token"
.LASF164:
	.string	"fscanf"
.LASF67:
	.string	"_idcok"
.LASF78:
	.string	"_pad"
.LASF190:
	.string	"endwin"
.LASF151:
	.string	"new_key"
.LASF160:
	.string	"hstr"
.LASF104:
	.string	"daylight"
.LASF122:
	.string	"print_info"
.LASF131:
	.string	"private_key"
.LASF62:
	.string	"_notimeout"
.LASF113:
	.string	"long double"
.LASF87:
	.string	"_pad_right"
.LASF156:
	.string	"color"
.LASF9:
	.string	"char"
.LASF150:
	.string	"input_buf"
.LASF79:
	.string	"_yoffset"
.LASF61:
	.string	"_bkgd"
.LASF68:
	.string	"_immed"
.LASF149:
	.string	"default_change_key"
.LASF109:
	.string	"opterr"
.LASF165:
	.string	"fclose"
.LASF63:
	.string	"_clear"
.LASF8:
	.string	"__off64_t"
.LASF193:
	.string	"start_color"
.LASF29:
	.string	"_cur_column"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF120:
	.string	"user_t"
.LASF182:
	.string	"wattr_off"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF101:
	.string	"__daylight"
.LASF128:
	.string	"g_user"
.LASF126:
	.string	"toys_cnt"
.LASF116:
	.string	"terminal_cols"
.LASF181:
	.string	"waddch"
.LASF59:
	.string	"_begx"
.LASF58:
	.string	"_begy"
.LASF22:
	.string	"_IO_backup_base"
.LASF191:
	.string	"setvbuf"
.LASF91:
	.string	"newscr"
.LASF174:
	.string	"read"
.LASF53:
	.string	"_win_st"
.LASF143:
	.string	"debug_print"
.LASF36:
	.string	"_freeres_list"
.LASF85:
	.string	"_pad_left"
.LASF135:
	.string	"save_session_handler"
.LASF44:
	.string	"_IO_wide_data"
.LASF71:
	.string	"_delay"
.LASF72:
	.string	"_line"
.LASF100:
	.string	"__tzname"
.LASF132:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF96:
	.string	"COLS"
.LASF90:
	.string	"curscr"
.LASF142:
	.string	"print_menu"
.LASF99:
	.string	"TABSIZE"
	.ident	"GCC: (GNU) 9.2.1 20190827 (Red Hat 9.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
