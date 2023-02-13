print_hex:
	pusha
    mov cx, 0

	mov ah, 0x0e
	mov al, 'O'
	int 0x10

	mov al, 'x'
	int 0x10
	ror dx, 12

start_1:
	cmp cx, 4
	je done_1
	mov al, dl

	and al, 0xf ; extract last four bits
	add al, 0x30 ; add 0x30 (digit + 0x30) eg: 5 = 53 ie: 0x35
	cmp al, 0x39 ; if greater than 0x39 means its an alphabet(A-F) 0x41 - 0x46
	jle display_value
	add al, 0x07 ; add extra 0x07 to get an alphabet(A-F)

display_value:
	int 0x10

	ror dx, 12
	add cx, 1
	jmp start_1

done_1:
	popa
	ret
