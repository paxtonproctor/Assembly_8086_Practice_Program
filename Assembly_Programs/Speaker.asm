; Paxton Proctor
; 11/16/2021
; A short program that clicks the speaker in the personal computer

        .MODEL TINY         ; SELECT TINY MODEL
        .CODE               ; START CODE SEGMENT
        .STARTUP            ; START PROGRAMS
            IN AL, 61H      ; READ I/O PORT 61H
            OR AL, 3        ; SET RIGHTMOST TWO BITS
            OUT 61H, AL     ; SPEAKER ON
            OUT CX, 8000H   ; LOAD DELAY COUNT
        L1:
            LOOP L1         ; TIME DELAY
            IN AL, 61H      ; SPEAKER OFF
            AND AL,0FCH
            OUT 61H,AL
        .EXIT
        END

