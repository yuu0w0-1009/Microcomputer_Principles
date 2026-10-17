; Example Program 03: External Counter
; Chin-Shiuh Shieh
; 2003-03-08
;
; Pin Assignment
LED_PORT	EQU		P2
;
PROG	EQU		0000h
		ORG		PROG+0000h
		JMP		START
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
START:	MOV		TH0,#00h
		MOV		TL0,#00h
		MOV		TMOD,#00000101b	; Set Timer/Counter 0 to be 16-bit External Counter
		SETB	TR0				; Turn on Counter 0
LOOP:	MOV		A,TL0
		CPL		A
		MOV		LED_PORT,A
		SJMP	LOOP
;
INT0_ISR:
		RET
T0_ISR:
		RET
INT1_ISR:
		RET
T1_ISR:
		RET
UART_ISR:
		RET
;
	END