mov ah, 0x0e ;tty mode

; attempt 1
; Fails because it tries to print the memory address(i.e. pointer)
; not its actual contents
mov al, "1"
int 0x10
mov al, my_variable
int 0x10


; attempt 2
; It tries to print the memory address of 'my_variable' which is the correct approach
; However the BIOS places our bootsector binary at address 0x7c00
; So we need to add the padding before hand. We will do that in attempt 3
mov al, "2"
int 0x10
mov al, [my_variable]
int 0x10

; attempt 3
; Add the BIOS starting offset 0x7c00 to the memory address of the X
; and then dereference the contents of that pointer
; We need help of a different register 'bx' because 'mov, al [ax]' is illegal.
mov al, "3"
int 0x10
mov bx, my_variable
add bx, 0x7c00
mov al, [bx]
int 0x10

; attempt 4
; We try a shortcut since we know that "A" is stored at byte 0x2d in our binary
; That's smart but ineffective, we don't want to be recounting label offsets
; every time we change the code
mov al, "4"
int 0x10
mov al, [0x7c2d]
int 0x10

jmp $ ;infinite looop

my_variable:
	; ASCII code 0x5A ('A') is stored just before the zero padding.
	; On this code
	db "A"

; zero padding and magic bios number
times 510-($-$$) db 0
dw 0xaa55
