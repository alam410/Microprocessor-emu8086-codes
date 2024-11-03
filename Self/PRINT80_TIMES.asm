.MODEL SMALL
.STACK 100H
.DATA
    
.CODE
MAIN PROC
    Mov ah,1
    int 21h
    mov bh,al
    
    MOV CX,0
    MOV DX,80
    
LOOP_START:
    MOV AH,2
    MOV DL,BH
    INT 21H
    ADD CX,1
    CMP CX,DX 
    JG LOOP_END
    JMP LOOP_START

LOOP_END:

MAIN ENDP
END MAIN
