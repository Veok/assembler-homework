;Fibonacci rekurencyjnie


org 100h

start:
mov ax, 10
call fib
jmp wyjdz

fib:
cmp ax,2 ; jesli n>2 to wywolanie fin(n-1)+fib(n-2)
jg rekurencja
mov bx,1 ; 1 jest n = 1 lub n = 2
jmp koniec

rekurencja:
push dx
dec ax  ; n-1
call fib
mov dx,bx ;przypisanie wartosci bx w dx
dec ax ;n-2
call fib
add bx,dx ; fib(n-1)+fib(n-1)
add ax,2 ; przywrocenie wartosci ax
pop dx

koniec:
ret

wyjdz:
mov ax, 4c00h
int 21h
