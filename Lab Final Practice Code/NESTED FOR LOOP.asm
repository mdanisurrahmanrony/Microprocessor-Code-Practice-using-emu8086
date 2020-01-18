.MODEL SMALL
.STACK 100H
.DATA

M1 DB "NESTED FOR LOOP$"

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
    
    MOV CX,5
    MOV BX,5
    
    L1:    
    MOV AH,2H
    MOV DL,"1"
    INT 21H
    
    L2:
    MOV AH,2H
    MOV DL,"5"
    INT 21H
    LOOP L2    
    
    MOV CX,BX
    DEC BX
    CMP BX,0
    JE END    
    
    LOOP L1
    
    END:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN