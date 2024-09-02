
 mov AH,1
 Int 21H
 mov BL,Al
 mov AH,1
 Int 21H
 Add AL,BL
 mov AH,2
 mov DL,AL
 Sub DL,'0'
 Int 21H  
    
    
