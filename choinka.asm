org 100h


push word 0
call choinka
add sp,2
jmp koniec


choinka:
push bp
mov bp, sp
add bp, 4
mov cx, [bp]

.cho:
add cx,1
push word "*"
push word 32
push word cx
mov dl,10
mov ah, 02h
int 21h
mov dl, 13
mov ah, 02h
int 21h
call wypisz
add sp,6
cmp cx,10
jl .cho
pop bp
ret

wypisz:
push bp
mov bp, sp
add bp, 4
push cx
push dx
push ax
mov cx, [bp]
.petla:
mov ah,2
mov dl, [bp+2]
int 21h
loop .petla
add cx,1
mov cx, [bp]
.petla2:
mov ah,2
mov dl, [bp+4]
int 21h
loop .petla2
pop ax
pop dx
pop cx
pop bp
ret



koniec:
mov ax, 4c00h
int 21h
