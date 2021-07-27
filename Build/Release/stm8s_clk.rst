                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_HSECmd
                                     14 	.globl _CLK_ClockSwitchConfig
                                     15 	.globl _CLK_GetClockFreq
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 
                                     29 ; default segment ordering for linker
                                     30 	.area HOME
                                     31 	.area GSINIT
                                     32 	.area GSFINAL
                                     33 	.area CONST
                                     34 	.area INITIALIZER
                                     35 	.area CODE
                                     36 
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
                                     41 	.area GSINIT
                                     42 	.area GSFINAL
                                     43 	.area GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area CODE
                                     53 ;	Source/Std_Lib/Src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                     54 ;	-----------------------------------------
                                     55 ;	 function CLK_HSECmd
                                     56 ;	-----------------------------------------
      0082C0                         57 _CLK_HSECmd:
                                     58 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082C0 C6 50 C1         [ 1]   59 	ld	a, 0x50c1
                                     60 ;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0082C3 0D 03            [ 1]   61 	tnz	(0x03, sp)
      0082C5 27 06            [ 1]   62 	jreq	00102$
                                     63 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082C7 AA 01            [ 1]   64 	or	a, #0x01
      0082C9 C7 50 C1         [ 1]   65 	ld	0x50c1, a
      0082CC 81               [ 4]   66 	ret
      0082CD                         67 00102$:
                                     68 ;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082CD A4 FE            [ 1]   69 	and	a, #0xfe
      0082CF C7 50 C1         [ 1]   70 	ld	0x50c1, a
                                     71 ;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
      0082D2 81               [ 4]   72 	ret
                                     73 ;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                     74 ;	-----------------------------------------
                                     75 ;	 function CLK_ClockSwitchConfig
                                     76 ;	-----------------------------------------
      0082D3                         77 _CLK_ClockSwitchConfig:
                                     78 ;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0082D3 C6 50 C3         [ 1]   79 	ld	a, 0x50c3
      0082D6 90 97            [ 1]   80 	ld	yl, a
                                     81 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082D8 C6 50 C5         [ 1]   82 	ld	a, 0x50c5
                                     83 ;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0082DB 88               [ 1]   84 	push	a
      0082DC 7B 04            [ 1]   85 	ld	a, (0x04, sp)
      0082DE 4A               [ 1]   86 	dec	a
      0082DF 84               [ 1]   87 	pop	a
      0082E0 26 37            [ 1]   88 	jrne	00122$
                                     89 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082E2 AA 02            [ 1]   90 	or	a, #0x02
      0082E4 C7 50 C5         [ 1]   91 	ld	0x50c5, a
      0082E7 C6 50 C5         [ 1]   92 	ld	a, 0x50c5
                                     93 ;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0082EA 0D 05            [ 1]   94 	tnz	(0x05, sp)
      0082EC 27 07            [ 1]   95 	jreq	00102$
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082EE AA 04            [ 1]   97 	or	a, #0x04
      0082F0 C7 50 C5         [ 1]   98 	ld	0x50c5, a
      0082F3 20 05            [ 2]   99 	jra	00103$
      0082F5                        100 00102$:
                                    101 ;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0082F5 A4 FB            [ 1]  102 	and	a, #0xfb
      0082F7 C7 50 C5         [ 1]  103 	ld	0x50c5, a
      0082FA                        104 00103$:
                                    105 ;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0082FA AE 50 C4         [ 2]  106 	ldw	x, #0x50c4
      0082FD 7B 04            [ 1]  107 	ld	a, (0x04, sp)
      0082FF F7               [ 1]  108 	ld	(x), a
                                    109 ;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008300 5F               [ 1]  110 	clrw	x
      008301 5A               [ 2]  111 	decw	x
      008302                        112 00105$:
      008302 C6 50 C5         [ 1]  113 	ld	a, 0x50c5
      008305 44               [ 1]  114 	srl	a
      008306 24 06            [ 1]  115 	jrnc	00107$
      008308 5D               [ 2]  116 	tnzw	x
      008309 27 03            [ 1]  117 	jreq	00107$
                                    118 ;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
      00830B 5A               [ 2]  119 	decw	x
      00830C 20 F4            [ 2]  120 	jra	00105$
      00830E                        121 00107$:
                                    122 ;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
      00830E 5D               [ 2]  123 	tnzw	x
      00830F 27 05            [ 1]  124 	jreq	00109$
                                    125 ;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
      008311 A6 01            [ 1]  126 	ld	a, #0x01
      008313 97               [ 1]  127 	ld	xl, a
      008314 20 34            [ 2]  128 	jra	00123$
      008316                        129 00109$:
                                    130 ;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
      008316 5F               [ 1]  131 	clrw	x
      008317 20 31            [ 2]  132 	jra	00123$
      008319                        133 00122$:
                                    134 ;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008319 0D 05            [ 1]  135 	tnz	(0x05, sp)
      00831B 27 07            [ 1]  136 	jreq	00112$
                                    137 ;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00831D AA 04            [ 1]  138 	or	a, #0x04
      00831F C7 50 C5         [ 1]  139 	ld	0x50c5, a
      008322 20 05            [ 2]  140 	jra	00113$
      008324                        141 00112$:
                                    142 ;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008324 A4 FB            [ 1]  143 	and	a, #0xfb
      008326 C7 50 C5         [ 1]  144 	ld	0x50c5, a
      008329                        145 00113$:
                                    146 ;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008329 AE 50 C4         [ 2]  147 	ldw	x, #0x50c4
      00832C 7B 04            [ 1]  148 	ld	a, (0x04, sp)
      00832E F7               [ 1]  149 	ld	(x), a
                                    150 ;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00832F 5F               [ 1]  151 	clrw	x
      008330 5A               [ 2]  152 	decw	x
      008331                        153 00115$:
      008331 C6 50 C5         [ 1]  154 	ld	a, 0x50c5
      008334 A5 08            [ 1]  155 	bcp	a, #0x08
      008336 27 06            [ 1]  156 	jreq	00117$
      008338 5D               [ 2]  157 	tnzw	x
      008339 27 03            [ 1]  158 	jreq	00117$
                                    159 ;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
      00833B 5A               [ 2]  160 	decw	x
      00833C 20 F3            [ 2]  161 	jra	00115$
      00833E                        162 00117$:
                                    163 ;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
      00833E 5D               [ 2]  164 	tnzw	x
      00833F 27 08            [ 1]  165 	jreq	00119$
                                    166 ;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008341 72 12 50 C5      [ 1]  167 	bset	20677, #1
                                    168 ;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
      008345 A6 01            [ 1]  169 	ld	a, #0x01
      008347 97               [ 1]  170 	ld	xl, a
                                    171 ;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
      008348 21                     172 	.byte 0x21
      008349                        173 00119$:
      008349 5F               [ 1]  174 	clrw	x
      00834A                        175 00123$:
                                    176 ;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
      00834A 9F               [ 1]  177 	ld	a, xl
      00834B 4D               [ 1]  178 	tnz	a
      00834C 27 2E            [ 1]  179 	jreq	00136$
                                    180 ;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00834E 0D 06            [ 1]  181 	tnz	(0x06, sp)
      008350 26 0C            [ 1]  182 	jrne	00132$
      008352 90 9F            [ 1]  183 	ld	a, yl
      008354 A1 E1            [ 1]  184 	cp	a, #0xe1
      008356 26 06            [ 1]  185 	jrne	00132$
                                    186 ;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008358 72 11 50 C0      [ 1]  187 	bres	20672, #0
      00835C 20 1E            [ 2]  188 	jra	00136$
      00835E                        189 00132$:
                                    190 ;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00835E 0D 06            [ 1]  191 	tnz	(0x06, sp)
      008360 26 0C            [ 1]  192 	jrne	00128$
      008362 90 9F            [ 1]  193 	ld	a, yl
      008364 A1 D2            [ 1]  194 	cp	a, #0xd2
      008366 26 06            [ 1]  195 	jrne	00128$
                                    196 ;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008368 72 17 50 C0      [ 1]  197 	bres	20672, #3
      00836C 20 0E            [ 2]  198 	jra	00136$
      00836E                        199 00128$:
                                    200 ;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00836E 0D 06            [ 1]  201 	tnz	(0x06, sp)
      008370 26 0A            [ 1]  202 	jrne	00136$
      008372 90 9F            [ 1]  203 	ld	a, yl
      008374 A1 B4            [ 1]  204 	cp	a, #0xb4
      008376 26 04            [ 1]  205 	jrne	00136$
                                    206 ;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008378 72 11 50 C1      [ 1]  207 	bres	20673, #0
      00837C                        208 00136$:
                                    209 ;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
      00837C 9F               [ 1]  210 	ld	a, xl
                                    211 ;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
      00837D 81               [ 4]  212 	ret
                                    213 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    214 ;	-----------------------------------------
                                    215 ;	 function CLK_GetClockFreq
                                    216 ;	-----------------------------------------
      00837E                        217 _CLK_GetClockFreq:
      00837E 52 04            [ 2]  218 	sub	sp, #4
                                    219 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008380 C6 50 C3         [ 1]  220 	ld	a, 0x50c3
                                    221 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008383 6B 04            [ 1]  222 	ld	(0x04, sp), a
      008385 A1 E1            [ 1]  223 	cp	a, #0xe1
      008387 26 26            [ 1]  224 	jrne	00105$
                                    225 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008389 C6 50 C6         [ 1]  226 	ld	a, 0x50c6
      00838C A4 18            [ 1]  227 	and	a, #0x18
                                    228 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00838E 44               [ 1]  229 	srl	a
      00838F 44               [ 1]  230 	srl	a
      008390 44               [ 1]  231 	srl	a
                                    232 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      008391 5F               [ 1]  233 	clrw	x
      008392 97               [ 1]  234 	ld	xl, a
      008393 1C 80 88         [ 2]  235 	addw	x, #(_HSIDivFactor + 0)
      008396 F6               [ 1]  236 	ld	a, (x)
                                    237 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008397 5F               [ 1]  238 	clrw	x
      008398 97               [ 1]  239 	ld	xl, a
      008399 90 5F            [ 1]  240 	clrw	y
      00839B 89               [ 2]  241 	pushw	x
      00839C 90 89            [ 2]  242 	pushw	y
      00839E 4B 00            [ 1]  243 	push	#0x00
      0083A0 4B 24            [ 1]  244 	push	#0x24
      0083A2 4B F4            [ 1]  245 	push	#0xf4
      0083A4 4B 00            [ 1]  246 	push	#0x00
      0083A6 CD 93 78         [ 4]  247 	call	__divulong
      0083A9 5B 08            [ 2]  248 	addw	sp, #8
      0083AB 1F 03            [ 2]  249 	ldw	(0x03, sp), x
      0083AD 20 1A            [ 2]  250 	jra	00106$
      0083AF                        251 00105$:
                                    252 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0083AF 7B 04            [ 1]  253 	ld	a, (0x04, sp)
      0083B1 A1 D2            [ 1]  254 	cp	a, #0xd2
      0083B3 26 0B            [ 1]  255 	jrne	00102$
                                    256 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0083B5 AE F4 00         [ 2]  257 	ldw	x, #0xf400
      0083B8 1F 03            [ 2]  258 	ldw	(0x03, sp), x
      0083BA 90 AE 00 01      [ 2]  259 	ldw	y, #0x0001
      0083BE 20 09            [ 2]  260 	jra	00106$
      0083C0                        261 00102$:
                                    262 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0083C0 AE 12 00         [ 2]  263 	ldw	x, #0x1200
      0083C3 1F 03            [ 2]  264 	ldw	(0x03, sp), x
      0083C5 90 AE 00 7A      [ 2]  265 	ldw	y, #0x007a
      0083C9                        266 00106$:
                                    267 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0083C9 1E 03            [ 2]  268 	ldw	x, (0x03, sp)
                                    269 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0083CB 5B 04            [ 2]  270 	addw	sp, #4
      0083CD 81               [ 4]  271 	ret
                                    272 	.area CODE
                                    273 	.area CONST
      008088                        274 _HSIDivFactor:
      008088 01                     275 	.db #0x01	; 1
      008089 02                     276 	.db #0x02	; 2
      00808A 04                     277 	.db #0x04	; 4
      00808B 08                     278 	.db #0x08	; 8
      00808C                        279 _CLKPrescTable:
      00808C 01                     280 	.db #0x01	; 1
      00808D 02                     281 	.db #0x02	; 2
      00808E 04                     282 	.db #0x04	; 4
      00808F 08                     283 	.db #0x08	; 8
      008090 0A                     284 	.db #0x0a	; 10
      008091 10                     285 	.db #0x10	; 16
      008092 14                     286 	.db #0x14	; 20
      008093 28                     287 	.db #0x28	; 40
                                    288 	.area INITIALIZER
                                    289 	.area CABS (ABS)
