.MODEL SMALL
.STACK 100H
.DATA

M DB "Enter any capital letter (Upper Case): $"

MS DB 10,10,13,"Small letter (Lower Case) of inputted letter is: $"

NUM DB ?,"$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET M
    INT 21H
    
    MOV AH,1H
    INT 21H
    ADD AL,20H
    MOV NUM,AL
    
    MOV AH,9H
    MOV DX,OFFSET MS
    INT 21H
    
    MOV AH,2H
    MOV DL,NUM
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN