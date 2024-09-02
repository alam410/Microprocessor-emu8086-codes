.model small
.stack 100h
.data
nextln db 10,13,'$'
msg dw "Enter the letter:$"
result dw "The lowercase letter:$"
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
    add bl,32
    
    mov ah,9
    lea dx,nextln
    int 21h
    
    lea dx,result
    int 21h
    
   
    
    mov ah,2 ;for single character output
    mov dl,bl;
    int 21h
    
    
    
    
    
    main endp
end main
