.MODEL SMALL
.STACK 100H
.DATA

M1 DB "PRINTING STAR IN DESCENDING ORDER WITH USER INPUT (SINGLE NUMBER)$"
M2 DB 10,10,13,"ENTER NUMBER (0-9): $"

NUM DB ?,"$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,"0"
    MOV NUM,AL
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    INT 21H
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV BL,NUM
    
    L1:        
    MOV CX,BX
    DEC BX
    
    MOV AH,2H
    MOV DL,"*"
    L2:    
    INT 21H
    LOOP L2
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    CMP BL,0
    JNE L1
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN