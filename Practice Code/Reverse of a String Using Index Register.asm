.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER A STRING: $"
M2 DB 0AH,0AH,0DH,"THE REVERSE OF THE STRING IS:$"
STRING DB ?,'$'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1H
        
    L1:
    MOV STRING[SI],AL
    INT 21H
        
    CMP AL,0DH
    JE L2
    INC SI
    JMP L1
    
    L2:
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    L3:
    MOV AH,2H
    MOV DL,STRING[SI]    
    INT 21H
    DEC SI
    CMP SI,0
    JE EXIT
    JMP L3
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN