.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

promt1 DB "Enter First Digit (0-9): $"
promt2 DB "Enter Second Digit (0-9): $"
msgADD DB "Addition: $"
msgSUB DB "Subtraction: $"
msgMUL DB "Multiplication: $"
msgDIV DB "Division (Quotient): $"

num1 DB ? 
num2 DB ? 



.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                        
                        ; Task 02 Perform addition/subtraction/division/multiplication by taking inputs from the user. 
                        ; Note: Display appropriate messages when taking input and showing the output.
                                                                                                      
 
 LEA DX, promt1    ; promt - 1
 MOV AH, 9
 INT 21H 
 
 
 MOV AH, 1         ; Input - 1
 INT 21H
 SUB AL, 30H
 MOV num1, AL
 
 
 MOV AH, 2
 MOV DL, 10        ; New Line
 INT 21H 
 MOV AH, 2
 MOV DL, 13
 INT 21H
  
        
 LEA DX, promt2    ; promt - 2
 MOV AH, 9
 INT 21H
         
 
 MOV AH, 1         ; Input - 2
 INT 21H
 SUB AL, 30H 
 MOV num2, AL
                   
 
 
                  ;===========
                  ; ADDITION ;
                  ;===========

 MOV AH, 2
 MOV DL, 10        ; New Line
 INT 21H 
 MOV AH, 2
 MOV DL, 13
 INT 21H 
 
 LEA DX, msgADD
 MOV AH, 9
 INT 21H 
 
 MOV BL, num1       
 ADD BL, num2
 ADD BL, 30H
 MOV DL, BL
 
 
 MOV AH, 2       ; Output   
 INT 21H
                         
                         
                  ;==============
                  ; SUBTRACTION ;
                  ;==============      
    
 
 MOV AH, 2
 MOV DL, 10        ; New Line
 INT 21H 
 MOV AH, 2
 MOV DL, 13
 INT 21H 
 
 LEA DX, msgSUB
 MOV AH, 9
 INT 21H 
 
 MOV BL, num1
 SUB BL, num2 
 ADD BL, 30H
 MOV DL, BL
 
 
 MOV AH, 2       ; Output   
 INT 21H
              
              
                
                
                
                
                ;===============
                ;Multiplication;
                ;=============== 


 MOV AH, 2
 MOV DL, 10        ; New Line
 INT 21H 
 MOV AH, 2
 MOV DL, 13
 INT 21H 
 
 LEA DX, msgMUL
 MOV AH, 9
 INT 21H 
 
 MOV AL, num1
 MUL num2
  
 ADD AL, 30H
 
 
 
 
 MOV DL, AL
 
 
 MOV AH, 2       ; Output   
 INT 21H



                
                ;===============
                ;   Division   ;
                ;=============== 


 MOV AH, 2
 MOV DL, 10        ; New Line
 INT 21H 
 MOV AH, 2
 MOV DL, 13
 INT 21H 
 
 LEA DX, msgDIV
 MOV AH, 9
 INT 21H 
 
 
   
 MOV AH, 00H
 MOV AL, num1
 DIV num2
 
 ADD AL, 30H
 
 
 
 
 MOV DL, AL
 
 
 MOV AH, 2       ; Output   
 INT 21H
 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
