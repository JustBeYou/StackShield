default rel
global stackshield_get_old_rip
extern xor_with_secret

section .text
stackshield_get_old_rip:
	; the saved state contains 6 registers + return value
	mov rdi, [rsp + 0x8 * 7]
	call [rel xor_with_secret wrt ..got]
	mov [rsp + 0x8 * 7], rax
	
	ret	
