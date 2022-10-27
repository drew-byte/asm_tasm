; Andrew Felix Cunanan
.model small  
.stack 0100h

.data
    x db 'COMPUTER$'
    y db 'ORGANIZATION$'
    
.code
start:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset x
    int 21h
    
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov  dl, 'A'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'R'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'C'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'H'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'I'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'T'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'E'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'C'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'T'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'U'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'R'
    int 21h
    mov dl, 0ah
    int 21h

    mov  dl, 'E'
    int 21h
    mov dl, 0ah
    int 21h

    mov ah, 09h
    mov dx, offset y
    int 21h

    mov ax, 4c00h
    int 21h
end start
end 