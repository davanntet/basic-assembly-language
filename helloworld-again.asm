.model samll
  
  
  
.data

    var1 db "Hello World!$" 
    var2 db "Tet Davann$"
   
       
.code
MAIN PROC
    
    mov ax,@data ;get var1 and var2
   ;mov ax,seg var2 ;get only var1
    mov ds,ax
    mov dx,offset var2
   ;mov dx,var2
    mov ah,9h
    int 21h  
    
    mov dx,offset var1
    mov ah,9h
    int 21h
   
ENDP
END MAIN

OV DL,087
    INT 21H 
    
    MOV AH,2
    MOV DL,111
    INT 21H
    
    MOV AH,2
    MOV DL,114
    INT 21H
    
    MOV AH,2
    MOV DL,108
    INT 21H
    
    MOV AH,2
    MOV DL,100
    INT 21H    
ENDP
END MAIN

