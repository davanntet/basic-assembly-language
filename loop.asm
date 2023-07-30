.model small
.data
    
    varinstA DB 13,10,'Please input 1st number: $'
    varinstB DB 13,10,'Please input 2nd number: $'
    varinstR DB 13,10,'The mutiply INPUT1 by INPUT2 is : $'
    
    varA DB 0
    varB DB 0
    varR DB 0 
    lp DB 3
.code
main proc
    
    top:
    mov dx, @data
    mov ds, dx
    
    input1:
    
    lea dx, varinstA
    mov ah, 9h
    int 21h
    
    mov ah, 1H 
    int 21h
    
    cmp al, 'q' ; check if q, then exit
    jz stop                      
    
    
    ; your condition is here to prevent user input the wrong character
    
    ; if al < '0', then jump back to input1
    CMP AL, '0'
    JC  input1
    
    ; if NOT al < 58, then jump back to input1
    cmp al, 58
    jnc input1
          
    
    
    
    mov varA, al 
    sub varA, 48
    
    
    input2:
    lea dx, varinstB
    mov ah, 9h
    int 21h   
    
    mov ah, 1H 
    int 21h 
    
    cmp al, 113 ; check if q, then exit
    jz stop                            
    
    ; your condition is here to prevent user input the wrong character
    
    ; if al < '0', then jump back to input1
    CMP AL, '0'
    JC  input2
    
    ; if NOT al < 58, then jump back to input1
    cmp al, 58
    jnc input2
    
          
     mov varB , al
     sub varB, 48 
     
     
     
     ; todo here
     ; by using loop and add instruction to calculate the multiply of varA and varB
     ; output is stored in varR
     ; then output the result to screen
     mov varR,0  
     ;push varA
     ;pop cx
     ;mov cx,al
     mov cl,varA
     mov ch,0  
     
     cmp cx,0
     jz over
     caculator:
     mov al,varB
     add varR,al
     loop caculator
     jmp over
     mov varR,0
     over:
     mov dl,offset varinstR
     mov ah,9h
     int 21h
     
     mov dl,varR
     add dl,48
     mov ah,2h 
     int 21h
     
      
     
     jmp top 
          
     stop:     
     hlt
     
endp
end main



