.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter any character: $"
MSG2 DB 10,10,13,"You typed "A"$"
MSG3 DB 10,10,13,"You did not type "A"$"
MSG4 DB 10,10,13,"You typed $"

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
    CMP CHAR,"A"
    JE EQUAL
    JMP NOT_EQUAL
    
    EQUAL:
    
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    JMP END
    
    NOT_EQUAL:
    
    MOV AH,9H
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV AH,9H
    MOV DX,OFFSET MSG4
    INT 21H
    
    MOV AH,2H
    MOV DL,CHAR
    INT 21H
    
    JMP END
    
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN