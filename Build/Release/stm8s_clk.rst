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
      0082A9                         57 _CLK_HSECmd:
                                     58 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082A9 C6 50 C1         [ 1]   59 	ld	a, 0x50c1
                                     60 ;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0082AC 0D 03            [ 1]   61 	tnz	(0x03, sp)
      0082AE 27 06            [ 1]   62 	jreq	00102$
                                     63 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082B0 AA 01            [ 1]   64 	or	a, #0x01
      0082B2 C7 50 C1         [ 1]   65 	ld	0x50c1, a
      0082B5 81               [ 4]   66 	ret
      0082B6                         67 00102$:
                                     68 ;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082B6 A4 FE            [ 1]   69 	and	a, #0xfe
      0082B8 C7 50 C1         [ 1]   70 	ld	0x50c1, a
                                     71 ;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
      0082BB 81               [ 4]   72 	ret
                                     73 ;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                     74 ;	-----------------------------------------
                                     75 ;	 function CLK_ClockSwitchConfig
                                     76 ;	-----------------------------------------
      0082BC                         77 _CLK_ClockSwitchConfig:
                                     78 ;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0082BC C6 50 C3         [ 1]   79 	ld	a, 0x50c3
      0082BF 90 97            [ 1]   80 	ld	yl, a
                                     81 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082C1 C6 50 C5         [ 1]   82 	ld	a, 0x50c5
                                     83 ;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0082C4 88               [ 1]   84 	push	a
      0082C5 7B 04            [ 1]   85 	ld	a, (0x04, sp)
      0082C7 4A               [ 1]   86 	dec	a
      0082C8 84               [ 1]   87 	pop	a
      0082C9 26 37            [ 1]   88 	jrne	00122$
                                     89 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082CB AA 02            [ 1]   90 	or	a, #0x02
      0082CD C7 50 C5         [ 1]   91 	ld	0x50c5, a
      0082D0 C6 50 C5         [ 1]   92 	ld	a, 0x50c5
                                     93 ;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0082D3 0D 05            [ 1]   94 	tnz	(0x05, sp)
      0082D5 27 07            [ 1]   95 	jreq	00102$
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082D7 AA 04            [ 1]   97 	or	a, #0x04
      0082D9 C7 50 C5         [ 1]   98 	ld	0x50c5, a
      0082DC 20 05            [ 2]   99 	jra	00103$
      0082DE                        100 00102$:
                                    101 ;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0082DE A4 FB            [ 1]  102 	and	a, #0xfb
      0082E0 C7 50 C5         [ 1]  103 	ld	0x50c5, a
      0082E3                        104 00103$:
                                    105 ;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0082E3 AE 50 C4         [ 2]  106 	ldw	x, #0x50c4
      0082E6 7B 04            [ 1]  107 	ld	a, (0x04, sp)
      0082E8 F7               [ 1]  108 	ld	(x), a
                                    109 ;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0082E9 5F               [ 1]  110 	clrw	x
      0082EA 5A               [ 2]  111 	decw	x
      0082EB                        112 00105$:
      0082EB C6 50 C5         [ 1]  113 	ld	a, 0x50c5
      0082EE 44               [ 1]  114 	srl	a
      0082EF 24 06            [ 1]  115 	jrnc	00107$
      0082F1 5D               [ 2]  116 	tnzw	x
      0082F2 27 03            [ 1]  117 	jreq	00107$
                                    118 ;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
      0082F4 5A               [ 2]  119 	decw	x
      0082F5 20 F4            [ 2]  120 	jra	00105$
      0082F7                        121 00107$:
                                    122 ;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
      0082F7 5D               [ 2]  123 	tnzw	x
      0082F8 27 05            [ 1]  124 	jreq	00109$
                                    125 ;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
      0082FA A6 01            [ 1]  126 	ld	a, #0x01
      0082FC 97               [ 1]  127 	ld	xl, a
      0082FD 20 34            [ 2]  128 	jra	00123$
      0082FF                        129 00109$:
                                    130 ;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
      0082FF 5F               [ 1]  131 	clrw	x
      008300 20 31            [ 2]  132 	jra	00123$
      008302                        133 00122$:
                                    134 ;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008302 0D 05            [ 1]  135 	tnz	(0x05, sp)
      008304 27 07            [ 1]  136 	jreq	00112$
                                    137 ;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008306 AA 04            [ 1]  138 	or	a, #0x04
      008308 C7 50 C5         [ 1]  139 	ld	0x50c5, a
      00830B 20 05            [ 2]  140 	jra	00113$
      00830D                        141 00112$:
                                    142 ;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00830D A4 FB            [ 1]  143 	and	a, #0xfb
      00830F C7 50 C5         [ 1]  144 	ld	0x50c5, a
      008312                        145 00113$:
                                    146 ;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008312 AE 50 C4         [ 2]  147 	ldw	x, #0x50c4
      008315 7B 04            [ 1]  148 	ld	a, (0x04, sp)
      008317 F7               [ 1]  149 	ld	(x), a
                                    150 ;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008318 5F               [ 1]  151 	clrw	x
      008319 5A               [ 2]  152 	decw	x
      00831A                        153 00115$:
      00831A C6 50 C5         [ 1]  154 	ld	a, 0x50c5
      00831D A5 08            [ 1]  155 	bcp	a, #0x08
      00831F 27 06            [ 1]  156 	jreq	00117$
      008321 5D               [ 2]  157 	tnzw	x
      008322 27 03            [ 1]  158 	jreq	00117$
                                    159 ;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
      008324 5A               [ 2]  160 	decw	x
      008325 20 F3            [ 2]  161 	jra	00115$
      008327                        162 00117$:
                                    163 ;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
      008327 5D               [ 2]  164 	tnzw	x
      008328 27 08            [ 1]  165 	jreq	00119$
                                    166 ;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00832A 72 12 50 C5      [ 1]  167 	bset	20677, #1
                                    168 ;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
      00832E A6 01            [ 1]  169 	ld	a, #0x01
      008330 97               [ 1]  170 	ld	xl, a
                                    171 ;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
      008331 21                     172 	.byte 0x21
      008332                        173 00119$:
      008332 5F               [ 1]  174 	clrw	x
      008333                        175 00123$:
                                    176 ;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
      008333 9F               [ 1]  177 	ld	a, xl
      008334 4D               [ 1]  178 	tnz	a
      008335 27 2E            [ 1]  179 	jreq	00136$
                                    180 ;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008337 0D 06            [ 1]  181 	tnz	(0x06, sp)
      008339 26 0C            [ 1]  182 	jrne	00132$
      00833B 90 9F            [ 1]  183 	ld	a, yl
      00833D A1 E1            [ 1]  184 	cp	a, #0xe1
      00833F 26 06            [ 1]  185 	jrne	00132$
                                    186 ;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008341 72 11 50 C0      [ 1]  187 	bres	20672, #0
      008345 20 1E            [ 2]  188 	jra	00136$
      008347                        189 00132$:
                                    190 ;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008347 0D 06            [ 1]  191 	tnz	(0x06, sp)
      008349 26 0C            [ 1]  192 	jrne	00128$
      00834B 90 9F            [ 1]  193 	ld	a, yl
      00834D A1 D2            [ 1]  194 	cp	a, #0xd2
      00834F 26 06            [ 1]  195 	jrne	00128$
                                    196 ;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008351 72 17 50 C0      [ 1]  197 	bres	20672, #3
      008355 20 0E            [ 2]  198 	jra	00136$
      008357                        199 00128$:
                                    200 ;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008357 0D 06            [ 1]  201 	tnz	(0x06, sp)
      008359 26 0A            [ 1]  202 	jrne	00136$
      00835B 90 9F            [ 1]  203 	ld	a, yl
      00835D A1 B4            [ 1]  204 	cp	a, #0xb4
      00835F 26 04            [ 1]  205 	jrne	00136$
                                    206 ;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008361 72 11 50 C1      [ 1]  207 	bres	20673, #0
      008365                        208 00136$:
                                    209 ;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
      008365 9F               [ 1]  210 	ld	a, xl
                                    211 ;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
      008366 81               [ 4]  212 	ret
                                    213 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    214 ;	-----------------------------------------
                                    215 ;	 function CLK_GetClockFreq
                                    216 ;	-----------------------------------------
      008367                        217 _CLK_GetClockFreq:
      008367 52 04            [ 2]  218 	sub	sp, #4
                                    219 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008369 C6 50 C3         [ 1]  220 	ld	a, 0x50c3
                                    221 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00836C 6B 04            [ 1]  222 	ld	(0x04, sp), a
      00836E A1 E1            [ 1]  223 	cp	a, #0xe1
      008370 26 26            [ 1]  224 	jrne	00105$
                                    225 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008372 C6 50 C6         [ 1]  226 	ld	a, 0x50c6
      008375 A4 18            [ 1]  227 	and	a, #0x18
                                    228 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008377 44               [ 1]  229 	srl	a
      008378 44               [ 1]  230 	srl	a
      008379 44               [ 1]  231 	srl	a
                                    232 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00837A 5F               [ 1]  233 	clrw	x
      00837B 97               [ 1]  234 	ld	xl, a
      00837C 1C 80 88         [ 2]  235 	addw	x, #(_HSIDivFactor + 0)
      00837F F6               [ 1]  236 	ld	a, (x)
                                    237 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008380 5F               [ 1]  238 	clrw	x
      008381 97               [ 1]  239 	ld	xl, a
      008382 90 5F            [ 1]  240 	clrw	y
      008384 89               [ 2]  241 	pushw	x
      008385 90 89            [ 2]  242 	pushw	y
      008387 4B 00            [ 1]  243 	push	#0x00
      008389 4B 24            [ 1]  244 	push	#0x24
      00838B 4B F4            [ 1]  245 	push	#0xf4
      00838D 4B 00            [ 1]  246 	push	#0x00
      00838F CD 94 F2         [ 4]  247 	call	__divulong
      008392 5B 08            [ 2]  248 	addw	sp, #8
      008394 1F 03            [ 2]  249 	ldw	(0x03, sp), x
      008396 20 1A            [ 2]  250 	jra	00106$
      008398                        251 00105$:
                                    252 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      008398 7B 04            [ 1]  253 	ld	a, (0x04, sp)
      00839A A1 D2            [ 1]  254 	cp	a, #0xd2
      00839C 26 0B            [ 1]  255 	jrne	00102$
                                    256 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      00839E AE F4 00         [ 2]  257 	ldw	x, #0xf400
      0083A1 1F 03            [ 2]  258 	ldw	(0x03, sp), x
      0083A3 90 AE 00 01      [ 2]  259 	ldw	y, #0x0001
      0083A7 20 09            [ 2]  260 	jra	00106$
      0083A9                        261 00102$:
                                    262 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0083A9 AE 12 00         [ 2]  263 	ldw	x, #0x1200
      0083AC 1F 03            [ 2]  264 	ldw	(0x03, sp), x
      0083AE 90 AE 00 7A      [ 2]  265 	ldw	y, #0x007a
      0083B2                        266 00106$:
                                    267 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0083B2 1E 03            [ 2]  268 	ldw	x, (0x03, sp)
                                    269 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0083B4 5B 04            [ 2]  270 	addw	sp, #4
      0083B6 81               [ 4]  271 	ret
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
