.model small
.data
    var1 db "Please input a number:$"
    var2 db 13,10,"The next integer is:$"
 
    var4 db 0
    var5 db 0
.code 
    main proc
        mov ax,@data
        mov ds,ax
        
        mov dl,offset var1
        mov ah,9h
        int 21h
        
        mov ah,1h
        int 21h 
        sub al,48
        mov var4,al
               
        
        mov dl,offset var2
        mov ah,9h
        int 21h
        
        add var4,1
        mov dl,var4
        mov var5,dl
        add var5,48
         
        mov dl,var5
        mov ah,2h
        int 21h
                
main endp
    end main

        
        
                
main endp
    end main

        
        