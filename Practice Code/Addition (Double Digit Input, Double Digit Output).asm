.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "---------->Addition of two numbers<----------$"
MSG2 DB 10,10,13,"Enter first number: $"
MSG3 DB 10,10,13,"Enter Second number: $"
MSG4 DB 10,10,13,"Result of Addition is: $"


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
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV BH,AL
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV BL,AL    
    
    MOV AH,9H
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV CH,AL
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV CL,AL
    
    MOV AH,00H
    MOV AL,BL
    ADD AL,CL
    AAA
    
    ADD AH,BH
    ADD AH,CH
      
    
    MOV BX,AX
    ADD BX,3030H
    
    MOV AH,9H
    MOV DX,OFFSET MSG4
    INT 21H
    
    MOV AH,2H
    MOV DL,BH
    INT 21H
    
    MOV AH,2H
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN