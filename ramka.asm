org 100h

mov ah, 00h
mov al, 01h ;40x25
int 10h

;;;;;RYSOWANIE GORY;;;;;;;
mov ah, 0ah
mov al, 201
mov cx, 1
mov bh, 0
int 10h

mov ah, 02h
mov bh, 0
mov dh, 00h
mov dl, 1
int 10h


mov ah, 0ah
mov al, 205
mov cx, [wielkosc_poziom]
mov bh, 0
int 10h

mov ah, 02h
mov bh, 0
mov dh, 0
mov dl, [wielkosc_poziom]
int 10h

mov ah, 0ah
mov al, 187
mov cx, 1
mov bh, 0
int 10h

pion_lewy:
mov ax, [y]
mov bx, 1
add ax,bx
push ax

mov [y], ax
mov ah, 02h
mov bh, 0
mov dh, [y]
mov dl, 0
int 10h
mov ah, 0ah
mov al, 186
mov cx, 1
mov bh, 0
int 10h
pop ax
cmp ax, [wielkosc_pion]
jne pion_lewy

pion_prawy:
mov ax, [x]
mov bx, 1
add ax,bx
push ax

mov [x],ax
mov ah,02
mov dh, [x]
mov dl, [wielkosc_poziom]
int 10h
mov ah, 0ah
mov al, 186
mov cx, 1
mov bh, 0
int 10h
pop ax
cmp ax, [wielkosc_pion]
jne pion_prawy

;;;;RYSOWANIE DOLU;;;;;;
mov ah, 02
mov dh, [wielkosc_pion]
mov dl, 0
int 10h
mov ah, 0ah
mov al, 200
mov cx,1
mov bh, 0
int 10h

mov ah, 02
mov dh, [wielkosc_pion]
mov dl, 1
int 10h
mov ah, 0ah
mov al, 205
mov cx, [wielkosc_poziom]
mov bh, 0
int 10h

mov ah, 02
mov dh, [wielkosc_pion]
mov dl, [wielkosc_poziom]
int 10h

mov ah, 0ah
mov al, 188
mov cx, 1
mov bh, 0
int 10h
mov ax, 4c00h
int 21h

x: dw 0
y: dw 0
wielkosc_pion: dw 23
wielkosc_poziom: dw 10
