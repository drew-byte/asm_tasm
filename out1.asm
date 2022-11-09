DOSSEG
.model small
.stack 0100h
.data
B db 'Program Ends Here!$'
.code

start :

mov ax, @data
mov ds, ax

mov cx, 32
mov ah, 02h

mov dl, ','
A: int 21h
mov bl, dl
mov dl, 0ah
int 21h
mov dl, bl
inc dl
loop A

mov ah, 09h
mov dx, offset b
int 21h

mov ax, 4c00h 
int 21h

end start
end