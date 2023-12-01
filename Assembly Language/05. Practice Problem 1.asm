; Using Single Character User Input and Output

; Input:
; Name: Maruf Sarker = 12 characters
; ID: 221002111 = 9 characters
; Phone: 01843453211 = 11 characters
; Email: maruf@gmail.com = 15 characters

; Output:
; Hello Maruf Sarker, holding id no. 221002111
; Thank you for sharing your phone as 01843453211 and email as maruf@gmail.com

include 'emu8086.inc'

.model small
.stack 100h

.data
    ; Name
    nm1 db ?
    nm2 db ?
    nm3 db ?
    nm4 db ?
    nm5 db ?
    nm6 db ?
    nm7 db ?
    nm8 db ?
    nm9 db ?
    nm10 db ?
    nm11 db ?
    nm12 db ?

    ; ID
    id1 db ?
    id2 db ?
    id3 db ?
    id4 db ?
    id5 db ?
    id6 db ?
    id7 db ?
    id8 db ?
    id9 db ?

    ; Phone
    ph1 db ?
    ph2 db ?
    ph3 db ?
    ph4 db ?
    ph5 db ?
    ph6 db ?
    ph7 db ?
    ph8 db ?
    ph9 db ?
    ph10 db ?
    ph11 db ?

    ; Email
    em1 db ?
    em2 db ?
    em3 db ?
    em4 db ?
    em5 db ?
    em6 db ?
    em7 db ?
    em8 db ?
    em9 db ?
    em10 db ?
    em11 db ?
    em12 db ?
    em13 db ?
    em14 db ?
    em15 db ?

    ; Input Messages
    in1 db 'Enter your name: $'
    in2 db 'Enter your id: $'
    in3 db 'Enter your phone: $'
    in4 db 'Enter your email: $'

    ; Output Messages
    opt1 db 'Hello ', '$'
    opt2 db ', holding id no. ', '$'
    opt3 db 'Thank you for sharing your phone as ', '$'
    opt4 db ' and email as ', '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; ask user for enter his/her name
    mov ah, 9
    lea dx, in1
    int 21h

    ; take input from user
    mov ah, 1
    int 21h
    mov nm1, al
    mov ah, 1
    int 21h
    mov nm2, al
    mov ah, 1
    int 21h
    mov nm3, al
    mov ah, 1
    int 21h
    mov nm4, al
    mov ah, 1
    int 21h
    mov nm5, al
    mov ah, 1
    int 21h
    mov nm6, al
    mov ah, 1
    int 21h
    mov nm7, al
    mov ah, 1
    int 21h
    mov nm8, al
    mov ah, 1
    int 21h
    mov nm9, al
    mov ah, 1
    int 21h
    mov nm10, al
    mov ah, 1
    int 21h
    mov nm11, al
    mov ah, 1
    int 21h
    mov nm12, al

    PRINTN ''

    ; ask user for enter his/her id
    mov ah, 9
    lea dx, in2
    int 21h

    ; take input from user
    mov ah, 1
    int 21h
    mov id1, al
    mov ah, 1
    int 21h
    mov id2, al
    mov ah, 1
    int 21h
    mov id3, al
    mov ah, 1
    int 21h
    mov id4, al
    mov ah, 1
    int 21h
    mov id5, al
    mov ah, 1
    int 21h
    mov id6, al
    mov ah, 1
    int 21h
    mov id7, al
    mov ah, 1
    int 21h
    mov id8, al
    mov ah, 1
    int 21h
    mov id9, al

    PRINTN ''

    ; ask user for enter his/her phone number
    mov ah, 9
    lea dx, in3
    int 21h

    ; take input from user
    mov ah, 1
    int 21h
    mov ph1, al
    mov ah, 1
    int 21h
    mov ph2, al
    mov ah, 1
    int 21h
    mov ph3, al
    mov ah, 1
    int 21h
    mov ph4, al
    mov ah, 1
    int 21h
    mov ph5, al
    mov ah, 1
    int 21h
    mov ph6, al
    mov ah, 1
    int 21h
    mov ph7, al
    mov ah, 1
    int 21h
    mov ph8, al
    mov ah, 1
    int 21h
    mov ph9, al
    mov ah, 1
    int 21h
    mov ph10, al
    mov ah, 1
    int 21h
    mov ph11, al

    PRINTN ''

    ; ask user for enter his/her email
    mov ah, 9
    lea dx, in4
    int 21h

    ; take input from user
    mov ah, 1
    int 21h
    mov em1, al
    mov ah, 1
    int 21h
    mov em2, al
    mov ah, 1
    int 21h
    mov em3, al
    mov ah, 1
    int 21h
    mov em4, al
    mov ah, 1
    int 21h
    mov em5, al
    mov ah, 1
    int 21h
    mov em6, al
    mov ah, 1
    int 21h
    mov em7, al
    mov ah, 1
    int 21h
    mov em8, al
    mov ah, 1
    int 21h
    mov em9, al
    mov ah, 1
    int 21h
    mov em10, al
    mov ah, 1
    int 21h
    mov em11, al
    mov ah, 1
    int 21h
    mov em12, al
    mov ah, 1
    int 21h
    mov em13, al
    mov ah, 1
    int 21h
    mov em14, al
    mov ah, 1
    int 21h
    mov em15, al

    PRINTN ''
    PRINTN ''

    ; print opt1
    mov ah, 9
    lea dx, opt1
    int 21h

    ; Output Name
    mov ah, 2
    mov dl, nm1
    int 21h
    mov dl, nm2
    int 21h
    mov dl, nm3
    int 21h
    mov dl, nm4
    int 21h
    mov dl, nm5
    int 21h
    mov dl, nm6
    int 21h
    mov dl, nm7
    int 21h
    mov dl, nm8
    int 21h
    mov dl, nm9
    int 21h
    mov dl, nm10
    int 21h
    mov dl, nm11
    int 21h
    mov dl, nm12
    int 21h

    ; print opt2
    mov ah, 9
    lea dx, opt2
    int 21h

    ; Output ID
    mov ah, 2
    mov dl, id1
    int 21h
    mov dl, id2
    int 21h
    mov dl, id3 
    int 21h
    mov dl, id4
    int 21h
    mov dl, id5
    int 21h
    mov dl, id6
    int 21h
    mov dl, id7
    int 21h
    mov dl, id8
    int 21h
    mov dl, id9
    int 21h

    PRINTN ''
    
    ; print opt3
    mov ah, 9
    lea dx, opt3
    int 21h

    ; Output Phone
    mov ah, 2
    mov dl, ph1
    int 21h
    mov dl, ph2
    int 21h
    mov dl, ph3
    int 21h
    mov dl, ph4
    int 21h
    mov dl, ph5
    int 21h
    mov dl, ph6
    int 21h
    mov dl, ph7
    int 21h
    mov dl, ph8
    int 21h
    mov dl, ph9
    int 21h
    mov dl, ph10
    int 21h
    mov dl, ph11
    int 21h

    ; print opt4
    mov ah, 9
    lea dx, opt4
    int 21h

    ; Output Email
    mov ah, 2
    mov dl, em1
    int 21h
    mov dl, em2
    int 21h
    mov dl, em3
    int 21h
    mov dl, em4
    int 21h
    mov dl, em5
    int 21h
    mov dl, em6
    int 21h
    mov dl, em7
    int 21h
    mov dl, em8
    int 21h
    mov dl, em9
    int 21h
    mov dl, em10
    int 21h
    mov dl, em11
    int 21h
    mov dl, em12
    int 21h
    mov dl, em13
    int 21h
    mov dl, em14
    int 21h
    mov dl, em15
    int 21h

    PRINTN ''

    mov ah, 4ch
    int 21h
main endp
end main