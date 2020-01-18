.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER ANY ANY CAPITAL LETTER (A-Z): $"
M2 DB 10,10,13,"YOU TYPED OUT OF THE RANGE FROM A TO Z$"
M3 DB 10,10,13,"YOU TYPED WITHIN THE RANGE FROM A TO Z$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1H
    INT 21H
    
    CMP AL,'A'
    JL P1
    JG C1
    
    C1:
    CMP AL,'Z'
    JLE P2
    JG P1
    
    P1:    
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    JMP END
    
    
    P2:    
    MOV AH,9H
    LEA DX,M3
    INT 21H
    
    JMP END
    
        
    END:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN