.MODEL SMALL
.STACK 100H
.DATA 

    MSG DB "Enter first digit: $"
    MSG2 DB 10,13, "Enter 2nd digit: $"
    MSG3 DB 10,13, "Multiplication Result= $" 
    MSG4 DB 10,13, "Division Result= $"
    
    A dw 0 
    B db 0
    C dw 0 
    D dw 0
    
.code 

MAIN PROC
    MOV AX,@data
    mov DS,AX
    
    mov ah,9
    MOV DX,OFFSET MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV A,AX
    
    
    MOV AH,9
    MOV DX,OFFSET MSG2
    INT 21H
    
    MOV AH,1
    int 21H
    SUB AL,30H
    MOV b,AL

;following part for calculating the multiplication      
    
    MOV AX,A
    MOV BL,B
    MUL BL 
    AAM 
 
    ADD AH,30H
    ADD AL,30H
    
    MOV C,AX 
    
    
;;following part for calculating the division    
    
    MOV AX,A
    MOV BL,B 
    MOV AH,0 
    DIV BL
    AAD 
   
    ADD AH,30H
    ADD AL,30H
    
    MOV D,AX  
    
;following part for showing result of multiplication       
    
    MOV ah,9
    MOV DX,OFFSET MSG3
    INT 21H
    
    MOV BX,C
    
    MOV AH,2
    MOV DL,BH
    INT 21h
    
    MOV AH,2
    MOV DL,BL
    INT 21h  
    
    
;following part for showing result of division    
    
    MOV ah,9
    MOV DX,OFFSET MSG4
    INT 21H
    
    MOV BX,D
    
    MOV AH,2
    MOV DL,BH
    INT 21h
    
    MOV AH,2
    MOV DL,BL
    INT 21h
    
    
MOV AH,4CH
INT 21H

ENDP

END MAIN 

    