                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module nixie
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay
                                     12 	.globl _strchr
                                     13 	.globl _SPI_GetFlagStatus
                                     14 	.globl _SPI_SendData
                                     15 	.globl _SPI_Cmd
                                     16 	.globl _SPI_Init
                                     17 	.globl _SPI_DeInit
                                     18 	.globl _GPIO_WriteLow
                                     19 	.globl _GPIO_WriteHigh
                                     20 	.globl _GPIO_Init
                                     21 	.globl _tube_state
                                     22 	.globl _NIXIE_Init
                                     23 	.globl _NIXIE_DisplayChar
                                     24 	.globl _NIXIE_DisplayTime
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                           000000    33 G$tube_state$0_0$0==.
      000028                         34 _tube_state::
      000028                         35 	.ds 1
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                           000000    65 	Snixie$delay$0 ==.
                           000000    66 	Snixie$delay$1 ==.
                                     67 ;	Source/Device/Src/nixie.c: 51: void delay(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function delay
                                     70 ;	-----------------------------------------
      008CA8                         71 _delay:
                           000000    72 	Snixie$delay$2 ==.
                           000000    73 	Snixie$delay$3 ==.
                                     74 ;	Source/Device/Src/nixie.c: 60: for (int i = 0; i < 300; i++);//这个比较合适
      008CA8 5F               [ 1]   75 	clrw	x
      008CA9                         76 00103$:
      008CA9 A3 01 2C         [ 2]   77 	cpw	x, #0x012c
      008CAC 2E 03            [ 1]   78 	jrsge	00105$
      008CAE 5C               [ 1]   79 	incw	x
      008CAF 20 F8            [ 2]   80 	jra	00103$
      008CB1                         81 00105$:
                           000009    82 	Snixie$delay$4 ==.
                                     83 ;	Source/Device/Src/nixie.c: 61: }
                           000009    84 	Snixie$delay$5 ==.
                           000009    85 	XG$delay$0$0 ==.
      008CB1 81               [ 4]   86 	ret
                           00000A    87 	Snixie$delay$6 ==.
                           00000A    88 	Snixie$NIXIE_Init$7 ==.
                                     89 ;	Source/Device/Src/nixie.c: 66: void NIXIE_Init(void)
                                     90 ;	-----------------------------------------
                                     91 ;	 function NIXIE_Init
                                     92 ;	-----------------------------------------
      008CB2                         93 _NIXIE_Init:
                           00000A    94 	Snixie$NIXIE_Init$8 ==.
                           00000A    95 	Snixie$NIXIE_Init$9 ==.
                                     96 ;	Source/Device/Src/nixie.c: 68: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      008CB2 4B E0            [ 1]   97 	push	#0xe0
                           00000C    98 	Snixie$NIXIE_Init$10 ==.
      008CB4 4B 20            [ 1]   99 	push	#0x20
                           00000E   100 	Snixie$NIXIE_Init$11 ==.
      008CB6 4B 0A            [ 1]  101 	push	#0x0a
                           000010   102 	Snixie$NIXIE_Init$12 ==.
      008CB8 4B 50            [ 1]  103 	push	#0x50
                           000012   104 	Snixie$NIXIE_Init$13 ==.
      008CBA CD 82 36         [ 4]  105 	call	_GPIO_Init
      008CBD 5B 04            [ 2]  106 	addw	sp, #4
                           000017   107 	Snixie$NIXIE_Init$14 ==.
                           000017   108 	Snixie$NIXIE_Init$15 ==.
                                    109 ;	Source/Device/Src/nixie.c: 69: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      008CBF 4B E0            [ 1]  110 	push	#0xe0
                           000019   111 	Snixie$NIXIE_Init$16 ==.
      008CC1 4B 40            [ 1]  112 	push	#0x40
                           00001B   113 	Snixie$NIXIE_Init$17 ==.
      008CC3 4B 0A            [ 1]  114 	push	#0x0a
                           00001D   115 	Snixie$NIXIE_Init$18 ==.
      008CC5 4B 50            [ 1]  116 	push	#0x50
                           00001F   117 	Snixie$NIXIE_Init$19 ==.
      008CC7 CD 82 36         [ 4]  118 	call	_GPIO_Init
      008CCA 5B 04            [ 2]  119 	addw	sp, #4
                           000024   120 	Snixie$NIXIE_Init$20 ==.
                           000024   121 	Snixie$NIXIE_Init$21 ==.
                                    122 ;	Source/Device/Src/nixie.c: 70: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      008CCC 4B E0            [ 1]  123 	push	#0xe0
                           000026   124 	Snixie$NIXIE_Init$22 ==.
      008CCE 4B 80            [ 1]  125 	push	#0x80
                           000028   126 	Snixie$NIXIE_Init$23 ==.
      008CD0 4B 0A            [ 1]  127 	push	#0x0a
                           00002A   128 	Snixie$NIXIE_Init$24 ==.
      008CD2 4B 50            [ 1]  129 	push	#0x50
                           00002C   130 	Snixie$NIXIE_Init$25 ==.
      008CD4 CD 82 36         [ 4]  131 	call	_GPIO_Init
      008CD7 5B 04            [ 2]  132 	addw	sp, #4
                           000031   133 	Snixie$NIXIE_Init$26 ==.
                           000031   134 	Snixie$NIXIE_Init$27 ==.
                                    135 ;	Source/Device/Src/nixie.c: 71: SPI_DeInit();
      008CD9 CD 83 E1         [ 4]  136 	call	_SPI_DeInit
                           000034   137 	Snixie$NIXIE_Init$28 ==.
                                    138 ;	Source/Device/Src/nixie.c: 73: SPI_Init(SPI_FIRSTBIT_LSB,
      008CDC 4B 07            [ 1]  139 	push	#0x07
                           000036   140 	Snixie$NIXIE_Init$29 ==.
      008CDE 4B 02            [ 1]  141 	push	#0x02
                           000038   142 	Snixie$NIXIE_Init$30 ==.
      008CE0 4B C0            [ 1]  143 	push	#0xc0
                           00003A   144 	Snixie$NIXIE_Init$31 ==.
      008CE2 4B 00            [ 1]  145 	push	#0x00
                           00003C   146 	Snixie$NIXIE_Init$32 ==.
      008CE4 4B 00            [ 1]  147 	push	#0x00
                           00003E   148 	Snixie$NIXIE_Init$33 ==.
      008CE6 4B 04            [ 1]  149 	push	#0x04
                           000040   150 	Snixie$NIXIE_Init$34 ==.
      008CE8 4B 00            [ 1]  151 	push	#0x00
                           000042   152 	Snixie$NIXIE_Init$35 ==.
      008CEA 4B 80            [ 1]  153 	push	#0x80
                           000044   154 	Snixie$NIXIE_Init$36 ==.
      008CEC CD 83 F6         [ 4]  155 	call	_SPI_Init
      008CEF 5B 08            [ 2]  156 	addw	sp, #8
                           000049   157 	Snixie$NIXIE_Init$37 ==.
                           000049   158 	Snixie$NIXIE_Init$38 ==.
                                    159 ;	Source/Device/Src/nixie.c: 81: SPI_Cmd(ENABLE);
      008CF1 4B 01            [ 1]  160 	push	#0x01
                           00004B   161 	Snixie$NIXIE_Init$39 ==.
      008CF3 CD 84 34         [ 4]  162 	call	_SPI_Cmd
      008CF6 84               [ 1]  163 	pop	a
                           00004F   164 	Snixie$NIXIE_Init$40 ==.
                           00004F   165 	Snixie$NIXIE_Init$41 ==.
                                    166 ;	Source/Device/Src/nixie.c: 82: }
                           00004F   167 	Snixie$NIXIE_Init$42 ==.
                           00004F   168 	XG$NIXIE_Init$0$0 ==.
      008CF7 81               [ 4]  169 	ret
                           000050   170 	Snixie$NIXIE_Init$43 ==.
                           000050   171 	Snixie$NIXIE_DisplayChar$44 ==.
                                    172 ;	Source/Device/Src/nixie.c: 92: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    173 ;	-----------------------------------------
                                    174 ;	 function NIXIE_DisplayChar
                                    175 ;	-----------------------------------------
      008CF8                        176 _NIXIE_DisplayChar:
                           000050   177 	Snixie$NIXIE_DisplayChar$45 ==.
      008CF8 52 05            [ 2]  178 	sub	sp, #5
                           000052   179 	Snixie$NIXIE_DisplayChar$46 ==.
                           000052   180 	Snixie$NIXIE_DisplayChar$47 ==.
                                    181 ;	Source/Device/Src/nixie.c: 94: uint16_t tmp=0;
      008CFA 5F               [ 1]  182 	clrw	x
      008CFB 1F 03            [ 2]  183 	ldw	(0x03, sp), x
                           000055   184 	Snixie$NIXIE_DisplayChar$48 ==.
                                    185 ;	Source/Device/Src/nixie.c: 97: if(strchr(character,'.')!=NULL)
      008CFD 4B 2E            [ 1]  186 	push	#0x2e
                           000057   187 	Snixie$NIXIE_DisplayChar$49 ==.
      008CFF 4B 00            [ 1]  188 	push	#0x00
                           000059   189 	Snixie$NIXIE_DisplayChar$50 ==.
      008D01 1E 0B            [ 2]  190 	ldw	x, (0x0b, sp)
      008D03 89               [ 2]  191 	pushw	x
                           00005C   192 	Snixie$NIXIE_DisplayChar$51 ==.
      008D04 CD 94 0F         [ 4]  193 	call	_strchr
      008D07 5B 04            [ 2]  194 	addw	sp, #4
                           000061   195 	Snixie$NIXIE_DisplayChar$52 ==.
      008D09 5D               [ 2]  196 	tnzw	x
      008D0A 27 05            [ 1]  197 	jreq	00118$
                           000064   198 	Snixie$NIXIE_DisplayChar$53 ==.
                                    199 ;	Source/Device/Src/nixie.c: 98: tmp|=1<<11;
      008D0C AE 08 00         [ 2]  200 	ldw	x, #0x0800
      008D0F 1F 03            [ 2]  201 	ldw	(0x03, sp), x
                           000069   202 	Snixie$NIXIE_DisplayChar$54 ==.
                                    203 ;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
      008D11                        204 00118$:
      008D11 0F 05            [ 1]  205 	clr	(0x05, sp)
                           00006B   206 	Snixie$NIXIE_DisplayChar$55 ==.
      008D13                        207 00111$:
      008D13 7B 05            [ 1]  208 	ld	a, (0x05, sp)
      008D15 A1 09            [ 1]  209 	cp	a, #0x09
      008D17 24 2E            [ 1]  210 	jrnc	00105$
                           000071   211 	Snixie$NIXIE_DisplayChar$56 ==.
                           000071   212 	Snixie$NIXIE_DisplayChar$57 ==.
                                    213 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'1'+i)!=NULL)
      008D19 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      008D1B 5F               [ 1]  215 	clrw	x
      008D1C 97               [ 1]  216 	ld	xl, a
      008D1D 1C 00 31         [ 2]  217 	addw	x, #0x0031
      008D20 89               [ 2]  218 	pushw	x
                           000079   219 	Snixie$NIXIE_DisplayChar$58 ==.
      008D21 1E 0B            [ 2]  220 	ldw	x, (0x0b, sp)
      008D23 89               [ 2]  221 	pushw	x
                           00007C   222 	Snixie$NIXIE_DisplayChar$59 ==.
      008D24 CD 94 0F         [ 4]  223 	call	_strchr
      008D27 5B 04            [ 2]  224 	addw	sp, #4
                           000081   225 	Snixie$NIXIE_DisplayChar$60 ==.
      008D29 1F 01            [ 2]  226 	ldw	(0x01, sp), x
      008D2B 27 16            [ 1]  227 	jreq	00112$
                           000085   228 	Snixie$NIXIE_DisplayChar$61 ==.
                                    229 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<10-i;
      008D2D A6 0A            [ 1]  230 	ld	a, #0x0a
      008D2F 10 05            [ 1]  231 	sub	a, (0x05, sp)
      008D31 5F               [ 1]  232 	clrw	x
      008D32 5C               [ 1]  233 	incw	x
      008D33 4D               [ 1]  234 	tnz	a
      008D34 27 04            [ 1]  235 	jreq	00150$
      008D36                        236 00149$:
      008D36 58               [ 2]  237 	sllw	x
      008D37 4A               [ 1]  238 	dec	a
      008D38 26 FC            [ 1]  239 	jrne	00149$
      008D3A                        240 00150$:
      008D3A 9F               [ 1]  241 	ld	a, xl
      008D3B 1A 04            [ 1]  242 	or	a, (0x04, sp)
      008D3D 02               [ 1]  243 	rlwa	x
      008D3E 1A 03            [ 1]  244 	or	a, (0x03, sp)
      008D40 95               [ 1]  245 	ld	xh, a
      008D41 1F 03            [ 2]  246 	ldw	(0x03, sp), x
      008D43                        247 00112$:
                           00009B   248 	Snixie$NIXIE_DisplayChar$62 ==.
                           00009B   249 	Snixie$NIXIE_DisplayChar$63 ==.
                                    250 ;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
      008D43 0C 05            [ 1]  251 	inc	(0x05, sp)
      008D45 20 CC            [ 2]  252 	jra	00111$
      008D47                        253 00105$:
                           00009F   254 	Snixie$NIXIE_DisplayChar$64 ==.
                           00009F   255 	Snixie$NIXIE_DisplayChar$65 ==.
                                    256 ;	Source/Device/Src/nixie.c: 104: if(strchr(character,'0')!=NULL)
      008D47 4B 30            [ 1]  257 	push	#0x30
                           0000A1   258 	Snixie$NIXIE_DisplayChar$66 ==.
      008D49 4B 00            [ 1]  259 	push	#0x00
                           0000A3   260 	Snixie$NIXIE_DisplayChar$67 ==.
      008D4B 1E 0B            [ 2]  261 	ldw	x, (0x0b, sp)
      008D4D 89               [ 2]  262 	pushw	x
                           0000A6   263 	Snixie$NIXIE_DisplayChar$68 ==.
      008D4E CD 94 0F         [ 4]  264 	call	_strchr
      008D51 5B 04            [ 2]  265 	addw	sp, #4
                           0000AB   266 	Snixie$NIXIE_DisplayChar$69 ==.
      008D53 5D               [ 2]  267 	tnzw	x
      008D54 27 0A            [ 1]  268 	jreq	00107$
                           0000AE   269 	Snixie$NIXIE_DisplayChar$70 ==.
                                    270 ;	Source/Device/Src/nixie.c: 105: tmp|=1<<1;
      008D56 7B 04            [ 1]  271 	ld	a, (0x04, sp)
      008D58 AA 02            [ 1]  272 	or	a, #0x02
      008D5A 97               [ 1]  273 	ld	xl, a
      008D5B 7B 03            [ 1]  274 	ld	a, (0x03, sp)
      008D5D 95               [ 1]  275 	ld	xh, a
      008D5E 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      008D60                        277 00107$:
                           0000B8   278 	Snixie$NIXIE_DisplayChar$71 ==.
                                    279 ;	Source/Device/Src/nixie.c: 106: if(tubeState==ENABLE)
      008D60 7B 0B            [ 1]  280 	ld	a, (0x0b, sp)
      008D62 4A               [ 1]  281 	dec	a
      008D63 26 07            [ 1]  282 	jrne	00109$
                           0000BD   283 	Snixie$NIXIE_DisplayChar$72 ==.
                           0000BD   284 	Snixie$NIXIE_DisplayChar$73 ==.
                                    285 ;	Source/Device/Src/nixie.c: 107: tmp|=1<<0;
      008D65 1E 03            [ 2]  286 	ldw	x, (0x03, sp)
      008D67 54               [ 2]  287 	srlw	x
      008D68 99               [ 1]  288 	scf
      008D69 59               [ 2]  289 	rlcw	x
      008D6A 1F 03            [ 2]  290 	ldw	(0x03, sp), x
      008D6C                        291 00109$:
                           0000C4   292 	Snixie$NIXIE_DisplayChar$74 ==.
                                    293 ;	Source/Device/Src/nixie.c: 109: output=(tmp&0xAAA)>>1;
      008D6C 1E 03            [ 2]  294 	ldw	x, (0x03, sp)
      008D6E 9F               [ 1]  295 	ld	a, xl
      008D6F A4 AA            [ 1]  296 	and	a, #0xaa
      008D71 90 97            [ 1]  297 	ld	yl, a
      008D73 9E               [ 1]  298 	ld	a, xh
      008D74 A4 0A            [ 1]  299 	and	a, #0x0a
      008D76 90 95            [ 1]  300 	ld	yh, a
      008D78 90 54            [ 2]  301 	srlw	y
                           0000D2   302 	Snixie$NIXIE_DisplayChar$75 ==.
                                    303 ;	Source/Device/Src/nixie.c: 110: output|=(tmp&0x555)<<1;
      008D7A 9F               [ 1]  304 	ld	a, xl
      008D7B A4 55            [ 1]  305 	and	a, #0x55
      008D7D 02               [ 1]  306 	rlwa	x
      008D7E A4 05            [ 1]  307 	and	a, #0x05
      008D80 95               [ 1]  308 	ld	xh, a
      008D81 58               [ 2]  309 	sllw	x
      008D82 17 04            [ 2]  310 	ldw	(0x04, sp), y
      008D84 9F               [ 1]  311 	ld	a, xl
      008D85 1A 05            [ 1]  312 	or	a, (0x05, sp)
      008D87 02               [ 1]  313 	rlwa	x
      008D88 1A 04            [ 1]  314 	or	a, (0x04, sp)
                           0000E2   315 	Snixie$NIXIE_DisplayChar$76 ==.
                                    316 ;	Source/Device/Src/nixie.c: 112: return output;
      008D8A 95               [ 1]  317 	ld	xh, a
                           0000E3   318 	Snixie$NIXIE_DisplayChar$77 ==.
                                    319 ;	Source/Device/Src/nixie.c: 113: }
      008D8B 5B 05            [ 2]  320 	addw	sp, #5
                           0000E5   321 	Snixie$NIXIE_DisplayChar$78 ==.
                           0000E5   322 	Snixie$NIXIE_DisplayChar$79 ==.
                           0000E5   323 	XG$NIXIE_DisplayChar$0$0 ==.
      008D8D 81               [ 4]  324 	ret
                           0000E6   325 	Snixie$NIXIE_DisplayChar$80 ==.
                           0000E6   326 	Snixie$NIXIE_DisplayTime$81 ==.
                                    327 ;	Source/Device/Src/nixie.c: 121: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    328 ;	-----------------------------------------
                                    329 ;	 function NIXIE_DisplayTime
                                    330 ;	-----------------------------------------
      008D8E                        331 _NIXIE_DisplayTime:
                           0000E6   332 	Snixie$NIXIE_DisplayTime$82 ==.
      008D8E 52 12            [ 2]  333 	sub	sp, #18
                           0000E8   334 	Snixie$NIXIE_DisplayTime$83 ==.
                           0000E8   335 	Snixie$NIXIE_DisplayTime$84 ==.
                                    336 ;	Source/Device/Src/nixie.c: 125: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
      008D90 A6 30            [ 1]  337 	ld	a, #0x30
      008D92 6B 01            [ 1]  338 	ld	(0x01, sp), a
      008D94 96               [ 1]  339 	ldw	x, sp
      008D95 6F 02            [ 1]  340 	clr	(2, x)
      008D97 A6 30            [ 1]  341 	ld	a, #0x30
      008D99 6B 03            [ 1]  342 	ld	(0x03, sp), a
      008D9B 96               [ 1]  343 	ldw	x, sp
      008D9C 6F 04            [ 1]  344 	clr	(4, x)
      008D9E A6 30            [ 1]  345 	ld	a, #0x30
      008DA0 6B 05            [ 1]  346 	ld	(0x05, sp), a
      008DA2 96               [ 1]  347 	ldw	x, sp
      008DA3 A6 2E            [ 1]  348 	ld	a, #0x2e
      008DA5 E7 06            [ 1]  349 	ld	(6, x), a
      008DA7 96               [ 1]  350 	ldw	x, sp
      008DA8 6F 07            [ 1]  351 	clr	(7, x)
      008DAA A6 30            [ 1]  352 	ld	a, #0x30
      008DAC 6B 08            [ 1]  353 	ld	(0x08, sp), a
      008DAE 96               [ 1]  354 	ldw	x, sp
      008DAF 6F 09            [ 1]  355 	clr	(9, x)
                           000109   356 	Snixie$NIXIE_DisplayTime$85 ==.
                                    357 ;	Source/Device/Src/nixie.c: 127: uint8_t tmp=hour/10;
      008DB1 7B 15            [ 1]  358 	ld	a, (0x15, sp)
      008DB3 6B 12            [ 1]  359 	ld	(0x12, sp), a
      008DB5 0F 11            [ 1]  360 	clr	(0x11, sp)
      008DB7 4B 0A            [ 1]  361 	push	#0x0a
                           000111   362 	Snixie$NIXIE_DisplayTime$86 ==.
      008DB9 4B 00            [ 1]  363 	push	#0x00
                           000113   364 	Snixie$NIXIE_DisplayTime$87 ==.
      008DBB 1E 13            [ 2]  365 	ldw	x, (0x13, sp)
      008DBD 89               [ 2]  366 	pushw	x
                           000116   367 	Snixie$NIXIE_DisplayTime$88 ==.
      008DBE CD 94 C7         [ 4]  368 	call	__divsint
      008DC1 5B 04            [ 2]  369 	addw	sp, #4
                           00011B   370 	Snixie$NIXIE_DisplayTime$89 ==.
                           00011B   371 	Snixie$NIXIE_DisplayTime$90 ==.
                                    372 ;	Source/Device/Src/nixie.c: 128: tube1s[0]+=tmp;
      008DC3 7B 01            [ 1]  373 	ld	a, (0x01, sp)
      008DC5 89               [ 2]  374 	pushw	x
                           00011E   375 	Snixie$NIXIE_DisplayTime$91 ==.
      008DC6 1B 02            [ 1]  376 	add	a, (2, sp)
      008DC8 85               [ 2]  377 	popw	x
                           000121   378 	Snixie$NIXIE_DisplayTime$92 ==.
      008DC9 6B 01            [ 1]  379 	ld	(0x01, sp), a
                           000123   380 	Snixie$NIXIE_DisplayTime$93 ==.
                                    381 ;	Source/Device/Src/nixie.c: 130: tmp=hour%10;
      008DCB 4B 0A            [ 1]  382 	push	#0x0a
                           000125   383 	Snixie$NIXIE_DisplayTime$94 ==.
      008DCD 4B 00            [ 1]  384 	push	#0x00
                           000127   385 	Snixie$NIXIE_DisplayTime$95 ==.
      008DCF 1E 13            [ 2]  386 	ldw	x, (0x13, sp)
      008DD1 89               [ 2]  387 	pushw	x
                           00012A   388 	Snixie$NIXIE_DisplayTime$96 ==.
      008DD2 CD 94 35         [ 4]  389 	call	__modsint
      008DD5 5B 04            [ 2]  390 	addw	sp, #4
                           00012F   391 	Snixie$NIXIE_DisplayTime$97 ==.
                           00012F   392 	Snixie$NIXIE_DisplayTime$98 ==.
                                    393 ;	Source/Device/Src/nixie.c: 131: tube2s[0]+=tmp;
      008DD7 7B 03            [ 1]  394 	ld	a, (0x03, sp)
      008DD9 89               [ 2]  395 	pushw	x
                           000132   396 	Snixie$NIXIE_DisplayTime$99 ==.
      008DDA 1B 02            [ 1]  397 	add	a, (2, sp)
      008DDC 85               [ 2]  398 	popw	x
                           000135   399 	Snixie$NIXIE_DisplayTime$100 ==.
      008DDD 6B 03            [ 1]  400 	ld	(0x03, sp), a
                           000137   401 	Snixie$NIXIE_DisplayTime$101 ==.
                                    402 ;	Source/Device/Src/nixie.c: 133: tmp=min/10;
      008DDF 7B 16            [ 1]  403 	ld	a, (0x16, sp)
      008DE1 6B 12            [ 1]  404 	ld	(0x12, sp), a
      008DE3 0F 11            [ 1]  405 	clr	(0x11, sp)
      008DE5 4B 0A            [ 1]  406 	push	#0x0a
                           00013F   407 	Snixie$NIXIE_DisplayTime$102 ==.
      008DE7 4B 00            [ 1]  408 	push	#0x00
                           000141   409 	Snixie$NIXIE_DisplayTime$103 ==.
      008DE9 1E 13            [ 2]  410 	ldw	x, (0x13, sp)
      008DEB 89               [ 2]  411 	pushw	x
                           000144   412 	Snixie$NIXIE_DisplayTime$104 ==.
      008DEC CD 94 C7         [ 4]  413 	call	__divsint
      008DEF 5B 04            [ 2]  414 	addw	sp, #4
                           000149   415 	Snixie$NIXIE_DisplayTime$105 ==.
                           000149   416 	Snixie$NIXIE_DisplayTime$106 ==.
                                    417 ;	Source/Device/Src/nixie.c: 134: tube3s[0]+=tmp;
      008DF1 7B 05            [ 1]  418 	ld	a, (0x05, sp)
      008DF3 89               [ 2]  419 	pushw	x
                           00014C   420 	Snixie$NIXIE_DisplayTime$107 ==.
      008DF4 1B 02            [ 1]  421 	add	a, (2, sp)
      008DF6 85               [ 2]  422 	popw	x
                           00014F   423 	Snixie$NIXIE_DisplayTime$108 ==.
      008DF7 6B 05            [ 1]  424 	ld	(0x05, sp), a
                           000151   425 	Snixie$NIXIE_DisplayTime$109 ==.
                                    426 ;	Source/Device/Src/nixie.c: 136: tmp=min%10;
      008DF9 4B 0A            [ 1]  427 	push	#0x0a
                           000153   428 	Snixie$NIXIE_DisplayTime$110 ==.
      008DFB 4B 00            [ 1]  429 	push	#0x00
                           000155   430 	Snixie$NIXIE_DisplayTime$111 ==.
      008DFD 1E 13            [ 2]  431 	ldw	x, (0x13, sp)
      008DFF 89               [ 2]  432 	pushw	x
                           000158   433 	Snixie$NIXIE_DisplayTime$112 ==.
      008E00 CD 94 35         [ 4]  434 	call	__modsint
      008E03 5B 04            [ 2]  435 	addw	sp, #4
                           00015D   436 	Snixie$NIXIE_DisplayTime$113 ==.
                           00015D   437 	Snixie$NIXIE_DisplayTime$114 ==.
                                    438 ;	Source/Device/Src/nixie.c: 137: tube4s[0]+=tmp;
      008E05 7B 08            [ 1]  439 	ld	a, (0x08, sp)
      008E07 89               [ 2]  440 	pushw	x
                           000160   441 	Snixie$NIXIE_DisplayTime$115 ==.
      008E08 1B 02            [ 1]  442 	add	a, (2, sp)
      008E0A 85               [ 2]  443 	popw	x
                           000163   444 	Snixie$NIXIE_DisplayTime$116 ==.
      008E0B 6B 08            [ 1]  445 	ld	(0x08, sp), a
                           000165   446 	Snixie$NIXIE_DisplayTime$117 ==.
                                    447 ;	Source/Device/Src/nixie.c: 139: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
      008E0D 3B 00 28         [ 1]  448 	push	_tube_state+0
                           000168   449 	Snixie$NIXIE_DisplayTime$118 ==.
      008E10 96               [ 1]  450 	ldw	x, sp
      008E11 5C               [ 1]  451 	incw	x
      008E12 5C               [ 1]  452 	incw	x
      008E13 89               [ 2]  453 	pushw	x
                           00016C   454 	Snixie$NIXIE_DisplayTime$119 ==.
      008E14 4B 01            [ 1]  455 	push	#0x01
                           00016E   456 	Snixie$NIXIE_DisplayTime$120 ==.
      008E16 CD 8C F8         [ 4]  457 	call	_NIXIE_DisplayChar
      008E19 5B 04            [ 2]  458 	addw	sp, #4
                           000173   459 	Snixie$NIXIE_DisplayTime$121 ==.
      008E1B 1F 0A            [ 2]  460 	ldw	(0x0a, sp), x
                           000175   461 	Snixie$NIXIE_DisplayTime$122 ==.
                                    462 ;	Source/Device/Src/nixie.c: 140: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
      008E1D 3B 00 28         [ 1]  463 	push	_tube_state+0
                           000178   464 	Snixie$NIXIE_DisplayTime$123 ==.
      008E20 96               [ 1]  465 	ldw	x, sp
      008E21 1C 00 04         [ 2]  466 	addw	x, #4
      008E24 89               [ 2]  467 	pushw	x
                           00017D   468 	Snixie$NIXIE_DisplayTime$124 ==.
      008E25 4B 02            [ 1]  469 	push	#0x02
                           00017F   470 	Snixie$NIXIE_DisplayTime$125 ==.
      008E27 CD 8C F8         [ 4]  471 	call	_NIXIE_DisplayChar
      008E2A 5B 04            [ 2]  472 	addw	sp, #4
                           000184   473 	Snixie$NIXIE_DisplayTime$126 ==.
      008E2C 1F 0C            [ 2]  474 	ldw	(0x0c, sp), x
                           000186   475 	Snixie$NIXIE_DisplayTime$127 ==.
                                    476 ;	Source/Device/Src/nixie.c: 141: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
      008E2E 3B 00 28         [ 1]  477 	push	_tube_state+0
                           000189   478 	Snixie$NIXIE_DisplayTime$128 ==.
      008E31 96               [ 1]  479 	ldw	x, sp
      008E32 1C 00 06         [ 2]  480 	addw	x, #6
      008E35 89               [ 2]  481 	pushw	x
                           00018E   482 	Snixie$NIXIE_DisplayTime$129 ==.
      008E36 4B 03            [ 1]  483 	push	#0x03
                           000190   484 	Snixie$NIXIE_DisplayTime$130 ==.
      008E38 CD 8C F8         [ 4]  485 	call	_NIXIE_DisplayChar
      008E3B 5B 04            [ 2]  486 	addw	sp, #4
                           000195   487 	Snixie$NIXIE_DisplayTime$131 ==.
      008E3D 1F 0E            [ 2]  488 	ldw	(0x0e, sp), x
                           000197   489 	Snixie$NIXIE_DisplayTime$132 ==.
                                    490 ;	Source/Device/Src/nixie.c: 142: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
      008E3F 3B 00 28         [ 1]  491 	push	_tube_state+0
                           00019A   492 	Snixie$NIXIE_DisplayTime$133 ==.
      008E42 96               [ 1]  493 	ldw	x, sp
      008E43 1C 00 09         [ 2]  494 	addw	x, #9
      008E46 89               [ 2]  495 	pushw	x
                           00019F   496 	Snixie$NIXIE_DisplayTime$134 ==.
      008E47 4B 04            [ 1]  497 	push	#0x04
                           0001A1   498 	Snixie$NIXIE_DisplayTime$135 ==.
      008E49 CD 8C F8         [ 4]  499 	call	_NIXIE_DisplayChar
      008E4C 5B 04            [ 2]  500 	addw	sp, #4
                           0001A6   501 	Snixie$NIXIE_DisplayTime$136 ==.
      008E4E 1F 10            [ 2]  502 	ldw	(0x10, sp), x
                           0001A8   503 	Snixie$NIXIE_DisplayTime$137 ==.
                                    504 ;	Source/Device/Src/nixie.c: 146: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      008E50 4B 80            [ 1]  505 	push	#0x80
                           0001AA   506 	Snixie$NIXIE_DisplayTime$138 ==.
      008E52 4B 0A            [ 1]  507 	push	#0x0a
                           0001AC   508 	Snixie$NIXIE_DisplayTime$139 ==.
      008E54 4B 50            [ 1]  509 	push	#0x50
                           0001AE   510 	Snixie$NIXIE_DisplayTime$140 ==.
      008E56 CD 82 B2         [ 4]  511 	call	_GPIO_WriteLow
      008E59 5B 03            [ 2]  512 	addw	sp, #3
                           0001B3   513 	Snixie$NIXIE_DisplayTime$141 ==.
                           0001B3   514 	Snixie$NIXIE_DisplayTime$142 ==.
                           0001B3   515 	Snixie$NIXIE_DisplayTime$143 ==.
                                    516 ;	Source/Device/Src/nixie.c: 151: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008E5B 1E 10            [ 2]  517 	ldw	x, (0x10, sp)
      008E5D 54               [ 2]  518 	srlw	x
      008E5E 58               [ 2]  519 	sllw	x
      008E5F 4F               [ 1]  520 	clr	a
      008E60 95               [ 1]  521 	ld	xh, a
      008E61 54               [ 2]  522 	srlw	x
                           0001BA   523 	Snixie$NIXIE_DisplayTime$144 ==.
                                    524 ;	Source/Device/Src/nixie.c: 152: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      008E62 7B 11            [ 1]  525 	ld	a, (0x11, sp)
      008E64 A4 01            [ 1]  526 	and	a, #0x01
      008E66 4E               [ 1]  527 	swap	a
      008E67 A4 F0            [ 1]  528 	and	a, #0xf0
      008E69 48               [ 1]  529 	sll	a
      008E6A 48               [ 1]  530 	sll	a
      008E6B 48               [ 1]  531 	sll	a
                           0001C4   532 	Snixie$NIXIE_DisplayTime$145 ==.
                                    533 ;	Source/Device/Src/nixie.c: 153: tmp1=tmp1|tmp2;
      008E6C 89               [ 2]  534 	pushw	x
                           0001C5   535 	Snixie$NIXIE_DisplayTime$146 ==.
      008E6D 1A 02            [ 1]  536 	or	a, (2, sp)
      008E6F 85               [ 2]  537 	popw	x
                           0001C8   538 	Snixie$NIXIE_DisplayTime$147 ==.
                           0001C8   539 	Snixie$NIXIE_DisplayTime$148 ==.
                                    540 ;	Source/Device/Src/nixie.c: 154: SPI_SendData(tmp1);
      008E70 88               [ 1]  541 	push	a
                           0001C9   542 	Snixie$NIXIE_DisplayTime$149 ==.
      008E71 CD 84 48         [ 4]  543 	call	_SPI_SendData
      008E74 84               [ 1]  544 	pop	a
                           0001CD   545 	Snixie$NIXIE_DisplayTime$150 ==.
                           0001CD   546 	Snixie$NIXIE_DisplayTime$151 ==.
                                    547 ;	Source/Device/Src/nixie.c: 156: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E75                        548 00101$:
      008E75 4B 02            [ 1]  549 	push	#0x02
                           0001CF   550 	Snixie$NIXIE_DisplayTime$152 ==.
      008E77 CD 84 4F         [ 4]  551 	call	_SPI_GetFlagStatus
      008E7A 5B 01            [ 2]  552 	addw	sp, #1
                           0001D4   553 	Snixie$NIXIE_DisplayTime$153 ==.
      008E7C 4D               [ 1]  554 	tnz	a
      008E7D 27 F6            [ 1]  555 	jreq	00101$
                           0001D7   556 	Snixie$NIXIE_DisplayTime$154 ==.
                                    557 ;	Source/Device/Src/nixie.c: 158: tmp1=(uint8_t)((tube3&0b1111)<<4);
      008E7F 7B 0F            [ 1]  558 	ld	a, (0x0f, sp)
      008E81 A4 0F            [ 1]  559 	and	a, #0x0f
      008E83 4E               [ 1]  560 	swap	a
      008E84 A4 F0            [ 1]  561 	and	a, #0xf0
      008E86 6B 12            [ 1]  562 	ld	(0x12, sp), a
                           0001E0   563 	Snixie$NIXIE_DisplayTime$155 ==.
                                    564 ;	Source/Device/Src/nixie.c: 159: tmp2=(uint8_t)(tube4>>8);
      008E88 7B 10            [ 1]  565 	ld	a, (0x10, sp)
      008E8A 5F               [ 1]  566 	clrw	x
                           0001E3   567 	Snixie$NIXIE_DisplayTime$156 ==.
                                    568 ;	Source/Device/Src/nixie.c: 160: tmp1=tmp1|tmp2;
      008E8B 1A 12            [ 1]  569 	or	a, (0x12, sp)
      008E8D 97               [ 1]  570 	ld	xl, a
                           0001E6   571 	Snixie$NIXIE_DisplayTime$157 ==.
                                    572 ;	Source/Device/Src/nixie.c: 161: tmp2=(tmp1&0b00000001)<<7;
      008E8E 9F               [ 1]  573 	ld	a, xl
      008E8F A4 01            [ 1]  574 	and	a, #0x01
      008E91 4E               [ 1]  575 	swap	a
      008E92 A4 F0            [ 1]  576 	and	a, #0xf0
      008E94 48               [ 1]  577 	sll	a
      008E95 48               [ 1]  578 	sll	a
      008E96 48               [ 1]  579 	sll	a
      008E97 6B 12            [ 1]  580 	ld	(0x12, sp), a
                           0001F1   581 	Snixie$NIXIE_DisplayTime$158 ==.
                                    582 ;	Source/Device/Src/nixie.c: 162: tmp1=(tmp1>>1)|tmp2;
      008E99 9F               [ 1]  583 	ld	a, xl
      008E9A 44               [ 1]  584 	srl	a
      008E9B 1A 12            [ 1]  585 	or	a, (0x12, sp)
                           0001F5   586 	Snixie$NIXIE_DisplayTime$159 ==.
                                    587 ;	Source/Device/Src/nixie.c: 163: SPI_SendData(tmp1);
      008E9D 88               [ 1]  588 	push	a
                           0001F6   589 	Snixie$NIXIE_DisplayTime$160 ==.
      008E9E CD 84 48         [ 4]  590 	call	_SPI_SendData
      008EA1 84               [ 1]  591 	pop	a
                           0001FA   592 	Snixie$NIXIE_DisplayTime$161 ==.
                           0001FA   593 	Snixie$NIXIE_DisplayTime$162 ==.
                                    594 ;	Source/Device/Src/nixie.c: 165: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EA2                        595 00104$:
      008EA2 4B 02            [ 1]  596 	push	#0x02
                           0001FC   597 	Snixie$NIXIE_DisplayTime$163 ==.
      008EA4 CD 84 4F         [ 4]  598 	call	_SPI_GetFlagStatus
      008EA7 5B 01            [ 2]  599 	addw	sp, #1
                           000201   600 	Snixie$NIXIE_DisplayTime$164 ==.
      008EA9 4D               [ 1]  601 	tnz	a
      008EAA 27 F6            [ 1]  602 	jreq	00104$
                           000204   603 	Snixie$NIXIE_DisplayTime$165 ==.
                                    604 ;	Source/Device/Src/nixie.c: 167: tmp1=(uint8_t)(tube3>>5);
      008EAC 1E 0E            [ 2]  605 	ldw	x, (0x0e, sp)
      008EAE A6 20            [ 1]  606 	ld	a, #0x20
      008EB0 62               [ 2]  607 	div	x, a
      008EB1 41               [ 1]  608 	exg	a, xl
      008EB2 6B 12            [ 1]  609 	ld	(0x12, sp), a
      008EB4 41               [ 1]  610 	exg	a, xl
                           00020D   611 	Snixie$NIXIE_DisplayTime$166 ==.
                                    612 ;	Source/Device/Src/nixie.c: 168: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      008EB5 16 0E            [ 2]  613 	ldw	y, (0x0e, sp)
      008EB7 5F               [ 1]  614 	clrw	x
      008EB8 90 9F            [ 1]  615 	ld	a, yl
      008EBA A4 10            [ 1]  616 	and	a, #0x10
      008EBC 97               [ 1]  617 	ld	xl, a
      008EBD A6 10            [ 1]  618 	ld	a, #0x10
      008EBF 62               [ 2]  619 	div	x, a
      008EC0 9F               [ 1]  620 	ld	a, xl
      008EC1 4E               [ 1]  621 	swap	a
      008EC2 A4 F0            [ 1]  622 	and	a, #0xf0
      008EC4 48               [ 1]  623 	sll	a
      008EC5 48               [ 1]  624 	sll	a
      008EC6 48               [ 1]  625 	sll	a
                           00021F   626 	Snixie$NIXIE_DisplayTime$167 ==.
                                    627 ;	Source/Device/Src/nixie.c: 169: tmp1=tmp1|tmp2;
      008EC7 1A 12            [ 1]  628 	or	a, (0x12, sp)
                           000221   629 	Snixie$NIXIE_DisplayTime$168 ==.
                                    630 ;	Source/Device/Src/nixie.c: 170: SPI_SendData(tmp1);
      008EC9 88               [ 1]  631 	push	a
                           000222   632 	Snixie$NIXIE_DisplayTime$169 ==.
      008ECA CD 84 48         [ 4]  633 	call	_SPI_SendData
      008ECD 84               [ 1]  634 	pop	a
                           000226   635 	Snixie$NIXIE_DisplayTime$170 ==.
                           000226   636 	Snixie$NIXIE_DisplayTime$171 ==.
                                    637 ;	Source/Device/Src/nixie.c: 172: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008ECE                        638 00107$:
      008ECE 4B 02            [ 1]  639 	push	#0x02
                           000228   640 	Snixie$NIXIE_DisplayTime$172 ==.
      008ED0 CD 84 4F         [ 4]  641 	call	_SPI_GetFlagStatus
      008ED3 5B 01            [ 2]  642 	addw	sp, #1
                           00022D   643 	Snixie$NIXIE_DisplayTime$173 ==.
      008ED5 4D               [ 1]  644 	tnz	a
      008ED6 27 F6            [ 1]  645 	jreq	00107$
                           000230   646 	Snixie$NIXIE_DisplayTime$174 ==.
                                    647 ;	Source/Device/Src/nixie.c: 175: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      008ED8 1E 0C            [ 2]  648 	ldw	x, (0x0c, sp)
      008EDA 54               [ 2]  649 	srlw	x
      008EDB 58               [ 2]  650 	sllw	x
      008EDC 4F               [ 1]  651 	clr	a
      008EDD 95               [ 1]  652 	ld	xh, a
      008EDE 54               [ 2]  653 	srlw	x
                           000237   654 	Snixie$NIXIE_DisplayTime$175 ==.
                                    655 ;	Source/Device/Src/nixie.c: 176: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      008EDF 7B 0D            [ 1]  656 	ld	a, (0x0d, sp)
      008EE1 A4 01            [ 1]  657 	and	a, #0x01
      008EE3 4E               [ 1]  658 	swap	a
      008EE4 A4 F0            [ 1]  659 	and	a, #0xf0
      008EE6 48               [ 1]  660 	sll	a
      008EE7 48               [ 1]  661 	sll	a
      008EE8 48               [ 1]  662 	sll	a
                           000241   663 	Snixie$NIXIE_DisplayTime$176 ==.
                                    664 ;	Source/Device/Src/nixie.c: 177: tmp1=tmp1|tmp2;
      008EE9 89               [ 2]  665 	pushw	x
                           000242   666 	Snixie$NIXIE_DisplayTime$177 ==.
      008EEA 1A 02            [ 1]  667 	or	a, (2, sp)
      008EEC 85               [ 2]  668 	popw	x
                           000245   669 	Snixie$NIXIE_DisplayTime$178 ==.
                           000245   670 	Snixie$NIXIE_DisplayTime$179 ==.
                                    671 ;	Source/Device/Src/nixie.c: 178: SPI_SendData(tmp1);
      008EED 88               [ 1]  672 	push	a
                           000246   673 	Snixie$NIXIE_DisplayTime$180 ==.
      008EEE CD 84 48         [ 4]  674 	call	_SPI_SendData
      008EF1 84               [ 1]  675 	pop	a
                           00024A   676 	Snixie$NIXIE_DisplayTime$181 ==.
                           00024A   677 	Snixie$NIXIE_DisplayTime$182 ==.
                                    678 ;	Source/Device/Src/nixie.c: 180: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EF2                        679 00110$:
      008EF2 4B 02            [ 1]  680 	push	#0x02
                           00024C   681 	Snixie$NIXIE_DisplayTime$183 ==.
      008EF4 CD 84 4F         [ 4]  682 	call	_SPI_GetFlagStatus
      008EF7 5B 01            [ 2]  683 	addw	sp, #1
                           000251   684 	Snixie$NIXIE_DisplayTime$184 ==.
      008EF9 4D               [ 1]  685 	tnz	a
      008EFA 27 F6            [ 1]  686 	jreq	00110$
                           000254   687 	Snixie$NIXIE_DisplayTime$185 ==.
                                    688 ;	Source/Device/Src/nixie.c: 182: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008EFC 7B 0B            [ 1]  689 	ld	a, (0x0b, sp)
      008EFE A4 0F            [ 1]  690 	and	a, #0x0f
      008F00 4E               [ 1]  691 	swap	a
      008F01 A4 F0            [ 1]  692 	and	a, #0xf0
      008F03 6B 12            [ 1]  693 	ld	(0x12, sp), a
                           00025D   694 	Snixie$NIXIE_DisplayTime$186 ==.
                                    695 ;	Source/Device/Src/nixie.c: 183: tmp2=(uint8_t)(tube2>>8);
      008F05 7B 0C            [ 1]  696 	ld	a, (0x0c, sp)
      008F07 5F               [ 1]  697 	clrw	x
                           000260   698 	Snixie$NIXIE_DisplayTime$187 ==.
                                    699 ;	Source/Device/Src/nixie.c: 184: tmp1=tmp1|tmp2;
      008F08 1A 12            [ 1]  700 	or	a, (0x12, sp)
      008F0A 97               [ 1]  701 	ld	xl, a
                           000263   702 	Snixie$NIXIE_DisplayTime$188 ==.
                                    703 ;	Source/Device/Src/nixie.c: 185: tmp2=(tmp1&0b00000001)<<7;
      008F0B 9F               [ 1]  704 	ld	a, xl
      008F0C A4 01            [ 1]  705 	and	a, #0x01
      008F0E 4E               [ 1]  706 	swap	a
      008F0F A4 F0            [ 1]  707 	and	a, #0xf0
      008F11 48               [ 1]  708 	sll	a
      008F12 48               [ 1]  709 	sll	a
      008F13 48               [ 1]  710 	sll	a
      008F14 6B 12            [ 1]  711 	ld	(0x12, sp), a
                           00026E   712 	Snixie$NIXIE_DisplayTime$189 ==.
                                    713 ;	Source/Device/Src/nixie.c: 186: tmp1=(tmp1>>1)|tmp2;
      008F16 9F               [ 1]  714 	ld	a, xl
      008F17 44               [ 1]  715 	srl	a
      008F18 1A 12            [ 1]  716 	or	a, (0x12, sp)
                           000272   717 	Snixie$NIXIE_DisplayTime$190 ==.
                                    718 ;	Source/Device/Src/nixie.c: 187: SPI_SendData(tmp1);
      008F1A 88               [ 1]  719 	push	a
                           000273   720 	Snixie$NIXIE_DisplayTime$191 ==.
      008F1B CD 84 48         [ 4]  721 	call	_SPI_SendData
      008F1E 84               [ 1]  722 	pop	a
                           000277   723 	Snixie$NIXIE_DisplayTime$192 ==.
                           000277   724 	Snixie$NIXIE_DisplayTime$193 ==.
                                    725 ;	Source/Device/Src/nixie.c: 189: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F1F                        726 00113$:
      008F1F 4B 02            [ 1]  727 	push	#0x02
                           000279   728 	Snixie$NIXIE_DisplayTime$194 ==.
      008F21 CD 84 4F         [ 4]  729 	call	_SPI_GetFlagStatus
      008F24 5B 01            [ 2]  730 	addw	sp, #1
                           00027E   731 	Snixie$NIXIE_DisplayTime$195 ==.
      008F26 4D               [ 1]  732 	tnz	a
      008F27 27 F6            [ 1]  733 	jreq	00113$
                           000281   734 	Snixie$NIXIE_DisplayTime$196 ==.
                                    735 ;	Source/Device/Src/nixie.c: 191: tmp1=(uint8_t)(tube1>>5);
      008F29 1E 0A            [ 2]  736 	ldw	x, (0x0a, sp)
      008F2B A6 20            [ 1]  737 	ld	a, #0x20
      008F2D 62               [ 2]  738 	div	x, a
      008F2E 41               [ 1]  739 	exg	a, xl
      008F2F 6B 12            [ 1]  740 	ld	(0x12, sp), a
      008F31 41               [ 1]  741 	exg	a, xl
                           00028A   742 	Snixie$NIXIE_DisplayTime$197 ==.
                                    743 ;	Source/Device/Src/nixie.c: 192: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008F32 16 0A            [ 2]  744 	ldw	y, (0x0a, sp)
      008F34 5F               [ 1]  745 	clrw	x
      008F35 90 9F            [ 1]  746 	ld	a, yl
      008F37 A4 10            [ 1]  747 	and	a, #0x10
      008F39 97               [ 1]  748 	ld	xl, a
      008F3A A6 10            [ 1]  749 	ld	a, #0x10
      008F3C 62               [ 2]  750 	div	x, a
      008F3D 9F               [ 1]  751 	ld	a, xl
      008F3E 4E               [ 1]  752 	swap	a
      008F3F A4 F0            [ 1]  753 	and	a, #0xf0
      008F41 48               [ 1]  754 	sll	a
      008F42 48               [ 1]  755 	sll	a
      008F43 48               [ 1]  756 	sll	a
                           00029C   757 	Snixie$NIXIE_DisplayTime$198 ==.
                                    758 ;	Source/Device/Src/nixie.c: 193: tmp1=tmp1|tmp2;
      008F44 1A 12            [ 1]  759 	or	a, (0x12, sp)
                           00029E   760 	Snixie$NIXIE_DisplayTime$199 ==.
                                    761 ;	Source/Device/Src/nixie.c: 194: SPI_SendData(tmp1);
      008F46 88               [ 1]  762 	push	a
                           00029F   763 	Snixie$NIXIE_DisplayTime$200 ==.
      008F47 CD 84 48         [ 4]  764 	call	_SPI_SendData
      008F4A 84               [ 1]  765 	pop	a
                           0002A3   766 	Snixie$NIXIE_DisplayTime$201 ==.
                           0002A3   767 	Snixie$NIXIE_DisplayTime$202 ==.
                                    768 ;	Source/Device/Src/nixie.c: 196: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F4B                        769 00116$:
      008F4B 4B 02            [ 1]  770 	push	#0x02
                           0002A5   771 	Snixie$NIXIE_DisplayTime$203 ==.
      008F4D CD 84 4F         [ 4]  772 	call	_SPI_GetFlagStatus
      008F50 5B 01            [ 2]  773 	addw	sp, #1
                           0002AA   774 	Snixie$NIXIE_DisplayTime$204 ==.
      008F52 4D               [ 1]  775 	tnz	a
      008F53 27 F6            [ 1]  776 	jreq	00116$
                           0002AD   777 	Snixie$NIXIE_DisplayTime$205 ==.
                                    778 ;	Source/Device/Src/nixie.c: 198: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008F55 4B 80            [ 1]  779 	push	#0x80
                           0002AF   780 	Snixie$NIXIE_DisplayTime$206 ==.
      008F57 4B 0A            [ 1]  781 	push	#0x0a
                           0002B1   782 	Snixie$NIXIE_DisplayTime$207 ==.
      008F59 4B 50            [ 1]  783 	push	#0x50
                           0002B3   784 	Snixie$NIXIE_DisplayTime$208 ==.
      008F5B CD 82 AB         [ 4]  785 	call	_GPIO_WriteHigh
      008F5E 5B 03            [ 2]  786 	addw	sp, #3
                           0002B8   787 	Snixie$NIXIE_DisplayTime$209 ==.
                           0002B8   788 	Snixie$NIXIE_DisplayTime$210 ==.
                           0002B8   789 	Snixie$NIXIE_DisplayTime$211 ==.
                                    790 ;	Source/Device/Src/nixie.c: 199: }
      008F60 5B 12            [ 2]  791 	addw	sp, #18
                           0002BA   792 	Snixie$NIXIE_DisplayTime$212 ==.
                           0002BA   793 	Snixie$NIXIE_DisplayTime$213 ==.
                           0002BA   794 	XG$NIXIE_DisplayTime$0$0 ==.
      008F62 81               [ 4]  795 	ret
                           0002BB   796 	Snixie$NIXIE_DisplayTime$214 ==.
                                    797 	.area CODE
                                    798 	.area CONST
                                    799 	.area INITIALIZER
                           000000   800 Fnixie$__xinit_tube_state$0_0$0 == .
      008096                        801 __xinit__tube_state:
      008096 00                     802 	.db #0x00	; 0
                                    803 	.area CABS (ABS)
                                    804 
                                    805 	.area .debug_line (NOLOAD)
      0014D9 00 00 02 7F            806 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0014DD                        807 Ldebug_line_start:
      0014DD 00 02                  808 	.dw	2
      0014DF 00 00 00 7A            809 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0014E3 01                     810 	.db	1
      0014E4 01                     811 	.db	1
      0014E5 FB                     812 	.db	-5
      0014E6 0F                     813 	.db	15
      0014E7 0A                     814 	.db	10
      0014E8 00                     815 	.db	0
      0014E9 01                     816 	.db	1
      0014EA 01                     817 	.db	1
      0014EB 01                     818 	.db	1
      0014EC 01                     819 	.db	1
      0014ED 00                     820 	.db	0
      0014EE 00                     821 	.db	0
      0014EF 00                     822 	.db	0
      0014F0 01                     823 	.db	1
      0014F1 43 3A 5C 50 72 6F 67   824 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001519 00                     825 	.db	0
      00151A 43 3A 5C 50 72 6F 67   826 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00153D 00                     827 	.db	0
      00153E 00                     828 	.db	0
      00153F 53 6F 75 72 63 65 2F   829 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      001558 00                     830 	.db	0
      001559 00                     831 	.uleb128	0
      00155A 00                     832 	.uleb128	0
      00155B 00                     833 	.uleb128	0
      00155C 00                     834 	.db	0
      00155D                        835 Ldebug_line_stmt:
      00155D 00                     836 	.db	0
      00155E 05                     837 	.uleb128	5
      00155F 02                     838 	.db	2
      001560 00 00 8C A8            839 	.dw	0,(Snixie$delay$1)
      001564 03                     840 	.db	3
      001565 32                     841 	.sleb128	50
      001566 01                     842 	.db	1
      001567 09                     843 	.db	9
      001568 00 00                  844 	.dw	Snixie$delay$3-Snixie$delay$1
      00156A 03                     845 	.db	3
      00156B 09                     846 	.sleb128	9
      00156C 01                     847 	.db	1
      00156D 09                     848 	.db	9
      00156E 00 09                  849 	.dw	Snixie$delay$4-Snixie$delay$3
      001570 03                     850 	.db	3
      001571 01                     851 	.sleb128	1
      001572 01                     852 	.db	1
      001573 09                     853 	.db	9
      001574 00 01                  854 	.dw	1+Snixie$delay$5-Snixie$delay$4
      001576 00                     855 	.db	0
      001577 01                     856 	.uleb128	1
      001578 01                     857 	.db	1
      001579 00                     858 	.db	0
      00157A 05                     859 	.uleb128	5
      00157B 02                     860 	.db	2
      00157C 00 00 8C B2            861 	.dw	0,(Snixie$NIXIE_Init$7)
      001580 03                     862 	.db	3
      001581 C1 00                  863 	.sleb128	65
      001583 01                     864 	.db	1
      001584 09                     865 	.db	9
      001585 00 00                  866 	.dw	Snixie$NIXIE_Init$9-Snixie$NIXIE_Init$7
      001587 03                     867 	.db	3
      001588 02                     868 	.sleb128	2
      001589 01                     869 	.db	1
      00158A 09                     870 	.db	9
      00158B 00 0D                  871 	.dw	Snixie$NIXIE_Init$15-Snixie$NIXIE_Init$9
      00158D 03                     872 	.db	3
      00158E 01                     873 	.sleb128	1
      00158F 01                     874 	.db	1
      001590 09                     875 	.db	9
      001591 00 0D                  876 	.dw	Snixie$NIXIE_Init$21-Snixie$NIXIE_Init$15
      001593 03                     877 	.db	3
      001594 01                     878 	.sleb128	1
      001595 01                     879 	.db	1
      001596 09                     880 	.db	9
      001597 00 0D                  881 	.dw	Snixie$NIXIE_Init$27-Snixie$NIXIE_Init$21
      001599 03                     882 	.db	3
      00159A 01                     883 	.sleb128	1
      00159B 01                     884 	.db	1
      00159C 09                     885 	.db	9
      00159D 00 03                  886 	.dw	Snixie$NIXIE_Init$28-Snixie$NIXIE_Init$27
      00159F 03                     887 	.db	3
      0015A0 02                     888 	.sleb128	2
      0015A1 01                     889 	.db	1
      0015A2 09                     890 	.db	9
      0015A3 00 15                  891 	.dw	Snixie$NIXIE_Init$38-Snixie$NIXIE_Init$28
      0015A5 03                     892 	.db	3
      0015A6 08                     893 	.sleb128	8
      0015A7 01                     894 	.db	1
      0015A8 09                     895 	.db	9
      0015A9 00 06                  896 	.dw	Snixie$NIXIE_Init$41-Snixie$NIXIE_Init$38
      0015AB 03                     897 	.db	3
      0015AC 01                     898 	.sleb128	1
      0015AD 01                     899 	.db	1
      0015AE 09                     900 	.db	9
      0015AF 00 01                  901 	.dw	1+Snixie$NIXIE_Init$42-Snixie$NIXIE_Init$41
      0015B1 00                     902 	.db	0
      0015B2 01                     903 	.uleb128	1
      0015B3 01                     904 	.db	1
      0015B4 00                     905 	.db	0
      0015B5 05                     906 	.uleb128	5
      0015B6 02                     907 	.db	2
      0015B7 00 00 8C F8            908 	.dw	0,(Snixie$NIXIE_DisplayChar$44)
      0015BB 03                     909 	.db	3
      0015BC DB 00                  910 	.sleb128	91
      0015BE 01                     911 	.db	1
      0015BF 09                     912 	.db	9
      0015C0 00 02                  913 	.dw	Snixie$NIXIE_DisplayChar$47-Snixie$NIXIE_DisplayChar$44
      0015C2 03                     914 	.db	3
      0015C3 02                     915 	.sleb128	2
      0015C4 01                     916 	.db	1
      0015C5 09                     917 	.db	9
      0015C6 00 03                  918 	.dw	Snixie$NIXIE_DisplayChar$48-Snixie$NIXIE_DisplayChar$47
      0015C8 03                     919 	.db	3
      0015C9 03                     920 	.sleb128	3
      0015CA 01                     921 	.db	1
      0015CB 09                     922 	.db	9
      0015CC 00 0F                  923 	.dw	Snixie$NIXIE_DisplayChar$53-Snixie$NIXIE_DisplayChar$48
      0015CE 03                     924 	.db	3
      0015CF 01                     925 	.sleb128	1
      0015D0 01                     926 	.db	1
      0015D1 09                     927 	.db	9
      0015D2 00 05                  928 	.dw	Snixie$NIXIE_DisplayChar$54-Snixie$NIXIE_DisplayChar$53
      0015D4 03                     929 	.db	3
      0015D5 01                     930 	.sleb128	1
      0015D6 01                     931 	.db	1
      0015D7 09                     932 	.db	9
      0015D8 00 08                  933 	.dw	Snixie$NIXIE_DisplayChar$57-Snixie$NIXIE_DisplayChar$54
      0015DA 03                     934 	.db	3
      0015DB 02                     935 	.sleb128	2
      0015DC 01                     936 	.db	1
      0015DD 09                     937 	.db	9
      0015DE 00 14                  938 	.dw	Snixie$NIXIE_DisplayChar$61-Snixie$NIXIE_DisplayChar$57
      0015E0 03                     939 	.db	3
      0015E1 01                     940 	.sleb128	1
      0015E2 01                     941 	.db	1
      0015E3 09                     942 	.db	9
      0015E4 00 16                  943 	.dw	Snixie$NIXIE_DisplayChar$63-Snixie$NIXIE_DisplayChar$61
      0015E6 03                     944 	.db	3
      0015E7 7D                     945 	.sleb128	-3
      0015E8 01                     946 	.db	1
      0015E9 09                     947 	.db	9
      0015EA 00 04                  948 	.dw	Snixie$NIXIE_DisplayChar$65-Snixie$NIXIE_DisplayChar$63
      0015EC 03                     949 	.db	3
      0015ED 05                     950 	.sleb128	5
      0015EE 01                     951 	.db	1
      0015EF 09                     952 	.db	9
      0015F0 00 0F                  953 	.dw	Snixie$NIXIE_DisplayChar$70-Snixie$NIXIE_DisplayChar$65
      0015F2 03                     954 	.db	3
      0015F3 01                     955 	.sleb128	1
      0015F4 01                     956 	.db	1
      0015F5 09                     957 	.db	9
      0015F6 00 0A                  958 	.dw	Snixie$NIXIE_DisplayChar$71-Snixie$NIXIE_DisplayChar$70
      0015F8 03                     959 	.db	3
      0015F9 01                     960 	.sleb128	1
      0015FA 01                     961 	.db	1
      0015FB 09                     962 	.db	9
      0015FC 00 05                  963 	.dw	Snixie$NIXIE_DisplayChar$73-Snixie$NIXIE_DisplayChar$71
      0015FE 03                     964 	.db	3
      0015FF 01                     965 	.sleb128	1
      001600 01                     966 	.db	1
      001601 09                     967 	.db	9
      001602 00 07                  968 	.dw	Snixie$NIXIE_DisplayChar$74-Snixie$NIXIE_DisplayChar$73
      001604 03                     969 	.db	3
      001605 02                     970 	.sleb128	2
      001606 01                     971 	.db	1
      001607 09                     972 	.db	9
      001608 00 0E                  973 	.dw	Snixie$NIXIE_DisplayChar$75-Snixie$NIXIE_DisplayChar$74
      00160A 03                     974 	.db	3
      00160B 01                     975 	.sleb128	1
      00160C 01                     976 	.db	1
      00160D 09                     977 	.db	9
      00160E 00 10                  978 	.dw	Snixie$NIXIE_DisplayChar$76-Snixie$NIXIE_DisplayChar$75
      001610 03                     979 	.db	3
      001611 02                     980 	.sleb128	2
      001612 01                     981 	.db	1
      001613 09                     982 	.db	9
      001614 00 01                  983 	.dw	Snixie$NIXIE_DisplayChar$77-Snixie$NIXIE_DisplayChar$76
      001616 03                     984 	.db	3
      001617 01                     985 	.sleb128	1
      001618 01                     986 	.db	1
      001619 09                     987 	.db	9
      00161A 00 03                  988 	.dw	1+Snixie$NIXIE_DisplayChar$79-Snixie$NIXIE_DisplayChar$77
      00161C 00                     989 	.db	0
      00161D 01                     990 	.uleb128	1
      00161E 01                     991 	.db	1
      00161F 00                     992 	.db	0
      001620 05                     993 	.uleb128	5
      001621 02                     994 	.db	2
      001622 00 00 8D 8E            995 	.dw	0,(Snixie$NIXIE_DisplayTime$81)
      001626 03                     996 	.db	3
      001627 F8 00                  997 	.sleb128	120
      001629 01                     998 	.db	1
      00162A 09                     999 	.db	9
      00162B 00 02                 1000 	.dw	Snixie$NIXIE_DisplayTime$84-Snixie$NIXIE_DisplayTime$81
      00162D 03                    1001 	.db	3
      00162E 04                    1002 	.sleb128	4
      00162F 01                    1003 	.db	1
      001630 09                    1004 	.db	9
      001631 00 21                 1005 	.dw	Snixie$NIXIE_DisplayTime$85-Snixie$NIXIE_DisplayTime$84
      001633 03                    1006 	.db	3
      001634 02                    1007 	.sleb128	2
      001635 01                    1008 	.db	1
      001636 09                    1009 	.db	9
      001637 00 12                 1010 	.dw	Snixie$NIXIE_DisplayTime$90-Snixie$NIXIE_DisplayTime$85
      001639 03                    1011 	.db	3
      00163A 01                    1012 	.sleb128	1
      00163B 01                    1013 	.db	1
      00163C 09                    1014 	.db	9
      00163D 00 08                 1015 	.dw	Snixie$NIXIE_DisplayTime$93-Snixie$NIXIE_DisplayTime$90
      00163F 03                    1016 	.db	3
      001640 02                    1017 	.sleb128	2
      001641 01                    1018 	.db	1
      001642 09                    1019 	.db	9
      001643 00 0C                 1020 	.dw	Snixie$NIXIE_DisplayTime$98-Snixie$NIXIE_DisplayTime$93
      001645 03                    1021 	.db	3
      001646 01                    1022 	.sleb128	1
      001647 01                    1023 	.db	1
      001648 09                    1024 	.db	9
      001649 00 08                 1025 	.dw	Snixie$NIXIE_DisplayTime$101-Snixie$NIXIE_DisplayTime$98
      00164B 03                    1026 	.db	3
      00164C 02                    1027 	.sleb128	2
      00164D 01                    1028 	.db	1
      00164E 09                    1029 	.db	9
      00164F 00 12                 1030 	.dw	Snixie$NIXIE_DisplayTime$106-Snixie$NIXIE_DisplayTime$101
      001651 03                    1031 	.db	3
      001652 01                    1032 	.sleb128	1
      001653 01                    1033 	.db	1
      001654 09                    1034 	.db	9
      001655 00 08                 1035 	.dw	Snixie$NIXIE_DisplayTime$109-Snixie$NIXIE_DisplayTime$106
      001657 03                    1036 	.db	3
      001658 02                    1037 	.sleb128	2
      001659 01                    1038 	.db	1
      00165A 09                    1039 	.db	9
      00165B 00 0C                 1040 	.dw	Snixie$NIXIE_DisplayTime$114-Snixie$NIXIE_DisplayTime$109
      00165D 03                    1041 	.db	3
      00165E 01                    1042 	.sleb128	1
      00165F 01                    1043 	.db	1
      001660 09                    1044 	.db	9
      001661 00 08                 1045 	.dw	Snixie$NIXIE_DisplayTime$117-Snixie$NIXIE_DisplayTime$114
      001663 03                    1046 	.db	3
      001664 02                    1047 	.sleb128	2
      001665 01                    1048 	.db	1
      001666 09                    1049 	.db	9
      001667 00 10                 1050 	.dw	Snixie$NIXIE_DisplayTime$122-Snixie$NIXIE_DisplayTime$117
      001669 03                    1051 	.db	3
      00166A 01                    1052 	.sleb128	1
      00166B 01                    1053 	.db	1
      00166C 09                    1054 	.db	9
      00166D 00 11                 1055 	.dw	Snixie$NIXIE_DisplayTime$127-Snixie$NIXIE_DisplayTime$122
      00166F 03                    1056 	.db	3
      001670 01                    1057 	.sleb128	1
      001671 01                    1058 	.db	1
      001672 09                    1059 	.db	9
      001673 00 11                 1060 	.dw	Snixie$NIXIE_DisplayTime$132-Snixie$NIXIE_DisplayTime$127
      001675 03                    1061 	.db	3
      001676 01                    1062 	.sleb128	1
      001677 01                    1063 	.db	1
      001678 09                    1064 	.db	9
      001679 00 11                 1065 	.dw	Snixie$NIXIE_DisplayTime$137-Snixie$NIXIE_DisplayTime$132
      00167B 03                    1066 	.db	3
      00167C 04                    1067 	.sleb128	4
      00167D 01                    1068 	.db	1
      00167E 09                    1069 	.db	9
      00167F 00 0B                 1070 	.dw	Snixie$NIXIE_DisplayTime$143-Snixie$NIXIE_DisplayTime$137
      001681 03                    1071 	.db	3
      001682 05                    1072 	.sleb128	5
      001683 01                    1073 	.db	1
      001684 09                    1074 	.db	9
      001685 00 07                 1075 	.dw	Snixie$NIXIE_DisplayTime$144-Snixie$NIXIE_DisplayTime$143
      001687 03                    1076 	.db	3
      001688 01                    1077 	.sleb128	1
      001689 01                    1078 	.db	1
      00168A 09                    1079 	.db	9
      00168B 00 0A                 1080 	.dw	Snixie$NIXIE_DisplayTime$145-Snixie$NIXIE_DisplayTime$144
      00168D 03                    1081 	.db	3
      00168E 01                    1082 	.sleb128	1
      00168F 01                    1083 	.db	1
      001690 09                    1084 	.db	9
      001691 00 04                 1085 	.dw	Snixie$NIXIE_DisplayTime$148-Snixie$NIXIE_DisplayTime$145
      001693 03                    1086 	.db	3
      001694 01                    1087 	.sleb128	1
      001695 01                    1088 	.db	1
      001696 09                    1089 	.db	9
      001697 00 05                 1090 	.dw	Snixie$NIXIE_DisplayTime$151-Snixie$NIXIE_DisplayTime$148
      001699 03                    1091 	.db	3
      00169A 02                    1092 	.sleb128	2
      00169B 01                    1093 	.db	1
      00169C 09                    1094 	.db	9
      00169D 00 0A                 1095 	.dw	Snixie$NIXIE_DisplayTime$154-Snixie$NIXIE_DisplayTime$151
      00169F 03                    1096 	.db	3
      0016A0 02                    1097 	.sleb128	2
      0016A1 01                    1098 	.db	1
      0016A2 09                    1099 	.db	9
      0016A3 00 09                 1100 	.dw	Snixie$NIXIE_DisplayTime$155-Snixie$NIXIE_DisplayTime$154
      0016A5 03                    1101 	.db	3
      0016A6 01                    1102 	.sleb128	1
      0016A7 01                    1103 	.db	1
      0016A8 09                    1104 	.db	9
      0016A9 00 03                 1105 	.dw	Snixie$NIXIE_DisplayTime$156-Snixie$NIXIE_DisplayTime$155
      0016AB 03                    1106 	.db	3
      0016AC 01                    1107 	.sleb128	1
      0016AD 01                    1108 	.db	1
      0016AE 09                    1109 	.db	9
      0016AF 00 03                 1110 	.dw	Snixie$NIXIE_DisplayTime$157-Snixie$NIXIE_DisplayTime$156
      0016B1 03                    1111 	.db	3
      0016B2 01                    1112 	.sleb128	1
      0016B3 01                    1113 	.db	1
      0016B4 09                    1114 	.db	9
      0016B5 00 0B                 1115 	.dw	Snixie$NIXIE_DisplayTime$158-Snixie$NIXIE_DisplayTime$157
      0016B7 03                    1116 	.db	3
      0016B8 01                    1117 	.sleb128	1
      0016B9 01                    1118 	.db	1
      0016BA 09                    1119 	.db	9
      0016BB 00 04                 1120 	.dw	Snixie$NIXIE_DisplayTime$159-Snixie$NIXIE_DisplayTime$158
      0016BD 03                    1121 	.db	3
      0016BE 01                    1122 	.sleb128	1
      0016BF 01                    1123 	.db	1
      0016C0 09                    1124 	.db	9
      0016C1 00 05                 1125 	.dw	Snixie$NIXIE_DisplayTime$162-Snixie$NIXIE_DisplayTime$159
      0016C3 03                    1126 	.db	3
      0016C4 02                    1127 	.sleb128	2
      0016C5 01                    1128 	.db	1
      0016C6 09                    1129 	.db	9
      0016C7 00 0A                 1130 	.dw	Snixie$NIXIE_DisplayTime$165-Snixie$NIXIE_DisplayTime$162
      0016C9 03                    1131 	.db	3
      0016CA 02                    1132 	.sleb128	2
      0016CB 01                    1133 	.db	1
      0016CC 09                    1134 	.db	9
      0016CD 00 09                 1135 	.dw	Snixie$NIXIE_DisplayTime$166-Snixie$NIXIE_DisplayTime$165
      0016CF 03                    1136 	.db	3
      0016D0 01                    1137 	.sleb128	1
      0016D1 01                    1138 	.db	1
      0016D2 09                    1139 	.db	9
      0016D3 00 12                 1140 	.dw	Snixie$NIXIE_DisplayTime$167-Snixie$NIXIE_DisplayTime$166
      0016D5 03                    1141 	.db	3
      0016D6 01                    1142 	.sleb128	1
      0016D7 01                    1143 	.db	1
      0016D8 09                    1144 	.db	9
      0016D9 00 02                 1145 	.dw	Snixie$NIXIE_DisplayTime$168-Snixie$NIXIE_DisplayTime$167
      0016DB 03                    1146 	.db	3
      0016DC 01                    1147 	.sleb128	1
      0016DD 01                    1148 	.db	1
      0016DE 09                    1149 	.db	9
      0016DF 00 05                 1150 	.dw	Snixie$NIXIE_DisplayTime$171-Snixie$NIXIE_DisplayTime$168
      0016E1 03                    1151 	.db	3
      0016E2 02                    1152 	.sleb128	2
      0016E3 01                    1153 	.db	1
      0016E4 09                    1154 	.db	9
      0016E5 00 0A                 1155 	.dw	Snixie$NIXIE_DisplayTime$174-Snixie$NIXIE_DisplayTime$171
      0016E7 03                    1156 	.db	3
      0016E8 03                    1157 	.sleb128	3
      0016E9 01                    1158 	.db	1
      0016EA 09                    1159 	.db	9
      0016EB 00 07                 1160 	.dw	Snixie$NIXIE_DisplayTime$175-Snixie$NIXIE_DisplayTime$174
      0016ED 03                    1161 	.db	3
      0016EE 01                    1162 	.sleb128	1
      0016EF 01                    1163 	.db	1
      0016F0 09                    1164 	.db	9
      0016F1 00 0A                 1165 	.dw	Snixie$NIXIE_DisplayTime$176-Snixie$NIXIE_DisplayTime$175
      0016F3 03                    1166 	.db	3
      0016F4 01                    1167 	.sleb128	1
      0016F5 01                    1168 	.db	1
      0016F6 09                    1169 	.db	9
      0016F7 00 04                 1170 	.dw	Snixie$NIXIE_DisplayTime$179-Snixie$NIXIE_DisplayTime$176
      0016F9 03                    1171 	.db	3
      0016FA 01                    1172 	.sleb128	1
      0016FB 01                    1173 	.db	1
      0016FC 09                    1174 	.db	9
      0016FD 00 05                 1175 	.dw	Snixie$NIXIE_DisplayTime$182-Snixie$NIXIE_DisplayTime$179
      0016FF 03                    1176 	.db	3
      001700 02                    1177 	.sleb128	2
      001701 01                    1178 	.db	1
      001702 09                    1179 	.db	9
      001703 00 0A                 1180 	.dw	Snixie$NIXIE_DisplayTime$185-Snixie$NIXIE_DisplayTime$182
      001705 03                    1181 	.db	3
      001706 02                    1182 	.sleb128	2
      001707 01                    1183 	.db	1
      001708 09                    1184 	.db	9
      001709 00 09                 1185 	.dw	Snixie$NIXIE_DisplayTime$186-Snixie$NIXIE_DisplayTime$185
      00170B 03                    1186 	.db	3
      00170C 01                    1187 	.sleb128	1
      00170D 01                    1188 	.db	1
      00170E 09                    1189 	.db	9
      00170F 00 03                 1190 	.dw	Snixie$NIXIE_DisplayTime$187-Snixie$NIXIE_DisplayTime$186
      001711 03                    1191 	.db	3
      001712 01                    1192 	.sleb128	1
      001713 01                    1193 	.db	1
      001714 09                    1194 	.db	9
      001715 00 03                 1195 	.dw	Snixie$NIXIE_DisplayTime$188-Snixie$NIXIE_DisplayTime$187
      001717 03                    1196 	.db	3
      001718 01                    1197 	.sleb128	1
      001719 01                    1198 	.db	1
      00171A 09                    1199 	.db	9
      00171B 00 0B                 1200 	.dw	Snixie$NIXIE_DisplayTime$189-Snixie$NIXIE_DisplayTime$188
      00171D 03                    1201 	.db	3
      00171E 01                    1202 	.sleb128	1
      00171F 01                    1203 	.db	1
      001720 09                    1204 	.db	9
      001721 00 04                 1205 	.dw	Snixie$NIXIE_DisplayTime$190-Snixie$NIXIE_DisplayTime$189
      001723 03                    1206 	.db	3
      001724 01                    1207 	.sleb128	1
      001725 01                    1208 	.db	1
      001726 09                    1209 	.db	9
      001727 00 05                 1210 	.dw	Snixie$NIXIE_DisplayTime$193-Snixie$NIXIE_DisplayTime$190
      001729 03                    1211 	.db	3
      00172A 02                    1212 	.sleb128	2
      00172B 01                    1213 	.db	1
      00172C 09                    1214 	.db	9
      00172D 00 0A                 1215 	.dw	Snixie$NIXIE_DisplayTime$196-Snixie$NIXIE_DisplayTime$193
      00172F 03                    1216 	.db	3
      001730 02                    1217 	.sleb128	2
      001731 01                    1218 	.db	1
      001732 09                    1219 	.db	9
      001733 00 09                 1220 	.dw	Snixie$NIXIE_DisplayTime$197-Snixie$NIXIE_DisplayTime$196
      001735 03                    1221 	.db	3
      001736 01                    1222 	.sleb128	1
      001737 01                    1223 	.db	1
      001738 09                    1224 	.db	9
      001739 00 12                 1225 	.dw	Snixie$NIXIE_DisplayTime$198-Snixie$NIXIE_DisplayTime$197
      00173B 03                    1226 	.db	3
      00173C 01                    1227 	.sleb128	1
      00173D 01                    1228 	.db	1
      00173E 09                    1229 	.db	9
      00173F 00 02                 1230 	.dw	Snixie$NIXIE_DisplayTime$199-Snixie$NIXIE_DisplayTime$198
      001741 03                    1231 	.db	3
      001742 01                    1232 	.sleb128	1
      001743 01                    1233 	.db	1
      001744 09                    1234 	.db	9
      001745 00 05                 1235 	.dw	Snixie$NIXIE_DisplayTime$202-Snixie$NIXIE_DisplayTime$199
      001747 03                    1236 	.db	3
      001748 02                    1237 	.sleb128	2
      001749 01                    1238 	.db	1
      00174A 09                    1239 	.db	9
      00174B 00 0A                 1240 	.dw	Snixie$NIXIE_DisplayTime$205-Snixie$NIXIE_DisplayTime$202
      00174D 03                    1241 	.db	3
      00174E 02                    1242 	.sleb128	2
      00174F 01                    1243 	.db	1
      001750 09                    1244 	.db	9
      001751 00 0B                 1245 	.dw	Snixie$NIXIE_DisplayTime$211-Snixie$NIXIE_DisplayTime$205
      001753 03                    1246 	.db	3
      001754 01                    1247 	.sleb128	1
      001755 01                    1248 	.db	1
      001756 09                    1249 	.db	9
      001757 00 03                 1250 	.dw	1+Snixie$NIXIE_DisplayTime$213-Snixie$NIXIE_DisplayTime$211
      001759 00                    1251 	.db	0
      00175A 01                    1252 	.uleb128	1
      00175B 01                    1253 	.db	1
      00175C                       1254 Ldebug_line_end:
                                   1255 
                                   1256 	.area .debug_loc (NOLOAD)
      000E7C                       1257 Ldebug_loc_start:
      000E7C 00 00 8F 62           1258 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      000E80 00 00 8F 63           1259 	.dw	0,(Snixie$NIXIE_DisplayTime$214)
      000E84 00 02                 1260 	.dw	2
      000E86 78                    1261 	.db	120
      000E87 01                    1262 	.sleb128	1
      000E88 00 00 8F 60           1263 	.dw	0,(Snixie$NIXIE_DisplayTime$209)
      000E8C 00 00 8F 62           1264 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      000E90 00 02                 1265 	.dw	2
      000E92 78                    1266 	.db	120
      000E93 13                    1267 	.sleb128	19
      000E94 00 00 8F 5B           1268 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      000E98 00 00 8F 60           1269 	.dw	0,(Snixie$NIXIE_DisplayTime$209)
      000E9C 00 02                 1270 	.dw	2
      000E9E 78                    1271 	.db	120
      000E9F 16                    1272 	.sleb128	22
      000EA0 00 00 8F 59           1273 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000EA4 00 00 8F 5B           1274 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      000EA8 00 02                 1275 	.dw	2
      000EAA 78                    1276 	.db	120
      000EAB 15                    1277 	.sleb128	21
      000EAC 00 00 8F 57           1278 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      000EB0 00 00 8F 59           1279 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000EB4 00 02                 1280 	.dw	2
      000EB6 78                    1281 	.db	120
      000EB7 14                    1282 	.sleb128	20
      000EB8 00 00 8F 52           1283 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      000EBC 00 00 8F 57           1284 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      000EC0 00 02                 1285 	.dw	2
      000EC2 78                    1286 	.db	120
      000EC3 13                    1287 	.sleb128	19
      000EC4 00 00 8F 4D           1288 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      000EC8 00 00 8F 52           1289 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      000ECC 00 02                 1290 	.dw	2
      000ECE 78                    1291 	.db	120
      000ECF 14                    1292 	.sleb128	20
      000ED0 00 00 8F 4B           1293 	.dw	0,(Snixie$NIXIE_DisplayTime$201)
      000ED4 00 00 8F 4D           1294 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      000ED8 00 02                 1295 	.dw	2
      000EDA 78                    1296 	.db	120
      000EDB 13                    1297 	.sleb128	19
      000EDC 00 00 8F 47           1298 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      000EE0 00 00 8F 4B           1299 	.dw	0,(Snixie$NIXIE_DisplayTime$201)
      000EE4 00 02                 1300 	.dw	2
      000EE6 78                    1301 	.db	120
      000EE7 14                    1302 	.sleb128	20
      000EE8 00 00 8F 26           1303 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      000EEC 00 00 8F 47           1304 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      000EF0 00 02                 1305 	.dw	2
      000EF2 78                    1306 	.db	120
      000EF3 13                    1307 	.sleb128	19
      000EF4 00 00 8F 21           1308 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      000EF8 00 00 8F 26           1309 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      000EFC 00 02                 1310 	.dw	2
      000EFE 78                    1311 	.db	120
      000EFF 14                    1312 	.sleb128	20
      000F00 00 00 8F 1F           1313 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      000F04 00 00 8F 21           1314 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      000F08 00 02                 1315 	.dw	2
      000F0A 78                    1316 	.db	120
      000F0B 13                    1317 	.sleb128	19
      000F0C 00 00 8F 1B           1318 	.dw	0,(Snixie$NIXIE_DisplayTime$191)
      000F10 00 00 8F 1F           1319 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      000F14 00 02                 1320 	.dw	2
      000F16 78                    1321 	.db	120
      000F17 14                    1322 	.sleb128	20
      000F18 00 00 8E F9           1323 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      000F1C 00 00 8F 1B           1324 	.dw	0,(Snixie$NIXIE_DisplayTime$191)
      000F20 00 02                 1325 	.dw	2
      000F22 78                    1326 	.db	120
      000F23 13                    1327 	.sleb128	19
      000F24 00 00 8E F4           1328 	.dw	0,(Snixie$NIXIE_DisplayTime$183)
      000F28 00 00 8E F9           1329 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      000F2C 00 02                 1330 	.dw	2
      000F2E 78                    1331 	.db	120
      000F2F 14                    1332 	.sleb128	20
      000F30 00 00 8E F2           1333 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      000F34 00 00 8E F4           1334 	.dw	0,(Snixie$NIXIE_DisplayTime$183)
      000F38 00 02                 1335 	.dw	2
      000F3A 78                    1336 	.db	120
      000F3B 13                    1337 	.sleb128	19
      000F3C 00 00 8E EE           1338 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      000F40 00 00 8E F2           1339 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      000F44 00 02                 1340 	.dw	2
      000F46 78                    1341 	.db	120
      000F47 14                    1342 	.sleb128	20
      000F48 00 00 8E ED           1343 	.dw	0,(Snixie$NIXIE_DisplayTime$178)
      000F4C 00 00 8E EE           1344 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      000F50 00 02                 1345 	.dw	2
      000F52 78                    1346 	.db	120
      000F53 13                    1347 	.sleb128	19
      000F54 00 00 8E EA           1348 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      000F58 00 00 8E ED           1349 	.dw	0,(Snixie$NIXIE_DisplayTime$178)
      000F5C 00 02                 1350 	.dw	2
      000F5E 78                    1351 	.db	120
      000F5F 15                    1352 	.sleb128	21
      000F60 00 00 8E D5           1353 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      000F64 00 00 8E EA           1354 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      000F68 00 02                 1355 	.dw	2
      000F6A 78                    1356 	.db	120
      000F6B 13                    1357 	.sleb128	19
      000F6C 00 00 8E D0           1358 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      000F70 00 00 8E D5           1359 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      000F74 00 02                 1360 	.dw	2
      000F76 78                    1361 	.db	120
      000F77 14                    1362 	.sleb128	20
      000F78 00 00 8E CE           1363 	.dw	0,(Snixie$NIXIE_DisplayTime$170)
      000F7C 00 00 8E D0           1364 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      000F80 00 02                 1365 	.dw	2
      000F82 78                    1366 	.db	120
      000F83 13                    1367 	.sleb128	19
      000F84 00 00 8E CA           1368 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      000F88 00 00 8E CE           1369 	.dw	0,(Snixie$NIXIE_DisplayTime$170)
      000F8C 00 02                 1370 	.dw	2
      000F8E 78                    1371 	.db	120
      000F8F 14                    1372 	.sleb128	20
      000F90 00 00 8E A9           1373 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      000F94 00 00 8E CA           1374 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      000F98 00 02                 1375 	.dw	2
      000F9A 78                    1376 	.db	120
      000F9B 13                    1377 	.sleb128	19
      000F9C 00 00 8E A4           1378 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      000FA0 00 00 8E A9           1379 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      000FA4 00 02                 1380 	.dw	2
      000FA6 78                    1381 	.db	120
      000FA7 14                    1382 	.sleb128	20
      000FA8 00 00 8E A2           1383 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      000FAC 00 00 8E A4           1384 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      000FB0 00 02                 1385 	.dw	2
      000FB2 78                    1386 	.db	120
      000FB3 13                    1387 	.sleb128	19
      000FB4 00 00 8E 9E           1388 	.dw	0,(Snixie$NIXIE_DisplayTime$160)
      000FB8 00 00 8E A2           1389 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      000FBC 00 02                 1390 	.dw	2
      000FBE 78                    1391 	.db	120
      000FBF 14                    1392 	.sleb128	20
      000FC0 00 00 8E 7C           1393 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      000FC4 00 00 8E 9E           1394 	.dw	0,(Snixie$NIXIE_DisplayTime$160)
      000FC8 00 02                 1395 	.dw	2
      000FCA 78                    1396 	.db	120
      000FCB 13                    1397 	.sleb128	19
      000FCC 00 00 8E 77           1398 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000FD0 00 00 8E 7C           1399 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      000FD4 00 02                 1400 	.dw	2
      000FD6 78                    1401 	.db	120
      000FD7 14                    1402 	.sleb128	20
      000FD8 00 00 8E 75           1403 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000FDC 00 00 8E 77           1404 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000FE0 00 02                 1405 	.dw	2
      000FE2 78                    1406 	.db	120
      000FE3 13                    1407 	.sleb128	19
      000FE4 00 00 8E 71           1408 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      000FE8 00 00 8E 75           1409 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000FEC 00 02                 1410 	.dw	2
      000FEE 78                    1411 	.db	120
      000FEF 14                    1412 	.sleb128	20
      000FF0 00 00 8E 70           1413 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      000FF4 00 00 8E 71           1414 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      000FF8 00 02                 1415 	.dw	2
      000FFA 78                    1416 	.db	120
      000FFB 13                    1417 	.sleb128	19
      000FFC 00 00 8E 6D           1418 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      001000 00 00 8E 70           1419 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      001004 00 02                 1420 	.dw	2
      001006 78                    1421 	.db	120
      001007 15                    1422 	.sleb128	21
      001008 00 00 8E 5B           1423 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      00100C 00 00 8E 6D           1424 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      001010 00 02                 1425 	.dw	2
      001012 78                    1426 	.db	120
      001013 13                    1427 	.sleb128	19
      001014 00 00 8E 56           1428 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      001018 00 00 8E 5B           1429 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      00101C 00 02                 1430 	.dw	2
      00101E 78                    1431 	.db	120
      00101F 16                    1432 	.sleb128	22
      001020 00 00 8E 54           1433 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      001024 00 00 8E 56           1434 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      001028 00 02                 1435 	.dw	2
      00102A 78                    1436 	.db	120
      00102B 15                    1437 	.sleb128	21
      00102C 00 00 8E 52           1438 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      001030 00 00 8E 54           1439 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      001034 00 02                 1440 	.dw	2
      001036 78                    1441 	.db	120
      001037 14                    1442 	.sleb128	20
      001038 00 00 8E 4E           1443 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      00103C 00 00 8E 52           1444 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      001040 00 02                 1445 	.dw	2
      001042 78                    1446 	.db	120
      001043 13                    1447 	.sleb128	19
      001044 00 00 8E 49           1448 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      001048 00 00 8E 4E           1449 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      00104C 00 02                 1450 	.dw	2
      00104E 78                    1451 	.db	120
      00104F 17                    1452 	.sleb128	23
      001050 00 00 8E 47           1453 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      001054 00 00 8E 49           1454 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      001058 00 02                 1455 	.dw	2
      00105A 78                    1456 	.db	120
      00105B 16                    1457 	.sleb128	22
      00105C 00 00 8E 42           1458 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      001060 00 00 8E 47           1459 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      001064 00 02                 1460 	.dw	2
      001066 78                    1461 	.db	120
      001067 14                    1462 	.sleb128	20
      001068 00 00 8E 3D           1463 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      00106C 00 00 8E 42           1464 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      001070 00 02                 1465 	.dw	2
      001072 78                    1466 	.db	120
      001073 13                    1467 	.sleb128	19
      001074 00 00 8E 38           1468 	.dw	0,(Snixie$NIXIE_DisplayTime$130)
      001078 00 00 8E 3D           1469 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      00107C 00 02                 1470 	.dw	2
      00107E 78                    1471 	.db	120
      00107F 17                    1472 	.sleb128	23
      001080 00 00 8E 36           1473 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      001084 00 00 8E 38           1474 	.dw	0,(Snixie$NIXIE_DisplayTime$130)
      001088 00 02                 1475 	.dw	2
      00108A 78                    1476 	.db	120
      00108B 16                    1477 	.sleb128	22
      00108C 00 00 8E 31           1478 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      001090 00 00 8E 36           1479 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      001094 00 02                 1480 	.dw	2
      001096 78                    1481 	.db	120
      001097 14                    1482 	.sleb128	20
      001098 00 00 8E 2C           1483 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      00109C 00 00 8E 31           1484 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      0010A0 00 02                 1485 	.dw	2
      0010A2 78                    1486 	.db	120
      0010A3 13                    1487 	.sleb128	19
      0010A4 00 00 8E 27           1488 	.dw	0,(Snixie$NIXIE_DisplayTime$125)
      0010A8 00 00 8E 2C           1489 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      0010AC 00 02                 1490 	.dw	2
      0010AE 78                    1491 	.db	120
      0010AF 17                    1492 	.sleb128	23
      0010B0 00 00 8E 25           1493 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      0010B4 00 00 8E 27           1494 	.dw	0,(Snixie$NIXIE_DisplayTime$125)
      0010B8 00 02                 1495 	.dw	2
      0010BA 78                    1496 	.db	120
      0010BB 16                    1497 	.sleb128	22
      0010BC 00 00 8E 20           1498 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      0010C0 00 00 8E 25           1499 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      0010C4 00 02                 1500 	.dw	2
      0010C6 78                    1501 	.db	120
      0010C7 14                    1502 	.sleb128	20
      0010C8 00 00 8E 1B           1503 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      0010CC 00 00 8E 20           1504 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      0010D0 00 02                 1505 	.dw	2
      0010D2 78                    1506 	.db	120
      0010D3 13                    1507 	.sleb128	19
      0010D4 00 00 8E 16           1508 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      0010D8 00 00 8E 1B           1509 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      0010DC 00 02                 1510 	.dw	2
      0010DE 78                    1511 	.db	120
      0010DF 17                    1512 	.sleb128	23
      0010E0 00 00 8E 14           1513 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      0010E4 00 00 8E 16           1514 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      0010E8 00 02                 1515 	.dw	2
      0010EA 78                    1516 	.db	120
      0010EB 16                    1517 	.sleb128	22
      0010EC 00 00 8E 10           1518 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      0010F0 00 00 8E 14           1519 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      0010F4 00 02                 1520 	.dw	2
      0010F6 78                    1521 	.db	120
      0010F7 14                    1522 	.sleb128	20
      0010F8 00 00 8E 0B           1523 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      0010FC 00 00 8E 10           1524 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      001100 00 02                 1525 	.dw	2
      001102 78                    1526 	.db	120
      001103 13                    1527 	.sleb128	19
      001104 00 00 8E 08           1528 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      001108 00 00 8E 0B           1529 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      00110C 00 02                 1530 	.dw	2
      00110E 78                    1531 	.db	120
      00110F 15                    1532 	.sleb128	21
      001110 00 00 8E 05           1533 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      001114 00 00 8E 08           1534 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      001118 00 02                 1535 	.dw	2
      00111A 78                    1536 	.db	120
      00111B 13                    1537 	.sleb128	19
      00111C 00 00 8E 00           1538 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      001120 00 00 8E 05           1539 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      001124 00 02                 1540 	.dw	2
      001126 78                    1541 	.db	120
      001127 17                    1542 	.sleb128	23
      001128 00 00 8D FD           1543 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      00112C 00 00 8E 00           1544 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      001130 00 02                 1545 	.dw	2
      001132 78                    1546 	.db	120
      001133 15                    1547 	.sleb128	21
      001134 00 00 8D FB           1548 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      001138 00 00 8D FD           1549 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      00113C 00 02                 1550 	.dw	2
      00113E 78                    1551 	.db	120
      00113F 14                    1552 	.sleb128	20
      001140 00 00 8D F7           1553 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      001144 00 00 8D FB           1554 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      001148 00 02                 1555 	.dw	2
      00114A 78                    1556 	.db	120
      00114B 13                    1557 	.sleb128	19
      00114C 00 00 8D F4           1558 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      001150 00 00 8D F7           1559 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      001154 00 02                 1560 	.dw	2
      001156 78                    1561 	.db	120
      001157 15                    1562 	.sleb128	21
      001158 00 00 8D F1           1563 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      00115C 00 00 8D F4           1564 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      001160 00 02                 1565 	.dw	2
      001162 78                    1566 	.db	120
      001163 13                    1567 	.sleb128	19
      001164 00 00 8D EC           1568 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      001168 00 00 8D F1           1569 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      00116C 00 02                 1570 	.dw	2
      00116E 78                    1571 	.db	120
      00116F 17                    1572 	.sleb128	23
      001170 00 00 8D E9           1573 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      001174 00 00 8D EC           1574 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      001178 00 02                 1575 	.dw	2
      00117A 78                    1576 	.db	120
      00117B 15                    1577 	.sleb128	21
      00117C 00 00 8D E7           1578 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      001180 00 00 8D E9           1579 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      001184 00 02                 1580 	.dw	2
      001186 78                    1581 	.db	120
      001187 14                    1582 	.sleb128	20
      001188 00 00 8D DD           1583 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      00118C 00 00 8D E7           1584 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      001190 00 02                 1585 	.dw	2
      001192 78                    1586 	.db	120
      001193 13                    1587 	.sleb128	19
      001194 00 00 8D DA           1588 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      001198 00 00 8D DD           1589 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      00119C 00 02                 1590 	.dw	2
      00119E 78                    1591 	.db	120
      00119F 15                    1592 	.sleb128	21
      0011A0 00 00 8D D7           1593 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      0011A4 00 00 8D DA           1594 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      0011A8 00 02                 1595 	.dw	2
      0011AA 78                    1596 	.db	120
      0011AB 13                    1597 	.sleb128	19
      0011AC 00 00 8D D2           1598 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      0011B0 00 00 8D D7           1599 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      0011B4 00 02                 1600 	.dw	2
      0011B6 78                    1601 	.db	120
      0011B7 17                    1602 	.sleb128	23
      0011B8 00 00 8D CF           1603 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      0011BC 00 00 8D D2           1604 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      0011C0 00 02                 1605 	.dw	2
      0011C2 78                    1606 	.db	120
      0011C3 15                    1607 	.sleb128	21
      0011C4 00 00 8D CD           1608 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      0011C8 00 00 8D CF           1609 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      0011CC 00 02                 1610 	.dw	2
      0011CE 78                    1611 	.db	120
      0011CF 14                    1612 	.sleb128	20
      0011D0 00 00 8D C9           1613 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      0011D4 00 00 8D CD           1614 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      0011D8 00 02                 1615 	.dw	2
      0011DA 78                    1616 	.db	120
      0011DB 13                    1617 	.sleb128	19
      0011DC 00 00 8D C6           1618 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      0011E0 00 00 8D C9           1619 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      0011E4 00 02                 1620 	.dw	2
      0011E6 78                    1621 	.db	120
      0011E7 15                    1622 	.sleb128	21
      0011E8 00 00 8D C3           1623 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      0011EC 00 00 8D C6           1624 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      0011F0 00 02                 1625 	.dw	2
      0011F2 78                    1626 	.db	120
      0011F3 13                    1627 	.sleb128	19
      0011F4 00 00 8D BE           1628 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      0011F8 00 00 8D C3           1629 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      0011FC 00 02                 1630 	.dw	2
      0011FE 78                    1631 	.db	120
      0011FF 17                    1632 	.sleb128	23
      001200 00 00 8D BB           1633 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      001204 00 00 8D BE           1634 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      001208 00 02                 1635 	.dw	2
      00120A 78                    1636 	.db	120
      00120B 15                    1637 	.sleb128	21
      00120C 00 00 8D B9           1638 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      001210 00 00 8D BB           1639 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      001214 00 02                 1640 	.dw	2
      001216 78                    1641 	.db	120
      001217 14                    1642 	.sleb128	20
      001218 00 00 8D 90           1643 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      00121C 00 00 8D B9           1644 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      001220 00 02                 1645 	.dw	2
      001222 78                    1646 	.db	120
      001223 13                    1647 	.sleb128	19
      001224 00 00 8D 8E           1648 	.dw	0,(Snixie$NIXIE_DisplayTime$82)
      001228 00 00 8D 90           1649 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      00122C 00 02                 1650 	.dw	2
      00122E 78                    1651 	.db	120
      00122F 01                    1652 	.sleb128	1
      001230 00 00 00 00           1653 	.dw	0,0
      001234 00 00 00 00           1654 	.dw	0,0
      001238 00 00 8D 8D           1655 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      00123C 00 00 8D 8E           1656 	.dw	0,(Snixie$NIXIE_DisplayChar$80)
      001240 00 02                 1657 	.dw	2
      001242 78                    1658 	.db	120
      001243 01                    1659 	.sleb128	1
      001244 00 00 8D 65           1660 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      001248 00 00 8D 8D           1661 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      00124C 00 02                 1662 	.dw	2
      00124E 78                    1663 	.db	120
      00124F 06                    1664 	.sleb128	6
      001250 00 00 8D 53           1665 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      001254 00 00 8D 65           1666 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      001258 00 02                 1667 	.dw	2
      00125A 78                    1668 	.db	120
      00125B 06                    1669 	.sleb128	6
      00125C 00 00 8D 4E           1670 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      001260 00 00 8D 53           1671 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      001264 00 02                 1672 	.dw	2
      001266 78                    1673 	.db	120
      001267 0A                    1674 	.sleb128	10
      001268 00 00 8D 4B           1675 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      00126C 00 00 8D 4E           1676 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      001270 00 02                 1677 	.dw	2
      001272 78                    1678 	.db	120
      001273 08                    1679 	.sleb128	8
      001274 00 00 8D 49           1680 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      001278 00 00 8D 4B           1681 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      00127C 00 02                 1682 	.dw	2
      00127E 78                    1683 	.db	120
      00127F 07                    1684 	.sleb128	7
      001280 00 00 8D 29           1685 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      001284 00 00 8D 49           1686 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      001288 00 02                 1687 	.dw	2
      00128A 78                    1688 	.db	120
      00128B 06                    1689 	.sleb128	6
      00128C 00 00 8D 24           1690 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      001290 00 00 8D 29           1691 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      001294 00 02                 1692 	.dw	2
      001296 78                    1693 	.db	120
      001297 0A                    1694 	.sleb128	10
      001298 00 00 8D 21           1695 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      00129C 00 00 8D 24           1696 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      0012A0 00 02                 1697 	.dw	2
      0012A2 78                    1698 	.db	120
      0012A3 08                    1699 	.sleb128	8
      0012A4 00 00 8D 09           1700 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      0012A8 00 00 8D 21           1701 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      0012AC 00 02                 1702 	.dw	2
      0012AE 78                    1703 	.db	120
      0012AF 06                    1704 	.sleb128	6
      0012B0 00 00 8D 04           1705 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      0012B4 00 00 8D 09           1706 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      0012B8 00 02                 1707 	.dw	2
      0012BA 78                    1708 	.db	120
      0012BB 0A                    1709 	.sleb128	10
      0012BC 00 00 8D 01           1710 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      0012C0 00 00 8D 04           1711 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      0012C4 00 02                 1712 	.dw	2
      0012C6 78                    1713 	.db	120
      0012C7 08                    1714 	.sleb128	8
      0012C8 00 00 8C FF           1715 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      0012CC 00 00 8D 01           1716 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      0012D0 00 02                 1717 	.dw	2
      0012D2 78                    1718 	.db	120
      0012D3 07                    1719 	.sleb128	7
      0012D4 00 00 8C FA           1720 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      0012D8 00 00 8C FF           1721 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      0012DC 00 02                 1722 	.dw	2
      0012DE 78                    1723 	.db	120
      0012DF 06                    1724 	.sleb128	6
      0012E0 00 00 8C F8           1725 	.dw	0,(Snixie$NIXIE_DisplayChar$45)
      0012E4 00 00 8C FA           1726 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      0012E8 00 02                 1727 	.dw	2
      0012EA 78                    1728 	.db	120
      0012EB 01                    1729 	.sleb128	1
      0012EC 00 00 00 00           1730 	.dw	0,0
      0012F0 00 00 00 00           1731 	.dw	0,0
      0012F4 00 00 8C F7           1732 	.dw	0,(Snixie$NIXIE_Init$40)
      0012F8 00 00 8C F8           1733 	.dw	0,(Snixie$NIXIE_Init$43)
      0012FC 00 02                 1734 	.dw	2
      0012FE 78                    1735 	.db	120
      0012FF 01                    1736 	.sleb128	1
      001300 00 00 8C F3           1737 	.dw	0,(Snixie$NIXIE_Init$39)
      001304 00 00 8C F7           1738 	.dw	0,(Snixie$NIXIE_Init$40)
      001308 00 02                 1739 	.dw	2
      00130A 78                    1740 	.db	120
      00130B 02                    1741 	.sleb128	2
      00130C 00 00 8C F1           1742 	.dw	0,(Snixie$NIXIE_Init$37)
      001310 00 00 8C F3           1743 	.dw	0,(Snixie$NIXIE_Init$39)
      001314 00 02                 1744 	.dw	2
      001316 78                    1745 	.db	120
      001317 01                    1746 	.sleb128	1
      001318 00 00 8C EC           1747 	.dw	0,(Snixie$NIXIE_Init$36)
      00131C 00 00 8C F1           1748 	.dw	0,(Snixie$NIXIE_Init$37)
      001320 00 02                 1749 	.dw	2
      001322 78                    1750 	.db	120
      001323 09                    1751 	.sleb128	9
      001324 00 00 8C EA           1752 	.dw	0,(Snixie$NIXIE_Init$35)
      001328 00 00 8C EC           1753 	.dw	0,(Snixie$NIXIE_Init$36)
      00132C 00 02                 1754 	.dw	2
      00132E 78                    1755 	.db	120
      00132F 08                    1756 	.sleb128	8
      001330 00 00 8C E8           1757 	.dw	0,(Snixie$NIXIE_Init$34)
      001334 00 00 8C EA           1758 	.dw	0,(Snixie$NIXIE_Init$35)
      001338 00 02                 1759 	.dw	2
      00133A 78                    1760 	.db	120
      00133B 07                    1761 	.sleb128	7
      00133C 00 00 8C E6           1762 	.dw	0,(Snixie$NIXIE_Init$33)
      001340 00 00 8C E8           1763 	.dw	0,(Snixie$NIXIE_Init$34)
      001344 00 02                 1764 	.dw	2
      001346 78                    1765 	.db	120
      001347 06                    1766 	.sleb128	6
      001348 00 00 8C E4           1767 	.dw	0,(Snixie$NIXIE_Init$32)
      00134C 00 00 8C E6           1768 	.dw	0,(Snixie$NIXIE_Init$33)
      001350 00 02                 1769 	.dw	2
      001352 78                    1770 	.db	120
      001353 05                    1771 	.sleb128	5
      001354 00 00 8C E2           1772 	.dw	0,(Snixie$NIXIE_Init$31)
      001358 00 00 8C E4           1773 	.dw	0,(Snixie$NIXIE_Init$32)
      00135C 00 02                 1774 	.dw	2
      00135E 78                    1775 	.db	120
      00135F 04                    1776 	.sleb128	4
      001360 00 00 8C E0           1777 	.dw	0,(Snixie$NIXIE_Init$30)
      001364 00 00 8C E2           1778 	.dw	0,(Snixie$NIXIE_Init$31)
      001368 00 02                 1779 	.dw	2
      00136A 78                    1780 	.db	120
      00136B 03                    1781 	.sleb128	3
      00136C 00 00 8C DE           1782 	.dw	0,(Snixie$NIXIE_Init$29)
      001370 00 00 8C E0           1783 	.dw	0,(Snixie$NIXIE_Init$30)
      001374 00 02                 1784 	.dw	2
      001376 78                    1785 	.db	120
      001377 02                    1786 	.sleb128	2
      001378 00 00 8C D9           1787 	.dw	0,(Snixie$NIXIE_Init$26)
      00137C 00 00 8C DE           1788 	.dw	0,(Snixie$NIXIE_Init$29)
      001380 00 02                 1789 	.dw	2
      001382 78                    1790 	.db	120
      001383 01                    1791 	.sleb128	1
      001384 00 00 8C D4           1792 	.dw	0,(Snixie$NIXIE_Init$25)
      001388 00 00 8C D9           1793 	.dw	0,(Snixie$NIXIE_Init$26)
      00138C 00 02                 1794 	.dw	2
      00138E 78                    1795 	.db	120
      00138F 05                    1796 	.sleb128	5
      001390 00 00 8C D2           1797 	.dw	0,(Snixie$NIXIE_Init$24)
      001394 00 00 8C D4           1798 	.dw	0,(Snixie$NIXIE_Init$25)
      001398 00 02                 1799 	.dw	2
      00139A 78                    1800 	.db	120
      00139B 04                    1801 	.sleb128	4
      00139C 00 00 8C D0           1802 	.dw	0,(Snixie$NIXIE_Init$23)
      0013A0 00 00 8C D2           1803 	.dw	0,(Snixie$NIXIE_Init$24)
      0013A4 00 02                 1804 	.dw	2
      0013A6 78                    1805 	.db	120
      0013A7 03                    1806 	.sleb128	3
      0013A8 00 00 8C CE           1807 	.dw	0,(Snixie$NIXIE_Init$22)
      0013AC 00 00 8C D0           1808 	.dw	0,(Snixie$NIXIE_Init$23)
      0013B0 00 02                 1809 	.dw	2
      0013B2 78                    1810 	.db	120
      0013B3 02                    1811 	.sleb128	2
      0013B4 00 00 8C CC           1812 	.dw	0,(Snixie$NIXIE_Init$20)
      0013B8 00 00 8C CE           1813 	.dw	0,(Snixie$NIXIE_Init$22)
      0013BC 00 02                 1814 	.dw	2
      0013BE 78                    1815 	.db	120
      0013BF 01                    1816 	.sleb128	1
      0013C0 00 00 8C C7           1817 	.dw	0,(Snixie$NIXIE_Init$19)
      0013C4 00 00 8C CC           1818 	.dw	0,(Snixie$NIXIE_Init$20)
      0013C8 00 02                 1819 	.dw	2
      0013CA 78                    1820 	.db	120
      0013CB 05                    1821 	.sleb128	5
      0013CC 00 00 8C C5           1822 	.dw	0,(Snixie$NIXIE_Init$18)
      0013D0 00 00 8C C7           1823 	.dw	0,(Snixie$NIXIE_Init$19)
      0013D4 00 02                 1824 	.dw	2
      0013D6 78                    1825 	.db	120
      0013D7 04                    1826 	.sleb128	4
      0013D8 00 00 8C C3           1827 	.dw	0,(Snixie$NIXIE_Init$17)
      0013DC 00 00 8C C5           1828 	.dw	0,(Snixie$NIXIE_Init$18)
      0013E0 00 02                 1829 	.dw	2
      0013E2 78                    1830 	.db	120
      0013E3 03                    1831 	.sleb128	3
      0013E4 00 00 8C C1           1832 	.dw	0,(Snixie$NIXIE_Init$16)
      0013E8 00 00 8C C3           1833 	.dw	0,(Snixie$NIXIE_Init$17)
      0013EC 00 02                 1834 	.dw	2
      0013EE 78                    1835 	.db	120
      0013EF 02                    1836 	.sleb128	2
      0013F0 00 00 8C BF           1837 	.dw	0,(Snixie$NIXIE_Init$14)
      0013F4 00 00 8C C1           1838 	.dw	0,(Snixie$NIXIE_Init$16)
      0013F8 00 02                 1839 	.dw	2
      0013FA 78                    1840 	.db	120
      0013FB 01                    1841 	.sleb128	1
      0013FC 00 00 8C BA           1842 	.dw	0,(Snixie$NIXIE_Init$13)
      001400 00 00 8C BF           1843 	.dw	0,(Snixie$NIXIE_Init$14)
      001404 00 02                 1844 	.dw	2
      001406 78                    1845 	.db	120
      001407 05                    1846 	.sleb128	5
      001408 00 00 8C B8           1847 	.dw	0,(Snixie$NIXIE_Init$12)
      00140C 00 00 8C BA           1848 	.dw	0,(Snixie$NIXIE_Init$13)
      001410 00 02                 1849 	.dw	2
      001412 78                    1850 	.db	120
      001413 04                    1851 	.sleb128	4
      001414 00 00 8C B6           1852 	.dw	0,(Snixie$NIXIE_Init$11)
      001418 00 00 8C B8           1853 	.dw	0,(Snixie$NIXIE_Init$12)
      00141C 00 02                 1854 	.dw	2
      00141E 78                    1855 	.db	120
      00141F 03                    1856 	.sleb128	3
      001420 00 00 8C B4           1857 	.dw	0,(Snixie$NIXIE_Init$10)
      001424 00 00 8C B6           1858 	.dw	0,(Snixie$NIXIE_Init$11)
      001428 00 02                 1859 	.dw	2
      00142A 78                    1860 	.db	120
      00142B 02                    1861 	.sleb128	2
      00142C 00 00 8C B2           1862 	.dw	0,(Snixie$NIXIE_Init$8)
      001430 00 00 8C B4           1863 	.dw	0,(Snixie$NIXIE_Init$10)
      001434 00 02                 1864 	.dw	2
      001436 78                    1865 	.db	120
      001437 01                    1866 	.sleb128	1
      001438 00 00 00 00           1867 	.dw	0,0
      00143C 00 00 00 00           1868 	.dw	0,0
      001440 00 00 8C A8           1869 	.dw	0,(Snixie$delay$2)
      001444 00 00 8C B2           1870 	.dw	0,(Snixie$delay$6)
      001448 00 02                 1871 	.dw	2
      00144A 78                    1872 	.db	120
      00144B 01                    1873 	.sleb128	1
      00144C 00 00 00 00           1874 	.dw	0,0
      001450 00 00 00 00           1875 	.dw	0,0
                                   1876 
                                   1877 	.area .debug_abbrev (NOLOAD)
      0004EE                       1878 Ldebug_abbrev:
      0004EE 09                    1879 	.uleb128	9
      0004EF 0F                    1880 	.uleb128	15
      0004F0 00                    1881 	.db	0
      0004F1 0B                    1882 	.uleb128	11
      0004F2 0B                    1883 	.uleb128	11
      0004F3 49                    1884 	.uleb128	73
      0004F4 13                    1885 	.uleb128	19
      0004F5 00                    1886 	.uleb128	0
      0004F6 00                    1887 	.uleb128	0
      0004F7 0E                    1888 	.uleb128	14
      0004F8 34                    1889 	.uleb128	52
      0004F9 00                    1890 	.db	0
      0004FA 02                    1891 	.uleb128	2
      0004FB 0A                    1892 	.uleb128	10
      0004FC 03                    1893 	.uleb128	3
      0004FD 08                    1894 	.uleb128	8
      0004FE 3F                    1895 	.uleb128	63
      0004FF 0C                    1896 	.uleb128	12
      000500 49                    1897 	.uleb128	73
      000501 13                    1898 	.uleb128	19
      000502 00                    1899 	.uleb128	0
      000503 00                    1900 	.uleb128	0
      000504 08                    1901 	.uleb128	8
      000505 05                    1902 	.uleb128	5
      000506 00                    1903 	.db	0
      000507 02                    1904 	.uleb128	2
      000508 0A                    1905 	.uleb128	10
      000509 03                    1906 	.uleb128	3
      00050A 08                    1907 	.uleb128	8
      00050B 49                    1908 	.uleb128	73
      00050C 13                    1909 	.uleb128	19
      00050D 00                    1910 	.uleb128	0
      00050E 00                    1911 	.uleb128	0
      00050F 0C                    1912 	.uleb128	12
      000510 01                    1913 	.uleb128	1
      000511 01                    1914 	.db	1
      000512 01                    1915 	.uleb128	1
      000513 13                    1916 	.uleb128	19
      000514 0B                    1917 	.uleb128	11
      000515 0B                    1918 	.uleb128	11
      000516 49                    1919 	.uleb128	73
      000517 13                    1920 	.uleb128	19
      000518 00                    1921 	.uleb128	0
      000519 00                    1922 	.uleb128	0
      00051A 02                    1923 	.uleb128	2
      00051B 2E                    1924 	.uleb128	46
      00051C 01                    1925 	.db	1
      00051D 01                    1926 	.uleb128	1
      00051E 13                    1927 	.uleb128	19
      00051F 03                    1928 	.uleb128	3
      000520 08                    1929 	.uleb128	8
      000521 11                    1930 	.uleb128	17
      000522 01                    1931 	.uleb128	1
      000523 12                    1932 	.uleb128	18
      000524 01                    1933 	.uleb128	1
      000525 3F                    1934 	.uleb128	63
      000526 0C                    1935 	.uleb128	12
      000527 40                    1936 	.uleb128	64
      000528 06                    1937 	.uleb128	6
      000529 00                    1938 	.uleb128	0
      00052A 00                    1939 	.uleb128	0
      00052B 04                    1940 	.uleb128	4
      00052C 34                    1941 	.uleb128	52
      00052D 00                    1942 	.db	0
      00052E 02                    1943 	.uleb128	2
      00052F 0A                    1944 	.uleb128	10
      000530 03                    1945 	.uleb128	3
      000531 08                    1946 	.uleb128	8
      000532 49                    1947 	.uleb128	73
      000533 13                    1948 	.uleb128	19
      000534 00                    1949 	.uleb128	0
      000535 00                    1950 	.uleb128	0
      000536 07                    1951 	.uleb128	7
      000537 2E                    1952 	.uleb128	46
      000538 01                    1953 	.db	1
      000539 01                    1954 	.uleb128	1
      00053A 13                    1955 	.uleb128	19
      00053B 03                    1956 	.uleb128	3
      00053C 08                    1957 	.uleb128	8
      00053D 11                    1958 	.uleb128	17
      00053E 01                    1959 	.uleb128	1
      00053F 12                    1960 	.uleb128	18
      000540 01                    1961 	.uleb128	1
      000541 3F                    1962 	.uleb128	63
      000542 0C                    1963 	.uleb128	12
      000543 40                    1964 	.uleb128	64
      000544 06                    1965 	.uleb128	6
      000545 49                    1966 	.uleb128	73
      000546 13                    1967 	.uleb128	19
      000547 00                    1968 	.uleb128	0
      000548 00                    1969 	.uleb128	0
      000549 03                    1970 	.uleb128	3
      00054A 0B                    1971 	.uleb128	11
      00054B 01                    1972 	.db	1
      00054C 11                    1973 	.uleb128	17
      00054D 01                    1974 	.uleb128	1
      00054E 00                    1975 	.uleb128	0
      00054F 00                    1976 	.uleb128	0
      000550 01                    1977 	.uleb128	1
      000551 11                    1978 	.uleb128	17
      000552 01                    1979 	.db	1
      000553 03                    1980 	.uleb128	3
      000554 08                    1981 	.uleb128	8
      000555 10                    1982 	.uleb128	16
      000556 06                    1983 	.uleb128	6
      000557 13                    1984 	.uleb128	19
      000558 0B                    1985 	.uleb128	11
      000559 25                    1986 	.uleb128	37
      00055A 08                    1987 	.uleb128	8
      00055B 00                    1988 	.uleb128	0
      00055C 00                    1989 	.uleb128	0
      00055D 0B                    1990 	.uleb128	11
      00055E 0B                    1991 	.uleb128	11
      00055F 00                    1992 	.db	0
      000560 11                    1993 	.uleb128	17
      000561 01                    1994 	.uleb128	1
      000562 12                    1995 	.uleb128	18
      000563 01                    1996 	.uleb128	1
      000564 00                    1997 	.uleb128	0
      000565 00                    1998 	.uleb128	0
      000566 06                    1999 	.uleb128	6
      000567 2E                    2000 	.uleb128	46
      000568 00                    2001 	.db	0
      000569 03                    2002 	.uleb128	3
      00056A 08                    2003 	.uleb128	8
      00056B 11                    2004 	.uleb128	17
      00056C 01                    2005 	.uleb128	1
      00056D 12                    2006 	.uleb128	18
      00056E 01                    2007 	.uleb128	1
      00056F 3F                    2008 	.uleb128	63
      000570 0C                    2009 	.uleb128	12
      000571 40                    2010 	.uleb128	64
      000572 06                    2011 	.uleb128	6
      000573 00                    2012 	.uleb128	0
      000574 00                    2013 	.uleb128	0
      000575 0A                    2014 	.uleb128	10
      000576 0B                    2015 	.uleb128	11
      000577 01                    2016 	.db	1
      000578 01                    2017 	.uleb128	1
      000579 13                    2018 	.uleb128	19
      00057A 11                    2019 	.uleb128	17
      00057B 01                    2020 	.uleb128	1
      00057C 12                    2021 	.uleb128	18
      00057D 01                    2022 	.uleb128	1
      00057E 00                    2023 	.uleb128	0
      00057F 00                    2024 	.uleb128	0
      000580 0D                    2025 	.uleb128	13
      000581 21                    2026 	.uleb128	33
      000582 00                    2027 	.db	0
      000583 2F                    2028 	.uleb128	47
      000584 0B                    2029 	.uleb128	11
      000585 00                    2030 	.uleb128	0
      000586 00                    2031 	.uleb128	0
      000587 05                    2032 	.uleb128	5
      000588 24                    2033 	.uleb128	36
      000589 00                    2034 	.db	0
      00058A 03                    2035 	.uleb128	3
      00058B 08                    2036 	.uleb128	8
      00058C 0B                    2037 	.uleb128	11
      00058D 0B                    2038 	.uleb128	11
      00058E 3E                    2039 	.uleb128	62
      00058F 0B                    2040 	.uleb128	11
      000590 00                    2041 	.uleb128	0
      000591 00                    2042 	.uleb128	0
      000592 00                    2043 	.uleb128	0
                                   2044 
                                   2045 	.area .debug_info (NOLOAD)
      0017EA 00 00 02 69           2046 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0017EE                       2047 Ldebug_info_start:
      0017EE 00 02                 2048 	.dw	2
      0017F0 00 00 04 EE           2049 	.dw	0,(Ldebug_abbrev)
      0017F4 04                    2050 	.db	4
      0017F5 01                    2051 	.uleb128	1
      0017F6 53 6F 75 72 63 65 2F  2052 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      00180F 00                    2053 	.db	0
      001810 00 00 14 D9           2054 	.dw	0,(Ldebug_line_start+-4)
      001814 01                    2055 	.db	1
      001815 53 44 43 43 20 76 65  2056 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      00182E 00                    2057 	.db	0
      00182F 02                    2058 	.uleb128	2
      001830 00 00 00 72           2059 	.dw	0,114
      001834 64 65 6C 61 79        2060 	.ascii "delay"
      001839 00                    2061 	.db	0
      00183A 00 00 8C A8           2062 	.dw	0,(_delay)
      00183E 00 00 8C B2           2063 	.dw	0,(XG$delay$0$0+1)
      001842 01                    2064 	.db	1
      001843 00 00 14 40           2065 	.dw	0,(Ldebug_loc_start+1476)
      001847 03                    2066 	.uleb128	3
      001848 00 00 8C A8           2067 	.dw	0,(Snixie$delay$0)
      00184C 04                    2068 	.uleb128	4
      00184D 06                    2069 	.db	6
      00184E 52                    2070 	.db	82
      00184F 93                    2071 	.db	147
      001850 01                    2072 	.uleb128	1
      001851 51                    2073 	.db	81
      001852 93                    2074 	.db	147
      001853 01                    2075 	.uleb128	1
      001854 69                    2076 	.ascii "i"
      001855 00                    2077 	.db	0
      001856 00 00 00 72           2078 	.dw	0,114
      00185A 00                    2079 	.uleb128	0
      00185B 00                    2080 	.uleb128	0
      00185C 05                    2081 	.uleb128	5
      00185D 69 6E 74              2082 	.ascii "int"
      001860 00                    2083 	.db	0
      001861 02                    2084 	.db	2
      001862 05                    2085 	.db	5
      001863 06                    2086 	.uleb128	6
      001864 4E 49 58 49 45 5F 49  2087 	.ascii "NIXIE_Init"
             6E 69 74
      00186E 00                    2088 	.db	0
      00186F 00 00 8C B2           2089 	.dw	0,(_NIXIE_Init)
      001873 00 00 8C F8           2090 	.dw	0,(XG$NIXIE_Init$0$0+1)
      001877 01                    2091 	.db	1
      001878 00 00 12 F4           2092 	.dw	0,(Ldebug_loc_start+1144)
      00187C 05                    2093 	.uleb128	5
      00187D 75 6E 73 69 67 6E 65  2094 	.ascii "unsigned int"
             64 20 69 6E 74
      001889 00                    2095 	.db	0
      00188A 02                    2096 	.db	2
      00188B 07                    2097 	.db	7
      00188C 07                    2098 	.uleb128	7
      00188D 00 00 01 45           2099 	.dw	0,325
      001891 4E 49 58 49 45 5F 44  2100 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      0018A2 00                    2101 	.db	0
      0018A3 00 00 8C F8           2102 	.dw	0,(_NIXIE_DisplayChar)
      0018A7 00 00 8D 8E           2103 	.dw	0,(XG$NIXIE_DisplayChar$0$0+1)
      0018AB 01                    2104 	.db	1
      0018AC 00 00 12 38           2105 	.dw	0,(Ldebug_loc_start+956)
      0018B0 00 00 00 92           2106 	.dw	0,146
      0018B4 08                    2107 	.uleb128	8
      0018B5 02                    2108 	.db	2
      0018B6 91                    2109 	.db	145
      0018B7 02                    2110 	.sleb128	2
      0018B8 74 75 62 65 4E 75 6D  2111 	.ascii "tubeNum"
      0018BF 00                    2112 	.db	0
      0018C0 00 00 01 45           2113 	.dw	0,325
      0018C4 09                    2114 	.uleb128	9
      0018C5 02                    2115 	.db	2
      0018C6 00 00 01 45           2116 	.dw	0,325
      0018CA 08                    2117 	.uleb128	8
      0018CB 02                    2118 	.db	2
      0018CC 91                    2119 	.db	145
      0018CD 03                    2120 	.sleb128	3
      0018CE 63 68 61 72 61 63 74  2121 	.ascii "character"
             65 72
      0018D7 00                    2122 	.db	0
      0018D8 00 00 00 DA           2123 	.dw	0,218
      0018DC 08                    2124 	.uleb128	8
      0018DD 02                    2125 	.db	2
      0018DE 91                    2126 	.db	145
      0018DF 05                    2127 	.sleb128	5
      0018E0 74 75 62 65 53 74 61  2128 	.ascii "tubeState"
             74 65
      0018E9 00                    2129 	.db	0
      0018EA 00 00 01 45           2130 	.dw	0,325
      0018EE 0A                    2131 	.uleb128	10
      0018EF 00 00 01 25           2132 	.dw	0,293
      0018F3 00 00 8D 13           2133 	.dw	0,(Snixie$NIXIE_DisplayChar$55)
      0018F7 00 00 8D 47           2134 	.dw	0,(Snixie$NIXIE_DisplayChar$64)
      0018FB 0B                    2135 	.uleb128	11
      0018FC 00 00 8D 19           2136 	.dw	0,(Snixie$NIXIE_DisplayChar$56)
      001900 00 00 8D 43           2137 	.dw	0,(Snixie$NIXIE_DisplayChar$62)
      001904 04                    2138 	.uleb128	4
      001905 02                    2139 	.db	2
      001906 91                    2140 	.db	145
      001907 7F                    2141 	.sleb128	-1
      001908 69                    2142 	.ascii "i"
      001909 00                    2143 	.db	0
      00190A 00 00 01 45           2144 	.dw	0,325
      00190E 00                    2145 	.uleb128	0
      00190F 04                    2146 	.uleb128	4
      001910 02                    2147 	.db	2
      001911 91                    2148 	.db	145
      001912 7D                    2149 	.sleb128	-3
      001913 74 6D 70              2150 	.ascii "tmp"
      001916 00                    2151 	.db	0
      001917 00 00 00 92           2152 	.dw	0,146
      00191B 04                    2153 	.uleb128	4
      00191C 06                    2154 	.db	6
      00191D 50                    2155 	.db	80
      00191E 93                    2156 	.db	147
      00191F 01                    2157 	.uleb128	1
      001920 51                    2158 	.db	81
      001921 93                    2159 	.db	147
      001922 01                    2160 	.uleb128	1
      001923 6F 75 74 70 75 74     2161 	.ascii "output"
      001929 00                    2162 	.db	0
      00192A 00 00 00 92           2163 	.dw	0,146
      00192E 00                    2164 	.uleb128	0
      00192F 05                    2165 	.uleb128	5
      001930 75 6E 73 69 67 6E 65  2166 	.ascii "unsigned char"
             64 20 63 68 61 72
      00193D 00                    2167 	.db	0
      00193E 01                    2168 	.db	1
      00193F 08                    2169 	.db	8
      001940 02                    2170 	.uleb128	2
      001941 00 00 02 53           2171 	.dw	0,595
      001945 4E 49 58 49 45 5F 44  2172 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      001956 00                    2173 	.db	0
      001957 00 00 8D 8E           2174 	.dw	0,(_NIXIE_DisplayTime)
      00195B 00 00 8F 63           2175 	.dw	0,(XG$NIXIE_DisplayTime$0$0+1)
      00195F 01                    2176 	.db	1
      001960 00 00 0E 7C           2177 	.dw	0,(Ldebug_loc_start)
      001964 08                    2178 	.uleb128	8
      001965 02                    2179 	.db	2
      001966 91                    2180 	.db	145
      001967 02                    2181 	.sleb128	2
      001968 68 6F 75 72           2182 	.ascii "hour"
      00196C 00                    2183 	.db	0
      00196D 00 00 01 45           2184 	.dw	0,325
      001971 08                    2185 	.uleb128	8
      001972 02                    2186 	.db	2
      001973 91                    2187 	.db	145
      001974 03                    2188 	.sleb128	3
      001975 6D 69 6E              2189 	.ascii "min"
      001978 00                    2190 	.db	0
      001979 00 00 01 45           2191 	.dw	0,325
      00197D 0A                    2192 	.uleb128	10
      00197E 00 00 01 B9           2193 	.dw	0,441
      001982 00 00 8E 5B           2194 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      001986 00 00 8F 60           2195 	.dw	0,(Snixie$NIXIE_DisplayTime$210)
      00198A 04                    2196 	.uleb128	4
      00198B 01                    2197 	.db	1
      00198C 51                    2198 	.db	81
      00198D 74 6D 70 31           2199 	.ascii "tmp1"
      001991 00                    2200 	.db	0
      001992 00 00 01 45           2201 	.dw	0,325
      001996 04                    2202 	.uleb128	4
      001997 01                    2203 	.db	1
      001998 50                    2204 	.db	80
      001999 74 6D 70 32           2205 	.ascii "tmp2"
      00199D 00                    2206 	.db	0
      00199E 00 00 01 45           2207 	.dw	0,325
      0019A2 00                    2208 	.uleb128	0
      0019A3 04                    2209 	.uleb128	4
      0019A4 02                    2210 	.db	2
      0019A5 91                    2211 	.db	145
      0019A6 77                    2212 	.sleb128	-9
      0019A7 74 75 62 65 31        2213 	.ascii "tube1"
      0019AC 00                    2214 	.db	0
      0019AD 00 00 00 92           2215 	.dw	0,146
      0019B1 04                    2216 	.uleb128	4
      0019B2 02                    2217 	.db	2
      0019B3 91                    2218 	.db	145
      0019B4 79                    2219 	.sleb128	-7
      0019B5 74 75 62 65 32        2220 	.ascii "tube2"
      0019BA 00                    2221 	.db	0
      0019BB 00 00 00 92           2222 	.dw	0,146
      0019BF 04                    2223 	.uleb128	4
      0019C0 02                    2224 	.db	2
      0019C1 91                    2225 	.db	145
      0019C2 7B                    2226 	.sleb128	-5
      0019C3 74 75 62 65 33        2227 	.ascii "tube3"
      0019C8 00                    2228 	.db	0
      0019C9 00 00 00 92           2229 	.dw	0,146
      0019CD 04                    2230 	.uleb128	4
      0019CE 02                    2231 	.db	2
      0019CF 91                    2232 	.db	145
      0019D0 7D                    2233 	.sleb128	-3
      0019D1 74 75 62 65 34        2234 	.ascii "tube4"
      0019D6 00                    2235 	.db	0
      0019D7 00 00 00 92           2236 	.dw	0,146
      0019DB 0C                    2237 	.uleb128	12
      0019DC 00 00 01 FE           2238 	.dw	0,510
      0019E0 02                    2239 	.db	2
      0019E1 00 00 01 45           2240 	.dw	0,325
      0019E5 0D                    2241 	.uleb128	13
      0019E6 01                    2242 	.db	1
      0019E7 00                    2243 	.uleb128	0
      0019E8 04                    2244 	.uleb128	4
      0019E9 02                    2245 	.db	2
      0019EA 91                    2246 	.db	145
      0019EB 6E                    2247 	.sleb128	-18
      0019EC 74 75 62 65 31 73     2248 	.ascii "tube1s"
      0019F2 00                    2249 	.db	0
      0019F3 00 00 01 F1           2250 	.dw	0,497
      0019F7 04                    2251 	.uleb128	4
      0019F8 02                    2252 	.db	2
      0019F9 91                    2253 	.db	145
      0019FA 70                    2254 	.sleb128	-16
      0019FB 74 75 62 65 32 73     2255 	.ascii "tube2s"
      001A01 00                    2256 	.db	0
      001A02 00 00 01 F1           2257 	.dw	0,497
      001A06 0C                    2258 	.uleb128	12
      001A07 00 00 02 29           2259 	.dw	0,553
      001A0B 03                    2260 	.db	3
      001A0C 00 00 01 45           2261 	.dw	0,325
      001A10 0D                    2262 	.uleb128	13
      001A11 02                    2263 	.db	2
      001A12 00                    2264 	.uleb128	0
      001A13 04                    2265 	.uleb128	4
      001A14 02                    2266 	.db	2
      001A15 91                    2267 	.db	145
      001A16 72                    2268 	.sleb128	-14
      001A17 74 75 62 65 33 73     2269 	.ascii "tube3s"
      001A1D 00                    2270 	.db	0
      001A1E 00 00 02 1C           2271 	.dw	0,540
      001A22 04                    2272 	.uleb128	4
      001A23 02                    2273 	.db	2
      001A24 91                    2274 	.db	145
      001A25 75                    2275 	.sleb128	-11
      001A26 74 75 62 65 34 73     2276 	.ascii "tube4s"
      001A2C 00                    2277 	.db	0
      001A2D 00 00 01 F1           2278 	.dw	0,497
      001A31 04                    2279 	.uleb128	4
      001A32 01                    2280 	.db	1
      001A33 51                    2281 	.db	81
      001A34 74 6D 70              2282 	.ascii "tmp"
      001A37 00                    2283 	.db	0
      001A38 00 00 01 45           2284 	.dw	0,325
      001A3C 00                    2285 	.uleb128	0
      001A3D 0E                    2286 	.uleb128	14
      001A3E 05                    2287 	.db	5
      001A3F 03                    2288 	.db	3
      001A40 00 00 00 28           2289 	.dw	0,(_tube_state)
      001A44 74 75 62 65 5F 73 74  2290 	.ascii "tube_state"
             61 74 65
      001A4E 00                    2291 	.db	0
      001A4F 01                    2292 	.db	1
      001A50 00 00 01 45           2293 	.dw	0,325
      001A54 00                    2294 	.uleb128	0
      001A55 00                    2295 	.uleb128	0
      001A56 00                    2296 	.uleb128	0
      001A57                       2297 Ldebug_info_end:
                                   2298 
                                   2299 	.area .debug_pubnames (NOLOAD)
      000574 00 00 00 62           2300 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000578                       2301 Ldebug_pubnames_start:
      000578 00 02                 2302 	.dw	2
      00057A 00 00 17 EA           2303 	.dw	0,(Ldebug_info_start-4)
      00057E 00 00 02 6D           2304 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000582 00 00 00 45           2305 	.dw	0,69
      000586 64 65 6C 61 79        2306 	.ascii "delay"
      00058B 00                    2307 	.db	0
      00058C 00 00 00 79           2308 	.dw	0,121
      000590 4E 49 58 49 45 5F 49  2309 	.ascii "NIXIE_Init"
             6E 69 74
      00059A 00                    2310 	.db	0
      00059B 00 00 00 A2           2311 	.dw	0,162
      00059F 4E 49 58 49 45 5F 44  2312 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      0005B0 00                    2313 	.db	0
      0005B1 00 00 01 56           2314 	.dw	0,342
      0005B5 4E 49 58 49 45 5F 44  2315 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      0005C6 00                    2316 	.db	0
      0005C7 00 00 02 53           2317 	.dw	0,595
      0005CB 74 75 62 65 5F 73 74  2318 	.ascii "tube_state"
             61 74 65
      0005D5 00                    2319 	.db	0
      0005D6 00 00 00 00           2320 	.dw	0,0
      0005DA                       2321 Ldebug_pubnames_end:
                                   2322 
                                   2323 	.area .debug_frame (NOLOAD)
      000EA3 00 00                 2324 	.dw	0
      000EA5 00 0E                 2325 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000EA7                       2326 Ldebug_CIE0_start:
      000EA7 FF FF                 2327 	.dw	0xffff
      000EA9 FF FF                 2328 	.dw	0xffff
      000EAB 01                    2329 	.db	1
      000EAC 00                    2330 	.db	0
      000EAD 01                    2331 	.uleb128	1
      000EAE 7F                    2332 	.sleb128	-1
      000EAF 09                    2333 	.db	9
      000EB0 0C                    2334 	.db	12
      000EB1 08                    2335 	.uleb128	8
      000EB2 02                    2336 	.uleb128	2
      000EB3 89                    2337 	.db	137
      000EB4 01                    2338 	.uleb128	1
      000EB5                       2339 Ldebug_CIE0_end:
      000EB5 00 00 02 35           2340 	.dw	0,565
      000EB9 00 00 0E A3           2341 	.dw	0,(Ldebug_CIE0_start-4)
      000EBD 00 00 8D 8E           2342 	.dw	0,(Snixie$NIXIE_DisplayTime$82)	;initial loc
      000EC1 00 00 01 D5           2343 	.dw	0,Snixie$NIXIE_DisplayTime$214-Snixie$NIXIE_DisplayTime$82
      000EC5 01                    2344 	.db	1
      000EC6 00 00 8D 8E           2345 	.dw	0,(Snixie$NIXIE_DisplayTime$82)
      000ECA 0E                    2346 	.db	14
      000ECB 02                    2347 	.uleb128	2
      000ECC 01                    2348 	.db	1
      000ECD 00 00 8D 90           2349 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      000ED1 0E                    2350 	.db	14
      000ED2 14                    2351 	.uleb128	20
      000ED3 01                    2352 	.db	1
      000ED4 00 00 8D B9           2353 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      000ED8 0E                    2354 	.db	14
      000ED9 15                    2355 	.uleb128	21
      000EDA 01                    2356 	.db	1
      000EDB 00 00 8D BB           2357 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      000EDF 0E                    2358 	.db	14
      000EE0 16                    2359 	.uleb128	22
      000EE1 01                    2360 	.db	1
      000EE2 00 00 8D BE           2361 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      000EE6 0E                    2362 	.db	14
      000EE7 18                    2363 	.uleb128	24
      000EE8 01                    2364 	.db	1
      000EE9 00 00 8D C3           2365 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      000EED 0E                    2366 	.db	14
      000EEE 14                    2367 	.uleb128	20
      000EEF 01                    2368 	.db	1
      000EF0 00 00 8D C6           2369 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      000EF4 0E                    2370 	.db	14
      000EF5 16                    2371 	.uleb128	22
      000EF6 01                    2372 	.db	1
      000EF7 00 00 8D C9           2373 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      000EFB 0E                    2374 	.db	14
      000EFC 14                    2375 	.uleb128	20
      000EFD 01                    2376 	.db	1
      000EFE 00 00 8D CD           2377 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      000F02 0E                    2378 	.db	14
      000F03 15                    2379 	.uleb128	21
      000F04 01                    2380 	.db	1
      000F05 00 00 8D CF           2381 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      000F09 0E                    2382 	.db	14
      000F0A 16                    2383 	.uleb128	22
      000F0B 01                    2384 	.db	1
      000F0C 00 00 8D D2           2385 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      000F10 0E                    2386 	.db	14
      000F11 18                    2387 	.uleb128	24
      000F12 01                    2388 	.db	1
      000F13 00 00 8D D7           2389 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      000F17 0E                    2390 	.db	14
      000F18 14                    2391 	.uleb128	20
      000F19 01                    2392 	.db	1
      000F1A 00 00 8D DA           2393 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      000F1E 0E                    2394 	.db	14
      000F1F 16                    2395 	.uleb128	22
      000F20 01                    2396 	.db	1
      000F21 00 00 8D DD           2397 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      000F25 0E                    2398 	.db	14
      000F26 14                    2399 	.uleb128	20
      000F27 01                    2400 	.db	1
      000F28 00 00 8D E7           2401 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      000F2C 0E                    2402 	.db	14
      000F2D 15                    2403 	.uleb128	21
      000F2E 01                    2404 	.db	1
      000F2F 00 00 8D E9           2405 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      000F33 0E                    2406 	.db	14
      000F34 16                    2407 	.uleb128	22
      000F35 01                    2408 	.db	1
      000F36 00 00 8D EC           2409 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      000F3A 0E                    2410 	.db	14
      000F3B 18                    2411 	.uleb128	24
      000F3C 01                    2412 	.db	1
      000F3D 00 00 8D F1           2413 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      000F41 0E                    2414 	.db	14
      000F42 14                    2415 	.uleb128	20
      000F43 01                    2416 	.db	1
      000F44 00 00 8D F4           2417 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      000F48 0E                    2418 	.db	14
      000F49 16                    2419 	.uleb128	22
      000F4A 01                    2420 	.db	1
      000F4B 00 00 8D F7           2421 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      000F4F 0E                    2422 	.db	14
      000F50 14                    2423 	.uleb128	20
      000F51 01                    2424 	.db	1
      000F52 00 00 8D FB           2425 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      000F56 0E                    2426 	.db	14
      000F57 15                    2427 	.uleb128	21
      000F58 01                    2428 	.db	1
      000F59 00 00 8D FD           2429 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      000F5D 0E                    2430 	.db	14
      000F5E 16                    2431 	.uleb128	22
      000F5F 01                    2432 	.db	1
      000F60 00 00 8E 00           2433 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      000F64 0E                    2434 	.db	14
      000F65 18                    2435 	.uleb128	24
      000F66 01                    2436 	.db	1
      000F67 00 00 8E 05           2437 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      000F6B 0E                    2438 	.db	14
      000F6C 14                    2439 	.uleb128	20
      000F6D 01                    2440 	.db	1
      000F6E 00 00 8E 08           2441 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      000F72 0E                    2442 	.db	14
      000F73 16                    2443 	.uleb128	22
      000F74 01                    2444 	.db	1
      000F75 00 00 8E 0B           2445 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      000F79 0E                    2446 	.db	14
      000F7A 14                    2447 	.uleb128	20
      000F7B 01                    2448 	.db	1
      000F7C 00 00 8E 10           2449 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      000F80 0E                    2450 	.db	14
      000F81 15                    2451 	.uleb128	21
      000F82 01                    2452 	.db	1
      000F83 00 00 8E 14           2453 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      000F87 0E                    2454 	.db	14
      000F88 17                    2455 	.uleb128	23
      000F89 01                    2456 	.db	1
      000F8A 00 00 8E 16           2457 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      000F8E 0E                    2458 	.db	14
      000F8F 18                    2459 	.uleb128	24
      000F90 01                    2460 	.db	1
      000F91 00 00 8E 1B           2461 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      000F95 0E                    2462 	.db	14
      000F96 14                    2463 	.uleb128	20
      000F97 01                    2464 	.db	1
      000F98 00 00 8E 20           2465 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      000F9C 0E                    2466 	.db	14
      000F9D 15                    2467 	.uleb128	21
      000F9E 01                    2468 	.db	1
      000F9F 00 00 8E 25           2469 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      000FA3 0E                    2470 	.db	14
      000FA4 17                    2471 	.uleb128	23
      000FA5 01                    2472 	.db	1
      000FA6 00 00 8E 27           2473 	.dw	0,(Snixie$NIXIE_DisplayTime$125)
      000FAA 0E                    2474 	.db	14
      000FAB 18                    2475 	.uleb128	24
      000FAC 01                    2476 	.db	1
      000FAD 00 00 8E 2C           2477 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      000FB1 0E                    2478 	.db	14
      000FB2 14                    2479 	.uleb128	20
      000FB3 01                    2480 	.db	1
      000FB4 00 00 8E 31           2481 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      000FB8 0E                    2482 	.db	14
      000FB9 15                    2483 	.uleb128	21
      000FBA 01                    2484 	.db	1
      000FBB 00 00 8E 36           2485 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      000FBF 0E                    2486 	.db	14
      000FC0 17                    2487 	.uleb128	23
      000FC1 01                    2488 	.db	1
      000FC2 00 00 8E 38           2489 	.dw	0,(Snixie$NIXIE_DisplayTime$130)
      000FC6 0E                    2490 	.db	14
      000FC7 18                    2491 	.uleb128	24
      000FC8 01                    2492 	.db	1
      000FC9 00 00 8E 3D           2493 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      000FCD 0E                    2494 	.db	14
      000FCE 14                    2495 	.uleb128	20
      000FCF 01                    2496 	.db	1
      000FD0 00 00 8E 42           2497 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      000FD4 0E                    2498 	.db	14
      000FD5 15                    2499 	.uleb128	21
      000FD6 01                    2500 	.db	1
      000FD7 00 00 8E 47           2501 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      000FDB 0E                    2502 	.db	14
      000FDC 17                    2503 	.uleb128	23
      000FDD 01                    2504 	.db	1
      000FDE 00 00 8E 49           2505 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      000FE2 0E                    2506 	.db	14
      000FE3 18                    2507 	.uleb128	24
      000FE4 01                    2508 	.db	1
      000FE5 00 00 8E 4E           2509 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      000FE9 0E                    2510 	.db	14
      000FEA 14                    2511 	.uleb128	20
      000FEB 01                    2512 	.db	1
      000FEC 00 00 8E 52           2513 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      000FF0 0E                    2514 	.db	14
      000FF1 15                    2515 	.uleb128	21
      000FF2 01                    2516 	.db	1
      000FF3 00 00 8E 54           2517 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      000FF7 0E                    2518 	.db	14
      000FF8 16                    2519 	.uleb128	22
      000FF9 01                    2520 	.db	1
      000FFA 00 00 8E 56           2521 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      000FFE 0E                    2522 	.db	14
      000FFF 17                    2523 	.uleb128	23
      001000 01                    2524 	.db	1
      001001 00 00 8E 5B           2525 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      001005 0E                    2526 	.db	14
      001006 14                    2527 	.uleb128	20
      001007 01                    2528 	.db	1
      001008 00 00 8E 6D           2529 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      00100C 0E                    2530 	.db	14
      00100D 16                    2531 	.uleb128	22
      00100E 01                    2532 	.db	1
      00100F 00 00 8E 70           2533 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      001013 0E                    2534 	.db	14
      001014 14                    2535 	.uleb128	20
      001015 01                    2536 	.db	1
      001016 00 00 8E 71           2537 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      00101A 0E                    2538 	.db	14
      00101B 15                    2539 	.uleb128	21
      00101C 01                    2540 	.db	1
      00101D 00 00 8E 75           2541 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      001021 0E                    2542 	.db	14
      001022 14                    2543 	.uleb128	20
      001023 01                    2544 	.db	1
      001024 00 00 8E 77           2545 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      001028 0E                    2546 	.db	14
      001029 15                    2547 	.uleb128	21
      00102A 01                    2548 	.db	1
      00102B 00 00 8E 7C           2549 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      00102F 0E                    2550 	.db	14
      001030 14                    2551 	.uleb128	20
      001031 01                    2552 	.db	1
      001032 00 00 8E 9E           2553 	.dw	0,(Snixie$NIXIE_DisplayTime$160)
      001036 0E                    2554 	.db	14
      001037 15                    2555 	.uleb128	21
      001038 01                    2556 	.db	1
      001039 00 00 8E A2           2557 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      00103D 0E                    2558 	.db	14
      00103E 14                    2559 	.uleb128	20
      00103F 01                    2560 	.db	1
      001040 00 00 8E A4           2561 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      001044 0E                    2562 	.db	14
      001045 15                    2563 	.uleb128	21
      001046 01                    2564 	.db	1
      001047 00 00 8E A9           2565 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      00104B 0E                    2566 	.db	14
      00104C 14                    2567 	.uleb128	20
      00104D 01                    2568 	.db	1
      00104E 00 00 8E CA           2569 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      001052 0E                    2570 	.db	14
      001053 15                    2571 	.uleb128	21
      001054 01                    2572 	.db	1
      001055 00 00 8E CE           2573 	.dw	0,(Snixie$NIXIE_DisplayTime$170)
      001059 0E                    2574 	.db	14
      00105A 14                    2575 	.uleb128	20
      00105B 01                    2576 	.db	1
      00105C 00 00 8E D0           2577 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      001060 0E                    2578 	.db	14
      001061 15                    2579 	.uleb128	21
      001062 01                    2580 	.db	1
      001063 00 00 8E D5           2581 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      001067 0E                    2582 	.db	14
      001068 14                    2583 	.uleb128	20
      001069 01                    2584 	.db	1
      00106A 00 00 8E EA           2585 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      00106E 0E                    2586 	.db	14
      00106F 16                    2587 	.uleb128	22
      001070 01                    2588 	.db	1
      001071 00 00 8E ED           2589 	.dw	0,(Snixie$NIXIE_DisplayTime$178)
      001075 0E                    2590 	.db	14
      001076 14                    2591 	.uleb128	20
      001077 01                    2592 	.db	1
      001078 00 00 8E EE           2593 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      00107C 0E                    2594 	.db	14
      00107D 15                    2595 	.uleb128	21
      00107E 01                    2596 	.db	1
      00107F 00 00 8E F2           2597 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      001083 0E                    2598 	.db	14
      001084 14                    2599 	.uleb128	20
      001085 01                    2600 	.db	1
      001086 00 00 8E F4           2601 	.dw	0,(Snixie$NIXIE_DisplayTime$183)
      00108A 0E                    2602 	.db	14
      00108B 15                    2603 	.uleb128	21
      00108C 01                    2604 	.db	1
      00108D 00 00 8E F9           2605 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      001091 0E                    2606 	.db	14
      001092 14                    2607 	.uleb128	20
      001093 01                    2608 	.db	1
      001094 00 00 8F 1B           2609 	.dw	0,(Snixie$NIXIE_DisplayTime$191)
      001098 0E                    2610 	.db	14
      001099 15                    2611 	.uleb128	21
      00109A 01                    2612 	.db	1
      00109B 00 00 8F 1F           2613 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      00109F 0E                    2614 	.db	14
      0010A0 14                    2615 	.uleb128	20
      0010A1 01                    2616 	.db	1
      0010A2 00 00 8F 21           2617 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      0010A6 0E                    2618 	.db	14
      0010A7 15                    2619 	.uleb128	21
      0010A8 01                    2620 	.db	1
      0010A9 00 00 8F 26           2621 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      0010AD 0E                    2622 	.db	14
      0010AE 14                    2623 	.uleb128	20
      0010AF 01                    2624 	.db	1
      0010B0 00 00 8F 47           2625 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      0010B4 0E                    2626 	.db	14
      0010B5 15                    2627 	.uleb128	21
      0010B6 01                    2628 	.db	1
      0010B7 00 00 8F 4B           2629 	.dw	0,(Snixie$NIXIE_DisplayTime$201)
      0010BB 0E                    2630 	.db	14
      0010BC 14                    2631 	.uleb128	20
      0010BD 01                    2632 	.db	1
      0010BE 00 00 8F 4D           2633 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      0010C2 0E                    2634 	.db	14
      0010C3 15                    2635 	.uleb128	21
      0010C4 01                    2636 	.db	1
      0010C5 00 00 8F 52           2637 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      0010C9 0E                    2638 	.db	14
      0010CA 14                    2639 	.uleb128	20
      0010CB 01                    2640 	.db	1
      0010CC 00 00 8F 57           2641 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      0010D0 0E                    2642 	.db	14
      0010D1 15                    2643 	.uleb128	21
      0010D2 01                    2644 	.db	1
      0010D3 00 00 8F 59           2645 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      0010D7 0E                    2646 	.db	14
      0010D8 16                    2647 	.uleb128	22
      0010D9 01                    2648 	.db	1
      0010DA 00 00 8F 5B           2649 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      0010DE 0E                    2650 	.db	14
      0010DF 17                    2651 	.uleb128	23
      0010E0 01                    2652 	.db	1
      0010E1 00 00 8F 60           2653 	.dw	0,(Snixie$NIXIE_DisplayTime$209)
      0010E5 0E                    2654 	.db	14
      0010E6 14                    2655 	.uleb128	20
      0010E7 01                    2656 	.db	1
      0010E8 00 00 8F 62           2657 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      0010EC 0E                    2658 	.db	14
      0010ED 02                    2659 	.uleb128	2
                                   2660 
                                   2661 	.area .debug_frame (NOLOAD)
      0010EE 00 00                 2662 	.dw	0
      0010F0 00 0E                 2663 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0010F2                       2664 Ldebug_CIE1_start:
      0010F2 FF FF                 2665 	.dw	0xffff
      0010F4 FF FF                 2666 	.dw	0xffff
      0010F6 01                    2667 	.db	1
      0010F7 00                    2668 	.db	0
      0010F8 01                    2669 	.uleb128	1
      0010F9 7F                    2670 	.sleb128	-1
      0010FA 09                    2671 	.db	9
      0010FB 0C                    2672 	.db	12
      0010FC 08                    2673 	.uleb128	8
      0010FD 02                    2674 	.uleb128	2
      0010FE 89                    2675 	.db	137
      0010FF 01                    2676 	.uleb128	1
      001100                       2677 Ldebug_CIE1_end:
      001100 00 00 00 75           2678 	.dw	0,117
      001104 00 00 10 EE           2679 	.dw	0,(Ldebug_CIE1_start-4)
      001108 00 00 8C F8           2680 	.dw	0,(Snixie$NIXIE_DisplayChar$45)	;initial loc
      00110C 00 00 00 96           2681 	.dw	0,Snixie$NIXIE_DisplayChar$80-Snixie$NIXIE_DisplayChar$45
      001110 01                    2682 	.db	1
      001111 00 00 8C F8           2683 	.dw	0,(Snixie$NIXIE_DisplayChar$45)
      001115 0E                    2684 	.db	14
      001116 02                    2685 	.uleb128	2
      001117 01                    2686 	.db	1
      001118 00 00 8C FA           2687 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      00111C 0E                    2688 	.db	14
      00111D 07                    2689 	.uleb128	7
      00111E 01                    2690 	.db	1
      00111F 00 00 8C FF           2691 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      001123 0E                    2692 	.db	14
      001124 08                    2693 	.uleb128	8
      001125 01                    2694 	.db	1
      001126 00 00 8D 01           2695 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      00112A 0E                    2696 	.db	14
      00112B 09                    2697 	.uleb128	9
      00112C 01                    2698 	.db	1
      00112D 00 00 8D 04           2699 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      001131 0E                    2700 	.db	14
      001132 0B                    2701 	.uleb128	11
      001133 01                    2702 	.db	1
      001134 00 00 8D 09           2703 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      001138 0E                    2704 	.db	14
      001139 07                    2705 	.uleb128	7
      00113A 01                    2706 	.db	1
      00113B 00 00 8D 21           2707 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      00113F 0E                    2708 	.db	14
      001140 09                    2709 	.uleb128	9
      001141 01                    2710 	.db	1
      001142 00 00 8D 24           2711 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      001146 0E                    2712 	.db	14
      001147 0B                    2713 	.uleb128	11
      001148 01                    2714 	.db	1
      001149 00 00 8D 29           2715 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      00114D 0E                    2716 	.db	14
      00114E 07                    2717 	.uleb128	7
      00114F 01                    2718 	.db	1
      001150 00 00 8D 49           2719 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      001154 0E                    2720 	.db	14
      001155 08                    2721 	.uleb128	8
      001156 01                    2722 	.db	1
      001157 00 00 8D 4B           2723 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      00115B 0E                    2724 	.db	14
      00115C 09                    2725 	.uleb128	9
      00115D 01                    2726 	.db	1
      00115E 00 00 8D 4E           2727 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      001162 0E                    2728 	.db	14
      001163 0B                    2729 	.uleb128	11
      001164 01                    2730 	.db	1
      001165 00 00 8D 53           2731 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      001169 0E                    2732 	.db	14
      00116A 07                    2733 	.uleb128	7
      00116B 01                    2734 	.db	1
      00116C 00 00 8D 65           2735 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      001170 0E                    2736 	.db	14
      001171 07                    2737 	.uleb128	7
      001172 01                    2738 	.db	1
      001173 00 00 8D 8D           2739 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      001177 0E                    2740 	.db	14
      001178 02                    2741 	.uleb128	2
                                   2742 
                                   2743 	.area .debug_frame (NOLOAD)
      001179 00 00                 2744 	.dw	0
      00117B 00 0E                 2745 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00117D                       2746 Ldebug_CIE2_start:
      00117D FF FF                 2747 	.dw	0xffff
      00117F FF FF                 2748 	.dw	0xffff
      001181 01                    2749 	.db	1
      001182 00                    2750 	.db	0
      001183 01                    2751 	.uleb128	1
      001184 7F                    2752 	.sleb128	-1
      001185 09                    2753 	.db	9
      001186 0C                    2754 	.db	12
      001187 08                    2755 	.uleb128	8
      001188 02                    2756 	.uleb128	2
      001189 89                    2757 	.db	137
      00118A 01                    2758 	.uleb128	1
      00118B                       2759 Ldebug_CIE2_end:
      00118B 00 00 00 C9           2760 	.dw	0,201
      00118F 00 00 11 79           2761 	.dw	0,(Ldebug_CIE2_start-4)
      001193 00 00 8C B2           2762 	.dw	0,(Snixie$NIXIE_Init$8)	;initial loc
      001197 00 00 00 46           2763 	.dw	0,Snixie$NIXIE_Init$43-Snixie$NIXIE_Init$8
      00119B 01                    2764 	.db	1
      00119C 00 00 8C B2           2765 	.dw	0,(Snixie$NIXIE_Init$8)
      0011A0 0E                    2766 	.db	14
      0011A1 02                    2767 	.uleb128	2
      0011A2 01                    2768 	.db	1
      0011A3 00 00 8C B4           2769 	.dw	0,(Snixie$NIXIE_Init$10)
      0011A7 0E                    2770 	.db	14
      0011A8 03                    2771 	.uleb128	3
      0011A9 01                    2772 	.db	1
      0011AA 00 00 8C B6           2773 	.dw	0,(Snixie$NIXIE_Init$11)
      0011AE 0E                    2774 	.db	14
      0011AF 04                    2775 	.uleb128	4
      0011B0 01                    2776 	.db	1
      0011B1 00 00 8C B8           2777 	.dw	0,(Snixie$NIXIE_Init$12)
      0011B5 0E                    2778 	.db	14
      0011B6 05                    2779 	.uleb128	5
      0011B7 01                    2780 	.db	1
      0011B8 00 00 8C BA           2781 	.dw	0,(Snixie$NIXIE_Init$13)
      0011BC 0E                    2782 	.db	14
      0011BD 06                    2783 	.uleb128	6
      0011BE 01                    2784 	.db	1
      0011BF 00 00 8C BF           2785 	.dw	0,(Snixie$NIXIE_Init$14)
      0011C3 0E                    2786 	.db	14
      0011C4 02                    2787 	.uleb128	2
      0011C5 01                    2788 	.db	1
      0011C6 00 00 8C C1           2789 	.dw	0,(Snixie$NIXIE_Init$16)
      0011CA 0E                    2790 	.db	14
      0011CB 03                    2791 	.uleb128	3
      0011CC 01                    2792 	.db	1
      0011CD 00 00 8C C3           2793 	.dw	0,(Snixie$NIXIE_Init$17)
      0011D1 0E                    2794 	.db	14
      0011D2 04                    2795 	.uleb128	4
      0011D3 01                    2796 	.db	1
      0011D4 00 00 8C C5           2797 	.dw	0,(Snixie$NIXIE_Init$18)
      0011D8 0E                    2798 	.db	14
      0011D9 05                    2799 	.uleb128	5
      0011DA 01                    2800 	.db	1
      0011DB 00 00 8C C7           2801 	.dw	0,(Snixie$NIXIE_Init$19)
      0011DF 0E                    2802 	.db	14
      0011E0 06                    2803 	.uleb128	6
      0011E1 01                    2804 	.db	1
      0011E2 00 00 8C CC           2805 	.dw	0,(Snixie$NIXIE_Init$20)
      0011E6 0E                    2806 	.db	14
      0011E7 02                    2807 	.uleb128	2
      0011E8 01                    2808 	.db	1
      0011E9 00 00 8C CE           2809 	.dw	0,(Snixie$NIXIE_Init$22)
      0011ED 0E                    2810 	.db	14
      0011EE 03                    2811 	.uleb128	3
      0011EF 01                    2812 	.db	1
      0011F0 00 00 8C D0           2813 	.dw	0,(Snixie$NIXIE_Init$23)
      0011F4 0E                    2814 	.db	14
      0011F5 04                    2815 	.uleb128	4
      0011F6 01                    2816 	.db	1
      0011F7 00 00 8C D2           2817 	.dw	0,(Snixie$NIXIE_Init$24)
      0011FB 0E                    2818 	.db	14
      0011FC 05                    2819 	.uleb128	5
      0011FD 01                    2820 	.db	1
      0011FE 00 00 8C D4           2821 	.dw	0,(Snixie$NIXIE_Init$25)
      001202 0E                    2822 	.db	14
      001203 06                    2823 	.uleb128	6
      001204 01                    2824 	.db	1
      001205 00 00 8C D9           2825 	.dw	0,(Snixie$NIXIE_Init$26)
      001209 0E                    2826 	.db	14
      00120A 02                    2827 	.uleb128	2
      00120B 01                    2828 	.db	1
      00120C 00 00 8C DE           2829 	.dw	0,(Snixie$NIXIE_Init$29)
      001210 0E                    2830 	.db	14
      001211 03                    2831 	.uleb128	3
      001212 01                    2832 	.db	1
      001213 00 00 8C E0           2833 	.dw	0,(Snixie$NIXIE_Init$30)
      001217 0E                    2834 	.db	14
      001218 04                    2835 	.uleb128	4
      001219 01                    2836 	.db	1
      00121A 00 00 8C E2           2837 	.dw	0,(Snixie$NIXIE_Init$31)
      00121E 0E                    2838 	.db	14
      00121F 05                    2839 	.uleb128	5
      001220 01                    2840 	.db	1
      001221 00 00 8C E4           2841 	.dw	0,(Snixie$NIXIE_Init$32)
      001225 0E                    2842 	.db	14
      001226 06                    2843 	.uleb128	6
      001227 01                    2844 	.db	1
      001228 00 00 8C E6           2845 	.dw	0,(Snixie$NIXIE_Init$33)
      00122C 0E                    2846 	.db	14
      00122D 07                    2847 	.uleb128	7
      00122E 01                    2848 	.db	1
      00122F 00 00 8C E8           2849 	.dw	0,(Snixie$NIXIE_Init$34)
      001233 0E                    2850 	.db	14
      001234 08                    2851 	.uleb128	8
      001235 01                    2852 	.db	1
      001236 00 00 8C EA           2853 	.dw	0,(Snixie$NIXIE_Init$35)
      00123A 0E                    2854 	.db	14
      00123B 09                    2855 	.uleb128	9
      00123C 01                    2856 	.db	1
      00123D 00 00 8C EC           2857 	.dw	0,(Snixie$NIXIE_Init$36)
      001241 0E                    2858 	.db	14
      001242 0A                    2859 	.uleb128	10
      001243 01                    2860 	.db	1
      001244 00 00 8C F1           2861 	.dw	0,(Snixie$NIXIE_Init$37)
      001248 0E                    2862 	.db	14
      001249 02                    2863 	.uleb128	2
      00124A 01                    2864 	.db	1
      00124B 00 00 8C F3           2865 	.dw	0,(Snixie$NIXIE_Init$39)
      00124F 0E                    2866 	.db	14
      001250 03                    2867 	.uleb128	3
      001251 01                    2868 	.db	1
      001252 00 00 8C F7           2869 	.dw	0,(Snixie$NIXIE_Init$40)
      001256 0E                    2870 	.db	14
      001257 02                    2871 	.uleb128	2
                                   2872 
                                   2873 	.area .debug_frame (NOLOAD)
      001258 00 00                 2874 	.dw	0
      00125A 00 0E                 2875 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00125C                       2876 Ldebug_CIE3_start:
      00125C FF FF                 2877 	.dw	0xffff
      00125E FF FF                 2878 	.dw	0xffff
      001260 01                    2879 	.db	1
      001261 00                    2880 	.db	0
      001262 01                    2881 	.uleb128	1
      001263 7F                    2882 	.sleb128	-1
      001264 09                    2883 	.db	9
      001265 0C                    2884 	.db	12
      001266 08                    2885 	.uleb128	8
      001267 02                    2886 	.uleb128	2
      001268 89                    2887 	.db	137
      001269 01                    2888 	.uleb128	1
      00126A                       2889 Ldebug_CIE3_end:
      00126A 00 00 00 13           2890 	.dw	0,19
      00126E 00 00 12 58           2891 	.dw	0,(Ldebug_CIE3_start-4)
      001272 00 00 8C A8           2892 	.dw	0,(Snixie$delay$2)	;initial loc
      001276 00 00 00 0A           2893 	.dw	0,Snixie$delay$6-Snixie$delay$2
      00127A 01                    2894 	.db	1
      00127B 00 00 8C A8           2895 	.dw	0,(Snixie$delay$2)
      00127F 0E                    2896 	.db	14
      001280 02                    2897 	.uleb128	2
