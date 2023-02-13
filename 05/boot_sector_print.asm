; print function
print:
	pusha

; keep this in mind:
; while (string[i] != 0) { print string[i]; i++ }

; the comparison for string end (null byte)

start:
	mov al, [bx] ; bx is the base address of the string
	cmp al, 0
	je done

	; the part where we print with the BIOS help
	mov ah, 0x0e
	int 0x10 ; 'al' already contains the char

	; increment pointer and do next loop
	add bx, 1
	jmp start

done:
	popa
	ret

; print_newline function
print_newline:
	pusha

	mov ah, 0x0e
	mov al, 0x0a ; '\n'
	int 0x10

	mov al, 0x0d; '\r'
	int 0x10

	popa
	ret
