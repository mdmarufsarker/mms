include 'emu8086.inc'

.model small
.stack 100h

.data
    in1 db "Enter first number: $"
    in2 db "Enter second number: $"
    in3 db "Enter third number: $"
    msg db " is the largest number. $"

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
    mov bl, al
    
    printn ''

    mov ah, 9
    lea dx, in2
    int 21h

    mov ah, 1
    int 21h
    mov bh, al

    printn ''

    mov ah, 9
    lea dx, in3
    int 21h

    mov ah, 1
    int 21h
    mov cl, al

    printn ''

    cmp bl, bh
    jge num1
    jmp num2

    num1:
        cmp bl, cl
        jge n1

        mov ah, 2
        mov dl, cl
        int 21h

        jmp endoffile

    num2:
        cmp bh, cl
        jge n2

        mov ah, 2
        mov dl, cl
        int 21h

        jmp endoffile

    n1:
        mov ah, 2
        mov dl, cl
        int 21h

        jmp endoffile

    n2:
        mov ah, 2
        mov dl, bh
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