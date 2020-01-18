.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter any character (Range: a to z): $"
MSG2 DB 10,10,13,"You typed within the range...$"
MSG3 DB 10,10,13,"You typed out of range!!!$"

CHAR DB ?,"$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV CHAR,AL
    
    CMP CHAR,'a'
    JL CONDITION_1
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    JMP END
    
    CONDITION_1:
    CMP CHAR,'z'
    JG CONDITION_2
    
    CONDITION_2:    
    MOV AH,9H
    MOV DX,OFFSET MSG3
    INT 21H
    JMP END   
    
    END:
    MOV AH,4H
    INT 21H
    MAIN ENDP
END MAIN