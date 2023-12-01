.model small
.stack 100h

.data
    n1 db ?
    n2 db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; input n1
    mov ah, 1 
    int 21h
    mov bl, al
    sub al, 48
    mov n1, al

    ; input n2
    mov ah, 1
    int 21h
    mov bh, al
    sub al, 48
    mov n2, al

    ; print newline
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    ; print n1
    mov ah, 2
    mov dl, bl
    int 21h

    ; print +
    mov ah, 2
    mov dl, '+'
    int 21h

    ; print n2
    mov ah, 2
    mov dl, bh
    int 21h

    ; print =
    mov ah, 2
    mov dl, '='
    int 21h

    ; add n1 + n2
    mov dl, n1
    add dl, n2
    add dl, 48
    mov ah, 2
    int 21h

    ; print newline
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    ; print n1
    mov ah, 2
    mov dl, bl
    int 21h

    ; print +
    mov ah, 2
    mov dl, '-'
    int 21h

    ; print n2
    mov ah, 2
    mov dl, bh
    int 21h

    ; print =
    mov ah, 2
    mov dl, '='
    int 21h

    ; sub n1 - n2
    mov dl, n1
    sub dl, n2
    add dl, 48
    mov ah, 2
    int 21h

    mov ax, 4ch
    int 21h
main endp
end main

; 42
; 4+2=6
; 4-2=2