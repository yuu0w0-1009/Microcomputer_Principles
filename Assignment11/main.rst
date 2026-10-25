                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart_ASCII
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _uart_i2s_PARM_2
                                    110 	.globl _uart_initialize
                                    111 	.globl _uart_put_char
                                    112 	.globl _uart_get_char
                                    113 	.globl _uart_get_char_echo
                                    114 	.globl _uart_put_string
                                    115 	.globl _uart_get_string
                                    116 	.globl _uart_i2s
                                    117 	.globl _uart_s2i
                                    118 	.globl _uart_put_integer
                                    119 	.globl _uart_get_integer
                                    120 	.globl _uart_put_byte
                                    121 	.globl _uart_put_word
                                    122 	.globl _uart_get_nibble
                                    123 	.globl _uart_get_byte
                                    124 	.globl _uart_get_word
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
      000008                        240 _uart_i2s_PARM_2:
      000008                        241 	.ds 3
      00000B                        242 _uart_i2s_i_10000_25:
      00000B                        243 	.ds 2
      00000D                        244 _uart_i2s_sign_10000_26:
      00000D                        245 	.ds 1
      00000E                        246 _uart_i2s_len_10000_26:
      00000E                        247 	.ds 1
      00000F                        248 _uart_i2s_p_10000_26:
      00000F                        249 	.ds 3
      000012                        250 _uart_i2s_sloc0_1_0:
      000012                        251 	.ds 1
      000013                        252 _uart_i2s_sloc1_1_0:
      000013                        253 	.ds 2
      000015                        254 _uart_i2s_sloc2_1_0:
      000015                        255 	.ds 3
      000018                        256 _uart_s2i_sign_10000_35:
      000018                        257 	.ds 1
      000019                        258 _uart_s2i_sloc0_1_0:
      000019                        259 	.ds 2
      00001B                        260 _uart_put_integer_s_10000_41:
      00001B                        261 	.ds 7
      000022                        262 _uart_get_integer_s_10000_42:
      000022                        263 	.ds 7
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable items in internal ram
                                    266 ;--------------------------------------------------------
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; Stack segment in internal ram
                                    270 ;--------------------------------------------------------
                                    271 	.area SSEG
      00002B                        272 __start__stack:
      00002B                        273 	.ds	1
                                    274 
                                    275 ;--------------------------------------------------------
                                    276 ; indirectly addressable internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area ISEG    (DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area IABS    (ABS,DATA)
                                    283 	.area IABS    (ABS,DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; bit data
                                    286 ;--------------------------------------------------------
                                    287 	.area BSEG    (BIT)
                                    288 ;--------------------------------------------------------
                                    289 ; paged external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area PSEG    (PAG,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; uninitialized external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XSEG    (XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XABS    (ABS,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; initialized external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XISEG   (XDATA)
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT0 (CODE)
                                    306 	.area GSINIT1 (CODE)
                                    307 	.area GSINIT2 (CODE)
                                    308 	.area GSINIT3 (CODE)
                                    309 	.area GSINIT4 (CODE)
                                    310 	.area GSINIT5 (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.area GSFINAL (CODE)
                                    313 	.area CSEG    (CODE)
                                    314 ;--------------------------------------------------------
                                    315 ; interrupt vector
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
      000000                        318 __interrupt_vect:
      000000 02 00 4E         [24]  319 	ljmp	__sdcc_gsinit_startup
                                    320 ; restartable atomic support routines
      000003                        321 	.ds	5
      000008                        322 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  323 	nop
      000009 00               [12]  324 	nop
      00000A                        325 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  326 	movx	a, @r0
      00000B FB               [12]  327 	mov	r3, a
      00000C EA               [12]  328 	mov	a, r2
      00000D F2               [24]  329 	movx	@r0, a
      00000E 80 2C            [24]  330 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  331 	nop
      000011 00               [12]  332 	nop
      000012                        333 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  334 	movx	a, @dptr
      000013 FB               [12]  335 	mov	r3, a
      000014 EA               [12]  336 	mov	a, r2
      000015 F0               [24]  337 	movx	@dptr, a
      000016 80 24            [24]  338 	sjmp	sdcc_atomic_exchange_exit
      000018                        339 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  340 	mov	a, @r0
      000019 B5 02 02         [24]  341 	cjne	a, ar2, .+#5
      00001C EB               [12]  342 	mov	a, r3
      00001D F6               [12]  343 	mov	@r0, a
      00001E 22               [24]  344 	ret
      00001F 00               [12]  345 	nop
      000020                        346 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  347 	movx	a, @r0
      000021 B5 02 02         [24]  348 	cjne	a, ar2, .+#5
      000024 EB               [12]  349 	mov	a, r3
      000025 F2               [24]  350 	movx	@r0, a
      000026 22               [24]  351 	ret
      000027 00               [12]  352 	nop
      000028                        353 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  354 	movx	a, @dptr
      000029 B5 02 02         [24]  355 	cjne	a, ar2, .+#5
      00002C EB               [12]  356 	mov	a, r3
      00002D F0               [24]  357 	movx	@dptr, a
      00002E 22               [24]  358 	ret
      00002F                        359 sdcc_atomic_exchange_rollback_end::
                                    360 
      00002F                        361 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  362 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  363 	mov	r0, dpl
      000034 20 F5 D3         [24]  364 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        365 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  366 	mov	a, r2
      000038 C6               [12]  367 	xch	a, @r0
      000039 F5 82            [12]  368 	mov	dpl, a
      00003B 22               [24]  369 	ret
      00003C                        370 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  371 	mov	dpl, r3
      00003E 22               [24]  372 	ret
      00003F                        373 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  374 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  375 	mov	r0, dpl
      000044 20 F5 D9         [24]  376 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  377 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    378 ;--------------------------------------------------------
                                    379 ; global & static initialisations
                                    380 ;--------------------------------------------------------
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.area GSFINAL (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.globl __sdcc_gsinit_startup
                                    386 	.globl __sdcc_program_startup
                                    387 	.globl __start__stack
                                    388 	.globl __mcs51_genXINIT
                                    389 	.globl __mcs51_genXRAMCLEAR
                                    390 	.globl __mcs51_genRAMCLEAR
                                    391 	.area GSFINAL (CODE)
      0000A7 02 00 49         [24]  392 	ljmp	__sdcc_program_startup
                                    393 ;--------------------------------------------------------
                                    394 ; Home
                                    395 ;--------------------------------------------------------
                                    396 	.area HOME    (CODE)
                                    397 	.area HOME    (CODE)
      000049                        398 __sdcc_program_startup:
      000049 12 03 EC         [24]  399 	lcall	_main
      00004C                        400 __sdcc_program_exit:
      00004C 80 FE            [24]  401 	sjmp	.
                                    402 ;	return from main will return to caller
                                    403 ;--------------------------------------------------------
                                    404 ; code
                                    405 ;--------------------------------------------------------
                                    406 	.area CSEG    (CODE)
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'uart_initialize'
                                    409 ;------------------------------------------------------------
                                    410 ;	uart.c:24: void uart_initialize(void)
                                    411 ;	-----------------------------------------
                                    412 ;	 function uart_initialize
                                    413 ;	-----------------------------------------
      0000AA                        414 _uart_initialize:
                           000007   415 	ar7 = 0x07
                           000006   416 	ar6 = 0x06
                           000005   417 	ar5 = 0x05
                           000004   418 	ar4 = 0x04
                           000003   419 	ar3 = 0x03
                           000002   420 	ar2 = 0x02
                           000001   421 	ar1 = 0x01
                           000000   422 	ar0 = 0x00
                                    423 ;	uart.c:26: PCON&=0x7F;		// Clear SMOD of PCON, No Double Baud Rate
      0000AA 53 87 7F         [24]  424 	anl	_PCON,#0x7f
                                    425 ;	uart.c:27: TMOD&=0x2F;TMOD|=0x20;	// Set Timer1 to Mode 2 (8-bit auto reload) for Baud Rate Generation
      0000AD 53 89 2F         [24]  426 	anl	_TMOD,#0x2f
      0000B0 43 89 20         [24]  427 	orl	_TMOD,#0x20
                                    428 ;	uart.c:28: TH1=0xFD;		// Set Baud Rate to 9600 bps for 11.0592M Hz
      0000B3 75 8D FD         [24]  429 	mov	_TH1,#0xfd
                                    430 ;	uart.c:29: SM0=0;SM1=1;		// Set UART to Mode 1 (8-bit UART)
                                    431 ;	assignBit
      0000B6 C2 9F            [12]  432 	clr	_SM0
                                    433 ;	assignBit
      0000B8 D2 9E            [12]  434 	setb	_SM1
                                    435 ;	uart.c:30: REN=1;			// Set REN of SCON to Enable UART Receive
                                    436 ;	assignBit
      0000BA D2 9C            [12]  437 	setb	_REN
                                    438 ;	uart.c:31: TR1=1;			// Set TR1 of TCON to Start Timer1
                                    439 ;	assignBit
      0000BC D2 8E            [12]  440 	setb	_TR1
                                    441 ;	uart.c:32: TI=0;RI=0;		// Clear TI/RI of SCON to Get Ready to Send/Receive
                                    442 ;	assignBit
      0000BE C2 99            [12]  443 	clr	_TI
                                    444 ;	assignBit
      0000C0 C2 98            [12]  445 	clr	_RI
                                    446 ;	uart.c:33: }
      0000C2 22               [24]  447 	ret
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'uart_put_char'
                                    450 ;------------------------------------------------------------
                                    451 ;c             Allocated to registers 
                                    452 ;------------------------------------------------------------
                                    453 ;	uart.c:35: void uart_put_char(char c)	// Put Character to UART
                                    454 ;	-----------------------------------------
                                    455 ;	 function uart_put_char
                                    456 ;	-----------------------------------------
      0000C3                        457 _uart_put_char:
      0000C3 85 82 99         [24]  458 	mov	_SBUF,dpl
                                    459 ;	uart.c:38: while(TI==0);TI=0;
      0000C6                        460 00101$:
                                    461 ;	assignBit
      0000C6 10 99 02         [24]  462 	jbc	_TI,00120$
      0000C9 80 FB            [24]  463 	sjmp	00101$
      0000CB                        464 00120$:
                                    465 ;	uart.c:39: }
      0000CB 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'uart_get_char'
                                    469 ;------------------------------------------------------------
                                    470 ;	uart.c:41: char uart_get_char(void)	// Get Character from UART
                                    471 ;	-----------------------------------------
                                    472 ;	 function uart_get_char
                                    473 ;	-----------------------------------------
      0000CC                        474 _uart_get_char:
                                    475 ;	uart.c:43: while(RI==0);RI=0;
      0000CC                        476 00101$:
                                    477 ;	assignBit
      0000CC 10 98 02         [24]  478 	jbc	_RI,00120$
      0000CF 80 FB            [24]  479 	sjmp	00101$
      0000D1                        480 00120$:
                                    481 ;	uart.c:44: return SBUF;
      0000D1 85 99 82         [24]  482 	mov	dpl, _SBUF
                                    483 ;	uart.c:45: }
      0000D4 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'uart_get_char_echo'
                                    487 ;------------------------------------------------------------
                                    488 ;	uart.c:47: char uart_get_char_echo(void)	// Get Character from UART with Echo, Require uart_put_char()
                                    489 ;	-----------------------------------------
                                    490 ;	 function uart_get_char_echo
                                    491 ;	-----------------------------------------
      0000D5                        492 _uart_get_char_echo:
                                    493 ;	uart.c:49: while(RI==0);RI=0;
      0000D5                        494 00101$:
                                    495 ;	assignBit
      0000D5 10 98 02         [24]  496 	jbc	_RI,00120$
      0000D8 80 FB            [24]  497 	sjmp	00101$
      0000DA                        498 00120$:
                                    499 ;	uart.c:50: uart_put_char(SBUF);
      0000DA 85 99 82         [24]  500 	mov	dpl, _SBUF
      0000DD 12 00 C3         [24]  501 	lcall	_uart_put_char
                                    502 ;	uart.c:51: return SBUF;
      0000E0 85 99 82         [24]  503 	mov	dpl, _SBUF
                                    504 ;	uart.c:52: }
      0000E3 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'uart_put_string'
                                    508 ;------------------------------------------------------------
                                    509 ;s             Allocated to registers 
                                    510 ;------------------------------------------------------------
                                    511 ;	uart.c:54: void uart_put_string(char *s)	// Put String to UART, Require uart_put_char()
                                    512 ;	-----------------------------------------
                                    513 ;	 function uart_put_string
                                    514 ;	-----------------------------------------
      0000E4                        515 _uart_put_string:
      0000E4 AD 82            [24]  516 	mov	r5, dpl
      0000E6 AE 83            [24]  517 	mov	r6, dph
      0000E8 AF F0            [24]  518 	mov	r7, b
                                    519 ;	uart.c:56: while(*s!=0){uart_put_char(*s);s++;}
      0000EA                        520 00101$:
      0000EA 8D 82            [24]  521 	mov	dpl,r5
      0000EC 8E 83            [24]  522 	mov	dph,r6
      0000EE 8F F0            [24]  523 	mov	b,r7
      0000F0 12 04 ED         [24]  524 	lcall	__gptrget
      0000F3 FC               [12]  525 	mov	r4,a
      0000F4 60 18            [24]  526 	jz	00104$
      0000F6 8C 82            [24]  527 	mov	dpl, r4
      0000F8 C0 07            [24]  528 	push	ar7
      0000FA C0 06            [24]  529 	push	ar6
      0000FC C0 05            [24]  530 	push	ar5
      0000FE 12 00 C3         [24]  531 	lcall	_uart_put_char
      000101 D0 05            [24]  532 	pop	ar5
      000103 D0 06            [24]  533 	pop	ar6
      000105 D0 07            [24]  534 	pop	ar7
      000107 0D               [12]  535 	inc	r5
      000108 BD 00 DF         [24]  536 	cjne	r5,#0x00,00101$
      00010B 0E               [12]  537 	inc	r6
      00010C 80 DC            [24]  538 	sjmp	00101$
      00010E                        539 00104$:
                                    540 ;	uart.c:57: }
      00010E 22               [24]  541 	ret
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'uart_get_string'
                                    544 ;------------------------------------------------------------
                                    545 ;s             Allocated to registers 
                                    546 ;------------------------------------------------------------
                                    547 ;	uart.c:59: void uart_get_string(char *s)	// Get String from UART, Require uart_get_char_echo()
                                    548 ;	-----------------------------------------
                                    549 ;	 function uart_get_string
                                    550 ;	-----------------------------------------
      00010F                        551 _uart_get_string:
      00010F AD 82            [24]  552 	mov	r5, dpl
      000111 AE 83            [24]  553 	mov	r6, dph
      000113 AF F0            [24]  554 	mov	r7, b
                                    555 ;	uart.c:61: while(((*s)=uart_get_char_echo())!=13)s++;
      000115                        556 00101$:
      000115 C0 07            [24]  557 	push	ar7
      000117 C0 06            [24]  558 	push	ar6
      000119 C0 05            [24]  559 	push	ar5
      00011B 12 00 D5         [24]  560 	lcall	_uart_get_char_echo
      00011E AC 82            [24]  561 	mov	r4, dpl
      000120 D0 05            [24]  562 	pop	ar5
      000122 D0 06            [24]  563 	pop	ar6
      000124 D0 07            [24]  564 	pop	ar7
      000126 8D 82            [24]  565 	mov	dpl,r5
      000128 8E 83            [24]  566 	mov	dph,r6
      00012A 8F F0            [24]  567 	mov	b,r7
      00012C EC               [12]  568 	mov	a,r4
      00012D 12 04 3F         [24]  569 	lcall	__gptrput
      000130 BC 0D 02         [24]  570 	cjne	r4,#0x0d,00121$
      000133 80 07            [24]  571 	sjmp	00103$
      000135                        572 00121$:
      000135 0D               [12]  573 	inc	r5
      000136 BD 00 DC         [24]  574 	cjne	r5,#0x00,00101$
      000139 0E               [12]  575 	inc	r6
      00013A 80 D9            [24]  576 	sjmp	00101$
      00013C                        577 00103$:
                                    578 ;	uart.c:62: *s=0;
      00013C 8D 82            [24]  579 	mov	dpl,r5
      00013E 8E 83            [24]  580 	mov	dph,r6
      000140 8F F0            [24]  581 	mov	b,r7
      000142 E4               [12]  582 	clr	a
                                    583 ;	uart.c:63: }
      000143 02 04 3F         [24]  584 	ljmp	__gptrput
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'uart_i2s'
                                    587 ;------------------------------------------------------------
                                    588 ;s             Allocated with name '_uart_i2s_PARM_2'
                                    589 ;i             Allocated with name '_uart_i2s_i_10000_25'
                                    590 ;sign          Allocated with name '_uart_i2s_sign_10000_26'
                                    591 ;len           Allocated with name '_uart_i2s_len_10000_26'
                                    592 ;p             Allocated with name '_uart_i2s_p_10000_26'
                                    593 ;sloc0         Allocated with name '_uart_i2s_sloc0_1_0'
                                    594 ;sloc1         Allocated with name '_uart_i2s_sloc1_1_0'
                                    595 ;sloc2         Allocated with name '_uart_i2s_sloc2_1_0'
                                    596 ;------------------------------------------------------------
                                    597 ;	uart.c:65: void uart_i2s(int i,char *s)	// Convert Integer to String
                                    598 ;	-----------------------------------------
                                    599 ;	 function uart_i2s
                                    600 ;	-----------------------------------------
      000146                        601 _uart_i2s:
      000146 85 82 0B         [24]  602 	mov	_uart_i2s_i_10000_25,dpl
      000149 85 83 0C         [24]  603 	mov	(_uart_i2s_i_10000_25 + 1),dph
                                    604 ;	uart.c:68: sign='+';len=0;p=s;
      00014C 75 0D 2B         [24]  605 	mov	_uart_i2s_sign_10000_26,#0x2b
      00014F 85 08 0F         [24]  606 	mov	_uart_i2s_p_10000_26,_uart_i2s_PARM_2
      000152 85 09 10         [24]  607 	mov	(_uart_i2s_p_10000_26 + 1),(_uart_i2s_PARM_2 + 1)
      000155 85 0A 11         [24]  608 	mov	(_uart_i2s_p_10000_26 + 2),(_uart_i2s_PARM_2 + 2)
                                    609 ;	uart.c:69: if(i<0){sign='-';i=-i;}
      000158 E5 0C            [12]  610 	mov	a,(_uart_i2s_i_10000_25 + 1)
      00015A 30 E7 0E         [24]  611 	jnb	acc.7,00121$
      00015D 75 0D 2D         [24]  612 	mov	_uart_i2s_sign_10000_26,#0x2d
      000160 C3               [12]  613 	clr	c
      000161 E4               [12]  614 	clr	a
      000162 95 0B            [12]  615 	subb	a,_uart_i2s_i_10000_25
      000164 F5 0B            [12]  616 	mov	_uart_i2s_i_10000_25,a
      000166 E4               [12]  617 	clr	a
      000167 95 0C            [12]  618 	subb	a,(_uart_i2s_i_10000_25 + 1)
      000169 F5 0C            [12]  619 	mov	(_uart_i2s_i_10000_25 + 1),a
                                    620 ;	uart.c:70: do{*s=(i%10)+'0';s++;len++;i/=10;}while(i!=0);
      00016B                        621 00121$:
      00016B A8 0F            [24]  622 	mov	r0,_uart_i2s_p_10000_26
      00016D A9 10            [24]  623 	mov	r1,(_uart_i2s_p_10000_26 + 1)
      00016F AD 11            [24]  624 	mov	r5,(_uart_i2s_p_10000_26 + 2)
      000171 75 12 00         [24]  625 	mov	_uart_i2s_sloc0_1_0,#0x00
      000174                        626 00103$:
      000174 75 29 0A         [24]  627 	mov	__modsint_PARM_2,#0x0a
      000177 75 2A 00         [24]  628 	mov	(__modsint_PARM_2 + 1),#0x00
      00017A 85 0B 82         [24]  629 	mov	dpl, _uart_i2s_i_10000_25
      00017D 85 0C 83         [24]  630 	mov	dph, (_uart_i2s_i_10000_25 + 1)
      000180 C0 05            [24]  631 	push	ar5
      000182 C0 01            [24]  632 	push	ar1
      000184 C0 00            [24]  633 	push	ar0
      000186 12 05 09         [24]  634 	lcall	__modsint
      000189 AE 82            [24]  635 	mov	r6, dpl
      00018B D0 00            [24]  636 	pop	ar0
      00018D D0 01            [24]  637 	pop	ar1
      00018F D0 05            [24]  638 	pop	ar5
      000191 74 30            [12]  639 	mov	a,#0x30
      000193 2E               [12]  640 	add	a, r6
      000194 88 82            [24]  641 	mov	dpl,r0
      000196 89 83            [24]  642 	mov	dph,r1
      000198 8D F0            [24]  643 	mov	b,r5
      00019A 12 04 3F         [24]  644 	lcall	__gptrput
      00019D A3               [24]  645 	inc	dptr
      00019E A8 82            [24]  646 	mov	r0,dpl
      0001A0 A9 83            [24]  647 	mov	r1,dph
      0001A2 05 12            [12]  648 	inc	_uart_i2s_sloc0_1_0
      0001A4 75 29 0A         [24]  649 	mov	__divsint_PARM_2,#0x0a
      0001A7 75 2A 00         [24]  650 	mov	(__divsint_PARM_2 + 1),#0x00
      0001AA 85 0B 82         [24]  651 	mov	dpl, _uart_i2s_i_10000_25
      0001AD 85 0C 83         [24]  652 	mov	dph, (_uart_i2s_i_10000_25 + 1)
      0001B0 C0 05            [24]  653 	push	ar5
      0001B2 C0 01            [24]  654 	push	ar1
      0001B4 C0 00            [24]  655 	push	ar0
      0001B6 12 05 3F         [24]  656 	lcall	__divsint
      0001B9 85 82 0B         [24]  657 	mov	_uart_i2s_i_10000_25,dpl
      0001BC 85 83 0C         [24]  658 	mov	(_uart_i2s_i_10000_25 + 1),dph
      0001BF D0 00            [24]  659 	pop	ar0
      0001C1 D0 01            [24]  660 	pop	ar1
      0001C3 D0 05            [24]  661 	pop	ar5
      0001C5 E5 0B            [12]  662 	mov	a,_uart_i2s_i_10000_25
      0001C7 45 0C            [12]  663 	orl	a,(_uart_i2s_i_10000_25 + 1)
      0001C9 70 A9            [24]  664 	jnz	00103$
                                    665 ;	uart.c:71: if(sign=='-'){*s='-';s++;len++;}
      0001CB 85 12 0E         [24]  666 	mov	_uart_i2s_len_10000_26,_uart_i2s_sloc0_1_0
      0001CE 74 2D            [12]  667 	mov	a,#0x2d
      0001D0 B5 0D 10         [24]  668 	cjne	a,_uart_i2s_sign_10000_26,00125$
      0001D3 88 82            [24]  669 	mov	dpl,r0
      0001D5 89 83            [24]  670 	mov	dph,r1
      0001D7 8D F0            [24]  671 	mov	b,r5
      0001D9 74 2D            [12]  672 	mov	a,#0x2d
      0001DB 12 04 3F         [24]  673 	lcall	__gptrput
      0001DE E5 12            [12]  674 	mov	a,_uart_i2s_sloc0_1_0
      0001E0 04               [12]  675 	inc	a
      0001E1 F5 0E            [12]  676 	mov	_uart_i2s_len_10000_26,a
                                    677 ;	uart.c:72: for(i=0;i<len/2;i++){p[len]=p[i];p[i]=p[len-1-i];p[len-1-i]=p[len];}
      0001E3                        678 00125$:
      0001E3 E4               [12]  679 	clr	a
      0001E4 F5 0B            [12]  680 	mov	_uart_i2s_i_10000_25,a
      0001E6 F5 0C            [12]  681 	mov	(_uart_i2s_i_10000_25 + 1),a
      0001E8                        682 00110$:
      0001E8 85 0E 13         [24]  683 	mov	_uart_i2s_sloc1_1_0,_uart_i2s_len_10000_26
      0001EB 75 14 00         [24]  684 	mov	(_uart_i2s_sloc1_1_0 + 1),#0x00
      0001EE AF 13            [24]  685 	mov	r7,_uart_i2s_sloc1_1_0
      0001F0 75 F0 02         [24]  686 	mov	b,#0x02
      0001F3 EF               [12]  687 	mov	a,r7
      0001F4 84               [48]  688 	div	ab
      0001F5 FC               [12]  689 	mov	r4,a
      0001F6 7F 00            [12]  690 	mov	r7,#0x00
      0001F8 C3               [12]  691 	clr	c
      0001F9 E5 0B            [12]  692 	mov	a,_uart_i2s_i_10000_25
      0001FB 9C               [12]  693 	subb	a,r4
      0001FC E5 0C            [12]  694 	mov	a,(_uart_i2s_i_10000_25 + 1)
      0001FE 64 80            [12]  695 	xrl	a,#0x80
      000200 8F F0            [24]  696 	mov	b,r7
      000202 63 F0 80         [24]  697 	xrl	b,#0x80
      000205 95 F0            [12]  698 	subb	a,b
      000207 40 03            [24]  699 	jc	00162$
      000209 02 02 8A         [24]  700 	ljmp	00108$
      00020C                        701 00162$:
      00020C E5 0E            [12]  702 	mov	a,_uart_i2s_len_10000_26
      00020E 25 0F            [12]  703 	add	a, _uart_i2s_p_10000_26
      000210 FB               [12]  704 	mov	r3,a
      000211 E4               [12]  705 	clr	a
      000212 35 10            [12]  706 	addc	a, (_uart_i2s_p_10000_26 + 1)
      000214 FC               [12]  707 	mov	r4,a
      000215 AF 11            [24]  708 	mov	r7,(_uart_i2s_p_10000_26 + 2)
      000217 E5 0B            [12]  709 	mov	a,_uart_i2s_i_10000_25
      000219 25 0F            [12]  710 	add	a, _uart_i2s_p_10000_26
      00021B F5 15            [12]  711 	mov	_uart_i2s_sloc2_1_0,a
      00021D E5 0C            [12]  712 	mov	a,(_uart_i2s_i_10000_25 + 1)
      00021F 35 10            [12]  713 	addc	a, (_uart_i2s_p_10000_26 + 1)
      000221 F5 16            [12]  714 	mov	(_uart_i2s_sloc2_1_0 + 1),a
      000223 85 11 17         [24]  715 	mov	(_uart_i2s_sloc2_1_0 + 2),(_uart_i2s_p_10000_26 + 2)
      000226 85 15 82         [24]  716 	mov	dpl,_uart_i2s_sloc2_1_0
      000229 85 16 83         [24]  717 	mov	dph,(_uart_i2s_sloc2_1_0 + 1)
      00022C 85 17 F0         [24]  718 	mov	b,(_uart_i2s_sloc2_1_0 + 2)
      00022F 12 04 ED         [24]  719 	lcall	__gptrget
      000232 8B 82            [24]  720 	mov	dpl,r3
      000234 8C 83            [24]  721 	mov	dph,r4
      000236 8F F0            [24]  722 	mov	b,r7
      000238 12 04 3F         [24]  723 	lcall	__gptrput
      00023B E5 13            [12]  724 	mov	a,_uart_i2s_sloc1_1_0
      00023D 24 FF            [12]  725 	add	a,#0xff
      00023F F8               [12]  726 	mov	r0,a
      000240 E5 14            [12]  727 	mov	a,(_uart_i2s_sloc1_1_0 + 1)
      000242 34 FF            [12]  728 	addc	a,#0xff
      000244 F9               [12]  729 	mov	r1,a
      000245 E8               [12]  730 	mov	a,r0
      000246 C3               [12]  731 	clr	c
      000247 95 0B            [12]  732 	subb	a,_uart_i2s_i_10000_25
      000249 F8               [12]  733 	mov	r0,a
      00024A E9               [12]  734 	mov	a,r1
      00024B 95 0C            [12]  735 	subb	a,(_uart_i2s_i_10000_25 + 1)
      00024D F9               [12]  736 	mov	r1,a
      00024E E8               [12]  737 	mov	a,r0
      00024F 25 0F            [12]  738 	add	a, _uart_i2s_p_10000_26
      000251 F8               [12]  739 	mov	r0,a
      000252 E9               [12]  740 	mov	a,r1
      000253 35 10            [12]  741 	addc	a, (_uart_i2s_p_10000_26 + 1)
      000255 F9               [12]  742 	mov	r1,a
      000256 AE 11            [24]  743 	mov	r6,(_uart_i2s_p_10000_26 + 2)
      000258 88 82            [24]  744 	mov	dpl,r0
      00025A 89 83            [24]  745 	mov	dph,r1
      00025C 8E F0            [24]  746 	mov	b,r6
      00025E 12 04 ED         [24]  747 	lcall	__gptrget
      000261 85 15 82         [24]  748 	mov	dpl,_uart_i2s_sloc2_1_0
      000264 85 16 83         [24]  749 	mov	dph,(_uart_i2s_sloc2_1_0 + 1)
      000267 85 17 F0         [24]  750 	mov	b,(_uart_i2s_sloc2_1_0 + 2)
      00026A 12 04 3F         [24]  751 	lcall	__gptrput
      00026D 8B 82            [24]  752 	mov	dpl,r3
      00026F 8C 83            [24]  753 	mov	dph,r4
      000271 8F F0            [24]  754 	mov	b,r7
      000273 12 04 ED         [24]  755 	lcall	__gptrget
      000276 88 82            [24]  756 	mov	dpl,r0
      000278 89 83            [24]  757 	mov	dph,r1
      00027A 8E F0            [24]  758 	mov	b,r6
      00027C 12 04 3F         [24]  759 	lcall	__gptrput
      00027F 05 0B            [12]  760 	inc	_uart_i2s_i_10000_25
      000281 E4               [12]  761 	clr	a
      000282 B5 0B 02         [24]  762 	cjne	a,_uart_i2s_i_10000_25,00163$
      000285 05 0C            [12]  763 	inc	(_uart_i2s_i_10000_25 + 1)
      000287                        764 00163$:
      000287 02 01 E8         [24]  765 	ljmp	00110$
      00028A                        766 00108$:
                                    767 ;	uart.c:73: p[len]=0;
      00028A E5 0E            [12]  768 	mov	a,_uart_i2s_len_10000_26
      00028C 25 0F            [12]  769 	add	a, _uart_i2s_p_10000_26
      00028E FD               [12]  770 	mov	r5,a
      00028F E4               [12]  771 	clr	a
      000290 35 10            [12]  772 	addc	a, (_uart_i2s_p_10000_26 + 1)
      000292 FE               [12]  773 	mov	r6,a
      000293 AF 11            [24]  774 	mov	r7,(_uart_i2s_p_10000_26 + 2)
      000295 8D 82            [24]  775 	mov	dpl,r5
      000297 8E 83            [24]  776 	mov	dph,r6
      000299 8F F0            [24]  777 	mov	b,r7
      00029B E4               [12]  778 	clr	a
                                    779 ;	uart.c:74: }
      00029C 02 04 3F         [24]  780 	ljmp	__gptrput
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'uart_s2i'
                                    783 ;------------------------------------------------------------
                                    784 ;s             Allocated to registers r5 r6 r7 
                                    785 ;i             Allocated to registers r3 r4 
                                    786 ;sign          Allocated with name '_uart_s2i_sign_10000_35'
                                    787 ;sloc0         Allocated with name '_uart_s2i_sloc0_1_0'
                                    788 ;------------------------------------------------------------
                                    789 ;	uart.c:76: int uart_s2i(char *s)	// Convert String to Integer
                                    790 ;	-----------------------------------------
                                    791 ;	 function uart_s2i
                                    792 ;	-----------------------------------------
      00029F                        793 _uart_s2i:
      00029F AD 82            [24]  794 	mov	r5, dpl
      0002A1 AE 83            [24]  795 	mov	r6, dph
      0002A3 AF F0            [24]  796 	mov	r7, b
                                    797 ;	uart.c:78: int i=0;char sign='+';
      0002A5 7B 00            [12]  798 	mov	r3,#0x00
      0002A7 7C 00            [12]  799 	mov	r4,#0x00
      0002A9 75 18 2B         [24]  800 	mov	_uart_s2i_sign_10000_35,#0x2b
                                    801 ;	uart.c:79: if(*s=='-'){sign='-';s++;}
      0002AC 8D 82            [24]  802 	mov	dpl,r5
      0002AE 8E 83            [24]  803 	mov	dph,r6
      0002B0 8F F0            [24]  804 	mov	b,r7
      0002B2 12 04 ED         [24]  805 	lcall	__gptrget
      0002B5 F9               [12]  806 	mov	r1,a
      0002B6 B9 2D 08         [24]  807 	cjne	r1,#0x2d,00116$
      0002B9 75 18 2D         [24]  808 	mov	_uart_s2i_sign_10000_35,#0x2d
      0002BC 0D               [12]  809 	inc	r5
      0002BD BD 00 01         [24]  810 	cjne	r5,#0x00,00141$
      0002C0 0E               [12]  811 	inc	r6
      0002C1                        812 00141$:
                                    813 ;	uart.c:80: while(*s!=0){i=i*10+(*s-'0');s++;}
      0002C1                        814 00116$:
      0002C1                        815 00103$:
      0002C1 8D 82            [24]  816 	mov	dpl,r5
      0002C3 8E 83            [24]  817 	mov	dph,r6
      0002C5 8F F0            [24]  818 	mov	b,r7
      0002C7 12 04 ED         [24]  819 	lcall	__gptrget
      0002CA F9               [12]  820 	mov	r1,a
      0002CB 60 39            [24]  821 	jz	00105$
      0002CD 8B 29            [24]  822 	mov	__mulint_PARM_2,r3
      0002CF 8C 2A            [24]  823 	mov	(__mulint_PARM_2 + 1),r4
      0002D1 90 00 0A         [24]  824 	mov	dptr,#0x000a
      0002D4 C0 07            [24]  825 	push	ar7
      0002D6 C0 06            [24]  826 	push	ar6
      0002D8 C0 05            [24]  827 	push	ar5
      0002DA C0 01            [24]  828 	push	ar1
      0002DC 12 04 5A         [24]  829 	lcall	__mulint
      0002DF 85 82 19         [24]  830 	mov	_uart_s2i_sloc0_1_0,dpl
      0002E2 85 83 1A         [24]  831 	mov	(_uart_s2i_sloc0_1_0 + 1),dph
      0002E5 D0 01            [24]  832 	pop	ar1
      0002E7 D0 05            [24]  833 	pop	ar5
      0002E9 D0 06            [24]  834 	pop	ar6
      0002EB D0 07            [24]  835 	pop	ar7
      0002ED 7A 00            [12]  836 	mov	r2,#0x00
      0002EF E9               [12]  837 	mov	a,r1
      0002F0 24 D0            [12]  838 	add	a,#0xd0
      0002F2 F9               [12]  839 	mov	r1,a
      0002F3 EA               [12]  840 	mov	a,r2
      0002F4 34 FF            [12]  841 	addc	a,#0xff
      0002F6 FA               [12]  842 	mov	r2,a
      0002F7 E9               [12]  843 	mov	a,r1
      0002F8 25 19            [12]  844 	add	a, _uart_s2i_sloc0_1_0
      0002FA FB               [12]  845 	mov	r3,a
      0002FB EA               [12]  846 	mov	a,r2
      0002FC 35 1A            [12]  847 	addc	a, (_uart_s2i_sloc0_1_0 + 1)
      0002FE FC               [12]  848 	mov	r4,a
      0002FF 0D               [12]  849 	inc	r5
      000300 BD 00 BE         [24]  850 	cjne	r5,#0x00,00103$
      000303 0E               [12]  851 	inc	r6
      000304 80 BB            [24]  852 	sjmp	00103$
      000306                        853 00105$:
                                    854 ;	uart.c:81: if(sign=='-')i=-i;
      000306 74 2D            [12]  855 	mov	a,#0x2d
      000308 B5 18 07         [24]  856 	cjne	a,_uart_s2i_sign_10000_35,00107$
      00030B C3               [12]  857 	clr	c
      00030C E4               [12]  858 	clr	a
      00030D 9B               [12]  859 	subb	a,r3
      00030E FB               [12]  860 	mov	r3,a
      00030F E4               [12]  861 	clr	a
      000310 9C               [12]  862 	subb	a,r4
      000311 FC               [12]  863 	mov	r4,a
      000312                        864 00107$:
                                    865 ;	uart.c:82: return i;
      000312 8B 82            [24]  866 	mov	dpl, r3
      000314 8C 83            [24]  867 	mov	dph, r4
                                    868 ;	uart.c:83: }
      000316 22               [24]  869 	ret
                                    870 ;------------------------------------------------------------
                                    871 ;Allocation info for local variables in function 'uart_put_integer'
                                    872 ;------------------------------------------------------------
                                    873 ;i             Allocated to registers 
                                    874 ;s             Allocated with name '_uart_put_integer_s_10000_41'
                                    875 ;------------------------------------------------------------
                                    876 ;	uart.c:85: void uart_put_integer(int i)	// Put Integer to UART, Require uart_i2s(),uart_put_string()
                                    877 ;	-----------------------------------------
                                    878 ;	 function uart_put_integer
                                    879 ;	-----------------------------------------
      000317                        880 _uart_put_integer:
                                    881 ;	uart.c:88: uart_i2s(i,s);uart_put_string(s);
      000317 75 08 1B         [24]  882 	mov	_uart_i2s_PARM_2,#_uart_put_integer_s_10000_41
      00031A 75 09 00         [24]  883 	mov	(_uart_i2s_PARM_2 + 1),#0x00
      00031D 75 0A 40         [24]  884 	mov	(_uart_i2s_PARM_2 + 2),#0x40
      000320 12 01 46         [24]  885 	lcall	_uart_i2s
      000323 90 00 1B         [24]  886 	mov	dptr,#_uart_put_integer_s_10000_41
      000326 75 F0 40         [24]  887 	mov	b, #0x40
                                    888 ;	uart.c:89: }
      000329 02 00 E4         [24]  889 	ljmp	_uart_put_string
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'uart_get_integer'
                                    892 ;------------------------------------------------------------
                                    893 ;s             Allocated with name '_uart_get_integer_s_10000_42'
                                    894 ;------------------------------------------------------------
                                    895 ;	uart.c:91: int uart_get_integer()		// Get Integer from UART, Require uart_get_string(),uart_s2i()
                                    896 ;	-----------------------------------------
                                    897 ;	 function uart_get_integer
                                    898 ;	-----------------------------------------
      00032C                        899 _uart_get_integer:
                                    900 ;	uart.c:94: uart_get_string(s);
      00032C 90 00 22         [24]  901 	mov	dptr,#_uart_get_integer_s_10000_42
      00032F 75 F0 40         [24]  902 	mov	b, #0x40
      000332 12 01 0F         [24]  903 	lcall	_uart_get_string
                                    904 ;	uart.c:95: return uart_s2i(s);
      000335 90 00 22         [24]  905 	mov	dptr,#_uart_get_integer_s_10000_42
      000338 75 F0 40         [24]  906 	mov	b, #0x40
                                    907 ;	uart.c:96: }
      00033B 02 02 9F         [24]  908 	ljmp	_uart_s2i
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'uart_put_byte'
                                    911 ;------------------------------------------------------------
                                    912 ;byte_data     Allocated to registers r7 
                                    913 ;------------------------------------------------------------
                                    914 ;	uart.c:98: void uart_put_byte(unsigned char byte_data)
                                    915 ;	-----------------------------------------
                                    916 ;	 function uart_put_byte
                                    917 ;	-----------------------------------------
      00033E                        918 _uart_put_byte:
      00033E AF 82            [24]  919 	mov	r7, dpl
                                    920 ;	uart.c:100: uart_put_char(uart_ASCII[byte_data/16]);uart_put_char(uart_ASCII[byte_data%16]);
      000340 8F 06            [24]  921 	mov	ar6,r7
      000342 75 F0 10         [24]  922 	mov	b,#0x10
      000345 EE               [12]  923 	mov	a,r6
      000346 84               [48]  924 	div	ab
      000347 90 05 7B         [24]  925 	mov	dptr,#_uart_ASCII
      00034A 93               [24]  926 	movc	a,@a+dptr
      00034B F5 82            [12]  927 	mov	dpl,a
      00034D C0 07            [24]  928 	push	ar7
      00034F 12 00 C3         [24]  929 	lcall	_uart_put_char
      000352 D0 07            [24]  930 	pop	ar7
      000354 53 07 0F         [24]  931 	anl	ar7,#0x0f
      000357 EF               [12]  932 	mov	a,r7
      000358 90 05 7B         [24]  933 	mov	dptr,#_uart_ASCII
      00035B 93               [24]  934 	movc	a,@a+dptr
      00035C F5 82            [12]  935 	mov	dpl,a
                                    936 ;	uart.c:101: }
      00035E 02 00 C3         [24]  937 	ljmp	_uart_put_char
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'uart_put_word'
                                    940 ;------------------------------------------------------------
                                    941 ;word_data     Allocated to registers r6 r7 
                                    942 ;------------------------------------------------------------
                                    943 ;	uart.c:103: void uart_put_word(unsigned int word_data)
                                    944 ;	-----------------------------------------
                                    945 ;	 function uart_put_word
                                    946 ;	-----------------------------------------
      000361                        947 _uart_put_word:
      000361 AE 82            [24]  948 	mov	r6, dpl
      000363 AF 83            [24]  949 	mov	r7, dph
                                    950 ;	uart.c:105: uart_put_byte(word_data/256);uart_put_byte(word_data%256);
      000365 8F 04            [24]  951 	mov	ar4,r7
      000367 8C 82            [24]  952 	mov	dpl,r4
      000369 C0 07            [24]  953 	push	ar7
      00036B C0 06            [24]  954 	push	ar6
      00036D 12 03 3E         [24]  955 	lcall	_uart_put_byte
      000370 D0 06            [24]  956 	pop	ar6
      000372 D0 07            [24]  957 	pop	ar7
      000374 8E 82            [24]  958 	mov	dpl,r6
                                    959 ;	uart.c:106: }
      000376 02 03 3E         [24]  960 	ljmp	_uart_put_byte
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'uart_get_nibble'
                                    963 ;------------------------------------------------------------
                                    964 ;c             Allocated to registers r7 
                                    965 ;------------------------------------------------------------
                                    966 ;	uart.c:108: char uart_get_nibble()
                                    967 ;	-----------------------------------------
                                    968 ;	 function uart_get_nibble
                                    969 ;	-----------------------------------------
      000379                        970 _uart_get_nibble:
                                    971 ;	uart.c:111: c=uart_get_char_echo();
      000379 12 00 D5         [24]  972 	lcall	_uart_get_char_echo
      00037C AF 82            [24]  973 	mov	r7, dpl
                                    974 ;	uart.c:112: if('0'<=c && c<='9')return(c-'0');
      00037E BF 30 00         [24]  975 	cjne	r7,#0x30,00154$
      000381                        976 00154$:
      000381 40 0D            [24]  977 	jc	00102$
                                    978 ;	free result
      000383 EF               [12]  979 	mov	a,r7
      000384 24 C6            [12]  980 	add	a,#0xff - 0x39
      000386 40 08            [24]  981 	jc	00102$
                                    982 ;	free result
      000388 8F 06            [24]  983 	mov	ar6,r7
      00038A EE               [12]  984 	mov	a,r6
      00038B 24 D0            [12]  985 	add	a,#0xd0
      00038D F5 82            [12]  986 	mov	dpl,a
      00038F 22               [24]  987 	ret
      000390                        988 00102$:
                                    989 ;	uart.c:113: if('A'<=c && c<='F')return(10+c-'A');
      000390 BF 41 00         [24]  990 	cjne	r7,#0x41,00157$
      000393                        991 00157$:
      000393 40 0D            [24]  992 	jc	00105$
                                    993 ;	free result
      000395 EF               [12]  994 	mov	a,r7
      000396 24 B9            [12]  995 	add	a,#0xff - 0x46
      000398 40 08            [24]  996 	jc	00105$
                                    997 ;	free result
      00039A 8F 06            [24]  998 	mov	ar6,r7
      00039C 74 C9            [12]  999 	mov	a,#0xc9
      00039E 2E               [12] 1000 	add	a, r6
      00039F F5 82            [12] 1001 	mov	dpl,a
      0003A1 22               [24] 1002 	ret
      0003A2                       1003 00105$:
                                   1004 ;	uart.c:114: if('a'<=c && c<='f')return(10+c-'a');
      0003A2 BF 61 00         [24] 1005 	cjne	r7,#0x61,00160$
      0003A5                       1006 00160$:
      0003A5 40 0B            [24] 1007 	jc	00108$
                                   1008 ;	free result
      0003A7 EF               [12] 1009 	mov	a,r7
      0003A8 24 99            [12] 1010 	add	a,#0xff - 0x66
      0003AA 40 06            [24] 1011 	jc	00108$
                                   1012 ;	free result
      0003AC 74 A9            [12] 1013 	mov	a,#0xa9
      0003AE 2F               [12] 1014 	add	a, r7
      0003AF F5 82            [12] 1015 	mov	dpl,a
      0003B1 22               [24] 1016 	ret
      0003B2                       1017 00108$:
                                   1018 ;	uart.c:115: return(0);
      0003B2 75 82 00         [24] 1019 	mov	dpl, #0x00
                                   1020 ;	uart.c:116: }
      0003B5 22               [24] 1021 	ret
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'uart_get_byte'
                                   1024 ;------------------------------------------------------------
                                   1025 ;	uart.c:118: unsigned char uart_get_byte()
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function uart_get_byte
                                   1028 ;	-----------------------------------------
      0003B6                       1029 _uart_get_byte:
                                   1030 ;	uart.c:120: return(16*uart_get_nibble()+uart_get_nibble());
      0003B6 12 03 79         [24] 1031 	lcall	_uart_get_nibble
      0003B9 E5 82            [12] 1032 	mov	a,dpl
      0003BB C4               [12] 1033 	swap	a
      0003BC 54 F0            [12] 1034 	anl	a,#0xf0
      0003BE FF               [12] 1035 	mov	r7,a
      0003BF C0 07            [24] 1036 	push	ar7
      0003C1 12 03 79         [24] 1037 	lcall	_uart_get_nibble
      0003C4 AE 82            [24] 1038 	mov	r6, dpl
      0003C6 D0 07            [24] 1039 	pop	ar7
      0003C8 EE               [12] 1040 	mov	a,r6
      0003C9 2F               [12] 1041 	add	a, r7
      0003CA F5 82            [12] 1042 	mov	dpl,a
                                   1043 ;	uart.c:121: }
      0003CC 22               [24] 1044 	ret
                                   1045 ;------------------------------------------------------------
                                   1046 ;Allocation info for local variables in function 'uart_get_word'
                                   1047 ;------------------------------------------------------------
                                   1048 ;	uart.c:123: unsigned int uart_get_word()
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function uart_get_word
                                   1051 ;	-----------------------------------------
      0003CD                       1052 _uart_get_word:
                                   1053 ;	uart.c:125: return(256*uart_get_byte()+uart_get_byte());
      0003CD 12 03 B6         [24] 1054 	lcall	_uart_get_byte
      0003D0 AE 82            [24] 1055 	mov	r6,dpl
      0003D2 7F 00            [12] 1056 	mov	r7,#0x00
      0003D4 C0 07            [24] 1057 	push	ar7
      0003D6 C0 06            [24] 1058 	push	ar6
      0003D8 12 03 B6         [24] 1059 	lcall	_uart_get_byte
      0003DB AD 82            [24] 1060 	mov	r5, dpl
      0003DD D0 06            [24] 1061 	pop	ar6
      0003DF D0 07            [24] 1062 	pop	ar7
      0003E1 7C 00            [12] 1063 	mov	r4,#0x00
      0003E3 ED               [12] 1064 	mov	a,r5
      0003E4 2F               [12] 1065 	add	a, r7
      0003E5 F5 82            [12] 1066 	mov	dpl,a
      0003E7 EC               [12] 1067 	mov	a,r4
      0003E8 3E               [12] 1068 	addc	a, r6
      0003E9 F5 83            [12] 1069 	mov	dph,a
                                   1070 ;	uart.c:126: }
      0003EB 22               [24] 1071 	ret
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'main'
                                   1074 ;------------------------------------------------------------
                                   1075 ;c             Allocated to registers r7 
                                   1076 ;val           Allocated to registers r6 
                                   1077 ;------------------------------------------------------------
                                   1078 ;	main.c:4: void main(void)
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function main
                                   1081 ;	-----------------------------------------
      0003EC                       1082 _main:
                                   1083 ;	main.c:9: uart_initialize();
      0003EC 12 00 AA         [24] 1084 	lcall	_uart_initialize
                                   1085 ;	main.c:11: P2 = 0xFF;
      0003EF 75 A0 FF         [24] 1086 	mov	_P2,#0xff
                                   1087 ;	main.c:13: while(1){
      0003F2                       1088 00114$:
                                   1089 ;	main.c:14: c = uart_get_char_echo();
      0003F2 12 00 D5         [24] 1090 	lcall	_uart_get_char_echo
      0003F5 AF 82            [24] 1091 	mov	r7, dpl
                                   1092 ;	main.c:16: if(c >= '0' && c <= '9'){
      0003F7 BF 30 00         [24] 1093 	cjne	r7,#0x30,00174$
      0003FA                       1094 00174$:
      0003FA 40 12            [24] 1095 	jc	00110$
      0003FC EF               [12] 1096 	mov	a,r7
      0003FD 24 C6            [12] 1097 	add	a,#0xff - 0x39
      0003FF 40 0D            [24] 1098 	jc	00110$
                                   1099 ;	free result
                                   1100 ;	main.c:17: val = c - '0';
      000401 8F 06            [24] 1101 	mov	ar6,r7
      000403 EE               [12] 1102 	mov	a,r6
      000404 24 D0            [12] 1103 	add	a,#0xd0
      000406 FE               [12] 1104 	mov	r6,a
                                   1105 ;	main.c:18: P2 = ~val;
      000407 74 FF            [12] 1106 	mov	a,#0xff
      000409 6E               [12] 1107 	xrl	a,r6
      00040A F5 A0            [12] 1108 	mov	_P2,a
      00040C 80 E4            [24] 1109 	sjmp	00114$
      00040E                       1110 00110$:
                                   1111 ;	main.c:20: else if(c >= 'A' && c <= 'F'){
      00040E BF 41 00         [24] 1112 	cjne	r7,#0x41,00177$
      000411                       1113 00177$:
      000411 40 12            [24] 1114 	jc	00106$
      000413 EF               [12] 1115 	mov	a,r7
      000414 24 B9            [12] 1116 	add	a,#0xff - 0x46
      000416 40 0D            [24] 1117 	jc	00106$
                                   1118 ;	free result
                                   1119 ;	main.c:21: val = c - 'A' + 10;
      000418 8F 06            [24] 1120 	mov	ar6,r7
      00041A 74 C9            [12] 1121 	mov	a,#0xc9
      00041C 2E               [12] 1122 	add	a, r6
      00041D FE               [12] 1123 	mov	r6,a
                                   1124 ;	main.c:22: P2 = ~val;
      00041E 74 FF            [12] 1125 	mov	a,#0xff
      000420 6E               [12] 1126 	xrl	a,r6
      000421 F5 A0            [12] 1127 	mov	_P2,a
      000423 80 CD            [24] 1128 	sjmp	00114$
      000425                       1129 00106$:
                                   1130 ;	main.c:24: else if(c >= 'a' && c <= 'f'){
      000425 BF 61 00         [24] 1131 	cjne	r7,#0x61,00180$
      000428                       1132 00180$:
      000428 40 10            [24] 1133 	jc	00102$
      00042A EF               [12] 1134 	mov	a,r7
      00042B 24 99            [12] 1135 	add	a,#0xff - 0x66
      00042D 40 0B            [24] 1136 	jc	00102$
                                   1137 ;	free result
                                   1138 ;	main.c:25: val = c - 'a' + 10;
      00042F 74 A9            [12] 1139 	mov	a,#0xa9
      000431 2F               [12] 1140 	add	a, r7
      000432 FF               [12] 1141 	mov	r7,a
                                   1142 ;	main.c:26: P2 = ~val;
      000433 74 FF            [12] 1143 	mov	a,#0xff
      000435 6F               [12] 1144 	xrl	a,r7
      000436 F5 A0            [12] 1145 	mov	_P2,a
      000438 80 B8            [24] 1146 	sjmp	00114$
      00043A                       1147 00102$:
                                   1148 ;	main.c:29: P2 = 0xFF;
      00043A 75 A0 FF         [24] 1149 	mov	_P2,#0xff
                                   1150 ;	main.c:31: }
      00043D 80 B3            [24] 1151 	sjmp	00114$
                                   1152 	.area CSEG    (CODE)
                                   1153 	.area CONST   (CODE)
                                   1154 	.area CONST   (CODE)
      00057B                       1155 _uart_ASCII:
      00057B 30 31 32 33 34 35 36  1156 	.ascii "0123456789ABCDEF"
             37 38 39 41 42 43 44
             45 46
      00058B 00                    1157 	.db 0x00
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area XINIT   (CODE)
                                   1160 	.area CABS    (ABS,CODE)
