.model small
.stack 100h
.code 

main proc     
    
   
    MOV BX,10
    
    LEVEL:    
    
    MOV CX,BX
    DEC BX
    MOV AH,2
    MOV DL,"*"
    
    STAR:
    INT 21H
    LOOP STAR
    
    MOV AH,2
    MOV DL,10
    INT 21H
    
    MOV DL,13
    INT 21H
    
    
    CMP BX,0
    JNE LEVEL
        
    mov ah,4h
    int 21h  
    
    main endp
end main