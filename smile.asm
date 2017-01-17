org 100h
%include "smilemac.mac"

mov ah, 00h
mov al, 0dh
int 10h
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word 4
push word [x]
addd
mov [x], ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word 3
push word [y]
addd
mov [y], ax
push word -4
push word [x]
addd
mov [x], ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word 1
push word [y]
addd
mov [y], ax
push word 1
push word [x]
addd
mov [x], ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word 1
push word [x]
addd
mov [x],ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word 1
push word [x]
addd
mov [x],ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
push word -1
push word [y]
addd
mov [y], ax
push word 1
push word [x]
addd
mov [x],ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h


petla:
mov ah,10h    ;read key press
int 16h     ;keyboard interrupt
p2:
cmp al, 1000100b
call prawo
jne p2
cmp al, 0x01B
je petla

prawo:
push word 1
push word [x]
addd
mov [x], ax
mov ah, 0ch
mov al, 4
mov bh, 0
mov cx, [x]
mov dx, [y]
int 10h
ret


mov ax, 4c00h
int 21h

x: dw 1
y: dw 1
