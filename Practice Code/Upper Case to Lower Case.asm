.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "Enter any capital letter (A-Z): $"
MSG2 DB 10,10,13,"Lower case of inputted capital letter is: $"

CHAR DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV AH,1H
    INT 21H
    ADD AL,20H
    MOV CHAR,AL
    
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,2H
    MOV DL,CHAR
    INT 21H    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN