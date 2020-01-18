.MODEL SMALL
.STACK 100H
.DATA

M1 DB "PRINTING 0 TO 9 USING LOOP:$"

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
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV BX,"0"
    
    MOV AH,2H    
    
    L1:
    MOV DX,BX
    INT 21H
    
    MOV AH,2H
    MOV DL,20H
    INT 21H
        
    INC BX
    CMP BX,"9"    
    JG END
    JMP L1
    
    END:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN