mov ah, 0x0e ; tty mode

mov bp, 0x8000 ; this is an address far away from 0x7c00 so that we don't get overwritten
mov sp, bp ; if the stack is empty then sp = bp

push 'X'
push 'v'
push 'J'

; to show how the stack grows downwards
mov al, [0x7ffe]; 0x8000 - 0x2
int 0x10

mov al, [0x8000]
int 0x10
; recover our characters using the standard procedure: 'pop'
; We can only pop full words so we need an auxiliary register to manipulate it
pop bx
mov al, bl
int 0x10 ; prints 'J'

pop bx
mov al, bl
int 0x10 ; prints 'v'

pop bx
mov al, bl
int 0x10 ; prints 'X'

; data that has been pop'd from the stack is garbase now
mov al, [0x8000]
int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
