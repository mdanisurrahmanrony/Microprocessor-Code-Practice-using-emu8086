.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,4H
    MOV BX,4H
    
    LOOP1:
    MOV AH,2H
    MOV DL,'*'    
    INT 21H
    DEC BX
    CMP BX,0
    JE LOOP2
    JMP LOOP1
    
    LOOP2:
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV BX,3H
    LOOP LOOP1   
        
        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN