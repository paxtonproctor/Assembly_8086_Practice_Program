; Paxton Proctor
; 11/16/2021
;  a program that copies element 0 of record A into element 2
; of record C by using the base relative-plus-index mode
; of addressing. This example FILE
; contains four records and each record contains 10 elements.
; Notice how the THIS BYTE
; statement is used to define the label FILE
; and RECA as the same memory location.


        .MODEL SMALL        ;Select small model
        .DATA               ;start of data segment

FILE    EQU     THIS BYTE   ;Assign FILE to this Byte
RECA    DB      10 DUP(?)   ;10 bytes for record A

RECB    DB      10 DUP(?)   ;10 bytes for record B

RECC    DB      10 DUP(?)   ;10 bytes for record C

RECD    DB      10 DUP(?)   ;10 bytes for record D

        .CODE               ;Start code segment
        .STARTUP            ;Start program

        MOV     BX,OFFSET   ;Address record A
        MOV     DI,0        ;Address element 0
        MOV     AL,FILE[BX+DI]  ;get data
        MOV     BX,OFFSET RECC  ;Address record C
        MOV     DI,2            ;Address element 2
        MOV     FILE[BX+DI],AL  ;Save data

        .EXIT               ;Exit to DOS
        END                 ;End of program