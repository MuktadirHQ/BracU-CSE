.MODEL SMALL
.STACK 100H
.DATA
                    ; declare variables here      
                    


.CODE
MAIN PROC

                    ; initialize DS

MOV AX,@DATA
MOV DS,AX
                    ; Task 08 : Perform the following arithmetic operations 
                    ; 1. 36DF * AF 
                    ; 2. F4D5 / C9A5
                    ; 3. CA92 * BAF9
                    ; 4. C2A2 * ABCD / BED  
                    
                   
                   
                   
                   
; ==========================================
; Sub-task 1. 36DF * AF
; ==========================================
MOV AX, 36DFh
MOV BX, 00AFh      ; '0AFh' works, but writing '00AFh' helps visualize the 16-bit padding
MUL BX             ; DX:AX = AX * BX


; ==========================================
; Sub-task 2. F4D5 / C9A5
; ==========================================
MOV AX, 0F4D5h     ; Leading '0' because it starts with 'F'
MOV DX, 0          ; CRITICAL: Must clear DX before 16-bit division!
MOV BX, 0C9A5h     ; Leading '0' because it starts with 'C'
DIV BX             ; AX = Quotient, DX = Remainder
 
 
; ==========================================
; Sub-task 3. CA92 * BAF9
; ==========================================
MOV AX, 0CA92H
MOV BX, 0BAF9H
MUL BX             ; Massive 32-bit product saved in DX:AX
       
; ==========================================
; Sub-task 4. C2A2 * ABCD / BED
; ==========================================
MOV DX, 0
MOV AX, 0C2A2H
MOV BX, 00BEDH
MUL BX             ; 32-bit product safely sits in DX:AX

MOV CX, 0BEDH
DIV CX             ; Divide the exact DX:AX pair by 0BEDh





;exit to DOS
MOV AX, 4C00H       
INT 21H
MAIN ENDP
    END MAIN
