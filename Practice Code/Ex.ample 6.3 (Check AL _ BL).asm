.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 10,10,13,"Enter number of AL register: $"
MSG2 DB "Enter number of BL register: $"
MSG3 DB 10,10,13,"The largest number is: $"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,1H
    INT 21H
    MOV BL,AL
    
    MOV AH,9H
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV AH,1H
    INT 21H 
    
        
    MOV AH,2H
    
    CMP AL,BL
    JNBE ELSE
    
    MOV DL,AL
    JMP DISPLAY
    
    ELSE:
    MOV DL,BL
    
    DISPLAY:
    INT 21H    
   
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN