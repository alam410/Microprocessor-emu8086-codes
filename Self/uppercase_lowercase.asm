.MODEL SMALL
.STACK 100H
.DATA
NEWL DB 10,13,'$'
upper DB "Uppercase$"
lower DB "Lowercase$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
        
    MOV AH,1
    INT 21H
    MOV BH,AL  
    
    CMP BH,61H
    JGE L
    
    CMP BH,41H
    JGE U
L:
    CMP BH,7BH
    JL  Lowercase
U:
    CMP BH,5BH
    JL  Uppercase
Uppercase:
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    LEA DX,upper
    INT 21H
    jmp EXIT
Lowercase:
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    LEA DX,lower
    INT 21H    
EXIT:       
    MAIN ENDP
END MAIN


