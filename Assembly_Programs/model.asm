; Paxton Proctor
; 11/16/2021
; this program illistrates the use of models

        .MODEL SMALL        ; SELECT SMALL MODEL
        .STACK 100H         ; DEFINE STACK
        .DATA               ; START DATA SEGMENT

LISTA   DB      100 DUP(?)

LISTB   DB      100 DUP(?)

        .CODE               ; START CODE SEGMENT

HERE:   MOV     AX,@DATA    ; LOAD ES AND DS
        MOV     ES,AX       
        MOV     DS,AX       
        CLD                 ; MOVE DATA
        MOV     SI,OFFSET LISTA
        MOV     DI,OFFSET LISTB
        MOV     CX,100
        REP     MOVSB

        .EXIT 0             ; EXIT TO DOS
        END HERE