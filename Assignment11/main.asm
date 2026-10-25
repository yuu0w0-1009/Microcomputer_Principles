;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_ASCII
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _uart_i2s_PARM_2
	.globl _uart_initialize
	.globl _uart_put_char
	.globl _uart_get_char
	.globl _uart_get_char_echo
	.globl _uart_put_string
	.globl _uart_get_string
	.globl _uart_i2s
	.globl _uart_s2i
	.globl _uart_put_integer
	.globl _uart_get_integer
	.globl _uart_put_byte
	.globl _uart_put_word
	.globl _uart_get_nibble
	.globl _uart_get_byte
	.globl _uart_get_word
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_uart_i2s_PARM_2:
	.ds 3
_uart_i2s_i_10000_25:
	.ds 2
_uart_i2s_sign_10000_26:
	.ds 1
_uart_i2s_len_10000_26:
	.ds 1
_uart_i2s_p_10000_26:
	.ds 3
_uart_i2s_sloc0_1_0:
	.ds 1
_uart_i2s_sloc1_1_0:
	.ds 2
_uart_i2s_sloc2_1_0:
	.ds 3
_uart_s2i_sign_10000_35:
	.ds 1
_uart_s2i_sloc0_1_0:
	.ds 2
_uart_put_integer_s_10000_41:
	.ds 7
_uart_get_integer_s_10000_42:
	.ds 7
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
__sdcc_program_exit:
	sjmp	.
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_initialize'
;------------------------------------------------------------
;	uart.c:24: void uart_initialize(void)
;	-----------------------------------------
;	 function uart_initialize
;	-----------------------------------------
_uart_initialize:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	uart.c:26: PCON&=0x7F;		// Clear SMOD of PCON, No Double Baud Rate
	anl	_PCON,#0x7f
;	uart.c:27: TMOD&=0x2F;TMOD|=0x20;	// Set Timer1 to Mode 2 (8-bit auto reload) for Baud Rate Generation
	anl	_TMOD,#0x2f
	orl	_TMOD,#0x20
;	uart.c:28: TH1=0xFD;		// Set Baud Rate to 9600 bps for 11.0592M Hz
	mov	_TH1,#0xfd
;	uart.c:29: SM0=0;SM1=1;		// Set UART to Mode 1 (8-bit UART)
;	assignBit
	clr	_SM0
;	assignBit
	setb	_SM1
;	uart.c:30: REN=1;			// Set REN of SCON to Enable UART Receive
;	assignBit
	setb	_REN
;	uart.c:31: TR1=1;			// Set TR1 of TCON to Start Timer1
;	assignBit
	setb	_TR1
;	uart.c:32: TI=0;RI=0;		// Clear TI/RI of SCON to Get Ready to Send/Receive
;	assignBit
	clr	_TI
;	assignBit
	clr	_RI
;	uart.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_char'
;------------------------------------------------------------
;c             Allocated to registers 
;------------------------------------------------------------
;	uart.c:35: void uart_put_char(char c)	// Put Character to UART
;	-----------------------------------------
;	 function uart_put_char
;	-----------------------------------------
_uart_put_char:
	mov	_SBUF,dpl
;	uart.c:38: while(TI==0);TI=0;
00101$:
;	assignBit
	jbc	_TI,00120$
	sjmp	00101$
00120$:
;	uart.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char'
;------------------------------------------------------------
;	uart.c:41: char uart_get_char(void)	// Get Character from UART
;	-----------------------------------------
;	 function uart_get_char
;	-----------------------------------------
_uart_get_char:
;	uart.c:43: while(RI==0);RI=0;
00101$:
;	assignBit
	jbc	_RI,00120$
	sjmp	00101$
00120$:
;	uart.c:44: return SBUF;
	mov	dpl, _SBUF
;	uart.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_char_echo'
;------------------------------------------------------------
;	uart.c:47: char uart_get_char_echo(void)	// Get Character from UART with Echo, Require uart_put_char()
;	-----------------------------------------
;	 function uart_get_char_echo
;	-----------------------------------------
_uart_get_char_echo:
;	uart.c:49: while(RI==0);RI=0;
00101$:
;	assignBit
	jbc	_RI,00120$
	sjmp	00101$
00120$:
;	uart.c:50: uart_put_char(SBUF);
	mov	dpl, _SBUF
	lcall	_uart_put_char
;	uart.c:51: return SBUF;
	mov	dpl, _SBUF
;	uart.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_string'
;------------------------------------------------------------
;s             Allocated to registers 
;------------------------------------------------------------
;	uart.c:54: void uart_put_string(char *s)	// Put String to UART, Require uart_put_char()
;	-----------------------------------------
;	 function uart_put_string
;	-----------------------------------------
_uart_put_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	uart.c:56: while(*s!=0){uart_put_char(*s);s++;}
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	dpl, r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_put_char
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
;	uart.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_string'
;------------------------------------------------------------
;s             Allocated to registers 
;------------------------------------------------------------
;	uart.c:59: void uart_get_string(char *s)	// Get String from UART, Require uart_get_char_echo()
;	-----------------------------------------
;	 function uart_get_string
;	-----------------------------------------
_uart_get_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	uart.c:61: while(((*s)=uart_get_char_echo())!=13)s++;
00101$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_get_char_echo
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	cjne	r4,#0x0d,00121$
	sjmp	00103$
00121$:
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00103$:
;	uart.c:62: *s=0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	uart.c:63: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_i2s'
;------------------------------------------------------------
;s             Allocated with name '_uart_i2s_PARM_2'
;i             Allocated with name '_uart_i2s_i_10000_25'
;sign          Allocated with name '_uart_i2s_sign_10000_26'
;len           Allocated with name '_uart_i2s_len_10000_26'
;p             Allocated with name '_uart_i2s_p_10000_26'
;sloc0         Allocated with name '_uart_i2s_sloc0_1_0'
;sloc1         Allocated with name '_uart_i2s_sloc1_1_0'
;sloc2         Allocated with name '_uart_i2s_sloc2_1_0'
;------------------------------------------------------------
;	uart.c:65: void uart_i2s(int i,char *s)	// Convert Integer to String
;	-----------------------------------------
;	 function uart_i2s
;	-----------------------------------------
_uart_i2s:
	mov	_uart_i2s_i_10000_25,dpl
	mov	(_uart_i2s_i_10000_25 + 1),dph
;	uart.c:68: sign='+';len=0;p=s;
	mov	_uart_i2s_sign_10000_26,#0x2b
	mov	_uart_i2s_p_10000_26,_uart_i2s_PARM_2
	mov	(_uart_i2s_p_10000_26 + 1),(_uart_i2s_PARM_2 + 1)
	mov	(_uart_i2s_p_10000_26 + 2),(_uart_i2s_PARM_2 + 2)
;	uart.c:69: if(i<0){sign='-';i=-i;}
	mov	a,(_uart_i2s_i_10000_25 + 1)
	jnb	acc.7,00121$
	mov	_uart_i2s_sign_10000_26,#0x2d
	clr	c
	clr	a
	subb	a,_uart_i2s_i_10000_25
	mov	_uart_i2s_i_10000_25,a
	clr	a
	subb	a,(_uart_i2s_i_10000_25 + 1)
	mov	(_uart_i2s_i_10000_25 + 1),a
;	uart.c:70: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
00121$:
	mov	r0,_uart_i2s_p_10000_26
	mov	r1,(_uart_i2s_p_10000_26 + 1)
	mov	r5,(_uart_i2s_p_10000_26 + 2)
	mov	_uart_i2s_sloc0_1_0,#0x00
00103$:
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, _uart_i2s_i_10000_25
	mov	dph, (_uart_i2s_i_10000_25 + 1)
	push	ar5
	push	ar1
	push	ar0
	lcall	__modsint
	mov	r6, dpl
	pop	ar0
	pop	ar1
	pop	ar5
	mov	a,#0x30
	add	a, r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	inc	_uart_i2s_sloc0_1_0
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, _uart_i2s_i_10000_25
	mov	dph, (_uart_i2s_i_10000_25 + 1)
	push	ar5
	push	ar1
	push	ar0
	lcall	__divsint
	mov	_uart_i2s_i_10000_25,dpl
	mov	(_uart_i2s_i_10000_25 + 1),dph
	pop	ar0
	pop	ar1
	pop	ar5
	mov	a,_uart_i2s_i_10000_25
	orl	a,(_uart_i2s_i_10000_25 + 1)
	jnz	00103$
;	uart.c:71: if(sign=='-'){*s='-';s++;len++;}
	mov	_uart_i2s_len_10000_26,_uart_i2s_sloc0_1_0
	mov	a,#0x2d
	cjne	a,_uart_i2s_sign_10000_26,00125$
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	mov	a,_uart_i2s_sloc0_1_0
	inc	a
	mov	_uart_i2s_len_10000_26,a
;	uart.c:72: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
00125$:
	clr	a
	mov	_uart_i2s_i_10000_25,a
	mov	(_uart_i2s_i_10000_25 + 1),a
00110$:
	mov	_uart_i2s_sloc1_1_0,_uart_i2s_len_10000_26
	mov	(_uart_i2s_sloc1_1_0 + 1),#0x00
	mov	r7,_uart_i2s_sloc1_1_0
	mov	b,#0x02
	mov	a,r7
	div	ab
	mov	r4,a
	mov	r7,#0x00
	clr	c
	mov	a,_uart_i2s_i_10000_25
	subb	a,r4
	mov	a,(_uart_i2s_i_10000_25 + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00162$
	ljmp	00108$
00162$:
	mov	a,_uart_i2s_len_10000_26
	add	a, _uart_i2s_p_10000_26
	mov	r3,a
	clr	a
	addc	a, (_uart_i2s_p_10000_26 + 1)
	mov	r4,a
	mov	r7,(_uart_i2s_p_10000_26 + 2)
	mov	a,_uart_i2s_i_10000_25
	add	a, _uart_i2s_p_10000_26
	mov	_uart_i2s_sloc2_1_0,a
	mov	a,(_uart_i2s_i_10000_25 + 1)
	addc	a, (_uart_i2s_p_10000_26 + 1)
	mov	(_uart_i2s_sloc2_1_0 + 1),a
	mov	(_uart_i2s_sloc2_1_0 + 2),(_uart_i2s_p_10000_26 + 2)
	mov	dpl,_uart_i2s_sloc2_1_0
	mov	dph,(_uart_i2s_sloc2_1_0 + 1)
	mov	b,(_uart_i2s_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrput
	mov	a,_uart_i2s_sloc1_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_uart_i2s_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,_uart_i2s_i_10000_25
	mov	r0,a
	mov	a,r1
	subb	a,(_uart_i2s_i_10000_25 + 1)
	mov	r1,a
	mov	a,r0
	add	a, _uart_i2s_p_10000_26
	mov	r0,a
	mov	a,r1
	addc	a, (_uart_i2s_p_10000_26 + 1)
	mov	r1,a
	mov	r6,(_uart_i2s_p_10000_26 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrget
	mov	dpl,_uart_i2s_sloc2_1_0
	mov	dph,(_uart_i2s_sloc2_1_0 + 1)
	mov	b,(_uart_i2s_sloc2_1_0 + 2)
	lcall	__gptrput
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	lcall	__gptrput
	inc	_uart_i2s_i_10000_25
	clr	a
	cjne	a,_uart_i2s_i_10000_25,00163$
	inc	(_uart_i2s_i_10000_25 + 1)
00163$:
	ljmp	00110$
00108$:
;	uart.c:73: p[len]=0;
	mov	a,_uart_i2s_len_10000_26
	add	a, _uart_i2s_p_10000_26
	mov	r5,a
	clr	a
	addc	a, (_uart_i2s_p_10000_26 + 1)
	mov	r6,a
	mov	r7,(_uart_i2s_p_10000_26 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	uart.c:74: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_s2i'
;------------------------------------------------------------
;s             Allocated to registers r5 r6 r7 
;i             Allocated to registers r3 r4 
;sign          Allocated with name '_uart_s2i_sign_10000_35'
;sloc0         Allocated with name '_uart_s2i_sloc0_1_0'
;------------------------------------------------------------
;	uart.c:76: int uart_s2i(char *s)	// Convert String to Integer
;	-----------------------------------------
;	 function uart_s2i
;	-----------------------------------------
_uart_s2i:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	uart.c:78: int i=0;char sign='+';
	mov	r3,#0x00
	mov	r4,#0x00
	mov	_uart_s2i_sign_10000_35,#0x2b
;	uart.c:79: if(*s=='-'){sign='-';s++;}
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2d,00116$
	mov	_uart_s2i_sign_10000_35,#0x2d
	inc	r5
	cjne	r5,#0x00,00141$
	inc	r6
00141$:
;	uart.c:80: while(*s!=0){i=i*10+(*s-'0');s++;}
00116$:
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	jz	00105$
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),r4
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	__mulint
	mov	_uart_s2i_sloc0_1_0,dpl
	mov	(_uart_s2i_sloc0_1_0 + 1),dph
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r1
	add	a, _uart_s2i_sloc0_1_0
	mov	r3,a
	mov	a,r2
	addc	a, (_uart_s2i_sloc0_1_0 + 1)
	mov	r4,a
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	uart.c:81: if(sign=='-')i=-i;
	mov	a,#0x2d
	cjne	a,_uart_s2i_sign_10000_35,00107$
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
00107$:
;	uart.c:82: return i;
	mov	dpl, r3
	mov	dph, r4
;	uart.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_integer'
;------------------------------------------------------------
;i             Allocated to registers 
;s             Allocated with name '_uart_put_integer_s_10000_41'
;------------------------------------------------------------
;	uart.c:85: void uart_put_integer(int i)	// Put Integer to UART, Require uart_i2s(),uart_put_string()
;	-----------------------------------------
;	 function uart_put_integer
;	-----------------------------------------
_uart_put_integer:
;	uart.c:88: uart_i2s(i,s);uart_put_string(s);
	mov	_uart_i2s_PARM_2,#_uart_put_integer_s_10000_41
	mov	(_uart_i2s_PARM_2 + 1),#0x00
	mov	(_uart_i2s_PARM_2 + 2),#0x40
	lcall	_uart_i2s
	mov	dptr,#_uart_put_integer_s_10000_41
	mov	b, #0x40
;	uart.c:89: }
	ljmp	_uart_put_string
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_integer'
;------------------------------------------------------------
;s             Allocated with name '_uart_get_integer_s_10000_42'
;------------------------------------------------------------
;	uart.c:91: int uart_get_integer()		// Get Integer from UART, Require uart_get_string(),uart_s2i()
;	-----------------------------------------
;	 function uart_get_integer
;	-----------------------------------------
_uart_get_integer:
;	uart.c:94: uart_get_string(s);
	mov	dptr,#_uart_get_integer_s_10000_42
	mov	b, #0x40
	lcall	_uart_get_string
;	uart.c:95: return uart_s2i(s);
	mov	dptr,#_uart_get_integer_s_10000_42
	mov	b, #0x40
;	uart.c:96: }
	ljmp	_uart_s2i
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_byte'
;------------------------------------------------------------
;byte_data     Allocated to registers r7 
;------------------------------------------------------------
;	uart.c:98: void uart_put_byte(unsigned char byte_data)
;	-----------------------------------------
;	 function uart_put_byte
;	-----------------------------------------
_uart_put_byte:
	mov	r7, dpl
;	uart.c:100: uart_put_char(uart_ASCII[byte_data/16]);uart_put_char(uart_ASCII[byte_data%16]);
	mov	ar6,r7
	mov	b,#0x10
	mov	a,r6
	div	ab
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_uart_put_char
	pop	ar7
	anl	ar7,#0x0f
	mov	a,r7
	mov	dptr,#_uart_ASCII
	movc	a,@a+dptr
	mov	dpl,a
;	uart.c:101: }
	ljmp	_uart_put_char
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_word'
;------------------------------------------------------------
;word_data     Allocated to registers r6 r7 
;------------------------------------------------------------
;	uart.c:103: void uart_put_word(unsigned int word_data)
;	-----------------------------------------
;	 function uart_put_word
;	-----------------------------------------
_uart_put_word:
	mov	r6, dpl
	mov	r7, dph
;	uart.c:105: uart_put_byte(word_data/256);uart_put_byte(word_data%256);
	mov	ar4,r7
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_uart_put_byte
	pop	ar6
	pop	ar7
	mov	dpl,r6
;	uart.c:106: }
	ljmp	_uart_put_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_nibble'
;------------------------------------------------------------
;c             Allocated to registers r7 
;------------------------------------------------------------
;	uart.c:108: char uart_get_nibble()
;	-----------------------------------------
;	 function uart_get_nibble
;	-----------------------------------------
_uart_get_nibble:
;	uart.c:111: c=uart_get_char_echo();
	lcall	_uart_get_char_echo
	mov	r7, dpl
;	uart.c:112: if('0'<=c && c<='9')return(c-'0');
	cjne	r7,#0x30,00154$
00154$:
	jc	00102$
;	free result
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00102$
;	free result
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	dpl,a
	ret
00102$:
;	uart.c:113: if('A'<=c && c<='F')return(10+c-'A');
	cjne	r7,#0x41,00157$
00157$:
	jc	00105$
;	free result
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00105$
;	free result
	mov	ar6,r7
	mov	a,#0xc9
	add	a, r6
	mov	dpl,a
	ret
00105$:
;	uart.c:114: if('a'<=c && c<='f')return(10+c-'a');
	cjne	r7,#0x61,00160$
00160$:
	jc	00108$
;	free result
	mov	a,r7
	add	a,#0xff - 0x66
	jc	00108$
;	free result
	mov	a,#0xa9
	add	a, r7
	mov	dpl,a
	ret
00108$:
;	uart.c:115: return(0);
	mov	dpl, #0x00
;	uart.c:116: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_byte'
;------------------------------------------------------------
;	uart.c:118: unsigned char uart_get_byte()
;	-----------------------------------------
;	 function uart_get_byte
;	-----------------------------------------
_uart_get_byte:
;	uart.c:120: return(16*uart_get_nibble()+uart_get_nibble());
	lcall	_uart_get_nibble
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
	push	ar7
	lcall	_uart_get_nibble
	mov	r6, dpl
	pop	ar7
	mov	a,r6
	add	a, r7
	mov	dpl,a
;	uart.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_get_word'
;------------------------------------------------------------
;	uart.c:123: unsigned int uart_get_word()
;	-----------------------------------------
;	 function uart_get_word
;	-----------------------------------------
_uart_get_word:
;	uart.c:125: return(256*uart_get_byte()+uart_get_byte());
	lcall	_uart_get_byte
	mov	r6,dpl
	mov	r7,#0x00
	push	ar7
	push	ar6
	lcall	_uart_get_byte
	mov	r5, dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	add	a, r7
	mov	dpl,a
	mov	a,r4
	addc	a, r6
	mov	dph,a
;	uart.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c             Allocated to registers r7 
;val           Allocated to registers r6 
;------------------------------------------------------------
;	main.c:4: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:9: uart_initialize();
	lcall	_uart_initialize
;	main.c:11: P2 = 0xFF;
	mov	_P2,#0xff
;	main.c:13: while(1){
00114$:
;	main.c:14: c = uart_get_char_echo();
	lcall	_uart_get_char_echo
	mov	r7, dpl
;	main.c:16: if(c >= '0' && c <= '9'){
	cjne	r7,#0x30,00174$
00174$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
;	free result
;	main.c:17: val = c - '0';
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
;	main.c:18: P2 = ~val;
	mov	a,#0xff
	xrl	a,r6
	mov	_P2,a
	sjmp	00114$
00110$:
;	main.c:20: else if(c >= 'A' && c <= 'F'){
	cjne	r7,#0x41,00177$
00177$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00106$
;	free result
;	main.c:21: val = c - 'A' + 10;
	mov	ar6,r7
	mov	a,#0xc9
	add	a, r6
	mov	r6,a
;	main.c:22: P2 = ~val;
	mov	a,#0xff
	xrl	a,r6
	mov	_P2,a
	sjmp	00114$
00106$:
;	main.c:24: else if(c >= 'a' && c <= 'f'){
	cjne	r7,#0x61,00180$
00180$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x66
	jc	00102$
;	free result
;	main.c:25: val = c - 'a' + 10;
	mov	a,#0xa9
	add	a, r7
	mov	r7,a
;	main.c:26: P2 = ~val;
	mov	a,#0xff
	xrl	a,r7
	mov	_P2,a
	sjmp	00114$
00102$:
;	main.c:29: P2 = 0xFF;
	mov	_P2,#0xff
;	main.c:31: }
	sjmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_uart_ASCII:
	.ascii "0123456789ABCDEF"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
