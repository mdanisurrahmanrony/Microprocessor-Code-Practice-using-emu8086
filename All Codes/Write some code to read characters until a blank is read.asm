.MODEL SMALL
.DATA


.CODE
MAIN PROC 
    
    
    MOV    AH,1        ; prepare to  read
     
    REPEAT: 
    INT   21H             ;char in AL
    
    ;until      
    
    CMP   AL, ' '      ; a blank?
    JNE     REPEAT        ; no keep reading
 
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
