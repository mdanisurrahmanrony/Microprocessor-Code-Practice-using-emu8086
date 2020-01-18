.MODEL SMALL

.DATA

.CODE

MAIN PROC
    
    
    MOV CX,5
    MOV BX,5
    
    LOOP1:
    
    
    
    MOV DL,1
    ADD DL,30H
    
    MOV AH,2
    INT 21H 
    
    
    LOOP2:
    
    MOV DL,5
    ADD DL,30H
    
    MOV AH,2
    INT 21H
    
    LOOP LOOP2
    
    
    
    MOV CX,BX 
    DEC BX
    
    LOOP LOOP1
    
    
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN