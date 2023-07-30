.model smol
.data
.code 
    main proc
             
        MOV AH,2
        MOV DL,54h
        INT 21H
        
        MOV AH,2
        MOV DL,65h
        INT 21H
        
        MOV AH,2
        MOV DL,74h
        INT 21H
        
        MOV AH,2
        MOV DL,20h
        INT 21H
        
        MOV AH,2
        MOV DL,44h
        INT 21H
        
        MOV AH,2
        MOV DL,61h
        INT 21H
        
        MOV AH,2
        MOV DL,76h
        INT 21H
        
        MOV AH,2
        MOV DL,61h
        INT 21H
        
        MOV AH,2
        MOV DL,6Eh
        INT 21H
        
        MOV AH,2
        MOV DL,6Eh
        INT 21H
    endp
    end main





