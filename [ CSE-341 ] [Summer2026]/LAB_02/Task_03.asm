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
                        
                        
                        
                        ; Write instructions to do the following. 
                        ; a. Read a character, and display it at the next position on the same line. 
                        ; b. Read an uppercase letter (omit error checking), and display it at the next position on the same line in lower case. 
                        
                        ; a
   
MOV AH, 1
INT 21H

MOV DL, AL

MOV AH, 2
INT 21H                 
                        
                        ; b
                        
MOV AX, 0000H


MOV AH, 1
INT 21H
ADD AL, 20H 

MOV DL, AL

MOV AH, 2
INT 21H


                                                                                                      


;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
