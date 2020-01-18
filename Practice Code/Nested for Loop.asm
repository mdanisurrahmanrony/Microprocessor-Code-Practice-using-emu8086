.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    MOV BX,5
    
    LOOP1:
    MOV AH,2H
    MOV DL,'1'
    INT 21H
    
    LOOP2:
    MOV AH,2H
    MOV DL,'5'
    INT 21H
    LOOP LOOP2
    
    MOV CX,BX
    DEC BX
    
    LOOP LOOP1
        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN