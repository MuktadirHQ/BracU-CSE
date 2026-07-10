.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
                   ; Task 05 Swap two numbers using ADD/SUB instructions only     


MOV AX, 10
MOV BX, 20

                   
                   
SUB CX, CX ; 0
ADD CX, AX ; 10

SUB AX, AX ; 0
ADD AX, BX ; 20

SUB BX, BX ; 0
ADD BX, CX ; 10


 

;exit to DOS
               
INT 21H

MAIN ENDP
    END MAIN
