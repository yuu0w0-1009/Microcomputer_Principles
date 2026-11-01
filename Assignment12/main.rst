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
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _KEY_MAP
                                    109 	.globl _SEG_TABLE
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
      000008                        225 _SEG_TABLE::
      000008                        226 	.ds 16
      000018                        227 _KEY_MAP::
      000018                        228 	.ds 16
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram
                                    231 ;--------------------------------------------------------
                                    232 	.area	OSEG    (OVR,DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area SSEG
      000028                        237 __start__stack:
      000028                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; uninitialized external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; initialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 4E         [24]  284 	ljmp	__sdcc_gsinit_startup
                                    285 ; restartable atomic support routines
      000003                        286 	.ds	5
      000008                        287 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  288 	nop
      000009 00               [12]  289 	nop
      00000A                        290 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  291 	movx	a, @r0
      00000B FB               [12]  292 	mov	r3, a
      00000C EA               [12]  293 	mov	a, r2
      00000D F2               [24]  294 	movx	@r0, a
      00000E 80 2C            [24]  295 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  296 	nop
      000011 00               [12]  297 	nop
      000012                        298 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  299 	movx	a, @dptr
      000013 FB               [12]  300 	mov	r3, a
      000014 EA               [12]  301 	mov	a, r2
      000015 F0               [24]  302 	movx	@dptr, a
      000016 80 24            [24]  303 	sjmp	sdcc_atomic_exchange_exit
      000018                        304 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  305 	mov	a, @r0
      000019 B5 02 02         [24]  306 	cjne	a, ar2, .+#5
      00001C EB               [12]  307 	mov	a, r3
      00001D F6               [12]  308 	mov	@r0, a
      00001E 22               [24]  309 	ret
      00001F 00               [12]  310 	nop
      000020                        311 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  312 	movx	a, @r0
      000021 B5 02 02         [24]  313 	cjne	a, ar2, .+#5
      000024 EB               [12]  314 	mov	a, r3
      000025 F2               [24]  315 	movx	@r0, a
      000026 22               [24]  316 	ret
      000027 00               [12]  317 	nop
      000028                        318 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  319 	movx	a, @dptr
      000029 B5 02 02         [24]  320 	cjne	a, ar2, .+#5
      00002C EB               [12]  321 	mov	a, r3
      00002D F0               [24]  322 	movx	@dptr, a
      00002E 22               [24]  323 	ret
      00002F                        324 sdcc_atomic_exchange_rollback_end::
                                    325 
      00002F                        326 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  327 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  328 	mov	r0, dpl
      000034 20 F5 D3         [24]  329 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        330 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  331 	mov	a, r2
      000038 C6               [12]  332 	xch	a, @r0
      000039 F5 82            [12]  333 	mov	dpl, a
      00003B 22               [24]  334 	ret
      00003C                        335 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  336 	mov	dpl, r3
      00003E 22               [24]  337 	ret
      00003F                        338 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  339 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  340 	mov	r0, dpl
      000044 20 F5 D9         [24]  341 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  342 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.globl __sdcc_gsinit_startup
                                    351 	.globl __sdcc_program_startup
                                    352 	.globl __start__stack
                                    353 	.globl __mcs51_genXINIT
                                    354 	.globl __mcs51_genXRAMCLEAR
                                    355 	.globl __mcs51_genRAMCLEAR
                                    356 ;	main.c:6: unsigned char SEG_TABLE[16] = {
      0000A7 75 08 C0         [24]  357 	mov	_SEG_TABLE,#0xc0
      0000AA 75 09 F9         [24]  358 	mov	(_SEG_TABLE + 0x0001),#0xf9
      0000AD 75 0A A4         [24]  359 	mov	(_SEG_TABLE + 0x0002),#0xa4
      0000B0 75 0B B0         [24]  360 	mov	(_SEG_TABLE + 0x0003),#0xb0
      0000B3 75 0C 99         [24]  361 	mov	(_SEG_TABLE + 0x0004),#0x99
      0000B6 75 0D 92         [24]  362 	mov	(_SEG_TABLE + 0x0005),#0x92
      0000B9 75 0E 82         [24]  363 	mov	(_SEG_TABLE + 0x0006),#0x82
      0000BC 75 0F F8         [24]  364 	mov	(_SEG_TABLE + 0x0007),#0xf8
      0000BF 75 10 80         [24]  365 	mov	(_SEG_TABLE + 0x0008),#0x80
      0000C2 75 11 90         [24]  366 	mov	(_SEG_TABLE + 0x0009),#0x90
      0000C5 75 12 88         [24]  367 	mov	(_SEG_TABLE + 0x000a),#0x88
      0000C8 75 13 83         [24]  368 	mov	(_SEG_TABLE + 0x000b),#0x83
      0000CB 75 14 C6         [24]  369 	mov	(_SEG_TABLE + 0x000c),#0xc6
      0000CE 75 15 A1         [24]  370 	mov	(_SEG_TABLE + 0x000d),#0xa1
      0000D1 75 16 86         [24]  371 	mov	(_SEG_TABLE + 0x000e),#0x86
      0000D4 75 17 8E         [24]  372 	mov	(_SEG_TABLE + 0x000f),#0x8e
                                    373 ;	main.c:14: unsigned char KEY_MAP[16] = {
      0000D7 75 18 01         [24]  374 	mov	_KEY_MAP,#0x01
      0000DA 75 19 02         [24]  375 	mov	(_KEY_MAP + 0x0001),#0x02
      0000DD 75 1A 03         [24]  376 	mov	(_KEY_MAP + 0x0002),#0x03
      0000E0 75 1B 0A         [24]  377 	mov	(_KEY_MAP + 0x0003),#0x0a
      0000E3 75 1C 04         [24]  378 	mov	(_KEY_MAP + 0x0004),#0x04
      0000E6 75 1D 05         [24]  379 	mov	(_KEY_MAP + 0x0005),#0x05
      0000E9 75 1E 06         [24]  380 	mov	(_KEY_MAP + 0x0006),#0x06
      0000EC 75 1F 0B         [24]  381 	mov	(_KEY_MAP + 0x0007),#0x0b
      0000EF 75 20 07         [24]  382 	mov	(_KEY_MAP + 0x0008),#0x07
      0000F2 75 21 08         [24]  383 	mov	(_KEY_MAP + 0x0009),#0x08
      0000F5 75 22 09         [24]  384 	mov	(_KEY_MAP + 0x000a),#0x09
      0000F8 75 23 0C         [24]  385 	mov	(_KEY_MAP + 0x000b),#0x0c
      0000FB 75 24 0F         [24]  386 	mov	(_KEY_MAP + 0x000c),#0x0f
      0000FE 75 25 00         [24]  387 	mov	(_KEY_MAP + 0x000d),#0x00
      000101 75 26 0E         [24]  388 	mov	(_KEY_MAP + 0x000e),#0x0e
      000104 75 27 0D         [24]  389 	mov	(_KEY_MAP + 0x000f),#0x0d
                                    390 	.area GSFINAL (CODE)
      000107 02 00 49         [24]  391 	ljmp	__sdcc_program_startup
                                    392 ;--------------------------------------------------------
                                    393 ; Home
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area HOME    (CODE)
      000049                        397 __sdcc_program_startup:
      000049 12 01 0A         [24]  398 	lcall	_main
      00004C                        399 __sdcc_program_exit:
      00004C 80 FE            [24]  400 	sjmp	.
                                    401 ;	return from main will return to caller
                                    402 ;--------------------------------------------------------
                                    403 ; code
                                    404 ;--------------------------------------------------------
                                    405 	.area CSEG    (CODE)
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'main'
                                    408 ;------------------------------------------------------------
                                    409 ;raw_code      Allocated to registers r7 
                                    410 ;disp_num      Allocated to registers r7 
                                    411 ;------------------------------------------------------------
                                    412 ;	main.c:21: void main(void) {
                                    413 ;	-----------------------------------------
                                    414 ;	 function main
                                    415 ;	-----------------------------------------
      00010A                        416 _main:
                           000007   417 	ar7 = 0x07
                           000006   418 	ar6 = 0x06
                           000005   419 	ar5 = 0x05
                           000004   420 	ar4 = 0x04
                           000003   421 	ar3 = 0x03
                           000002   422 	ar2 = 0x02
                           000001   423 	ar1 = 0x01
                           000000   424 	ar0 = 0x00
                                    425 ;	main.c:25: P1 = 0xFF;
      00010A 75 90 FF         [24]  426 	mov	_P1,#0xff
                                    427 ;	main.c:26: P2 = 0xFF;
      00010D 75 A0 FF         [24]  428 	mov	_P2,#0xff
                                    429 ;	main.c:28: while (1) {
      000110                        430 00107$:
                                    431 ;	main.c:29: if (DATA_AV == 1) {
      000110 30 94 FD         [24]  432 	jnb	_P1_4,00107$
                                    433 ;	main.c:30: raw_code = P1 & 0x0F;          // 讀取 P1.0 ~ P1.3 
      000113 E5 90            [12]  434 	mov	a,_P1
      000115 54 0F            [12]  435 	anl	a,#0x0f
                                    436 ;	main.c:31: disp_num = KEY_MAP[raw_code];  // 查表
      000117 24 18            [12]  437 	add	a, #_KEY_MAP
      000119 F9               [12]  438 	mov	r1,a
                                    439 ;	main.c:32: P2 = SEG_TABLE[disp_num];      // 輸出
      00011A E7               [12]  440 	mov	a,@r1
      00011B 24 08            [12]  441 	add	a, #_SEG_TABLE
      00011D F9               [12]  442 	mov	r1,a
      00011E 87 A0            [24]  443 	mov	_P2,@r1
                                    444 ;	main.c:34: while (DATA_AV == 1);          // 等待按鍵放開
      000120                        445 00101$:
      000120 20 94 FD         [24]  446 	jb	_P1_4,00101$
                                    447 ;	main.c:37: }
      000123 80 EB            [24]  448 	sjmp	00107$
                                    449 	.area CSEG    (CODE)
                                    450 	.area CONST   (CODE)
                                    451 	.area XINIT   (CODE)
                                    452 	.area CABS    (ABS,CODE)
