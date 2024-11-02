.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    

    MOV CX, 50         
    MOV AX, 0          
    MOV BX, 1          

SUM_LOOP:
    ADD AX, BX         
    ADD BX, 4          
    LOOP SUM_LOOP      

    MOV DX, AX         

MAIN ENDP
END MAIN
