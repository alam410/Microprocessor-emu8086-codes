.MODEL SMALLL
.STACK 100H
.DATA
 VAR DB 0
 msg DB "Hello",10,13,'$'
 .CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV VAR,56
    MOV AH,9
    LEA DX,msg
    INT 21H
    
  ;  MOV AH,2
  ;  MOV DL,10
  ;  INT 21H
  ;  MOV DL,13
  ;  INT 21H
    
    MOV AH,1
    INT 21H
    
    MAIN ENDP
END MAIN