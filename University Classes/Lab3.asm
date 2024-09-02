
 mov AH,1
 Int 21H

 ADD Al,32
 mov AH,2
 Mov DL,AL 
 Int 21H  
 
 Mov AH,1
 Int 21H
 Sub Al,32
 Mov Ah,2
 Mov Dl,Al
 Int 21H
    
    
