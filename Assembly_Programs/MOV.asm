; Paxton Proctor
; 11/16/2021
; This program is just showing how the mov command works

.MODEL TINY     ;Choose single segment model

.CODE           ;Start of code segment
.STARTUP        ;Start of program

    MOV     AX,0    ;Place 0000H into AX
    MOV     BX,0    ;Place 0000H into BX
    MOV     CX,0    ;Place 0000H into CX

    MOV     SI,AX   ;Copy AX into SI
    MOV     DI,AX   ;Copy AX into DI
    MOV     BP,AX   ;Copy AX into BP

.EXIT               ;Exit to DOS
END                 ;End of program