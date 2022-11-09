dosseg
.model small
.stack 0100h
.data
.code

start: 
mov ax, @data
mov ds, ax

mov cx, 9h

mov ah, 02h
mov dl, '9'
a: int 21h
loop a

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 8h
mov dl, '8'
b: int 21h
loop b

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 7h
mov dl, '7'
c: int 21h
loop c

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 6h
mov dl, '6'
d: int 21h
loop d

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 5h
mov dl, '5'
e: int 21h
loop e

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 4h
mov dl, '4'
f: int 21h
loop f

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 3h
mov dl, '3'
g: int 21h
loop g

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 2h
mov dl, '2'
h: int 21h
loop h

mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl

mov cx, 1h
mov dl, '1'
int 21h

mov ax, 4c00h
int 21h

end start
