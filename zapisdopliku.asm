org 100h



mov ah, 3ch         ;Tworzymy plik
mov cx, 00000000b
mov dx, file1
int 21h


mov si,ax    ;Handler
mov ah, 40h  ; Pisanie do pliku
mov cx, 14
mov bx, si
mov dx, nazwa
int 21h


mov ah, 3eh   ;Zamykamy plik
mov bx, si
int 21h


mov ax, 4c00h
int 21h

file1 db "filene.txt", 0
nazwa db "Pawel Lelental", 0
