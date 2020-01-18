.8086
.MODEL SMALL
.DATA


  INPUT_M  DB 10,13, 'ENTER CHARACTER',0DH,0AH,'$'
  MESSAGE1 DB 10,13,' YOU TYPED ''$'
  
  CHAR DB "   ",'$'
  
  .CODE
     MAIN PROC
         MOV AX,@DATA
         MOV DS,AX
         
         
         MOV DX,OFFSET INPUT_M
         MOV AH,09
         INT 21H
         
         
         MOV AH,01
         INT 21H
         MOV CHAR,AL 
         
         L1:
         CMP CHAR,'1'
         JL  L0
         CMP CHAR,'3'
         JG L2    
         
         MOV DX,OFFSET MESSAGE1
         MOV AH,09
         INT 21H 
         
         MOV AH,2
         MOV DL,'C'
         INT 21H  
         JMP END
         
                     
         
         
           
          
         
         L2:
         
         CMP CHAR,'4'
         JL L1
         CMP CHAR,'6'
         JG  L3
         
         MOV DX,OFFSET MESSAGE1
         MOV AH,09
         INT 21H 
         MOV AH,2
         MOV DL,'B'
         INT 21H
         JMP END 
         
         
            
         MOV AH,01
         INT 21H
         MOV CHAR,AL
         
         L3:
         
         CMP CHAR,'7'
         JL  L2
         CMP CHAR,'9'
         JG  END
         
         MOV DX,OFFSET MESSAGE1
         MOV AH,09
         INT 21H 
         MOV AH,2
         MOV DL,'A'
         INT 21H
         JMP END 
         
         L0:
         
              CMP CHAR,'0'
        
         
         MOV DX,OFFSET MESSAGE1
         MOV AH,09
         INT 21H 
         MOV AH,2
         MOV DL,'F'
         INT 21H
         JMP END 
         
            JMP END
            
            
         END:
           MOV AH,4CH
           INT 21H
          MAIN ENDP
          END MAIN 
          
          
          