.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX


MOV AX, 10
MOV BX, 20


MOV AX, BX

 

;exit to DOS
               
INT 21H

MAIN ENDP
    END MAIN
