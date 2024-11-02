;Sample input/output screen:
;D
;d

.MODEL SMALL
.STACK 100H
.DATA
NEWL DB 10,13,'$'
MSG DB "Enter the Letter: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    LEA DX,NEWL
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    sub BL,32
             
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
       
    
    MAIN ENDP
END MAIN