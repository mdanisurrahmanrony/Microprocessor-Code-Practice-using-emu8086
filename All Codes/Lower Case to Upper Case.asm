.MODEL SMALL
.STACK 100H
.DATA  

  MSG1 DB 'ENTER LOWER CASE (a-z): $'  
  MSG2 DB 10,13,'IN UPPER CASE: ' 
  CHAR DB ?,'$'
  
  
.CODE 
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1 
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,20H
    MOV CHAR,AL
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,4CH   
    INT 21H
    
    MAIN ENDP
END MAIN
    
  
  