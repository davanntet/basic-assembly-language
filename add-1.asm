.model small
.data 
    var1 db 1
.code
main proc
    mov cx,@data
    mov ds,cx
    mov dl,var1
    add dl,48
    mov ah,2h 
    int 21h
    
main endp
end main
            

             
    