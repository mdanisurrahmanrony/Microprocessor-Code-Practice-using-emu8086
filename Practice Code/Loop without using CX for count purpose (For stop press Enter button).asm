.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "-------->LOOP EXAMPLE<--------$"
MSG2 DB 10,10,13,"Enter characters ,press Enter button to stop: $"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV DX,0
    
    MOV AH,1H
    INT 21H
    
    WHILE:
    CMP AL,0DH
    JE END
    INC DX
    INT 21H
    JMP WHILE
    
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN