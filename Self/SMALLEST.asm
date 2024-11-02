.MODEL SMALL
.STACK 100H
.DATA
NEWL DB 10,13,'$'
MSG DB "Enter the first value: $"
MSG2 DB "Enter the second value: $"
MSG3 DB "Enter the third value: $"
SMALL DB "The smallest value: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH, '0'  ; Convert ASCII to integer for first input

    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    SUB CH, '0'  ; Convert ASCII to integer for second input

    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,MSG3
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV DH,AL   
    SUB DH, '0'  ; Convert ASCII to integer for third input
   
    ; Comparisons
    CMP BH, CH 
    JL 2NDA_CMP  ; a < b

    ; a >= b
    CMP CH, DH    
    JL SMALLEST_B  ; b < c
    JMP SMALLEST_A ; a is smallest

2NDA_CMP:
    CMP BH, DH  ; Compare a with c
    JL SMALLEST_A  ; a < c
    JMP SMALLEST_C  ; c is the smallest

SMALLEST_C:
    MOV AH,9
    LEA DX,NEWL
    INT 21H 
    
    LEA DX,SMALL
    INT 21H
    
    MOV AH,2
    MOV DL,DH
    INT 21H
    JMP EXIT
    
SMALLEST_B:
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,SMALL
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    JMP EXIT  

SMALLEST_A:
    MOV AH,9
    LEA DX,NEWL
    INT 21H 
    
    LEA DX,SMALL
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
EXIT:
    MAIN ENDP
END MAIN
