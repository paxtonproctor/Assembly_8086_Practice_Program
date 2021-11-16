; Paxton Proctor
; 11/16/2021
; This program is just shows the offset directive. When
; the OFFSET directive is used with the MOV instruction

    .MODEL SMALL        ;Select small model
    .DATA               ;start of data segment

ARRAT DB 16 DUP(?)      ;Setup array of 16 bytes

    DB  29H             ;element 10H
    DB  20 dup(?)

    .CODE               ;Start code segment
    .STARTUP            ;Start program

    MOV     BX,OFFSET array     ;Address ARRAY
    MOV     DI,10H      ;Address element 10H
    MOV     AL,[BX+DI]  ;get element 10H
    MOV     DI,20H      ;Address element 20H
    MOV     [BX+DI],AL  ;Save in element 20H

    .EXIT               ;Exit to DOS
    END                 ;End of program