.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here


promt1 DB "Enter First two digit: $"
promt2 DB 13, 10, "Enter Second two digit: $"
res DB 13, 10, "SUM: $"

num1 DB ?
num2 DB ?
num3 DB ? 
num4 DB ? 



.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
 
                               ; Task 09 Write a program that takes two multi digit decimal numbers as input and performs ADD operations between them.
                               
    
LEA DX, promt1
MOV AH, 9                 ; promt 1
INT 21H


MOV AH, 1
INT 21H                   ; input, e.g : 1
SUB AL, 30H
MOV num1, AL



MOV AH, 1
INT 21H                   ; input, e.g : 2
SUB AL, 30H
MOV num2, AL



MOV AL, num1
MOV BL, 10
MUL BL
ADD AL, num2
MOV num1, AL              ; num1 = 12



LEA DX, promt2
MOV AH, 9                 ; promt 2
INT 21H


MOV AH, 1
INT 21H                   ; input, e.g : 3
SUB AL, 30H
MOV num3, AL



MOV AH, 1
INT 21H                   ; input, e.g : 4
SUB AL, 30H
MOV num4, AL



MOV AL, num3
MOV BL, 10
MUL BL
ADD AL, num4
MOV num4, AL              ; num4 = 34





LEA DX, res
MOV AH, 9
INT 21H




MOV AL, num1              ; 1234 = in 1234H
ADD AL, num4
MOV AH, 0




MOV BL, 100
DIV BL                    ; AH, remainder, AL Quotient
MOV num1, AH

MOV DL, AL
ADD DL, 30H
MOV AH, 2                 ; first digit
INT 21H


MOV AL, num1
MOV AH, 0
MOV BL, 10
DIV BL
MOV num1, AH              ; AH remainder, AL Quotient


MOV DL, AL
ADD DL, 30H               ; Second Digit
MOV AH, 2
INT 21H
                                       
                                       
 
MOV AL, num1
MOV DL, AL
ADD DL, 30H
MOV AH, 2                 ; third digit
INT 21H                                      

                                












 
 
 
 
 
 
                        
                           
;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
