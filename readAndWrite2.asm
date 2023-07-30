.model small
.data
    var1 db "Please input your numbers:$"
    var2 db 13,10,"The next integer is:$"

.code 
    main proc
        mov ax,@data
        mov ds,ax
        
        mov dl,offset var1
        mov ah,9h
        int 21h
        
        mov ah,1h
        int 21h 
        cmp al,13
        jz result1 
        mov ah,0
        push ax
        
        mov ah,1h
        int 21h
        cmp al,13
        jz result2 
        mov ah,0
        push ax
    
        
        mov ah,1h
        int 21h
        mov ah,0
        push ax
               
        
        mov dl,offset var2
        mov ah,9h
        int 21h
        
        
        pop ax
        pop bx
        pop cx
        
        push ax
        push bx
        push cx
               
        
        
        
        pop ax
        pop bx
        pop cx
        
        mov ah,2h
        mov dx,ax
        int 21h
        
        mov ah,2h
        mov dx,bx
        int 21h
         
        mov ah,2h
        mov dx,cx
        int 21h
        jmp stop 
        
        result1:
        mov dl,offset var2
        mov ah,9h
        int 21h
        jmp stop 
        
        result2:
        mov dl,offset var2
        mov ah,9h
        int 21h 
        pop ax 
        mov ah,2h
        mov dx,ax
        int 21h
        
        stop:
        
        
                
main endp
    end main

        
        