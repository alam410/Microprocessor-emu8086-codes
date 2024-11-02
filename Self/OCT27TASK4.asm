.MODEL SMALL
.STACK 100H
.DATA
    CHAR DB ?
.CODE
MAIN PROC
   
    MOV AX, @DATA
    MOV DS, AX

    
    MOV AH, 1          
    INT 21H           
    MOV CHAR, AL       
    
    MOV AH, 2          
    MOV DL, 0DH        
    INT 21H
    MOV DL, 0AH       
    INT 21H

 
    MOV CX, 80       
DISPLAY_LOOP:
    
    MOV AH, 2          
    MOV DL, CHAR      
    INT 21H
    MOV AH, 2          
    MOV DL, 0DH        
    INT 21H
    MOV DL, 0AH       
    INT 21H           
    LOOP DISPLAY_LOOP

           
    
MAIN ENDP
END MAIN
