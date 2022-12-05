dosseg
.model small
.stack 10
.data
m db 'NEW ERA UNIVERSITY$'
.code 


mov ax, @data
mov ds, ax
start:
mov ax, 0600h 
mov bh, 07h
mov cx, 0000h 
mov dx, 184Fh
int 10h 
mov si, offset m
mov di, 30
lp:
mov ah, 02h
mov bh, 00h
mov dx, di
mov dh, 11
int 10h
 lodsb ; load current character
 cmp al, '$' ; condition
 je finish 
 ; Print current char
 mov ah,09H
 mov bl, 12h ; Color 
 mov cx, 1 ; Character count
 int 10h
 inc di 
 jmp lp
finish:
mov ax, 4C00h
int 21h
start end