mov ah, 0x0e ; enable scrolling to tty routine
mov al, [the_secret]
int 0x10    ; is incorrect since it read the value from offset 0x00 when bios actually loads this at address at 0x7c0

mov bx, 0x7c0
mov ds, bx
mov al, [ds:the_secret]
int 0x10	; prints X

mov al, [es:the_secret]
int 0x10     ; is incorrect since es is 0x000 similar to first case

mov bx, 0x7c0
mov es, bx
mov al, [es:the_secret]
int 0x10	; prints X

jmp $	; infite loop jump to current location

the_secret:
	db "X"

; Padding and magic BIOS number
times 510-($-$$) db 0
dw 0xaa55

