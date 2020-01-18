.MODEL SMALL
.STACK 100H
.DATA

M1 DB "----->33333 PRINT USING LOOP<-----$"

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
    MOV AH,2H
    MOV DL,"3"
        
    L:
    INT 21H
    LOOP L
    
    END:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN