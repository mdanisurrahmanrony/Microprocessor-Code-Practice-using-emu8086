.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "------->Addition (Double digit input & double digit output) <-------$"
MSG2 DB 10,10,13,"Enter first number (Double digit number): $"
MSG3 DB 10,10,13,"Enter second number (Double digit number): $"
MSG4 DB 10,10,13,"Addition of two number is: $"

RIGHT DB ?,"$"

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
    MOV BH,AL
    
    MOV AH,1H
    INT 21H
    MOV BL,AL
    
    
    MOV AH,9H
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV CH,AL
    
    MOV AH,1H
    INT 21H
    MOV CL,AL
    
    ADD AL,BL
    MOV AH,0
    AAA
    
    MOV RIGHT,AL
    ADD RIGHT,30H
    
    ADD BH,AH
    ADD BH,CH
    
    MOV AL,BH
    MOV AH,0
    AAA
    
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
    
    MOV AH,2H
    MOV DL,RIGHT
    ;ADD DL,30H
    INT 21H
    
    MOV AH,4H
    INT 21H
    MAIN ENDP
END MAIN