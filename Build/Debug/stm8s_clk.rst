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
      0082AF                         58 _CLK_HSECmd:
                           000000    59 	Sstm8s_clk$CLK_HSECmd$1 ==.
                           000000    60 	Sstm8s_clk$CLK_HSECmd$2 ==.
                                     61 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082AF C6 50 C1         [ 1]   62 	ld	a, 0x50c1
                           000003    63 	Sstm8s_clk$CLK_HSECmd$3 ==.
                                     64 ;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0082B2 0D 03            [ 1]   65 	tnz	(0x03, sp)
      0082B4 27 07            [ 1]   66 	jreq	00102$
                           000007    67 	Sstm8s_clk$CLK_HSECmd$4 ==.
                           000007    68 	Sstm8s_clk$CLK_HSECmd$5 ==.
                                     69 ;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082B6 AA 01            [ 1]   70 	or	a, #0x01
      0082B8 C7 50 C1         [ 1]   71 	ld	0x50c1, a
                           00000C    72 	Sstm8s_clk$CLK_HSECmd$6 ==.
      0082BB 20 05            [ 2]   73 	jra	00104$
      0082BD                         74 00102$:
                           00000E    75 	Sstm8s_clk$CLK_HSECmd$7 ==.
                           00000E    76 	Sstm8s_clk$CLK_HSECmd$8 ==.
                                     77 ;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082BD A4 FE            [ 1]   78 	and	a, #0xfe
      0082BF C7 50 C1         [ 1]   79 	ld	0x50c1, a
                           000013    80 	Sstm8s_clk$CLK_HSECmd$9 ==.
      0082C2                         81 00104$:
                           000013    82 	Sstm8s_clk$CLK_HSECmd$10 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
                           000013    84 	Sstm8s_clk$CLK_HSECmd$11 ==.
                           000013    85 	XG$CLK_HSECmd$0$0 ==.
      0082C2 81               [ 4]   86 	ret
                           000014    87 	Sstm8s_clk$CLK_HSECmd$12 ==.
                           000014    88 	Sstm8s_clk$CLK_ClockSwitchConfig$13 ==.
                                     89 ;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                     90 ;	-----------------------------------------
                                     91 ;	 function CLK_ClockSwitchConfig
                                     92 ;	-----------------------------------------
      0082C3                         93 _CLK_ClockSwitchConfig:
                           000014    94 	Sstm8s_clk$CLK_ClockSwitchConfig$14 ==.
                           000014    95 	Sstm8s_clk$CLK_ClockSwitchConfig$15 ==.
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      0082C3 C6 50 C3         [ 1]   97 	ld	a, 0x50c3
      0082C6 90 97            [ 1]   98 	ld	yl, a
                           000019    99 	Sstm8s_clk$CLK_ClockSwitchConfig$16 ==.
                                    100 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082C8 C6 50 C5         [ 1]  101 	ld	a, 0x50c5
                           00001C   102 	Sstm8s_clk$CLK_ClockSwitchConfig$17 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      0082CB 88               [ 1]  104 	push	a
                           00001D   105 	Sstm8s_clk$CLK_ClockSwitchConfig$18 ==.
      0082CC 7B 04            [ 1]  106 	ld	a, (0x04, sp)
      0082CE 4A               [ 1]  107 	dec	a
      0082CF 84               [ 1]  108 	pop	a
                           000021   109 	Sstm8s_clk$CLK_ClockSwitchConfig$19 ==.
      0082D0 27 03            [ 1]  110 	jreq	00233$
      0082D2 CC 83 0E         [ 2]  111 	jp	00122$
      0082D5                        112 00233$:
                           000026   113 	Sstm8s_clk$CLK_ClockSwitchConfig$20 ==.
                           000026   114 	Sstm8s_clk$CLK_ClockSwitchConfig$21 ==.
                           000026   115 	Sstm8s_clk$CLK_ClockSwitchConfig$22 ==.
                                    116 ;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      0082D5 AA 02            [ 1]  117 	or	a, #0x02
      0082D7 C7 50 C5         [ 1]  118 	ld	0x50c5, a
                           00002B   119 	Sstm8s_clk$CLK_ClockSwitchConfig$23 ==.
      0082DA C6 50 C5         [ 1]  120 	ld	a, 0x50c5
                           00002E   121 	Sstm8s_clk$CLK_ClockSwitchConfig$24 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
      0082DD 0D 05            [ 1]  123 	tnz	(0x05, sp)
      0082DF 27 07            [ 1]  124 	jreq	00102$
                           000032   125 	Sstm8s_clk$CLK_ClockSwitchConfig$25 ==.
                           000032   126 	Sstm8s_clk$CLK_ClockSwitchConfig$26 ==.
                                    127 ;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082E1 AA 04            [ 1]  128 	or	a, #0x04
      0082E3 C7 50 C5         [ 1]  129 	ld	0x50c5, a
                           000037   130 	Sstm8s_clk$CLK_ClockSwitchConfig$27 ==.
      0082E6 20 05            [ 2]  131 	jra	00103$
      0082E8                        132 00102$:
                           000039   133 	Sstm8s_clk$CLK_ClockSwitchConfig$28 ==.
                           000039   134 	Sstm8s_clk$CLK_ClockSwitchConfig$29 ==.
                                    135 ;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0082E8 A4 FB            [ 1]  136 	and	a, #0xfb
      0082EA C7 50 C5         [ 1]  137 	ld	0x50c5, a
                           00003E   138 	Sstm8s_clk$CLK_ClockSwitchConfig$30 ==.
      0082ED                        139 00103$:
                           00003E   140 	Sstm8s_clk$CLK_ClockSwitchConfig$31 ==.
                                    141 ;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0082ED AE 50 C4         [ 2]  142 	ldw	x, #0x50c4
      0082F0 7B 04            [ 1]  143 	ld	a, (0x04, sp)
      0082F2 F7               [ 1]  144 	ld	(x), a
                           000044   145 	Sstm8s_clk$CLK_ClockSwitchConfig$32 ==.
                           000044   146 	Sstm8s_clk$CLK_ClockSwitchConfig$33 ==.
                                    147 ;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0082F3 5F               [ 1]  148 	clrw	x
      0082F4 5A               [ 2]  149 	decw	x
      0082F5                        150 00105$:
      0082F5 C6 50 C5         [ 1]  151 	ld	a, 0x50c5
      0082F8 44               [ 1]  152 	srl	a
      0082F9 24 06            [ 1]  153 	jrnc	00107$
      0082FB 5D               [ 2]  154 	tnzw	x
      0082FC 27 03            [ 1]  155 	jreq	00107$
                           00004F   156 	Sstm8s_clk$CLK_ClockSwitchConfig$34 ==.
                           00004F   157 	Sstm8s_clk$CLK_ClockSwitchConfig$35 ==.
                                    158 ;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
      0082FE 5A               [ 2]  159 	decw	x
                           000050   160 	Sstm8s_clk$CLK_ClockSwitchConfig$36 ==.
      0082FF 20 F4            [ 2]  161 	jra	00105$
      008301                        162 00107$:
                           000052   163 	Sstm8s_clk$CLK_ClockSwitchConfig$37 ==.
                                    164 ;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
      008301 5D               [ 2]  165 	tnzw	x
      008302 27 06            [ 1]  166 	jreq	00109$
                           000055   167 	Sstm8s_clk$CLK_ClockSwitchConfig$38 ==.
                           000055   168 	Sstm8s_clk$CLK_ClockSwitchConfig$39 ==.
                                    169 ;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
      008304 A6 01            [ 1]  170 	ld	a, #0x01
      008306 97               [ 1]  171 	ld	xl, a
                           000058   172 	Sstm8s_clk$CLK_ClockSwitchConfig$40 ==.
      008307 CC 83 40         [ 2]  173 	jp	00123$
      00830A                        174 00109$:
                           00005B   175 	Sstm8s_clk$CLK_ClockSwitchConfig$41 ==.
                           00005B   176 	Sstm8s_clk$CLK_ClockSwitchConfig$42 ==.
                                    177 ;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
      00830A 5F               [ 1]  178 	clrw	x
                           00005C   179 	Sstm8s_clk$CLK_ClockSwitchConfig$43 ==.
      00830B CC 83 40         [ 2]  180 	jp	00123$
      00830E                        181 00122$:
                           00005F   182 	Sstm8s_clk$CLK_ClockSwitchConfig$44 ==.
                           00005F   183 	Sstm8s_clk$CLK_ClockSwitchConfig$45 ==.
                                    184 ;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
      00830E 0D 05            [ 1]  185 	tnz	(0x05, sp)
      008310 27 07            [ 1]  186 	jreq	00112$
                           000063   187 	Sstm8s_clk$CLK_ClockSwitchConfig$46 ==.
                           000063   188 	Sstm8s_clk$CLK_ClockSwitchConfig$47 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008312 AA 04            [ 1]  190 	or	a, #0x04
      008314 C7 50 C5         [ 1]  191 	ld	0x50c5, a
                           000068   192 	Sstm8s_clk$CLK_ClockSwitchConfig$48 ==.
      008317 20 05            [ 2]  193 	jra	00113$
      008319                        194 00112$:
                           00006A   195 	Sstm8s_clk$CLK_ClockSwitchConfig$49 ==.
                           00006A   196 	Sstm8s_clk$CLK_ClockSwitchConfig$50 ==.
                                    197 ;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008319 A4 FB            [ 1]  198 	and	a, #0xfb
      00831B C7 50 C5         [ 1]  199 	ld	0x50c5, a
                           00006F   200 	Sstm8s_clk$CLK_ClockSwitchConfig$51 ==.
      00831E                        201 00113$:
                           00006F   202 	Sstm8s_clk$CLK_ClockSwitchConfig$52 ==.
                                    203 ;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00831E AE 50 C4         [ 2]  204 	ldw	x, #0x50c4
      008321 7B 04            [ 1]  205 	ld	a, (0x04, sp)
      008323 F7               [ 1]  206 	ld	(x), a
                           000075   207 	Sstm8s_clk$CLK_ClockSwitchConfig$53 ==.
                           000075   208 	Sstm8s_clk$CLK_ClockSwitchConfig$54 ==.
                                    209 ;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008324 5F               [ 1]  210 	clrw	x
      008325 5A               [ 2]  211 	decw	x
      008326                        212 00115$:
      008326 C6 50 C5         [ 1]  213 	ld	a, 0x50c5
      008329 A5 08            [ 1]  214 	bcp	a, #0x08
      00832B 27 06            [ 1]  215 	jreq	00117$
      00832D 5D               [ 2]  216 	tnzw	x
      00832E 27 03            [ 1]  217 	jreq	00117$
                           000081   218 	Sstm8s_clk$CLK_ClockSwitchConfig$55 ==.
                           000081   219 	Sstm8s_clk$CLK_ClockSwitchConfig$56 ==.
                                    220 ;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
      008330 5A               [ 2]  221 	decw	x
                           000082   222 	Sstm8s_clk$CLK_ClockSwitchConfig$57 ==.
      008331 20 F3            [ 2]  223 	jra	00115$
      008333                        224 00117$:
                           000084   225 	Sstm8s_clk$CLK_ClockSwitchConfig$58 ==.
                                    226 ;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
      008333 5D               [ 2]  227 	tnzw	x
      008334 27 09            [ 1]  228 	jreq	00119$
                           000087   229 	Sstm8s_clk$CLK_ClockSwitchConfig$59 ==.
                           000087   230 	Sstm8s_clk$CLK_ClockSwitchConfig$60 ==.
                                    231 ;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008336 72 12 50 C5      [ 1]  232 	bset	20677, #1
                           00008B   233 	Sstm8s_clk$CLK_ClockSwitchConfig$61 ==.
                                    234 ;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
      00833A A6 01            [ 1]  235 	ld	a, #0x01
      00833C 97               [ 1]  236 	ld	xl, a
                           00008E   237 	Sstm8s_clk$CLK_ClockSwitchConfig$62 ==.
      00833D 20 01            [ 2]  238 	jra	00123$
      00833F                        239 00119$:
                           000090   240 	Sstm8s_clk$CLK_ClockSwitchConfig$63 ==.
                           000090   241 	Sstm8s_clk$CLK_ClockSwitchConfig$64 ==.
                                    242 ;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
      00833F 5F               [ 1]  243 	clrw	x
                           000091   244 	Sstm8s_clk$CLK_ClockSwitchConfig$65 ==.
      008340                        245 00123$:
                           000091   246 	Sstm8s_clk$CLK_ClockSwitchConfig$66 ==.
                                    247 ;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
      008340 9F               [ 1]  248 	ld	a, xl
      008341 4D               [ 1]  249 	tnz	a
      008342 26 03            [ 1]  250 	jrne	00242$
      008344 CC 83 75         [ 2]  251 	jp	00136$
      008347                        252 00242$:
                           000098   253 	Sstm8s_clk$CLK_ClockSwitchConfig$67 ==.
                           000098   254 	Sstm8s_clk$CLK_ClockSwitchConfig$68 ==.
                                    255 ;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      008347 0D 06            [ 1]  256 	tnz	(0x06, sp)
      008349 26 0C            [ 1]  257 	jrne	00132$
      00834B 90 9F            [ 1]  258 	ld	a, yl
      00834D A1 E1            [ 1]  259 	cp	a, #0xe1
      00834F 26 06            [ 1]  260 	jrne	00132$
                           0000A2   261 	Sstm8s_clk$CLK_ClockSwitchConfig$69 ==.
                           0000A2   262 	Sstm8s_clk$CLK_ClockSwitchConfig$70 ==.
                           0000A2   263 	Sstm8s_clk$CLK_ClockSwitchConfig$71 ==.
                                    264 ;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008351 72 11 50 C0      [ 1]  265 	bres	20672, #0
                           0000A6   266 	Sstm8s_clk$CLK_ClockSwitchConfig$72 ==.
      008355 20 1E            [ 2]  267 	jra	00136$
      008357                        268 00132$:
                           0000A8   269 	Sstm8s_clk$CLK_ClockSwitchConfig$73 ==.
                                    270 ;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008357 0D 06            [ 1]  271 	tnz	(0x06, sp)
      008359 26 0C            [ 1]  272 	jrne	00128$
      00835B 90 9F            [ 1]  273 	ld	a, yl
      00835D A1 D2            [ 1]  274 	cp	a, #0xd2
      00835F 26 06            [ 1]  275 	jrne	00128$
                           0000B2   276 	Sstm8s_clk$CLK_ClockSwitchConfig$74 ==.
                           0000B2   277 	Sstm8s_clk$CLK_ClockSwitchConfig$75 ==.
                           0000B2   278 	Sstm8s_clk$CLK_ClockSwitchConfig$76 ==.
                                    279 ;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008361 72 17 50 C0      [ 1]  280 	bres	20672, #3
                           0000B6   281 	Sstm8s_clk$CLK_ClockSwitchConfig$77 ==.
      008365 20 0E            [ 2]  282 	jra	00136$
      008367                        283 00128$:
                           0000B8   284 	Sstm8s_clk$CLK_ClockSwitchConfig$78 ==.
                                    285 ;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008367 0D 06            [ 1]  286 	tnz	(0x06, sp)
      008369 26 0A            [ 1]  287 	jrne	00136$
      00836B 90 9F            [ 1]  288 	ld	a, yl
      00836D A1 B4            [ 1]  289 	cp	a, #0xb4
      00836F 26 04            [ 1]  290 	jrne	00136$
                           0000C2   291 	Sstm8s_clk$CLK_ClockSwitchConfig$79 ==.
                           0000C2   292 	Sstm8s_clk$CLK_ClockSwitchConfig$80 ==.
                           0000C2   293 	Sstm8s_clk$CLK_ClockSwitchConfig$81 ==.
                                    294 ;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008371 72 11 50 C1      [ 1]  295 	bres	20673, #0
                           0000C6   296 	Sstm8s_clk$CLK_ClockSwitchConfig$82 ==.
      008375                        297 00136$:
                           0000C6   298 	Sstm8s_clk$CLK_ClockSwitchConfig$83 ==.
                                    299 ;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
      008375 9F               [ 1]  300 	ld	a, xl
                           0000C7   301 	Sstm8s_clk$CLK_ClockSwitchConfig$84 ==.
                                    302 ;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
                           0000C7   303 	Sstm8s_clk$CLK_ClockSwitchConfig$85 ==.
                           0000C7   304 	XG$CLK_ClockSwitchConfig$0$0 ==.
      008376 81               [ 4]  305 	ret
                           0000C8   306 	Sstm8s_clk$CLK_ClockSwitchConfig$86 ==.
                           0000C8   307 	Sstm8s_clk$CLK_GetClockFreq$87 ==.
                                    308 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    309 ;	-----------------------------------------
                                    310 ;	 function CLK_GetClockFreq
                                    311 ;	-----------------------------------------
      008377                        312 _CLK_GetClockFreq:
                           0000C8   313 	Sstm8s_clk$CLK_GetClockFreq$88 ==.
      008377 52 04            [ 2]  314 	sub	sp, #4
                           0000CA   315 	Sstm8s_clk$CLK_GetClockFreq$89 ==.
                           0000CA   316 	Sstm8s_clk$CLK_GetClockFreq$90 ==.
                                    317 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008379 C6 50 C3         [ 1]  318 	ld	a, 0x50c3
      00837C 6B 04            [ 1]  319 	ld	(0x04, sp), a
                           0000CF   320 	Sstm8s_clk$CLK_GetClockFreq$91 ==.
                                    321 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00837E 7B 04            [ 1]  322 	ld	a, (0x04, sp)
      008380 A1 E1            [ 1]  323 	cp	a, #0xe1
      008382 26 26            [ 1]  324 	jrne	00105$
                           0000D5   325 	Sstm8s_clk$CLK_GetClockFreq$92 ==.
                           0000D5   326 	Sstm8s_clk$CLK_GetClockFreq$93 ==.
                           0000D5   327 	Sstm8s_clk$CLK_GetClockFreq$94 ==.
                                    328 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008384 C6 50 C6         [ 1]  329 	ld	a, 0x50c6
      008387 A4 18            [ 1]  330 	and	a, #0x18
                           0000DA   331 	Sstm8s_clk$CLK_GetClockFreq$95 ==.
                                    332 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008389 44               [ 1]  333 	srl	a
      00838A 44               [ 1]  334 	srl	a
      00838B 44               [ 1]  335 	srl	a
                           0000DD   336 	Sstm8s_clk$CLK_GetClockFreq$96 ==.
                                    337 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00838C 5F               [ 1]  338 	clrw	x
      00838D 97               [ 1]  339 	ld	xl, a
      00838E 1C 80 88         [ 2]  340 	addw	x, #(_HSIDivFactor + 0)
      008391 F6               [ 1]  341 	ld	a, (x)
                           0000E3   342 	Sstm8s_clk$CLK_GetClockFreq$97 ==.
                                    343 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      008392 5F               [ 1]  344 	clrw	x
      008393 97               [ 1]  345 	ld	xl, a
      008394 90 5F            [ 1]  346 	clrw	y
                           0000E7   347 	Sstm8s_clk$CLK_GetClockFreq$98 ==.
      008396 89               [ 2]  348 	pushw	x
                           0000E8   349 	Sstm8s_clk$CLK_GetClockFreq$99 ==.
      008397 90 89            [ 2]  350 	pushw	y
                           0000EA   351 	Sstm8s_clk$CLK_GetClockFreq$100 ==.
      008399 4B 00            [ 1]  352 	push	#0x00
                           0000EC   353 	Sstm8s_clk$CLK_GetClockFreq$101 ==.
      00839B 4B 24            [ 1]  354 	push	#0x24
                           0000EE   355 	Sstm8s_clk$CLK_GetClockFreq$102 ==.
      00839D 4B F4            [ 1]  356 	push	#0xf4
                           0000F0   357 	Sstm8s_clk$CLK_GetClockFreq$103 ==.
      00839F 4B 00            [ 1]  358 	push	#0x00
                           0000F2   359 	Sstm8s_clk$CLK_GetClockFreq$104 ==.
      0083A1 CD 95 35         [ 4]  360 	call	__divulong
      0083A4 5B 08            [ 2]  361 	addw	sp, #8
                           0000F7   362 	Sstm8s_clk$CLK_GetClockFreq$105 ==.
      0083A6 1F 03            [ 2]  363 	ldw	(0x03, sp), x
      0083A8 20 1A            [ 2]  364 	jra	00106$
      0083AA                        365 00105$:
                           0000FB   366 	Sstm8s_clk$CLK_GetClockFreq$106 ==.
                                    367 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0083AA 7B 04            [ 1]  368 	ld	a, (0x04, sp)
      0083AC A1 D2            [ 1]  369 	cp	a, #0xd2
      0083AE 26 0B            [ 1]  370 	jrne	00102$
                           000101   371 	Sstm8s_clk$CLK_GetClockFreq$107 ==.
                           000101   372 	Sstm8s_clk$CLK_GetClockFreq$108 ==.
                           000101   373 	Sstm8s_clk$CLK_GetClockFreq$109 ==.
                                    374 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0083B0 AE F4 00         [ 2]  375 	ldw	x, #0xf400
      0083B3 1F 03            [ 2]  376 	ldw	(0x03, sp), x
      0083B5 90 AE 00 01      [ 2]  377 	ldw	y, #0x0001
                           00010A   378 	Sstm8s_clk$CLK_GetClockFreq$110 ==.
      0083B9 20 09            [ 2]  379 	jra	00106$
      0083BB                        380 00102$:
                           00010C   381 	Sstm8s_clk$CLK_GetClockFreq$111 ==.
                           00010C   382 	Sstm8s_clk$CLK_GetClockFreq$112 ==.
                                    383 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0083BB AE 12 00         [ 2]  384 	ldw	x, #0x1200
      0083BE 1F 03            [ 2]  385 	ldw	(0x03, sp), x
      0083C0 90 AE 00 7A      [ 2]  386 	ldw	y, #0x007a
                           000115   387 	Sstm8s_clk$CLK_GetClockFreq$113 ==.
      0083C4                        388 00106$:
                           000115   389 	Sstm8s_clk$CLK_GetClockFreq$114 ==.
                                    390 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0083C4 1E 03            [ 2]  391 	ldw	x, (0x03, sp)
                           000117   392 	Sstm8s_clk$CLK_GetClockFreq$115 ==.
                                    393 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0083C6 5B 04            [ 2]  394 	addw	sp, #4
                           000119   395 	Sstm8s_clk$CLK_GetClockFreq$116 ==.
                           000119   396 	Sstm8s_clk$CLK_GetClockFreq$117 ==.
                           000119   397 	XG$CLK_GetClockFreq$0$0 ==.
      0083C8 81               [ 4]  398 	ret
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
      00034F 00 00 01 D8            422 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000353                        423 Ldebug_line_start:
      000353 00 02                  424 	.dw	2
      000355 00 00 00 7F            425 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000359 01                     426 	.db	1
      00035A 01                     427 	.db	1
      00035B FB                     428 	.db	-5
      00035C 0F                     429 	.db	15
      00035D 0A                     430 	.db	10
      00035E 00                     431 	.db	0
      00035F 01                     432 	.db	1
      000360 01                     433 	.db	1
      000361 01                     434 	.db	1
      000362 01                     435 	.db	1
      000363 00                     436 	.db	0
      000364 00                     437 	.db	0
      000365 00                     438 	.db	0
      000366 01                     439 	.db	1
      000367 43 3A 5C 50 72 6F 67   440 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00038F 00                     441 	.db	0
      000390 43 3A 5C 50 72 6F 67   442 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0003B3 00                     443 	.db	0
      0003B4 00                     444 	.db	0
      0003B5 53 6F 75 72 63 65 2F   445 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      0003D3 00                     446 	.db	0
      0003D4 00                     447 	.uleb128	0
      0003D5 00                     448 	.uleb128	0
      0003D6 00                     449 	.uleb128	0
      0003D7 00                     450 	.db	0
      0003D8                        451 Ldebug_line_stmt:
      0003D8 00                     452 	.db	0
      0003D9 05                     453 	.uleb128	5
      0003DA 02                     454 	.db	2
      0003DB 00 00 82 AF            455 	.dw	0,(Sstm8s_clk$CLK_HSECmd$0)
      0003DF 03                     456 	.db	3
      0003E0 F8 00                  457 	.sleb128	120
      0003E2 01                     458 	.db	1
      0003E3 09                     459 	.db	9
      0003E4 00 00                  460 	.dw	Sstm8s_clk$CLK_HSECmd$2-Sstm8s_clk$CLK_HSECmd$0
      0003E6 03                     461 	.db	3
      0003E7 08                     462 	.sleb128	8
      0003E8 01                     463 	.db	1
      0003E9 09                     464 	.db	9
      0003EA 00 03                  465 	.dw	Sstm8s_clk$CLK_HSECmd$3-Sstm8s_clk$CLK_HSECmd$2
      0003EC 03                     466 	.db	3
      0003ED 7D                     467 	.sleb128	-3
      0003EE 01                     468 	.db	1
      0003EF 09                     469 	.db	9
      0003F0 00 04                  470 	.dw	Sstm8s_clk$CLK_HSECmd$5-Sstm8s_clk$CLK_HSECmd$3
      0003F2 03                     471 	.db	3
      0003F3 03                     472 	.sleb128	3
      0003F4 01                     473 	.db	1
      0003F5 09                     474 	.db	9
      0003F6 00 07                  475 	.dw	Sstm8s_clk$CLK_HSECmd$8-Sstm8s_clk$CLK_HSECmd$5
      0003F8 03                     476 	.db	3
      0003F9 05                     477 	.sleb128	5
      0003FA 01                     478 	.db	1
      0003FB 09                     479 	.db	9
      0003FC 00 05                  480 	.dw	Sstm8s_clk$CLK_HSECmd$10-Sstm8s_clk$CLK_HSECmd$8
      0003FE 03                     481 	.db	3
      0003FF 02                     482 	.sleb128	2
      000400 01                     483 	.db	1
      000401 09                     484 	.db	9
      000402 00 01                  485 	.dw	1+Sstm8s_clk$CLK_HSECmd$11-Sstm8s_clk$CLK_HSECmd$10
      000404 00                     486 	.db	0
      000405 01                     487 	.uleb128	1
      000406 01                     488 	.db	1
      000407 00                     489 	.db	0
      000408 05                     490 	.uleb128	5
      000409 02                     491 	.db	2
      00040A 00 00 82 C3            492 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$13)
      00040E 03                     493 	.db	3
      00040F B4 02                  494 	.sleb128	308
      000411 01                     495 	.db	1
      000412 09                     496 	.db	9
      000413 00 00                  497 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$15-Sstm8s_clk$CLK_ClockSwitchConfig$13
      000415 03                     498 	.db	3
      000416 0D                     499 	.sleb128	13
      000417 01                     500 	.db	1
      000418 09                     501 	.db	9
      000419 00 05                  502 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$16-Sstm8s_clk$CLK_ClockSwitchConfig$15
      00041B 03                     503 	.db	3
      00041C 06                     504 	.sleb128	6
      00041D 01                     505 	.db	1
      00041E 09                     506 	.db	9
      00041F 00 03                  507 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$17-Sstm8s_clk$CLK_ClockSwitchConfig$16
      000421 03                     508 	.db	3
      000422 7D                     509 	.sleb128	-3
      000423 01                     510 	.db	1
      000424 09                     511 	.db	9
      000425 00 0A                  512 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$22-Sstm8s_clk$CLK_ClockSwitchConfig$17
      000427 03                     513 	.db	3
      000428 03                     514 	.sleb128	3
      000429 01                     515 	.db	1
      00042A 09                     516 	.db	9
      00042B 00 08                  517 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$24-Sstm8s_clk$CLK_ClockSwitchConfig$22
      00042D 03                     518 	.db	3
      00042E 03                     519 	.sleb128	3
      00042F 01                     520 	.db	1
      000430 09                     521 	.db	9
      000431 00 04                  522 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$26-Sstm8s_clk$CLK_ClockSwitchConfig$24
      000433 03                     523 	.db	3
      000434 02                     524 	.sleb128	2
      000435 01                     525 	.db	1
      000436 09                     526 	.db	9
      000437 00 07                  527 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$29-Sstm8s_clk$CLK_ClockSwitchConfig$26
      000439 03                     528 	.db	3
      00043A 04                     529 	.sleb128	4
      00043B 01                     530 	.db	1
      00043C 09                     531 	.db	9
      00043D 00 05                  532 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$31-Sstm8s_clk$CLK_ClockSwitchConfig$29
      00043F 03                     533 	.db	3
      000440 04                     534 	.sleb128	4
      000441 01                     535 	.db	1
      000442 09                     536 	.db	9
      000443 00 06                  537 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$33-Sstm8s_clk$CLK_ClockSwitchConfig$31
      000445 03                     538 	.db	3
      000446 03                     539 	.sleb128	3
      000447 01                     540 	.db	1
      000448 09                     541 	.db	9
      000449 00 0B                  542 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$35-Sstm8s_clk$CLK_ClockSwitchConfig$33
      00044B 03                     543 	.db	3
      00044C 02                     544 	.sleb128	2
      00044D 01                     545 	.db	1
      00044E 09                     546 	.db	9
      00044F 00 03                  547 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$37-Sstm8s_clk$CLK_ClockSwitchConfig$35
      000451 03                     548 	.db	3
      000452 03                     549 	.sleb128	3
      000453 01                     550 	.db	1
      000454 09                     551 	.db	9
      000455 00 03                  552 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$39-Sstm8s_clk$CLK_ClockSwitchConfig$37
      000457 03                     553 	.db	3
      000458 02                     554 	.sleb128	2
      000459 01                     555 	.db	1
      00045A 09                     556 	.db	9
      00045B 00 06                  557 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$42-Sstm8s_clk$CLK_ClockSwitchConfig$39
      00045D 03                     558 	.db	3
      00045E 04                     559 	.sleb128	4
      00045F 01                     560 	.db	1
      000460 09                     561 	.db	9
      000461 00 04                  562 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$45-Sstm8s_clk$CLK_ClockSwitchConfig$42
      000463 03                     563 	.db	3
      000464 06                     564 	.sleb128	6
      000465 01                     565 	.db	1
      000466 09                     566 	.db	9
      000467 00 04                  567 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$47-Sstm8s_clk$CLK_ClockSwitchConfig$45
      000469 03                     568 	.db	3
      00046A 02                     569 	.sleb128	2
      00046B 01                     570 	.db	1
      00046C 09                     571 	.db	9
      00046D 00 07                  572 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$50-Sstm8s_clk$CLK_ClockSwitchConfig$47
      00046F 03                     573 	.db	3
      000470 04                     574 	.sleb128	4
      000471 01                     575 	.db	1
      000472 09                     576 	.db	9
      000473 00 05                  577 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$52-Sstm8s_clk$CLK_ClockSwitchConfig$50
      000475 03                     578 	.db	3
      000476 04                     579 	.sleb128	4
      000477 01                     580 	.db	1
      000478 09                     581 	.db	9
      000479 00 06                  582 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$54-Sstm8s_clk$CLK_ClockSwitchConfig$52
      00047B 03                     583 	.db	3
      00047C 03                     584 	.sleb128	3
      00047D 01                     585 	.db	1
      00047E 09                     586 	.db	9
      00047F 00 0C                  587 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$56-Sstm8s_clk$CLK_ClockSwitchConfig$54
      000481 03                     588 	.db	3
      000482 02                     589 	.sleb128	2
      000483 01                     590 	.db	1
      000484 09                     591 	.db	9
      000485 00 03                  592 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$58-Sstm8s_clk$CLK_ClockSwitchConfig$56
      000487 03                     593 	.db	3
      000488 03                     594 	.sleb128	3
      000489 01                     595 	.db	1
      00048A 09                     596 	.db	9
      00048B 00 03                  597 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$60-Sstm8s_clk$CLK_ClockSwitchConfig$58
      00048D 03                     598 	.db	3
      00048E 03                     599 	.sleb128	3
      00048F 01                     600 	.db	1
      000490 09                     601 	.db	9
      000491 00 04                  602 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$61-Sstm8s_clk$CLK_ClockSwitchConfig$60
      000493 03                     603 	.db	3
      000494 01                     604 	.sleb128	1
      000495 01                     605 	.db	1
      000496 09                     606 	.db	9
      000497 00 05                  607 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$64-Sstm8s_clk$CLK_ClockSwitchConfig$61
      000499 03                     608 	.db	3
      00049A 04                     609 	.sleb128	4
      00049B 01                     610 	.db	1
      00049C 09                     611 	.db	9
      00049D 00 01                  612 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$66-Sstm8s_clk$CLK_ClockSwitchConfig$64
      00049F 03                     613 	.db	3
      0004A0 03                     614 	.sleb128	3
      0004A1 01                     615 	.db	1
      0004A2 09                     616 	.db	9
      0004A3 00 07                  617 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$68-Sstm8s_clk$CLK_ClockSwitchConfig$66
      0004A5 03                     618 	.db	3
      0004A6 03                     619 	.sleb128	3
      0004A7 01                     620 	.db	1
      0004A8 09                     621 	.db	9
      0004A9 00 0A                  622 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$71-Sstm8s_clk$CLK_ClockSwitchConfig$68
      0004AB 03                     623 	.db	3
      0004AC 02                     624 	.sleb128	2
      0004AD 01                     625 	.db	1
      0004AE 09                     626 	.db	9
      0004AF 00 06                  627 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$73-Sstm8s_clk$CLK_ClockSwitchConfig$71
      0004B1 03                     628 	.db	3
      0004B2 02                     629 	.sleb128	2
      0004B3 01                     630 	.db	1
      0004B4 09                     631 	.db	9
      0004B5 00 0A                  632 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$76-Sstm8s_clk$CLK_ClockSwitchConfig$73
      0004B7 03                     633 	.db	3
      0004B8 02                     634 	.sleb128	2
      0004B9 01                     635 	.db	1
      0004BA 09                     636 	.db	9
      0004BB 00 06                  637 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$78-Sstm8s_clk$CLK_ClockSwitchConfig$76
      0004BD 03                     638 	.db	3
      0004BE 02                     639 	.sleb128	2
      0004BF 01                     640 	.db	1
      0004C0 09                     641 	.db	9
      0004C1 00 0A                  642 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$81-Sstm8s_clk$CLK_ClockSwitchConfig$78
      0004C3 03                     643 	.db	3
      0004C4 02                     644 	.sleb128	2
      0004C5 01                     645 	.db	1
      0004C6 09                     646 	.db	9
      0004C7 00 04                  647 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$83-Sstm8s_clk$CLK_ClockSwitchConfig$81
      0004C9 03                     648 	.db	3
      0004CA 03                     649 	.sleb128	3
      0004CB 01                     650 	.db	1
      0004CC 09                     651 	.db	9
      0004CD 00 01                  652 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$84-Sstm8s_clk$CLK_ClockSwitchConfig$83
      0004CF 03                     653 	.db	3
      0004D0 01                     654 	.sleb128	1
      0004D1 01                     655 	.db	1
      0004D2 09                     656 	.db	9
      0004D3 00 01                  657 	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$85-Sstm8s_clk$CLK_ClockSwitchConfig$84
      0004D5 00                     658 	.db	0
      0004D6 01                     659 	.uleb128	1
      0004D7 01                     660 	.db	1
      0004D8 00                     661 	.db	0
      0004D9 05                     662 	.uleb128	5
      0004DA 02                     663 	.db	2
      0004DB 00 00 83 77            664 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$87)
      0004DF 03                     665 	.db	3
      0004E0 B8 04                  666 	.sleb128	568
      0004E2 01                     667 	.db	1
      0004E3 09                     668 	.db	9
      0004E4 00 02                  669 	.dw	Sstm8s_clk$CLK_GetClockFreq$90-Sstm8s_clk$CLK_GetClockFreq$87
      0004E6 03                     670 	.db	3
      0004E7 07                     671 	.sleb128	7
      0004E8 01                     672 	.db	1
      0004E9 09                     673 	.db	9
      0004EA 00 05                  674 	.dw	Sstm8s_clk$CLK_GetClockFreq$91-Sstm8s_clk$CLK_GetClockFreq$90
      0004EC 03                     675 	.db	3
      0004ED 02                     676 	.sleb128	2
      0004EE 01                     677 	.db	1
      0004EF 09                     678 	.db	9
      0004F0 00 06                  679 	.dw	Sstm8s_clk$CLK_GetClockFreq$94-Sstm8s_clk$CLK_GetClockFreq$91
      0004F2 03                     680 	.db	3
      0004F3 02                     681 	.sleb128	2
      0004F4 01                     682 	.db	1
      0004F5 09                     683 	.db	9
      0004F6 00 05                  684 	.dw	Sstm8s_clk$CLK_GetClockFreq$95-Sstm8s_clk$CLK_GetClockFreq$94
      0004F8 03                     685 	.db	3
      0004F9 01                     686 	.sleb128	1
      0004FA 01                     687 	.db	1
      0004FB 09                     688 	.db	9
      0004FC 00 03                  689 	.dw	Sstm8s_clk$CLK_GetClockFreq$96-Sstm8s_clk$CLK_GetClockFreq$95
      0004FE 03                     690 	.db	3
      0004FF 01                     691 	.sleb128	1
      000500 01                     692 	.db	1
      000501 09                     693 	.db	9
      000502 00 06                  694 	.dw	Sstm8s_clk$CLK_GetClockFreq$97-Sstm8s_clk$CLK_GetClockFreq$96
      000504 03                     695 	.db	3
      000505 01                     696 	.sleb128	1
      000506 01                     697 	.db	1
      000507 09                     698 	.db	9
      000508 00 18                  699 	.dw	Sstm8s_clk$CLK_GetClockFreq$106-Sstm8s_clk$CLK_GetClockFreq$97
      00050A 03                     700 	.db	3
      00050B 02                     701 	.sleb128	2
      00050C 01                     702 	.db	1
      00050D 09                     703 	.db	9
      00050E 00 06                  704 	.dw	Sstm8s_clk$CLK_GetClockFreq$109-Sstm8s_clk$CLK_GetClockFreq$106
      000510 03                     705 	.db	3
      000511 02                     706 	.sleb128	2
      000512 01                     707 	.db	1
      000513 09                     708 	.db	9
      000514 00 0B                  709 	.dw	Sstm8s_clk$CLK_GetClockFreq$112-Sstm8s_clk$CLK_GetClockFreq$109
      000516 03                     710 	.db	3
      000517 04                     711 	.sleb128	4
      000518 01                     712 	.db	1
      000519 09                     713 	.db	9
      00051A 00 09                  714 	.dw	Sstm8s_clk$CLK_GetClockFreq$114-Sstm8s_clk$CLK_GetClockFreq$112
      00051C 03                     715 	.db	3
      00051D 03                     716 	.sleb128	3
      00051E 01                     717 	.db	1
      00051F 09                     718 	.db	9
      000520 00 02                  719 	.dw	Sstm8s_clk$CLK_GetClockFreq$115-Sstm8s_clk$CLK_GetClockFreq$114
      000522 03                     720 	.db	3
      000523 01                     721 	.sleb128	1
      000524 01                     722 	.db	1
      000525 09                     723 	.db	9
      000526 00 03                  724 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$117-Sstm8s_clk$CLK_GetClockFreq$115
      000528 00                     725 	.db	0
      000529 01                     726 	.uleb128	1
      00052A 01                     727 	.db	1
      00052B                        728 Ldebug_line_end:
                                    729 
                                    730 	.area .debug_loc (NOLOAD)
      00048C                        731 Ldebug_loc_start:
      00048C 00 00 83 C8            732 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      000490 00 00 83 C9            733 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$118)
      000494 00 02                  734 	.dw	2
      000496 78                     735 	.db	120
      000497 01                     736 	.sleb128	1
      000498 00 00 83 B0            737 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      00049C 00 00 83 C8            738 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      0004A0 00 02                  739 	.dw	2
      0004A2 78                     740 	.db	120
      0004A3 05                     741 	.sleb128	5
      0004A4 00 00 83 A6            742 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      0004A8 00 00 83 B0            743 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      0004AC 00 02                  744 	.dw	2
      0004AE 78                     745 	.db	120
      0004AF 05                     746 	.sleb128	5
      0004B0 00 00 83 A1            747 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      0004B4 00 00 83 A6            748 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      0004B8 00 02                  749 	.dw	2
      0004BA 78                     750 	.db	120
      0004BB 0D                     751 	.sleb128	13
      0004BC 00 00 83 9F            752 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      0004C0 00 00 83 A1            753 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      0004C4 00 02                  754 	.dw	2
      0004C6 78                     755 	.db	120
      0004C7 0C                     756 	.sleb128	12
      0004C8 00 00 83 9D            757 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      0004CC 00 00 83 9F            758 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      0004D0 00 02                  759 	.dw	2
      0004D2 78                     760 	.db	120
      0004D3 0B                     761 	.sleb128	11
      0004D4 00 00 83 9B            762 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      0004D8 00 00 83 9D            763 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      0004DC 00 02                  764 	.dw	2
      0004DE 78                     765 	.db	120
      0004DF 0A                     766 	.sleb128	10
      0004E0 00 00 83 99            767 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      0004E4 00 00 83 9B            768 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      0004E8 00 02                  769 	.dw	2
      0004EA 78                     770 	.db	120
      0004EB 09                     771 	.sleb128	9
      0004EC 00 00 83 97            772 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      0004F0 00 00 83 99            773 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      0004F4 00 02                  774 	.dw	2
      0004F6 78                     775 	.db	120
      0004F7 07                     776 	.sleb128	7
      0004F8 00 00 83 84            777 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      0004FC 00 00 83 97            778 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      000500 00 02                  779 	.dw	2
      000502 78                     780 	.db	120
      000503 05                     781 	.sleb128	5
      000504 00 00 83 79            782 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      000508 00 00 83 84            783 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      00050C 00 02                  784 	.dw	2
      00050E 78                     785 	.db	120
      00050F 05                     786 	.sleb128	5
      000510 00 00 83 77            787 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
      000514 00 00 83 79            788 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      000518 00 02                  789 	.dw	2
      00051A 78                     790 	.db	120
      00051B 01                     791 	.sleb128	1
      00051C 00 00 00 00            792 	.dw	0,0
      000520 00 00 00 00            793 	.dw	0,0
      000524 00 00 83 71            794 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      000528 00 00 83 77            795 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$86)
      00052C 00 02                  796 	.dw	2
      00052E 78                     797 	.db	120
      00052F 01                     798 	.sleb128	1
      000530 00 00 83 61            799 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      000534 00 00 83 71            800 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      000538 00 02                  801 	.dw	2
      00053A 78                     802 	.db	120
      00053B 01                     803 	.sleb128	1
      00053C 00 00 83 51            804 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      000540 00 00 83 61            805 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      000544 00 02                  806 	.dw	2
      000546 78                     807 	.db	120
      000547 01                     808 	.sleb128	1
      000548 00 00 82 D5            809 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      00054C 00 00 83 51            810 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      000550 00 02                  811 	.dw	2
      000552 78                     812 	.db	120
      000553 01                     813 	.sleb128	1
      000554 00 00 82 D0            814 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      000558 00 00 82 D5            815 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      00055C 00 02                  816 	.dw	2
      00055E 78                     817 	.db	120
      00055F 01                     818 	.sleb128	1
      000560 00 00 82 CC            819 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      000564 00 00 82 D0            820 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      000568 00 02                  821 	.dw	2
      00056A 78                     822 	.db	120
      00056B 02                     823 	.sleb128	2
      00056C 00 00 82 C3            824 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
      000570 00 00 82 CC            825 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      000574 00 02                  826 	.dw	2
      000576 78                     827 	.db	120
      000577 01                     828 	.sleb128	1
      000578 00 00 00 00            829 	.dw	0,0
      00057C 00 00 00 00            830 	.dw	0,0
      000580 00 00 82 AF            831 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
      000584 00 00 82 C3            832 	.dw	0,(Sstm8s_clk$CLK_HSECmd$12)
      000588 00 02                  833 	.dw	2
      00058A 78                     834 	.db	120
      00058B 01                     835 	.sleb128	1
      00058C 00 00 00 00            836 	.dw	0,0
      000590 00 00 00 00            837 	.dw	0,0
                                    838 
                                    839 	.area .debug_abbrev (NOLOAD)
      000114                        840 Ldebug_abbrev:
      000114 0D                     841 	.uleb128	13
      000115 34                     842 	.uleb128	52
      000116 00                     843 	.db	0
      000117 02                     844 	.uleb128	2
      000118 0A                     845 	.uleb128	10
      000119 03                     846 	.uleb128	3
      00011A 08                     847 	.uleb128	8
      00011B 3F                     848 	.uleb128	63
      00011C 0C                     849 	.uleb128	12
      00011D 49                     850 	.uleb128	73
      00011E 13                     851 	.uleb128	19
      00011F 00                     852 	.uleb128	0
      000120 00                     853 	.uleb128	0
      000121 03                     854 	.uleb128	3
      000122 05                     855 	.uleb128	5
      000123 00                     856 	.db	0
      000124 02                     857 	.uleb128	2
      000125 0A                     858 	.uleb128	10
      000126 03                     859 	.uleb128	3
      000127 08                     860 	.uleb128	8
      000128 49                     861 	.uleb128	73
      000129 13                     862 	.uleb128	19
      00012A 00                     863 	.uleb128	0
      00012B 00                     864 	.uleb128	0
      00012C 0B                     865 	.uleb128	11
      00012D 01                     866 	.uleb128	1
      00012E 01                     867 	.db	1
      00012F 01                     868 	.uleb128	1
      000130 13                     869 	.uleb128	19
      000131 0B                     870 	.uleb128	11
      000132 0B                     871 	.uleb128	11
      000133 49                     872 	.uleb128	73
      000134 13                     873 	.uleb128	19
      000135 00                     874 	.uleb128	0
      000136 00                     875 	.uleb128	0
      000137 02                     876 	.uleb128	2
      000138 2E                     877 	.uleb128	46
      000139 01                     878 	.db	1
      00013A 01                     879 	.uleb128	1
      00013B 13                     880 	.uleb128	19
      00013C 03                     881 	.uleb128	3
      00013D 08                     882 	.uleb128	8
      00013E 11                     883 	.uleb128	17
      00013F 01                     884 	.uleb128	1
      000140 12                     885 	.uleb128	18
      000141 01                     886 	.uleb128	1
      000142 3F                     887 	.uleb128	63
      000143 0C                     888 	.uleb128	12
      000144 40                     889 	.uleb128	64
      000145 06                     890 	.uleb128	6
      000146 00                     891 	.uleb128	0
      000147 00                     892 	.uleb128	0
      000148 09                     893 	.uleb128	9
      000149 34                     894 	.uleb128	52
      00014A 00                     895 	.db	0
      00014B 02                     896 	.uleb128	2
      00014C 0A                     897 	.uleb128	10
      00014D 03                     898 	.uleb128	3
      00014E 08                     899 	.uleb128	8
      00014F 49                     900 	.uleb128	73
      000150 13                     901 	.uleb128	19
      000151 00                     902 	.uleb128	0
      000152 00                     903 	.uleb128	0
      000153 06                     904 	.uleb128	6
      000154 2E                     905 	.uleb128	46
      000155 01                     906 	.db	1
      000156 01                     907 	.uleb128	1
      000157 13                     908 	.uleb128	19
      000158 03                     909 	.uleb128	3
      000159 08                     910 	.uleb128	8
      00015A 11                     911 	.uleb128	17
      00015B 01                     912 	.uleb128	1
      00015C 12                     913 	.uleb128	18
      00015D 01                     914 	.uleb128	1
      00015E 3F                     915 	.uleb128	63
      00015F 0C                     916 	.uleb128	12
      000160 40                     917 	.uleb128	64
      000161 06                     918 	.uleb128	6
      000162 49                     919 	.uleb128	73
      000163 13                     920 	.uleb128	19
      000164 00                     921 	.uleb128	0
      000165 00                     922 	.uleb128	0
      000166 0A                     923 	.uleb128	10
      000167 26                     924 	.uleb128	38
      000168 00                     925 	.db	0
      000169 49                     926 	.uleb128	73
      00016A 13                     927 	.uleb128	19
      00016B 00                     928 	.uleb128	0
      00016C 00                     929 	.uleb128	0
      00016D 01                     930 	.uleb128	1
      00016E 11                     931 	.uleb128	17
      00016F 01                     932 	.db	1
      000170 03                     933 	.uleb128	3
      000171 08                     934 	.uleb128	8
      000172 10                     935 	.uleb128	16
      000173 06                     936 	.uleb128	6
      000174 13                     937 	.uleb128	19
      000175 0B                     938 	.uleb128	11
      000176 25                     939 	.uleb128	37
      000177 08                     940 	.uleb128	8
      000178 00                     941 	.uleb128	0
      000179 00                     942 	.uleb128	0
      00017A 04                     943 	.uleb128	4
      00017B 0B                     944 	.uleb128	11
      00017C 00                     945 	.db	0
      00017D 11                     946 	.uleb128	17
      00017E 01                     947 	.uleb128	1
      00017F 12                     948 	.uleb128	18
      000180 01                     949 	.uleb128	1
      000181 00                     950 	.uleb128	0
      000182 00                     951 	.uleb128	0
      000183 08                     952 	.uleb128	8
      000184 0B                     953 	.uleb128	11
      000185 01                     954 	.db	1
      000186 01                     955 	.uleb128	1
      000187 13                     956 	.uleb128	19
      000188 11                     957 	.uleb128	17
      000189 01                     958 	.uleb128	1
      00018A 00                     959 	.uleb128	0
      00018B 00                     960 	.uleb128	0
      00018C 07                     961 	.uleb128	7
      00018D 0B                     962 	.uleb128	11
      00018E 01                     963 	.db	1
      00018F 01                     964 	.uleb128	1
      000190 13                     965 	.uleb128	19
      000191 11                     966 	.uleb128	17
      000192 01                     967 	.uleb128	1
      000193 12                     968 	.uleb128	18
      000194 01                     969 	.uleb128	1
      000195 00                     970 	.uleb128	0
      000196 00                     971 	.uleb128	0
      000197 0C                     972 	.uleb128	12
      000198 21                     973 	.uleb128	33
      000199 00                     974 	.db	0
      00019A 2F                     975 	.uleb128	47
      00019B 0B                     976 	.uleb128	11
      00019C 00                     977 	.uleb128	0
      00019D 00                     978 	.uleb128	0
      00019E 05                     979 	.uleb128	5
      00019F 24                     980 	.uleb128	36
      0001A0 00                     981 	.db	0
      0001A1 03                     982 	.uleb128	3
      0001A2 08                     983 	.uleb128	8
      0001A3 0B                     984 	.uleb128	11
      0001A4 0B                     985 	.uleb128	11
      0001A5 3E                     986 	.uleb128	62
      0001A6 0B                     987 	.uleb128	11
      0001A7 00                     988 	.uleb128	0
      0001A8 00                     989 	.uleb128	0
      0001A9 00                     990 	.uleb128	0
                                    991 
                                    992 	.area .debug_info (NOLOAD)
      0004C9 00 00 02 FA            993 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0004CD                        994 Ldebug_info_start:
      0004CD 00 02                  995 	.dw	2
      0004CF 00 00 01 14            996 	.dw	0,(Ldebug_abbrev)
      0004D3 04                     997 	.db	4
      0004D4 01                     998 	.uleb128	1
      0004D5 53 6F 75 72 63 65 2F   999 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      0004F3 00                    1000 	.db	0
      0004F4 00 00 03 4F           1001 	.dw	0,(Ldebug_line_start+-4)
      0004F8 01                    1002 	.db	1
      0004F9 53 44 43 43 20 76 65  1003 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000512 00                    1004 	.db	0
      000513 02                    1005 	.uleb128	2
      000514 00 00 00 8B           1006 	.dw	0,139
      000518 43 4C 4B 5F 48 53 45  1007 	.ascii "CLK_HSECmd"
             43 6D 64
      000522 00                    1008 	.db	0
      000523 00 00 82 AF           1009 	.dw	0,(_CLK_HSECmd)
      000527 00 00 82 C3           1010 	.dw	0,(XG$CLK_HSECmd$0$0+1)
      00052B 01                    1011 	.db	1
      00052C 00 00 05 80           1012 	.dw	0,(Ldebug_loc_start+244)
      000530 03                    1013 	.uleb128	3
      000531 02                    1014 	.db	2
      000532 91                    1015 	.db	145
      000533 02                    1016 	.sleb128	2
      000534 4E 65 77 53 74 61 74  1017 	.ascii "NewState"
             65
      00053C 00                    1018 	.db	0
      00053D 00 00 00 8B           1019 	.dw	0,139
      000541 04                    1020 	.uleb128	4
      000542 00 00 82 B6           1021 	.dw	0,(Sstm8s_clk$CLK_HSECmd$4)
      000546 00 00 82 BB           1022 	.dw	0,(Sstm8s_clk$CLK_HSECmd$6)
      00054A 04                    1023 	.uleb128	4
      00054B 00 00 82 BD           1024 	.dw	0,(Sstm8s_clk$CLK_HSECmd$7)
      00054F 00 00 82 C2           1025 	.dw	0,(Sstm8s_clk$CLK_HSECmd$9)
      000553 00                    1026 	.uleb128	0
      000554 05                    1027 	.uleb128	5
      000555 75 6E 73 69 67 6E 65  1028 	.ascii "unsigned char"
             64 20 63 68 61 72
      000562 00                    1029 	.db	0
      000563 01                    1030 	.db	1
      000564 08                    1031 	.db	8
      000565 06                    1032 	.uleb128	6
      000566 00 00 01 F6           1033 	.dw	0,502
      00056A 43 4C 4B 5F 43 6C 6F  1034 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      00057F 00                    1035 	.db	0
      000580 00 00 82 C3           1036 	.dw	0,(_CLK_ClockSwitchConfig)
      000584 00 00 83 77           1037 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
      000588 01                    1038 	.db	1
      000589 00 00 05 24           1039 	.dw	0,(Ldebug_loc_start+152)
      00058D 00 00 00 8B           1040 	.dw	0,139
      000591 03                    1041 	.uleb128	3
      000592 02                    1042 	.db	2
      000593 91                    1043 	.db	145
      000594 02                    1044 	.sleb128	2
      000595 43 4C 4B 5F 53 77 69  1045 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      0005A3 00                    1046 	.db	0
      0005A4 00 00 00 8B           1047 	.dw	0,139
      0005A8 03                    1048 	.uleb128	3
      0005A9 02                    1049 	.db	2
      0005AA 91                    1050 	.db	145
      0005AB 03                    1051 	.sleb128	3
      0005AC 43 4C 4B 5F 4E 65 77  1052 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      0005B8 00                    1053 	.db	0
      0005B9 00 00 00 8B           1054 	.dw	0,139
      0005BD 03                    1055 	.uleb128	3
      0005BE 02                    1056 	.db	2
      0005BF 91                    1057 	.db	145
      0005C0 04                    1058 	.sleb128	4
      0005C1 49 54 53 74 61 74 65  1059 	.ascii "ITState"
      0005C8 00                    1060 	.db	0
      0005C9 00 00 00 8B           1061 	.dw	0,139
      0005CD 03                    1062 	.uleb128	3
      0005CE 02                    1063 	.db	2
      0005CF 91                    1064 	.db	145
      0005D0 05                    1065 	.sleb128	5
      0005D1 43 4C 4B 5F 43 75 72  1066 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      0005E6 00                    1067 	.db	0
      0005E7 00 00 00 8B           1068 	.dw	0,139
      0005EB 07                    1069 	.uleb128	7
      0005EC 00 00 01 5D           1070 	.dw	0,349
      0005F0 00 00 82 D5           1071 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$21)
      0005F4 00 00 82 F3           1072 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$32)
      0005F8 04                    1073 	.uleb128	4
      0005F9 00 00 82 E1           1074 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$25)
      0005FD 00 00 82 E6           1075 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$27)
      000601 04                    1076 	.uleb128	4
      000602 00 00 82 E8           1077 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$28)
      000606 00 00 82 ED           1078 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$30)
      00060A 04                    1079 	.uleb128	4
      00060B 00 00 82 FE           1080 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$34)
      00060F 00 00 82 FF           1081 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$36)
      000613 04                    1082 	.uleb128	4
      000614 00 00 83 04           1083 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$38)
      000618 00 00 83 07           1084 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$40)
      00061C 04                    1085 	.uleb128	4
      00061D 00 00 83 0A           1086 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$41)
      000621 00 00 83 0B           1087 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$43)
      000625 00                    1088 	.uleb128	0
      000626 07                    1089 	.uleb128	7
      000627 00 00 01 98           1090 	.dw	0,408
      00062B 00 00 83 0E           1091 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$44)
      00062F 00 00 83 24           1092 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$53)
      000633 04                    1093 	.uleb128	4
      000634 00 00 83 12           1094 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$46)
      000638 00 00 83 17           1095 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$48)
      00063C 04                    1096 	.uleb128	4
      00063D 00 00 83 19           1097 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$49)
      000641 00 00 83 1E           1098 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$51)
      000645 04                    1099 	.uleb128	4
      000646 00 00 83 30           1100 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$55)
      00064A 00 00 83 31           1101 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$57)
      00064E 04                    1102 	.uleb128	4
      00064F 00 00 83 36           1103 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$59)
      000653 00 00 83 3D           1104 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$62)
      000657 04                    1105 	.uleb128	4
      000658 00 00 83 3F           1106 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$63)
      00065C 00 00 83 40           1107 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$65)
      000660 00                    1108 	.uleb128	0
      000661 08                    1109 	.uleb128	8
      000662 00 00 01 BD           1110 	.dw	0,445
      000666 00 00 83 47           1111 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$67)
      00066A 04                    1112 	.uleb128	4
      00066B 00 00 83 51           1113 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$70)
      00066F 00 00 83 55           1114 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$72)
      000673 04                    1115 	.uleb128	4
      000674 00 00 83 61           1116 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$75)
      000678 00 00 83 65           1117 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$77)
      00067C 04                    1118 	.uleb128	4
      00067D 00 00 83 71           1119 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$80)
      000681 00 00 83 75           1120 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$82)
      000685 00                    1121 	.uleb128	0
      000686 09                    1122 	.uleb128	9
      000687 01                    1123 	.db	1
      000688 53                    1124 	.db	83
      000689 63 6C 6F 63 6B 5F 6D  1125 	.ascii "clock_master"
             61 73 74 65 72
      000695 00                    1126 	.db	0
      000696 00 00 00 8B           1127 	.dw	0,139
      00069A 09                    1128 	.uleb128	9
      00069B 06                    1129 	.db	6
      00069C 52                    1130 	.db	82
      00069D 93                    1131 	.db	147
      00069E 01                    1132 	.uleb128	1
      00069F 51                    1133 	.db	81
      0006A0 93                    1134 	.db	147
      0006A1 01                    1135 	.uleb128	1
      0006A2 44 6F 77 6E 43 6F 75  1136 	.ascii "DownCounter"
             6E 74 65 72
      0006AD 00                    1137 	.db	0
      0006AE 00 00 01 F6           1138 	.dw	0,502
      0006B2 09                    1139 	.uleb128	9
      0006B3 01                    1140 	.db	1
      0006B4 51                    1141 	.db	81
      0006B5 53 77 69 66           1142 	.ascii "Swif"
      0006B9 00                    1143 	.db	0
      0006BA 00 00 00 8B           1144 	.dw	0,139
      0006BE 00                    1145 	.uleb128	0
      0006BF 05                    1146 	.uleb128	5
      0006C0 75 6E 73 69 67 6E 65  1147 	.ascii "unsigned int"
             64 20 69 6E 74
      0006CC 00                    1148 	.db	0
      0006CD 02                    1149 	.db	2
      0006CE 07                    1150 	.db	7
      0006CF 05                    1151 	.uleb128	5
      0006D0 75 6E 73 69 67 6E 65  1152 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0006DD 00                    1153 	.db	0
      0006DE 04                    1154 	.db	4
      0006DF 07                    1155 	.db	7
      0006E0 06                    1156 	.uleb128	6
      0006E1 00 00 02 A9           1157 	.dw	0,681
      0006E5 43 4C 4B 5F 47 65 74  1158 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0006F5 00                    1159 	.db	0
      0006F6 00 00 83 77           1160 	.dw	0,(_CLK_GetClockFreq)
      0006FA 00 00 83 C9           1161 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      0006FE 01                    1162 	.db	1
      0006FF 00 00 04 8C           1163 	.dw	0,(Ldebug_loc_start)
      000703 00 00 02 06           1164 	.dw	0,518
      000707 04                    1165 	.uleb128	4
      000708 00 00 83 84           1166 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$93)
      00070C 00 00 83 96           1167 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$98)
      000710 04                    1168 	.uleb128	4
      000711 00 00 83 B0           1169 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$108)
      000715 00 00 83 B9           1170 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$110)
      000719 04                    1171 	.uleb128	4
      00071A 00 00 83 BB           1172 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$111)
      00071E 00 00 83 C4           1173 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$113)
      000722 09                    1174 	.uleb128	9
      000723 0E                    1175 	.db	14
      000724 54                    1176 	.db	84
      000725 93                    1177 	.db	147
      000726 01                    1178 	.uleb128	1
      000727 53                    1179 	.db	83
      000728 93                    1180 	.db	147
      000729 01                    1181 	.uleb128	1
      00072A 91                    1182 	.db	145
      00072B 7E                    1183 	.sleb128	-2
      00072C 93                    1184 	.db	147
      00072D 01                    1185 	.uleb128	1
      00072E 91                    1186 	.db	145
      00072F 7F                    1187 	.sleb128	-1
      000730 93                    1188 	.db	147
      000731 01                    1189 	.uleb128	1
      000732 63 6C 6F 63 6B 66 72  1190 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      000740 00                    1191 	.db	0
      000741 00 00 02 06           1192 	.dw	0,518
      000745 09                    1193 	.uleb128	9
      000746 02                    1194 	.db	2
      000747 91                    1195 	.db	145
      000748 7F                    1196 	.sleb128	-1
      000749 63 6C 6F 63 6B 73 6F  1197 	.ascii "clocksource"
             75 72 63 65
      000754 00                    1198 	.db	0
      000755 00 00 00 8B           1199 	.dw	0,139
      000759 09                    1200 	.uleb128	9
      00075A 01                    1201 	.db	1
      00075B 50                    1202 	.db	80
      00075C 74 6D 70              1203 	.ascii "tmp"
      00075F 00                    1204 	.db	0
      000760 00 00 00 8B           1205 	.dw	0,139
      000764 09                    1206 	.uleb128	9
      000765 01                    1207 	.db	1
      000766 50                    1208 	.db	80
      000767 70 72 65 73 63        1209 	.ascii "presc"
      00076C 00                    1210 	.db	0
      00076D 00 00 00 8B           1211 	.dw	0,139
      000771 00                    1212 	.uleb128	0
      000772 0A                    1213 	.uleb128	10
      000773 00 00 00 8B           1214 	.dw	0,139
      000777 0B                    1215 	.uleb128	11
      000778 00 00 02 BB           1216 	.dw	0,699
      00077C 04                    1217 	.db	4
      00077D 00 00 02 A9           1218 	.dw	0,681
      000781 0C                    1219 	.uleb128	12
      000782 03                    1220 	.db	3
      000783 00                    1221 	.uleb128	0
      000784 0D                    1222 	.uleb128	13
      000785 05                    1223 	.db	5
      000786 03                    1224 	.db	3
      000787 00 00 80 88           1225 	.dw	0,(_HSIDivFactor)
      00078B 48 53 49 44 69 76 46  1226 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      000797 00                    1227 	.db	0
      000798 01                    1228 	.db	1
      000799 00 00 02 AE           1229 	.dw	0,686
      00079D 0B                    1230 	.uleb128	11
      00079E 00 00 02 E1           1231 	.dw	0,737
      0007A2 08                    1232 	.db	8
      0007A3 00 00 02 A9           1233 	.dw	0,681
      0007A7 0C                    1234 	.uleb128	12
      0007A8 07                    1235 	.db	7
      0007A9 00                    1236 	.uleb128	0
      0007AA 0D                    1237 	.uleb128	13
      0007AB 05                    1238 	.db	5
      0007AC 03                    1239 	.db	3
      0007AD 00 00 80 8C           1240 	.dw	0,(_CLKPrescTable)
      0007B1 43 4C 4B 50 72 65 73  1241 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0007BE 00                    1242 	.db	0
      0007BF 01                    1243 	.db	1
      0007C0 00 00 02 D4           1244 	.dw	0,724
      0007C4 00                    1245 	.uleb128	0
      0007C5 00                    1246 	.uleb128	0
      0007C6 00                    1247 	.uleb128	0
      0007C7                       1248 Ldebug_info_end:
                                   1249 
                                   1250 	.area .debug_pubnames (NOLOAD)
      000166 00 00 00 6F           1251 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00016A                       1252 Ldebug_pubnames_start:
      00016A 00 02                 1253 	.dw	2
      00016C 00 00 04 C9           1254 	.dw	0,(Ldebug_info_start-4)
      000170 00 00 02 FE           1255 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000174 00 00 00 4A           1256 	.dw	0,74
      000178 43 4C 4B 5F 48 53 45  1257 	.ascii "CLK_HSECmd"
             43 6D 64
      000182 00                    1258 	.db	0
      000183 00 00 00 9C           1259 	.dw	0,156
      000187 43 4C 4B 5F 43 6C 6F  1260 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      00019C 00                    1261 	.db	0
      00019D 00 00 02 17           1262 	.dw	0,535
      0001A1 43 4C 4B 5F 47 65 74  1263 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0001B1 00                    1264 	.db	0
      0001B2 00 00 02 BB           1265 	.dw	0,699
      0001B6 48 53 49 44 69 76 46  1266 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0001C2 00                    1267 	.db	0
      0001C3 00 00 02 E1           1268 	.dw	0,737
      0001C7 43 4C 4B 50 72 65 73  1269 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0001D4 00                    1270 	.db	0
      0001D5 00 00 00 00           1271 	.dw	0,0
      0001D9                       1272 Ldebug_pubnames_end:
                                   1273 
                                   1274 	.area .debug_frame (NOLOAD)
      0003AF 00 00                 1275 	.dw	0
      0003B1 00 0E                 1276 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0003B3                       1277 Ldebug_CIE0_start:
      0003B3 FF FF                 1278 	.dw	0xffff
      0003B5 FF FF                 1279 	.dw	0xffff
      0003B7 01                    1280 	.db	1
      0003B8 00                    1281 	.db	0
      0003B9 01                    1282 	.uleb128	1
      0003BA 7F                    1283 	.sleb128	-1
      0003BB 09                    1284 	.db	9
      0003BC 0C                    1285 	.db	12
      0003BD 08                    1286 	.uleb128	8
      0003BE 02                    1287 	.uleb128	2
      0003BF 89                    1288 	.db	137
      0003C0 01                    1289 	.uleb128	1
      0003C1                       1290 Ldebug_CIE0_end:
      0003C1 00 00 00 60           1291 	.dw	0,96
      0003C5 00 00 03 AF           1292 	.dw	0,(Ldebug_CIE0_start-4)
      0003C9 00 00 83 77           1293 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)	;initial loc
      0003CD 00 00 00 52           1294 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$118-Sstm8s_clk$CLK_GetClockFreq$88
      0003D1 01                    1295 	.db	1
      0003D2 00 00 83 77           1296 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
      0003D6 0E                    1297 	.db	14
      0003D7 02                    1298 	.uleb128	2
      0003D8 01                    1299 	.db	1
      0003D9 00 00 83 79           1300 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
      0003DD 0E                    1301 	.db	14
      0003DE 06                    1302 	.uleb128	6
      0003DF 01                    1303 	.db	1
      0003E0 00 00 83 84           1304 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
      0003E4 0E                    1305 	.db	14
      0003E5 06                    1306 	.uleb128	6
      0003E6 01                    1307 	.db	1
      0003E7 00 00 83 97           1308 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
      0003EB 0E                    1309 	.db	14
      0003EC 08                    1310 	.uleb128	8
      0003ED 01                    1311 	.db	1
      0003EE 00 00 83 99           1312 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
      0003F2 0E                    1313 	.db	14
      0003F3 0A                    1314 	.uleb128	10
      0003F4 01                    1315 	.db	1
      0003F5 00 00 83 9B           1316 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
      0003F9 0E                    1317 	.db	14
      0003FA 0B                    1318 	.uleb128	11
      0003FB 01                    1319 	.db	1
      0003FC 00 00 83 9D           1320 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
      000400 0E                    1321 	.db	14
      000401 0C                    1322 	.uleb128	12
      000402 01                    1323 	.db	1
      000403 00 00 83 9F           1324 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
      000407 0E                    1325 	.db	14
      000408 0D                    1326 	.uleb128	13
      000409 01                    1327 	.db	1
      00040A 00 00 83 A1           1328 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
      00040E 0E                    1329 	.db	14
      00040F 0E                    1330 	.uleb128	14
      000410 01                    1331 	.db	1
      000411 00 00 83 A6           1332 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
      000415 0E                    1333 	.db	14
      000416 06                    1334 	.uleb128	6
      000417 01                    1335 	.db	1
      000418 00 00 83 B0           1336 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
      00041C 0E                    1337 	.db	14
      00041D 06                    1338 	.uleb128	6
      00041E 01                    1339 	.db	1
      00041F 00 00 83 C8           1340 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
      000423 0E                    1341 	.db	14
      000424 02                    1342 	.uleb128	2
                                   1343 
                                   1344 	.area .debug_frame (NOLOAD)
      000425 00 00                 1345 	.dw	0
      000427 00 0E                 1346 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000429                       1347 Ldebug_CIE1_start:
      000429 FF FF                 1348 	.dw	0xffff
      00042B FF FF                 1349 	.dw	0xffff
      00042D 01                    1350 	.db	1
      00042E 00                    1351 	.db	0
      00042F 01                    1352 	.uleb128	1
      000430 7F                    1353 	.sleb128	-1
      000431 09                    1354 	.db	9
      000432 0C                    1355 	.db	12
      000433 08                    1356 	.uleb128	8
      000434 02                    1357 	.uleb128	2
      000435 89                    1358 	.db	137
      000436 01                    1359 	.uleb128	1
      000437                       1360 Ldebug_CIE1_end:
      000437 00 00 00 3D           1361 	.dw	0,61
      00043B 00 00 04 25           1362 	.dw	0,(Ldebug_CIE1_start-4)
      00043F 00 00 82 C3           1363 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)	;initial loc
      000443 00 00 00 B4           1364 	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$86-Sstm8s_clk$CLK_ClockSwitchConfig$14
      000447 01                    1365 	.db	1
      000448 00 00 82 C3           1366 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
      00044C 0E                    1367 	.db	14
      00044D 02                    1368 	.uleb128	2
      00044E 01                    1369 	.db	1
      00044F 00 00 82 CC           1370 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
      000453 0E                    1371 	.db	14
      000454 03                    1372 	.uleb128	3
      000455 01                    1373 	.db	1
      000456 00 00 82 D0           1374 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
      00045A 0E                    1375 	.db	14
      00045B 02                    1376 	.uleb128	2
      00045C 01                    1377 	.db	1
      00045D 00 00 82 D5           1378 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
      000461 0E                    1379 	.db	14
      000462 02                    1380 	.uleb128	2
      000463 01                    1381 	.db	1
      000464 00 00 83 51           1382 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
      000468 0E                    1383 	.db	14
      000469 02                    1384 	.uleb128	2
      00046A 01                    1385 	.db	1
      00046B 00 00 83 61           1386 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
      00046F 0E                    1387 	.db	14
      000470 02                    1388 	.uleb128	2
      000471 01                    1389 	.db	1
      000472 00 00 83 71           1390 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
      000476 0E                    1391 	.db	14
      000477 02                    1392 	.uleb128	2
                                   1393 
                                   1394 	.area .debug_frame (NOLOAD)
      000478 00 00                 1395 	.dw	0
      00047A 00 0E                 1396 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00047C                       1397 Ldebug_CIE2_start:
      00047C FF FF                 1398 	.dw	0xffff
      00047E FF FF                 1399 	.dw	0xffff
      000480 01                    1400 	.db	1
      000481 00                    1401 	.db	0
      000482 01                    1402 	.uleb128	1
      000483 7F                    1403 	.sleb128	-1
      000484 09                    1404 	.db	9
      000485 0C                    1405 	.db	12
      000486 08                    1406 	.uleb128	8
      000487 02                    1407 	.uleb128	2
      000488 89                    1408 	.db	137
      000489 01                    1409 	.uleb128	1
      00048A                       1410 Ldebug_CIE2_end:
      00048A 00 00 00 13           1411 	.dw	0,19
      00048E 00 00 04 78           1412 	.dw	0,(Ldebug_CIE2_start-4)
      000492 00 00 82 AF           1413 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)	;initial loc
      000496 00 00 00 14           1414 	.dw	0,Sstm8s_clk$CLK_HSECmd$12-Sstm8s_clk$CLK_HSECmd$1
      00049A 01                    1415 	.db	1
      00049B 00 00 82 AF           1416 	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
      00049F 0E                    1417 	.db	14
      0004A0 02                    1418 	.uleb128	2
