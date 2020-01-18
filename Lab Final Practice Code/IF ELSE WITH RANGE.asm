.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER ANY NUMBER(0-9): $"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1H
    INT 21H
    
    CMP AL,'0'
    JE Z
    JG C1
    
    C1:
    CMP AL,'3'
    JLE C2
    JG C3
    
    
    C2:
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H    
    
    MOV AH,2H
    MOV DL,'A'
    INT 21H
    
    JMP END
    
    C3:
    CMP AL,'6'
    JLE C4
    JG C5
    
    C4:
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H    
    
    MOV AH,2H
    MOV DL,'B'
    INT 21H
    
    JMP END
    
    C5:
    CMP AL,'9'
    JLE C6
    
    C6:
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H    
    
    MOV AH,2H
    MOV DL,'C'
    INT 21H
    
    JMP END      
    
    Z:     
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H    
    
    MOV AH,2H
    MOV DL,'F'
    INT 21H
    
    JMP END
    
    END:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN