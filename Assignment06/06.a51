; Example program 04: 7-Segment LED scanned by Time 0
; Chin-Shiuh Shieh
; 2003-03-09
;
; Memory Allocation
LED_DATA   		EQU		30h     ;Data Byte to be displayed
NIBBLE  		EQU		00h     ;Bit for Nibble Control
; Pin Assignment
LED_PORT		EQU		P0
HIGH_NIBBLE		EQU		P2.1
LOW_NIBBLE		EQU		P2.0
BUTTON			EQU		P1.0
;
PROG	EQU		0000h
		ORG		PROG+0000h
		SJMP	START
;Interrupt Vector Table
		ORG		PROG+0003h
		LCALL	INT0_ISR
		RETI
		ORG		PROG+000Bh
		LCALL	T0_ISR
		RETI
		ORG		PROG+0013h
		LCALL	INT1_ISR
		RETI
		ORG		PROG+001Bh
		LCALL	T1_ISR
		RETI
		ORG		PROG+0023h
		LCALL	UART_ISR
		RETI
;
		ORG		PROG+0030h
START:
		MOV		LED_DATA,#00h
        MOV     TMOD,#00010001b	; Set Timer to work in Mode 1 (16-bit Timer)
        SETB	ET0				; Enable Timer 0 Interrupt
        SETB	EA				; Enable Interrupt
        SETB	TR0				; Start Timer 0
CHECK_BUTTON:
		JB		BUTTON,CHECK_BUTTON
		INC		LED_DATA
WAIT_BUTTON_RELEASE:
		JNB		BUTTON,WAIT_BUTTON_RELEASE
		SJMP	CHECK_BUTTON
;
INT0_ISR:
		RET
T0_ISR:
        MOV     TH0,#0FCh   ; Timer 0 Interrupt will be generated
        MOV     TL0,#018h   ; for every 1mS
        CPL     NIBBLE
        JB      NIBBLE,SHOW_HIGH
SHOW_LOW:
        SETB    HIGH_NIBBLE
        MOV     A,LED_DATA
        ANL     A,#0Fh
        MOV     DPTR,#FONT
        MOVC    A,@A+DPTR
        MOV     LED_PORT,A
        CLR     LOW_NIBBLE
        RET
SHOW_HIGH:
        SETB    LOW_NIBBLE
        MOV     A,LED_DATA
        SWAP    A
        ANL     A,#0Fh
        MOV     DPTR,#FONT
        MOVC    A,@A+DPTR
        MOV     LED_PORT,A
        CLR     HIGH_NIBBLE
        RET
FONT:   DB      0C0h,0F9h,0A4h,0B0h,099h,092h,082h,0F8h
        DB      080h,090h,088h,083h,0A7h,0A1h,086h,08Eh
INT1_ISR:
		RET
T1_ISR:
		RET
UART_ISR:
		RET
;
        END
