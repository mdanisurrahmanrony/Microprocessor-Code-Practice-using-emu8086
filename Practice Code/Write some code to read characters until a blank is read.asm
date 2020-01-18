.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1H
    
    LOOP1:
    INT 21H
    
    CMP AL,20H
    JE END
    
    JMP LOOP1
    
    END:   
        
        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN