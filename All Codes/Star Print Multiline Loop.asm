.MODEL SMALL
.STACK 100H
.DATA
.CODE 

MAIN PROC 
    
    MOV CX,4 
    MOV BX,4 
    
    TOP: 
    MOV AH,2 
    MOV DL,'*' 
    INT 21H 
    DEC BX 
    CMP BX,0 
    JE EXIT 
    JMP TOP 
    
    EXIT: 
    MOV AH,2 
    MOV DL,0DH 
    INT 21H 
    MOV DL,0AH 
    INT 21H 
    
    MOV BX,3 
    LOOP TOP 
    
    MOV AH,4CH 
    INT 21H 

MAIN ENDP
END MAIN