.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER FIRST NUMBER: $"
M2 DB 10,10,13,"ENTER SECOND NUMBER: $"
M3 DB 10,10,13,"ENTER THIRD NUMBER: $"
M4 DB 10,10,13,"ENTER FOURTH NUMBER: $"

N1 DB ?,"$"
N2 DB ?,"$"
N3 DB ?,"$"
N4 DB ?,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV N1,AL
    
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV N2,AL
    
    MOV AH,9H
    LEA DX,M3
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV N3,AL
    
    MOV AH,9H
    LEA DX,M4
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV N4,AL
    
    MOV AX,00H
    MOV AL,N1
    SUB AL,N2
    ADD AL,N3
    SUB AL,N4
    AAA
    
    MOV BX,AX
    ADD BX,3030H    
    
    ADD N1,"0"
    ADD N2,"0"
    ADD N3,"0"
    ADD N4,"0"
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2H
    MOV DL,0AH
    INT 21H
    MOV AH,2H
    MOV DL,0DH
    INT 21H
    
    MOV AH,2H
    MOV DL,N1
    INT 21H
    
    MOV AH,2H
    MOV DL,"-"
    INT 21H
    
    MOV AH,2H
    MOV DL,N2
    INT 21H
    
    MOV AH,2H
    MOV DL,"+"
    INT 21H
    
    MOV AH,2H
    MOV DL,N3
    INT 21H
    
    MOV AH,2H
    MOV DL,"-"
    INT 21H
    
    MOV AH,2H
    MOV DL,N4
    INT 21H
    
    MOV AH,2H
    MOV DL,"="
    INT 21H
        
    MOV AH,2H
    MOV DL,BH
    INT 21H
    
    MOV AH,2H
    MOV DL,BL
    INT 21H   
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN