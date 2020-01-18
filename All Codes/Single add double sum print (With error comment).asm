.MODEL SMALL
.STACK 100H
.DATA

MS1 DB "Enter first number: $"     ;Here DB means define byte
MS2 DB 10,10,13,"Enter second number: $"    ;10,10,13, lekhte vule zaoya
MS3 DB 10,10,13,"Addition of two numbers is: $"

NUM1 DB ?,"$"   ;DB er pore ? sign boshanor niyom vule zaoya
NUM2 DB ?,"$"
RESULT DB ?,"$"    ;RESULT variable declare na kora

.CODE      ;.DATA er pore .CODE na lekha

MAIN PROC
    MOV AX,DATA     ;DATA lekhte vule zaoya
    MOV DS,AX       ;DS er jaygay DX lekha
    
    MOV AH,9H
    MOV DX,OFFSET MS1     ;OFFSET na lekha
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H        ;SUB na likhe prothmei ADD likha
    MOV NUM1,AL    
    
    
    MOV AH,9H
    MOV DX,OFFSET MS2
    INT 21H
    
    MOV AH,1H
    INT 21H
    SUB AL,30H
    MOV NUM2,AL      ;Copy korar shomoy num2 ke num1 e rakha
    
    ADD AL,NUM1
    MOV RESULT,AL    ;AL ke RESULT er vitore na rakha
    MOV AH,0         ;AH er pore 0 na lekha
    AAA
    
    ADD AH,30H       ; AX ke BX e rakhar pore 30H zog kora 
    ADD AL,30H
    
    MOV BX,AX
    
    MOV AH,9H
    MOV DL,OFFSET MS3
    INT 21H
    
    MOV AH,2H
    MOV DL,BH        ;Single print er shomoy DX use kora DL use na kore + DL na likhe DH likha
    INT 21H
    
    MOV AH,2H
    MOV DL,BL        ;BX ke BH & BL e vag kore print korte vule zaoa + DL na likhe DH likha
    INT 21H
    
    MOV AH,4H
    INT 21H
    MAIN ENDP        ;MAIN ENDP vule zaoya
END MAIN