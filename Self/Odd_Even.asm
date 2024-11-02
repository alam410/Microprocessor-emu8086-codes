.MODEL SMALL
.STACK 100H
.DATA
NEWL DB 10,13,'$'
oddly DB "ODD$"
evenly DB "EVEN$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
        
    MOV AH,1
    INT 21H
    MOV BH,AL  

    CMP BH,30h
    JE EVEN
    
    CMP BH,32h
    JE EVEN
    
    CMP BH,34h
    JE EVEN
    
    CMP BH,36h
    JE EVEN
    
    CMP BH,38h
    JE EVEN
    
    CMP BH,58
    JE EVEN  
    
ODD:
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,oddly    
    INT 21H
    JMP EXIT
    


EVEN:
    MOV AH,9
    LEA DX,NEWL
    INT 21H
    
    LEA DX,evenly    
    INT 21H
EXIT:   
    MAIN ENDP
END MAIN


