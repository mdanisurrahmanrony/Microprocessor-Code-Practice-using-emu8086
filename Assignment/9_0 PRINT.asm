.MODEL SMALL
.STACK 100H
.DATA      

MSG1 DB "9 TO 0 : $"

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET MSG1
    INT 21H
    
    MOV BL,'9'
    
    TOP:
    
      MOV AH,2
      MOV DL,BL
      INT 21H 
      
      MOV DL,20H
      MOV AH,2
      INT 21H
      
      DEC BL
      
      CMP BL,'0'
      JL END
      
      JMP TOP
      
      
      END:
      
         MOV AH,4CH
         INT 21H
         
         MAIN ENDP
END MAIN