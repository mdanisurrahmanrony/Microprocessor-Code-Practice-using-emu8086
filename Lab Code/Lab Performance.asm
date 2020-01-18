.MODEL SMALL
.STACK 100H
.DATA

MS1 DB "Enter first number: $"
MS2 DB 10,10,13,"Enter second number (+): $"
MS3 DB 10,10,13,"Enter third number (-): $"
MS4 DB 10,10,13,"Enter fourth number (+): $"
MS5 DB 10,10,13,"Result is: $"


NUM1 DB ?,"$"
NUM2 DB ?,"$"
NUM3 DB ?,"$"
NUM4 DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MS1
    INT 21H
    
    MOV AH,1H
    INT 21H
    ;SUB AL,30H
    MOV NUM1,AL
    
    MOV AH,9H
    MOV DX,OFFSET MS2
    INT 21H
    
    MOV AH,1H
    INT 21H
    ;SUB AL,30H
    MOV NUM2,AL
    
    MOV AH,9H
    MOV DX,OFFSET MS3
    INT 21H
    
    MOV AH,1H
    INT 21H
    ;SUB AL,30H
    MOV NUM3,AL
    
    MOV AH,9H
    MOV DX,OFFSET MS4
    INT 21H
    
    MOV AH,1H
    INT 21H
    ;SUB AL,30H
    MOV NUM4,AL
    
    MOV AH,00H
    MOV AL,NUM1
    ADD AL,NUM2
    SUB AL,NUM3
    ADD AL,NUM4
    AAA
    
    MOV BX,AX
    
    ADD BX,3030H
    
    MOV AH,9H
    MOV DX,OFFSET MS5
    INT 21H
    
    MOV AH,2H
    MOV DL,BH
    INT 21H
    
    MOV AH,2H
    MOV DL,BL
    INT 21H
    
    MOV AH,4H
    INT 21H
    MAIN ENDP
END MAIN