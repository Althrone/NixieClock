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
                           000000    53 	Sstm8s_clk$CLK_HSECmd$0 ==.
                                     54 ;	Source/Std_Lib/Src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                     55 ;	-----------------------------------------
                                     56 ;	 function CLK_HSECmd
                                     57 ;	-----------------------------------------
      0082C7                         58 _CLK_HSECmd:
                           000000    59 	Sstm8s_clk$CLK_HSECmd$1 ==.
                           000000    60 	Sstm8s_clk$CLK_HSECmd$2 ==.
                                     61 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082C7 C6 50 C1         [ 1]   62 	ld	a, 0x50c1
                           000003    63 	Sstm8s_clk$CLK_HSECmd$3 ==.
                                     64 ;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0082CA 0D 03            [ 1]   65 	tnz	(0x03, sp)
      0082CC 27 07            [ 1]   66 	jreq	00102$
                           000007    67 	Sstm8s_clk$CLK_HSECmd$4 ==.
                           000007    68 	Sstm8s_clk$CLK_HSECmd$5 ==.
                                     69 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082CE AA 01            [ 1]   70 	or	a, #0x01
      0082D0 C7 50 C1         [ 1]   71 	ld	0x50c1, a
                           00000C    72 	Sstm8s_clk$CLK_HSECmd$6 ==.
      0082D3 20 05            [ 2]   73 	jra	00104$
      0082D5                         74 00102$:
                           00000E    75 	Sstm8s_clk$CLK_HSECmd$7 ==.
                           00000E    76 	Sstm8s_clk$CLK_HSECmd$8 ==.
                                     77 ;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082D5 A4 FE            [ 1]   78 	and	a, #0xfe
      0082D7 C7 50 C1         [ 1]   79 	ld	0x50c1, a
                           000013    80 	Sstm8s_clk$CLK_HSECmd$9 ==.
      0082DA                         81 00104$:
                           000013    82 	Sstm8s_clk$CLK_HSECmd$10 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
                           000013    84 	Sstm8s_clk$CLK_HSECmd$11 ==.
                           000013    85 	XG$CLK_HSECmd$0$0 ==.
      0082DA 81               [ 4]   86 	ret
                           000014    87 	Sstm8s_clk$CLK_HSECmd$12 ==.
                           000014    88 	Sstm8s_clk$CLK_ClockSwitchConfig$13 ==.
                                     89 ;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                     90 ;	-----------------------------------------
                                     91 ;	 function CLK_ClockSwitchConfig
                                     92 ;	-----------------------------------------
      0082DB                         93 _CLK_ClockSwitchConfig:
                           000014    94 	Sstm8s_clk$CLK_ClockSwitchConfig$14 ==.
                           000014    95 	Sstm8s_clk$CLK_ClockSwitchConfig$15 ==.
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0082DB C6 50 C3         [ 1]   97 	ld	a, 0x50c3
      0082DE 90 97            [ 1]   98 	ld	yl, a
                           000019    99 	Sstm8s_clk$CLK_ClockSwitchConfig$16 ==.
                                    100 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082E0 C6 50 C5         [ 1]  101 	ld	a, 0x50c5
                           00001C   102 	Sstm8s_clk$CLK_ClockSwitchConfig$17 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0082E3 88               [ 1]  104 	push	a
                           00001D   105 	Sstm8s_clk$CLK_ClockSwitchConfig$18 ==.
      0082E4 7B 04            [ 1]  106 	ld	a, (0x04, sp)
      0082E6 4A               [ 1]  107 	dec	a
      0082E7 84               [ 1]  108 	pop	a
                           000021   109 	Sstm8s_clk$CLK_ClockSwitchConfig$19 ==.
      0082E8 27 03            [ 1]  110 	jreq	00233$
      0082EA CC 83 26         [ 2]  111 	jp	00122$
      0082ED                        112 00233$:
                           000026   113 	Sstm8s_clk$CLK_ClockSwitchConfig$20 ==.
                           000026   114 	Sstm8s_clk$CLK_ClockSwitchConfig$21 ==.
                           000026   115 	Sstm8s_clk$CLK_ClockSwitchConfig$22 ==.
                                    116 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082ED AA 02            [ 1]  117 	or	a, #0x02
      0082EF C7 50 C5         [ 1]  118 	ld	0x50c5, a
                           00002B   119 	Sstm8s_clk$CLK_ClockSwitchConfig$23 ==.
      0082F2 C6 50 C5         [ 1]  120 	ld	a, 0x50c5
                           00002E   121 	Sstm8s_clk$CLK_ClockSwitchConfig$24 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0082F5 0D 05            [ 1]  123 	tnz	(0x05, sp)
      0082F7 27 07            [ 1]  124 	jreq	00102$
                           000032   125 	Sstm8s_clk$CLK_ClockSwitchConfig$25 ==.
                           000032   126 	Sstm8s_clk$CLK_ClockSwitchConfig$26 ==.
                                    127 ;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082F9 AA 04            [ 1]  128 	or	a, #0x04
      0082FB C7 50 C5         [ 1]  129 	ld	0x50c5, a
                           000037   130 	Sstm8s_clk$CLK_ClockSwitchConfig$27 ==.
      0082FE 20 05            [ 2]  131 	jra	00103$
      008300                        132 00102$:
                           000039   133 	Sstm8s_clk$CLK_ClockSwitchConfig$28 ==.
                           000039   134 	Sstm8s_clk$CLK_ClockSwitchConfig$29 ==.
                                    135 ;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008300 A4 FB            [ 1]  136 	and	a, #0xfb
      008302 C7 50 C5         [ 1]  137 	ld	0x50c5, a
                           00003E   138 	Sstm8s_clk$CLK_ClockSwitchConfig$30 ==.
      008305                        139 00103$:
                           00003E   140 	Sstm8s_clk$CLK_ClockSwitchConfig$31 ==.
                                    141 ;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008305 AE 50 C4         [ 2]  142 	ldw	x, #0x50c4
      008308 7B 04            [ 1]  143 	ld	a, (0x04, sp)
      00830A F7               [ 1]  144 	ld	(x), a
                           000044   145 	Sstm8s_clk$CLK_ClockSwitchConfig$32 ==.
                           000044   146 	Sstm8s_clk$CLK_ClockSwitchConfig$33 ==.
                                    147 ;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      00830B 5F               [ 1]  148 	clrw	x
      00830C 5A               [ 2]  149 	decw	x
      00830D                        150 00105$:
      00830D C6 50 C5         [ 1]  151 	ld	a, 0x50c5
      008310 44               [ 1]  152 	srl	a
      008311 24 06            [ 1]  153 	jrnc	00107$
      008313 5D               [ 2]  154 	tnzw	x
      008314 27 03            [ 1]  155 	jreq	00107$
                           00004F   156 	Sstm8s_clk$CLK_ClockSwitchConfig$34 ==.
                           00004F   157 	Sstm8s_clk$CLK_ClockSwitchConfig$35 ==.
                                    158 ;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
      008316 5A               [ 2]  159 	decw	x
                           000050   160 	Sstm8s_clk$CLK_ClockSwitchConfig$36 ==.
      008317 20 F4            [ 2]  161 	jra	00105$
      008319                        162 00107$:
                           000052   163 	Sstm8s_clk$CLK_ClockSwitchConfig$37 ==.
                                    164 ;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
      008319 5D               [ 2]  165 	tnzw	x
      00831A 27 06            [ 1]  166 	jreq	00109$
                           000055   167 	Sstm8s_clk$CLK_ClockSwitchConfig$38 ==.
                           000055   168 	Sstm8s_clk$CLK_ClockSwitchConfig$39 ==.
                                    169 ;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
      00831C A6 01            [ 1]  170 	ld	a, #0x01
      00831E 97               [ 1]  171 	ld	xl, a
                           000058   172 	Sstm8s_clk$CLK_ClockSwitchConfig$40 ==.
      00831F CC 83 58         [ 2]  173 	jp	00123$
      008322                        174 00109$:
                           00005B   175 	Sstm8s_clk$CLK_ClockSwitchConfig$41 ==.
                           00005B   176 	Sstm8s_clk$CLK_ClockSwitchConfig$42 ==.
                                    177 ;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
      008322 5F               [ 1]  178 	clrw	x
                           00005C   179 	Sstm8s_clk$CLK_ClockSwitchConfig$43 ==.
      008323 CC 83 58         [ 2]  180 	jp	00123$
      008326                        181 00122$:
                           00005F   182 	Sstm8s_clk$CLK_ClockSwitchConfig$44 ==.
                           00005F   183 	Sstm8s_clk$CLK_ClockSwitchConfig$45 ==.
                                    184 ;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
      008326 0D 05            [ 1]  185 	tnz	(0x05, sp)
      008328 27 07            [ 1]  186 	jreq	00112$
                           000063   187 	Sstm8s_clk$CLK_ClockSwitchConfig$46 ==.
                           000063   188 	Sstm8s_clk$CLK_ClockSwitchConfig$47 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00832A AA 04            [ 1]  190 	or	a, #0x04
      00832C C7 50 C5         [ 1]  191 	ld	0x50c5, a
                           000068   192 	Sstm8s_clk$CLK_ClockSwitchConfig$48 ==.
      00832F 20 05            [ 2]  193 	jra	00113$
      008331                        194 00112$:
                           00006A   195 	Sstm8s_clk$CLK_ClockSwitchConfig$49 ==.
                           00006A   196 	Sstm8s_clk$CLK_ClockSwitchConfig$50 ==.
                                    197 ;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008331 A4 FB            [ 1]  198 	and	a, #0xfb
      008333 C7 50 C5         [ 1]  199 	ld	0x50c5, a
                           00006F   200 	Sstm8s_clk$CLK_ClockSwitchConfig$51 ==.
      008336                        201 00113$:
                           00006F   202 	Sstm8s_clk$CLK_ClockSwitchConfig$52 ==.
                                    203 ;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008336 AE 50 C4         [ 2]  204 	ldw	x, #0x50c4
      008339 7B 04            [ 1]  205 	ld	a, (0x04, sp)
      00833B F7               [ 1]  206 	ld	(x), a
                           000075   207 	Sstm8s_clk$CLK_ClockSwitchConfig$53 ==.
                           000075   208 	Sstm8s_clk$CLK_ClockSwitchConfig$54 ==.
                                    209 ;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00833C 5F               [ 1]  210 	clrw	x
      00833D 5A               [ 2]  211 	decw	x
      00833E                        212 00115$:
      00833E C6 50 C5         [ 1]  213 	ld	a, 0x50c5
      008341 A5 08            [ 1]  214 	bcp	a, #0x08
      008343 27 06            [ 1]  215 	jreq	00117$
      008345 5D               [ 2]  216 	tnzw	x
      008346 27 03            [ 1]  217 	jreq	00117$
                           000081   218 	Sstm8s_clk$CLK_ClockSwitchConfig$55 ==.
                           000081   219 	Sstm8s_clk$CLK_ClockSwitchConfig$56 ==.
                                    220 ;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
      008348 5A               [ 2]  221 	decw	x
                           000082   222 	Sstm8s_clk$CLK_ClockSwitchConfig$57 ==.
      008349 20 F3            [ 2]  223 	jra	00115$
      00834B                        224 00117$:
                           000084   225 	Sstm8s_clk$CLK_ClockSwitchConfig$58 ==.
                                    226 ;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
      00834B 5D               [ 2]  227 	tnzw	x
      00834C 27 09            [ 1]  228 	jreq	00119$
                           000087   229 	Sstm8s_clk$CLK_ClockSwitchConfig$59 ==.
                           000087   230 	Sstm8s_clk$CLK_ClockSwitchConfig$60 ==.
                                    231 ;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      00834E 72 12 50 C5      [ 1]  232 	bset	20677, #1
                           00008B   233 	Sstm8s_clk$CLK_ClockSwitchConfig$61 ==.
                                    234 ;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
      008352 A6 01            [ 1]  235 	ld	a, #0x01
      008354 97               [ 1]  236 	ld	xl, a
                           00008E   237 	Sstm8s_clk$CLK_ClockSwitchConfig$62 ==.
      008355 20 01            [ 2]  238 	jra	00123$
      008357                        239 00119$:
                           000090   240 	Sstm8s_clk$CLK_ClockSwitchConfig$63 ==.
                           000090   241 	Sstm8s_clk$CLK_ClockSwitchConfig$64 ==.
                                    242 ;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
      008357 5F               [ 1]  243 	clrw	x
                           000091   244 	Sstm8s_clk$CLK_ClockSwitchConfig$65 ==.
      008358                        245 00123$:
                           000091   246 	Sstm8s_clk$CLK_ClockSwitchConfig$66 ==.
                                    247 ;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
      008358 9F               [ 1]  248 	ld	a, xl
      008359 4D               [ 1]  249 	tnz	a
      00835A 26 03            [ 1]  250 	jrne	00242$
      00835C CC 83 8D         [ 2]  251 	jp	00136$
      00835F                        252 00242$:
                           000098   253 	Sstm8s_clk$CLK_ClockSwitchConfig$67 ==.
                           000098   254 	Sstm8s_clk$CLK_ClockSwitchConfig$68 ==.
                                    255 ;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00835F 0D 06            [ 1]  256 	tnz	(0x06, sp)
      008361 26 0C            [ 1]  257 	jrne	00132$
      008363 90 9F            [ 1]  258 	ld	a, yl
      008365 A1 E1            [ 1]  259 	cp	a, #0xe1
      008367 26 06            [ 1]  260 	jrne	00132$
                           0000A2   261 	Sstm8s_clk$CLK_ClockSwitchConfig$69 ==.
                           0000A2   262 	Sstm8s_clk$CLK_ClockSwitchConfig$70 ==.
                           0000A2   263 	Sstm8s_clk$CLK_ClockSwitchConfig$71 ==.
                                    264 ;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008369 72 11 50 C0      [ 1]  265 	bres	20672, #0
                           0000A6   266 	Sstm8s_clk$CLK_ClockSwitchConfig$72 ==.
      00836D 20 1E            [ 2]  267 	jra	00136$
      00836F                        268 00132$:
                           0000A8   269 	Sstm8s_clk$CLK_ClockSwitchConfig$73 ==.
                                    270 ;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00836F 0D 06            [ 1]  271 	tnz	(0x06, sp)
      008371 26 0C            [ 1]  272 	jrne	00128$
      008373 90 9F            [ 1]  273 	ld	a, yl
      008375 A1 D2            [ 1]  274 	cp	a, #0xd2
      008377 26 06            [ 1]  275 	jrne	00128$
                           0000B2   276 	Sstm8s_clk$CLK_ClockSwitchConfig$74 ==.
                           0000B2   277 	Sstm8s_clk$CLK_ClockSwitchConfig$75 ==.
                           0000B2   278 	Sstm8s_clk$CLK_ClockSwitchConfig$76 ==.
                                    279 ;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008379 72 17 50 C0      [ 1]  280 	bres	20672, #3
                           0000B6   281 	Sstm8s_clk$CLK_ClockSwitchConfig$77 ==.
      00837D 20 0E            [ 2]  282 	jra	00136$
      00837F                        283 00128$:
                           0000B8   284 	Sstm8s_clk$CLK_ClockSwitchConfig$78 ==.
                                    285 ;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00837F 0D 06            [ 1]  286 	tnz	(0x06, sp)
      008381 26 0A            [ 1]  287 	jrne	00136$
      008383 90 9F            [ 1]  288 	ld	a, yl
      008385 A1 B4            [ 1]  289 	cp	a, #0xb4
      008387 26 04            [ 1]  290 	jrne	00136$
                           0000C2   291 	Sstm8s_clk$CLK_ClockSwitchConfig$79 ==.
                           0000C2   292 	Sstm8s_clk$CLK_ClockSwitchConfig$80 ==.
                           0000C2   293 	Sstm8s_clk$CLK_ClockSwitchConfig$81 ==.
                                    294 ;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008389 72 11 50 C1      [ 1]  295 	bres	20673, #0
                           0000C6   296 	Sstm8s_clk$CLK_ClockSwitchConfig$82 ==.
      00838D                        297 00136$:
                           0000C6   298 	Sstm8s_clk$CLK_ClockSwitchConfig$83 ==.
                                    299 ;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
      00838D 9F               [ 1]  300 	ld	a, xl
                           0000C7   301 	Sstm8s_clk$CLK_ClockSwitchConfig$84 ==.
                                    302 ;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
                           0000C7   303 	Sstm8s_clk$CLK_ClockSwitchConfig$85 ==.
                           0000C7   304 	XG$CLK_ClockSwitchConfig$0$0 ==.
      00838E 81               [ 4]  305 	ret
                           0000C8   306 	Sstm8s_clk$CLK_ClockSwitchConfig$86 ==.
                           0000C8   307 	Sstm8s_clk$CLK_GetClockFreq$87 ==.
                                    308 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    309 ;	-----------------------------------------
                                    310 ;	 function CLK_GetClockFreq
                                    311 ;	-----------------------------------------
      00838F                        312 _CLK_GetClockFreq:
                           0000C8   313 	Sstm8s_clk$CLK_GetClockFreq$88 ==.
      00838F 52 04            [ 2]  314 	sub	sp, #4
                           0000CA   315 	Sstm8s_clk$CLK_GetClockFreq$89 ==.
                           0000CA   316 	Sstm8s_clk$CLK_GetClockFreq$90 ==.
                                    317 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008391 C6 50 C3         [ 1]  318 	ld	a, 0x50c3
      008394 6B 04            [ 1]  319 	ld	(0x04, sp), a
                           0000CF   320 	Sstm8s_clk$CLK_GetClockFreq$91 ==.
                                    321 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008396 7B 04            [ 1]  322 	ld	a, (0x04, sp)
      008398 A1 E1            [ 1]  323 	cp	a, #0xe1
      00839A 26 26            [ 1]  324 	jrne	00105$
                           0000D5   325 	Sstm8s_clk$CLK_GetClockFreq$92 ==.
                           0000D5   326 	Sstm8s_clk$CLK_GetClockFreq$93 ==.
                           0000D5   327 	Sstm8s_clk$CLK_GetClockFreq$94 ==.
                                    328 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00839C C6 50 C6         [ 1]  329 	ld	a, 0x50c6
      00839F A4 18            [ 1]  330 	and	a, #0x18
                           0000DA   331 	Sstm8s_clk$CLK_GetClockFreq$95 ==.
                                    332 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0083A1 44               [ 1]  333 	srl	a
      0083A2 44               [ 1]  334 	srl	a
      0083A3 44               [ 1]  335 	srl	a
                           0000DD   336 	Sstm8s_clk$CLK_GetClockFreq$96 ==.
                                    337 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0083A4 5F               [ 1]  338 	clrw	x
      0083A5 97               [ 1]  339 	ld	xl, a
      0083A6 1C 80 88         [ 2]  340 	addw	x, #(_HSIDivFactor + 0)
      0083A9 F6               [ 1]  341 	ld	a, (x)
                           0000E3   342 	Sstm8s_clk$CLK_GetClockFreq$97 ==.
                                    343 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0083AA 5F               [ 1]  344 	clrw	x
      0083AB 97               [ 1]  345 	ld	xl, a
      0083AC 90 5F            [ 1]  346 	clrw	y
                           0000E7   347 	Sstm8s_clk$CLK_GetClockFreq$98 ==.
      0083AE 89               [ 2]  348 	pushw	x
                           0000E8   349 	Sstm8s_clk$CLK_GetClockFreq$99 ==.
      0083AF 90 89            [ 2]  350 	pushw	y
                           0000EA   351 	Sstm8s_clk$CLK_GetClockFreq$100 ==.
      0083B1 4B 00            [ 1]  352 	push	#0x00
                           0000EC   353 	Sstm8s_clk$CLK_GetClockFreq$101 ==.
      0083B3 4B 24            [ 1]  354 	push	#0x24
                           0000EE   355 	Sstm8s_clk$CLK_GetClockFreq$102 ==.
      0083B5 4B F4            [ 1]  356 	push	#0xf4
                           0000F0   357 	Sstm8s_clk$CLK_GetClockFreq$103 ==.
      0083B7 4B 00            [ 1]  358 	push	#0x00
                           0000F2   359 	Sstm8s_clk$CLK_GetClockFreq$104 ==.
      0083B9 CD 93 B5         [ 4]  360 	call	__divulong
      0083BC 5B 08            [ 2]  361 	addw	sp, #8
                           0000F7   362 	Sstm8s_clk$CLK_GetClockFreq$105 ==.
      0083BE 1F 03            [ 2]  363 	ldw	(0x03, sp), x
      0083C0 20 1A            [ 2]  364 	jra	00106$
      0083C2                        365 00105$:
                           0000FB   366 	Sstm8s_clk$CLK_GetClockFreq$106 ==.
                                    367 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0083C2 7B 04            [ 1]  368 	ld	a, (0x04, sp)
      0083C4 A1 D2            [ 1]  369 	cp	a, #0xd2
      0083C6 26 0B            [ 1]  370 	jrne	00102$
                           000101   371 	Sstm8s_clk$CLK_GetClockFreq$107 ==.
                           000101   372 	Sstm8s_clk$CLK_GetClockFreq$108 ==.
                           000101   373 	Sstm8s_clk$CLK_GetClockFreq$109 ==.
                                    374 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0083C8 AE F4 00         [ 2]  375 	ldw	x, #0xf400
      0083CB 1F 03            [ 2]  376 	ldw	(0x03, sp), x
      0083CD 90 AE 00 01      [ 2]  377 	ldw	y, #0x0001
                           00010A   378 	Sstm8s_clk$CLK_GetClockFreq$110 ==.
      0083D1 20 09            [ 2]  379 	jra	00106$
      0083D3                        380 00102$:
                           00010C   381 	Sstm8s_clk$CLK_GetClockFreq$111 ==.
                           00010C   382 	Sstm8s_clk$CLK_GetClockFreq$112 ==.
                                    383 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0083D3 AE 12 00         [ 2]  384 	ldw	x, #0x1200
      0083D6 1F 03            [ 2]  385 	ldw	(0x03, sp), x
      0083D8 90 AE 00 7A      [ 2]  386 	ldw	y, #0x007a
                           000115   387 	Sstm8s_clk$CLK_GetClockFreq$113 ==.
      0083DC                        388 00106$:
                           000115   389 	Sstm8s_clk$CLK_GetClockFreq$114 ==.
                                    390 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0083DC 1E 03            [ 2]  391 	ldw	x, (0x03, sp)
                           000117   392 	Sstm8s_clk$CLK_GetClockFreq$115 ==.
                                    393 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0083DE 5B 04            [ 2]  394 	addw	sp, #4
                           000119   395 	Sstm8s_clk$CLK_GetClockFreq$116 ==.
                           000119   396 	Sstm8s_clk$CLK_GetClockFreq$117 ==.
                           000119   397 	XG$CLK_GetClockFreq$0$0 ==.
      0083E0 81               [ 4]  398 	ret
                           00011A   399 	Sstm8s_clk$CLK_GetClockFreq$118 ==.
                                    400 	.area CODE
                                    401 	.area CONST
                           000000   402 G$HSIDivFactor$0_0$0 == .
      008088                        403 _HSIDivFactor:
      008088 01                     404 	.db #0x01	; 1
      008089 02                     405 	.db #0x02	; 2
      00808A 04                     406 	.db #0x04	; 4
      00808B 08                     407 	.db #0x08	; 8
                           000004   408 G$CLKPrescTable$0_0$0 == .
      00808C                        409 _CLKPrescTable:
      00808C 01                     410 	.db #0x01	; 1
      00808D 02                     411 	.db #0x02	; 2
      00808E 04                     412 	.db #0x04	; 4
      00808F 08                     413 	.db #0x08	; 8
      008090 0A                     414 	.db #0x0a	; 10
      008091 10                     415 	.db #0x10	; 16
      008092 14                     416 	.db #0x14	; 20
      008093 28                     417 	.db #0x28	; 40
                                    418 	.area INITIALIZER
                                    419 	.area CABS (ABS)
                                    420 
                                    421 	.area .debug_line (NOLOAD)
      000367 00 00 01 D8            422 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00036B                        423 Ldebug_line_start:
      00036B 00 02                  424 	.dw	2
      00036D 00 00 00 7F            425 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000371 01                     426 	.db	1
      000372 01                     427 	.db	1
      000373 FB                     428 	.db	-5
      000374 0F                     429 	.db	15
      000375 0A                     430 	.db	10
      000376 00                     431 	.db	0
      000377 01                     432 	.db	1
      000378 01                     433 	.db	1
      000379 01                     434 	.db	1
      00037A 01                     435 	.db	1
      00037B 00                     436 	.db	0
      00037C 00                     437 	.db	0
      00037D 00                     438 	.db	0
      00037E 01                     439 	.db	1
      00037F 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0003A7 00                     441 	.db	0
      0003A8 43 3A 5C 50 72 6F 67   442 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0003CB 00                     443 	.db	0
      0003CC 00                     444 	.db	0
      0003CD 53 6F 75 72 63 65 2F   445 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      0003EB 00                     446 	.db	0
      0003EC 00                     447 	.uleb128	0
      0003ED 00                     448 	.uleb128	0
      0003EE 00                     449 	.uleb128	0
      0003EF 00                     450 	.db	0
      0003F0                        451 Ldebug_line_stmt:
      0003F0 00                     452 	.db	0
      0003F1 05                     453 	.uleb128	5
      0003F2 02                     454 	.db	2
      0003F3 00 00 82 C7            455 	.dw	0,(Sstm8s_clk$CLK_HSECmd$0)
      0003F7 03                     456 	.db	3
      0003F8 F8 00                  457 	.sleb128	120
      0003FA 01                     458 	.db	1
      0003FB 09                     459 	.db	9
      0003FC 00 00                  460 	.dw	Sstm8s_clk$CLK_HSECmd$2-Sstm8s_clk$CLK_HSECmd$0
      0003FE 03                     461 	.db	3
      0003FF 08                     462 	.sleb128	8
      000400 01                     463 	.db	1
      000401 09                     464 	.db	9
      000402 00 03                  465 	.dw	Sstm8s_clk$CLK_HSECmd$3-Sstm8s_clk$CLK_HSECmd$2
      000404 03                     466 	.db	3
      000405 7D                     467 	.sleb128	-3
      000406 01                     468 	.db	1
      000407 09                     469 	.db	9
      000408 00 04                  470 	.dw	Sstm8s_clk$CLK_HSECmd$5-Sstm8s_clk$CLK_HSECmd$3
      00040A 03                     471 	.db	3
      00040B 03                     472 	.sleb128	3
      00040C 01                     473 	.db	1
      00040D 09                     474 	.db	9
      00040E 00 07                  475 	.dw	Sstm8s_clk$CLK_HSECmd$8-Sstm8s_clk$CLK_HSECmd$5
      000410 03                     476 	.db	3
      000411 05                     477 	.sleb128	5
      000412 01                     478 	.db	1
      000413 09                     479 	.db	9
      000414 00 05                  480 	.dw	Sstm8s_clk$CLK_HSECmd$10-Sstm8s_clk$CLK_HSECmd$8
      000416 03                     481 	.db	3
      000417 02                     482 	.sleb128	2
      000418 01                     483 	.db	1
      000419 09                     484 	.db	9
      00041A 00 01                  485 	.dw	1+Sstm8s_clk$CLK_HSECmd$11-Sstm8s_clk$CLK_HSECmd$10
      00041C 00                     486 	.db	0
      00041D 01                     487 	.uleb128	1
      00041E 01                     488 	.db	1
      00041F 00                     489 	.db	0
      000420 05                     490 	.uleb128	5
      000421 02                     491 	.db	2
      000422 00 00 82 DB            492 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$13)
      000426 03                     493 	.db	3
      000427 B4 02                  494 	.sleb128	308
      000429 01                     495 	.db	1
      00042A 09                     496 	.db	9
      00042B 00 00                  497 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$15-Sstm8s_clk$CLK_ClockSwitchConfig$13
      00042D 03                     498 	.db	3
      00042E 0D                     499 	.sleb128	13
      00042F 01                     500 	.db	1
      000430 09                     501 	.db	9
      000431 00 05                  502 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$16-Sstm8s_clk$CLK_ClockSwitchConfig$15
      000433 03                     503 	.db	3
      000434 06                     504 	.sleb128	6
      000435 01                     505 	.db	1
      000436 09                     506 	.db	9
      000437 00 03                  507 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$17-Sstm8s_clk$CLK_ClockSwitchConfig$16
      000439 03                     508 	.db	3
      00043A 7D                     509 	.sleb128	-3
      00043B 01                     510 	.db	1
      00043C 09                     511 	.db	9
      00043D 00 0A                  512 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$22-Sstm8s_clk$CLK_ClockSwitchConfig$17
      00043F 03                     513 	.db	3
      000440 03                     514 	.sleb128	3
      000441 01                     515 	.db	1
      000442 09                     516 	.db	9
      000443 00 08                  517 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$24-Sstm8s_clk$CLK_ClockSwitchConfig$22
      000445 03                     518 	.db	3
      000446 03                     519 	.sleb128	3
      000447 01                     520 	.db	1
      000448 09                     521 	.db	9
      000449 00 04                  522 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$26-Sstm8s_clk$CLK_ClockSwitchConfig$24
      00044B 03                     523 	.db	3
      00044C 02                     524 	.sleb128	2
      00044D 01                     525 	.db	1
      00044E 09                     526 	.db	9
      00044F 00 07                  527 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$29-Sstm8s_clk$CLK_ClockSwitchConfig$26
      000451 03                     528 	.db	3
      000452 04                     529 	.sleb128	4
      000453 01                     530 	.db	1
      000454 09                     531 	.db	9
      000455 00 05                  532 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$31-Sstm8s_clk$CLK_ClockSwitchConfig$29
      000457 03                     533 	.db	3
      000458 04                     534 	.sleb128	4
      000459 01                     535 	.db	1
      00045A 09                     536 	.db	9
      00045B 00 06                  537 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$33-Sstm8s_clk$CLK_ClockSwitchConfig$31
      00045D 03                     538 	.db	3
      00045E 03                     539 	.sleb128	3
      00045F 01                     540 	.db	1
      000460 09                     541 	.db	9
      000461 00 0B                  542 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$35-Sstm8s_clk$CLK_ClockSwitchConfig$33
      000463 03                     543 	.db	3
      000464 02                     544 	.sleb128	2
      000465 01                     545 	.db	1
      000466 09                     546 	.db	9
      000467 00 03                  547 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$37-Sstm8s_clk$CLK_ClockSwitchConfig$35
      000469 03                     548 	.db	3
      00046A 03                     549 	.sleb128	3
      00046B 01                     550 	.db	1
      00046C 09                     551 	.db	9
      00046D 00 03                  552 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$39-Sstm8s_clk$CLK_ClockSwitchConfig$37
      00046F 03                     553 	.db	3
      000470 02                     554 	.sleb128	2
      000471 01                     555 	.db	1
      000472 09                     556 	.db	9
      000473 00 06                  557 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$42-Sstm8s_clk$CLK_ClockSwitchConfig$39
      000475 03                     558 	.db	3
      000476 04                     559 	.sleb128	4
      000477 01                     560 	.db	1
      000478 09                     561 	.db	9
      000479 00 04                  562 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$45-Sstm8s_clk$CLK_ClockSwitchConfig$42
      00047B 03                     563 	.db	3
      00047C 06                     564 	.sleb128	6
      00047D 01                     565 	.db	1
      00047E 09                     566 	.db	9
      00047F 00 04                  567 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$47-Sstm8s_clk$CLK_ClockSwitchConfig$45
      000481 03                     568 	.db	3
      000482 02                     569 	.sleb128	2
      000483 01                     570 	.db	1
      000484 09                     571 	.db	9
      000485 00 07                  572 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$50-Sstm8s_clk$CLK_ClockSwitchConfig$47
      000487 03                     573 	.db	3
      000488 04                     574 	.sleb128	4
      000489 01                     575 	.db	1
      00048A 09                     576 	.db	9
      00048B 00 05                  577 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$52-Sstm8s_clk$CLK_ClockSwitchConfig$50
      00048D 03                     578 	.db	3
      00048E 04                     579 	.sleb128	4
      00048F 01                     580 	.db	1
      000490 09                     581 	.db	9
      000491 00 06                  582 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$54-Sstm8s_clk$CLK_ClockSwitchConfig$52
      000493 03                     583 	.db	3
      000494 03                     584 	.sleb128	3
      000495 01                     585 	.db	1
      000496 09                     586 	.db	9
      000497 00 0C                  587 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$56-Sstm8s_clk$CLK_ClockSwitchConfig$54
      000499 03                     588 	.db	3
      00049A 02                     589 	.sleb128	2
      00049B 01                     590 	.db	1
      00049C 09                     591 	.db	9
      00049D 00 03                  592 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$58-Sstm8s_clk$CLK_ClockSwitchConfig$56
      00049F 03                     593 	.db	3
      0004A0 03                     594 	.sleb128	3
      0004A1 01                     595 	.db	1
      0004A2 09                     596 	.db	9
      0004A3 00 03                  597 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$60-Sstm8s_clk$CLK_ClockSwitchConfig$58
      0004A5 03                     598 	.db	3
      0004A6 03                     599 	.sleb128	3
      0004A7 01                     600 	.db	1
      0004A8 09                     601 	.db	9
      0004A9 00 04                  602 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$61-Sstm8s_clk$CLK_ClockSwitchConfig$60
      0004AB 03                     603 	.db	3
      0004AC 01                     604 	.sleb128	1
      0004AD 01                     605 	.db	1
      0004AE 09                     606 	.db	9
      0004AF 00 05                  607 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$64-Sstm8s_clk$CLK_ClockSwitchConfig$61
      0004B1 03                     608 	.db	3
      0004B2 04                     609 	.sleb128	4
      0004B3 01                     610 	.db	1
      0004B4 09                     611 	.db	9
      0004B5 00 01                  612 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$66-Sstm8s_clk$CLK_ClockSwitchConfig$64
      0004B7 03                     613 	.db	3
      0004B8 03                     614 	.sleb128	3
      0004B9 01                     615 	.db	1
      0004BA 09                     616 	.db	9
      0004BB 00 07                  617 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$68-Sstm8s_clk$CLK_ClockSwitchConfig$66
      0004BD 03                     618 	.db	3
      0004BE 03                     619 	.sleb128	3
      0004BF 01                     620 	.db	1
      0004C0 09                     621 	.db	9
      0004C1 00 0A                  622 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$71-Sstm8s_clk$CLK_ClockSwitchConfig$68
      0004C3 03                     623 	.db	3
      0004C4 02                     624 	.sleb128	2
      0004C5 01                     625 	.db	1
      0004C6 09                     626 	.db	9
      0004C7 00 06                  627 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$73-Sstm8s_clk$CLK_ClockSwitchConfig$71
      0004C9 03                     628 	.db	3
      0004CA 02                     629 	.sleb128	2
      0004CB 01                     630 	.db	1
      0004CC 09                     631 	.db	9
      0004CD 00 0A                  632 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$76-Sstm8s_clk$CLK_ClockSwitchConfig$73
      0004CF 03                     633 	.db	3
      0004D0 02                     634 	.sleb128	2
      0004D1 01                     635 	.db	1
      0004D2 09                     636 	.db	9
      0004D3 00 06                  637 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$78-Sstm8s_clk$CLK_ClockSwitchConfig$76
      0004D5 03                     638 	.db	3
      0004D6 02                     639 	.sleb128	2
      0004D7 01                     640 	.db	1
      0004D8 09                     641 	.db	9
      0004D9 00 0A                  642 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$81-Sstm8s_clk$CLK_ClockSwitchConfig$78
      0004DB 03                     643 	.db	3
      0004DC 02                     644 	.sleb128	2
      0004DD 01                     645 	.db	1
      0004DE 09                     646 	.db	9
      0004DF 00 04                  647 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$83-Sstm8s_clk$CLK_ClockSwitchConfig$81
      0004E1 03                     648 	.db	3
      0004E2 03                     649 	.sleb128	3
      0004E3 01                     650 	.db	1
      0004E4 09                     651 	.db	9
      0004E5 00 01                  652 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$84-Sstm8s_clk$CLK_ClockSwitchConfig$83
      0004E7 03                     653 	.db	3
      0004E8 01                     654 	.sleb128	1
      0004E9 01                     655 	.db	1
      0004EA 09                     656 	.db	9
      0004EB 00 01                  657 	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$85-Sstm8s_clk$CLK_ClockSwitchConfig$84
      0004ED 00                     658 	.db	0
      0004EE 01                     659 	.uleb128	1
      0004EF 01                     660 	.db	1
      0004F0 00                     661 	.db	0
      0004F1 05                     662 	.uleb128	5
      0004F2 02                     663 	.db	2
      0004F3 00 00 83 8F            664 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$87)
      0004F7 03                     665 	.db	3
      0004F8 B8 04                  666 	.sleb128	568
      0004FA 01                     667 	.db	1
      0004FB 09                     668 	.db	9
      0004FC 00 02                  669 	.dw	Sstm8s_clk$CLK_GetClockFreq$90-Sstm8s_clk$CLK_GetClockFreq$87
      0004FE 03                     670 	.db	3
      0004FF 07                     671 	.sleb128	7
      000500 01                     672 	.db	1
      000501 09                     673 	.db	9
      000502 00 05                  674 	.dw	Sstm8s_clk$CLK_GetClockFreq$91-Sstm8s_clk$CLK_GetClockFreq$90
      000504 03                     675 	.db	3
      000505 02                     676 	.sleb128	2
      000506 01                     677 	.db	1
      000507 09                     678 	.db	9
      000508 00 06                  679 	.dw	Sstm8s_clk$CLK_GetClockFreq$94-Sstm8s_clk$CLK_GetClockFreq$91
      00050A 03                     680 	.db	3
      00050B 02                     681 	.sleb128	2
      00050C 01                     682 	.db	1
      00050D 09                     683 	.db	9
      00050E 00 05                  684 	.dw	Sstm8s_clk$CLK_GetClockFreq$95-Sstm8s_clk$CLK_GetClockFreq$94
      000510 03                     685 	.db	3
      000511 01                     686 	.sleb128	1
      000512 01                     687 	.db	1
      000513 09                     688 	.db	9
      000514 00 03                  689 	.dw	Sstm8s_clk$CLK_GetClockFreq$96-Sstm8s_clk$CLK_GetClockFreq$95
      000516 03                     690 	.db	3
      000517 01                     691 	.sleb128	1
      000518 01                     692 	.db	1
      000519 09                     693 	.db	9
      00051A 00 06                  694 	.dw	Sstm8s_clk$CLK_GetClockFreq$97-Sstm8s_clk$CLK_GetClockFreq$96
      00051C 03                     695 	.db	3
      00051D 01                     696 	.sleb128	1
      00051E 01                     697 	.db	1
      00051F 09                     698 	.db	9
      000520 00 18                  699 	.dw	Sstm8s_clk$CLK_GetClockFreq$106-Sstm8s_clk$CLK_GetClockFreq$97
      000522 03                     700 	.db	3
      000523 02                     701 	.sleb128	2
      000524 01                     702 	.db	1
      000525 09                     703 	.db	9
      000526 00 06                  704 	.dw	Sstm8s_clk$CLK_GetClockFreq$109-Sstm8s_clk$CLK_GetClockFreq$106
      000528 03                     705 	.db	3
      000529 02                     706 	.sleb128	2
      00052A 01                     707 	.db	1
      00052B 09                     708 	.db	9
      00052C 00 0B                  709 	.dw	Sstm8s_clk$CLK_GetClockFreq$112-Sstm8s_clk$CLK_GetClockFreq$109
      00052E 03                     710 	.db	3
      00052F 04                     711 	.sleb128	4
      000530 01                     712 	.db	1
      000531 09                     713 	.db	9
      000532 00 09                  714 	.dw	Sstm8s_clk$CLK_GetClockFreq$114-Sstm8s_clk$CLK_GetClockFreq$112
      000534 03                     715 	.db	3
      000535 03                     716 	.sleb128	3
      000536 01                     717 	.db	1
      000537 09                     718 	.db	9
      000538 00 02                  719 	.dw	Sstm8s_clk$CLK_GetClockFreq$115-Sstm8s_clk$CLK_GetClockFreq$114
      00053A 03                     720 	.db	3
      00053B 01                     721 	.sleb128	1
      00053C 01                     722 	.db	1
      00053D 09                     723 	.db	9
      00053E 00 03                  724 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$117-Sstm8s_clk$CLK_GetClockFreq$115
      000540 00                     725 	.db	0
      000541 01                     726 	.uleb128	1
      000542 01                     727 	.db	1
      000543                        728 Ldebug_line_end:
                                    729 
                                    730 	.area .debug_loc (NOLOAD)
      000498                        731 Ldebug_loc_start:
      000498 00 00 83 E0            732 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      00049C 00 00 83 E1            733 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$118)
      0004A0 00 02                  734 	.dw	2
      0004A2 78                     735 	.db	120
      0004A3 01                     736 	.sleb128	1
      0004A4 00 00 83 C8            737 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      0004A8 00 00 83 E0            738 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      0004AC 00 02                  739 	.dw	2
      0004AE 78                     740 	.db	120
      0004AF 05                     741 	.sleb128	5
      0004B0 00 00 83 BE            742 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      0004B4 00 00 83 C8            743 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      0004B8 00 02                  744 	.dw	2
      0004BA 78                     745 	.db	120
      0004BB 05                     746 	.sleb128	5
      0004BC 00 00 83 B9            747 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      0004C0 00 00 83 BE            748 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      0004C4 00 02                  749 	.dw	2
      0004C6 78                     750 	.db	120
      0004C7 0D                     751 	.sleb128	13
      0004C8 00 00 83 B7            752 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      0004CC 00 00 83 B9            753 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      0004D0 00 02                  754 	.dw	2
      0004D2 78                     755 	.db	120
      0004D3 0C                     756 	.sleb128	12
      0004D4 00 00 83 B5            757 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      0004D8 00 00 83 B7            758 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      0004DC 00 02                  759 	.dw	2
      0004DE 78                     760 	.db	120
      0004DF 0B                     761 	.sleb128	11
      0004E0 00 00 83 B3            762 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      0004E4 00 00 83 B5            763 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      0004E8 00 02                  764 	.dw	2
      0004EA 78                     765 	.db	120
      0004EB 0A                     766 	.sleb128	10
      0004EC 00 00 83 B1            767 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      0004F0 00 00 83 B3            768 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      0004F4 00 02                  769 	.dw	2
      0004F6 78                     770 	.db	120
      0004F7 09                     771 	.sleb128	9
      0004F8 00 00 83 AF            772 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      0004FC 00 00 83 B1            773 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      000500 00 02                  774 	.dw	2
      000502 78                     775 	.db	120
      000503 07                     776 	.sleb128	7
      000504 00 00 83 9C            777 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      000508 00 00 83 AF            778 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      00050C 00 02                  779 	.dw	2
      00050E 78                     780 	.db	120
      00050F 05                     781 	.sleb128	5
      000510 00 00 83 91            782 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      000514 00 00 83 9C            783 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      000518 00 02                  784 	.dw	2
      00051A 78                     785 	.db	120
      00051B 05                     786 	.sleb128	5
      00051C 00 00 83 8F            787 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
      000520 00 00 83 91            788 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      000524 00 02                  789 	.dw	2
      000526 78                     790 	.db	120
      000527 01                     791 	.sleb128	1
      000528 00 00 00 00            792 	.dw	0,0
      00052C 00 00 00 00            793 	.dw	0,0
      000530 00 00 83 89            794 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      000534 00 00 83 8F            795 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$86)
      000538 00 02                  796 	.dw	2
      00053A 78                     797 	.db	120
      00053B 01                     798 	.sleb128	1
      00053C 00 00 83 79            799 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      000540 00 00 83 89            800 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      000544 00 02                  801 	.dw	2
      000546 78                     802 	.db	120
      000547 01                     803 	.sleb128	1
      000548 00 00 83 69            804 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      00054C 00 00 83 79            805 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      000550 00 02                  806 	.dw	2
      000552 78                     807 	.db	120
      000553 01                     808 	.sleb128	1
      000554 00 00 82 ED            809 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      000558 00 00 83 69            810 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      00055C 00 02                  811 	.dw	2
      00055E 78                     812 	.db	120
      00055F 01                     813 	.sleb128	1
      000560 00 00 82 E8            814 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      000564 00 00 82 ED            815 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      000568 00 02                  816 	.dw	2
      00056A 78                     817 	.db	120
      00056B 01                     818 	.sleb128	1
      00056C 00 00 82 E4            819 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      000570 00 00 82 E8            820 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      000574 00 02                  821 	.dw	2
      000576 78                     822 	.db	120
      000577 02                     823 	.sleb128	2
      000578 00 00 82 DB            824 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
      00057C 00 00 82 E4            825 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      000580 00 02                  826 	.dw	2
      000582 78                     827 	.db	120
      000583 01                     828 	.sleb128	1
      000584 00 00 00 00            829 	.dw	0,0
      000588 00 00 00 00            830 	.dw	0,0
      00058C 00 00 82 C7            831 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
      000590 00 00 82 DB            832 	.dw	0,(Sstm8s_clk$CLK_HSECmd$12)
      000594 00 02                  833 	.dw	2
      000596 78                     834 	.db	120
      000597 01                     835 	.sleb128	1
      000598 00 00 00 00            836 	.dw	0,0
      00059C 00 00 00 00            837 	.dw	0,0
                                    838 
                                    839 	.area .debug_abbrev (NOLOAD)
      00012F                        840 Ldebug_abbrev:
      00012F 0D                     841 	.uleb128	13
      000130 34                     842 	.uleb128	52
      000131 00                     843 	.db	0
      000132 02                     844 	.uleb128	2
      000133 0A                     845 	.uleb128	10
      000134 03                     846 	.uleb128	3
      000135 08                     847 	.uleb128	8
      000136 3F                     848 	.uleb128	63
      000137 0C                     849 	.uleb128	12
      000138 49                     850 	.uleb128	73
      000139 13                     851 	.uleb128	19
      00013A 00                     852 	.uleb128	0
      00013B 00                     853 	.uleb128	0
      00013C 03                     854 	.uleb128	3
      00013D 05                     855 	.uleb128	5
      00013E 00                     856 	.db	0
      00013F 02                     857 	.uleb128	2
      000140 0A                     858 	.uleb128	10
      000141 03                     859 	.uleb128	3
      000142 08                     860 	.uleb128	8
      000143 49                     861 	.uleb128	73
      000144 13                     862 	.uleb128	19
      000145 00                     863 	.uleb128	0
      000146 00                     864 	.uleb128	0
      000147 0B                     865 	.uleb128	11
      000148 01                     866 	.uleb128	1
      000149 01                     867 	.db	1
      00014A 01                     868 	.uleb128	1
      00014B 13                     869 	.uleb128	19
      00014C 0B                     870 	.uleb128	11
      00014D 0B                     871 	.uleb128	11
      00014E 49                     872 	.uleb128	73
      00014F 13                     873 	.uleb128	19
      000150 00                     874 	.uleb128	0
      000151 00                     875 	.uleb128	0
      000152 02                     876 	.uleb128	2
      000153 2E                     877 	.uleb128	46
      000154 01                     878 	.db	1
      000155 01                     879 	.uleb128	1
      000156 13                     880 	.uleb128	19
      000157 03                     881 	.uleb128	3
      000158 08                     882 	.uleb128	8
      000159 11                     883 	.uleb128	17
      00015A 01                     884 	.uleb128	1
      00015B 12                     885 	.uleb128	18
      00015C 01                     886 	.uleb128	1
      00015D 3F                     887 	.uleb128	63
      00015E 0C                     888 	.uleb128	12
      00015F 40                     889 	.uleb128	64
      000160 06                     890 	.uleb128	6
      000161 00                     891 	.uleb128	0
      000162 00                     892 	.uleb128	0
      000163 09                     893 	.uleb128	9
      000164 34                     894 	.uleb128	52
      000165 00                     895 	.db	0
      000166 02                     896 	.uleb128	2
      000167 0A                     897 	.uleb128	10
      000168 03                     898 	.uleb128	3
      000169 08                     899 	.uleb128	8
      00016A 49                     900 	.uleb128	73
      00016B 13                     901 	.uleb128	19
      00016C 00                     902 	.uleb128	0
      00016D 00                     903 	.uleb128	0
      00016E 06                     904 	.uleb128	6
      00016F 2E                     905 	.uleb128	46
      000170 01                     906 	.db	1
      000171 01                     907 	.uleb128	1
      000172 13                     908 	.uleb128	19
      000173 03                     909 	.uleb128	3
      000174 08                     910 	.uleb128	8
      000175 11                     911 	.uleb128	17
      000176 01                     912 	.uleb128	1
      000177 12                     913 	.uleb128	18
      000178 01                     914 	.uleb128	1
      000179 3F                     915 	.uleb128	63
      00017A 0C                     916 	.uleb128	12
      00017B 40                     917 	.uleb128	64
      00017C 06                     918 	.uleb128	6
      00017D 49                     919 	.uleb128	73
      00017E 13                     920 	.uleb128	19
      00017F 00                     921 	.uleb128	0
      000180 00                     922 	.uleb128	0
      000181 0A                     923 	.uleb128	10
      000182 26                     924 	.uleb128	38
      000183 00                     925 	.db	0
      000184 49                     926 	.uleb128	73
      000185 13                     927 	.uleb128	19
      000186 00                     928 	.uleb128	0
      000187 00                     929 	.uleb128	0
      000188 01                     930 	.uleb128	1
      000189 11                     931 	.uleb128	17
      00018A 01                     932 	.db	1
      00018B 03                     933 	.uleb128	3
      00018C 08                     934 	.uleb128	8
      00018D 10                     935 	.uleb128	16
      00018E 06                     936 	.uleb128	6
      00018F 13                     937 	.uleb128	19
      000190 0B                     938 	.uleb128	11
      000191 25                     939 	.uleb128	37
      000192 08                     940 	.uleb128	8
      000193 00                     941 	.uleb128	0
      000194 00                     942 	.uleb128	0
      000195 04                     943 	.uleb128	4
      000196 0B                     944 	.uleb128	11
      000197 00                     945 	.db	0
      000198 11                     946 	.uleb128	17
      000199 01                     947 	.uleb128	1
      00019A 12                     948 	.uleb128	18
      00019B 01                     949 	.uleb128	1
      00019C 00                     950 	.uleb128	0
      00019D 00                     951 	.uleb128	0
      00019E 08                     952 	.uleb128	8
      00019F 0B                     953 	.uleb128	11
      0001A0 01                     954 	.db	1
      0001A1 01                     955 	.uleb128	1
      0001A2 13                     956 	.uleb128	19
      0001A3 11                     957 	.uleb128	17
      0001A4 01                     958 	.uleb128	1
      0001A5 00                     959 	.uleb128	0
      0001A6 00                     960 	.uleb128	0
      0001A7 07                     961 	.uleb128	7
      0001A8 0B                     962 	.uleb128	11
      0001A9 01                     963 	.db	1
      0001AA 01                     964 	.uleb128	1
      0001AB 13                     965 	.uleb128	19
      0001AC 11                     966 	.uleb128	17
      0001AD 01                     967 	.uleb128	1
      0001AE 12                     968 	.uleb128	18
      0001AF 01                     969 	.uleb128	1
      0001B0 00                     970 	.uleb128	0
      0001B1 00                     971 	.uleb128	0
      0001B2 0C                     972 	.uleb128	12
      0001B3 21                     973 	.uleb128	33
      0001B4 00                     974 	.db	0
      0001B5 2F                     975 	.uleb128	47
      0001B6 0B                     976 	.uleb128	11
      0001B7 00                     977 	.uleb128	0
      0001B8 00                     978 	.uleb128	0
      0001B9 05                     979 	.uleb128	5
      0001BA 24                     980 	.uleb128	36
      0001BB 00                     981 	.db	0
      0001BC 03                     982 	.uleb128	3
      0001BD 08                     983 	.uleb128	8
      0001BE 0B                     984 	.uleb128	11
      0001BF 0B                     985 	.uleb128	11
      0001C0 3E                     986 	.uleb128	62
      0001C1 0B                     987 	.uleb128	11
      0001C2 00                     988 	.uleb128	0
      0001C3 00                     989 	.uleb128	0
      0001C4 00                     990 	.uleb128	0
                                    991 
                                    992 	.area .debug_info (NOLOAD)
      00057F 00 00 02 FA            993 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000583                        994 Ldebug_info_start:
      000583 00 02                  995 	.dw	2
      000585 00 00 01 2F            996 	.dw	0,(Ldebug_abbrev)
      000589 04                     997 	.db	4
      00058A 01                     998 	.uleb128	1
      00058B 53 6F 75 72 63 65 2F   999 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      0005A9 00                    1000 	.db	0
      0005AA 00 00 03 67           1001 	.dw	0,(Ldebug_line_start+-4)
      0005AE 01                    1002 	.db	1
      0005AF 53 44 43 43 20 76 65  1003 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      0005C8 00                    1004 	.db	0
      0005C9 02                    1005 	.uleb128	2
      0005CA 00 00 00 8B           1006 	.dw	0,139
      0005CE 43 4C 4B 5F 48 53 45  1007 	.ascii "CLK_HSECmd"
             43 6D 64
      0005D8 00                    1008 	.db	0
      0005D9 00 00 82 C7           1009 	.dw	0,(_CLK_HSECmd)
      0005DD 00 00 82 DB           1010 	.dw	0,(XG$CLK_HSECmd$0$0+1)
      0005E1 01                    1011 	.db	1
      0005E2 00 00 05 8C           1012 	.dw	0,(Ldebug_loc_start+244)
      0005E6 03                    1013 	.uleb128	3
      0005E7 02                    1014 	.db	2
      0005E8 91                    1015 	.db	145
      0005E9 02                    1016 	.sleb128	2
      0005EA 4E 65 77 53 74 61 74  1017 	.ascii "NewState"
             65
      0005F2 00                    1018 	.db	0
      0005F3 00 00 00 8B           1019 	.dw	0,139
      0005F7 04                    1020 	.uleb128	4
      0005F8 00 00 82 CE           1021 	.dw	0,(Sstm8s_clk$CLK_HSECmd$4)
      0005FC 00 00 82 D3           1022 	.dw	0,(Sstm8s_clk$CLK_HSECmd$6)
      000600 04                    1023 	.uleb128	4
      000601 00 00 82 D5           1024 	.dw	0,(Sstm8s_clk$CLK_HSECmd$7)
      000605 00 00 82 DA           1025 	.dw	0,(Sstm8s_clk$CLK_HSECmd$9)
      000609 00                    1026 	.uleb128	0
      00060A 05                    1027 	.uleb128	5
      00060B 75 6E 73 69 67 6E 65  1028 	.ascii "unsigned char"
             64 20 63 68 61 72
      000618 00                    1029 	.db	0
      000619 01                    1030 	.db	1
      00061A 08                    1031 	.db	8
      00061B 06                    1032 	.uleb128	6
      00061C 00 00 01 F6           1033 	.dw	0,502
      000620 43 4C 4B 5F 43 6C 6F  1034 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      000635 00                    1035 	.db	0
      000636 00 00 82 DB           1036 	.dw	0,(_CLK_ClockSwitchConfig)
      00063A 00 00 83 8F           1037 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
      00063E 01                    1038 	.db	1
      00063F 00 00 05 30           1039 	.dw	0,(Ldebug_loc_start+152)
      000643 00 00 00 8B           1040 	.dw	0,139
      000647 03                    1041 	.uleb128	3
      000648 02                    1042 	.db	2
      000649 91                    1043 	.db	145
      00064A 02                    1044 	.sleb128	2
      00064B 43 4C 4B 5F 53 77 69  1045 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      000659 00                    1046 	.db	0
      00065A 00 00 00 8B           1047 	.dw	0,139
      00065E 03                    1048 	.uleb128	3
      00065F 02                    1049 	.db	2
      000660 91                    1050 	.db	145
      000661 03                    1051 	.sleb128	3
      000662 43 4C 4B 5F 4E 65 77  1052 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      00066E 00                    1053 	.db	0
      00066F 00 00 00 8B           1054 	.dw	0,139
      000673 03                    1055 	.uleb128	3
      000674 02                    1056 	.db	2
      000675 91                    1057 	.db	145
      000676 04                    1058 	.sleb128	4
      000677 49 54 53 74 61 74 65  1059 	.ascii "ITState"
      00067E 00                    1060 	.db	0
      00067F 00 00 00 8B           1061 	.dw	0,139
      000683 03                    1062 	.uleb128	3
      000684 02                    1063 	.db	2
      000685 91                    1064 	.db	145
      000686 05                    1065 	.sleb128	5
      000687 43 4C 4B 5F 43 75 72  1066 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      00069C 00                    1067 	.db	0
      00069D 00 00 00 8B           1068 	.dw	0,139
      0006A1 07                    1069 	.uleb128	7
      0006A2 00 00 01 5D           1070 	.dw	0,349
      0006A6 00 00 82 ED           1071 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$21)
      0006AA 00 00 83 0B           1072 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$32)
      0006AE 04                    1073 	.uleb128	4
      0006AF 00 00 82 F9           1074 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$25)
      0006B3 00 00 82 FE           1075 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$27)
      0006B7 04                    1076 	.uleb128	4
      0006B8 00 00 83 00           1077 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$28)
      0006BC 00 00 83 05           1078 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$30)
      0006C0 04                    1079 	.uleb128	4
      0006C1 00 00 83 16           1080 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$34)
      0006C5 00 00 83 17           1081 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$36)
      0006C9 04                    1082 	.uleb128	4
      0006CA 00 00 83 1C           1083 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$38)
      0006CE 00 00 83 1F           1084 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$40)
      0006D2 04                    1085 	.uleb128	4
      0006D3 00 00 83 22           1086 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$41)
      0006D7 00 00 83 23           1087 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$43)
      0006DB 00                    1088 	.uleb128	0
      0006DC 07                    1089 	.uleb128	7
      0006DD 00 00 01 98           1090 	.dw	0,408
      0006E1 00 00 83 26           1091 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$44)
      0006E5 00 00 83 3C           1092 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$53)
      0006E9 04                    1093 	.uleb128	4
      0006EA 00 00 83 2A           1094 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$46)
      0006EE 00 00 83 2F           1095 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$48)
      0006F2 04                    1096 	.uleb128	4
      0006F3 00 00 83 31           1097 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$49)
      0006F7 00 00 83 36           1098 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$51)
      0006FB 04                    1099 	.uleb128	4
      0006FC 00 00 83 48           1100 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$55)
      000700 00 00 83 49           1101 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$57)
      000704 04                    1102 	.uleb128	4
      000705 00 00 83 4E           1103 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$59)
      000709 00 00 83 55           1104 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$62)
      00070D 04                    1105 	.uleb128	4
      00070E 00 00 83 57           1106 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$63)
      000712 00 00 83 58           1107 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$65)
      000716 00                    1108 	.uleb128	0
      000717 08                    1109 	.uleb128	8
      000718 00 00 01 BD           1110 	.dw	0,445
      00071C 00 00 83 5F           1111 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$67)
      000720 04                    1112 	.uleb128	4
      000721 00 00 83 69           1113 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$70)
      000725 00 00 83 6D           1114 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$72)
      000729 04                    1115 	.uleb128	4
      00072A 00 00 83 79           1116 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$75)
      00072E 00 00 83 7D           1117 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$77)
      000732 04                    1118 	.uleb128	4
      000733 00 00 83 89           1119 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$80)
      000737 00 00 83 8D           1120 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$82)
      00073B 00                    1121 	.uleb128	0
      00073C 09                    1122 	.uleb128	9
      00073D 01                    1123 	.db	1
      00073E 53                    1124 	.db	83
      00073F 63 6C 6F 63 6B 5F 6D  1125 	.ascii "clock_master"
             61 73 74 65 72
      00074B 00                    1126 	.db	0
      00074C 00 00 00 8B           1127 	.dw	0,139
      000750 09                    1128 	.uleb128	9
      000751 06                    1129 	.db	6
      000752 52                    1130 	.db	82
      000753 93                    1131 	.db	147
      000754 01                    1132 	.uleb128	1
      000755 51                    1133 	.db	81
      000756 93                    1134 	.db	147
      000757 01                    1135 	.uleb128	1
      000758 44 6F 77 6E 43 6F 75  1136 	.ascii "DownCounter"
             6E 74 65 72
      000763 00                    1137 	.db	0
      000764 00 00 01 F6           1138 	.dw	0,502
      000768 09                    1139 	.uleb128	9
      000769 01                    1140 	.db	1
      00076A 51                    1141 	.db	81
      00076B 53 77 69 66           1142 	.ascii "Swif"
      00076F 00                    1143 	.db	0
      000770 00 00 00 8B           1144 	.dw	0,139
      000774 00                    1145 	.uleb128	0
      000775 05                    1146 	.uleb128	5
      000776 75 6E 73 69 67 6E 65  1147 	.ascii "unsigned int"
             64 20 69 6E 74
      000782 00                    1148 	.db	0
      000783 02                    1149 	.db	2
      000784 07                    1150 	.db	7
      000785 05                    1151 	.uleb128	5
      000786 75 6E 73 69 67 6E 65  1152 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      000793 00                    1153 	.db	0
      000794 04                    1154 	.db	4
      000795 07                    1155 	.db	7
      000796 06                    1156 	.uleb128	6
      000797 00 00 02 A9           1157 	.dw	0,681
      00079B 43 4C 4B 5F 47 65 74  1158 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0007AB 00                    1159 	.db	0
      0007AC 00 00 83 8F           1160 	.dw	0,(_CLK_GetClockFreq)
      0007B0 00 00 83 E1           1161 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      0007B4 01                    1162 	.db	1
      0007B5 00 00 04 98           1163 	.dw	0,(Ldebug_loc_start)
      0007B9 00 00 02 06           1164 	.dw	0,518
      0007BD 04                    1165 	.uleb128	4
      0007BE 00 00 83 9C           1166 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$93)
      0007C2 00 00 83 AE           1167 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$98)
      0007C6 04                    1168 	.uleb128	4
      0007C7 00 00 83 C8           1169 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$108)
      0007CB 00 00 83 D1           1170 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$110)
      0007CF 04                    1171 	.uleb128	4
      0007D0 00 00 83 D3           1172 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$111)
      0007D4 00 00 83 DC           1173 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$113)
      0007D8 09                    1174 	.uleb128	9
      0007D9 0E                    1175 	.db	14
      0007DA 54                    1176 	.db	84
      0007DB 93                    1177 	.db	147
      0007DC 01                    1178 	.uleb128	1
      0007DD 53                    1179 	.db	83
      0007DE 93                    1180 	.db	147
      0007DF 01                    1181 	.uleb128	1
      0007E0 91                    1182 	.db	145
      0007E1 7E                    1183 	.sleb128	-2
      0007E2 93                    1184 	.db	147
      0007E3 01                    1185 	.uleb128	1
      0007E4 91                    1186 	.db	145
      0007E5 7F                    1187 	.sleb128	-1
      0007E6 93                    1188 	.db	147
      0007E7 01                    1189 	.uleb128	1
      0007E8 63 6C 6F 63 6B 66 72  1190 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      0007F6 00                    1191 	.db	0
      0007F7 00 00 02 06           1192 	.dw	0,518
      0007FB 09                    1193 	.uleb128	9
      0007FC 02                    1194 	.db	2
      0007FD 91                    1195 	.db	145
      0007FE 7F                    1196 	.sleb128	-1
      0007FF 63 6C 6F 63 6B 73 6F  1197 	.ascii "clocksource"
             75 72 63 65
      00080A 00                    1198 	.db	0
      00080B 00 00 00 8B           1199 	.dw	0,139
      00080F 09                    1200 	.uleb128	9
      000810 01                    1201 	.db	1
      000811 50                    1202 	.db	80
      000812 74 6D 70              1203 	.ascii "tmp"
      000815 00                    1204 	.db	0
      000816 00 00 00 8B           1205 	.dw	0,139
      00081A 09                    1206 	.uleb128	9
      00081B 01                    1207 	.db	1
      00081C 50                    1208 	.db	80
      00081D 70 72 65 73 63        1209 	.ascii "presc"
      000822 00                    1210 	.db	0
      000823 00 00 00 8B           1211 	.dw	0,139
      000827 00                    1212 	.uleb128	0
      000828 0A                    1213 	.uleb128	10
      000829 00 00 00 8B           1214 	.dw	0,139
      00082D 0B                    1215 	.uleb128	11
      00082E 00 00 02 BB           1216 	.dw	0,699
      000832 04                    1217 	.db	4
      000833 00 00 02 A9           1218 	.dw	0,681
      000837 0C                    1219 	.uleb128	12
      000838 03                    1220 	.db	3
      000839 00                    1221 	.uleb128	0
      00083A 0D                    1222 	.uleb128	13
      00083B 05                    1223 	.db	5
      00083C 03                    1224 	.db	3
      00083D 00 00 80 88           1225 	.dw	0,(_HSIDivFactor)
      000841 48 53 49 44 69 76 46  1226 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      00084D 00                    1227 	.db	0
      00084E 01                    1228 	.db	1
      00084F 00 00 02 AE           1229 	.dw	0,686
      000853 0B                    1230 	.uleb128	11
      000854 00 00 02 E1           1231 	.dw	0,737
      000858 08                    1232 	.db	8
      000859 00 00 02 A9           1233 	.dw	0,681
      00085D 0C                    1234 	.uleb128	12
      00085E 07                    1235 	.db	7
      00085F 00                    1236 	.uleb128	0
      000860 0D                    1237 	.uleb128	13
      000861 05                    1238 	.db	5
      000862 03                    1239 	.db	3
      000863 00 00 80 8C           1240 	.dw	0,(_CLKPrescTable)
      000867 43 4C 4B 50 72 65 73  1241 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      000874 00                    1242 	.db	0
      000875 01                    1243 	.db	1
      000876 00 00 02 D4           1244 	.dw	0,724
      00087A 00                    1245 	.uleb128	0
      00087B 00                    1246 	.uleb128	0
      00087C 00                    1247 	.uleb128	0
      00087D                       1248 Ldebug_info_end:
                                   1249 
                                   1250 	.area .debug_pubnames (NOLOAD)
      000164 00 00 00 6F           1251 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000168                       1252 Ldebug_pubnames_start:
      000168 00 02                 1253 	.dw	2
      00016A 00 00 05 7F           1254 	.dw	0,(Ldebug_info_start-4)
      00016E 00 00 02 FE           1255 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000172 00 00 00 4A           1256 	.dw	0,74
      000176 43 4C 4B 5F 48 53 45  1257 	.ascii "CLK_HSECmd"
             43 6D 64
      000180 00                    1258 	.db	0
      000181 00 00 00 9C           1259 	.dw	0,156
      000185 43 4C 4B 5F 43 6C 6F  1260 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      00019A 00                    1261 	.db	0
      00019B 00 00 02 17           1262 	.dw	0,535
      00019F 43 4C 4B 5F 47 65 74  1263 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0001AF 00                    1264 	.db	0
      0001B0 00 00 02 BB           1265 	.dw	0,699
      0001B4 48 53 49 44 69 76 46  1266 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0001C0 00                    1267 	.db	0
      0001C1 00 00 02 E1           1268 	.dw	0,737
      0001C5 43 4C 4B 50 72 65 73  1269 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0001D2 00                    1270 	.db	0
      0001D3 00 00 00 00           1271 	.dw	0,0
      0001D7                       1272 Ldebug_pubnames_end:
                                   1273 
                                   1274 	.area .debug_frame (NOLOAD)
      0003B6 00 00                 1275 	.dw	0
      0003B8 00 0E                 1276 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0003BA                       1277 Ldebug_CIE0_start:
      0003BA FF FF                 1278 	.dw	0xffff
      0003BC FF FF                 1279 	.dw	0xffff
      0003BE 01                    1280 	.db	1
      0003BF 00                    1281 	.db	0
      0003C0 01                    1282 	.uleb128	1
      0003C1 7F                    1283 	.sleb128	-1
      0003C2 09                    1284 	.db	9
      0003C3 0C                    1285 	.db	12
      0003C4 08                    1286 	.uleb128	8
      0003C5 02                    1287 	.uleb128	2
      0003C6 89                    1288 	.db	137
      0003C7 01                    1289 	.uleb128	1
      0003C8                       1290 Ldebug_CIE0_end:
      0003C8 00 00 00 60           1291 	.dw	0,96
      0003CC 00 00 03 B6           1292 	.dw	0,(Ldebug_CIE0_start-4)
      0003D0 00 00 83 8F           1293 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)	;initial loc
      0003D4 00 00 00 52           1294 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$118-Sstm8s_clk$CLK_GetClockFreq$88
      0003D8 01                    1295 	.db	1
      0003D9 00 00 83 8F           1296 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
      0003DD 0E                    1297 	.db	14
      0003DE 02                    1298 	.uleb128	2
      0003DF 01                    1299 	.db	1
      0003E0 00 00 83 91           1300 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      0003E4 0E                    1301 	.db	14
      0003E5 06                    1302 	.uleb128	6
      0003E6 01                    1303 	.db	1
      0003E7 00 00 83 9C           1304 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      0003EB 0E                    1305 	.db	14
      0003EC 06                    1306 	.uleb128	6
      0003ED 01                    1307 	.db	1
      0003EE 00 00 83 AF           1308 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      0003F2 0E                    1309 	.db	14
      0003F3 08                    1310 	.uleb128	8
      0003F4 01                    1311 	.db	1
      0003F5 00 00 83 B1           1312 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      0003F9 0E                    1313 	.db	14
      0003FA 0A                    1314 	.uleb128	10
      0003FB 01                    1315 	.db	1
      0003FC 00 00 83 B3           1316 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      000400 0E                    1317 	.db	14
      000401 0B                    1318 	.uleb128	11
      000402 01                    1319 	.db	1
      000403 00 00 83 B5           1320 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      000407 0E                    1321 	.db	14
      000408 0C                    1322 	.uleb128	12
      000409 01                    1323 	.db	1
      00040A 00 00 83 B7           1324 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      00040E 0E                    1325 	.db	14
      00040F 0D                    1326 	.uleb128	13
      000410 01                    1327 	.db	1
      000411 00 00 83 B9           1328 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      000415 0E                    1329 	.db	14
      000416 0E                    1330 	.uleb128	14
      000417 01                    1331 	.db	1
      000418 00 00 83 BE           1332 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      00041C 0E                    1333 	.db	14
      00041D 06                    1334 	.uleb128	6
      00041E 01                    1335 	.db	1
      00041F 00 00 83 C8           1336 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      000423 0E                    1337 	.db	14
      000424 06                    1338 	.uleb128	6
      000425 01                    1339 	.db	1
      000426 00 00 83 E0           1340 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      00042A 0E                    1341 	.db	14
      00042B 02                    1342 	.uleb128	2
                                   1343 
                                   1344 	.area .debug_frame (NOLOAD)
      00042C 00 00                 1345 	.dw	0
      00042E 00 0E                 1346 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000430                       1347 Ldebug_CIE1_start:
      000430 FF FF                 1348 	.dw	0xffff
      000432 FF FF                 1349 	.dw	0xffff
      000434 01                    1350 	.db	1
      000435 00                    1351 	.db	0
      000436 01                    1352 	.uleb128	1
      000437 7F                    1353 	.sleb128	-1
      000438 09                    1354 	.db	9
      000439 0C                    1355 	.db	12
      00043A 08                    1356 	.uleb128	8
      00043B 02                    1357 	.uleb128	2
      00043C 89                    1358 	.db	137
      00043D 01                    1359 	.uleb128	1
      00043E                       1360 Ldebug_CIE1_end:
      00043E 00 00 00 3D           1361 	.dw	0,61
      000442 00 00 04 2C           1362 	.dw	0,(Ldebug_CIE1_start-4)
      000446 00 00 82 DB           1363 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)	;initial loc
      00044A 00 00 00 B4           1364 	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$86-Sstm8s_clk$CLK_ClockSwitchConfig$14
      00044E 01                    1365 	.db	1
      00044F 00 00 82 DB           1366 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
      000453 0E                    1367 	.db	14
      000454 02                    1368 	.uleb128	2
      000455 01                    1369 	.db	1
      000456 00 00 82 E4           1370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      00045A 0E                    1371 	.db	14
      00045B 03                    1372 	.uleb128	3
      00045C 01                    1373 	.db	1
      00045D 00 00 82 E8           1374 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      000461 0E                    1375 	.db	14
      000462 02                    1376 	.uleb128	2
      000463 01                    1377 	.db	1
      000464 00 00 82 ED           1378 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      000468 0E                    1379 	.db	14
      000469 02                    1380 	.uleb128	2
      00046A 01                    1381 	.db	1
      00046B 00 00 83 69           1382 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      00046F 0E                    1383 	.db	14
      000470 02                    1384 	.uleb128	2
      000471 01                    1385 	.db	1
      000472 00 00 83 79           1386 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      000476 0E                    1387 	.db	14
      000477 02                    1388 	.uleb128	2
      000478 01                    1389 	.db	1
      000479 00 00 83 89           1390 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      00047D 0E                    1391 	.db	14
      00047E 02                    1392 	.uleb128	2
                                   1393 
                                   1394 	.area .debug_frame (NOLOAD)
      00047F 00 00                 1395 	.dw	0
      000481 00 0E                 1396 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000483                       1397 Ldebug_CIE2_start:
      000483 FF FF                 1398 	.dw	0xffff
      000485 FF FF                 1399 	.dw	0xffff
      000487 01                    1400 	.db	1
      000488 00                    1401 	.db	0
      000489 01                    1402 	.uleb128	1
      00048A 7F                    1403 	.sleb128	-1
      00048B 09                    1404 	.db	9
      00048C 0C                    1405 	.db	12
      00048D 08                    1406 	.uleb128	8
      00048E 02                    1407 	.uleb128	2
      00048F 89                    1408 	.db	137
      000490 01                    1409 	.uleb128	1
      000491                       1410 Ldebug_CIE2_end:
      000491 00 00 00 13           1411 	.dw	0,19
      000495 00 00 04 7F           1412 	.dw	0,(Ldebug_CIE2_start-4)
      000499 00 00 82 C7           1413 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)	;initial loc
      00049D 00 00 00 14           1414 	.dw	0,Sstm8s_clk$CLK_HSECmd$12-Sstm8s_clk$CLK_HSECmd$1
      0004A1 01                    1415 	.db	1
      0004A2 00 00 82 C7           1416 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
      0004A6 0E                    1417 	.db	14
      0004A7 02                    1418 	.uleb128	2
