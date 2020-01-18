.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter any hexadecimal number (A-F): $"
MSG2 DB 10,10,13,"Decimal value of inputted equivalent hexadecimal number is:1$"

NUM DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,11H
    MOV NUM,AL
    
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,2H
    MOV DL,NUM
    INT 21H    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN