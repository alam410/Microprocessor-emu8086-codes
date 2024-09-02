.model small
.stack 100h
.data
nextln db 10,13,'$'
msg dw "Enter 1st Digit:$"
msg2 dw "Enter 2nd Digit:$"
result dw "The result is:$"
.code
main proc
    
    mov ax,@data ;loading starting address of data segment in AX register
    mov ds,ax ;showing ds the location of data segment so that it could find the variables
    
    mov ah,9 ;string output
    lea dx,msg ;lea is used for loading the first element of msg
    int 21h   
    
    mov ah,1
    int 21h
    
    mov bl,al ; storing the input value to bl so that it don't override 
    
    mov ah,9
    lea dx,nextln
    int 21h
    
    lea dx,msg2 ;showing the nextline
    int 21h
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    mov ah,9
    lea dx,nextln
    int 21h
    
    lea dx,result
    int 21h
    
    sub bl,bh;subtracting the value
    add bl,'0';
    
    mov ah,2 ;for single character output
    mov dl,bl;
    int 21h
    
    
    
    
    
    main endp
end main
