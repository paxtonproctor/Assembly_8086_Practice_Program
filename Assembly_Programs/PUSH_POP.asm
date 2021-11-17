; Paxton Proctor
; 11/16/2021
; lists a short program that pushes the
; contents of AX, BX, and CX onto the stack.
; The first POP retrieves the value that
; was pushed onto the stack from CX and places it into AX. The
; second POP places the original
; value of BX into CX. The last POP places the value of AX into BX

    .MODEL TINY     ; select tiny model
    .CODE           ; start code segment
    .STARTUP        ; start program
    MOV     AX,1000H    ; load test data
    MOV     BX,2000H
    MOV     CX,3000H

    PUSH    AX      ; 1000H to stack
    PUSH    BX      ; 2000H to stack
    PUSH    CX      ; 3000H to stack

    POP     AX      ; 3000H to AX
    POP     BX      ; 2000H to BX
    POP     CX      ; 1000H to CX
    .EXIT           ; Exit to DOS
    END             ; End program