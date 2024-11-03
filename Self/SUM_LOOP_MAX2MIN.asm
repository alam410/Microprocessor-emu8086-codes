.MODEL SMALL
.STACK 100H
.DATA
.MODEL
.CODE
MAIN PROC
    MOV AX,0
    MOV CX,100
    MOV DX,5
    
    LOOP:
    ADD AX,CX
    SUB CX,5
    CMP CX,DX
    JL LOOP_END
    JMP LOOP
    
    LOOP_END:
    
