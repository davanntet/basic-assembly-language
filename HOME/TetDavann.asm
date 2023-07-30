.model small
.data 
    var1 db 13,10,"Please input 1st Number: $"
    var2 db 13,10,"Please input 2st Number: $"
    var3 db 13,10,"The result sum of $"
    var4 db " and $"
    var5 db " is $" 
    var6 db "exit"
    num1 db 0
    num2 db 0
    result db 0
.code 
    main proc
        
        calculator: 
        mov ax,@data
        mov ds,ax
        
        input1:
        mov dl, offset var1
        mov ah,9h
        int 21h
        
        
        mov ah,1h
        int 21h
        
        cmp al,113 
        jz exit
        
        cmp al,47 
        Jc input1
        cmp al,58
        jnc input1
        
        
        sub al,48
        mov num1,al 
        
        
        input2:
        mov dl,offset var2
        mov ah,9h
        int 21h 
         
        mov ah,1h
        int 21h
        
        cmp al,113 
        jz exit
        
        cmp al,47 
        Jc input2
        cmp al,58
        jnc input2
        
        sub al,48 
        mov num2,al  
        
        
        mov al,num1
        add al,num2
        mov result,al
        

        mov dl,offset var3
        mov ah,9h
        int 21h 
        
     
        mov dl,num1
        add dl,48
        mov ah,2h
        int 21h
        
        mov dl,offset var4
        mov ah,9h            
        int 21h
        
       
        mov dl,num2   
        add dl,48
        mov ah,2h
        int 21h
        
        mov dl,offset var5
        mov ah,9h
        int 21h
                
        add result,48
        mov dl,result
        mov ah,2h                                        
        int 21h
        
                    
        
        jmp calculator 
        
        exit:
        hlt
        
                
main endp
    end main
        

        
        
                