.MODEL SMALL
.STACK 100H
.DATA

M1 DB "PRINTING STAR IN ASCENDING ORDER: $"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    INT 21H
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV BX,0
    
    L1:
    INC BX
    MOV CX,BX
    
    MOV AH,2H
    MOV DL,'*'
    
    L2:
    INT 21H
    LOOP L2
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    
    CMP BX,10
    JG EXIT
    JNE L1
    
    EXIT:
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN