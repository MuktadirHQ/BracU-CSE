.MODEL SMALL
.STACK 100H
.DATA
                    ; declare variables here      
                    
X DW 13
Y DW 5
Z DW 10


.CODE
MAIN PROC

                    ; initialize DS

MOV AX,@DATA
MOV DS,AX
                    ; Task 07 : Perform the following arithmetic operations 
                    ; 1. X * Y 
                    ; 2. X / Y 
                    ; 3. X * Y / Z
                   
                   
                   
                   
                   
; --- Sub-task 1. X * Y ---
MOV AX, X
MUL Y

; --- Sub-task 2. X / Y ---
MOV AX, X
DIV Y

; --- Sub-task 3. X * Y / Z ---
MOV AX, X
MUL Y
DIV Z
 

;exit to DOS
;MOV AX, 4C00H              
INT 21H
MAIN ENDP
    END MAIN
