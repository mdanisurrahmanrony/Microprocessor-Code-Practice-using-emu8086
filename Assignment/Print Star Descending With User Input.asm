.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB "ENTER A NUMBER WITH RANGE (1-9): $"


VAR1 DB ?,"$"

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21H 
    
    MOV AH,1
    INT 21H 
    SUB AL,30H 
    MOV VAR1,AL
    MOV AH,0
    MOV CH,AH
    MOV CL,AL   
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H
    
    TOP:
    MOV AH,2
    MOV DL,'*' 
    INT 21H
    
    CMP CL,1
    JE INSIDE 
    
    LOOP TOP  
    
    INSIDE: 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV AH,2
    MOV DL,13
    INT 21H   
    
     
    DEC VAR1
    CMP VAR1,0
    JE END 
    
    MOV CL,0 
    MOV CL,VAR1 
    JMP TOP
    
    
    END:
        
    MOV AH,4CH
    INT 21H 
    
    MAIN ENDP
END MAIN