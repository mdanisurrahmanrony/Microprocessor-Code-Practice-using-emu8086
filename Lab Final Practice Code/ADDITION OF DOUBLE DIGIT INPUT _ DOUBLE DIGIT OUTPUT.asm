.MODEL SMALL
.STACK 100H
.DATA

M1 DB "ENTER FIRST NUMBER: $"
M2 DB 10,10,13,"ENTER SECOND NUMBER: $"
M3 DB 10,10,13,"ADDITION OF TWO NUMBERS IS: $"

FL DB ?,"$"
FH DB ?,"$"
SL DB ?,"$"
SH DB ?,"$"
CARRY DB ?,"$"
FIRST DB ?,"$"
MIDDLE DB ?,"$"
LAST DB ?,"$"

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
    MOV FH,AL
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV FL,AL
    
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV SH,AL
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV SL,AL
    
    MOV AX,00H
    MOV AL,FL
    ADD AL,SL
    AAA
    MOV CARRY,AH
    MOV LAST,AL     
    ADD LAST,30H
    
    MOV AX,00H
    MOV AL,SH
    ADD AL,FH
    ADD AL,CARRY
    AAA
  
    MOV FIRST,AH
    ADD FIRST,30H
    MOV MIDDLE,AL
    ADD MIDDLE,30H    
    
    MOV AH,9H
    LEA DX,M3
    INT 21H
    
    
    MOV AH,2H
    MOV DL,FIRST
    INT 21H
    
    MOV AH,2H
    MOV DL,MIDDLE
    INT 21H
    
    MOV AH,2H
    MOV DL,LAST
    INT 21H        
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN