; Paxton Proctor
; 11/19/2021

            .MODEL SMALL        ;SELECT SMALL MODEL
            .386                ;SELECT 80386 MICROPROCESSOR
            .DATA               ;START DATA SEGMENT
SADDR       DD  ?               ;OLD STACK ADDRESS
SAREA       DW  1000H DUP(?)    ;NEW STACK AREA

STOP        EQU THIS word       ;DEFINE TOP OF NEW STACK
            .CODE               ;START CODE SEGMENT
            .STARTUP            ;START PROGRAM
            CLI                 ;DISABLE INTERRUPTS
            MOV AX,SP           ;SAVE OLD SP
            MOV WORD PTR SADDR,AX
            MOV AX,SS           ;SAVE OLD SS
            MOV WORD PTR SADDR+2,AX
            MOV AX,DS           ;LOAD NEW SS
            MOV SS,AX           
            MOV AX,OFFSET STOP  ;LOAD NEW SP
            MOV SP,AX           
            STI                 ;ENABLE INTERRUPTS

            MOV AX,AX           ;DO SOME DUMMY INSTRUCTIONS
            MOV AX,AX           
            LSS SP,SADDR        ;GET OLD STACK
            .EXIT               ;EXIT TO DOS
            END