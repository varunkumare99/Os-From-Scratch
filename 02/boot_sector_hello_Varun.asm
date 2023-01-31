mov ah, 0x0e; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10
mov al, ' '
int 0x10
mov al, 'V'
int 0x10
mov al, 'a'
int 0x10
mov al, 'r'
int 0x10
mov al, 'u'
int 0x10
mov al, 'n'
int 0x10

jmp $; infinite loop ie jump to current address

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55
