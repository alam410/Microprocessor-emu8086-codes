;Write the following assembly program to take input 2 digit and print the subtraction value. 
;Sample input/output screen:
;Enter first digit: 3
;Enter second digit: 2
;The result is: 1

.MODEL SMALL
.STACK 100H
.DATA
NEWL DB 10,13,'$'
MSG DB "Enter the first digit: $"
MSG2 DB "Enter the second digit: $"  
RES DB "The result is: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,RES
    INT 21H
    
    ADD BL,BH
   
    
    MOV AH,2
    MOV DL,BL
    SUB DL,'0'
    INT 21H
       
    
    MAIN ENDP
END MAIN