.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here


num1 DB ?  



.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                        
                            ; Task 04 Read an uppercase letter (omit error checking), and display it at the next position on the next line in lower case.



    MOV AH, 1
    INT 21H
    ADD AL, 20H     ; Convert to lowercase
    MOV BL, AL      ; Save lowercase character

    ; Move to start of next line
    MOV AH, 02H
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H


    MOV DL, BL
    MOV AH, 2
    INT 21H



;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
