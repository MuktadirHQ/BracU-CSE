.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here


msg DB "Please insert a character: $" 
result DB "Your Output is : $"


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                        
                        ; Task 01 Take a character input and display it. Display the message "Please insert a character: " before taking an input

LEA DX, msg
MOV AH, 9
INT 21H

MOV AH, 1   ; AL
INT 21H 

MOV BL, AL


MOV AH, 2
MOV DL, 10
INT 21H
MOV AH, 2
MOV DL, 13
INT 21H


LEA DX, result
MOV AH, 9
INT 21H

MOV DL, BL
MOV AH, 2
INT 21H
 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
