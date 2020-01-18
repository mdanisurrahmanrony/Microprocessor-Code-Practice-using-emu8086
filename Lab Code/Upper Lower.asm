.MODEL SMALL
.STACK 100H
.DATA


MS1 DB "Enter Upper Case: $"
MS2 DB 10,10,13,"In Lower Case: "
RESULT DB ?,'$' 

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET MS1
    INT 21H
    
    MOV AH,1
    INT 21H
    ADD AL,20H
    MOV RESULT,AL
    
    MOV AH,9
    MOV DX,OFFSET MS2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN