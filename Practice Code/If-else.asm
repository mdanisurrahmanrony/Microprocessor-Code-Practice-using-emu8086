.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter character: $"
MSG2 DB 10,10,13,"You have entered "A" $"
MSG3 DB 10,10,13,"You did not enter "A" $"
MSG4 DB 10,10,13,"You entered: $"

CHAR DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV CHAR,AL
    CMP CHAR,"A"
    JE EQ
    JNE NEQ
    
    EQ:
        MOV AH,9H
        LEA DX,MSG2
        INT 21H
        JMP END
    
    NEQ:
    
        MOV AH,9H
        LEA DX,MSG3
        INT 21H
        
        MOV AH,9H
        LEA DX,MSG4
        INT 21H
        
        MOV AH,2H
        MOV DL,CHAR
        INT 21H
        
        JMP END
        
    
    END:
        MOV AH,4H
        INT 21H
    MAIN ENDP
END MAIN