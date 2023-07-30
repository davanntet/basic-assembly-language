.model samll
.data 
.code
MAIN PROC
     
    MOV AH,2
    MOV DL,72
    INT 21H  
    
    MOV AH,2
    MOV DL,101
    INT 21H   
    
    MOV AH,2
    MOV DL,108
    INT 21H
    
    MOV AH,2
    MOV DL,108
    INT 21H
    
    MOV AH,2
    MOV DL,111
    INT 21H
    
    
    MOV AH,2
    MOV DL,032
    INT 21H
    
    MOV AH,2
    MOV DL,087
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

