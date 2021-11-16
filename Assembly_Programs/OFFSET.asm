; Paxton Proctor
; 11/16/2021
; This program is just shows the offset directive. When
; the OFFSET directive is used with the MOV instruction, 
; the assembler calculates the offset address
; and then uses a MOV immediate instruction to load the address
; in the specified 16-bit register.

    .MODEL SMALL        ;Select small model
    .DATA

DATAS DW 50 DUP(?)      ;Setup array of 50 words

    .CODE               ;Start code segment
    .STARTUP            ;Start program

    MOV     AX,0        ;Place 0000H into AX
    MOV     ES,AX       ;Address segment 0000 with ES
    MOV     BX,OFFSET   DATAS   ;address DATAS array with BX
    MOV     CX,50       ;Load counter with 50
AGAIN:
    MOV     AX,ES:[046CH]   ;Get clock value
    MOV     [BX],AX     ;Save clock value in DATAS
    INC     BX          ;Increment BX to next element
    INC     BX          ;Increment BX to next element
    LOOP    AGAIN       ;Repeat 50 times

    .EXIT               ;Exit to DOS
    END                 ;End of program
