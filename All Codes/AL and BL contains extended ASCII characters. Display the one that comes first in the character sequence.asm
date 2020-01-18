.MODEL SMALL
.DATA


.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX

    MOV AL,4
    MOV BL,3
    MOV AH,2  	; prepare to display
    CMP AL,BL	; AL<=BL?
    JNBE ELSE_ 	;no, display char in BL
    MOV DL,AL 	; move char to be displayed
    JMP DISPLAY	; go to display
    
    ELSE_:    	; BL<AL
    MOV DL,BL
    
    DISPLAY: 
    INT 21H	; display it
    
    END_IF:
        MOV AH,4CH
        INT 21H

MAIN ENDP
END MAIN
