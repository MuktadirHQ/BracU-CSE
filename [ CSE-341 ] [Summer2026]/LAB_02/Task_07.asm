.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

msg1 DB "ENTER A HEX DIGIT (A-F): $"
msg2 DB "IN DECIMAL IT IS: $" 


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                            ; Task 07 Write a program to read one of the hex digits A-F, and display it on the next line in decimal.
                            
                            
                            
LEA DX, msg1
MOV AH, 9
INT 21H

MOV AH, 1
INT 21H
 

MOV BL, AL
SUB BL, 11H


MOV AH, 2
MOV DL, 13
INT 21H  
MOV AH, 2
MOV DL, 10
INT 21H


LEA DX, msg2
MOV AH, 9
INT 21H

MOV DL, 0031H
MOV AH, 2
INT 21H

MOV DL, BL
MOV AH, 2
INT 21H 


 

 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
