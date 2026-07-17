.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

box DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10
    DB "**********", 13, 10, "$"


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                            ; Task 08 Write a program to display a 10 x 10 solid box of asterisks. 
                            ; HINT: Declare a string in the data segment that specifies the box, and display it with INT 21h, function 9h
                            

LEA DX, box
MOV AH, 9
INT 21H

 

 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
