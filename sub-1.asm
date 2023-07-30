.model small
.data
    var1 db 60
.code
    main proc
        mov ax,@data
        mov ds,ax        
        mov ah,1h
        int 21h 
        sub al,48
        mov var1,al
        mov dl,var1
        mov ah,2h
        int 21h
main endp
    end main