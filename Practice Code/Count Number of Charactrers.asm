.MODEL SMALL
.STACK 100H
.DATA

M1 DB "Enter any character, for end press 'enter' button: $"
M2 DB 10,10,13,"Total number your input is: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9H
    LEA DX,M1
    INT 21H
    
    MOV CX,'0'
    MOV AH,1H
    INT 21H
    
    CON:
    CMP AL,0DH
    JE DISPLAY
    INC CX
    INT 21H
    JMP CON
    
    
    DISPLAY:
    MOV AH,9H
    LEA DX,M2
    INT 21H
    
    MOV AH,2H
    MOV DX,CX
    INT 21H
    
        
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN