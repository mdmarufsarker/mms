include 'emu8086.inc'

.model small
.stack 100h

.data
    in1 db "Enter first number: $"
    in2 db "Enter second number: $"
    n1 db ?
    n2 db ?
    msg db " is the smallest number. $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; jmp => unconditional jump
    ; je => jump if equal
    ; jne => jump if not equal
    ; jg => jump if greater
    ; jge => jump if greater or equal
    ; jl => jump if less
    ; jle => jump if less or equal
    ; cmp => compare

    mov ah, 9
    lea dx, in1
    int 21h

    mov ah, 1
    int 21h
    mov n1, al
    
    printn ''

    mov ah, 9
    lea dx, in2
    int 21h

    mov ah, 1
    int 21h
    mov n2, al

    printn ''

    mov bl, n1
    mov bh, n2
    cmp bl, bh
    jle num1
    jmp num2

    num1:
        mov ah, 2
        mov dl, n1
        int 21h

        jmp endoffile

    num2:
        mov ah, 2
        mov dl, n2
        int 21h

        jmp endoffile

    
    endoffile:
        mov ah, 9
        lea dx, msg
        int 21h

    mov ax, 4ch
    int 21h
main endp
end main