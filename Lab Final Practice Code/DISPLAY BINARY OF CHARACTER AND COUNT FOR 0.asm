.MODEL SMALL
.STACK 100H
.DATA

M1 DB "TYPE A CHARACTER: $"
M2 DB 10,10,13,"THE NUMBER OF 0 BITS IS $"
M3 DB 10,10,13,"ASCII CODE OF "

CHAR DB ?," IN BINARY IS $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV CX,8
    MOV BX,"0"
    
    MOV AH,1H
    INT 21H
    MOV CHAR,AL
    
    MOV AH,9H
    LEA DX,M3
    INT 21H
        
    L1:
    SHL CHAR,1
    JNC L2
    MOV AH,2H
    MOV DL,"1"
    INT 21H
    JMP L3
    
    L2:
    INC BX
    MOV AH,2H
    MOV DL,"0"
    INT 21H
    JMP L3
    
    L3:
    LOOP L1
    
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    MOV AH,2H
    MOV DX,BX
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN