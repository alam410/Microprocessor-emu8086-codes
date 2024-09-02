
 mov AH,1
 Int 21H

 Sub Al,17 
 Mov Bl,AL
 mov AH,2
 Mov DL,'1' 
 Int 21H
 Mov DL,BL 
 Int 21H  
 
    
    
