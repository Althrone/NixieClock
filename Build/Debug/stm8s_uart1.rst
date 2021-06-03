                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_uart1
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLK_GetClockFreq
                                     12 	.globl _UART1_DeInit
                                     13 	.globl _UART1_Init
                                     14 	.globl _UART1_Cmd
                                     15 	.globl _UART1_ITConfig
                                     16 	.globl _UART1_ReceiveData8
                                     17 	.globl _UART1_SendData8
                                     18 	.globl _UART1_GetFlagStatus
                                     19 	.globl _UART1_GetITStatus
                                     20 	.globl _UART1_ClearITPendingBit
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	Sstm8s_uart1$UART1_DeInit$0 ==.
                                     59 ;	Source/Std_Lib/Src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     60 ;	-----------------------------------------
                                     61 ;	 function UART1_DeInit
                                     62 ;	-----------------------------------------
      00825D                         63 _UART1_DeInit:
                           000000    64 	Sstm8s_uart1$UART1_DeInit$1 ==.
                           000000    65 	Sstm8s_uart1$UART1_DeInit$2 ==.
                                     66 ;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
      00825D C6 52 30         [ 1]   67 	ld	a, 0x5230
                           000003    68 	Sstm8s_uart1$UART1_DeInit$3 ==.
                                     69 ;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
      008260 C6 52 31         [ 1]   70 	ld	a, 0x5231
                           000006    71 	Sstm8s_uart1$UART1_DeInit$4 ==.
                                     72 ;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      008263 35 00 52 33      [ 1]   73 	mov	0x5233+0, #0x00
                           00000A    74 	Sstm8s_uart1$UART1_DeInit$5 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      008267 35 00 52 32      [ 1]   76 	mov	0x5232+0, #0x00
                           00000E    77 	Sstm8s_uart1$UART1_DeInit$6 ==.
                                     78 ;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      00826B 35 00 52 34      [ 1]   79 	mov	0x5234+0, #0x00
                           000012    80 	Sstm8s_uart1$UART1_DeInit$7 ==.
                                     81 ;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      00826F 35 00 52 35      [ 1]   82 	mov	0x5235+0, #0x00
                           000016    83 	Sstm8s_uart1$UART1_DeInit$8 ==.
                                     84 ;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      008273 35 00 52 36      [ 1]   85 	mov	0x5236+0, #0x00
                           00001A    86 	Sstm8s_uart1$UART1_DeInit$9 ==.
                                     87 ;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      008277 35 00 52 37      [ 1]   88 	mov	0x5237+0, #0x00
                           00001E    89 	Sstm8s_uart1$UART1_DeInit$10 ==.
                                     90 ;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      00827B 35 00 52 38      [ 1]   91 	mov	0x5238+0, #0x00
                           000022    92 	Sstm8s_uart1$UART1_DeInit$11 ==.
                                     93 ;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      00827F 35 00 52 39      [ 1]   94 	mov	0x5239+0, #0x00
                           000026    95 	Sstm8s_uart1$UART1_DeInit$12 ==.
                                     96 ;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      008283 35 00 52 3A      [ 1]   97 	mov	0x523a+0, #0x00
                           00002A    98 	Sstm8s_uart1$UART1_DeInit$13 ==.
                                     99 ;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
                           00002A   100 	Sstm8s_uart1$UART1_DeInit$14 ==.
                           00002A   101 	XG$UART1_DeInit$0$0 ==.
      008287 81               [ 4]  102 	ret
                           00002B   103 	Sstm8s_uart1$UART1_DeInit$15 ==.
                           00002B   104 	Sstm8s_uart1$UART1_Init$16 ==.
                                    105 ;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    106 ;	-----------------------------------------
                                    107 ;	 function UART1_Init
                                    108 ;	-----------------------------------------
      008288                        109 _UART1_Init:
                           00002B   110 	Sstm8s_uart1$UART1_Init$17 ==.
      008288 52 11            [ 2]  111 	sub	sp, #17
                           00002D   112 	Sstm8s_uart1$UART1_Init$18 ==.
                           00002D   113 	Sstm8s_uart1$UART1_Init$19 ==.
                                    114 ;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      00828A 72 19 52 34      [ 1]  115 	bres	21044, #4
                           000031   116 	Sstm8s_uart1$UART1_Init$20 ==.
                                    117 ;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      00828E C6 52 34         [ 1]  118 	ld	a, 0x5234
      008291 1A 18            [ 1]  119 	or	a, (0x18, sp)
      008293 C7 52 34         [ 1]  120 	ld	0x5234, a
                           000039   121 	Sstm8s_uart1$UART1_Init$21 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008296 C6 52 36         [ 1]  123 	ld	a, 0x5236
      008299 A4 CF            [ 1]  124 	and	a, #0xcf
      00829B C7 52 36         [ 1]  125 	ld	0x5236, a
                           000041   126 	Sstm8s_uart1$UART1_Init$22 ==.
                                    127 ;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      00829E C6 52 36         [ 1]  128 	ld	a, 0x5236
      0082A1 1A 19            [ 1]  129 	or	a, (0x19, sp)
      0082A3 C7 52 36         [ 1]  130 	ld	0x5236, a
                           000049   131 	Sstm8s_uart1$UART1_Init$23 ==.
                                    132 ;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      0082A6 C6 52 34         [ 1]  133 	ld	a, 0x5234
      0082A9 A4 F9            [ 1]  134 	and	a, #0xf9
      0082AB C7 52 34         [ 1]  135 	ld	0x5234, a
                           000051   136 	Sstm8s_uart1$UART1_Init$24 ==.
                                    137 ;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      0082AE C6 52 34         [ 1]  138 	ld	a, 0x5234
      0082B1 1A 1A            [ 1]  139 	or	a, (0x1a, sp)
      0082B3 C7 52 34         [ 1]  140 	ld	0x5234, a
                           000059   141 	Sstm8s_uart1$UART1_Init$25 ==.
                                    142 ;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0082B6 C6 52 32         [ 1]  143 	ld	a, 0x5232
      0082B9 35 00 52 32      [ 1]  144 	mov	0x5232+0, #0x00
                           000060   145 	Sstm8s_uart1$UART1_Init$26 ==.
                                    146 ;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0082BD C6 52 33         [ 1]  147 	ld	a, 0x5233
      0082C0 A4 0F            [ 1]  148 	and	a, #0x0f
      0082C2 C7 52 33         [ 1]  149 	ld	0x5233, a
                           000068   150 	Sstm8s_uart1$UART1_Init$27 ==.
                                    151 ;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0082C5 C6 52 33         [ 1]  152 	ld	a, 0x5233
      0082C8 A4 F0            [ 1]  153 	and	a, #0xf0
      0082CA C7 52 33         [ 1]  154 	ld	0x5233, a
                           000070   155 	Sstm8s_uart1$UART1_Init$28 ==.
                                    156 ;	Source/Std_Lib/Src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0082CD CD 81 89         [ 4]  157 	call	_CLK_GetClockFreq
      0082D0 1F 10            [ 2]  158 	ldw	(0x10, sp), x
      0082D2 1E 14            [ 2]  159 	ldw	x, (0x14, sp)
      0082D4 1F 0A            [ 2]  160 	ldw	(0x0a, sp), x
      0082D6 1E 16            [ 2]  161 	ldw	x, (0x16, sp)
      0082D8 A6 04            [ 1]  162 	ld	a, #0x04
      0082DA                        163 00127$:
      0082DA 58               [ 2]  164 	sllw	x
      0082DB 09 0B            [ 1]  165 	rlc	(0x0b, sp)
      0082DD 09 0A            [ 1]  166 	rlc	(0x0a, sp)
      0082DF 4A               [ 1]  167 	dec	a
      0082E0 26 F8            [ 1]  168 	jrne	00127$
      0082E2 1F 0C            [ 2]  169 	ldw	(0x0c, sp), x
      0082E4 89               [ 2]  170 	pushw	x
                           000088   171 	Sstm8s_uart1$UART1_Init$29 ==.
      0082E5 1E 0C            [ 2]  172 	ldw	x, (0x0c, sp)
      0082E7 89               [ 2]  173 	pushw	x
                           00008B   174 	Sstm8s_uart1$UART1_Init$30 ==.
      0082E8 1E 14            [ 2]  175 	ldw	x, (0x14, sp)
      0082EA 89               [ 2]  176 	pushw	x
                           00008E   177 	Sstm8s_uart1$UART1_Init$31 ==.
      0082EB 90 89            [ 2]  178 	pushw	y
                           000090   179 	Sstm8s_uart1$UART1_Init$32 ==.
      0082ED CD 8D E1         [ 4]  180 	call	__divulong
      0082F0 5B 08            [ 2]  181 	addw	sp, #8
                           000095   182 	Sstm8s_uart1$UART1_Init$33 ==.
      0082F2 1F 10            [ 2]  183 	ldw	(0x10, sp), x
      0082F4 17 0E            [ 2]  184 	ldw	(0x0e, sp), y
      0082F6 16 10            [ 2]  185 	ldw	y, (0x10, sp)
      0082F8 17 03            [ 2]  186 	ldw	(0x03, sp), y
      0082FA 16 0E            [ 2]  187 	ldw	y, (0x0e, sp)
      0082FC 17 01            [ 2]  188 	ldw	(0x01, sp), y
                           0000A1   189 	Sstm8s_uart1$UART1_Init$34 ==.
                                    190 ;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0082FE CD 81 89         [ 4]  191 	call	_CLK_GetClockFreq
      008301 1F 10            [ 2]  192 	ldw	(0x10, sp), x
      008303 17 0E            [ 2]  193 	ldw	(0x0e, sp), y
      008305 1E 10            [ 2]  194 	ldw	x, (0x10, sp)
      008307 89               [ 2]  195 	pushw	x
                           0000AB   196 	Sstm8s_uart1$UART1_Init$35 ==.
      008308 1E 10            [ 2]  197 	ldw	x, (0x10, sp)
      00830A 89               [ 2]  198 	pushw	x
                           0000AE   199 	Sstm8s_uart1$UART1_Init$36 ==.
      00830B 4B 64            [ 1]  200 	push	#0x64
                           0000B0   201 	Sstm8s_uart1$UART1_Init$37 ==.
      00830D 5F               [ 1]  202 	clrw	x
      00830E 89               [ 2]  203 	pushw	x
                           0000B2   204 	Sstm8s_uart1$UART1_Init$38 ==.
      00830F 4B 00            [ 1]  205 	push	#0x00
                           0000B4   206 	Sstm8s_uart1$UART1_Init$39 ==.
      008311 CD 8E 77         [ 4]  207 	call	__mullong
      008314 5B 08            [ 2]  208 	addw	sp, #8
                           0000B9   209 	Sstm8s_uart1$UART1_Init$40 ==.
      008316 1F 10            [ 2]  210 	ldw	(0x10, sp), x
      008318 1E 0C            [ 2]  211 	ldw	x, (0x0c, sp)
      00831A 89               [ 2]  212 	pushw	x
                           0000BE   213 	Sstm8s_uart1$UART1_Init$41 ==.
      00831B 1E 0C            [ 2]  214 	ldw	x, (0x0c, sp)
      00831D 89               [ 2]  215 	pushw	x
                           0000C1   216 	Sstm8s_uart1$UART1_Init$42 ==.
      00831E 1E 14            [ 2]  217 	ldw	x, (0x14, sp)
      008320 89               [ 2]  218 	pushw	x
                           0000C4   219 	Sstm8s_uart1$UART1_Init$43 ==.
      008321 90 89            [ 2]  220 	pushw	y
                           0000C6   221 	Sstm8s_uart1$UART1_Init$44 ==.
      008323 CD 8D E1         [ 4]  222 	call	__divulong
      008326 5B 08            [ 2]  223 	addw	sp, #8
                           0000CB   224 	Sstm8s_uart1$UART1_Init$45 ==.
      008328 1F 07            [ 2]  225 	ldw	(0x07, sp), x
      00832A 17 05            [ 2]  226 	ldw	(0x05, sp), y
                           0000CF   227 	Sstm8s_uart1$UART1_Init$46 ==.
                                    228 ;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00832C C6 52 33         [ 1]  229 	ld	a, 0x5233
      00832F 6B 09            [ 1]  230 	ld	(0x09, sp), a
      008331 1E 03            [ 2]  231 	ldw	x, (0x03, sp)
      008333 89               [ 2]  232 	pushw	x
                           0000D7   233 	Sstm8s_uart1$UART1_Init$47 ==.
      008334 1E 03            [ 2]  234 	ldw	x, (0x03, sp)
      008336 89               [ 2]  235 	pushw	x
                           0000DA   236 	Sstm8s_uart1$UART1_Init$48 ==.
      008337 4B 64            [ 1]  237 	push	#0x64
                           0000DC   238 	Sstm8s_uart1$UART1_Init$49 ==.
      008339 5F               [ 1]  239 	clrw	x
      00833A 89               [ 2]  240 	pushw	x
                           0000DE   241 	Sstm8s_uart1$UART1_Init$50 ==.
      00833B 4B 00            [ 1]  242 	push	#0x00
                           0000E0   243 	Sstm8s_uart1$UART1_Init$51 ==.
      00833D CD 8E 77         [ 4]  244 	call	__mullong
      008340 5B 08            [ 2]  245 	addw	sp, #8
                           0000E5   246 	Sstm8s_uart1$UART1_Init$52 ==.
      008342 1F 0C            [ 2]  247 	ldw	(0x0c, sp), x
      008344 17 0A            [ 2]  248 	ldw	(0x0a, sp), y
      008346 1E 07            [ 2]  249 	ldw	x, (0x07, sp)
      008348 72 F0 0C         [ 2]  250 	subw	x, (0x0c, sp)
      00834B 1F 10            [ 2]  251 	ldw	(0x10, sp), x
      00834D 7B 06            [ 1]  252 	ld	a, (0x06, sp)
      00834F 12 0B            [ 1]  253 	sbc	a, (0x0b, sp)
      008351 6B 0F            [ 1]  254 	ld	(0x0f, sp), a
      008353 7B 05            [ 1]  255 	ld	a, (0x05, sp)
      008355 12 0A            [ 1]  256 	sbc	a, (0x0a, sp)
      008357 6B 0E            [ 1]  257 	ld	(0x0e, sp), a
      008359 1E 10            [ 2]  258 	ldw	x, (0x10, sp)
      00835B 16 0E            [ 2]  259 	ldw	y, (0x0e, sp)
      00835D A6 04            [ 1]  260 	ld	a, #0x04
      00835F                        261 00129$:
      00835F 58               [ 2]  262 	sllw	x
      008360 90 59            [ 2]  263 	rlcw	y
      008362 4A               [ 1]  264 	dec	a
      008363 26 FA            [ 1]  265 	jrne	00129$
      008365 4B 64            [ 1]  266 	push	#0x64
                           00010A   267 	Sstm8s_uart1$UART1_Init$53 ==.
      008367 4B 00            [ 1]  268 	push	#0x00
                           00010C   269 	Sstm8s_uart1$UART1_Init$54 ==.
      008369 4B 00            [ 1]  270 	push	#0x00
                           00010E   271 	Sstm8s_uart1$UART1_Init$55 ==.
      00836B 4B 00            [ 1]  272 	push	#0x00
                           000110   273 	Sstm8s_uart1$UART1_Init$56 ==.
      00836D 89               [ 2]  274 	pushw	x
                           000111   275 	Sstm8s_uart1$UART1_Init$57 ==.
      00836E 90 89            [ 2]  276 	pushw	y
                           000113   277 	Sstm8s_uart1$UART1_Init$58 ==.
      008370 CD 8D E1         [ 4]  278 	call	__divulong
      008373 5B 08            [ 2]  279 	addw	sp, #8
                           000118   280 	Sstm8s_uart1$UART1_Init$59 ==.
      008375 9F               [ 1]  281 	ld	a, xl
      008376 A4 0F            [ 1]  282 	and	a, #0x0f
      008378 1A 09            [ 1]  283 	or	a, (0x09, sp)
      00837A C7 52 33         [ 1]  284 	ld	0x5233, a
                           000120   285 	Sstm8s_uart1$UART1_Init$60 ==.
                                    286 ;	Source/Std_Lib/Src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      00837D C6 52 33         [ 1]  287 	ld	a, 0x5233
      008380 6B 11            [ 1]  288 	ld	(0x11, sp), a
      008382 1E 03            [ 2]  289 	ldw	x, (0x03, sp)
      008384 A6 10            [ 1]  290 	ld	a, #0x10
      008386 62               [ 2]  291 	div	x, a
      008387 9F               [ 1]  292 	ld	a, xl
      008388 A4 F0            [ 1]  293 	and	a, #0xf0
      00838A 1A 11            [ 1]  294 	or	a, (0x11, sp)
      00838C C7 52 33         [ 1]  295 	ld	0x5233, a
                           000132   296 	Sstm8s_uart1$UART1_Init$61 ==.
                                    297 ;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      00838F C6 52 32         [ 1]  298 	ld	a, 0x5232
      008392 6B 11            [ 1]  299 	ld	(0x11, sp), a
      008394 7B 04            [ 1]  300 	ld	a, (0x04, sp)
      008396 1A 11            [ 1]  301 	or	a, (0x11, sp)
      008398 C7 52 32         [ 1]  302 	ld	0x5232, a
                           00013E   303 	Sstm8s_uart1$UART1_Init$62 ==.
                                    304 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      00839B C6 52 35         [ 1]  305 	ld	a, 0x5235
      00839E A4 F3            [ 1]  306 	and	a, #0xf3
      0083A0 C7 52 35         [ 1]  307 	ld	0x5235, a
                           000146   308 	Sstm8s_uart1$UART1_Init$63 ==.
                                    309 ;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      0083A3 C6 52 36         [ 1]  310 	ld	a, 0x5236
      0083A6 A4 F8            [ 1]  311 	and	a, #0xf8
      0083A8 C7 52 36         [ 1]  312 	ld	0x5236, a
                           00014E   313 	Sstm8s_uart1$UART1_Init$64 ==.
                                    314 ;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      0083AB C6 52 36         [ 1]  315 	ld	a, 0x5236
      0083AE 6B 11            [ 1]  316 	ld	(0x11, sp), a
      0083B0 7B 1B            [ 1]  317 	ld	a, (0x1b, sp)
      0083B2 A4 07            [ 1]  318 	and	a, #0x07
      0083B4 1A 11            [ 1]  319 	or	a, (0x11, sp)
      0083B6 C7 52 36         [ 1]  320 	ld	0x5236, a
                           00015C   321 	Sstm8s_uart1$UART1_Init$65 ==.
                                    322 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0083B9 C6 52 35         [ 1]  323 	ld	a, 0x5235
                           00015F   324 	Sstm8s_uart1$UART1_Init$66 ==.
                                    325 ;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0083BC 88               [ 1]  326 	push	a
                           000160   327 	Sstm8s_uart1$UART1_Init$67 ==.
      0083BD 7B 1D            [ 1]  328 	ld	a, (0x1d, sp)
      0083BF A5 04            [ 1]  329 	bcp	a, #0x04
      0083C1 84               [ 1]  330 	pop	a
                           000165   331 	Sstm8s_uart1$UART1_Init$68 ==.
      0083C2 27 07            [ 1]  332 	jreq	00102$
                           000167   333 	Sstm8s_uart1$UART1_Init$69 ==.
                           000167   334 	Sstm8s_uart1$UART1_Init$70 ==.
                                    335 ;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0083C4 AA 08            [ 1]  336 	or	a, #0x08
      0083C6 C7 52 35         [ 1]  337 	ld	0x5235, a
                           00016C   338 	Sstm8s_uart1$UART1_Init$71 ==.
      0083C9 20 05            [ 2]  339 	jra	00103$
      0083CB                        340 00102$:
                           00016E   341 	Sstm8s_uart1$UART1_Init$72 ==.
                           00016E   342 	Sstm8s_uart1$UART1_Init$73 ==.
                                    343 ;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0083CB A4 F7            [ 1]  344 	and	a, #0xf7
      0083CD C7 52 35         [ 1]  345 	ld	0x5235, a
                           000173   346 	Sstm8s_uart1$UART1_Init$74 ==.
      0083D0                        347 00103$:
                           000173   348 	Sstm8s_uart1$UART1_Init$75 ==.
                                    349 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0083D0 C6 52 35         [ 1]  350 	ld	a, 0x5235
                           000176   351 	Sstm8s_uart1$UART1_Init$76 ==.
                                    352 ;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0083D3 88               [ 1]  353 	push	a
                           000177   354 	Sstm8s_uart1$UART1_Init$77 ==.
      0083D4 7B 1D            [ 1]  355 	ld	a, (0x1d, sp)
      0083D6 A5 08            [ 1]  356 	bcp	a, #0x08
      0083D8 84               [ 1]  357 	pop	a
                           00017C   358 	Sstm8s_uart1$UART1_Init$78 ==.
      0083D9 27 07            [ 1]  359 	jreq	00105$
                           00017E   360 	Sstm8s_uart1$UART1_Init$79 ==.
                           00017E   361 	Sstm8s_uart1$UART1_Init$80 ==.
                                    362 ;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0083DB AA 04            [ 1]  363 	or	a, #0x04
      0083DD C7 52 35         [ 1]  364 	ld	0x5235, a
                           000183   365 	Sstm8s_uart1$UART1_Init$81 ==.
      0083E0 20 05            [ 2]  366 	jra	00106$
      0083E2                        367 00105$:
                           000185   368 	Sstm8s_uart1$UART1_Init$82 ==.
                           000185   369 	Sstm8s_uart1$UART1_Init$83 ==.
                                    370 ;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0083E2 A4 FB            [ 1]  371 	and	a, #0xfb
      0083E4 C7 52 35         [ 1]  372 	ld	0x5235, a
                           00018A   373 	Sstm8s_uart1$UART1_Init$84 ==.
      0083E7                        374 00106$:
                           00018A   375 	Sstm8s_uart1$UART1_Init$85 ==.
                                    376 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0083E7 C6 52 36         [ 1]  377 	ld	a, 0x5236
                           00018D   378 	Sstm8s_uart1$UART1_Init$86 ==.
                                    379 ;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0083EA 0D 1B            [ 1]  380 	tnz	(0x1b, sp)
      0083EC 2A 07            [ 1]  381 	jrpl	00108$
                           000191   382 	Sstm8s_uart1$UART1_Init$87 ==.
                           000191   383 	Sstm8s_uart1$UART1_Init$88 ==.
                                    384 ;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0083EE A4 F7            [ 1]  385 	and	a, #0xf7
      0083F0 C7 52 36         [ 1]  386 	ld	0x5236, a
                           000196   387 	Sstm8s_uart1$UART1_Init$89 ==.
      0083F3 20 0D            [ 2]  388 	jra	00110$
      0083F5                        389 00108$:
                           000198   390 	Sstm8s_uart1$UART1_Init$90 ==.
                           000198   391 	Sstm8s_uart1$UART1_Init$91 ==.
                                    392 ;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0083F5 88               [ 1]  393 	push	a
                           000199   394 	Sstm8s_uart1$UART1_Init$92 ==.
      0083F6 7B 1C            [ 1]  395 	ld	a, (0x1c, sp)
      0083F8 A4 08            [ 1]  396 	and	a, #0x08
      0083FA 6B 12            [ 1]  397 	ld	(0x12, sp), a
      0083FC 84               [ 1]  398 	pop	a
                           0001A0   399 	Sstm8s_uart1$UART1_Init$93 ==.
      0083FD 1A 11            [ 1]  400 	or	a, (0x11, sp)
      0083FF C7 52 36         [ 1]  401 	ld	0x5236, a
                           0001A5   402 	Sstm8s_uart1$UART1_Init$94 ==.
      008402                        403 00110$:
                           0001A5   404 	Sstm8s_uart1$UART1_Init$95 ==.
                                    405 ;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
      008402 5B 11            [ 2]  406 	addw	sp, #17
                           0001A7   407 	Sstm8s_uart1$UART1_Init$96 ==.
                           0001A7   408 	Sstm8s_uart1$UART1_Init$97 ==.
                           0001A7   409 	XG$UART1_Init$0$0 ==.
      008404 81               [ 4]  410 	ret
                           0001A8   411 	Sstm8s_uart1$UART1_Init$98 ==.
                           0001A8   412 	Sstm8s_uart1$UART1_Cmd$99 ==.
                                    413 ;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    414 ;	-----------------------------------------
                                    415 ;	 function UART1_Cmd
                                    416 ;	-----------------------------------------
      008405                        417 _UART1_Cmd:
                           0001A8   418 	Sstm8s_uart1$UART1_Cmd$100 ==.
                           0001A8   419 	Sstm8s_uart1$UART1_Cmd$101 ==.
                                    420 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      008405 C6 52 34         [ 1]  421 	ld	a, 0x5234
                           0001AB   422 	Sstm8s_uart1$UART1_Cmd$102 ==.
                                    423 ;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      008408 0D 03            [ 1]  424 	tnz	(0x03, sp)
      00840A 27 07            [ 1]  425 	jreq	00102$
                           0001AF   426 	Sstm8s_uart1$UART1_Cmd$103 ==.
                           0001AF   427 	Sstm8s_uart1$UART1_Cmd$104 ==.
                                    428 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      00840C A4 DF            [ 1]  429 	and	a, #0xdf
      00840E C7 52 34         [ 1]  430 	ld	0x5234, a
                           0001B4   431 	Sstm8s_uart1$UART1_Cmd$105 ==.
      008411 20 05            [ 2]  432 	jra	00104$
      008413                        433 00102$:
                           0001B6   434 	Sstm8s_uart1$UART1_Cmd$106 ==.
                           0001B6   435 	Sstm8s_uart1$UART1_Cmd$107 ==.
                                    436 ;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      008413 AA 20            [ 1]  437 	or	a, #0x20
      008415 C7 52 34         [ 1]  438 	ld	0x5234, a
                           0001BB   439 	Sstm8s_uart1$UART1_Cmd$108 ==.
      008418                        440 00104$:
                           0001BB   441 	Sstm8s_uart1$UART1_Cmd$109 ==.
                                    442 ;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
                           0001BB   443 	Sstm8s_uart1$UART1_Cmd$110 ==.
                           0001BB   444 	XG$UART1_Cmd$0$0 ==.
      008418 81               [ 4]  445 	ret
                           0001BC   446 	Sstm8s_uart1$UART1_Cmd$111 ==.
                           0001BC   447 	Sstm8s_uart1$UART1_ITConfig$112 ==.
                                    448 ;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    449 ;	-----------------------------------------
                                    450 ;	 function UART1_ITConfig
                                    451 ;	-----------------------------------------
      008419                        452 _UART1_ITConfig:
                           0001BC   453 	Sstm8s_uart1$UART1_ITConfig$113 ==.
      008419 89               [ 2]  454 	pushw	x
                           0001BD   455 	Sstm8s_uart1$UART1_ITConfig$114 ==.
                           0001BD   456 	Sstm8s_uart1$UART1_ITConfig$115 ==.
                                    457 ;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
      00841A 1E 05            [ 2]  458 	ldw	x, (0x05, sp)
                           0001BF   459 	Sstm8s_uart1$UART1_ITConfig$116 ==.
                                    460 ;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      00841C 7B 06            [ 1]  461 	ld	a, (0x06, sp)
      00841E A4 0F            [ 1]  462 	and	a, #0x0f
      008420 88               [ 1]  463 	push	a
                           0001C4   464 	Sstm8s_uart1$UART1_ITConfig$117 ==.
      008421 A6 01            [ 1]  465 	ld	a, #0x01
      008423 6B 03            [ 1]  466 	ld	(0x03, sp), a
      008425 84               [ 1]  467 	pop	a
                           0001C9   468 	Sstm8s_uart1$UART1_ITConfig$118 ==.
      008426 4D               [ 1]  469 	tnz	a
      008427 27 05            [ 1]  470 	jreq	00144$
      008429                        471 00143$:
      008429 08 02            [ 1]  472 	sll	(0x02, sp)
      00842B 4A               [ 1]  473 	dec	a
      00842C 26 FB            [ 1]  474 	jrne	00143$
      00842E                        475 00144$:
                           0001D1   476 	Sstm8s_uart1$UART1_ITConfig$119 ==.
                                    477 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      00842E 9E               [ 1]  478 	ld	a, xh
      00842F 4A               [ 1]  479 	dec	a
      008430 26 05            [ 1]  480 	jrne	00146$
      008432 A6 01            [ 1]  481 	ld	a, #0x01
      008434 6B 01            [ 1]  482 	ld	(0x01, sp), a
      008436 C5                     483 	.byte 0xc5
      008437                        484 00146$:
      008437 0F 01            [ 1]  485 	clr	(0x01, sp)
      008439                        486 00147$:
                           0001DC   487 	Sstm8s_uart1$UART1_ITConfig$120 ==.
                           0001DC   488 	Sstm8s_uart1$UART1_ITConfig$121 ==.
                                    489 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008439 9E               [ 1]  490 	ld	a, xh
      00843A A0 02            [ 1]  491 	sub	a, #0x02
      00843C 26 02            [ 1]  492 	jrne	00149$
      00843E 4C               [ 1]  493 	inc	a
      00843F 21                     494 	.byte 0x21
      008440                        495 00149$:
      008440 4F               [ 1]  496 	clr	a
      008441                        497 00150$:
                           0001E4   498 	Sstm8s_uart1$UART1_ITConfig$122 ==.
                           0001E4   499 	Sstm8s_uart1$UART1_ITConfig$123 ==.
                                    500 ;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
      008441 0D 07            [ 1]  501 	tnz	(0x07, sp)
      008443 27 27            [ 1]  502 	jreq	00114$
                           0001E8   503 	Sstm8s_uart1$UART1_ITConfig$124 ==.
                           0001E8   504 	Sstm8s_uart1$UART1_ITConfig$125 ==.
                                    505 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      008445 0D 01            [ 1]  506 	tnz	(0x01, sp)
      008447 27 0B            [ 1]  507 	jreq	00105$
                           0001EC   508 	Sstm8s_uart1$UART1_ITConfig$126 ==.
                           0001EC   509 	Sstm8s_uart1$UART1_ITConfig$127 ==.
                                    510 ;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      008449 C6 52 34         [ 1]  511 	ld	a, 0x5234
      00844C 1A 02            [ 1]  512 	or	a, (0x02, sp)
      00844E C7 52 34         [ 1]  513 	ld	0x5234, a
                           0001F4   514 	Sstm8s_uart1$UART1_ITConfig$128 ==.
      008451 CC 84 91         [ 2]  515 	jp	00116$
      008454                        516 00105$:
                           0001F7   517 	Sstm8s_uart1$UART1_ITConfig$129 ==.
                                    518 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008454 4D               [ 1]  519 	tnz	a
      008455 27 0B            [ 1]  520 	jreq	00102$
                           0001FA   521 	Sstm8s_uart1$UART1_ITConfig$130 ==.
                           0001FA   522 	Sstm8s_uart1$UART1_ITConfig$131 ==.
                                    523 ;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      008457 C6 52 35         [ 1]  524 	ld	a, 0x5235
      00845A 1A 02            [ 1]  525 	or	a, (0x02, sp)
      00845C C7 52 35         [ 1]  526 	ld	0x5235, a
                           000202   527 	Sstm8s_uart1$UART1_ITConfig$132 ==.
      00845F CC 84 91         [ 2]  528 	jp	00116$
      008462                        529 00102$:
                           000205   530 	Sstm8s_uart1$UART1_ITConfig$133 ==.
                           000205   531 	Sstm8s_uart1$UART1_ITConfig$134 ==.
                                    532 ;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      008462 C6 52 37         [ 1]  533 	ld	a, 0x5237
      008465 1A 02            [ 1]  534 	or	a, (0x02, sp)
      008467 C7 52 37         [ 1]  535 	ld	0x5237, a
                           00020D   536 	Sstm8s_uart1$UART1_ITConfig$135 ==.
      00846A 20 25            [ 2]  537 	jra	00116$
      00846C                        538 00114$:
                           00020F   539 	Sstm8s_uart1$UART1_ITConfig$136 ==.
                                    540 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00846C 03 02            [ 1]  541 	cpl	(0x02, sp)
                           000211   542 	Sstm8s_uart1$UART1_ITConfig$137 ==.
                           000211   543 	Sstm8s_uart1$UART1_ITConfig$138 ==.
                                    544 ;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
      00846E 0D 01            [ 1]  545 	tnz	(0x01, sp)
      008470 27 0A            [ 1]  546 	jreq	00111$
                           000215   547 	Sstm8s_uart1$UART1_ITConfig$139 ==.
                           000215   548 	Sstm8s_uart1$UART1_ITConfig$140 ==.
                                    549 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      008472 C6 52 34         [ 1]  550 	ld	a, 0x5234
      008475 14 02            [ 1]  551 	and	a, (0x02, sp)
      008477 C7 52 34         [ 1]  552 	ld	0x5234, a
                           00021D   553 	Sstm8s_uart1$UART1_ITConfig$141 ==.
      00847A 20 15            [ 2]  554 	jra	00116$
      00847C                        555 00111$:
                           00021F   556 	Sstm8s_uart1$UART1_ITConfig$142 ==.
                                    557 ;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
      00847C 4D               [ 1]  558 	tnz	a
      00847D 27 0A            [ 1]  559 	jreq	00108$
                           000222   560 	Sstm8s_uart1$UART1_ITConfig$143 ==.
                           000222   561 	Sstm8s_uart1$UART1_ITConfig$144 ==.
                                    562 ;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      00847F C6 52 35         [ 1]  563 	ld	a, 0x5235
      008482 14 02            [ 1]  564 	and	a, (0x02, sp)
      008484 C7 52 35         [ 1]  565 	ld	0x5235, a
                           00022A   566 	Sstm8s_uart1$UART1_ITConfig$145 ==.
      008487 20 08            [ 2]  567 	jra	00116$
      008489                        568 00108$:
                           00022C   569 	Sstm8s_uart1$UART1_ITConfig$146 ==.
                           00022C   570 	Sstm8s_uart1$UART1_ITConfig$147 ==.
                                    571 ;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      008489 C6 52 37         [ 1]  572 	ld	a, 0x5237
      00848C 14 02            [ 1]  573 	and	a, (0x02, sp)
      00848E C7 52 37         [ 1]  574 	ld	0x5237, a
                           000234   575 	Sstm8s_uart1$UART1_ITConfig$148 ==.
      008491                        576 00116$:
                           000234   577 	Sstm8s_uart1$UART1_ITConfig$149 ==.
                                    578 ;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
      008491 85               [ 2]  579 	popw	x
                           000235   580 	Sstm8s_uart1$UART1_ITConfig$150 ==.
                           000235   581 	Sstm8s_uart1$UART1_ITConfig$151 ==.
                           000235   582 	XG$UART1_ITConfig$0$0 ==.
      008492 81               [ 4]  583 	ret
                           000236   584 	Sstm8s_uart1$UART1_ITConfig$152 ==.
                           000236   585 	Sstm8s_uart1$UART1_ReceiveData8$153 ==.
                                    586 ;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    587 ;	-----------------------------------------
                                    588 ;	 function UART1_ReceiveData8
                                    589 ;	-----------------------------------------
      008493                        590 _UART1_ReceiveData8:
                           000236   591 	Sstm8s_uart1$UART1_ReceiveData8$154 ==.
                           000236   592 	Sstm8s_uart1$UART1_ReceiveData8$155 ==.
                                    593 ;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      008493 C6 52 31         [ 1]  594 	ld	a, 0x5231
                           000239   595 	Sstm8s_uart1$UART1_ReceiveData8$156 ==.
                                    596 ;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
                           000239   597 	Sstm8s_uart1$UART1_ReceiveData8$157 ==.
                           000239   598 	XG$UART1_ReceiveData8$0$0 ==.
      008496 81               [ 4]  599 	ret
                           00023A   600 	Sstm8s_uart1$UART1_ReceiveData8$158 ==.
                           00023A   601 	Sstm8s_uart1$UART1_SendData8$159 ==.
                                    602 ;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    603 ;	-----------------------------------------
                                    604 ;	 function UART1_SendData8
                                    605 ;	-----------------------------------------
      008497                        606 _UART1_SendData8:
                           00023A   607 	Sstm8s_uart1$UART1_SendData8$160 ==.
                           00023A   608 	Sstm8s_uart1$UART1_SendData8$161 ==.
                                    609 ;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
      008497 AE 52 31         [ 2]  610 	ldw	x, #0x5231
      00849A 7B 03            [ 1]  611 	ld	a, (0x03, sp)
      00849C F7               [ 1]  612 	ld	(x), a
                           000240   613 	Sstm8s_uart1$UART1_SendData8$162 ==.
                                    614 ;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
                           000240   615 	Sstm8s_uart1$UART1_SendData8$163 ==.
                           000240   616 	XG$UART1_SendData8$0$0 ==.
      00849D 81               [ 4]  617 	ret
                           000241   618 	Sstm8s_uart1$UART1_SendData8$164 ==.
                           000241   619 	Sstm8s_uart1$UART1_GetFlagStatus$165 ==.
                                    620 ;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    621 ;	-----------------------------------------
                                    622 ;	 function UART1_GetFlagStatus
                                    623 ;	-----------------------------------------
      00849E                        624 _UART1_GetFlagStatus:
                           000241   625 	Sstm8s_uart1$UART1_GetFlagStatus$166 ==.
      00849E 52 03            [ 2]  626 	sub	sp, #3
                           000243   627 	Sstm8s_uart1$UART1_GetFlagStatus$167 ==.
                           000243   628 	Sstm8s_uart1$UART1_GetFlagStatus$168 ==.
                                    629 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      0084A0 16 06            [ 2]  630 	ldw	y, (0x06, sp)
      0084A2 17 01            [ 2]  631 	ldw	(0x01, sp), y
                           000247   632 	Sstm8s_uart1$UART1_GetFlagStatus$169 ==.
                                    633 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0084A4 7B 07            [ 1]  634 	ld	a, (0x07, sp)
      0084A6 6B 03            [ 1]  635 	ld	(0x03, sp), a
                           00024B   636 	Sstm8s_uart1$UART1_GetFlagStatus$170 ==.
                                    637 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      0084A8 1E 01            [ 2]  638 	ldw	x, (0x01, sp)
      0084AA A3 02 10         [ 2]  639 	cpw	x, #0x0210
      0084AD 26 0F            [ 1]  640 	jrne	00114$
                           000252   641 	Sstm8s_uart1$UART1_GetFlagStatus$171 ==.
                           000252   642 	Sstm8s_uart1$UART1_GetFlagStatus$172 ==.
                           000252   643 	Sstm8s_uart1$UART1_GetFlagStatus$173 ==.
                                    644 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0084AF C6 52 37         [ 1]  645 	ld	a, 0x5237
      0084B2 14 03            [ 1]  646 	and	a, (0x03, sp)
      0084B4 27 05            [ 1]  647 	jreq	00102$
                           000259   648 	Sstm8s_uart1$UART1_GetFlagStatus$174 ==.
                           000259   649 	Sstm8s_uart1$UART1_GetFlagStatus$175 ==.
                                    650 ;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
      0084B6 A6 01            [ 1]  651 	ld	a, #0x01
                           00025B   652 	Sstm8s_uart1$UART1_GetFlagStatus$176 ==.
      0084B8 CC 84 DF         [ 2]  653 	jp	00115$
      0084BB                        654 00102$:
                           00025E   655 	Sstm8s_uart1$UART1_GetFlagStatus$177 ==.
                           00025E   656 	Sstm8s_uart1$UART1_GetFlagStatus$178 ==.
                                    657 ;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
      0084BB 4F               [ 1]  658 	clr	a
                           00025F   659 	Sstm8s_uart1$UART1_GetFlagStatus$179 ==.
      0084BC 20 21            [ 2]  660 	jra	00115$
      0084BE                        661 00114$:
                           000261   662 	Sstm8s_uart1$UART1_GetFlagStatus$180 ==.
                                    663 ;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      0084BE 1E 01            [ 2]  664 	ldw	x, (0x01, sp)
      0084C0 A3 01 01         [ 2]  665 	cpw	x, #0x0101
      0084C3 26 0E            [ 1]  666 	jrne	00111$
                           000268   667 	Sstm8s_uart1$UART1_GetFlagStatus$181 ==.
                           000268   668 	Sstm8s_uart1$UART1_GetFlagStatus$182 ==.
                           000268   669 	Sstm8s_uart1$UART1_GetFlagStatus$183 ==.
                                    670 ;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0084C5 C6 52 35         [ 1]  671 	ld	a, 0x5235
      0084C8 14 03            [ 1]  672 	and	a, (0x03, sp)
      0084CA 27 04            [ 1]  673 	jreq	00105$
                           00026F   674 	Sstm8s_uart1$UART1_GetFlagStatus$184 ==.
                           00026F   675 	Sstm8s_uart1$UART1_GetFlagStatus$185 ==.
                                    676 ;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
      0084CC A6 01            [ 1]  677 	ld	a, #0x01
                           000271   678 	Sstm8s_uart1$UART1_GetFlagStatus$186 ==.
      0084CE 20 0F            [ 2]  679 	jra	00115$
      0084D0                        680 00105$:
                           000273   681 	Sstm8s_uart1$UART1_GetFlagStatus$187 ==.
                           000273   682 	Sstm8s_uart1$UART1_GetFlagStatus$188 ==.
                                    683 ;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
      0084D0 4F               [ 1]  684 	clr	a
                           000274   685 	Sstm8s_uart1$UART1_GetFlagStatus$189 ==.
      0084D1 20 0C            [ 2]  686 	jra	00115$
      0084D3                        687 00111$:
                           000276   688 	Sstm8s_uart1$UART1_GetFlagStatus$190 ==.
                           000276   689 	Sstm8s_uart1$UART1_GetFlagStatus$191 ==.
                                    690 ;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0084D3 C6 52 30         [ 1]  691 	ld	a, 0x5230
      0084D6 14 03            [ 1]  692 	and	a, (0x03, sp)
      0084D8 27 04            [ 1]  693 	jreq	00108$
                           00027D   694 	Sstm8s_uart1$UART1_GetFlagStatus$192 ==.
                           00027D   695 	Sstm8s_uart1$UART1_GetFlagStatus$193 ==.
                                    696 ;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
      0084DA A6 01            [ 1]  697 	ld	a, #0x01
                           00027F   698 	Sstm8s_uart1$UART1_GetFlagStatus$194 ==.
      0084DC 20 01            [ 2]  699 	jra	00115$
      0084DE                        700 00108$:
                           000281   701 	Sstm8s_uart1$UART1_GetFlagStatus$195 ==.
                           000281   702 	Sstm8s_uart1$UART1_GetFlagStatus$196 ==.
                                    703 ;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
      0084DE 4F               [ 1]  704 	clr	a
                           000282   705 	Sstm8s_uart1$UART1_GetFlagStatus$197 ==.
      0084DF                        706 00115$:
                           000282   707 	Sstm8s_uart1$UART1_GetFlagStatus$198 ==.
                                    708 ;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
                           000282   709 	Sstm8s_uart1$UART1_GetFlagStatus$199 ==.
                                    710 ;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
      0084DF 5B 03            [ 2]  711 	addw	sp, #3
                           000284   712 	Sstm8s_uart1$UART1_GetFlagStatus$200 ==.
                           000284   713 	Sstm8s_uart1$UART1_GetFlagStatus$201 ==.
                           000284   714 	XG$UART1_GetFlagStatus$0$0 ==.
      0084E1 81               [ 4]  715 	ret
                           000285   716 	Sstm8s_uart1$UART1_GetFlagStatus$202 ==.
                           000285   717 	Sstm8s_uart1$UART1_GetITStatus$203 ==.
                                    718 ;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                    719 ;	-----------------------------------------
                                    720 ;	 function UART1_GetITStatus
                                    721 ;	-----------------------------------------
      0084E2                        722 _UART1_GetITStatus:
                           000285   723 	Sstm8s_uart1$UART1_GetITStatus$204 ==.
      0084E2 52 04            [ 2]  724 	sub	sp, #4
                           000287   725 	Sstm8s_uart1$UART1_GetITStatus$205 ==.
                           000287   726 	Sstm8s_uart1$UART1_GetITStatus$206 ==.
                                    727 ;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0084E4 7B 08            [ 1]  728 	ld	a, (0x08, sp)
      0084E6 97               [ 1]  729 	ld	xl, a
      0084E7 A4 0F            [ 1]  730 	and	a, #0x0f
      0084E9 88               [ 1]  731 	push	a
                           00028D   732 	Sstm8s_uart1$UART1_GetITStatus$207 ==.
      0084EA A6 01            [ 1]  733 	ld	a, #0x01
      0084EC 6B 02            [ 1]  734 	ld	(0x02, sp), a
      0084EE 84               [ 1]  735 	pop	a
                           000292   736 	Sstm8s_uart1$UART1_GetITStatus$208 ==.
      0084EF 4D               [ 1]  737 	tnz	a
      0084F0 27 05            [ 1]  738 	jreq	00162$
      0084F2                        739 00161$:
      0084F2 08 01            [ 1]  740 	sll	(0x01, sp)
      0084F4 4A               [ 1]  741 	dec	a
      0084F5 26 FB            [ 1]  742 	jrne	00161$
      0084F7                        743 00162$:
                           00029A   744 	Sstm8s_uart1$UART1_GetITStatus$209 ==.
                                    745 ;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      0084F7 9F               [ 1]  746 	ld	a, xl
      0084F8 4E               [ 1]  747 	swap	a
      0084F9 A4 0F            [ 1]  748 	and	a, #0x0f
                           00029E   749 	Sstm8s_uart1$UART1_GetITStatus$210 ==.
                                    750 ;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0084FB 88               [ 1]  751 	push	a
                           00029F   752 	Sstm8s_uart1$UART1_GetITStatus$211 ==.
      0084FC A6 01            [ 1]  753 	ld	a, #0x01
      0084FE 6B 03            [ 1]  754 	ld	(0x03, sp), a
      008500 84               [ 1]  755 	pop	a
                           0002A4   756 	Sstm8s_uart1$UART1_GetITStatus$212 ==.
      008501 4D               [ 1]  757 	tnz	a
      008502 27 05            [ 1]  758 	jreq	00164$
      008504                        759 00163$:
      008504 08 02            [ 1]  760 	sll	(0x02, sp)
      008506 4A               [ 1]  761 	dec	a
      008507 26 FB            [ 1]  762 	jrne	00163$
      008509                        763 00164$:
                           0002AC   764 	Sstm8s_uart1$UART1_GetITStatus$213 ==.
                                    765 ;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      008509 16 07            [ 2]  766 	ldw	y, (0x07, sp)
      00850B 17 03            [ 2]  767 	ldw	(0x03, sp), y
      00850D 93               [ 1]  768 	ldw	x, y
      00850E A3 01 00         [ 2]  769 	cpw	x, #0x0100
      008511 26 1A            [ 1]  770 	jrne	00117$
                           0002B6   771 	Sstm8s_uart1$UART1_GetITStatus$214 ==.
                           0002B6   772 	Sstm8s_uart1$UART1_GetITStatus$215 ==.
                           0002B6   773 	Sstm8s_uart1$UART1_GetITStatus$216 ==.
                                    774 ;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      008513 C6 52 34         [ 1]  775 	ld	a, 0x5234
      008516 14 02            [ 1]  776 	and	a, (0x02, sp)
      008518 97               [ 1]  777 	ld	xl, a
                           0002BC   778 	Sstm8s_uart1$UART1_GetITStatus$217 ==.
                                    779 ;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008519 C6 52 30         [ 1]  780 	ld	a, 0x5230
      00851C 14 01            [ 1]  781 	and	a, (0x01, sp)
      00851E 27 09            [ 1]  782 	jreq	00102$
      008520 9F               [ 1]  783 	ld	a, xl
      008521 4D               [ 1]  784 	tnz	a
      008522 27 05            [ 1]  785 	jreq	00102$
                           0002C7   786 	Sstm8s_uart1$UART1_GetITStatus$218 ==.
                           0002C7   787 	Sstm8s_uart1$UART1_GetITStatus$219 ==.
                                    788 ;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
      008524 A6 01            [ 1]  789 	ld	a, #0x01
                           0002C9   790 	Sstm8s_uart1$UART1_GetITStatus$220 ==.
      008526 CC 85 62         [ 2]  791 	jp	00118$
      008529                        792 00102$:
                           0002CC   793 	Sstm8s_uart1$UART1_GetITStatus$221 ==.
                           0002CC   794 	Sstm8s_uart1$UART1_GetITStatus$222 ==.
                                    795 ;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
      008529 4F               [ 1]  796 	clr	a
                           0002CD   797 	Sstm8s_uart1$UART1_GetITStatus$223 ==.
      00852A CC 85 62         [ 2]  798 	jp	00118$
      00852D                        799 00117$:
                           0002D0   800 	Sstm8s_uart1$UART1_GetITStatus$224 ==.
                                    801 ;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      00852D 1E 03            [ 2]  802 	ldw	x, (0x03, sp)
      00852F A3 03 46         [ 2]  803 	cpw	x, #0x0346
      008532 26 18            [ 1]  804 	jrne	00114$
                           0002D7   805 	Sstm8s_uart1$UART1_GetITStatus$225 ==.
                           0002D7   806 	Sstm8s_uart1$UART1_GetITStatus$226 ==.
                           0002D7   807 	Sstm8s_uart1$UART1_GetITStatus$227 ==.
                                    808 ;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      008534 C6 52 37         [ 1]  809 	ld	a, 0x5237
      008537 14 02            [ 1]  810 	and	a, (0x02, sp)
      008539 97               [ 1]  811 	ld	xl, a
                           0002DD   812 	Sstm8s_uart1$UART1_GetITStatus$228 ==.
                                    813 ;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00853A C6 52 37         [ 1]  814 	ld	a, 0x5237
      00853D 14 01            [ 1]  815 	and	a, (0x01, sp)
      00853F 27 08            [ 1]  816 	jreq	00106$
      008541 9F               [ 1]  817 	ld	a, xl
      008542 4D               [ 1]  818 	tnz	a
      008543 27 04            [ 1]  819 	jreq	00106$
                           0002E8   820 	Sstm8s_uart1$UART1_GetITStatus$229 ==.
                           0002E8   821 	Sstm8s_uart1$UART1_GetITStatus$230 ==.
                                    822 ;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
      008545 A6 01            [ 1]  823 	ld	a, #0x01
                           0002EA   824 	Sstm8s_uart1$UART1_GetITStatus$231 ==.
      008547 20 19            [ 2]  825 	jra	00118$
      008549                        826 00106$:
                           0002EC   827 	Sstm8s_uart1$UART1_GetITStatus$232 ==.
                           0002EC   828 	Sstm8s_uart1$UART1_GetITStatus$233 ==.
                                    829 ;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
      008549 4F               [ 1]  830 	clr	a
                           0002ED   831 	Sstm8s_uart1$UART1_GetITStatus$234 ==.
      00854A 20 16            [ 2]  832 	jra	00118$
      00854C                        833 00114$:
                           0002EF   834 	Sstm8s_uart1$UART1_GetITStatus$235 ==.
                           0002EF   835 	Sstm8s_uart1$UART1_GetITStatus$236 ==.
                                    836 ;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      00854C C6 52 35         [ 1]  837 	ld	a, 0x5235
      00854F 14 02            [ 1]  838 	and	a, (0x02, sp)
      008551 97               [ 1]  839 	ld	xl, a
                           0002F5   840 	Sstm8s_uart1$UART1_GetITStatus$237 ==.
                                    841 ;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008552 C6 52 30         [ 1]  842 	ld	a, 0x5230
      008555 14 01            [ 1]  843 	and	a, (0x01, sp)
      008557 27 08            [ 1]  844 	jreq	00110$
      008559 9F               [ 1]  845 	ld	a, xl
      00855A 4D               [ 1]  846 	tnz	a
      00855B 27 04            [ 1]  847 	jreq	00110$
                           000300   848 	Sstm8s_uart1$UART1_GetITStatus$238 ==.
                           000300   849 	Sstm8s_uart1$UART1_GetITStatus$239 ==.
                                    850 ;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
      00855D A6 01            [ 1]  851 	ld	a, #0x01
                           000302   852 	Sstm8s_uart1$UART1_GetITStatus$240 ==.
      00855F 20 01            [ 2]  853 	jra	00118$
      008561                        854 00110$:
                           000304   855 	Sstm8s_uart1$UART1_GetITStatus$241 ==.
                           000304   856 	Sstm8s_uart1$UART1_GetITStatus$242 ==.
                                    857 ;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
      008561 4F               [ 1]  858 	clr	a
                           000305   859 	Sstm8s_uart1$UART1_GetITStatus$243 ==.
      008562                        860 00118$:
                           000305   861 	Sstm8s_uart1$UART1_GetITStatus$244 ==.
                                    862 ;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
                           000305   863 	Sstm8s_uart1$UART1_GetITStatus$245 ==.
                                    864 ;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
      008562 5B 04            [ 2]  865 	addw	sp, #4
                           000307   866 	Sstm8s_uart1$UART1_GetITStatus$246 ==.
                           000307   867 	Sstm8s_uart1$UART1_GetITStatus$247 ==.
                           000307   868 	XG$UART1_GetITStatus$0$0 ==.
      008564 81               [ 4]  869 	ret
                           000308   870 	Sstm8s_uart1$UART1_GetITStatus$248 ==.
                           000308   871 	Sstm8s_uart1$UART1_ClearITPendingBit$249 ==.
                                    872 ;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                    873 ;	-----------------------------------------
                                    874 ;	 function UART1_ClearITPendingBit
                                    875 ;	-----------------------------------------
      008565                        876 _UART1_ClearITPendingBit:
                           000308   877 	Sstm8s_uart1$UART1_ClearITPendingBit$250 ==.
                           000308   878 	Sstm8s_uart1$UART1_ClearITPendingBit$251 ==.
                                    879 ;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      008565 1E 03            [ 2]  880 	ldw	x, (0x03, sp)
      008567 A3 02 55         [ 2]  881 	cpw	x, #0x0255
      00856A 26 06            [ 1]  882 	jrne	00102$
                           00030F   883 	Sstm8s_uart1$UART1_ClearITPendingBit$252 ==.
                           00030F   884 	Sstm8s_uart1$UART1_ClearITPendingBit$253 ==.
                           00030F   885 	Sstm8s_uart1$UART1_ClearITPendingBit$254 ==.
                                    886 ;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      00856C 35 DF 52 30      [ 1]  887 	mov	0x5230+0, #0xdf
                           000313   888 	Sstm8s_uart1$UART1_ClearITPendingBit$255 ==.
      008570 20 04            [ 2]  889 	jra	00104$
      008572                        890 00102$:
                           000315   891 	Sstm8s_uart1$UART1_ClearITPendingBit$256 ==.
                           000315   892 	Sstm8s_uart1$UART1_ClearITPendingBit$257 ==.
                                    893 ;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      008572 72 19 52 37      [ 1]  894 	bres	21047, #4
                           000319   895 	Sstm8s_uart1$UART1_ClearITPendingBit$258 ==.
      008576                        896 00104$:
                           000319   897 	Sstm8s_uart1$UART1_ClearITPendingBit$259 ==.
                                    898 ;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
                           000319   899 	Sstm8s_uart1$UART1_ClearITPendingBit$260 ==.
                           000319   900 	XG$UART1_ClearITPendingBit$0$0 ==.
      008576 81               [ 4]  901 	ret
                           00031A   902 	Sstm8s_uart1$UART1_ClearITPendingBit$261 ==.
                                    903 	.area CODE
                                    904 	.area CONST
                                    905 	.area INITIALIZER
                                    906 	.area CABS (ABS)
                                    907 
                                    908 	.area .debug_line (NOLOAD)
      0004E7 00 00 03 9B            909 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0004EB                        910 Ldebug_line_start:
      0004EB 00 02                  911 	.dw	2
      0004ED 00 00 00 81            912 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0004F1 01                     913 	.db	1
      0004F2 01                     914 	.db	1
      0004F3 FB                     915 	.db	-5
      0004F4 0F                     916 	.db	15
      0004F5 0A                     917 	.db	10
      0004F6 00                     918 	.db	0
      0004F7 01                     919 	.db	1
      0004F8 01                     920 	.db	1
      0004F9 01                     921 	.db	1
      0004FA 01                     922 	.db	1
      0004FB 00                     923 	.db	0
      0004FC 00                     924 	.db	0
      0004FD 00                     925 	.db	0
      0004FE 01                     926 	.db	1
      0004FF 43 3A 5C 50 72 6F 67   927 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000527 00                     928 	.db	0
      000528 43 3A 5C 50 72 6F 67   929 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00054B 00                     930 	.db	0
      00054C 00                     931 	.db	0
      00054D 53 6F 75 72 63 65 2F   932 	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 75 61 72
             74 31 2E 63
      00056D 00                     933 	.db	0
      00056E 00                     934 	.uleb128	0
      00056F 00                     935 	.uleb128	0
      000570 00                     936 	.uleb128	0
      000571 00                     937 	.db	0
      000572                        938 Ldebug_line_stmt:
      000572 00                     939 	.db	0
      000573 05                     940 	.uleb128	5
      000574 02                     941 	.db	2
      000575 00 00 82 5D            942 	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
      000579 03                     943 	.db	3
      00057A 34                     944 	.sleb128	52
      00057B 01                     945 	.db	1
      00057C 09                     946 	.db	9
      00057D 00 00                  947 	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
      00057F 03                     948 	.db	3
      000580 04                     949 	.sleb128	4
      000581 01                     950 	.db	1
      000582 09                     951 	.db	9
      000583 00 03                  952 	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
      000585 03                     953 	.db	3
      000586 01                     954 	.sleb128	1
      000587 01                     955 	.db	1
      000588 09                     956 	.db	9
      000589 00 03                  957 	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
      00058B 03                     958 	.db	3
      00058C 02                     959 	.sleb128	2
      00058D 01                     960 	.db	1
      00058E 09                     961 	.db	9
      00058F 00 04                  962 	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
      000591 03                     963 	.db	3
      000592 01                     964 	.sleb128	1
      000593 01                     965 	.db	1
      000594 09                     966 	.db	9
      000595 00 04                  967 	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
      000597 03                     968 	.db	3
      000598 02                     969 	.sleb128	2
      000599 01                     970 	.db	1
      00059A 09                     971 	.db	9
      00059B 00 04                  972 	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
      00059D 03                     973 	.db	3
      00059E 01                     974 	.sleb128	1
      00059F 01                     975 	.db	1
      0005A0 09                     976 	.db	9
      0005A1 00 04                  977 	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
      0005A3 03                     978 	.db	3
      0005A4 01                     979 	.sleb128	1
      0005A5 01                     980 	.db	1
      0005A6 09                     981 	.db	9
      0005A7 00 04                  982 	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
      0005A9 03                     983 	.db	3
      0005AA 01                     984 	.sleb128	1
      0005AB 01                     985 	.db	1
      0005AC 09                     986 	.db	9
      0005AD 00 04                  987 	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
      0005AF 03                     988 	.db	3
      0005B0 01                     989 	.sleb128	1
      0005B1 01                     990 	.db	1
      0005B2 09                     991 	.db	9
      0005B3 00 04                  992 	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
      0005B5 03                     993 	.db	3
      0005B6 02                     994 	.sleb128	2
      0005B7 01                     995 	.db	1
      0005B8 09                     996 	.db	9
      0005B9 00 04                  997 	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
      0005BB 03                     998 	.db	3
      0005BC 01                     999 	.sleb128	1
      0005BD 01                    1000 	.db	1
      0005BE 09                    1001 	.db	9
      0005BF 00 04                 1002 	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
      0005C1 03                    1003 	.db	3
      0005C2 01                    1004 	.sleb128	1
      0005C3 01                    1005 	.db	1
      0005C4 09                    1006 	.db	9
      0005C5 00 01                 1007 	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
      0005C7 00                    1008 	.db	0
      0005C8 01                    1009 	.uleb128	1
      0005C9 01                    1010 	.db	1
      0005CA 00                    1011 	.db	0
      0005CB 05                    1012 	.uleb128	5
      0005CC 02                    1013 	.db	2
      0005CD 00 00 82 88           1014 	.dw	0,(Sstm8s_uart1$UART1_Init$16)
      0005D1 03                    1015 	.db	3
      0005D2 D9 00                 1016 	.sleb128	89
      0005D4 01                    1017 	.db	1
      0005D5 09                    1018 	.db	9
      0005D6 00 02                 1019 	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
      0005D8 03                    1020 	.db	3
      0005D9 0F                    1021 	.sleb128	15
      0005DA 01                    1022 	.db	1
      0005DB 09                    1023 	.db	9
      0005DC 00 04                 1024 	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
      0005DE 03                    1025 	.db	3
      0005DF 03                    1026 	.sleb128	3
      0005E0 01                    1027 	.db	1
      0005E1 09                    1028 	.db	9
      0005E2 00 08                 1029 	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
      0005E4 03                    1030 	.db	3
      0005E5 03                    1031 	.sleb128	3
      0005E6 01                    1032 	.db	1
      0005E7 09                    1033 	.db	9
      0005E8 00 08                 1034 	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
      0005EA 03                    1035 	.db	3
      0005EB 02                    1036 	.sleb128	2
      0005EC 01                    1037 	.db	1
      0005ED 09                    1038 	.db	9
      0005EE 00 08                 1039 	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
      0005F0 03                    1040 	.db	3
      0005F1 03                    1041 	.sleb128	3
      0005F2 01                    1042 	.db	1
      0005F3 09                    1043 	.db	9
      0005F4 00 08                 1044 	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
      0005F6 03                    1045 	.db	3
      0005F7 02                    1046 	.sleb128	2
      0005F8 01                    1047 	.db	1
      0005F9 09                    1048 	.db	9
      0005FA 00 08                 1049 	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
      0005FC 03                    1050 	.db	3
      0005FD 03                    1051 	.sleb128	3
      0005FE 01                    1052 	.db	1
      0005FF 09                    1053 	.db	9
      000600 00 07                 1054 	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
      000602 03                    1055 	.db	3
      000603 02                    1056 	.sleb128	2
      000604 01                    1057 	.db	1
      000605 09                    1058 	.db	9
      000606 00 08                 1059 	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
      000608 03                    1060 	.db	3
      000609 02                    1061 	.sleb128	2
      00060A 01                    1062 	.db	1
      00060B 09                    1063 	.db	9
      00060C 00 08                 1064 	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
      00060E 03                    1065 	.db	3
      00060F 03                    1066 	.sleb128	3
      000610 01                    1067 	.db	1
      000611 09                    1068 	.db	9
      000612 00 31                 1069 	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
      000614 03                    1070 	.db	3
      000615 01                    1071 	.sleb128	1
      000616 01                    1072 	.db	1
      000617 09                    1073 	.db	9
      000618 00 2E                 1074 	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
      00061A 03                    1075 	.db	3
      00061B 02                    1076 	.sleb128	2
      00061C 01                    1077 	.db	1
      00061D 09                    1078 	.db	9
      00061E 00 51                 1079 	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
      000620 03                    1080 	.db	3
      000621 02                    1081 	.sleb128	2
      000622 01                    1082 	.db	1
      000623 09                    1083 	.db	9
      000624 00 12                 1084 	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
      000626 03                    1085 	.db	3
      000627 02                    1086 	.sleb128	2
      000628 01                    1087 	.db	1
      000629 09                    1088 	.db	9
      00062A 00 0C                 1089 	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
      00062C 03                    1090 	.db	3
      00062D 03                    1091 	.sleb128	3
      00062E 01                    1092 	.db	1
      00062F 09                    1093 	.db	9
      000630 00 08                 1094 	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
      000632 03                    1095 	.db	3
      000633 02                    1096 	.sleb128	2
      000634 01                    1097 	.db	1
      000635 09                    1098 	.db	9
      000636 00 08                 1099 	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
      000638 03                    1100 	.db	3
      000639 02                    1101 	.sleb128	2
      00063A 01                    1102 	.db	1
      00063B 09                    1103 	.db	9
      00063C 00 0E                 1104 	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
      00063E 03                    1105 	.db	3
      00063F 7C                    1106 	.sleb128	-4
      000640 01                    1107 	.db	1
      000641 09                    1108 	.db	9
      000642 00 03                 1109 	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
      000644 03                    1110 	.db	3
      000645 07                    1111 	.sleb128	7
      000646 01                    1112 	.db	1
      000647 09                    1113 	.db	9
      000648 00 08                 1114 	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
      00064A 03                    1115 	.db	3
      00064B 03                    1116 	.sleb128	3
      00064C 01                    1117 	.db	1
      00064D 09                    1118 	.db	9
      00064E 00 07                 1119 	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
      000650 03                    1120 	.db	3
      000651 05                    1121 	.sleb128	5
      000652 01                    1122 	.db	1
      000653 09                    1123 	.db	9
      000654 00 05                 1124 	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
      000656 03                    1125 	.db	3
      000657 71                    1126 	.sleb128	-15
      000658 01                    1127 	.db	1
      000659 09                    1128 	.db	9
      00065A 00 03                 1129 	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
      00065C 03                    1130 	.db	3
      00065D 11                    1131 	.sleb128	17
      00065E 01                    1132 	.db	1
      00065F 09                    1133 	.db	9
      000660 00 08                 1134 	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
      000662 03                    1135 	.db	3
      000663 03                    1136 	.sleb128	3
      000664 01                    1137 	.db	1
      000665 09                    1138 	.db	9
      000666 00 07                 1139 	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
      000668 03                    1140 	.db	3
      000669 05                    1141 	.sleb128	5
      00066A 01                    1142 	.db	1
      00066B 09                    1143 	.db	9
      00066C 00 05                 1144 	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
      00066E 03                    1145 	.db	3
      00066F 4C                    1146 	.sleb128	-52
      000670 01                    1147 	.db	1
      000671 09                    1148 	.db	9
      000672 00 03                 1149 	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
      000674 03                    1150 	.db	3
      000675 38                    1151 	.sleb128	56
      000676 01                    1152 	.db	1
      000677 09                    1153 	.db	9
      000678 00 04                 1154 	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
      00067A 03                    1155 	.db	3
      00067B 03                    1156 	.sleb128	3
      00067C 01                    1157 	.db	1
      00067D 09                    1158 	.db	9
      00067E 00 07                 1159 	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
      000680 03                    1160 	.db	3
      000681 04                    1161 	.sleb128	4
      000682 01                    1162 	.db	1
      000683 09                    1163 	.db	9
      000684 00 0D                 1164 	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
      000686 03                    1165 	.db	3
      000687 02                    1166 	.sleb128	2
      000688 01                    1167 	.db	1
      000689 09                    1168 	.db	9
      00068A 00 03                 1169 	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
      00068C 00                    1170 	.db	0
      00068D 01                    1171 	.uleb128	1
      00068E 01                    1172 	.db	1
      00068F 00                    1173 	.db	0
      000690 05                    1174 	.uleb128	5
      000691 02                    1175 	.db	2
      000692 00 00 84 05           1176 	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
      000696 03                    1177 	.db	3
      000697 B7 01                 1178 	.sleb128	183
      000699 01                    1179 	.db	1
      00069A 09                    1180 	.db	9
      00069B 00 00                 1181 	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
      00069D 03                    1182 	.db	3
      00069E 05                    1183 	.sleb128	5
      00069F 01                    1184 	.db	1
      0006A0 09                    1185 	.db	9
      0006A1 00 03                 1186 	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
      0006A3 03                    1187 	.db	3
      0006A4 7D                    1188 	.sleb128	-3
      0006A5 01                    1189 	.db	1
      0006A6 09                    1190 	.db	9
      0006A7 00 04                 1191 	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
      0006A9 03                    1192 	.db	3
      0006AA 03                    1193 	.sleb128	3
      0006AB 01                    1194 	.db	1
      0006AC 09                    1195 	.db	9
      0006AD 00 07                 1196 	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
      0006AF 03                    1197 	.db	3
      0006B0 05                    1198 	.sleb128	5
      0006B1 01                    1199 	.db	1
      0006B2 09                    1200 	.db	9
      0006B3 00 05                 1201 	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
      0006B5 03                    1202 	.db	3
      0006B6 02                    1203 	.sleb128	2
      0006B7 01                    1204 	.db	1
      0006B8 09                    1205 	.db	9
      0006B9 00 01                 1206 	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
      0006BB 00                    1207 	.db	0
      0006BC 01                    1208 	.uleb128	1
      0006BD 01                    1209 	.db	1
      0006BE 00                    1210 	.db	0
      0006BF 05                    1211 	.uleb128	5
      0006C0 02                    1212 	.db	2
      0006C1 00 00 84 19           1213 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
      0006C5 03                    1214 	.db	3
      0006C6 D2 01                 1215 	.sleb128	210
      0006C8 01                    1216 	.db	1
      0006C9 09                    1217 	.db	9
      0006CA 00 01                 1218 	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
      0006CC 03                    1219 	.db	3
      0006CD 09                    1220 	.sleb128	9
      0006CE 01                    1221 	.db	1
      0006CF 09                    1222 	.db	9
      0006D0 00 02                 1223 	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
      0006D2 03                    1224 	.db	3
      0006D3 02                    1225 	.sleb128	2
      0006D4 01                    1226 	.db	1
      0006D5 09                    1227 	.db	9
      0006D6 00 12                 1228 	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
      0006D8 03                    1229 	.db	3
      0006D9 05                    1230 	.sleb128	5
      0006DA 01                    1231 	.db	1
      0006DB 09                    1232 	.db	9
      0006DC 00 0B                 1233 	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
      0006DE 03                    1234 	.db	3
      0006DF 04                    1235 	.sleb128	4
      0006E0 01                    1236 	.db	1
      0006E1 09                    1237 	.db	9
      0006E2 00 08                 1238 	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
      0006E4 03                    1239 	.db	3
      0006E5 79                    1240 	.sleb128	-7
      0006E6 01                    1241 	.db	1
      0006E7 09                    1242 	.db	9
      0006E8 00 04                 1243 	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
      0006EA 03                    1244 	.db	3
      0006EB 03                    1245 	.sleb128	3
      0006EC 01                    1246 	.db	1
      0006ED 09                    1247 	.db	9
      0006EE 00 04                 1248 	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
      0006F0 03                    1249 	.db	3
      0006F1 02                    1250 	.sleb128	2
      0006F2 01                    1251 	.db	1
      0006F3 09                    1252 	.db	9
      0006F4 00 0B                 1253 	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
      0006F6 03                    1254 	.db	3
      0006F7 02                    1255 	.sleb128	2
      0006F8 01                    1256 	.db	1
      0006F9 09                    1257 	.db	9
      0006FA 00 03                 1258 	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
      0006FC 03                    1259 	.db	3
      0006FD 02                    1260 	.sleb128	2
      0006FE 01                    1261 	.db	1
      0006FF 09                    1262 	.db	9
      000700 00 0B                 1263 	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
      000702 03                    1264 	.db	3
      000703 04                    1265 	.sleb128	4
      000704 01                    1266 	.db	1
      000705 09                    1267 	.db	9
      000706 00 0A                 1268 	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
      000708 03                    1269 	.db	3
      000709 08                    1270 	.sleb128	8
      00070A 01                    1271 	.db	1
      00070B 09                    1272 	.db	9
      00070C 00 02                 1273 	.dw	Sstm8s_uart1$UART1_ITConfig$138-Sstm8s_uart1$UART1_ITConfig$136
      00070E 03                    1274 	.db	3
      00070F 7E                    1275 	.sleb128	-2
      000710 01                    1276 	.db	1
      000711 09                    1277 	.db	9
      000712 00 04                 1278 	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$138
      000714 03                    1279 	.db	3
      000715 02                    1280 	.sleb128	2
      000716 01                    1281 	.db	1
      000717 09                    1282 	.db	9
      000718 00 0A                 1283 	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
      00071A 03                    1284 	.db	3
      00071B 02                    1285 	.sleb128	2
      00071C 01                    1286 	.db	1
      00071D 09                    1287 	.db	9
      00071E 00 03                 1288 	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
      000720 03                    1289 	.db	3
      000721 02                    1290 	.sleb128	2
      000722 01                    1291 	.db	1
      000723 09                    1292 	.db	9
      000724 00 0A                 1293 	.dw	Sstm8s_uart1$UART1_ITConfig$147-Sstm8s_uart1$UART1_ITConfig$144
      000726 03                    1294 	.db	3
      000727 04                    1295 	.sleb128	4
      000728 01                    1296 	.db	1
      000729 09                    1297 	.db	9
      00072A 00 08                 1298 	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$147
      00072C 03                    1299 	.db	3
      00072D 04                    1300 	.sleb128	4
      00072E 01                    1301 	.db	1
      00072F 09                    1302 	.db	9
      000730 00 02                 1303 	.dw	1+Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
      000732 00                    1304 	.db	0
      000733 01                    1305 	.uleb128	1
      000734 01                    1306 	.db	1
      000735 00                    1307 	.db	0
      000736 05                    1308 	.uleb128	5
      000737 02                    1309 	.db	2
      000738 00 00 84 93           1310 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$153)
      00073C 03                    1311 	.db	3
      00073D C2 03                 1312 	.sleb128	450
      00073F 01                    1313 	.db	1
      000740 09                    1314 	.db	9
      000741 00 00                 1315 	.dw	Sstm8s_uart1$UART1_ReceiveData8$155-Sstm8s_uart1$UART1_ReceiveData8$153
      000743 03                    1316 	.db	3
      000744 02                    1317 	.sleb128	2
      000745 01                    1318 	.db	1
      000746 09                    1319 	.db	9
      000747 00 03                 1320 	.dw	Sstm8s_uart1$UART1_ReceiveData8$156-Sstm8s_uart1$UART1_ReceiveData8$155
      000749 03                    1321 	.db	3
      00074A 01                    1322 	.sleb128	1
      00074B 01                    1323 	.db	1
      00074C 09                    1324 	.db	9
      00074D 00 01                 1325 	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$157-Sstm8s_uart1$UART1_ReceiveData8$156
      00074F 00                    1326 	.db	0
      000750 01                    1327 	.uleb128	1
      000751 01                    1328 	.db	1
      000752 00                    1329 	.db	0
      000753 05                    1330 	.uleb128	5
      000754 02                    1331 	.db	2
      000755 00 00 84 97           1332 	.dw	0,(Sstm8s_uart1$UART1_SendData8$159)
      000759 03                    1333 	.db	3
      00075A D9 03                 1334 	.sleb128	473
      00075C 01                    1335 	.db	1
      00075D 09                    1336 	.db	9
      00075E 00 00                 1337 	.dw	Sstm8s_uart1$UART1_SendData8$161-Sstm8s_uart1$UART1_SendData8$159
      000760 03                    1338 	.db	3
      000761 03                    1339 	.sleb128	3
      000762 01                    1340 	.db	1
      000763 09                    1341 	.db	9
      000764 00 06                 1342 	.dw	Sstm8s_uart1$UART1_SendData8$162-Sstm8s_uart1$UART1_SendData8$161
      000766 03                    1343 	.db	3
      000767 01                    1344 	.sleb128	1
      000768 01                    1345 	.db	1
      000769 09                    1346 	.db	9
      00076A 00 01                 1347 	.dw	1+Sstm8s_uart1$UART1_SendData8$163-Sstm8s_uart1$UART1_SendData8$162
      00076C 00                    1348 	.db	0
      00076D 01                    1349 	.uleb128	1
      00076E 01                    1350 	.db	1
      00076F 00                    1351 	.db	0
      000770 05                    1352 	.uleb128	5
      000771 02                    1353 	.db	2
      000772 00 00 84 9E           1354 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$165)
      000776 03                    1355 	.db	3
      000777 B7 04                 1356 	.sleb128	567
      000779 01                    1357 	.db	1
      00077A 09                    1358 	.db	9
      00077B 00 02                 1359 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$168-Sstm8s_uart1$UART1_GetFlagStatus$165
      00077D 03                    1360 	.db	3
      00077E 09                    1361 	.sleb128	9
      00077F 01                    1362 	.db	1
      000780 09                    1363 	.db	9
      000781 00 04                 1364 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$169-Sstm8s_uart1$UART1_GetFlagStatus$168
      000783 03                    1365 	.db	3
      000784 02                    1366 	.sleb128	2
      000785 01                    1367 	.db	1
      000786 09                    1368 	.db	9
      000787 00 04                 1369 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$170-Sstm8s_uart1$UART1_GetFlagStatus$169
      000789 03                    1370 	.db	3
      00078A 7E                    1371 	.sleb128	-2
      00078B 01                    1372 	.db	1
      00078C 09                    1373 	.db	9
      00078D 00 07                 1374 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$173-Sstm8s_uart1$UART1_GetFlagStatus$170
      00078F 03                    1375 	.db	3
      000790 02                    1376 	.sleb128	2
      000791 01                    1377 	.db	1
      000792 09                    1378 	.db	9
      000793 00 07                 1379 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$175-Sstm8s_uart1$UART1_GetFlagStatus$173
      000795 03                    1380 	.db	3
      000796 03                    1381 	.sleb128	3
      000797 01                    1382 	.db	1
      000798 09                    1383 	.db	9
      000799 00 05                 1384 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$178-Sstm8s_uart1$UART1_GetFlagStatus$175
      00079B 03                    1385 	.db	3
      00079C 05                    1386 	.sleb128	5
      00079D 01                    1387 	.db	1
      00079E 09                    1388 	.db	9
      00079F 00 03                 1389 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$180-Sstm8s_uart1$UART1_GetFlagStatus$178
      0007A1 03                    1390 	.db	3
      0007A2 03                    1391 	.sleb128	3
      0007A3 01                    1392 	.db	1
      0007A4 09                    1393 	.db	9
      0007A5 00 07                 1394 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$183-Sstm8s_uart1$UART1_GetFlagStatus$180
      0007A7 03                    1395 	.db	3
      0007A8 02                    1396 	.sleb128	2
      0007A9 01                    1397 	.db	1
      0007AA 09                    1398 	.db	9
      0007AB 00 07                 1399 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$185-Sstm8s_uart1$UART1_GetFlagStatus$183
      0007AD 03                    1400 	.db	3
      0007AE 03                    1401 	.sleb128	3
      0007AF 01                    1402 	.db	1
      0007B0 09                    1403 	.db	9
      0007B1 00 04                 1404 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$188-Sstm8s_uart1$UART1_GetFlagStatus$185
      0007B3 03                    1405 	.db	3
      0007B4 05                    1406 	.sleb128	5
      0007B5 01                    1407 	.db	1
      0007B6 09                    1408 	.db	9
      0007B7 00 03                 1409 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$191-Sstm8s_uart1$UART1_GetFlagStatus$188
      0007B9 03                    1410 	.db	3
      0007BA 05                    1411 	.sleb128	5
      0007BB 01                    1412 	.db	1
      0007BC 09                    1413 	.db	9
      0007BD 00 07                 1414 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$193-Sstm8s_uart1$UART1_GetFlagStatus$191
      0007BF 03                    1415 	.db	3
      0007C0 03                    1416 	.sleb128	3
      0007C1 01                    1417 	.db	1
      0007C2 09                    1418 	.db	9
      0007C3 00 04                 1419 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$196-Sstm8s_uart1$UART1_GetFlagStatus$193
      0007C5 03                    1420 	.db	3
      0007C6 05                    1421 	.sleb128	5
      0007C7 01                    1422 	.db	1
      0007C8 09                    1423 	.db	9
      0007C9 00 01                 1424 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$198-Sstm8s_uart1$UART1_GetFlagStatus$196
      0007CB 03                    1425 	.db	3
      0007CC 04                    1426 	.sleb128	4
      0007CD 01                    1427 	.db	1
      0007CE 09                    1428 	.db	9
      0007CF 00 00                 1429 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$199-Sstm8s_uart1$UART1_GetFlagStatus$198
      0007D1 03                    1430 	.db	3
      0007D2 01                    1431 	.sleb128	1
      0007D3 01                    1432 	.db	1
      0007D4 09                    1433 	.db	9
      0007D5 00 03                 1434 	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$201-Sstm8s_uart1$UART1_GetFlagStatus$199
      0007D7 00                    1435 	.db	0
      0007D8 01                    1436 	.uleb128	1
      0007D9 01                    1437 	.db	1
      0007DA 00                    1438 	.db	0
      0007DB 05                    1439 	.uleb128	5
      0007DC 02                    1440 	.db	2
      0007DD 00 00 84 E2           1441 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$203)
      0007E1 03                    1442 	.db	3
      0007E2 A2 05                 1443 	.sleb128	674
      0007E4 01                    1444 	.db	1
      0007E5 09                    1445 	.db	9
      0007E6 00 02                 1446 	.dw	Sstm8s_uart1$UART1_GetITStatus$206-Sstm8s_uart1$UART1_GetITStatus$203
      0007E8 03                    1447 	.db	3
      0007E9 0C                    1448 	.sleb128	12
      0007EA 01                    1449 	.db	1
      0007EB 09                    1450 	.db	9
      0007EC 00 13                 1451 	.dw	Sstm8s_uart1$UART1_GetITStatus$209-Sstm8s_uart1$UART1_GetITStatus$206
      0007EE 03                    1452 	.db	3
      0007EF 02                    1453 	.sleb128	2
      0007F0 01                    1454 	.db	1
      0007F1 09                    1455 	.db	9
      0007F2 00 04                 1456 	.dw	Sstm8s_uart1$UART1_GetITStatus$210-Sstm8s_uart1$UART1_GetITStatus$209
      0007F4 03                    1457 	.db	3
      0007F5 02                    1458 	.sleb128	2
      0007F6 01                    1459 	.db	1
      0007F7 09                    1460 	.db	9
      0007F8 00 0E                 1461 	.dw	Sstm8s_uart1$UART1_GetITStatus$213-Sstm8s_uart1$UART1_GetITStatus$210
      0007FA 03                    1462 	.db	3
      0007FB 04                    1463 	.sleb128	4
      0007FC 01                    1464 	.db	1
      0007FD 09                    1465 	.db	9
      0007FE 00 0A                 1466 	.dw	Sstm8s_uart1$UART1_GetITStatus$216-Sstm8s_uart1$UART1_GetITStatus$213
      000800 03                    1467 	.db	3
      000801 03                    1468 	.sleb128	3
      000802 01                    1469 	.db	1
      000803 09                    1470 	.db	9
      000804 00 06                 1471 	.dw	Sstm8s_uart1$UART1_GetITStatus$217-Sstm8s_uart1$UART1_GetITStatus$216
      000806 03                    1472 	.db	3
      000807 03                    1473 	.sleb128	3
      000808 01                    1474 	.db	1
      000809 09                    1475 	.db	9
      00080A 00 0B                 1476 	.dw	Sstm8s_uart1$UART1_GetITStatus$219-Sstm8s_uart1$UART1_GetITStatus$217
      00080C 03                    1477 	.db	3
      00080D 03                    1478 	.sleb128	3
      00080E 01                    1479 	.db	1
      00080F 09                    1480 	.db	9
      000810 00 05                 1481 	.dw	Sstm8s_uart1$UART1_GetITStatus$222-Sstm8s_uart1$UART1_GetITStatus$219
      000812 03                    1482 	.db	3
      000813 05                    1483 	.sleb128	5
      000814 01                    1484 	.db	1
      000815 09                    1485 	.db	9
      000816 00 04                 1486 	.dw	Sstm8s_uart1$UART1_GetITStatus$224-Sstm8s_uart1$UART1_GetITStatus$222
      000818 03                    1487 	.db	3
      000819 04                    1488 	.sleb128	4
      00081A 01                    1489 	.db	1
      00081B 09                    1490 	.db	9
      00081C 00 07                 1491 	.dw	Sstm8s_uart1$UART1_GetITStatus$227-Sstm8s_uart1$UART1_GetITStatus$224
      00081E 03                    1492 	.db	3
      00081F 03                    1493 	.sleb128	3
      000820 01                    1494 	.db	1
      000821 09                    1495 	.db	9
      000822 00 06                 1496 	.dw	Sstm8s_uart1$UART1_GetITStatus$228-Sstm8s_uart1$UART1_GetITStatus$227
      000824 03                    1497 	.db	3
      000825 02                    1498 	.sleb128	2
      000826 01                    1499 	.db	1
      000827 09                    1500 	.db	9
      000828 00 0B                 1501 	.dw	Sstm8s_uart1$UART1_GetITStatus$230-Sstm8s_uart1$UART1_GetITStatus$228
      00082A 03                    1502 	.db	3
      00082B 03                    1503 	.sleb128	3
      00082C 01                    1504 	.db	1
      00082D 09                    1505 	.db	9
      00082E 00 04                 1506 	.dw	Sstm8s_uart1$UART1_GetITStatus$233-Sstm8s_uart1$UART1_GetITStatus$230
      000830 03                    1507 	.db	3
      000831 05                    1508 	.sleb128	5
      000832 01                    1509 	.db	1
      000833 09                    1510 	.db	9
      000834 00 03                 1511 	.dw	Sstm8s_uart1$UART1_GetITStatus$236-Sstm8s_uart1$UART1_GetITStatus$233
      000836 03                    1512 	.db	3
      000837 06                    1513 	.sleb128	6
      000838 01                    1514 	.db	1
      000839 09                    1515 	.db	9
      00083A 00 06                 1516 	.dw	Sstm8s_uart1$UART1_GetITStatus$237-Sstm8s_uart1$UART1_GetITStatus$236
      00083C 03                    1517 	.db	3
      00083D 02                    1518 	.sleb128	2
      00083E 01                    1519 	.db	1
      00083F 09                    1520 	.db	9
      000840 00 0B                 1521 	.dw	Sstm8s_uart1$UART1_GetITStatus$239-Sstm8s_uart1$UART1_GetITStatus$237
      000842 03                    1522 	.db	3
      000843 03                    1523 	.sleb128	3
      000844 01                    1524 	.db	1
      000845 09                    1525 	.db	9
      000846 00 04                 1526 	.dw	Sstm8s_uart1$UART1_GetITStatus$242-Sstm8s_uart1$UART1_GetITStatus$239
      000848 03                    1527 	.db	3
      000849 05                    1528 	.sleb128	5
      00084A 01                    1529 	.db	1
      00084B 09                    1530 	.db	9
      00084C 00 01                 1531 	.dw	Sstm8s_uart1$UART1_GetITStatus$244-Sstm8s_uart1$UART1_GetITStatus$242
      00084E 03                    1532 	.db	3
      00084F 05                    1533 	.sleb128	5
      000850 01                    1534 	.db	1
      000851 09                    1535 	.db	9
      000852 00 00                 1536 	.dw	Sstm8s_uart1$UART1_GetITStatus$245-Sstm8s_uart1$UART1_GetITStatus$244
      000854 03                    1537 	.db	3
      000855 01                    1538 	.sleb128	1
      000856 01                    1539 	.db	1
      000857 09                    1540 	.db	9
      000858 00 03                 1541 	.dw	1+Sstm8s_uart1$UART1_GetITStatus$247-Sstm8s_uart1$UART1_GetITStatus$245
      00085A 00                    1542 	.db	0
      00085B 01                    1543 	.uleb128	1
      00085C 01                    1544 	.db	1
      00085D 00                    1545 	.db	0
      00085E 05                    1546 	.uleb128	5
      00085F 02                    1547 	.db	2
      000860 00 00 85 65           1548 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$249)
      000864 03                    1549 	.db	3
      000865 86 06                 1550 	.sleb128	774
      000867 01                    1551 	.db	1
      000868 09                    1552 	.db	9
      000869 00 00                 1553 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$251-Sstm8s_uart1$UART1_ClearITPendingBit$249
      00086B 03                    1554 	.db	3
      00086C 05                    1555 	.sleb128	5
      00086D 01                    1556 	.db	1
      00086E 09                    1557 	.db	9
      00086F 00 07                 1558 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$254-Sstm8s_uart1$UART1_ClearITPendingBit$251
      000871 03                    1559 	.db	3
      000872 02                    1560 	.sleb128	2
      000873 01                    1561 	.db	1
      000874 09                    1562 	.db	9
      000875 00 06                 1563 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$257-Sstm8s_uart1$UART1_ClearITPendingBit$254
      000877 03                    1564 	.db	3
      000878 05                    1565 	.sleb128	5
      000879 01                    1566 	.db	1
      00087A 09                    1567 	.db	9
      00087B 00 04                 1568 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$259-Sstm8s_uart1$UART1_ClearITPendingBit$257
      00087D 03                    1569 	.db	3
      00087E 02                    1570 	.sleb128	2
      00087F 01                    1571 	.db	1
      000880 09                    1572 	.db	9
      000881 00 01                 1573 	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$260-Sstm8s_uart1$UART1_ClearITPendingBit$259
      000883 00                    1574 	.db	0
      000884 01                    1575 	.uleb128	1
      000885 01                    1576 	.db	1
      000886                       1577 Ldebug_line_end:
                                   1578 
                                   1579 	.area .debug_loc (NOLOAD)
      000264                       1580 Ldebug_loc_start:
      000264 00 00 85 6C           1581 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      000268 00 00 85 77           1582 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$261)
      00026C 00 02                 1583 	.dw	2
      00026E 78                    1584 	.db	120
      00026F 01                    1585 	.sleb128	1
      000270 00 00 85 65           1586 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
      000274 00 00 85 6C           1587 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      000278 00 02                 1588 	.dw	2
      00027A 78                    1589 	.db	120
      00027B 01                    1590 	.sleb128	1
      00027C 00 00 00 00           1591 	.dw	0,0
      000280 00 00 00 00           1592 	.dw	0,0
      000284 00 00 85 64           1593 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      000288 00 00 85 65           1594 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$248)
      00028C 00 02                 1595 	.dw	2
      00028E 78                    1596 	.db	120
      00028F 01                    1597 	.sleb128	1
      000290 00 00 85 34           1598 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      000294 00 00 85 64           1599 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      000298 00 02                 1600 	.dw	2
      00029A 78                    1601 	.db	120
      00029B 05                    1602 	.sleb128	5
      00029C 00 00 85 13           1603 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      0002A0 00 00 85 34           1604 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      0002A4 00 02                 1605 	.dw	2
      0002A6 78                    1606 	.db	120
      0002A7 05                    1607 	.sleb128	5
      0002A8 00 00 85 01           1608 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      0002AC 00 00 85 13           1609 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      0002B0 00 02                 1610 	.dw	2
      0002B2 78                    1611 	.db	120
      0002B3 05                    1612 	.sleb128	5
      0002B4 00 00 84 FC           1613 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      0002B8 00 00 85 01           1614 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      0002BC 00 02                 1615 	.dw	2
      0002BE 78                    1616 	.db	120
      0002BF 06                    1617 	.sleb128	6
      0002C0 00 00 84 EF           1618 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      0002C4 00 00 84 FC           1619 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      0002C8 00 02                 1620 	.dw	2
      0002CA 78                    1621 	.db	120
      0002CB 05                    1622 	.sleb128	5
      0002CC 00 00 84 EA           1623 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      0002D0 00 00 84 EF           1624 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      0002D4 00 02                 1625 	.dw	2
      0002D6 78                    1626 	.db	120
      0002D7 06                    1627 	.sleb128	6
      0002D8 00 00 84 E4           1628 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      0002DC 00 00 84 EA           1629 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      0002E0 00 02                 1630 	.dw	2
      0002E2 78                    1631 	.db	120
      0002E3 05                    1632 	.sleb128	5
      0002E4 00 00 84 E2           1633 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
      0002E8 00 00 84 E4           1634 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      0002EC 00 02                 1635 	.dw	2
      0002EE 78                    1636 	.db	120
      0002EF 01                    1637 	.sleb128	1
      0002F0 00 00 00 00           1638 	.dw	0,0
      0002F4 00 00 00 00           1639 	.dw	0,0
      0002F8 00 00 84 E1           1640 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      0002FC 00 00 84 E2           1641 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$202)
      000300 00 02                 1642 	.dw	2
      000302 78                    1643 	.db	120
      000303 01                    1644 	.sleb128	1
      000304 00 00 84 C5           1645 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      000308 00 00 84 E1           1646 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      00030C 00 02                 1647 	.dw	2
      00030E 78                    1648 	.db	120
      00030F 04                    1649 	.sleb128	4
      000310 00 00 84 AF           1650 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      000314 00 00 84 C5           1651 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      000318 00 02                 1652 	.dw	2
      00031A 78                    1653 	.db	120
      00031B 04                    1654 	.sleb128	4
      00031C 00 00 84 A0           1655 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000320 00 00 84 AF           1656 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      000324 00 02                 1657 	.dw	2
      000326 78                    1658 	.db	120
      000327 04                    1659 	.sleb128	4
      000328 00 00 84 9E           1660 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
      00032C 00 00 84 A0           1661 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000330 00 02                 1662 	.dw	2
      000332 78                    1663 	.db	120
      000333 01                    1664 	.sleb128	1
      000334 00 00 00 00           1665 	.dw	0,0
      000338 00 00 00 00           1666 	.dw	0,0
      00033C 00 00 84 97           1667 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
      000340 00 00 84 9E           1668 	.dw	0,(Sstm8s_uart1$UART1_SendData8$164)
      000344 00 02                 1669 	.dw	2
      000346 78                    1670 	.db	120
      000347 01                    1671 	.sleb128	1
      000348 00 00 00 00           1672 	.dw	0,0
      00034C 00 00 00 00           1673 	.dw	0,0
      000350 00 00 84 93           1674 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
      000354 00 00 84 97           1675 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$158)
      000358 00 02                 1676 	.dw	2
      00035A 78                    1677 	.db	120
      00035B 01                    1678 	.sleb128	1
      00035C 00 00 00 00           1679 	.dw	0,0
      000360 00 00 00 00           1680 	.dw	0,0
      000364 00 00 84 92           1681 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      000368 00 00 84 93           1682 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      00036C 00 02                 1683 	.dw	2
      00036E 78                    1684 	.db	120
      00036F 01                    1685 	.sleb128	1
      000370 00 00 84 41           1686 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      000374 00 00 84 92           1687 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      000378 00 02                 1688 	.dw	2
      00037A 78                    1689 	.db	120
      00037B 03                    1690 	.sleb128	3
      00037C 00 00 84 39           1691 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000380 00 00 84 41           1692 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      000384 00 02                 1693 	.dw	2
      000386 78                    1694 	.db	120
      000387 03                    1695 	.sleb128	3
      000388 00 00 84 26           1696 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      00038C 00 00 84 39           1697 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000390 00 02                 1698 	.dw	2
      000392 78                    1699 	.db	120
      000393 03                    1700 	.sleb128	3
      000394 00 00 84 21           1701 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      000398 00 00 84 26           1702 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      00039C 00 02                 1703 	.dw	2
      00039E 78                    1704 	.db	120
      00039F 04                    1705 	.sleb128	4
      0003A0 00 00 84 1A           1706 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      0003A4 00 00 84 21           1707 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      0003A8 00 02                 1708 	.dw	2
      0003AA 78                    1709 	.db	120
      0003AB 03                    1710 	.sleb128	3
      0003AC 00 00 84 19           1711 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      0003B0 00 00 84 1A           1712 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      0003B4 00 02                 1713 	.dw	2
      0003B6 78                    1714 	.db	120
      0003B7 01                    1715 	.sleb128	1
      0003B8 00 00 00 00           1716 	.dw	0,0
      0003BC 00 00 00 00           1717 	.dw	0,0
      0003C0 00 00 84 05           1718 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      0003C4 00 00 84 19           1719 	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
      0003C8 00 02                 1720 	.dw	2
      0003CA 78                    1721 	.db	120
      0003CB 01                    1722 	.sleb128	1
      0003CC 00 00 00 00           1723 	.dw	0,0
      0003D0 00 00 00 00           1724 	.dw	0,0
      0003D4 00 00 84 04           1725 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0003D8 00 00 84 05           1726 	.dw	0,(Sstm8s_uart1$UART1_Init$98)
      0003DC 00 02                 1727 	.dw	2
      0003DE 78                    1728 	.db	120
      0003DF 01                    1729 	.sleb128	1
      0003E0 00 00 83 FD           1730 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0003E4 00 00 84 04           1731 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0003E8 00 02                 1732 	.dw	2
      0003EA 78                    1733 	.db	120
      0003EB 12                    1734 	.sleb128	18
      0003EC 00 00 83 F6           1735 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      0003F0 00 00 83 FD           1736 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0003F4 00 02                 1737 	.dw	2
      0003F6 78                    1738 	.db	120
      0003F7 13                    1739 	.sleb128	19
      0003F8 00 00 83 D9           1740 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      0003FC 00 00 83 F6           1741 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      000400 00 02                 1742 	.dw	2
      000402 78                    1743 	.db	120
      000403 12                    1744 	.sleb128	18
      000404 00 00 83 D4           1745 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      000408 00 00 83 D9           1746 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      00040C 00 02                 1747 	.dw	2
      00040E 78                    1748 	.db	120
      00040F 13                    1749 	.sleb128	19
      000410 00 00 83 C2           1750 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      000414 00 00 83 D4           1751 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      000418 00 02                 1752 	.dw	2
      00041A 78                    1753 	.db	120
      00041B 12                    1754 	.sleb128	18
      00041C 00 00 83 BD           1755 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      000420 00 00 83 C2           1756 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      000424 00 02                 1757 	.dw	2
      000426 78                    1758 	.db	120
      000427 13                    1759 	.sleb128	19
      000428 00 00 83 75           1760 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      00042C 00 00 83 BD           1761 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      000430 00 02                 1762 	.dw	2
      000432 78                    1763 	.db	120
      000433 12                    1764 	.sleb128	18
      000434 00 00 83 70           1765 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      000438 00 00 83 75           1766 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      00043C 00 02                 1767 	.dw	2
      00043E 78                    1768 	.db	120
      00043F 1A                    1769 	.sleb128	26
      000440 00 00 83 6E           1770 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000444 00 00 83 70           1771 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      000448 00 02                 1772 	.dw	2
      00044A 78                    1773 	.db	120
      00044B 18                    1774 	.sleb128	24
      00044C 00 00 83 6D           1775 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      000450 00 00 83 6E           1776 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000454 00 02                 1777 	.dw	2
      000456 78                    1778 	.db	120
      000457 16                    1779 	.sleb128	22
      000458 00 00 83 6B           1780 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      00045C 00 00 83 6D           1781 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      000460 00 02                 1782 	.dw	2
      000462 78                    1783 	.db	120
      000463 15                    1784 	.sleb128	21
      000464 00 00 83 69           1785 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      000468 00 00 83 6B           1786 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      00046C 00 02                 1787 	.dw	2
      00046E 78                    1788 	.db	120
      00046F 14                    1789 	.sleb128	20
      000470 00 00 83 67           1790 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      000474 00 00 83 69           1791 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      000478 00 02                 1792 	.dw	2
      00047A 78                    1793 	.db	120
      00047B 13                    1794 	.sleb128	19
      00047C 00 00 83 42           1795 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000480 00 00 83 67           1796 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      000484 00 02                 1797 	.dw	2
      000486 78                    1798 	.db	120
      000487 12                    1799 	.sleb128	18
      000488 00 00 83 3D           1800 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      00048C 00 00 83 42           1801 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000490 00 02                 1802 	.dw	2
      000492 78                    1803 	.db	120
      000493 1A                    1804 	.sleb128	26
      000494 00 00 83 3B           1805 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      000498 00 00 83 3D           1806 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      00049C 00 02                 1807 	.dw	2
      00049E 78                    1808 	.db	120
      00049F 19                    1809 	.sleb128	25
      0004A0 00 00 83 39           1810 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      0004A4 00 00 83 3B           1811 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      0004A8 00 02                 1812 	.dw	2
      0004AA 78                    1813 	.db	120
      0004AB 17                    1814 	.sleb128	23
      0004AC 00 00 83 37           1815 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      0004B0 00 00 83 39           1816 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      0004B4 00 02                 1817 	.dw	2
      0004B6 78                    1818 	.db	120
      0004B7 16                    1819 	.sleb128	22
      0004B8 00 00 83 34           1820 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      0004BC 00 00 83 37           1821 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      0004C0 00 02                 1822 	.dw	2
      0004C2 78                    1823 	.db	120
      0004C3 14                    1824 	.sleb128	20
      0004C4 00 00 83 28           1825 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0004C8 00 00 83 34           1826 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      0004CC 00 02                 1827 	.dw	2
      0004CE 78                    1828 	.db	120
      0004CF 12                    1829 	.sleb128	18
      0004D0 00 00 83 23           1830 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0004D4 00 00 83 28           1831 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0004D8 00 02                 1832 	.dw	2
      0004DA 78                    1833 	.db	120
      0004DB 1A                    1834 	.sleb128	26
      0004DC 00 00 83 21           1835 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0004E0 00 00 83 23           1836 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0004E4 00 02                 1837 	.dw	2
      0004E6 78                    1838 	.db	120
      0004E7 18                    1839 	.sleb128	24
      0004E8 00 00 83 1E           1840 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0004EC 00 00 83 21           1841 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0004F0 00 02                 1842 	.dw	2
      0004F2 78                    1843 	.db	120
      0004F3 16                    1844 	.sleb128	22
      0004F4 00 00 83 1B           1845 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0004F8 00 00 83 1E           1846 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0004FC 00 02                 1847 	.dw	2
      0004FE 78                    1848 	.db	120
      0004FF 14                    1849 	.sleb128	20
      000500 00 00 83 16           1850 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      000504 00 00 83 1B           1851 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      000508 00 02                 1852 	.dw	2
      00050A 78                    1853 	.db	120
      00050B 12                    1854 	.sleb128	18
      00050C 00 00 83 11           1855 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      000510 00 00 83 16           1856 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      000514 00 02                 1857 	.dw	2
      000516 78                    1858 	.db	120
      000517 1A                    1859 	.sleb128	26
      000518 00 00 83 0F           1860 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      00051C 00 00 83 11           1861 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      000520 00 02                 1862 	.dw	2
      000522 78                    1863 	.db	120
      000523 19                    1864 	.sleb128	25
      000524 00 00 83 0D           1865 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      000528 00 00 83 0F           1866 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      00052C 00 02                 1867 	.dw	2
      00052E 78                    1868 	.db	120
      00052F 17                    1869 	.sleb128	23
      000530 00 00 83 0B           1870 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      000534 00 00 83 0D           1871 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      000538 00 02                 1872 	.dw	2
      00053A 78                    1873 	.db	120
      00053B 16                    1874 	.sleb128	22
      00053C 00 00 83 08           1875 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      000540 00 00 83 0B           1876 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      000544 00 02                 1877 	.dw	2
      000546 78                    1878 	.db	120
      000547 14                    1879 	.sleb128	20
      000548 00 00 82 F2           1880 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      00054C 00 00 83 08           1881 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      000550 00 02                 1882 	.dw	2
      000552 78                    1883 	.db	120
      000553 12                    1884 	.sleb128	18
      000554 00 00 82 ED           1885 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      000558 00 00 82 F2           1886 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      00055C 00 02                 1887 	.dw	2
      00055E 78                    1888 	.db	120
      00055F 1A                    1889 	.sleb128	26
      000560 00 00 82 EB           1890 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      000564 00 00 82 ED           1891 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      000568 00 02                 1892 	.dw	2
      00056A 78                    1893 	.db	120
      00056B 18                    1894 	.sleb128	24
      00056C 00 00 82 E8           1895 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      000570 00 00 82 EB           1896 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      000574 00 02                 1897 	.dw	2
      000576 78                    1898 	.db	120
      000577 16                    1899 	.sleb128	22
      000578 00 00 82 E5           1900 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      00057C 00 00 82 E8           1901 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      000580 00 02                 1902 	.dw	2
      000582 78                    1903 	.db	120
      000583 14                    1904 	.sleb128	20
      000584 00 00 82 8A           1905 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      000588 00 00 82 E5           1906 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      00058C 00 02                 1907 	.dw	2
      00058E 78                    1908 	.db	120
      00058F 12                    1909 	.sleb128	18
      000590 00 00 82 88           1910 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      000594 00 00 82 8A           1911 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      000598 00 02                 1912 	.dw	2
      00059A 78                    1913 	.db	120
      00059B 01                    1914 	.sleb128	1
      00059C 00 00 00 00           1915 	.dw	0,0
      0005A0 00 00 00 00           1916 	.dw	0,0
      0005A4 00 00 82 5D           1917 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      0005A8 00 00 82 88           1918 	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
      0005AC 00 02                 1919 	.dw	2
      0005AE 78                    1920 	.db	120
      0005AF 01                    1921 	.sleb128	1
      0005B0 00 00 00 00           1922 	.dw	0,0
      0005B4 00 00 00 00           1923 	.dw	0,0
                                   1924 
                                   1925 	.area .debug_abbrev (NOLOAD)
      0001A0                       1926 Ldebug_abbrev:
      0001A0 09                    1927 	.uleb128	9
      0001A1 2E                    1928 	.uleb128	46
      0001A2 00                    1929 	.db	0
      0001A3 03                    1930 	.uleb128	3
      0001A4 08                    1931 	.uleb128	8
      0001A5 11                    1932 	.uleb128	17
      0001A6 01                    1933 	.uleb128	1
      0001A7 12                    1934 	.uleb128	18
      0001A8 01                    1935 	.uleb128	1
      0001A9 3F                    1936 	.uleb128	63
      0001AA 0C                    1937 	.uleb128	12
      0001AB 40                    1938 	.uleb128	64
      0001AC 06                    1939 	.uleb128	6
      0001AD 49                    1940 	.uleb128	73
      0001AE 13                    1941 	.uleb128	19
      0001AF 00                    1942 	.uleb128	0
      0001B0 00                    1943 	.uleb128	0
      0001B1 04                    1944 	.uleb128	4
      0001B2 05                    1945 	.uleb128	5
      0001B3 00                    1946 	.db	0
      0001B4 02                    1947 	.uleb128	2
      0001B5 0A                    1948 	.uleb128	10
      0001B6 03                    1949 	.uleb128	3
      0001B7 08                    1950 	.uleb128	8
      0001B8 49                    1951 	.uleb128	73
      0001B9 13                    1952 	.uleb128	19
      0001BA 00                    1953 	.uleb128	0
      0001BB 00                    1954 	.uleb128	0
      0001BC 03                    1955 	.uleb128	3
      0001BD 2E                    1956 	.uleb128	46
      0001BE 01                    1957 	.db	1
      0001BF 01                    1958 	.uleb128	1
      0001C0 13                    1959 	.uleb128	19
      0001C1 03                    1960 	.uleb128	3
      0001C2 08                    1961 	.uleb128	8
      0001C3 11                    1962 	.uleb128	17
      0001C4 01                    1963 	.uleb128	1
      0001C5 12                    1964 	.uleb128	18
      0001C6 01                    1965 	.uleb128	1
      0001C7 3F                    1966 	.uleb128	63
      0001C8 0C                    1967 	.uleb128	12
      0001C9 40                    1968 	.uleb128	64
      0001CA 06                    1969 	.uleb128	6
      0001CB 00                    1970 	.uleb128	0
      0001CC 00                    1971 	.uleb128	0
      0001CD 06                    1972 	.uleb128	6
      0001CE 34                    1973 	.uleb128	52
      0001CF 00                    1974 	.db	0
      0001D0 02                    1975 	.uleb128	2
      0001D1 0A                    1976 	.uleb128	10
      0001D2 03                    1977 	.uleb128	3
      0001D3 08                    1978 	.uleb128	8
      0001D4 49                    1979 	.uleb128	73
      0001D5 13                    1980 	.uleb128	19
      0001D6 00                    1981 	.uleb128	0
      0001D7 00                    1982 	.uleb128	0
      0001D8 0A                    1983 	.uleb128	10
      0001D9 2E                    1984 	.uleb128	46
      0001DA 01                    1985 	.db	1
      0001DB 01                    1986 	.uleb128	1
      0001DC 13                    1987 	.uleb128	19
      0001DD 03                    1988 	.uleb128	3
      0001DE 08                    1989 	.uleb128	8
      0001DF 11                    1990 	.uleb128	17
      0001E0 01                    1991 	.uleb128	1
      0001E1 12                    1992 	.uleb128	18
      0001E2 01                    1993 	.uleb128	1
      0001E3 3F                    1994 	.uleb128	63
      0001E4 0C                    1995 	.uleb128	12
      0001E5 40                    1996 	.uleb128	64
      0001E6 06                    1997 	.uleb128	6
      0001E7 49                    1998 	.uleb128	73
      0001E8 13                    1999 	.uleb128	19
      0001E9 00                    2000 	.uleb128	0
      0001EA 00                    2001 	.uleb128	0
      0001EB 01                    2002 	.uleb128	1
      0001EC 11                    2003 	.uleb128	17
      0001ED 01                    2004 	.db	1
      0001EE 03                    2005 	.uleb128	3
      0001EF 08                    2006 	.uleb128	8
      0001F0 10                    2007 	.uleb128	16
      0001F1 06                    2008 	.uleb128	6
      0001F2 13                    2009 	.uleb128	19
      0001F3 0B                    2010 	.uleb128	11
      0001F4 25                    2011 	.uleb128	37
      0001F5 08                    2012 	.uleb128	8
      0001F6 00                    2013 	.uleb128	0
      0001F7 00                    2014 	.uleb128	0
      0001F8 05                    2015 	.uleb128	5
      0001F9 0B                    2016 	.uleb128	11
      0001FA 00                    2017 	.db	0
      0001FB 11                    2018 	.uleb128	17
      0001FC 01                    2019 	.uleb128	1
      0001FD 12                    2020 	.uleb128	18
      0001FE 01                    2021 	.uleb128	1
      0001FF 00                    2022 	.uleb128	0
      000200 00                    2023 	.uleb128	0
      000201 08                    2024 	.uleb128	8
      000202 0B                    2025 	.uleb128	11
      000203 01                    2026 	.db	1
      000204 01                    2027 	.uleb128	1
      000205 13                    2028 	.uleb128	19
      000206 11                    2029 	.uleb128	17
      000207 01                    2030 	.uleb128	1
      000208 00                    2031 	.uleb128	0
      000209 00                    2032 	.uleb128	0
      00020A 02                    2033 	.uleb128	2
      00020B 2E                    2034 	.uleb128	46
      00020C 00                    2035 	.db	0
      00020D 03                    2036 	.uleb128	3
      00020E 08                    2037 	.uleb128	8
      00020F 11                    2038 	.uleb128	17
      000210 01                    2039 	.uleb128	1
      000211 12                    2040 	.uleb128	18
      000212 01                    2041 	.uleb128	1
      000213 3F                    2042 	.uleb128	63
      000214 0C                    2043 	.uleb128	12
      000215 40                    2044 	.uleb128	64
      000216 06                    2045 	.uleb128	6
      000217 00                    2046 	.uleb128	0
      000218 00                    2047 	.uleb128	0
      000219 0B                    2048 	.uleb128	11
      00021A 2E                    2049 	.uleb128	46
      00021B 01                    2050 	.db	1
      00021C 03                    2051 	.uleb128	3
      00021D 08                    2052 	.uleb128	8
      00021E 11                    2053 	.uleb128	17
      00021F 01                    2054 	.uleb128	1
      000220 12                    2055 	.uleb128	18
      000221 01                    2056 	.uleb128	1
      000222 3F                    2057 	.uleb128	63
      000223 0C                    2058 	.uleb128	12
      000224 40                    2059 	.uleb128	64
      000225 06                    2060 	.uleb128	6
      000226 00                    2061 	.uleb128	0
      000227 00                    2062 	.uleb128	0
      000228 07                    2063 	.uleb128	7
      000229 24                    2064 	.uleb128	36
      00022A 00                    2065 	.db	0
      00022B 03                    2066 	.uleb128	3
      00022C 08                    2067 	.uleb128	8
      00022D 0B                    2068 	.uleb128	11
      00022E 0B                    2069 	.uleb128	11
      00022F 3E                    2070 	.uleb128	62
      000230 0B                    2071 	.uleb128	11
      000231 00                    2072 	.uleb128	0
      000232 00                    2073 	.uleb128	0
      000233 00                    2074 	.uleb128	0
                                   2075 
                                   2076 	.area .debug_info (NOLOAD)
      0005F6 00 00 04 96           2077 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0005FA                       2078 Ldebug_info_start:
      0005FA 00 02                 2079 	.dw	2
      0005FC 00 00 01 A0           2080 	.dw	0,(Ldebug_abbrev)
      000600 04                    2081 	.db	4
      000601 01                    2082 	.uleb128	1
      000602 53 6F 75 72 63 65 2F  2083 	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 75 61 72
             74 31 2E 63
      000622 00                    2084 	.db	0
      000623 00 00 04 E7           2085 	.dw	0,(Ldebug_line_start+-4)
      000627 01                    2086 	.db	1
      000628 53 44 43 43 20 76 65  2087 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000641 00                    2088 	.db	0
      000642 02                    2089 	.uleb128	2
      000643 55 41 52 54 31 5F 44  2090 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      00064F 00                    2091 	.db	0
      000650 00 00 82 5D           2092 	.dw	0,(_UART1_DeInit)
      000654 00 00 82 88           2093 	.dw	0,(XG$UART1_DeInit$0$0+1)
      000658 01                    2094 	.db	1
      000659 00 00 05 A4           2095 	.dw	0,(Ldebug_loc_start+832)
      00065D 03                    2096 	.uleb128	3
      00065E 00 00 01 54           2097 	.dw	0,340
      000662 55 41 52 54 31 5F 49  2098 	.ascii "UART1_Init"
             6E 69 74
      00066C 00                    2099 	.db	0
      00066D 00 00 82 88           2100 	.dw	0,(_UART1_Init)
      000671 00 00 84 05           2101 	.dw	0,(XG$UART1_Init$0$0+1)
      000675 01                    2102 	.db	1
      000676 00 00 03 D4           2103 	.dw	0,(Ldebug_loc_start+368)
      00067A 04                    2104 	.uleb128	4
      00067B 02                    2105 	.db	2
      00067C 91                    2106 	.db	145
      00067D 02                    2107 	.sleb128	2
      00067E 42 61 75 64 52 61 74  2108 	.ascii "BaudRate"
             65
      000686 00                    2109 	.db	0
      000687 00 00 01 54           2110 	.dw	0,340
      00068B 04                    2111 	.uleb128	4
      00068C 02                    2112 	.db	2
      00068D 91                    2113 	.db	145
      00068E 06                    2114 	.sleb128	6
      00068F 57 6F 72 64 4C 65 6E  2115 	.ascii "WordLength"
             67 74 68
      000699 00                    2116 	.db	0
      00069A 00 00 01 65           2117 	.dw	0,357
      00069E 04                    2118 	.uleb128	4
      00069F 02                    2119 	.db	2
      0006A0 91                    2120 	.db	145
      0006A1 07                    2121 	.sleb128	7
      0006A2 53 74 6F 70 42 69 74  2122 	.ascii "StopBits"
             73
      0006AA 00                    2123 	.db	0
      0006AB 00 00 01 65           2124 	.dw	0,357
      0006AF 04                    2125 	.uleb128	4
      0006B0 02                    2126 	.db	2
      0006B1 91                    2127 	.db	145
      0006B2 08                    2128 	.sleb128	8
      0006B3 50 61 72 69 74 79     2129 	.ascii "Parity"
      0006B9 00                    2130 	.db	0
      0006BA 00 00 01 65           2131 	.dw	0,357
      0006BE 04                    2132 	.uleb128	4
      0006BF 02                    2133 	.db	2
      0006C0 91                    2134 	.db	145
      0006C1 09                    2135 	.sleb128	9
      0006C2 53 79 6E 63 4D 6F 64  2136 	.ascii "SyncMode"
             65
      0006CA 00                    2137 	.db	0
      0006CB 00 00 01 65           2138 	.dw	0,357
      0006CF 04                    2139 	.uleb128	4
      0006D0 02                    2140 	.db	2
      0006D1 91                    2141 	.db	145
      0006D2 0A                    2142 	.sleb128	10
      0006D3 4D 6F 64 65           2143 	.ascii "Mode"
      0006D7 00                    2144 	.db	0
      0006D8 00 00 01 65           2145 	.dw	0,357
      0006DC 05                    2146 	.uleb128	5
      0006DD 00 00 83 C4           2147 	.dw	0,(Sstm8s_uart1$UART1_Init$69)
      0006E1 00 00 83 C9           2148 	.dw	0,(Sstm8s_uart1$UART1_Init$71)
      0006E5 05                    2149 	.uleb128	5
      0006E6 00 00 83 CB           2150 	.dw	0,(Sstm8s_uart1$UART1_Init$72)
      0006EA 00 00 83 D0           2151 	.dw	0,(Sstm8s_uart1$UART1_Init$74)
      0006EE 05                    2152 	.uleb128	5
      0006EF 00 00 83 DB           2153 	.dw	0,(Sstm8s_uart1$UART1_Init$79)
      0006F3 00 00 83 E0           2154 	.dw	0,(Sstm8s_uart1$UART1_Init$81)
      0006F7 05                    2155 	.uleb128	5
      0006F8 00 00 83 E2           2156 	.dw	0,(Sstm8s_uart1$UART1_Init$82)
      0006FC 00 00 83 E7           2157 	.dw	0,(Sstm8s_uart1$UART1_Init$84)
      000700 05                    2158 	.uleb128	5
      000701 00 00 83 EE           2159 	.dw	0,(Sstm8s_uart1$UART1_Init$87)
      000705 00 00 83 F3           2160 	.dw	0,(Sstm8s_uart1$UART1_Init$89)
      000709 05                    2161 	.uleb128	5
      00070A 00 00 83 F5           2162 	.dw	0,(Sstm8s_uart1$UART1_Init$90)
      00070E 00 00 84 02           2163 	.dw	0,(Sstm8s_uart1$UART1_Init$94)
      000712 06                    2164 	.uleb128	6
      000713 02                    2165 	.db	2
      000714 91                    2166 	.db	145
      000715 6F                    2167 	.sleb128	-17
      000716 42 61 75 64 52 61 74  2168 	.ascii "BaudRate_Mantissa"
             65 5F 4D 61 6E 74 69
             73 73 61
      000727 00                    2169 	.db	0
      000728 00 00 01 54           2170 	.dw	0,340
      00072C 06                    2171 	.uleb128	6
      00072D 02                    2172 	.db	2
      00072E 91                    2173 	.db	145
      00072F 73                    2174 	.sleb128	-13
      000730 42 61 75 64 52 61 74  2175 	.ascii "BaudRate_Mantissa100"
             65 5F 4D 61 6E 74 69
             73 73 61 31 30 30
      000744 00                    2176 	.db	0
      000745 00 00 01 54           2177 	.dw	0,340
      000749 00                    2178 	.uleb128	0
      00074A 07                    2179 	.uleb128	7
      00074B 75 6E 73 69 67 6E 65  2180 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      000758 00                    2181 	.db	0
      000759 04                    2182 	.db	4
      00075A 07                    2183 	.db	7
      00075B 07                    2184 	.uleb128	7
      00075C 75 6E 73 69 67 6E 65  2185 	.ascii "unsigned char"
             64 20 63 68 61 72
      000769 00                    2186 	.db	0
      00076A 01                    2187 	.db	1
      00076B 08                    2188 	.db	8
      00076C 03                    2189 	.uleb128	3
      00076D 00 00 01 B6           2190 	.dw	0,438
      000771 55 41 52 54 31 5F 43  2191 	.ascii "UART1_Cmd"
             6D 64
      00077A 00                    2192 	.db	0
      00077B 00 00 84 05           2193 	.dw	0,(_UART1_Cmd)
      00077F 00 00 84 19           2194 	.dw	0,(XG$UART1_Cmd$0$0+1)
      000783 01                    2195 	.db	1
      000784 00 00 03 C0           2196 	.dw	0,(Ldebug_loc_start+348)
      000788 04                    2197 	.uleb128	4
      000789 02                    2198 	.db	2
      00078A 91                    2199 	.db	145
      00078B 02                    2200 	.sleb128	2
      00078C 4E 65 77 53 74 61 74  2201 	.ascii "NewState"
             65
      000794 00                    2202 	.db	0
      000795 00 00 01 65           2203 	.dw	0,357
      000799 05                    2204 	.uleb128	5
      00079A 00 00 84 0C           2205 	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
      00079E 00 00 84 11           2206 	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
      0007A2 05                    2207 	.uleb128	5
      0007A3 00 00 84 13           2208 	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
      0007A7 00 00 84 18           2209 	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
      0007AB 00                    2210 	.uleb128	0
      0007AC 03                    2211 	.uleb128	3
      0007AD 00 00 02 61           2212 	.dw	0,609
      0007B1 55 41 52 54 31 5F 49  2213 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      0007BF 00                    2214 	.db	0
      0007C0 00 00 84 19           2215 	.dw	0,(_UART1_ITConfig)
      0007C4 00 00 84 93           2216 	.dw	0,(XG$UART1_ITConfig$0$0+1)
      0007C8 01                    2217 	.db	1
      0007C9 00 00 03 64           2218 	.dw	0,(Ldebug_loc_start+256)
      0007CD 04                    2219 	.uleb128	4
      0007CE 02                    2220 	.db	2
      0007CF 91                    2221 	.db	145
      0007D0 02                    2222 	.sleb128	2
      0007D1 55 41 52 54 31 5F 49  2223 	.ascii "UART1_IT"
             54
      0007D9 00                    2224 	.db	0
      0007DA 00 00 02 61           2225 	.dw	0,609
      0007DE 04                    2226 	.uleb128	4
      0007DF 02                    2227 	.db	2
      0007E0 91                    2228 	.db	145
      0007E1 04                    2229 	.sleb128	4
      0007E2 4E 65 77 53 74 61 74  2230 	.ascii "NewState"
             65
      0007EA 00                    2231 	.db	0
      0007EB 00 00 01 65           2232 	.dw	0,357
      0007EF 08                    2233 	.uleb128	8
      0007F0 00 00 02 1E           2234 	.dw	0,542
      0007F4 00 00 84 45           2235 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
      0007F8 05                    2236 	.uleb128	5
      0007F9 00 00 84 49           2237 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
      0007FD 00 00 84 51           2238 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
      000801 05                    2239 	.uleb128	5
      000802 00 00 84 57           2240 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
      000806 00 00 84 5F           2241 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
      00080A 05                    2242 	.uleb128	5
      00080B 00 00 84 62           2243 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
      00080F 00 00 84 6A           2244 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
      000813 00                    2245 	.uleb128	0
      000814 08                    2246 	.uleb128	8
      000815 00 00 02 43           2247 	.dw	0,579
      000819 00 00 84 6E           2248 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      00081D 05                    2249 	.uleb128	5
      00081E 00 00 84 72           2250 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
      000822 00 00 84 7A           2251 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
      000826 05                    2252 	.uleb128	5
      000827 00 00 84 7F           2253 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
      00082B 00 00 84 87           2254 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
      00082F 05                    2255 	.uleb128	5
      000830 00 00 84 89           2256 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$146)
      000834 00 00 84 91           2257 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
      000838 00                    2258 	.uleb128	0
      000839 06                    2259 	.uleb128	6
      00083A 01                    2260 	.db	1
      00083B 52                    2261 	.db	82
      00083C 75 61 72 74 72 65 67  2262 	.ascii "uartreg"
      000843 00                    2263 	.db	0
      000844 00 00 01 65           2264 	.dw	0,357
      000848 06                    2265 	.uleb128	6
      000849 02                    2266 	.db	2
      00084A 91                    2267 	.db	145
      00084B 7F                    2268 	.sleb128	-1
      00084C 69 74 70 6F 73        2269 	.ascii "itpos"
      000851 00                    2270 	.db	0
      000852 00 00 01 65           2271 	.dw	0,357
      000856 00                    2272 	.uleb128	0
      000857 07                    2273 	.uleb128	7
      000858 75 6E 73 69 67 6E 65  2274 	.ascii "unsigned int"
             64 20 69 6E 74
      000864 00                    2275 	.db	0
      000865 02                    2276 	.db	2
      000866 07                    2277 	.db	7
      000867 09                    2278 	.uleb128	9
      000868 55 41 52 54 31 5F 52  2279 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      00087A 00                    2280 	.db	0
      00087B 00 00 84 93           2281 	.dw	0,(_UART1_ReceiveData8)
      00087F 00 00 84 97           2282 	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
      000883 01                    2283 	.db	1
      000884 00 00 03 50           2284 	.dw	0,(Ldebug_loc_start+236)
      000888 00 00 01 65           2285 	.dw	0,357
      00088C 03                    2286 	.uleb128	3
      00088D 00 00 02 C6           2287 	.dw	0,710
      000891 55 41 52 54 31 5F 53  2288 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      0008A0 00                    2289 	.db	0
      0008A1 00 00 84 97           2290 	.dw	0,(_UART1_SendData8)
      0008A5 00 00 84 9E           2291 	.dw	0,(XG$UART1_SendData8$0$0+1)
      0008A9 01                    2292 	.db	1
      0008AA 00 00 03 3C           2293 	.dw	0,(Ldebug_loc_start+216)
      0008AE 04                    2294 	.uleb128	4
      0008AF 02                    2295 	.db	2
      0008B0 91                    2296 	.db	145
      0008B1 02                    2297 	.sleb128	2
      0008B2 44 61 74 61           2298 	.ascii "Data"
      0008B6 00                    2299 	.db	0
      0008B7 00 00 01 65           2300 	.dw	0,357
      0008BB 00                    2301 	.uleb128	0
      0008BC 0A                    2302 	.uleb128	10
      0008BD 00 00 03 66           2303 	.dw	0,870
      0008C1 55 41 52 54 31 5F 47  2304 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0008D4 00                    2305 	.db	0
      0008D5 00 00 84 9E           2306 	.dw	0,(_UART1_GetFlagStatus)
      0008D9 00 00 84 E2           2307 	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
      0008DD 01                    2308 	.db	1
      0008DE 00 00 02 F8           2309 	.dw	0,(Ldebug_loc_start+148)
      0008E2 00 00 01 65           2310 	.dw	0,357
      0008E6 04                    2311 	.uleb128	4
      0008E7 02                    2312 	.db	2
      0008E8 91                    2313 	.db	145
      0008E9 02                    2314 	.sleb128	2
      0008EA 55 41 52 54 31 5F 46  2315 	.ascii "UART1_FLAG"
             4C 41 47
      0008F4 00                    2316 	.db	0
      0008F5 00 00 02 61           2317 	.dw	0,609
      0008F9 08                    2318 	.uleb128	8
      0008FA 00 00 03 1F           2319 	.dw	0,799
      0008FE 00 00 84 AF           2320 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$172)
      000902 05                    2321 	.uleb128	5
      000903 00 00 84 B6           2322 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$174)
      000907 00 00 84 B8           2323 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$176)
      00090B 05                    2324 	.uleb128	5
      00090C 00 00 84 BB           2325 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$177)
      000910 00 00 84 BC           2326 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$179)
      000914 00                    2327 	.uleb128	0
      000915 08                    2328 	.uleb128	8
      000916 00 00 03 3B           2329 	.dw	0,827
      00091A 00 00 84 C5           2330 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$182)
      00091E 05                    2331 	.uleb128	5
      00091F 00 00 84 CC           2332 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$184)
      000923 00 00 84 CE           2333 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$186)
      000927 05                    2334 	.uleb128	5
      000928 00 00 84 D0           2335 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$187)
      00092C 00 00 84 D1           2336 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$189)
      000930 00                    2337 	.uleb128	0
      000931 08                    2338 	.uleb128	8
      000932 00 00 03 57           2339 	.dw	0,855
      000936 00 00 84 D3           2340 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$190)
      00093A 05                    2341 	.uleb128	5
      00093B 00 00 84 DA           2342 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$192)
      00093F 00 00 84 DC           2343 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$194)
      000943 05                    2344 	.uleb128	5
      000944 00 00 84 DE           2345 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$195)
      000948 00 00 84 DF           2346 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$197)
      00094C 00                    2347 	.uleb128	0
      00094D 06                    2348 	.uleb128	6
      00094E 01                    2349 	.db	1
      00094F 50                    2350 	.db	80
      000950 73 74 61 74 75 73     2351 	.ascii "status"
      000956 00                    2352 	.db	0
      000957 00 00 01 65           2353 	.dw	0,357
      00095B 00                    2354 	.uleb128	0
      00095C 0A                    2355 	.uleb128	10
      00095D 00 00 04 4D           2356 	.dw	0,1101
      000961 55 41 52 54 31 5F 47  2357 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      000972 00                    2358 	.db	0
      000973 00 00 84 E2           2359 	.dw	0,(_UART1_GetITStatus)
      000977 00 00 85 65           2360 	.dw	0,(XG$UART1_GetITStatus$0$0+1)
      00097B 01                    2361 	.db	1
      00097C 00 00 02 84           2362 	.dw	0,(Ldebug_loc_start+32)
      000980 00 00 01 65           2363 	.dw	0,357
      000984 04                    2364 	.uleb128	4
      000985 02                    2365 	.db	2
      000986 91                    2366 	.db	145
      000987 02                    2367 	.sleb128	2
      000988 55 41 52 54 31 5F 49  2368 	.ascii "UART1_IT"
             54
      000990 00                    2369 	.db	0
      000991 00 00 02 61           2370 	.dw	0,609
      000995 08                    2371 	.uleb128	8
      000996 00 00 03 BB           2372 	.dw	0,955
      00099A 00 00 85 13           2373 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$215)
      00099E 05                    2374 	.uleb128	5
      00099F 00 00 85 24           2375 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$218)
      0009A3 00 00 85 26           2376 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$220)
      0009A7 05                    2377 	.uleb128	5
      0009A8 00 00 85 29           2378 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$221)
      0009AC 00 00 85 2A           2379 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$223)
      0009B0 00                    2380 	.uleb128	0
      0009B1 08                    2381 	.uleb128	8
      0009B2 00 00 03 D7           2382 	.dw	0,983
      0009B6 00 00 85 34           2383 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$226)
      0009BA 05                    2384 	.uleb128	5
      0009BB 00 00 85 45           2385 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$229)
      0009BF 00 00 85 47           2386 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$231)
      0009C3 05                    2387 	.uleb128	5
      0009C4 00 00 85 49           2388 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$232)
      0009C8 00 00 85 4A           2389 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$234)
      0009CC 00                    2390 	.uleb128	0
      0009CD 08                    2391 	.uleb128	8
      0009CE 00 00 03 F3           2392 	.dw	0,1011
      0009D2 00 00 85 4C           2393 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$235)
      0009D6 05                    2394 	.uleb128	5
      0009D7 00 00 85 5D           2395 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$238)
      0009DB 00 00 85 5F           2396 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$240)
      0009DF 05                    2397 	.uleb128	5
      0009E0 00 00 85 61           2398 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$241)
      0009E4 00 00 85 62           2399 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$243)
      0009E8 00                    2400 	.uleb128	0
      0009E9 06                    2401 	.uleb128	6
      0009EA 01                    2402 	.db	1
      0009EB 50                    2403 	.db	80
      0009EC 70 65 6E 64 69 6E 67  2404 	.ascii "pendingbitstatus"
             62 69 74 73 74 61 74
             75 73
      0009FC 00                    2405 	.db	0
      0009FD 00 00 01 65           2406 	.dw	0,357
      000A01 06                    2407 	.uleb128	6
      000A02 02                    2408 	.db	2
      000A03 91                    2409 	.db	145
      000A04 7C                    2410 	.sleb128	-4
      000A05 69 74 70 6F 73        2411 	.ascii "itpos"
      000A0A 00                    2412 	.db	0
      000A0B 00 00 01 65           2413 	.dw	0,357
      000A0F 06                    2414 	.uleb128	6
      000A10 01                    2415 	.db	1
      000A11 50                    2416 	.db	80
      000A12 69 74 6D 61 73 6B 31  2417 	.ascii "itmask1"
      000A19 00                    2418 	.db	0
      000A1A 00 00 01 65           2419 	.dw	0,357
      000A1E 06                    2420 	.uleb128	6
      000A1F 02                    2421 	.db	2
      000A20 91                    2422 	.db	145
      000A21 7D                    2423 	.sleb128	-3
      000A22 69 74 6D 61 73 6B 32  2424 	.ascii "itmask2"
      000A29 00                    2425 	.db	0
      000A2A 00 00 01 65           2426 	.dw	0,357
      000A2E 06                    2427 	.uleb128	6
      000A2F 01                    2428 	.db	1
      000A30 51                    2429 	.db	81
      000A31 65 6E 61 62 6C 65 73  2430 	.ascii "enablestatus"
             74 61 74 75 73
      000A3D 00                    2431 	.db	0
      000A3E 00 00 01 65           2432 	.dw	0,357
      000A42 00                    2433 	.uleb128	0
      000A43 0B                    2434 	.uleb128	11
      000A44 55 41 52 54 31 5F 43  2435 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      000A5B 00                    2436 	.db	0
      000A5C 00 00 85 65           2437 	.dw	0,(_UART1_ClearITPendingBit)
      000A60 00 00 85 77           2438 	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
      000A64 01                    2439 	.db	1
      000A65 00 00 02 64           2440 	.dw	0,(Ldebug_loc_start)
      000A69 04                    2441 	.uleb128	4
      000A6A 02                    2442 	.db	2
      000A6B 91                    2443 	.db	145
      000A6C 02                    2444 	.sleb128	2
      000A6D 55 41 52 54 31 5F 49  2445 	.ascii "UART1_IT"
             54
      000A75 00                    2446 	.db	0
      000A76 00 00 02 61           2447 	.dw	0,609
      000A7A 05                    2448 	.uleb128	5
      000A7B 00 00 85 6C           2449 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$253)
      000A7F 00 00 85 70           2450 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$255)
      000A83 05                    2451 	.uleb128	5
      000A84 00 00 85 72           2452 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$256)
      000A88 00 00 85 76           2453 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$258)
      000A8C 00                    2454 	.uleb128	0
      000A8D 00                    2455 	.uleb128	0
      000A8E 00                    2456 	.uleb128	0
      000A8F 00                    2457 	.uleb128	0
      000A90                       2458 Ldebug_info_end:
                                   2459 
                                   2460 	.area .debug_pubnames (NOLOAD)
      00012C 00 00 00 C4           2461 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000130                       2462 Ldebug_pubnames_start:
      000130 00 02                 2463 	.dw	2
      000132 00 00 05 F6           2464 	.dw	0,(Ldebug_info_start-4)
      000136 00 00 04 9A           2465 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00013A 00 00 00 4C           2466 	.dw	0,76
      00013E 55 41 52 54 31 5F 44  2467 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      00014A 00                    2468 	.db	0
      00014B 00 00 00 67           2469 	.dw	0,103
      00014F 55 41 52 54 31 5F 49  2470 	.ascii "UART1_Init"
             6E 69 74
      000159 00                    2471 	.db	0
      00015A 00 00 01 76           2472 	.dw	0,374
      00015E 55 41 52 54 31 5F 43  2473 	.ascii "UART1_Cmd"
             6D 64
      000167 00                    2474 	.db	0
      000168 00 00 01 B6           2475 	.dw	0,438
      00016C 55 41 52 54 31 5F 49  2476 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      00017A 00                    2477 	.db	0
      00017B 00 00 02 71           2478 	.dw	0,625
      00017F 55 41 52 54 31 5F 52  2479 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      000191 00                    2480 	.db	0
      000192 00 00 02 96           2481 	.dw	0,662
      000196 55 41 52 54 31 5F 53  2482 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      0001A5 00                    2483 	.db	0
      0001A6 00 00 02 C6           2484 	.dw	0,710
      0001AA 55 41 52 54 31 5F 47  2485 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0001BD 00                    2486 	.db	0
      0001BE 00 00 03 66           2487 	.dw	0,870
      0001C2 55 41 52 54 31 5F 47  2488 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      0001D3 00                    2489 	.db	0
      0001D4 00 00 04 4D           2490 	.dw	0,1101
      0001D8 55 41 52 54 31 5F 43  2491 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      0001EF 00                    2492 	.db	0
      0001F0 00 00 00 00           2493 	.dw	0,0
      0001F4                       2494 Ldebug_pubnames_end:
                                   2495 
                                   2496 	.area .debug_frame (NOLOAD)
      0002C5 00 00                 2497 	.dw	0
      0002C7 00 0E                 2498 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0002C9                       2499 Ldebug_CIE0_start:
      0002C9 FF FF                 2500 	.dw	0xffff
      0002CB FF FF                 2501 	.dw	0xffff
      0002CD 01                    2502 	.db	1
      0002CE 00                    2503 	.db	0
      0002CF 01                    2504 	.uleb128	1
      0002D0 7F                    2505 	.sleb128	-1
      0002D1 09                    2506 	.db	9
      0002D2 0C                    2507 	.db	12
      0002D3 08                    2508 	.uleb128	8
      0002D4 02                    2509 	.uleb128	2
      0002D5 89                    2510 	.db	137
      0002D6 01                    2511 	.uleb128	1
      0002D7                       2512 Ldebug_CIE0_end:
      0002D7 00 00 00 1A           2513 	.dw	0,26
      0002DB 00 00 02 C5           2514 	.dw	0,(Ldebug_CIE0_start-4)
      0002DF 00 00 85 65           2515 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)	;initial loc
      0002E3 00 00 00 12           2516 	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$261-Sstm8s_uart1$UART1_ClearITPendingBit$250
      0002E7 01                    2517 	.db	1
      0002E8 00 00 85 65           2518 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
      0002EC 0E                    2519 	.db	14
      0002ED 02                    2520 	.uleb128	2
      0002EE 01                    2521 	.db	1
      0002EF 00 00 85 6C           2522 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      0002F3 0E                    2523 	.db	14
      0002F4 02                    2524 	.uleb128	2
                                   2525 
                                   2526 	.area .debug_frame (NOLOAD)
      0002F5 00 00                 2527 	.dw	0
      0002F7 00 0E                 2528 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0002F9                       2529 Ldebug_CIE1_start:
      0002F9 FF FF                 2530 	.dw	0xffff
      0002FB FF FF                 2531 	.dw	0xffff
      0002FD 01                    2532 	.db	1
      0002FE 00                    2533 	.db	0
      0002FF 01                    2534 	.uleb128	1
      000300 7F                    2535 	.sleb128	-1
      000301 09                    2536 	.db	9
      000302 0C                    2537 	.db	12
      000303 08                    2538 	.uleb128	8
      000304 02                    2539 	.uleb128	2
      000305 89                    2540 	.db	137
      000306 01                    2541 	.uleb128	1
      000307                       2542 Ldebug_CIE1_end:
      000307 00 00 00 4B           2543 	.dw	0,75
      00030B 00 00 02 F5           2544 	.dw	0,(Ldebug_CIE1_start-4)
      00030F 00 00 84 E2           2545 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)	;initial loc
      000313 00 00 00 83           2546 	.dw	0,Sstm8s_uart1$UART1_GetITStatus$248-Sstm8s_uart1$UART1_GetITStatus$204
      000317 01                    2547 	.db	1
      000318 00 00 84 E2           2548 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
      00031C 0E                    2549 	.db	14
      00031D 02                    2550 	.uleb128	2
      00031E 01                    2551 	.db	1
      00031F 00 00 84 E4           2552 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      000323 0E                    2553 	.db	14
      000324 06                    2554 	.uleb128	6
      000325 01                    2555 	.db	1
      000326 00 00 84 EA           2556 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      00032A 0E                    2557 	.db	14
      00032B 07                    2558 	.uleb128	7
      00032C 01                    2559 	.db	1
      00032D 00 00 84 EF           2560 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      000331 0E                    2561 	.db	14
      000332 06                    2562 	.uleb128	6
      000333 01                    2563 	.db	1
      000334 00 00 84 FC           2564 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      000338 0E                    2565 	.db	14
      000339 07                    2566 	.uleb128	7
      00033A 01                    2567 	.db	1
      00033B 00 00 85 01           2568 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      00033F 0E                    2569 	.db	14
      000340 06                    2570 	.uleb128	6
      000341 01                    2571 	.db	1
      000342 00 00 85 13           2572 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      000346 0E                    2573 	.db	14
      000347 06                    2574 	.uleb128	6
      000348 01                    2575 	.db	1
      000349 00 00 85 34           2576 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      00034D 0E                    2577 	.db	14
      00034E 06                    2578 	.uleb128	6
      00034F 01                    2579 	.db	1
      000350 00 00 85 64           2580 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      000354 0E                    2581 	.db	14
      000355 02                    2582 	.uleb128	2
                                   2583 
                                   2584 	.area .debug_frame (NOLOAD)
      000356 00 00                 2585 	.dw	0
      000358 00 0E                 2586 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00035A                       2587 Ldebug_CIE2_start:
      00035A FF FF                 2588 	.dw	0xffff
      00035C FF FF                 2589 	.dw	0xffff
      00035E 01                    2590 	.db	1
      00035F 00                    2591 	.db	0
      000360 01                    2592 	.uleb128	1
      000361 7F                    2593 	.sleb128	-1
      000362 09                    2594 	.db	9
      000363 0C                    2595 	.db	12
      000364 08                    2596 	.uleb128	8
      000365 02                    2597 	.uleb128	2
      000366 89                    2598 	.db	137
      000367 01                    2599 	.uleb128	1
      000368                       2600 Ldebug_CIE2_end:
      000368 00 00 00 2F           2601 	.dw	0,47
      00036C 00 00 03 56           2602 	.dw	0,(Ldebug_CIE2_start-4)
      000370 00 00 84 9E           2603 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)	;initial loc
      000374 00 00 00 44           2604 	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$202-Sstm8s_uart1$UART1_GetFlagStatus$166
      000378 01                    2605 	.db	1
      000379 00 00 84 9E           2606 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
      00037D 0E                    2607 	.db	14
      00037E 02                    2608 	.uleb128	2
      00037F 01                    2609 	.db	1
      000380 00 00 84 A0           2610 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000384 0E                    2611 	.db	14
      000385 05                    2612 	.uleb128	5
      000386 01                    2613 	.db	1
      000387 00 00 84 AF           2614 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      00038B 0E                    2615 	.db	14
      00038C 05                    2616 	.uleb128	5
      00038D 01                    2617 	.db	1
      00038E 00 00 84 C5           2618 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      000392 0E                    2619 	.db	14
      000393 05                    2620 	.uleb128	5
      000394 01                    2621 	.db	1
      000395 00 00 84 E1           2622 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      000399 0E                    2623 	.db	14
      00039A 02                    2624 	.uleb128	2
                                   2625 
                                   2626 	.area .debug_frame (NOLOAD)
      00039B 00 00                 2627 	.dw	0
      00039D 00 0E                 2628 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00039F                       2629 Ldebug_CIE3_start:
      00039F FF FF                 2630 	.dw	0xffff
      0003A1 FF FF                 2631 	.dw	0xffff
      0003A3 01                    2632 	.db	1
      0003A4 00                    2633 	.db	0
      0003A5 01                    2634 	.uleb128	1
      0003A6 7F                    2635 	.sleb128	-1
      0003A7 09                    2636 	.db	9
      0003A8 0C                    2637 	.db	12
      0003A9 08                    2638 	.uleb128	8
      0003AA 02                    2639 	.uleb128	2
      0003AB 89                    2640 	.db	137
      0003AC 01                    2641 	.uleb128	1
      0003AD                       2642 Ldebug_CIE3_end:
      0003AD 00 00 00 13           2643 	.dw	0,19
      0003B1 00 00 03 9B           2644 	.dw	0,(Ldebug_CIE3_start-4)
      0003B5 00 00 84 97           2645 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)	;initial loc
      0003B9 00 00 00 07           2646 	.dw	0,Sstm8s_uart1$UART1_SendData8$164-Sstm8s_uart1$UART1_SendData8$160
      0003BD 01                    2647 	.db	1
      0003BE 00 00 84 97           2648 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
      0003C2 0E                    2649 	.db	14
      0003C3 02                    2650 	.uleb128	2
                                   2651 
                                   2652 	.area .debug_frame (NOLOAD)
      0003C4 00 00                 2653 	.dw	0
      0003C6 00 0E                 2654 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0003C8                       2655 Ldebug_CIE4_start:
      0003C8 FF FF                 2656 	.dw	0xffff
      0003CA FF FF                 2657 	.dw	0xffff
      0003CC 01                    2658 	.db	1
      0003CD 00                    2659 	.db	0
      0003CE 01                    2660 	.uleb128	1
      0003CF 7F                    2661 	.sleb128	-1
      0003D0 09                    2662 	.db	9
      0003D1 0C                    2663 	.db	12
      0003D2 08                    2664 	.uleb128	8
      0003D3 02                    2665 	.uleb128	2
      0003D4 89                    2666 	.db	137
      0003D5 01                    2667 	.uleb128	1
      0003D6                       2668 Ldebug_CIE4_end:
      0003D6 00 00 00 13           2669 	.dw	0,19
      0003DA 00 00 03 C4           2670 	.dw	0,(Ldebug_CIE4_start-4)
      0003DE 00 00 84 93           2671 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)	;initial loc
      0003E2 00 00 00 04           2672 	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$158-Sstm8s_uart1$UART1_ReceiveData8$154
      0003E6 01                    2673 	.db	1
      0003E7 00 00 84 93           2674 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
      0003EB 0E                    2675 	.db	14
      0003EC 02                    2676 	.uleb128	2
                                   2677 
                                   2678 	.area .debug_frame (NOLOAD)
      0003ED 00 00                 2679 	.dw	0
      0003EF 00 0E                 2680 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0003F1                       2681 Ldebug_CIE5_start:
      0003F1 FF FF                 2682 	.dw	0xffff
      0003F3 FF FF                 2683 	.dw	0xffff
      0003F5 01                    2684 	.db	1
      0003F6 00                    2685 	.db	0
      0003F7 01                    2686 	.uleb128	1
      0003F8 7F                    2687 	.sleb128	-1
      0003F9 09                    2688 	.db	9
      0003FA 0C                    2689 	.db	12
      0003FB 08                    2690 	.uleb128	8
      0003FC 02                    2691 	.uleb128	2
      0003FD 89                    2692 	.db	137
      0003FE 01                    2693 	.uleb128	1
      0003FF                       2694 Ldebug_CIE5_end:
      0003FF 00 00 00 3D           2695 	.dw	0,61
      000403 00 00 03 ED           2696 	.dw	0,(Ldebug_CIE5_start-4)
      000407 00 00 84 19           2697 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
      00040B 00 00 00 7A           2698 	.dw	0,Sstm8s_uart1$UART1_ITConfig$152-Sstm8s_uart1$UART1_ITConfig$113
      00040F 01                    2699 	.db	1
      000410 00 00 84 19           2700 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      000414 0E                    2701 	.db	14
      000415 02                    2702 	.uleb128	2
      000416 01                    2703 	.db	1
      000417 00 00 84 1A           2704 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      00041B 0E                    2705 	.db	14
      00041C 04                    2706 	.uleb128	4
      00041D 01                    2707 	.db	1
      00041E 00 00 84 21           2708 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      000422 0E                    2709 	.db	14
      000423 05                    2710 	.uleb128	5
      000424 01                    2711 	.db	1
      000425 00 00 84 26           2712 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      000429 0E                    2713 	.db	14
      00042A 04                    2714 	.uleb128	4
      00042B 01                    2715 	.db	1
      00042C 00 00 84 39           2716 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000430 0E                    2717 	.db	14
      000431 04                    2718 	.uleb128	4
      000432 01                    2719 	.db	1
      000433 00 00 84 41           2720 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      000437 0E                    2721 	.db	14
      000438 04                    2722 	.uleb128	4
      000439 01                    2723 	.db	1
      00043A 00 00 84 92           2724 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      00043E 0E                    2725 	.db	14
      00043F 02                    2726 	.uleb128	2
                                   2727 
                                   2728 	.area .debug_frame (NOLOAD)
      000440 00 00                 2729 	.dw	0
      000442 00 0E                 2730 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      000444                       2731 Ldebug_CIE6_start:
      000444 FF FF                 2732 	.dw	0xffff
      000446 FF FF                 2733 	.dw	0xffff
      000448 01                    2734 	.db	1
      000449 00                    2735 	.db	0
      00044A 01                    2736 	.uleb128	1
      00044B 7F                    2737 	.sleb128	-1
      00044C 09                    2738 	.db	9
      00044D 0C                    2739 	.db	12
      00044E 08                    2740 	.uleb128	8
      00044F 02                    2741 	.uleb128	2
      000450 89                    2742 	.db	137
      000451 01                    2743 	.uleb128	1
      000452                       2744 Ldebug_CIE6_end:
      000452 00 00 00 13           2745 	.dw	0,19
      000456 00 00 04 40           2746 	.dw	0,(Ldebug_CIE6_start-4)
      00045A 00 00 84 05           2747 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
      00045E 00 00 00 14           2748 	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
      000462 01                    2749 	.db	1
      000463 00 00 84 05           2750 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      000467 0E                    2751 	.db	14
      000468 02                    2752 	.uleb128	2
                                   2753 
                                   2754 	.area .debug_frame (NOLOAD)
      000469 00 00                 2755 	.dw	0
      00046B 00 0E                 2756 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00046D                       2757 Ldebug_CIE7_start:
      00046D FF FF                 2758 	.dw	0xffff
      00046F FF FF                 2759 	.dw	0xffff
      000471 01                    2760 	.db	1
      000472 00                    2761 	.db	0
      000473 01                    2762 	.uleb128	1
      000474 7F                    2763 	.sleb128	-1
      000475 09                    2764 	.db	9
      000476 0C                    2765 	.db	12
      000477 08                    2766 	.uleb128	8
      000478 02                    2767 	.uleb128	2
      000479 89                    2768 	.db	137
      00047A 01                    2769 	.uleb128	1
      00047B                       2770 Ldebug_CIE7_end:
      00047B 00 00 01 16           2771 	.dw	0,278
      00047F 00 00 04 69           2772 	.dw	0,(Ldebug_CIE7_start-4)
      000483 00 00 82 88           2773 	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
      000487 00 00 01 7D           2774 	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
      00048B 01                    2775 	.db	1
      00048C 00 00 82 88           2776 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      000490 0E                    2777 	.db	14
      000491 02                    2778 	.uleb128	2
      000492 01                    2779 	.db	1
      000493 00 00 82 8A           2780 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      000497 0E                    2781 	.db	14
      000498 13                    2782 	.uleb128	19
      000499 01                    2783 	.db	1
      00049A 00 00 82 E5           2784 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      00049E 0E                    2785 	.db	14
      00049F 15                    2786 	.uleb128	21
      0004A0 01                    2787 	.db	1
      0004A1 00 00 82 E8           2788 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      0004A5 0E                    2789 	.db	14
      0004A6 17                    2790 	.uleb128	23
      0004A7 01                    2791 	.db	1
      0004A8 00 00 82 EB           2792 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      0004AC 0E                    2793 	.db	14
      0004AD 19                    2794 	.uleb128	25
      0004AE 01                    2795 	.db	1
      0004AF 00 00 82 ED           2796 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      0004B3 0E                    2797 	.db	14
      0004B4 1B                    2798 	.uleb128	27
      0004B5 01                    2799 	.db	1
      0004B6 00 00 82 F2           2800 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      0004BA 0E                    2801 	.db	14
      0004BB 13                    2802 	.uleb128	19
      0004BC 01                    2803 	.db	1
      0004BD 00 00 83 08           2804 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      0004C1 0E                    2805 	.db	14
      0004C2 15                    2806 	.uleb128	21
      0004C3 01                    2807 	.db	1
      0004C4 00 00 83 0B           2808 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      0004C8 0E                    2809 	.db	14
      0004C9 17                    2810 	.uleb128	23
      0004CA 01                    2811 	.db	1
      0004CB 00 00 83 0D           2812 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      0004CF 0E                    2813 	.db	14
      0004D0 18                    2814 	.uleb128	24
      0004D1 01                    2815 	.db	1
      0004D2 00 00 83 0F           2816 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      0004D6 0E                    2817 	.db	14
      0004D7 1A                    2818 	.uleb128	26
      0004D8 01                    2819 	.db	1
      0004D9 00 00 83 11           2820 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      0004DD 0E                    2821 	.db	14
      0004DE 1B                    2822 	.uleb128	27
      0004DF 01                    2823 	.db	1
      0004E0 00 00 83 16           2824 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0004E4 0E                    2825 	.db	14
      0004E5 13                    2826 	.uleb128	19
      0004E6 01                    2827 	.db	1
      0004E7 00 00 83 1B           2828 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0004EB 0E                    2829 	.db	14
      0004EC 15                    2830 	.uleb128	21
      0004ED 01                    2831 	.db	1
      0004EE 00 00 83 1E           2832 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0004F2 0E                    2833 	.db	14
      0004F3 17                    2834 	.uleb128	23
      0004F4 01                    2835 	.db	1
      0004F5 00 00 83 21           2836 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0004F9 0E                    2837 	.db	14
      0004FA 19                    2838 	.uleb128	25
      0004FB 01                    2839 	.db	1
      0004FC 00 00 83 23           2840 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      000500 0E                    2841 	.db	14
      000501 1B                    2842 	.uleb128	27
      000502 01                    2843 	.db	1
      000503 00 00 83 28           2844 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      000507 0E                    2845 	.db	14
      000508 13                    2846 	.uleb128	19
      000509 01                    2847 	.db	1
      00050A 00 00 83 34           2848 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      00050E 0E                    2849 	.db	14
      00050F 15                    2850 	.uleb128	21
      000510 01                    2851 	.db	1
      000511 00 00 83 37           2852 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      000515 0E                    2853 	.db	14
      000516 17                    2854 	.uleb128	23
      000517 01                    2855 	.db	1
      000518 00 00 83 39           2856 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      00051C 0E                    2857 	.db	14
      00051D 18                    2858 	.uleb128	24
      00051E 01                    2859 	.db	1
      00051F 00 00 83 3B           2860 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      000523 0E                    2861 	.db	14
      000524 1A                    2862 	.uleb128	26
      000525 01                    2863 	.db	1
      000526 00 00 83 3D           2864 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      00052A 0E                    2865 	.db	14
      00052B 1B                    2866 	.uleb128	27
      00052C 01                    2867 	.db	1
      00052D 00 00 83 42           2868 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000531 0E                    2869 	.db	14
      000532 13                    2870 	.uleb128	19
      000533 01                    2871 	.db	1
      000534 00 00 83 67           2872 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      000538 0E                    2873 	.db	14
      000539 14                    2874 	.uleb128	20
      00053A 01                    2875 	.db	1
      00053B 00 00 83 69           2876 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      00053F 0E                    2877 	.db	14
      000540 15                    2878 	.uleb128	21
      000541 01                    2879 	.db	1
      000542 00 00 83 6B           2880 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      000546 0E                    2881 	.db	14
      000547 16                    2882 	.uleb128	22
      000548 01                    2883 	.db	1
      000549 00 00 83 6D           2884 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      00054D 0E                    2885 	.db	14
      00054E 17                    2886 	.uleb128	23
      00054F 01                    2887 	.db	1
      000550 00 00 83 6E           2888 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000554 0E                    2889 	.db	14
      000555 19                    2890 	.uleb128	25
      000556 01                    2891 	.db	1
      000557 00 00 83 70           2892 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      00055B 0E                    2893 	.db	14
      00055C 1B                    2894 	.uleb128	27
      00055D 01                    2895 	.db	1
      00055E 00 00 83 75           2896 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      000562 0E                    2897 	.db	14
      000563 13                    2898 	.uleb128	19
      000564 01                    2899 	.db	1
      000565 00 00 83 BD           2900 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      000569 0E                    2901 	.db	14
      00056A 14                    2902 	.uleb128	20
      00056B 01                    2903 	.db	1
      00056C 00 00 83 C2           2904 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      000570 0E                    2905 	.db	14
      000571 13                    2906 	.uleb128	19
      000572 01                    2907 	.db	1
      000573 00 00 83 D4           2908 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      000577 0E                    2909 	.db	14
      000578 14                    2910 	.uleb128	20
      000579 01                    2911 	.db	1
      00057A 00 00 83 D9           2912 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      00057E 0E                    2913 	.db	14
      00057F 13                    2914 	.uleb128	19
      000580 01                    2915 	.db	1
      000581 00 00 83 F6           2916 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      000585 0E                    2917 	.db	14
      000586 14                    2918 	.uleb128	20
      000587 01                    2919 	.db	1
      000588 00 00 83 FD           2920 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      00058C 0E                    2921 	.db	14
      00058D 13                    2922 	.uleb128	19
      00058E 01                    2923 	.db	1
      00058F 00 00 84 04           2924 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      000593 0E                    2925 	.db	14
      000594 02                    2926 	.uleb128	2
                                   2927 
                                   2928 	.area .debug_frame (NOLOAD)
      000595 00 00                 2929 	.dw	0
      000597 00 0E                 2930 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      000599                       2931 Ldebug_CIE8_start:
      000599 FF FF                 2932 	.dw	0xffff
      00059B FF FF                 2933 	.dw	0xffff
      00059D 01                    2934 	.db	1
      00059E 00                    2935 	.db	0
      00059F 01                    2936 	.uleb128	1
      0005A0 7F                    2937 	.sleb128	-1
      0005A1 09                    2938 	.db	9
      0005A2 0C                    2939 	.db	12
      0005A3 08                    2940 	.uleb128	8
      0005A4 02                    2941 	.uleb128	2
      0005A5 89                    2942 	.db	137
      0005A6 01                    2943 	.uleb128	1
      0005A7                       2944 Ldebug_CIE8_end:
      0005A7 00 00 00 13           2945 	.dw	0,19
      0005AB 00 00 05 95           2946 	.dw	0,(Ldebug_CIE8_start-4)
      0005AF 00 00 82 5D           2947 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
      0005B3 00 00 00 2B           2948 	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
      0005B7 01                    2949 	.db	1
      0005B8 00 00 82 5D           2950 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      0005BC 0E                    2951 	.db	14
      0005BD 02                    2952 	.uleb128	2
