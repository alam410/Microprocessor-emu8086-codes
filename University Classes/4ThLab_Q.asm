.MODEL SMALLL
.STACK 100H
.DATA
 
 msg DB "ENTER NEW INITIALS: ",'$' 
 
 .CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,msg
    INT 21H
    

    
    MOV AH,1
    INT 21H 
    
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    
    MOV CL,AL
    
    MOV AH,1
    INT 21H
    
    MOV CH,AL
    
    
    
    MOV AH,2
    MOV DL,10
    Int 21H
    
    MOV DL,13
    Int 21H
    MOV DL,BL
    Int 21H
    MOV DL,10
    Int 21H
    MOV DL,13
    Int 21H
      
    
    MOV DL,CL
    INT 21H
    MOV DL,10
    Int 21H
    MOV DL,13
    Int 21H
    
    MOV DL,CH
    INT 21H
    
    MAIN ENDP
END MAIN