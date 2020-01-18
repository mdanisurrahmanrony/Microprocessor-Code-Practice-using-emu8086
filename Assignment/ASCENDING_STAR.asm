.MODEL SMALL
.STACK 100H  
.DATA

MSG1 DB "ENTER THE NUMBER(1-9): $"
VAR1 DB 00


.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET MSG1 
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,48
    MOV BL,AL 
    INC BL
    MOV VAR1,1
    MOV CX,0
    MOV CL,1 
    
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
          
          INC VAR1
          CMP VAR1,BL
          JE END
          
         
          MOV CL,VAR1
          JMP TOP
              
        
         
    
           
     END:
        MOV AH,4CH
        INT 21H  
        
        MAIN ENDP
END MAIN