.MODEL SMALL

.DATA

.CODE

MAIN PROC
    
    
    MOV CX,5
    
    THREE:
        
    MOV DL,3
    ADD DL,30H
    CMP CX,0
    JE END
    
    MOV AH,2
    INT 21h
    
    LOOP THREE
    
    
    END:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN