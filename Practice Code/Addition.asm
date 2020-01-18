.MODEL SMALL
.STACK 100H
.DATA

M DB "Addition of two numbers$"
MS DB 10,10,13,"Enter first number: $"
MSG DB 10,10,13,"Enter second number: $"
RS DB 10,10,13,"RESULT: $"

N DB ?,"$"
NM DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET M
    INT 21H
    
    MOV AH,9
    MOV DX,OFFSET MS
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV N,AL
    
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NM,AL
    
    
    MOV AH,9
    MOV DX,OFFSET RS
    INT 21H
    
    MOV AL,N
    ADD AL,NM
    ADD AL,30H
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN