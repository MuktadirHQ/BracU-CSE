.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
 
msg1 DB "THE SUM OF $" 
msg2 DB " AND $"
result DB " IS $"


num1 DB ?
num2 DB ?
num3 DB ?   



.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                        
                           ; Task 05 Write a program to: 
                           ; (a) display a "?" 
                           ; (b) read two decimal digits whose sum is less than 10, 
                           ; (c) display them and their sum on the next line, with an appropriate message.


                           ; a

 MOV DL, 003FH
 MOV AH, 2
 INT 21H
 
             
        
                           ; b
                           
 MOV AH, 1
 INT 21H
 MOV num1, AL  
 SUB AL, 30H
 
 MOV BL, AL
 
 MOV AH, 1
 INT 21H
 MOV num2, AL
 SUB AL, 30H
 
 ADD BL, AL
 
 MOV DL, BL
 ADD DL, 30H
 
 MOV num3, DL

                           ; c
     
 MOV AH, 2
 MOV DL, 13
 INT 21H
 MOV AH, 2
 MOV DL, 10
 INT 21H            
 
 
 LEA DX, msg1
 MOV AH, 9
 INT 21H
 
 MOV DL, num1
 
 MOV AH, 2
 INT 21H
 
 

 
 LEA DX, msg2
 MOV AH, 9
 INT 21H 
  
 MOV DL, num2
 
 MOV AH, 2
 INT 21H

  
 
 
 LEA DX, result 
 MOV AH, 9
 INT 21H 
 
 MOV DL, num3
 MOV AH, 2
 INT 21H
 
 
 
 
 
 
 
 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
