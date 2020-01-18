.MODEL SMALL
.STACK 100h
.DATA

MSG DB '?'

MSG2 DB 'ENTER YOUR INPUT: $'

.CODE

MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV SI,0
        
        MOV DX,OFFSET MSG2
        MOV AH,9
        INT 21H
      
        
        MOV AH,1
TOP: 
        MOV MSG[SI],AL
        INT 21H  
        
        CMP AL,0Dh
        JE TOP1
        INC SI
        JMP TOP
TOP1:   
        MOV DL,0Dh 
        MOV AH,2 
        INT 21h
        MOV DL,0Ah 
        MOV AH,2 
        INT 21h 
       
        
 
        
TOOP: 
        MOV DL,MSG[SI]
        MOV AH,2
        INT 21h
        DEC SI
        CMP SI,0
        JE EXIT
        JMP TOOP
EXIT: 
        MOV AH,4CH
        INT 21h 
        
MAIN ENDP
END MAIN