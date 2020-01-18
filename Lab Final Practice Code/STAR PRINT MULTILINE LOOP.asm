.MODEL SMALL
.STACK 100H
.DATA

M1 DB "STAR PRINT WITH MULTILINE LOOP$"

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
    
    MOV CX,4
    MOV BX,4
    
    L1:    
    
    
    L2:
    MOV AH,2H
    MOV DL,"*"
    INT 21H
    
    DEC BX
    CMP BX,0
    JNE L2
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H 
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV BX,3
    
    LOOP L1
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN