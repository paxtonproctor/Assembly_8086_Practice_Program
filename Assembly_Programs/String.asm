; Paxton Proctor
; 11/12/2021
; This program prints a string

.MODEL SMALL
.STACK 100H
.DATA

; Here is where you write your string
; DB means Define byte size variable
; DW define word size(16 bits)
; DD define double word size(32 bits)
STRING DB 'War, huh, yeah...What is it good for?', '$'

.CODE
; it decrements the stack pointer by 2 and copies the contents of CS register to the stack
MAIN FAR
    MOV AX,@DATA
    MOV DS,AX

    ; load address of the string
    LEA DX,STRING

    ; Output the string
    ; loaded in dx
    MOV AH,09H
    INT 21H

    ; interrupt to exit
    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN