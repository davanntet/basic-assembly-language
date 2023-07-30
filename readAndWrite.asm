

.model small

.data
    var2 db 10,13,"You entered number is:$"  
    var1 db "Please input your numbers:$"
    
  
.code  
    main proc
        mov ax,@data
        mov ds,ax
        
        mov bx,offset var1
        mov ah,9h
        int 21h 
        
        mov ah,1h
        int 21h 
        mov ah,0
        push ax
        
        mov ah,1h
        int 21h
        mov ah,0
        push ax
    
        
        mov ah,1h
        int 21h
        mov ah,0
        push ax
        
        mov cx,offset var2
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
       
            
    main endp
        end main
    
    
