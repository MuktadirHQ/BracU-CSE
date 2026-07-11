.MODEL SMALL
 
.STACK 100H

.DATA

A DW 20
B DW 50
C DW ?

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
                   ; Task 06 Perform the following arithmetic instructions. 
                   ; A, B, C are three variables to be declared beforehand 
                   ; 1. A = B - A 
                   ; 2. A = -(A + 1) 
                   ; 3. C = A + (B + 1); use inc 
                   ; 4. A = B – (A – 1); use dec
                   
                   
                   
                   
                   
; --- Sub-task 1: A = B - A ---
MOV AX, B
SUB AX, A
MOV A, AX                        
MOV AX, A

; --- Sub-task 2: A = -(A + 1) ---
MOV AX, A
INC AX
NEG AX
MOV A, AX

; --- Sub-task 3: C = A + (B + 1); use INC ---
MOV BX, B
INC BX
MOV AX, A
ADD AX, BX
MOV CX, C
MOV C, AX 

; --- Sub-task 4: A = B - (A - 1); use DEC ---
MOV AX, A
DEC AX
MOV BX, B 
SUB BX, AX
MOV AX, BX




 

;exit to DOS
;MOV AX, 4C00H              
INT 21H
MAIN ENDP
    END MAIN
