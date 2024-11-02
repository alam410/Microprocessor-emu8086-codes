
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV CL,65
LOOP:
    MOV AH,2
    MOV DL,CL
    INT  21H
    
    INC CL
    CMP CL,91
    
    JL LOOP  
    
    MOV AH,02H
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
MOV BL,97
LOOP2:
    MOV AH,2
    MOV DL,BL
    INT  21H
    
    INC BL
    CMP BL,123
    
    JL LOOP2 
    
    
        MOV AH,02H
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
MOV BH,48
LOOP3:
    MOV AH,2
    MOV DL,BH
    INT  21H
    
    INC BH
    CMP BH,58
    
    JL LOOP3
    
           
 




