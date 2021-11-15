; Paxton Proctor
; 11/12/2021
; This program adds and subtracts 32 bit integers
INCLUDE Irvine32.inc

.MODEL SMALL
.STACK 100H
.DATA
val1 DWORD 10000h
val2 DWORD 40000h
val3 DWORD 20000h
finalVal DWORD?

.CODE
MAIN PROC

    mov     ax,@data
    mov     ds,ax

    mov     eax,val1    ; start with 10000h
    add     eax,val2    ; add 40000h
    sub     eax,val3    ; subtract 20000h
    mov     finalVal,eax    ; store the result(30000h)
    call    DumpRegs    ; display the registers
    exit
main ENDP
END main
