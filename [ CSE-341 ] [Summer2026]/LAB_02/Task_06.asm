.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

msg DB "ENTER THREE INITIALS: $" 

char1 DB ?
char2 DB ?
char3 DB ?   



.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
                        
                            ; Task 06 Write a program to: 
                            ; (a) prompt the user, 
                            ; (b) read first, middle, and last initials of a person's name, and then display them down the left margin.
 
 
 
                            ; a

LEA DX, msg
MOV AH, 9
INT 21H



                         
                            ; b
MOV AH, 1
INT 21H

MOV char1, AL

MOV AH, 1
INT 21H      

MOV char2, AL
 
MOV AH, 1
INT 21H

MOV char3, AL


MOV AH, 2
MOV DL, 13
INT 21H 
MOV AH, 2
MOV DL, 10
INT 21H


MOV DL, char1
MOV AH, 2
INT 21H


MOV AH, 2
MOV DL, 13
INT 21H 
MOV AH, 2
MOV DL, 10
INT 21H




MOV DL, char2
MOV AH, 2
INT 21H




MOV AH, 2
MOV DL, 13
INT 21H 
MOV AH, 2
MOV DL, 10
INT 21H 




MOV DL, char3
MOV AH, 2
INT 21H

 

;exit to DOS            
MOV AX,4C00H 
INT 21H

MAIN ENDP
    END MAIN
