.model small
.stack 100h

.data
    msg db 'I love my country $'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; 1 - single char input
    ; 2 - single char output
    ; 9 - string output
    ; lea - load effective address

    mov ah, 9
    lea dx, msg
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main
