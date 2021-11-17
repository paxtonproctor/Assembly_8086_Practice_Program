; Paxton Proctor
; 11/16/2021
; a short program that loads SI with the address of DATA1 and DI with
; the address of DATA2. It then exchanges the contents of these memory
; locations. Note that the LEA and MOV with OFFSET instructions are both
; the same length (3 bytes).

        .MODEL  SMALL       ; select small model
        .DATA               ; start data segment
DATA1   DW      2000H       ; define DATA1
DATA2   DW      3000H       ; define DATA2
        .CODE               ; start code segment
        .STARTUP            ; start program
        LEA     SI,DATA1    ; address DATA1 with SI
        MOV     DI,OFFSET DATA2     ; address data2 with DI
        MOV     BX,[SI]     ; exchange DATA1 with DATA2
        MOV     CX,[DI]
        MOV     [SI],CX
        MOV     [DI],BX
        .EXIT
        END