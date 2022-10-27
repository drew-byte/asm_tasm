dosseg
.model small
.stack 0100h
.data
.code
mov ax, @data
mov ds, ax

start:
   mov ax, 00Ah 
   mov ah, 02h 
   mov dl, '0' 
C: int 21h
   mov bl, dl
   int 21h
   mov dl, 0Ah
   int 21h
   mov dl, 0dh
   int 21h
   mov dl, bl
   inc dl
   loop c


mov ax, 4C00h 
int 21h
end start
end