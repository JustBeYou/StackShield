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
.LFB29:
	.file 1 "test.c"
	.loc 1 172 46
	
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
.LVL0:
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
	.loc 1 172 46 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 173 5 is_stmt 1
	mov	rsi, rdi
	lea	rdi, .LC0[rip]
.LVL1:
	call	printf@PLT
.LVL2:
	.loc 1 174 5
.LBB2:
	.loc 1 174 10
	lea	rbx, 6[rbp]
	add	rbp, 38
.LVL3:
	.loc 1 175 9 is_stmt 0
	lea	r12, .LC1[rip]
.LVL4:
.L2:
	.loc 1 175 9 is_stmt 1 discriminator 3
	movzx	esi, BYTE PTR [rbx]
	mov	rdi, r12
	mov	eax, 0
	call	printf@PLT
.LVL5:
	add	rbx, 1
.LVL6:
	.loc 1 174 5 is_stmt 0 discriminator 3
	cmp	rbx, rbp
	jne	.L2
.LBE2:
	.loc 1 177 5 is_stmt 1
	mov	edi, 10
	call	putchar@PLT
.LVL7:
	.loc 1 178 1 is_stmt 0
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
.LFE29:
	.size	default_print_info, .-default_print_info
	.section	.rodata.str1.1
.LC2:
	.string	"TODO: implement this"
	.text
	.globl	default_view_toys
	.type	default_view_toys, @function
default_view_toys:
.LFB32:
	.loc 1 217 45 is_stmt 1
	
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
.LVL10:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 217 45 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 218 5 is_stmt 1
	lea	rdi, .LC2[rip]
.LVL11:
	call	puts@PLT
.LVL12:
	.loc 1 219 1 is_stmt 0
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
.LFE32:
	.size	default_view_toys, .-default_view_toys
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"TODO: make this write user to file"
	.text
	.globl	session_handler
	.type	session_handler, @function
session_handler:
.LFB38:
	.loc 1 264 43 is_stmt 1
	
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
.LVL14:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	.loc 1 264 43 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 265 5 is_stmt 1
	lea	rdi, .LC3[rip]
.LVL15:
	call	puts@PLT
.LVL16:
	.loc 1 266 5
	.loc 1 267 1 is_stmt 0
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
.LFE38:
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
.LFB31:
	.loc 1 200 46 is_stmt 1
	
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
.LVL18:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.loc 1 200 46 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 201 5 is_stmt 1
	.loc 1 201 13 is_stmt 0
	mov	rbp, QWORD PTR 72[rdi]
	.loc 1 201 8
	cmp	rbp, 99
	jbe	.L21
.LVL19:
.L15:
	.loc 1 215 1
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
	mov	rbx, rdi
	.loc 1 202 5 is_stmt 1
	.loc 1 202 30 is_stmt 0
	lea	rax, 1[rbp]
	mov	QWORD PTR 72[rdi], rax
	.loc 1 202 36
	mov	edi, 5050
.LVL21:
	call	malloc@PLT
.LVL22:
	.loc 1 202 34
	mov	QWORD PTR 80[rbx+rbp*8], rax
	.loc 1 204 5 is_stmt 1
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
.LVL23:
	.loc 1 205 5
	.loc 1 205 23 is_stmt 0
	mov	rax, QWORD PTR 72[rbx]
	.loc 1 205 5
	mov	rsi, QWORD PTR 72[rbx+rax*8]
	mov	edx, 99
	mov	edi, 0
	call	read@PLT
.LVL24:
	.loc 1 206 5 is_stmt 1
	lea	rdi, .LC5[rip]
	mov	eax, 0
	call	printf@PLT
.LVL25:
	.loc 1 207 5
	.loc 1 207 23 is_stmt 0
	mov	rax, QWORD PTR 72[rbx]
	.loc 1 207 43
	mov	rsi, QWORD PTR 72[rbx+rax*8]
	add	rsi, 50
	.loc 1 207 5
	mov	edx, 4999
	mov	edi, 0
	call	read@PLT
.LVL26:
	.loc 1 209 5 is_stmt 1
	lea	rdi, .LC6[rip]
	call	puts@PLT
.LVL27:
	.loc 1 210 5
.LBB3:
	.loc 1 210 10
	.loc 1 210 17 is_stmt 0
	mov	eax, 0
.LVL28:
.L17:
	.loc 1 211 9 is_stmt 1 discriminator 3
	.loc 1 211 19 is_stmt 0 discriminator 3
	mov	rdx, QWORD PTR 72[rbx]
	mov	rdx, QWORD PTR 72[rbx+rdx*8]
	.loc 1 211 71 discriminator 3
	mov	rcx, rax
	and	ecx, 31
	.loc 1 211 56 discriminator 3
	movzx	ecx, BYTE PTR 6[rbx+rcx]
	xor	BYTE PTR 50[rdx+rax], cl
	.loc 1 210 35 discriminator 3
	add	rax, 1
.LVL29:
	.loc 1 210 5 discriminator 3
	cmp	rax, 5000
	jne	.L17
.LBE3:
	.loc 1 213 5 is_stmt 1
	lea	rdi, .LC7[rip]
	call	puts@PLT
.LVL30:
	.loc 1 214 5
	lea	rdi, .LC8[rip]
	call	puts@PLT
.LVL31:
	jmp	.L15
.LVL32:
.L22:
	.loc 1 215 1 is_stmt 0
	call	__stack_chk_fail@PLT
.LVL33:
	.cfi_endproc
.LFE31:
	.size	default_design_toy, .-default_design_toy
	.globl	a2v
	.type	a2v, @function
a2v:
.LFB24:
	.loc 1 19 1 is_stmt 1
	
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
.LVL34:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	.loc 1 19 1 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 20 5 is_stmt 1
	.loc 1 20 17 is_stmt 0
	lea	eax, -48[rdi]
	.loc 1 20 8
	cmp	al, 9
	jbe	.L23
	.loc 1 24 5 is_stmt 1
	.loc 1 24 17 is_stmt 0
	lea	eax, -97[rdi]
	.loc 1 26 21
	sub	edi, 87
.LVL35:
	cmp	al, 6
	mov	eax, 0
	cmovb	eax, edi
.L23:
	.loc 1 29 1
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
.LFE24:
	.size	a2v, .-a2v
	.globl	unhexlify
	.type	unhexlify, @function
unhexlify:
.LFB25:
	.loc 1 32 1 is_stmt 1
	
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
.LVL37:
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
	.loc 1 32 1 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 33 5 is_stmt 1
.LVL38:
	.loc 1 34 5
.LBB4:
	.loc 1 34 10
	.loc 1 34 5 is_stmt 0
	mov	ebx, 0
	.loc 1 34 28
	mov	r13, -1
.LVL39:
.L31:
	.loc 1 34 28 discriminator 1
	mov	eax, 0
	mov	rcx, r13
	mov	rdi, rbp
	repnz scasb
	mov	rax, rcx
	not	rax
	sub	rax, 1
	.loc 1 34 5 discriminator 1
	lea	rdx, [rbx+rbx]
	cmp	rax, rdx
	jbe	.L35
	.loc 1 36 9 is_stmt 1 discriminator 3
	.loc 1 36 22 is_stmt 0 discriminator 3
	movsx	edi, BYTE PTR 0[rbp+rbx*2]
	call	a2v@PLT
.LVL40:
	mov	r14d, eax
	.loc 1 36 41 discriminator 3
	movsx	edi, BYTE PTR 1[rbp+rbx*2]
	call	a2v@PLT
.LVL41:
	.loc 1 36 34 discriminator 3
	sal	r14d, 4
	.loc 1 36 39 discriminator 3
	add	r14d, eax
	mov	BYTE PTR [r12+rbx], r14b
.LVL42:
	add	rbx, 1
.LVL43:
	jmp	.L31
.LVL44:
.L35:
.LBE4:
	.loc 1 38 5 is_stmt 1
	.loc 1 38 9 is_stmt 0
	movsx	rsi, ebx
	.loc 1 38 13
	mov	BYTE PTR [r12+rsi], 0
	.loc 1 39 1
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L36
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
.LVL45:
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
.LVL46:
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
	call	__stack_chk_fail@PLT
.LVL48:
	.cfi_endproc
.LFE25:
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
.LFB30:
	.loc 1 180 46 is_stmt 1
	
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
.LVL49:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 168
	.cfi_def_cfa_offset 192
	mov	rbx, rdi
	.loc 1 180 46 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 152[rsp], rax
	xor	eax, eax
	.loc 1 181 5 is_stmt 1
	.loc 1 182 5
	.loc 1 183 5
	lea	rdi, .LC9[rip]
.LVL50:
	call	printf@PLT
.LVL51:
	.loc 1 184 5
	lea	rbp, 48[rsp]
	mov	rsi, rbp
	lea	rdi, .LC10[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
.LVL52:
	.loc 1 185 5
	mov	rsi, rsp
	mov	rdi, rbp
	call	unhexlify@PLT
.LVL53:
	.loc 1 187 5
	lea	rdi, .LC11[rip]
	call	puts@PLT
.LVL54:
	.loc 1 188 5
.LBB5:
	.loc 1 188 10
	.loc 1 188 5 is_stmt 0
	cmp	QWORD PTR 72[rbx], 0
	je	.L38
	lea	rdi, 80[rbx]
	.loc 1 188 17
	mov	r8d, 0
.LVL55:
.L39:
.LBB6:
	.loc 1 189 21
	mov	eax, 0
.LVL56:
.L40:
	.loc 1 190 13 is_stmt 1 discriminator 3
	.loc 1 190 23 is_stmt 0 discriminator 3
	mov	rcx, QWORD PTR [rdi]
	.loc 1 190 58 discriminator 3
	mov	rsi, rax
	and	esi, 31
	.loc 1 190 43 discriminator 3
	movzx	edx, BYTE PTR 6[rbx+rsi]
	xor	dl, BYTE PTR [rsp+rsi]
	xor	BYTE PTR 50[rcx+rax], dl
	.loc 1 189 39 discriminator 3
	add	rax, 1
.LVL57:
	.loc 1 189 9 discriminator 3
	cmp	rax, 5000
	jne	.L40
.LBE6:
	.loc 1 188 45 discriminator 2
	add	r8, 1
.LVL58:
	add	rdi, 8
	.loc 1 188 5 discriminator 2
	cmp	QWORD PTR 72[rbx], r8
	ja	.L39
.LVL59:
.L38:
.LBE5:
.LBB7:
	.loc 1 194 17
	mov	eax, 0
.LVL60:
.L41:
	.loc 1 195 9 is_stmt 1 discriminator 3
	.loc 1 195 22 is_stmt 0 discriminator 3
	movzx	edx, BYTE PTR [rsp+rax]
	mov	BYTE PTR 6[rbx+rax], dl
	.loc 1 194 33 discriminator 3
	add	rax, 1
.LVL61:
	.loc 1 194 5 discriminator 3
	cmp	rax, 36
	jne	.L41
.LBE7:
	.loc 1 197 5 is_stmt 1
	lea	rdi, .LC12[rip]
	call	puts@PLT
.LVL62:
	.loc 1 198 1 is_stmt 0
	mov	rax, QWORD PTR 152[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L46
	add	rsp, 168
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
.LVL63:
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
	call	__stack_chk_fail@PLT
.LVL65:
	.cfi_endproc
.LFE30:
	.size	default_change_key, .-default_change_key
	.globl	init
	.type	init, @function
init:
.LFB26:
	.loc 1 72 13 is_stmt 1
	
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
	.loc 1 72 13 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 73 5 is_stmt 1
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rax, QWORD PTR stdin@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	setvbuf@PLT
.LVL66:
	.loc 1 74 5
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rax, QWORD PTR stdout@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	setvbuf@PLT
.LVL67:
	.loc 1 75 5
	mov	ecx, 0
	mov	edx, 2
	mov	esi, 0
	mov	rax, QWORD PTR stderr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	setvbuf@PLT
.LVL68:
	.loc 1 76 5
	call	initscr@PLT
.LVL69:
	.loc 1 77 5
	call	start_color@PLT
.LVL70:
	.loc 1 78 5
	mov	edx, 0
	mov	esi, 1
	mov	edi, 1
	call	init_pair@PLT
.LVL71:
	.loc 1 79 5
	mov	edx, 0
	mov	esi, 4
	mov	edi, 2
	call	init_pair@PLT
.LVL72:
	.loc 1 80 5
	mov	edx, 0
	mov	esi, 5
	mov	edi, 3
	call	init_pair@PLT
.LVL73:
	.loc 1 81 5
	mov	edx, 0
	mov	esi, 7
	mov	edi, 4
	call	init_pair@PLT
.LVL74:
	.loc 1 82 5
	mov	edx, 0
	mov	esi, 2
	mov	edi, 5
	call	init_pair@PLT
.LVL75:
	.loc 1 84 5
	mov	rbx, QWORD PTR stdscr@GOTPCREL[rip]
	mov	esi, 1280
	mov	rdi, QWORD PTR [rbx]
	call	wbkgd@PLT
.LVL76:
	.loc 1 85 5
	mov	rax, QWORD PTR [rbx]
	test	rax, rax
	je	.L48
	.loc 1 85 5 is_stmt 0 discriminator 1
	movsx	edx, WORD PTR 4[rax]
	add	edx, 1
	mov	rcx, QWORD PTR terminal_rows@GOTPCREL[rip]
	mov	DWORD PTR [rcx], edx
	movsx	eax, WORD PTR 6[rax]
	add	eax, 1
.L49:
	.loc 1 85 5 discriminator 8
	mov	rdx, QWORD PTR terminal_cols@GOTPCREL[rip]
	mov	DWORD PTR [rdx], eax
	.loc 1 86 1 discriminator 8
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L53
	.loc 1 86 1
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
.L48:
	.cfi_restore_state
	.loc 1 85 5
	mov	rax, QWORD PTR terminal_rows@GOTPCREL[rip]
	mov	DWORD PTR [rax], -1
	mov	eax, -1
	jmp	.L49
.L53:
	.loc 1 86 1
	call	__stack_chk_fail@PLT
.LVL77:
	.cfi_endproc
.LFE26:
	.size	init, .-init
	.globl	title
	.type	title, @function
title:
.LFB27:
	.loc 1 88 32 is_stmt 1
	
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
.LVL78:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	mov	rbx, rdi
	.loc 1 88 32 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 89 5 is_stmt 1
	mov	rcx, -1
	repnz scasb
.LVL79:
	mov	rax, QWORD PTR terminal_cols@GOTPCREL[rip]
	movsx	rax, DWORD PTR [rax]
	lea	rdx, 2[rcx+rax]
	shr	rdx
	mov	rbp, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR 0[rbp]
	call	wmove@PLT
.LVL80:
	.loc 1 90 5
	mov	edx, 0
	mov	esi, 2097152
	mov	rdi, QWORD PTR 0[rbp]
	call	wattr_on@PLT
.LVL81:
	.loc 1 91 5
.LBB8:
	.loc 1 91 10
	.loc 1 91 24 is_stmt 0
	movzx	esi, BYTE PTR [rbx]
	.loc 1 91 5
	test	sil, sil
	je	.L55
	add	rbx, 1
	.loc 1 92 9
	mov	rbp, QWORD PTR stdscr@GOTPCREL[rip]
.LVL82:
.L56:
	.loc 1 92 9 is_stmt 1 discriminator 3
	movsx	esi, sil
	mov	rdi, QWORD PTR 0[rbp]
	call	waddch@PLT
.LVL83:
	.loc 1 93 9 discriminator 3
	mov	edi, 50
	call	usleep@PLT
.LVL84:
	.loc 1 94 9 discriminator 3
	mov	rdi, QWORD PTR 0[rbp]
	call	wrefresh@PLT
.LVL85:
	add	rbx, 1
.LVL86:
	.loc 1 91 24 is_stmt 0 discriminator 3
	movzx	esi, BYTE PTR -1[rbx]
	.loc 1 91 5 discriminator 3
	test	sil, sil
	jne	.L56
.L55:
.LBE8:
	.loc 1 96 5 is_stmt 1
	mov	edx, 0
	mov	esi, 2097152
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	wattr_off@PLT
.LVL87:
	.loc 1 97 1 is_stmt 0
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
.LFE27:
	.size	title, .-title
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Press any key to proceed to the login interface..."
	.text
	.globl	print_logo
	.type	print_logo, @function
print_logo:
.LFB28:
	.loc 1 99 19 is_stmt 1
	
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
	.loc 1 99 19 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 72[rsp], rax
	xor	eax, eax
	.loc 1 100 5 is_stmt 1
	.loc 1 100 10 is_stmt 0
	movabs	rax, 7020395433179637827
	movabs	rdx, 7306916047138660467
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movabs	rax, 8320773185401152877
	mov	QWORD PTR 16[rsp], rax
	mov	DWORD PTR 24[rsp], 7169396
	.loc 1 101 5 is_stmt 1
	.loc 1 101 10 is_stmt 0
	movabs	rax, 3472893377595401593
	movabs	rdx, 8243105118546305078
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rdx
	movabs	rax, 8101813437696664608
	mov	QWORD PTR 48[rsp], rax
	mov	DWORD PTR 56[rsp], 1953391981
	mov	WORD PTR 60[rsp], 41
	.loc 1 102 5 is_stmt 1
	mov	rdi, rsp
	mov	esi, 0
	call	title@PLT
.LVL89:
	.loc 1 103 5
	lea	rdi, 32[rsp]
	mov	esi, 1
	call	title@PLT
.LVL90:
	.loc 1 105 5
	.loc 1 105 11 is_stmt 0
	mov	edi, 0
	call	time@PLT
.LVL91:
	.loc 1 105 5
	mov	edi, eax
	call	srand@PLT
.LVL92:
	.loc 1 106 5 is_stmt 1
	.loc 1 107 5
	.loc 1 108 5
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
	.loc 1 109 5
.LBB9:
	.loc 1 109 10
	.loc 1 109 25 is_stmt 0
	mov	rax, QWORD PTR logo@GOTPCREL[rip]
	movzx	eax, BYTE PTR [rax]
	.loc 1 109 5
	test	al, al
	je	.L62
	mov	rbx, QWORD PTR logo@GOTPCREL[rip]
.LBB10:
	.loc 1 111 13
	mov	r12d, -1
	jmp	.L72
.LVL94:
.L77:
	.loc 1 111 13 is_stmt 1
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	mov	ebp, r12d
.LVL95:
	test	rdi, rdi
	je	.L64
	.loc 1 111 13 is_stmt 0 discriminator 1
	movsx	ebp, WORD PTR [rdi]
.L64:
.LVL96:
	.loc 1 112 13 is_stmt 1 discriminator 4
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
	.loc 1 113 13 discriminator 4
	jmp	.L65
.LVL98:
.L78:
	cmp	sil, 10
	je	.L68
	cmp	sil, 37
	jne	.L70
	.loc 1 124 17
	mov	r13, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, 1048576
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_on@PLT
.LVL99:
	.loc 1 125 17
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR 0[r13]
	call	waddch@PLT
.LVL100:
	.loc 1 126 17
	mov	edx, 0
	mov	esi, 1048576
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_off@PLT
.LVL101:
	.loc 1 127 17
	jmp	.L68
.LVL102:
.L79:
	.loc 1 119 17
	sal	ecx, 8
.LVL103:
	movzx	r13d, cx
	or	r13d, 524288
	mov	r15, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_on@PLT
.LVL104:
	.loc 1 120 17
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR [r15]
	call	waddch@PLT
.LVL105:
	.loc 1 121 17
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_off@PLT
.LVL106:
	.loc 1 122 17
.L68:
	.loc 1 144 9
	mov	edi, 2
	call	usleep@PLT
.LVL107:
	.loc 1 145 9
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	wrefresh@PLT
.LVL108:
.L65:
	add	rbx, 1
.LVL109:
.LBE10:
	.loc 1 109 25 is_stmt 0 discriminator 2
	movzx	eax, BYTE PTR [rbx]
	.loc 1 109 5 discriminator 2
	test	al, al
	je	.L62
.L72:
.LVL110:
.LBB11:
	.loc 1 110 8 is_stmt 1
	.loc 1 110 11 is_stmt 0
	cmp	al, 10
	je	.L77
	.loc 1 115 8 is_stmt 1
	.loc 1 115 20 is_stmt 0
	call	rand@PLT
.LVL111:
	mov	ecx, eax
	.loc 1 115 27
	mov	edx, 1431655766
	imul	edx
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	lea	eax, [rdx+rdx*2]
	sub	ecx, eax
	.loc 1 115 12
	add	ecx, 1
.LVL112:
	.loc 1 117 9 is_stmt 1
	mov	r14, rbx
	.loc 1 117 21 is_stmt 0
	movzx	esi, BYTE PTR [rbx]
	cmp	sil, 42
	je	.L66
	jle	.L78
	cmp	sil, 79
	je	.L71
	cmp	sil, 111
	je	.L71
	cmp	sil, 64
	je	.L79
.L70:
	.loc 1 141 17 is_stmt 1
	movsx	esi, sil
	mov	rax, QWORD PTR stdscr@GOTPCREL[rip]
	mov	rdi, QWORD PTR [rax]
	call	waddch@PLT
.LVL113:
	.loc 1 142 17
	jmp	.L68
.LVL114:
.L71:
	.loc 1 130 17
	sal	ecx, 8
.LVL115:
	movzx	r13d, cx
	or	r13d, 2097152
	mov	r15, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_on@PLT
.LVL116:
	.loc 1 131 17
	movsx	esi, BYTE PTR [r14]
	mov	rdi, QWORD PTR [r15]
	call	waddch@PLT
.LVL117:
	.loc 1 132 17
	mov	edx, 0
	mov	esi, r13d
	mov	rdi, QWORD PTR [r15]
	call	wattr_off@PLT
.LVL118:
	.loc 1 133 17
	jmp	.L68
.LVL119:
.L66:
	.loc 1 135 17
	mov	r13, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	esi, 1024
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_on@PLT
.LVL120:
	.loc 1 136 17
	movsx	esi, BYTE PTR [rbx]
	mov	rdi, QWORD PTR 0[r13]
	call	waddch@PLT
.LVL121:
	.loc 1 137 17
	mov	edx, 0
	mov	esi, 1024
	mov	rdi, QWORD PTR 0[r13]
	call	wattr_off@PLT
.LVL122:
	jmp	.L68
.LVL123:
.L62:
.LBE11:
.LBE9:
	.loc 1 147 5
	lea	esi, 2[rbp]
	mov	rbx, QWORD PTR stdscr@GOTPCREL[rip]
	mov	edx, 0
	mov	rdi, QWORD PTR [rbx]
	call	wmove@PLT
.LVL124:
	.loc 1 148 5
	lea	rdi, .LC13[rip]
	mov	eax, 0
	call	printw@PLT
.LVL125:
	.loc 1 150 5
	mov	rdi, QWORD PTR [rbx]
	call	wgetch@PLT
.LVL126:
	.loc 1 151 5
	call	endwin@PLT
.LVL127:
	.loc 1 152 1 is_stmt 0
	mov	rax, QWORD PTR 72[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L80
	add	rsp, 88
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
.LVL128:
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
.LVL129:
.L80:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL130:
	.cfi_endproc
.LFE28:
	.size	print_logo, .-print_logo
	.globl	init_user
	.type	init_user, @function
init_user:
.LFB33:
	.loc 1 221 66 is_stmt 1
	
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
.LVL131:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	.loc 1 221 66 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 222 5 is_stmt 1
	mov	eax, DWORD PTR [rsi]
	mov	DWORD PTR [rdi], eax
	movzx	eax, WORD PTR 4[rsi]
	mov	WORD PTR 4[rdi], ax
	.loc 1 223 5
	movdqu	xmm0, XMMWORD PTR [rdx]
	movups	XMMWORD PTR 6[rdi], xmm0
	movdqu	xmm1, XMMWORD PTR 16[rdx]
	movups	XMMWORD PTR 22[rdi], xmm1
	movzx	edx, BYTE PTR 32[rdx]
.LVL132:
	mov	BYTE PTR 38[rdi], dl
	.loc 1 224 5
	.loc 1 224 24 is_stmt 0
	mov	rax, QWORD PTR default_print_info@GOTPCREL[rip]
	mov	QWORD PTR 40[rdi], rax
	.loc 1 225 5 is_stmt 1
	.loc 1 225 24 is_stmt 0
	mov	rax, QWORD PTR default_change_key@GOTPCREL[rip]
	mov	QWORD PTR 48[rdi], rax
	.loc 1 226 5 is_stmt 1
	.loc 1 226 24 is_stmt 0
	mov	rax, QWORD PTR default_design_toy@GOTPCREL[rip]
	mov	QWORD PTR 56[rdi], rax
	.loc 1 227 5 is_stmt 1
	.loc 1 227 23 is_stmt 0
	mov	rax, QWORD PTR default_view_toys@GOTPCREL[rip]
	mov	QWORD PTR 64[rdi], rax
	.loc 1 228 5 is_stmt 1
	.loc 1 228 22 is_stmt 0
	mov	QWORD PTR 72[rdi], 0
	.loc 1 229 5 is_stmt 1
.LBB12:
	.loc 1 229 10
.LVL133:
	lea	rax, 80[rdi]
	lea	rdx, 880[rdi]
.LVL134:
.L82:
	.loc 1 230 9 discriminator 3
	.loc 1 230 25 is_stmt 0 discriminator 3
	mov	QWORD PTR [rax], 0
	add	rax, 8
	.loc 1 229 5 discriminator 3
	cmp	rax, rdx
	jne	.L82
.LBE12:
	.loc 1 232 1
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L86
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
.L86:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL135:
	.cfi_endproc
.LFE33:
	.size	init_user, .-init_user
	.section	.rodata.str1.1
.LC14:
	.string	"DEBUG %p: %s\n"
	.text
	.globl	debug_print
	.type	debug_print, @function
debug_print:
.LFB34:
	.loc 1 234 36 is_stmt 1
	
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
.LVL136:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16
	.cfi_def_cfa_offset 32
	mov	rsi, rdi
	.loc 1 234 36 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 235 5 is_stmt 1
	mov	rdx, rdi
	lea	rdi, .LC14[rip]
.LVL137:
	call	printf@PLT
.LVL138:
	.loc 1 236 1 is_stmt 0
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L90
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
.L90:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL139:
	.cfi_endproc
.LFE34:
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
.LFB35:
	.loc 1 238 19 is_stmt 1
	
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
	.loc 1 238 19 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 239 5 is_stmt 1
	lea	rdi, .LC15[rip]
	call	puts@PLT
.LVL140:
	.loc 1 240 5
	lea	rdi, .LC16[rip]
	call	puts@PLT
.LVL141:
	.loc 1 241 5
	lea	rdi, .LC17[rip]
	call	puts@PLT
.LVL142:
	.loc 1 242 5
	lea	rdi, .LC18[rip]
	call	puts@PLT
.LVL143:
	.loc 1 243 5
	lea	rdi, .LC19[rip]
	call	puts@PLT
.LVL144:
	.loc 1 244 5
	lea	rdi, .LC20[rip]
	call	puts@PLT
.LVL145:
	.loc 1 245 5
	lea	rdi, .LC21[rip]
	call	puts@PLT
.LVL146:
	.loc 1 246 1 is_stmt 0
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L94
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
.L94:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL147:
	.cfi_endproc
.LFE35:
	.size	print_menu, .-print_menu
	.globl	quit
	.type	quit, @function
quit:
.LFB36:
	.loc 1 248 78 is_stmt 1
	
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
.LVL148:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	.loc 1 248 78 is_stmt 0
	mov	rdx, QWORD PTR fs:40
	mov	QWORD PTR 8[rsp], rdx
	xor	edx, edx
	.loc 1 249 5 is_stmt 1
	.loc 1 249 8 is_stmt 0
	test	rdi, rdi
	je	.L96
	mov	rax, rdi
	.loc 1 250 9 is_stmt 1
	mov	rdi, rsi
.LVL149:
	call	rax
.LVL150:
.L96:
	.loc 1 253 5
	mov	edi, 0
	call	exit@PLT
.LVL151:
	.cfi_endproc
.LFE36:
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
.LFB37:
	.loc 1 256 15
	
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
	.loc 1 256 15 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 72[rsp], rax
	xor	eax, eax
	.loc 1 257 5 is_stmt 1
	.loc 1 258 5
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
	.loc 1 259 5
	lea	rdi, .LC22[rip]
	call	puts@PLT
.LVL152:
	.loc 1 260 5
	mov	edx, 200
	mov	rsi, rbp
	mov	edi, 0
	call	read@PLT
.LVL153:
	.loc 1 261 5
	lea	rdi, .LC23[rip]
	call	puts@PLT
.LVL154:
	.loc 1 262 1 is_stmt 0
	mov	rax, QWORD PTR 72[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L102
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
.L102:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL155:
	.cfi_endproc
.LFE37:
	.size	report, .-report
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Experimental features are going to be enabled!"
	.text
	.globl	experimental
	.type	experimental, @function
experimental:
.LFB39:
	.loc 1 269 66 is_stmt 1
	
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
.LVL156:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	mov	rbp, rdi
	.loc 1 269 66 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 270 5 is_stmt 1
	lea	rdi, .LC24[rip]
.LVL157:
	call	puts@PLT
.LVL158:
	.loc 1 271 5
	.loc 1 271 27 is_stmt 0
	mov	rax, QWORD PTR session_handler@GOTPCREL[rip]
	mov	QWORD PTR 0[rbp], rax
	.loc 1 272 1
	mov	rax, QWORD PTR 8[rsp]
	xor	rax, QWORD PTR fs:[rbx]
	jne	.L106
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
.LVL159:
	
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
.LVL160:
.L106:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL161:
	.cfi_endproc
.LFE39:
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
.LFB40:
	.loc 1 275 43 is_stmt 1
	
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
.LVL162:
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 136
	.cfi_def_cfa_offset 176
	mov	rdx, rsi
	.loc 1 275 43 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 120[rsp], rax
	xor	eax, eax
	.loc 1 276 5 is_stmt 1
	mov	rsi, rdi
.LVL163:
	mov	rbx, QWORD PTR g_user@GOTPCREL[rip]
	mov	rdi, rbx
.LVL164:
	call	init_user@PLT
.LVL165:
	.loc 1 277 5
	lea	rdi, .LC25[rip]
	call	puts@PLT
.LVL166:
	.loc 1 278 5
	mov	rdi, rbx
# gadgets
	sub rbx, 0x60
	add rbx, 0x60
# -------
	call	[QWORD PTR 40[rbx]]
.LVL167:
	.loc 1 280 5
	.loc 1 281 5
	lea	rdx, 16[rsp]
	mov	ecx, 12
	mov	eax, 0
	mov	rdi, rdx
	rep stosq
	mov	WORD PTR [rdi], 0
	mov	BYTE PTR 2[rdi], 0
	.loc 1 282 5
	.loc 1 282 12 is_stmt 0
	mov	QWORD PTR 8[rsp], 0
	.loc 1 287 9
	lea	r12, .LC26[rip]
	.loc 1 288 9
	mov	rbx, rdx
	.loc 1 290 13
	lea	rbp, .LC27[rip]
	.loc 1 306 13
	lea	r13, 8[rsp]
	jmp	.L108
.L109:
	.loc 1 292 16 is_stmt 1
	.loc 1 292 20 is_stmt 0
	lea	rsi, .LC28[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL168:
	.loc 1 292 19
	test	rax, rax
	je	.L111
	.loc 1 293 13 is_stmt 1
	.loc 1 293 19 is_stmt 0
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 293 13
	mov	rdi, rax
	call	[QWORD PTR 48[rax]]
.LVL169:
.L108:
	.loc 1 284 5 is_stmt 1
	.loc 1 286 9
	mov	eax, 0
	call	print_menu@PLT
.LVL170:
	.loc 1 287 9
	mov	rdi, r12
	mov	eax, 0
	call	printf@PLT
.LVL171:
	.loc 1 288 9
	mov	edx, 99
	mov	rsi, rbx
	mov	edi, 0
	call	read@PLT
.LVL172:
	.loc 1 290 9
	.loc 1 290 13 is_stmt 0
	mov	rsi, rbp
	mov	rdi, rbx
	call	strstr@PLT
.LVL173:
	.loc 1 290 12
	test	rax, rax
	je	.L109
	.loc 1 291 13 is_stmt 1
	.loc 1 291 19 is_stmt 0
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 291 13
	mov	rdi, rax
	call	[QWORD PTR 40[rax]]
.LVL174:
	jmp	.L108
.L111:
	.loc 1 294 16 is_stmt 1
	.loc 1 294 20 is_stmt 0
	lea	rsi, .LC29[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL175:
	.loc 1 294 19
	test	rax, rax
	je	.L112
	.loc 1 295 13 is_stmt 1
	.loc 1 295 19 is_stmt 0
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 295 13
	mov	rdi, rax
	call	[QWORD PTR 56[rax]]
.LVL176:
	jmp	.L108
.L112:
	.loc 1 296 16 is_stmt 1
	.loc 1 296 20 is_stmt 0
	lea	rsi, .LC30[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL177:
	.loc 1 296 19
	test	rax, rax
	je	.L113
	.loc 1 297 13 is_stmt 1
	.loc 1 297 19 is_stmt 0
	mov	rax, QWORD PTR g_user@GOTPCREL[rip]
	.loc 1 297 13
	mov	rdi, rax
	call	[QWORD PTR 64[rax]]
.LVL178:
	jmp	.L108
.L113:
	.loc 1 298 16 is_stmt 1
	.loc 1 298 20 is_stmt 0
	lea	rsi, .LC31[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL179:
	.loc 1 298 19
	test	rax, rax
	je	.L114
	.loc 1 299 13 is_stmt 1
	mov	eax, 0
	call	report@PLT
.LVL180:
	.loc 1 300 13
	lea	rdi, .LC32[rip]
	call	puts@PLT
.LVL181:
	jmp	.L108
.L114:
	.loc 1 301 16
	.loc 1 301 20 is_stmt 0
	lea	rsi, .LC33[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL182:
	.loc 1 301 19
	test	rax, rax
	jne	.L121
	.loc 1 305 16 is_stmt 1
	.loc 1 305 20 is_stmt 0
	lea	rsi, .LC34[rip]
	mov	rdi, rbx
	call	strstr@PLT
.LVL183:
	.loc 1 305 19
	test	rax, rax
	je	.L117
	.loc 1 306 13 is_stmt 1
	mov	rdi, r13
	call	experimental@PLT
.LVL184:
	jmp	.L108
.L121:
	lea	rax, 16[rsp]
	lea	rdx, 96[rsp]
.L116:
.LVL185:
.LBB13:
	.loc 1 303 44 discriminator 3
	.loc 1 303 54 is_stmt 0 discriminator 3
	mov	BYTE PTR [rax], 0
.LVL186:
	add	rax, 1
.LVL187:
	.loc 1 303 13 discriminator 3
	cmp	rax, rdx
	jne	.L116
.LBE13:
	.loc 1 304 13 is_stmt 1
	mov	rsi, QWORD PTR g_user@GOTPCREL[rip]
	mov	rdi, QWORD PTR 8[rsp]
	call	quit@PLT
.LVL188:
	jmp	.L108
.L117:
	.loc 1 308 13
	mov	rsi, rbx
	lea	rdi, .LC35[rip]
	mov	eax, 0
	call	printf@PLT
.LVL189:
	jmp	.L108
	.cfi_endproc
.LFE40:
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
.LFB41:
	.loc 1 314 23
	
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
	sub	rsp, 296
	.cfi_def_cfa_offset 320
	.loc 1 314 23 is_stmt 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 280[rsp], rax
	xor	eax, eax
	.loc 1 315 5 is_stmt 1
	.loc 1 315 15 is_stmt 0
	lea	rsi, .LC36[rip]
	lea	rdi, .LC37[rip]
	call	fopen@PLT
.LVL190:
	mov	rbx, rax
.LVL191:
	.loc 1 316 5 is_stmt 1
	.loc 1 317 5
	.loc 1 318 5
	lea	rdx, 208[rsp]
	lea	rsi, .LC38[rip]
	mov	rdi, rax
	mov	eax, 0
.LVL192:
	call	__isoc99_fscanf@PLT
.LVL193:
	.loc 1 319 5
	mov	rdi, rbx
	call	fclose@PLT
.LVL194:
	.loc 1 321 5
	lea	rdi, .LC39[rip]
	call	puts@PLT
.LVL195:
	.loc 1 322 5
	lea	rdi, .LC40[rip]
	mov	eax, 0
	call	printf@PLT
.LVL196:
	.loc 1 323 5
	mov	rbx, QWORD PTR input@GOTPCREL[rip]
.LVL197:
	mov	rsi, rbx
	lea	rdi, .LC41[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
.LVL198:
	.loc 1 325 5
	lea	rsi, 128[rsp]
	mov	rdi, rbx
	call	unhexlify@PLT
.LVL199:
	.loc 1 328 5
.LBB14:
	.loc 1 328 10
	.loc 1 328 45 is_stmt 0
	movzx	eax, BYTE PTR 128[rsp]
	.loc 1 328 28
	test	al, al
	je	.L124
	.loc 1 329 9 is_stmt 1
	.loc 1 329 27 is_stmt 0
	xor	al, BYTE PTR 208[rsp]
	mov	BYTE PTR 128[rsp], al
.LVL200:
	lea	rax, 129[rsp]
	lea	rcx, 209[rsp]
	lea	rsi, 192[rsp]
.LVL201:
.L132:
	.loc 1 328 45 discriminator 3
	movzx	edx, BYTE PTR [rax]
	.loc 1 328 28 discriminator 3
	test	dl, dl
	je	.L124
	.loc 1 329 9 is_stmt 1 discriminator 4
	.loc 1 329 27 is_stmt 0 discriminator 4
	xor	dl, BYTE PTR [rcx]
	mov	BYTE PTR [rax], dl
.LVL202:
	add	rax, 1
.LVL203:
	add	rcx, 1
	.loc 1 328 5 discriminator 4
	cmp	rax, rsi
	jne	.L132
.L124:
.LBE14:
	.loc 1 332 5 is_stmt 1
	.loc 1 332 15 is_stmt 0
	lea	rbp, 128[rsp]
	lea	rsi, .LC42[rip]
	mov	rdi, rbp
	call	strstr@PLT
.LVL204:
	mov	rbx, rax
.LVL205:
	.loc 1 333 5 is_stmt 1
	.loc 1 333 15 is_stmt 0
	mov	esi, 124
	mov	rdi, rbp
	call	strchr@PLT
.LVL206:
	mov	rdx, rax
.LVL207:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 8 is_stmt 0
	test	rbx, rbx
	je	.L134
	test	rax, rax
	je	.L134
	.loc 1 338 5 is_stmt 1
	.loc 1 338 10 is_stmt 0
	mov	BYTE PTR [rax], 0
	.loc 1 339 5 is_stmt 1
	.loc 1 339 27 is_stmt 0
	lea	rsi, 6[rbx]
.LVL208:
	.loc 1 340 5 is_stmt 1
	.loc 1 340 9 is_stmt 0
	mov	rcx, -1
	mov	eax, 0
.LVL209:
	mov	rdi, rsi
	repnz scasb
.LVL210:
	.loc 1 340 8
	cmp	rcx, -7
	je	.L129
	.loc 1 341 9 is_stmt 1
	lea	rdi, .LC44[rip]
	call	printf@PLT
.LVL211:
	.loc 1 342 9
.L122:
	.loc 1 358 1 is_stmt 0
	mov	rax, QWORD PTR 280[rsp]
	xor	rax, QWORD PTR fs:40
	jne	.L136
	add	rsp, 296
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
.LVL212:
.L134:
	.cfi_restore_state
	.loc 1 335 9 is_stmt 1
	lea	rdi, .LC43[rip]
	mov	eax, 0
.LVL213:
	call	printf@PLT
.LVL214:
	.loc 1 336 9
	jmp	.L122
.LVL215:
.L129:
	.loc 1 345 5
	.loc 1 346 5
	mov	eax, DWORD PTR 6[rbx]
	mov	DWORD PTR [rsp], eax
	movzx	eax, WORD PTR 4[rsi]
	mov	WORD PTR 4[rsp], ax
	.loc 1 347 5
	.loc 1 347 10 is_stmt 0
	mov	BYTE PTR [rdx], 124
	.loc 1 349 5 is_stmt 1
	.loc 1 350 5
	.loc 1 350 9 is_stmt 0
	lea	rdi, 128[rsp]
	lea	rsi, .LC45[rip]
	call	strstr@PLT
.LVL216:
	.loc 1 351 5 is_stmt 1
	.loc 1 351 8 is_stmt 0
	test	rax, rax
	je	.L137
	.loc 1 355 5 is_stmt 1
	lea	rsi, 64[rsp]
	movdqu	xmm0, XMMWORD PTR 4[rax]
	movaps	XMMWORD PTR 64[rsp], xmm0
	movdqu	xmm1, XMMWORD PTR 20[rax]
	movaps	XMMWORD PTR 80[rsp], xmm1
	.loc 1 357 5
	mov	rdi, rsp
	call	dashboard@PLT
.LVL217:
	jmp	.L122
.LVL218:
.L137:
	.loc 1 352 9
	lea	rdi, .LC46[rip]
	call	printf@PLT
.LVL219:
	.loc 1 353 9
	jmp	.L122
.L136:
	.loc 1 358 1 is_stmt 0
	call	__stack_chk_fail@PLT
.LVL220:
	.cfi_endproc
.LFE41:
	.size	identify_agent, .-identify_agent
	.globl	main
	.type	main, @function
main:
.LFB42:
	.loc 1 360 12 is_stmt 1
	
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
	.loc 1 360 12 is_stmt 0
	mov	ebx, 40
	mov	rax, QWORD PTR fs:[rbx]
	mov	QWORD PTR 8[rsp], rax
	xor	eax, eax
	.loc 1 361 5 is_stmt 1
	call	init@PLT
.LVL221:
	.loc 1 363 5
	mov	eax, 0
	call	print_logo@PLT
.LVL222:
	.loc 1 364 5
	mov	eax, 0
	call	identify_agent@PLT
# gadgets
	mov eax, 0
	test eax, eax
	je .LVL223
	mov rsi, 8[rbx]
	call rax
# ---------
.LVL223:
	.loc 1 366 5
	.loc 1 367 1 is_stmt 0
	mov	rdx, QWORD PTR 8[rsp]
	xor	rdx, QWORD PTR fs:[rbx]
	jne	.L141
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

# gadgets
	mov rax, 0
	test rax, rax
	je .SOMELABEL
	mov rax, 8[rbx]
	syscall

.SOMELABEL:
    ret
.L141:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL224:
	.cfi_endproc
.LFE42:
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
	.file 4 "/usr/lib/gcc/x86_64-redhat-linux/8/include/stddef.h"
	.file 5 "/usr/include/bits/libio.h"
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
	.long	0x1de2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF201
	.byte	0xc
	.long	.LASF202
	.long	.LASF203
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
	.byte	0x8c
	.byte	0x19
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x8d
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
	.byte	0xd8
	.byte	0x17
	.long	0x42
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.byte	0x8
	.long	0x247
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0xf6
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xfb
	.byte	0x9
	.long	0x7f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.byte	0x9
	.long	0x7f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.byte	0x9
	.long	0x7f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.byte	0x9
	.long	0x7f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.byte	0x9
	.long	0x7f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.byte	0x9
	.long	0x7f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.byte	0x9
	.long	0x7f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.byte	0x9
	.long	0x7f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x104
	.byte	0x9
	.long	0x7f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.byte	0x9
	.long	0x7f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.byte	0x9
	.long	0x7f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x108
	.byte	0x16
	.long	0x290
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x10a
	.byte	0x14
	.long	0x296
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10c
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x110
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x112
	.byte	0xd
	.long	0x65
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x116
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.byte	0x8
	.long	0x29c
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x11c
	.byte	0xf
	.long	0x2ac
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x125
	.byte	0xf
	.long	0x71
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x12d
	.byte	0x9
	.long	0x7d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.byte	0x9
	.long	0x7d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.byte	0x9
	.long	0x7d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.byte	0x9
	.long	0x7d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.byte	0xa
	.long	0x9d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.byte	0x8
	.long	0x2b2
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa9
	.uleb128 0xb
	.long	.LASF204
	.byte	0x5
	.byte	0x9a
	.byte	0xe
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.byte	0x8
	.long	0x290
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.byte	0x16
	.long	0x290
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.byte	0x14
	.long	0x296
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.byte	0x7
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x25b
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0xc
	.long	0x85
	.long	0x2ac
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x253
	.uleb128 0xc
	.long	0x85
	.long	0x2c2
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x13f
	.byte	0x1d
	.long	0x2c2
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x140
	.byte	0x1d
	.long	0x2c2
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x141
	.byte	0x1d
	.long	0x2c2
	.uleb128 0x6
	.byte	0x8
	.long	0x8c
	.uleb128 0x7
	.long	0x2ee
	.uleb128 0x10
	.long	.LASF50
	.byte	0x7
	.byte	0x87
	.byte	0x19
	.long	0x296
	.uleb128 0x10
	.long	.LASF51
	.byte	0x7
	.byte	0x88
	.byte	0x19
	.long	0x296
	.uleb128 0x10
	.long	.LASF52
	.byte	0x7
	.byte	0x89
	.byte	0x19
	.long	0x296
	.uleb128 0x10
	.long	.LASF53
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	0x2f4
	.long	0x334
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x329
	.uleb128 0x10
	.long	.LASF54
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x334
	.uleb128 0xc
	.long	0x91
	.long	0x350
	.uleb128 0x11
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x3
	.value	0x127
	.byte	0x23
	.long	0x345
	.uleb128 0x12
	.long	.LASF56
	.byte	0x3
	.value	0x182
	.byte	0x18
	.long	0x36a
	.uleb128 0x13
	.long	.LASF57
	.byte	0x58
	.byte	0x3
	.value	0x1b3
	.byte	0x8
	.long	0x4f3
	.uleb128 0xa
	.long	.LASF58
	.byte	0x3
	.value	0x1b5
	.byte	0x11
	.long	0x50
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x3
	.value	0x1b5
	.byte	0x18
	.long	0x50
	.byte	0x2
	.uleb128 0xa
	.long	.LASF60
	.byte	0x3
	.value	0x1b8
	.byte	0x11
	.long	0x50
	.byte	0x4
	.uleb128 0xa
	.long	.LASF61
	.byte	0x3
	.value	0x1b8
	.byte	0x18
	.long	0x50
	.byte	0x6
	.uleb128 0xa
	.long	.LASF62
	.byte	0x3
	.value	0x1b9
	.byte	0x11
	.long	0x50
	.byte	0x8
	.uleb128 0xa
	.long	.LASF63
	.byte	0x3
	.value	0x1b9
	.byte	0x18
	.long	0x50
	.byte	0xa
	.uleb128 0xa
	.long	.LASF12
	.byte	0x3
	.value	0x1bb
	.byte	0xa
	.long	0x50
	.byte	0xc
	.uleb128 0xa
	.long	.LASF64
	.byte	0x3
	.value	0x1be
	.byte	0xa
	.long	0x4f3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0x3
	.value	0x1bf
	.byte	0xa
	.long	0x91
	.byte	0x14
	.uleb128 0xa
	.long	.LASF66
	.byte	0x3
	.value	0x1c2
	.byte	0x7
	.long	0x563
	.byte	0x18
	.uleb128 0xa
	.long	.LASF67
	.byte	0x3
	.value	0x1c3
	.byte	0x7
	.long	0x563
	.byte	0x19
	.uleb128 0xa
	.long	.LASF68
	.byte	0x3
	.value	0x1c4
	.byte	0x7
	.long	0x563
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF69
	.byte	0x3
	.value	0x1c5
	.byte	0x7
	.long	0x563
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF70
	.byte	0x3
	.value	0x1c6
	.byte	0x7
	.long	0x563
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF71
	.byte	0x3
	.value	0x1c7
	.byte	0x7
	.long	0x563
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF72
	.byte	0x3
	.value	0x1c8
	.byte	0x7
	.long	0x563
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF73
	.byte	0x3
	.value	0x1c9
	.byte	0x7
	.long	0x563
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF74
	.byte	0x3
	.value	0x1ca
	.byte	0x7
	.long	0x563
	.byte	0x20
	.uleb128 0xa
	.long	.LASF75
	.byte	0x3
	.value	0x1cb
	.byte	0x6
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF76
	.byte	0x3
	.value	0x1cd
	.byte	0xf
	.long	0x56f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF77
	.byte	0x3
	.value	0x1d0
	.byte	0x11
	.long	0x50
	.byte	0x30
	.uleb128 0xa
	.long	.LASF78
	.byte	0x3
	.value	0x1d1
	.byte	0x11
	.long	0x50
	.byte	0x32
	.uleb128 0xa
	.long	.LASF79
	.byte	0x3
	.value	0x1d4
	.byte	0x6
	.long	0x57
	.byte	0x34
	.uleb128 0xa
	.long	.LASF80
	.byte	0x3
	.value	0x1d5
	.byte	0x6
	.long	0x57
	.byte	0x38
	.uleb128 0xa
	.long	.LASF81
	.byte	0x3
	.value	0x1d6
	.byte	0xa
	.long	0x575
	.byte	0x40
	.uleb128 0xa
	.long	.LASF82
	.byte	0x3
	.value	0x1de
	.byte	0x4
	.long	0x500
	.byte	0x48
	.uleb128 0xa
	.long	.LASF83
	.byte	0x3
	.value	0x1e0
	.byte	0x11
	.long	0x50
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x3
	.value	0x184
	.byte	0x10
	.long	0x91
	.uleb128 0x13
	.long	.LASF85
	.byte	0xc
	.byte	0x3
	.value	0x1d9
	.byte	0x9
	.long	0x563
	.uleb128 0xa
	.long	.LASF86
	.byte	0x3
	.value	0x1db
	.byte	0x15
	.long	0x50
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0x3
	.value	0x1db
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0xa
	.long	.LASF88
	.byte	0x3
	.value	0x1dc
	.byte	0x15
	.long	0x50
	.byte	0x4
	.uleb128 0xa
	.long	.LASF89
	.byte	0x3
	.value	0x1dc
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0xa
	.long	.LASF90
	.byte	0x3
	.value	0x1dd
	.byte	0x15
	.long	0x50
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0x3
	.value	0x1dd
	.byte	0x22
	.long	0x50
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF92
	.uleb128 0xe
	.long	.LASF94
	.uleb128 0x6
	.byte	0x8
	.long	0x56a
	.uleb128 0x6
	.byte	0x8
	.long	0x35d
	.uleb128 0xf
	.long	.LASF95
	.byte	0x3
	.value	0x5b8
	.byte	0x25
	.long	0x575
	.uleb128 0xf
	.long	.LASF96
	.byte	0x3
	.value	0x5b9
	.byte	0x25
	.long	0x575
	.uleb128 0xf
	.long	.LASF97
	.byte	0x3
	.value	0x5ba
	.byte	0x25
	.long	0x575
	.uleb128 0xc
	.long	0x85
	.long	0x5ad
	.uleb128 0x11
	.byte	0
	.uleb128 0xf
	.long	.LASF98
	.byte	0x3
	.value	0x5bb
	.byte	0x21
	.long	0x5a2
	.uleb128 0xf
	.long	.LASF99
	.byte	0x3
	.value	0x5bc
	.byte	0x20
	.long	0x57
	.uleb128 0xf
	.long	.LASF100
	.byte	0x3
	.value	0x5bd
	.byte	0x20
	.long	0x57
	.uleb128 0xf
	.long	.LASF101
	.byte	0x3
	.value	0x5be
	.byte	0x20
	.long	0x57
	.uleb128 0xf
	.long	.LASF102
	.byte	0x3
	.value	0x5bf
	.byte	0x20
	.long	0x57
	.uleb128 0xf
	.long	.LASF103
	.byte	0x3
	.value	0x5c0
	.byte	0x20
	.long	0x57
	.uleb128 0xf
	.long	.LASF104
	.byte	0x3
	.value	0x5c1
	.byte	0x20
	.long	0x57
	.uleb128 0xc
	.long	0x7f
	.long	0x618
	.uleb128 0xd
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF105
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x608
	.uleb128 0x10
	.long	.LASF106
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF107
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x5e
	.uleb128 0x10
	.long	.LASF108
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x608
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF110
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x5e
	.uleb128 0xf
	.long	.LASF111
	.byte	0xa
	.value	0x21f
	.byte	0xf
	.long	0x66d
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x10
	.long	.LASF112
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0x7f
	.uleb128 0x10
	.long	.LASF113
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF114
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x10
	.long	.LASF115
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF116
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF117
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF118
	.uleb128 0xc
	.long	0x85
	.long	0x6c9
	.uleb128 0x14
	.long	0x42
	.value	0x379
	.byte	0
	.uleb128 0x15
	.long	.LASF119
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	0x6b8
	.uleb128 0x9
	.byte	0x3
	.quad	logo
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	terminal_rows
	.uleb128 0x15
	.long	.LASF121
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	terminal_cols
	.uleb128 0x16
	.long	.LASF122
	.value	0x13ba
	.byte	0x1
	.byte	0x9a
	.byte	0x8
	.long	0x734
	.uleb128 0x9
	.long	.LASF123
	.byte	0x1
	.byte	0x9b
	.byte	0xa
	.long	0x734
	.byte	0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.long	0x744
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x744
	.uleb128 0xd
	.long	0x42
	.byte	0x31
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x755
	.uleb128 0x14
	.long	0x42
	.value	0x1387
	.byte	0
	.uleb128 0x16
	.long	.LASF125
	.value	0x370
	.byte	0x1
	.byte	0x9f
	.byte	0x8
	.long	0x7cc
	.uleb128 0x9
	.long	.LASF126
	.byte	0x1
	.byte	0xa0
	.byte	0xa
	.long	0x7cc
	.byte	0
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0xa1
	.byte	0xa
	.long	0x7dc
	.byte	0x6
	.uleb128 0x9
	.long	.LASF127
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.long	0x7fd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF128
	.byte	0x1
	.byte	0xa4
	.byte	0xc
	.long	0x7fd
	.byte	0x30
	.uleb128 0x9
	.long	.LASF129
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.long	0x7fd
	.byte	0x38
	.uleb128 0x9
	.long	.LASF130
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.long	0x7fd
	.byte	0x40
	.uleb128 0x9
	.long	.LASF131
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.long	0x9d
	.byte	0x48
	.uleb128 0x9
	.long	.LASF132
	.byte	0x1
	.byte	0xa9
	.byte	0x13
	.long	0x803
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x7dc
	.uleb128 0xd
	.long	0x42
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x7ec
	.uleb128 0xd
	.long	0x42
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	0x7f7
	.uleb128 0x19
	.long	0x7f7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x755
	.uleb128 0x6
	.byte	0x8
	.long	0x7ec
	.uleb128 0xc
	.long	0x813
	.long	0x813
	.uleb128 0xd
	.long	0x42
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x70b
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.value	0x112
	.byte	0xf
	.long	0x755
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.uleb128 0xc
	.long	0x85
	.long	0x841
	.uleb128 0x14
	.long	0x42
	.value	0x257
	.byte	0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.value	0x139
	.byte	0x6
	.long	0x830
	.uleb128 0x9
	.byte	0x3
	.quad	input
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x1
	.value	0x168
	.byte	0x5
	.long	0x57
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b0
	.uleb128 0x1c
	.quad	.LVL221
	.long	0x1a2f
	.uleb128 0x1c
	.quad	.LVL222
	.long	0x162f
	.uleb128 0x1c
	.quad	.LVL223
	.long	0x8b0
	.uleb128 0x1c
	.quad	.LVL224
	.long	0x1c6c
	.byte	0
	.uleb128 0x1d
	.long	.LASF144
	.byte	0x1
	.value	0x13a
	.byte	0x6
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xb49
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.value	0x13b
	.byte	0xb
	.long	0xb49
	.long	.LLST32
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x1
	.value	0x13c
	.byte	0xa
	.long	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF136
	.byte	0x1
	.value	0x13d
	.byte	0xa
	.long	0xb4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x14c
	.byte	0xb
	.long	0x7f
	.long	.LLST33
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.value	0x14d
	.byte	0xb
	.long	0x7f
	.long	.LLST34
	.uleb128 0x1f
	.long	.LASF126
	.byte	0x1
	.value	0x159
	.byte	0xa
	.long	0xb5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x20
	.string	"key"
	.byte	0x1
	.value	0x15d
	.byte	0xa
	.long	0xb5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x965
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x148
	.byte	0xe
	.long	0x57
	.long	.LLST35
	.byte	0
	.uleb128 0x22
	.quad	.LVL190
	.long	0x1c75
	.long	0x991
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
	.quad	.LVL193
	.long	0x1c81
	.long	0x9bd
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x22
	.quad	.LVL194
	.long	0x1c8e
	.long	0x9d5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL195
	.long	0x1c9a
	.long	0x9f4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC39
	.byte	0
	.uleb128 0x22
	.quad	.LVL196
	.long	0x1ca5
	.long	0xa13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC40
	.byte	0
	.uleb128 0x22
	.quad	.LVL198
	.long	0x1cb2
	.long	0xa38
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL199
	.long	0x1b96
	.long	0xa57
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
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x22
	.quad	.LVL204
	.long	0x1cbf
	.long	0xa7c
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
	.quad	.LC42
	.byte	0
	.uleb128 0x22
	.quad	.LVL206
	.long	0x1ccc
	.long	0xa9a
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
	.long	0x1ca5
	.long	0xab9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC44
	.byte	0
	.uleb128 0x22
	.quad	.LVL214
	.long	0x1ca5
	.long	0xad8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC43
	.byte	0
	.uleb128 0x22
	.quad	.LVL216
	.long	0x1cbf
	.long	0xafd
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
	.long	0xb6f
	.long	0xb1c
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
	.long	0x1ca5
	.long	0xb3b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC46
	.byte	0
	.uleb128 0x1c
	.quad	.LVL220
	.long	0x1c6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x247
	.uleb128 0xc
	.long	0x85
	.long	0xb5f
	.uleb128 0xd
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0xb6f
	.uleb128 0xd
	.long	0x42
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.long	.LASF138
	.byte	0x1
	.value	0x113
	.byte	0x6
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xe85
	.uleb128 0x25
	.long	.LASF126
	.byte	0x1
	.value	0x113
	.byte	0x16
	.long	0x7f
	.long	.LLST29
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x113
	.byte	0x26
	.long	0x7f
	.long	.LLST30
	.uleb128 0x1f
	.long	.LASF139
	.byte	0x1
	.value	0x118
	.byte	0xa
	.long	0xe85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF140
	.byte	0x1
	.value	0x11a
	.byte	0xc
	.long	0x7fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xbf7
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x12f
	.byte	0x16
	.long	0x57
	.long	.LLST31
	.byte	0
	.uleb128 0x22
	.quad	.LVL165
	.long	0x11d1
	.long	0xc1d
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
	.quad	.LVL166
	.long	0x1c9a
	.long	0xc3c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x27
	.quad	.LVL167
	.long	0xc50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL168
	.long	0x1cbf
	.long	0xc75
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
	.quad	.LVL169
	.long	0xc90
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x1c
	.quad	.LVL170
	.long	0x105f
	.uleb128 0x22
	.quad	.LVL171
	.long	0x1ca5
	.long	0xcb5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL172
	.long	0x1cd7
	.long	0xcd8
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
	.quad	.LVL173
	.long	0x1cbf
	.long	0xcf6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL174
	.long	0xd11
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL175
	.long	0x1cbf
	.long	0xd36
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
	.quad	.LVL176
	.long	0xd51
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL177
	.long	0x1cbf
	.long	0xd76
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
	.quad	.LVL178
	.long	0xd91
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x22
	.quad	.LVL179
	.long	0x1cbf
	.long	0xdb6
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
	.quad	.LVL180
	.long	0xf55
	.uleb128 0x22
	.quad	.LVL181
	.long	0x1c9a
	.long	0xde2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC32
	.byte	0
	.uleb128 0x22
	.quad	.LVL182
	.long	0x1cbf
	.long	0xe07
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
	.quad	.LVL183
	.long	0x1cbf
	.long	0xe2c
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
	.quad	.LVL184
	.long	0xe95
	.long	0xe44
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL188
	.long	0xff4
	.long	0xe63
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	g_user
	.byte	0
	.uleb128 0x28
	.quad	.LVL189
	.long	0x1ca5
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
	.long	0xe95
	.uleb128 0xd
	.long	0x42
	.byte	0x63
	.byte	0
	.uleb128 0x24
	.long	.LASF141
	.byte	0x1
	.value	0x10d
	.byte	0x6
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xef2
	.uleb128 0x25
	.long	.LASF140
	.byte	0x1
	.value	0x10d
	.byte	0x1b
	.long	0xef2
	.long	.LLST28
	.uleb128 0x22
	.quad	.LVL158
	.long	0x1c9a
	.long	0xee4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x1c
	.quad	.LVL161
	.long	0x1c6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7fd
	.uleb128 0x24
	.long	.LASF142
	.byte	0x1
	.value	0x108
	.byte	0x6
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xf55
	.uleb128 0x25
	.long	.LASF143
	.byte	0x1
	.value	0x108
	.byte	0x25
	.long	0x7f7
	.long	.LLST3
	.uleb128 0x22
	.quad	.LVL16
	.long	0x1c9a
	.long	0xf47
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x1c
	.quad	.LVL17
	.long	0x1c6c
	.byte	0
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x1
	.value	0x100
	.byte	0x6
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xff4
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x101
	.byte	0xa
	.long	0xb5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.quad	.LVL152
	.long	0x1c9a
	.long	0xfa4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.uleb128 0x22
	.quad	.LVL153
	.long	0x1cd7
	.long	0xfc7
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
	.quad	.LVL154
	.long	0x1c9a
	.long	0xfe6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.byte	0
	.uleb128 0x1c
	.quad	.LVL155
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF146
	.byte	0x1
	.byte	0xf8
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x105f
	.uleb128 0x2a
	.long	.LASF140
	.byte	0x1
	.byte	0xf8
	.byte	0x12
	.long	0x7fd
	.long	.LLST26
	.uleb128 0x2a
	.long	.LASF143
	.byte	0x1
	.byte	0xf8
	.byte	0x48
	.long	0x7f7
	.long	.LLST27
	.uleb128 0x2b
	.quad	.LVL150
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.long	0x104b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x28
	.quad	.LVL151
	.long	0x1ce4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF147
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1164
	.uleb128 0x22
	.quad	.LVL140
	.long	0x1c9a
	.long	0x109c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.uleb128 0x22
	.quad	.LVL141
	.long	0x1c9a
	.long	0x10bb
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.uleb128 0x22
	.quad	.LVL142
	.long	0x1c9a
	.long	0x10da
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC17
	.byte	0
	.uleb128 0x22
	.quad	.LVL143
	.long	0x1c9a
	.long	0x10f9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.uleb128 0x22
	.quad	.LVL144
	.long	0x1c9a
	.long	0x1118
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.uleb128 0x22
	.quad	.LVL145
	.long	0x1c9a
	.long	0x1137
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.uleb128 0x22
	.quad	.LVL146
	.long	0x1c9a
	.long	0x1156
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x1c
	.quad	.LVL147
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF148
	.byte	0x1
	.byte	0xea
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x11cb
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.byte	0xea
	.byte	0x21
	.long	0x11cb
	.long	.LLST25
	.uleb128 0x22
	.quad	.LVL138
	.long	0x1ca5
	.long	0x11bd
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
	.quad	.LVL139
	.long	0x1c6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x29
	.long	.LASF149
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1251
	.uleb128 0x2a
	.long	.LASF150
	.byte	0x1
	.byte	0xdd
	.byte	0x1f
	.long	0x7f7
	.long	.LLST21
	.uleb128 0x2a
	.long	.LASF126
	.byte	0x1
	.byte	0xdd
	.byte	0x2d
	.long	0x7f
	.long	.LLST22
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.byte	0xdd
	.byte	0x3d
	.long	0x7f
	.long	.LLST23
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1243
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.byte	0xe
	.long	0x57
	.long	.LLST24
	.byte	0
	.uleb128 0x1c
	.quad	.LVL135
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF151
	.byte	0x1
	.byte	0xd9
	.byte	0x6
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.byte	0xd9
	.byte	0x27
	.long	0x7f7
	.long	.LLST2
	.uleb128 0x22
	.quad	.LVL12
	.long	0x1c9a
	.long	0x129e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x1c
	.quad	.LVL13
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF153
	.byte	0x1
	.byte	0xc8
	.byte	0x6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x13fb
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.byte	0xc8
	.byte	0x28
	.long	0x7f7
	.long	.LLST4
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x12fe
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xd2
	.byte	0x11
	.long	0x9d
	.long	.LLST5
	.byte	0
	.uleb128 0x22
	.quad	.LVL22
	.long	0x1cf1
	.long	0x1317
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x13ba
	.byte	0
	.uleb128 0x22
	.quad	.LVL23
	.long	0x1ca5
	.long	0x1336
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x22
	.quad	.LVL24
	.long	0x1cd7
	.long	0x1353
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
	.long	0x1ca5
	.long	0x1372
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x22
	.quad	.LVL26
	.long	0x1cd7
	.long	0x1390
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
	.long	0x1c9a
	.long	0x13af
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x22
	.quad	.LVL30
	.long	0x1c9a
	.long	0x13ce
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x22
	.quad	.LVL31
	.long	0x1c9a
	.long	0x13ed
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x1c
	.quad	.LVL33
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF154
	.byte	0x1
	.byte	0xb4
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x155f
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.byte	0xb4
	.byte	0x28
	.long	0x7f7
	.long	.LLST11
	.uleb128 0x2f
	.long	.LASF155
	.byte	0x1
	.byte	0xb5
	.byte	0xa
	.long	0x155f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF156
	.byte	0x1
	.byte	0xb6
	.byte	0xa
	.long	0x156f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x148d
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.byte	0x11
	.long	0x9d
	.long	.LLST12
	.uleb128 0x30
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0xbd
	.byte	0x15
	.long	0x9d
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x14b1
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.byte	0x11
	.long	0x9d
	.long	.LLST14
	.byte	0
	.uleb128 0x22
	.quad	.LVL51
	.long	0x1ca5
	.long	0x14d0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x22
	.quad	.LVL52
	.long	0x1cb2
	.long	0x14f5
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
	.long	0x1b96
	.long	0x1513
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
	.long	0x1c9a
	.long	0x1532
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x22
	.quad	.LVL62
	.long	0x1c9a
	.long	0x1551
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x1c
	.quad	.LVL65
	.long	0x1c6c
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x156f
	.uleb128 0xd
	.long	0x42
	.byte	0x59
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x157f
	.uleb128 0xd
	.long	0x42
	.byte	0x25
	.byte	0
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.byte	0xac
	.byte	0x6
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x162f
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.byte	0xac
	.byte	0x28
	.long	0x7f7
	.long	.LLST0
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x15e5
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xae
	.byte	0xe
	.long	0x57
	.long	.LLST1
	.uleb128 0x28
	.quad	.LVL5
	.long	0x1ca5
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
	.long	0x1ca5
	.long	0x160a
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
	.long	0x1cfe
	.long	0x1621
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.quad	.LVL9
	.long	0x1c6c
	.byte	0
	.uleb128 0x2c
	.long	.LASF158
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1918
	.uleb128 0x2f
	.long	.LASF159
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.long	0x1918
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF160
	.byte	0x1
	.byte	0x65
	.byte	0xa
	.long	0x1928
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"pad"
	.byte	0x1
	.byte	0x6a
	.byte	0x9
	.long	0x57
	.byte	0x3c
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.byte	0x6b
	.byte	0x9
	.long	0x57
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.byte	0x6b
	.byte	0xc
	.long	0x57
	.long	.LLST18
	.uleb128 0x21
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x183e
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.byte	0xe
	.long	0x57
	.long	.LLST19
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x34
	.long	.LASF161
	.byte	0x1
	.byte	0x73
	.byte	0xc
	.long	0x57
	.long	.LLST20
	.uleb128 0x22
	.quad	.LVL97
	.long	0x1d09
	.long	0x16e2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 1
	.byte	0
	.uleb128 0x22
	.quad	.LVL99
	.long	0x1d16
	.long	0x1700
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
	.long	0x1d23
	.uleb128 0x22
	.quad	.LVL101
	.long	0x1d30
	.long	0x172b
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
	.quad	.LVL104
	.long	0x1d16
	.long	0x1748
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
	.quad	.LVL105
	.long	0x1d23
	.uleb128 0x22
	.quad	.LVL106
	.long	0x1d30
	.long	0x1772
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
	.quad	.LVL107
	.long	0x1d3d
	.long	0x1789
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.quad	.LVL108
	.long	0x1d4a
	.uleb128 0x1c
	.quad	.LVL111
	.long	0x1d57
	.uleb128 0x1c
	.quad	.LVL113
	.long	0x1d23
	.uleb128 0x22
	.quad	.LVL116
	.long	0x1d16
	.long	0x17cd
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
	.quad	.LVL117
	.long	0x1d23
	.uleb128 0x22
	.quad	.LVL118
	.long	0x1d30
	.long	0x17f7
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
	.quad	.LVL120
	.long	0x1d16
	.long	0x1815
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
	.quad	.LVL121
	.long	0x1d23
	.uleb128 0x28
	.quad	.LVL122
	.long	0x1d30
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL89
	.long	0x1938
	.long	0x185b
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
	.long	0x1938
	.long	0x1879
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
	.long	0x1d64
	.long	0x1890
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL92
	.long	0x1d70
	.uleb128 0x22
	.quad	.LVL93
	.long	0x1d09
	.long	0x18b4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.quad	.LVL124
	.long	0x1d09
	.long	0x18d1
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
	.quad	.LVL125
	.long	0x1d7d
	.long	0x18f0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.uleb128 0x1c
	.quad	.LVL126
	.long	0x1d8a
	.uleb128 0x1c
	.quad	.LVL127
	.long	0x1d97
	.uleb128 0x1c
	.quad	.LVL130
	.long	0x1c6c
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x1928
	.uleb128 0xd
	.long	0x42
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.long	0x85
	.long	0x1938
	.uleb128 0xd
	.long	0x42
	.byte	0x1d
	.byte	0
	.uleb128 0x29
	.long	.LASF162
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a2f
	.uleb128 0x2d
	.string	"msg"
	.byte	0x1
	.byte	0x58
	.byte	0x12
	.long	0x7f
	.long	.LLST15
	.uleb128 0x2d
	.string	"row"
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.long	0x57
	.long	.LLST16
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x19cc
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.long	0x57
	.long	.LLST17
	.uleb128 0x1c
	.quad	.LVL83
	.long	0x1d23
	.uleb128 0x22
	.quad	.LVL84
	.long	0x1d3d
	.long	0x19be
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.quad	.LVL85
	.long	0x1d4a
	.byte	0
	.uleb128 0x22
	.quad	.LVL80
	.long	0x1d09
	.long	0x19e5
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
	.long	0x1d16
	.long	0x1a03
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
	.long	0x1d30
	.long	0x1a21
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
	.long	0x1c6c
	.byte	0
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b96
	.uleb128 0x22
	.quad	.LVL66
	.long	0x1da4
	.long	0x1a6e
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
	.long	0x1da4
	.long	0x1a8f
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
	.long	0x1da4
	.long	0x1ab0
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
	.uleb128 0x1c
	.quad	.LVL69
	.long	0x1db1
	.uleb128 0x1c
	.quad	.LVL70
	.long	0x1dbe
	.uleb128 0x22
	.quad	.LVL71
	.long	0x1dcb
	.long	0x1aeb
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
	.long	0x1dcb
	.long	0x1b0c
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
	.long	0x1dcb
	.long	0x1b2d
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
	.long	0x1dcb
	.long	0x1b4e
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
	.long	0x1dcb
	.long	0x1b6f
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
	.long	0x1dd8
	.long	0x1b88
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x500
	.byte	0
	.uleb128 0x1c
	.quad	.LVL77
	.long	0x1c6c
	.byte	0
	.uleb128 0x29
	.long	.LASF164
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c2e
	.uleb128 0x2a
	.long	.LASF165
	.byte	0x1
	.byte	0x1f
	.byte	0x16
	.long	0x7f
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF166
	.byte	0x1
	.byte	0x1f
	.byte	0x22
	.long	0x7f
	.long	.LLST8
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.long	0x57
	.long	.LLST9
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1c20
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x22
	.byte	0x11
	.long	0x9d
	.long	.LLST10
	.uleb128 0x1c
	.quad	.LVL40
	.long	0x1c2e
	.uleb128 0x1c
	.quad	.LVL41
	.long	0x1c2e
	.byte	0
	.uleb128 0x1c
	.quad	.LVL48
	.long	0x1c6c
	.byte	0
	.uleb128 0x35
	.string	"a2v"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.long	0x85
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c6c
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.byte	0x12
	.byte	0xf
	.long	0x85
	.long	.LLST6
	.uleb128 0x1c
	.quad	.LVL36
	.long	0x1c6c
	.byte	0
	.uleb128 0x36
	.long	.LASF205
	.long	.LASF205
	.uleb128 0x37
	.long	.LASF167
	.long	.LASF167
	.byte	0x7
	.byte	0xe8
	.byte	0xe
	.uleb128 0x38
	.long	.LASF168
	.long	.LASF169
	.byte	0x7
	.value	0x18b
	.byte	0xc
	.uleb128 0x37
	.long	.LASF170
	.long	.LASF170
	.byte	0x7
	.byte	0xc7
	.byte	0xc
	.uleb128 0x39
	.long	.LASF175
	.long	.LASF177
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF171
	.long	.LASF171
	.byte	0x7
	.value	0x13e
	.byte	0xc
	.uleb128 0x38
	.long	.LASF172
	.long	.LASF173
	.byte	0x7
	.value	0x18e
	.byte	0xc
	.uleb128 0x38
	.long	.LASF174
	.long	.LASF174
	.byte	0xc
	.value	0x149
	.byte	0xe
	.uleb128 0x39
	.long	.LASF176
	.long	.LASF178
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF179
	.long	.LASF179
	.byte	0xa
	.value	0x168
	.byte	0x10
	.uleb128 0x38
	.long	.LASF180
	.long	.LASF180
	.byte	0xe
	.value	0x266
	.byte	0xd
	.uleb128 0x38
	.long	.LASF181
	.long	.LASF181
	.byte	0xe
	.value	0x21b
	.byte	0xe
	.uleb128 0x39
	.long	.LASF182
	.long	.LASF183
	.byte	0xd
	.byte	0
	.uleb128 0x38
	.long	.LASF184
	.long	.LASF184
	.byte	0x3
	.value	0x354
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF185
	.long	.LASF185
	.byte	0x3
	.value	0x336
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF186
	.long	.LASF186
	.byte	0x3
	.value	0x32d
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF187
	.long	.LASF187
	.byte	0x3
	.value	0x337
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF188
	.long	.LASF188
	.byte	0xa
	.value	0x1cc
	.byte	0xc
	.uleb128 0x38
	.long	.LASF189
	.long	.LASF189
	.byte	0x3
	.value	0x359
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF190
	.long	.LASF190
	.byte	0xe
	.value	0x1c5
	.byte	0xc
	.uleb128 0x37
	.long	.LASF191
	.long	.LASF191
	.byte	0x9
	.byte	0x4b
	.byte	0xf
	.uleb128 0x38
	.long	.LASF192
	.long	.LASF192
	.byte	0xe
	.value	0x1c7
	.byte	0xd
	.uleb128 0x38
	.long	.LASF193
	.long	.LASF193
	.byte	0x3
	.value	0x2ef
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF194
	.long	.LASF194
	.byte	0x3
	.value	0x346
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF195
	.long	.LASF195
	.byte	0x3
	.value	0x27f
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF196
	.long	.LASF196
	.byte	0x7
	.value	0x126
	.byte	0xc
	.uleb128 0x38
	.long	.LASF197
	.long	.LASF197
	.byte	0x3
	.value	0x294
	.byte	0x21
	.uleb128 0x38
	.long	.LASF198
	.long	.LASF198
	.byte	0x3
	.value	0x318
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF199
	.long	.LASF199
	.byte	0x3
	.value	0x296
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF200
	.long	.LASF200
	.byte	0x3
	.value	0x339
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
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
.LLST32:
	.quad	.LVL191-.Ltext0
	.quad	.LVL192-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL192-.Ltext0
	.quad	.LVL197-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
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
.LLST35:
	.quad	.LVL199-.Ltext0
	.quad	.LVL200-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL200-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x2
	.byte	0x31
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
.LLST29:
	.quad	.LVL162-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL164-.Ltext0
	.quad	.LVL165-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL165-1-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL163-.Ltext0
	.quad	.LVL165-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL165-1-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL185-.Ltext0
	.quad	.LVL186-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-.Ltext0
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
.LLST28:
	.quad	.LVL156-.Ltext0
	.quad	.LVL157-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL157-.Ltext0
	.quad	.LVL159-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL160-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL148-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL149-.Ltext0
	.quad	.LVL150-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL150-1-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL148-.Ltext0
	.quad	.LVL150-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL150-1-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL136-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL137-.Ltext0
	.quad	.LVL138-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL138-1-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL131-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL135-1-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL131-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL135-1-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL131-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL132-.Ltext0
	.quad	.LFE33-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
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
	.quad	.LFE31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
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
	.quad	.LFE30-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
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
	.quad	.LFE29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
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
.LLST18:
	.quad	.LVL93-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL96-.Ltext0
	.quad	.LVL128-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL129-.Ltext0
	.quad	.LFE28-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL94-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL110-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	logo
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL102-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL112-.Ltext0
	.quad	.LVL113-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL119-.Ltext0
	.quad	.LVL120-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL78-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL78-.Ltext0
	.quad	.LVL80-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL80-1-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
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
.LLST7:
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
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
	.quad	.LFE25-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
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
	.quad	.LFE25-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
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
	.quad	.LFE25-.Ltext0
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL35-.Ltext0
	.quad	.LFE24-.Ltext0
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
.LASF171:
	.string	"printf"
.LASF124:
	.string	"description"
.LASF13:
	.string	"_IO_read_ptr"
.LASF181:
	.string	"malloc"
.LASF102:
	.string	"ESCDELAY"
.LASF70:
	.string	"_idlok"
.LASF11:
	.string	"size_t"
.LASF193:
	.string	"printw"
.LASF31:
	.string	"_shortbuf"
.LASF90:
	.string	"_pad_bottom"
.LASF174:
	.string	"strstr"
.LASF85:
	.string	"pdat"
.LASF163:
	.string	"init"
.LASF185:
	.string	"wattr_on"
.LASF49:
	.string	"_IO_2_1_stderr_"
.LASF19:
	.string	"_IO_buf_base"
.LASF141:
	.string	"experimental"
.LASF132:
	.string	"toys"
.LASF117:
	.string	"long long unsigned int"
.LASF55:
	.string	"acs_map"
.LASF138:
	.string	"dashboard"
.LASF87:
	.string	"_pad_x"
.LASF86:
	.string	"_pad_y"
.LASF187:
	.string	"wattr_off"
.LASF128:
	.string	"change_key"
.LASF150:
	.string	"object"
.LASF107:
	.string	"__timezone"
.LASF116:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"__off_t"
.LASF200:
	.string	"wbkgd"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF74:
	.string	"_use_keypad"
.LASF188:
	.string	"usleep"
.LASF145:
	.string	"report"
.LASF10:
	.string	"chtype"
.LASF6:
	.string	"long int"
.LASF64:
	.string	"_attrs"
.LASF12:
	.string	"_flags"
.LASF184:
	.string	"wmove"
.LASF202:
	.string	"test.c"
.LASF177:
	.string	"__builtin_puts"
.LASF182:
	.string	"putchar"
.LASF146:
	.string	"quit"
.LASF172:
	.string	"__isoc99_scanf"
.LASF100:
	.string	"COLOR_PAIRS"
.LASF28:
	.string	"_old_offset"
.LASF139:
	.string	"buffer"
.LASF84:
	.string	"attr_t"
.LASF149:
	.string	"init_user"
.LASF152:
	.string	"self"
.LASF173:
	.string	"scanf"
.LASF153:
	.string	"default_design_toy"
.LASF119:
	.string	"logo"
.LASF110:
	.string	"timezone"
.LASF44:
	.string	"_next"
.LASF122:
	.string	"toy_t"
.LASF77:
	.string	"_regtop"
.LASF98:
	.string	"ttytype"
.LASF103:
	.string	"LINES"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF159:
	.string	"msg1"
.LASF160:
	.string	"msg2"
.LASF115:
	.string	"optopt"
.LASF59:
	.string	"_curx"
.LASF58:
	.string	"_cury"
.LASF197:
	.string	"initscr"
.LASF3:
	.string	"long unsigned int"
.LASF192:
	.string	"srand"
.LASF97:
	.string	"stdscr"
.LASF158:
	.string	"print_logo"
.LASF190:
	.string	"rand"
.LASF17:
	.string	"_IO_write_ptr"
.LASF176:
	.string	"strchr"
.LASF123:
	.string	"name"
.LASF183:
	.string	"__builtin_putchar"
.LASF53:
	.string	"sys_nerr"
.LASF45:
	.string	"_sbuf"
.LASF166:
	.string	"bstr"
.LASF1:
	.string	"short unsigned int"
.LASF42:
	.string	"_IO_FILE"
.LASF157:
	.string	"default_print_info"
.LASF168:
	.string	"__isoc99_fscanf"
.LASF189:
	.string	"wrefresh"
.LASF56:
	.string	"WINDOW"
.LASF164:
	.string	"unhexlify"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF144:
	.string	"identify_agent"
.LASF201:
	.string	"GNU C17 8.0.1 20180324 (Red Hat 8.0.1-0.20) -masm=intel -mtune=generic -march=x86-64 -g -O1 -fPIC -fstack-protector-all"
.LASF51:
	.string	"stdout"
.LASF69:
	.string	"_scroll"
.LASF47:
	.string	"_IO_2_1_stdin_"
.LASF175:
	.string	"puts"
.LASF130:
	.string	"view_toys"
.LASF94:
	.string	"ldat"
.LASF112:
	.string	"optarg"
.LASF33:
	.string	"_offset"
.LASF78:
	.string	"_regbottom"
.LASF21:
	.string	"_IO_save_base"
.LASF79:
	.string	"_parx"
.LASF80:
	.string	"_pary"
.LASF18:
	.string	"_IO_write_end"
.LASF162:
	.string	"title"
.LASF151:
	.string	"default_view_toys"
.LASF204:
	.string	"_IO_lock_t"
.LASF99:
	.string	"COLORS"
.LASF88:
	.string	"_pad_top"
.LASF191:
	.string	"time"
.LASF68:
	.string	"_leaveok"
.LASF111:
	.string	"__environ"
.LASF178:
	.string	"__builtin_strchr"
.LASF39:
	.string	"_mode"
.LASF199:
	.string	"init_pair"
.LASF167:
	.string	"fopen"
.LASF46:
	.string	"_pos"
.LASF135:
	.string	"identity_token"
.LASF54:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF129:
	.string	"design_toy"
.LASF81:
	.string	"_parent"
.LASF143:
	.string	"user"
.LASF142:
	.string	"session_handler"
.LASF92:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF61:
	.string	"_maxx"
.LASF60:
	.string	"_maxy"
.LASF20:
	.string	"_IO_buf_end"
.LASF194:
	.string	"wgetch"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF120:
	.string	"terminal_rows"
.LASF30:
	.string	"_vtable_offset"
.LASF108:
	.string	"tzname"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF41:
	.string	"FILE"
.LASF180:
	.string	"exit"
.LASF134:
	.string	"input"
.LASF113:
	.string	"optind"
.LASF205:
	.string	"__stack_chk_fail"
.LASF126:
	.string	"id_token"
.LASF169:
	.string	"fscanf"
.LASF71:
	.string	"_idcok"
.LASF82:
	.string	"_pad"
.LASF195:
	.string	"endwin"
.LASF156:
	.string	"new_key"
.LASF165:
	.string	"hstr"
.LASF109:
	.string	"daylight"
.LASF127:
	.string	"print_info"
.LASF136:
	.string	"private_key"
.LASF66:
	.string	"_notimeout"
.LASF118:
	.string	"long double"
.LASF91:
	.string	"_pad_right"
.LASF161:
	.string	"color"
.LASF9:
	.string	"char"
.LASF155:
	.string	"input_buf"
.LASF83:
	.string	"_yoffset"
.LASF65:
	.string	"_bkgd"
.LASF72:
	.string	"_immed"
.LASF154:
	.string	"default_change_key"
.LASF114:
	.string	"opterr"
.LASF170:
	.string	"fclose"
.LASF67:
	.string	"_clear"
.LASF203:
	.string	"/home/littlewho/opensource/StackShield"
.LASF8:
	.string	"__off64_t"
.LASF198:
	.string	"start_color"
.LASF29:
	.string	"_cur_column"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF125:
	.string	"user_t"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF93:
	.string	"_IO_FILE_plus"
.LASF106:
	.string	"__daylight"
.LASF133:
	.string	"g_user"
.LASF131:
	.string	"toys_cnt"
.LASF121:
	.string	"terminal_cols"
.LASF186:
	.string	"waddch"
.LASF63:
	.string	"_begx"
.LASF62:
	.string	"_begy"
.LASF22:
	.string	"_IO_backup_base"
.LASF196:
	.string	"setvbuf"
.LASF96:
	.string	"newscr"
.LASF179:
	.string	"read"
.LASF57:
	.string	"_win_st"
.LASF148:
	.string	"debug_print"
.LASF89:
	.string	"_pad_left"
.LASF73:
	.string	"_sync"
.LASF140:
	.string	"save_session_handler"
.LASF75:
	.string	"_delay"
.LASF76:
	.string	"_line"
.LASF105:
	.string	"__tzname"
.LASF137:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF101:
	.string	"COLS"
.LASF95:
	.string	"curscr"
.LASF147:
	.string	"print_menu"
.LASF104:
	.string	"TABSIZE"
	.ident	"GCC: (GNU) 8.0.1 20180324 (Red Hat 8.0.1-0.20)"
	.section	.note.GNU-stack,"",@progbits
