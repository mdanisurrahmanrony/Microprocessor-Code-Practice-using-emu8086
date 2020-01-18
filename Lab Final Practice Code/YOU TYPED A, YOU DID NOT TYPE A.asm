.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER ANY CHARACTER (SEARCHING FOR "A"): $"
M2 DB 10,10,13,"YOU TYPED "A"$"
M3 DB 10,10,13,"YOU DID NOT TYPE "A"$"

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
    JE P1
    JNE P2
    
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