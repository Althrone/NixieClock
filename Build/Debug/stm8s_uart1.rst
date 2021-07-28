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
      00844B                         63 _UART1_DeInit:
                           000000    64 	Sstm8s_uart1$UART1_DeInit$1 ==.
                           000000    65 	Sstm8s_uart1$UART1_DeInit$2 ==.
                                     66 ;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
      00844B C6 52 30         [ 1]   67 	ld	a, 0x5230
                           000003    68 	Sstm8s_uart1$UART1_DeInit$3 ==.
                                     69 ;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
      00844E C6 52 31         [ 1]   70 	ld	a, 0x5231
                           000006    71 	Sstm8s_uart1$UART1_DeInit$4 ==.
                                     72 ;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      008451 35 00 52 33      [ 1]   73 	mov	0x5233+0, #0x00
                           00000A    74 	Sstm8s_uart1$UART1_DeInit$5 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      008455 35 00 52 32      [ 1]   76 	mov	0x5232+0, #0x00
                           00000E    77 	Sstm8s_uart1$UART1_DeInit$6 ==.
                                     78 ;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      008459 35 00 52 34      [ 1]   79 	mov	0x5234+0, #0x00
                           000012    80 	Sstm8s_uart1$UART1_DeInit$7 ==.
                                     81 ;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      00845D 35 00 52 35      [ 1]   82 	mov	0x5235+0, #0x00
                           000016    83 	Sstm8s_uart1$UART1_DeInit$8 ==.
                                     84 ;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      008461 35 00 52 36      [ 1]   85 	mov	0x5236+0, #0x00
                           00001A    86 	Sstm8s_uart1$UART1_DeInit$9 ==.
                                     87 ;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      008465 35 00 52 37      [ 1]   88 	mov	0x5237+0, #0x00
                           00001E    89 	Sstm8s_uart1$UART1_DeInit$10 ==.
                                     90 ;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      008469 35 00 52 38      [ 1]   91 	mov	0x5238+0, #0x00
                           000022    92 	Sstm8s_uart1$UART1_DeInit$11 ==.
                                     93 ;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      00846D 35 00 52 39      [ 1]   94 	mov	0x5239+0, #0x00
                           000026    95 	Sstm8s_uart1$UART1_DeInit$12 ==.
                                     96 ;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      008471 35 00 52 3A      [ 1]   97 	mov	0x523a+0, #0x00
                           00002A    98 	Sstm8s_uart1$UART1_DeInit$13 ==.
                                     99 ;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
                           00002A   100 	Sstm8s_uart1$UART1_DeInit$14 ==.
                           00002A   101 	XG$UART1_DeInit$0$0 ==.
      008475 81               [ 4]  102 	ret
                           00002B   103 	Sstm8s_uart1$UART1_DeInit$15 ==.
                           00002B   104 	Sstm8s_uart1$UART1_Init$16 ==.
                                    105 ;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                    106 ;	-----------------------------------------
                                    107 ;	 function UART1_Init
                                    108 ;	-----------------------------------------
      008476                        109 _UART1_Init:
                           00002B   110 	Sstm8s_uart1$UART1_Init$17 ==.
      008476 52 11            [ 2]  111 	sub	sp, #17
                           00002D   112 	Sstm8s_uart1$UART1_Init$18 ==.
                           00002D   113 	Sstm8s_uart1$UART1_Init$19 ==.
                                    114 ;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      008478 72 19 52 34      [ 1]  115 	bres	21044, #4
                           000031   116 	Sstm8s_uart1$UART1_Init$20 ==.
                                    117 ;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      00847C C6 52 34         [ 1]  118 	ld	a, 0x5234
      00847F 1A 18            [ 1]  119 	or	a, (0x18, sp)
      008481 C7 52 34         [ 1]  120 	ld	0x5234, a
                           000039   121 	Sstm8s_uart1$UART1_Init$21 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008484 C6 52 36         [ 1]  123 	ld	a, 0x5236
      008487 A4 CF            [ 1]  124 	and	a, #0xcf
      008489 C7 52 36         [ 1]  125 	ld	0x5236, a
                           000041   126 	Sstm8s_uart1$UART1_Init$22 ==.
                                    127 ;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      00848C C6 52 36         [ 1]  128 	ld	a, 0x5236
      00848F 1A 19            [ 1]  129 	or	a, (0x19, sp)
      008491 C7 52 36         [ 1]  130 	ld	0x5236, a
                           000049   131 	Sstm8s_uart1$UART1_Init$23 ==.
                                    132 ;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      008494 C6 52 34         [ 1]  133 	ld	a, 0x5234
      008497 A4 F9            [ 1]  134 	and	a, #0xf9
      008499 C7 52 34         [ 1]  135 	ld	0x5234, a
                           000051   136 	Sstm8s_uart1$UART1_Init$24 ==.
                                    137 ;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      00849C C6 52 34         [ 1]  138 	ld	a, 0x5234
      00849F 1A 1A            [ 1]  139 	or	a, (0x1a, sp)
      0084A1 C7 52 34         [ 1]  140 	ld	0x5234, a
                           000059   141 	Sstm8s_uart1$UART1_Init$25 ==.
                                    142 ;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0084A4 C6 52 32         [ 1]  143 	ld	a, 0x5232
      0084A7 35 00 52 32      [ 1]  144 	mov	0x5232+0, #0x00
                           000060   145 	Sstm8s_uart1$UART1_Init$26 ==.
                                    146 ;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0084AB C6 52 33         [ 1]  147 	ld	a, 0x5233
      0084AE A4 0F            [ 1]  148 	and	a, #0x0f
      0084B0 C7 52 33         [ 1]  149 	ld	0x5233, a
                           000068   150 	Sstm8s_uart1$UART1_Init$27 ==.
                                    151 ;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0084B3 C6 52 33         [ 1]  152 	ld	a, 0x5233
      0084B6 A4 F0            [ 1]  153 	and	a, #0xf0
      0084B8 C7 52 33         [ 1]  154 	ld	0x5233, a
                           000070   155 	Sstm8s_uart1$UART1_Init$28 ==.
                                    156 ;	Source/Std_Lib/Src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0084BB CD 83 77         [ 4]  157 	call	_CLK_GetClockFreq
      0084BE 1F 10            [ 2]  158 	ldw	(0x10, sp), x
      0084C0 1E 14            [ 2]  159 	ldw	x, (0x14, sp)
      0084C2 1F 0A            [ 2]  160 	ldw	(0x0a, sp), x
      0084C4 1E 16            [ 2]  161 	ldw	x, (0x16, sp)
      0084C6 A6 04            [ 1]  162 	ld	a, #0x04
      0084C8                        163 00127$:
      0084C8 58               [ 2]  164 	sllw	x
      0084C9 09 0B            [ 1]  165 	rlc	(0x0b, sp)
      0084CB 09 0A            [ 1]  166 	rlc	(0x0a, sp)
      0084CD 4A               [ 1]  167 	dec	a
      0084CE 26 F8            [ 1]  168 	jrne	00127$
      0084D0 1F 0C            [ 2]  169 	ldw	(0x0c, sp), x
      0084D2 89               [ 2]  170 	pushw	x
                           000088   171 	Sstm8s_uart1$UART1_Init$29 ==.
      0084D3 1E 0C            [ 2]  172 	ldw	x, (0x0c, sp)
      0084D5 89               [ 2]  173 	pushw	x
                           00008B   174 	Sstm8s_uart1$UART1_Init$30 ==.
      0084D6 1E 14            [ 2]  175 	ldw	x, (0x14, sp)
      0084D8 89               [ 2]  176 	pushw	x
                           00008E   177 	Sstm8s_uart1$UART1_Init$31 ==.
      0084D9 90 89            [ 2]  178 	pushw	y
                           000090   179 	Sstm8s_uart1$UART1_Init$32 ==.
      0084DB CD 95 35         [ 4]  180 	call	__divulong
      0084DE 5B 08            [ 2]  181 	addw	sp, #8
                           000095   182 	Sstm8s_uart1$UART1_Init$33 ==.
      0084E0 1F 10            [ 2]  183 	ldw	(0x10, sp), x
      0084E2 17 0E            [ 2]  184 	ldw	(0x0e, sp), y
      0084E4 16 10            [ 2]  185 	ldw	y, (0x10, sp)
      0084E6 17 03            [ 2]  186 	ldw	(0x03, sp), y
      0084E8 16 0E            [ 2]  187 	ldw	y, (0x0e, sp)
      0084EA 17 01            [ 2]  188 	ldw	(0x01, sp), y
                           0000A1   189 	Sstm8s_uart1$UART1_Init$34 ==.
                                    190 ;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0084EC CD 83 77         [ 4]  191 	call	_CLK_GetClockFreq
      0084EF 1F 10            [ 2]  192 	ldw	(0x10, sp), x
      0084F1 17 0E            [ 2]  193 	ldw	(0x0e, sp), y
      0084F3 1E 10            [ 2]  194 	ldw	x, (0x10, sp)
      0084F5 89               [ 2]  195 	pushw	x
                           0000AB   196 	Sstm8s_uart1$UART1_Init$35 ==.
      0084F6 1E 10            [ 2]  197 	ldw	x, (0x10, sp)
      0084F8 89               [ 2]  198 	pushw	x
                           0000AE   199 	Sstm8s_uart1$UART1_Init$36 ==.
      0084F9 4B 64            [ 1]  200 	push	#0x64
                           0000B0   201 	Sstm8s_uart1$UART1_Init$37 ==.
      0084FB 5F               [ 1]  202 	clrw	x
      0084FC 89               [ 2]  203 	pushw	x
                           0000B2   204 	Sstm8s_uart1$UART1_Init$38 ==.
      0084FD 4B 00            [ 1]  205 	push	#0x00
                           0000B4   206 	Sstm8s_uart1$UART1_Init$39 ==.
      0084FF CD 95 B5         [ 4]  207 	call	__mullong
      008502 5B 08            [ 2]  208 	addw	sp, #8
                           0000B9   209 	Sstm8s_uart1$UART1_Init$40 ==.
      008504 1F 10            [ 2]  210 	ldw	(0x10, sp), x
      008506 1E 0C            [ 2]  211 	ldw	x, (0x0c, sp)
      008508 89               [ 2]  212 	pushw	x
                           0000BE   213 	Sstm8s_uart1$UART1_Init$41 ==.
      008509 1E 0C            [ 2]  214 	ldw	x, (0x0c, sp)
      00850B 89               [ 2]  215 	pushw	x
                           0000C1   216 	Sstm8s_uart1$UART1_Init$42 ==.
      00850C 1E 14            [ 2]  217 	ldw	x, (0x14, sp)
      00850E 89               [ 2]  218 	pushw	x
                           0000C4   219 	Sstm8s_uart1$UART1_Init$43 ==.
      00850F 90 89            [ 2]  220 	pushw	y
                           0000C6   221 	Sstm8s_uart1$UART1_Init$44 ==.
      008511 CD 95 35         [ 4]  222 	call	__divulong
      008514 5B 08            [ 2]  223 	addw	sp, #8
                           0000CB   224 	Sstm8s_uart1$UART1_Init$45 ==.
      008516 1F 07            [ 2]  225 	ldw	(0x07, sp), x
      008518 17 05            [ 2]  226 	ldw	(0x05, sp), y
                           0000CF   227 	Sstm8s_uart1$UART1_Init$46 ==.
                                    228 ;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00851A C6 52 33         [ 1]  229 	ld	a, 0x5233
      00851D 6B 09            [ 1]  230 	ld	(0x09, sp), a
      00851F 1E 03            [ 2]  231 	ldw	x, (0x03, sp)
      008521 89               [ 2]  232 	pushw	x
                           0000D7   233 	Sstm8s_uart1$UART1_Init$47 ==.
      008522 1E 03            [ 2]  234 	ldw	x, (0x03, sp)
      008524 89               [ 2]  235 	pushw	x
                           0000DA   236 	Sstm8s_uart1$UART1_Init$48 ==.
      008525 4B 64            [ 1]  237 	push	#0x64
                           0000DC   238 	Sstm8s_uart1$UART1_Init$49 ==.
      008527 5F               [ 1]  239 	clrw	x
      008528 89               [ 2]  240 	pushw	x
                           0000DE   241 	Sstm8s_uart1$UART1_Init$50 ==.
      008529 4B 00            [ 1]  242 	push	#0x00
                           0000E0   243 	Sstm8s_uart1$UART1_Init$51 ==.
      00852B CD 95 B5         [ 4]  244 	call	__mullong
      00852E 5B 08            [ 2]  245 	addw	sp, #8
                           0000E5   246 	Sstm8s_uart1$UART1_Init$52 ==.
      008530 1F 0C            [ 2]  247 	ldw	(0x0c, sp), x
      008532 17 0A            [ 2]  248 	ldw	(0x0a, sp), y
      008534 1E 07            [ 2]  249 	ldw	x, (0x07, sp)
      008536 72 F0 0C         [ 2]  250 	subw	x, (0x0c, sp)
      008539 1F 10            [ 2]  251 	ldw	(0x10, sp), x
      00853B 7B 06            [ 1]  252 	ld	a, (0x06, sp)
      00853D 12 0B            [ 1]  253 	sbc	a, (0x0b, sp)
      00853F 6B 0F            [ 1]  254 	ld	(0x0f, sp), a
      008541 7B 05            [ 1]  255 	ld	a, (0x05, sp)
      008543 12 0A            [ 1]  256 	sbc	a, (0x0a, sp)
      008545 6B 0E            [ 1]  257 	ld	(0x0e, sp), a
      008547 1E 10            [ 2]  258 	ldw	x, (0x10, sp)
      008549 16 0E            [ 2]  259 	ldw	y, (0x0e, sp)
      00854B A6 04            [ 1]  260 	ld	a, #0x04
      00854D                        261 00129$:
      00854D 58               [ 2]  262 	sllw	x
      00854E 90 59            [ 2]  263 	rlcw	y
      008550 4A               [ 1]  264 	dec	a
      008551 26 FA            [ 1]  265 	jrne	00129$
      008553 4B 64            [ 1]  266 	push	#0x64
                           00010A   267 	Sstm8s_uart1$UART1_Init$53 ==.
      008555 4B 00            [ 1]  268 	push	#0x00
                           00010C   269 	Sstm8s_uart1$UART1_Init$54 ==.
      008557 4B 00            [ 1]  270 	push	#0x00
                           00010E   271 	Sstm8s_uart1$UART1_Init$55 ==.
      008559 4B 00            [ 1]  272 	push	#0x00
                           000110   273 	Sstm8s_uart1$UART1_Init$56 ==.
      00855B 89               [ 2]  274 	pushw	x
                           000111   275 	Sstm8s_uart1$UART1_Init$57 ==.
      00855C 90 89            [ 2]  276 	pushw	y
                           000113   277 	Sstm8s_uart1$UART1_Init$58 ==.
      00855E CD 95 35         [ 4]  278 	call	__divulong
      008561 5B 08            [ 2]  279 	addw	sp, #8
                           000118   280 	Sstm8s_uart1$UART1_Init$59 ==.
      008563 9F               [ 1]  281 	ld	a, xl
      008564 A4 0F            [ 1]  282 	and	a, #0x0f
      008566 1A 09            [ 1]  283 	or	a, (0x09, sp)
      008568 C7 52 33         [ 1]  284 	ld	0x5233, a
                           000120   285 	Sstm8s_uart1$UART1_Init$60 ==.
                                    286 ;	Source/Std_Lib/Src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      00856B C6 52 33         [ 1]  287 	ld	a, 0x5233
      00856E 6B 11            [ 1]  288 	ld	(0x11, sp), a
      008570 1E 03            [ 2]  289 	ldw	x, (0x03, sp)
      008572 A6 10            [ 1]  290 	ld	a, #0x10
      008574 62               [ 2]  291 	div	x, a
      008575 9F               [ 1]  292 	ld	a, xl
      008576 A4 F0            [ 1]  293 	and	a, #0xf0
      008578 1A 11            [ 1]  294 	or	a, (0x11, sp)
      00857A C7 52 33         [ 1]  295 	ld	0x5233, a
                           000132   296 	Sstm8s_uart1$UART1_Init$61 ==.
                                    297 ;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      00857D C6 52 32         [ 1]  298 	ld	a, 0x5232
      008580 6B 11            [ 1]  299 	ld	(0x11, sp), a
      008582 7B 04            [ 1]  300 	ld	a, (0x04, sp)
      008584 1A 11            [ 1]  301 	or	a, (0x11, sp)
      008586 C7 52 32         [ 1]  302 	ld	0x5232, a
                           00013E   303 	Sstm8s_uart1$UART1_Init$62 ==.
                                    304 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008589 C6 52 35         [ 1]  305 	ld	a, 0x5235
      00858C A4 F3            [ 1]  306 	and	a, #0xf3
      00858E C7 52 35         [ 1]  307 	ld	0x5235, a
                           000146   308 	Sstm8s_uart1$UART1_Init$63 ==.
                                    309 ;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      008591 C6 52 36         [ 1]  310 	ld	a, 0x5236
      008594 A4 F8            [ 1]  311 	and	a, #0xf8
      008596 C7 52 36         [ 1]  312 	ld	0x5236, a
                           00014E   313 	Sstm8s_uart1$UART1_Init$64 ==.
                                    314 ;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      008599 C6 52 36         [ 1]  315 	ld	a, 0x5236
      00859C 6B 11            [ 1]  316 	ld	(0x11, sp), a
      00859E 7B 1B            [ 1]  317 	ld	a, (0x1b, sp)
      0085A0 A4 07            [ 1]  318 	and	a, #0x07
      0085A2 1A 11            [ 1]  319 	or	a, (0x11, sp)
      0085A4 C7 52 36         [ 1]  320 	ld	0x5236, a
                           00015C   321 	Sstm8s_uart1$UART1_Init$65 ==.
                                    322 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0085A7 C6 52 35         [ 1]  323 	ld	a, 0x5235
                           00015F   324 	Sstm8s_uart1$UART1_Init$66 ==.
                                    325 ;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0085AA 88               [ 1]  326 	push	a
                           000160   327 	Sstm8s_uart1$UART1_Init$67 ==.
      0085AB 7B 1D            [ 1]  328 	ld	a, (0x1d, sp)
      0085AD A5 04            [ 1]  329 	bcp	a, #0x04
      0085AF 84               [ 1]  330 	pop	a
                           000165   331 	Sstm8s_uart1$UART1_Init$68 ==.
      0085B0 27 07            [ 1]  332 	jreq	00102$
                           000167   333 	Sstm8s_uart1$UART1_Init$69 ==.
                           000167   334 	Sstm8s_uart1$UART1_Init$70 ==.
                                    335 ;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0085B2 AA 08            [ 1]  336 	or	a, #0x08
      0085B4 C7 52 35         [ 1]  337 	ld	0x5235, a
                           00016C   338 	Sstm8s_uart1$UART1_Init$71 ==.
      0085B7 20 05            [ 2]  339 	jra	00103$
      0085B9                        340 00102$:
                           00016E   341 	Sstm8s_uart1$UART1_Init$72 ==.
                           00016E   342 	Sstm8s_uart1$UART1_Init$73 ==.
                                    343 ;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0085B9 A4 F7            [ 1]  344 	and	a, #0xf7
      0085BB C7 52 35         [ 1]  345 	ld	0x5235, a
                           000173   346 	Sstm8s_uart1$UART1_Init$74 ==.
      0085BE                        347 00103$:
                           000173   348 	Sstm8s_uart1$UART1_Init$75 ==.
                                    349 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0085BE C6 52 35         [ 1]  350 	ld	a, 0x5235
                           000176   351 	Sstm8s_uart1$UART1_Init$76 ==.
                                    352 ;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0085C1 88               [ 1]  353 	push	a
                           000177   354 	Sstm8s_uart1$UART1_Init$77 ==.
      0085C2 7B 1D            [ 1]  355 	ld	a, (0x1d, sp)
      0085C4 A5 08            [ 1]  356 	bcp	a, #0x08
      0085C6 84               [ 1]  357 	pop	a
                           00017C   358 	Sstm8s_uart1$UART1_Init$78 ==.
      0085C7 27 07            [ 1]  359 	jreq	00105$
                           00017E   360 	Sstm8s_uart1$UART1_Init$79 ==.
                           00017E   361 	Sstm8s_uart1$UART1_Init$80 ==.
                                    362 ;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0085C9 AA 04            [ 1]  363 	or	a, #0x04
      0085CB C7 52 35         [ 1]  364 	ld	0x5235, a
                           000183   365 	Sstm8s_uart1$UART1_Init$81 ==.
      0085CE 20 05            [ 2]  366 	jra	00106$
      0085D0                        367 00105$:
                           000185   368 	Sstm8s_uart1$UART1_Init$82 ==.
                           000185   369 	Sstm8s_uart1$UART1_Init$83 ==.
                                    370 ;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0085D0 A4 FB            [ 1]  371 	and	a, #0xfb
      0085D2 C7 52 35         [ 1]  372 	ld	0x5235, a
                           00018A   373 	Sstm8s_uart1$UART1_Init$84 ==.
      0085D5                        374 00106$:
                           00018A   375 	Sstm8s_uart1$UART1_Init$85 ==.
                                    376 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0085D5 C6 52 36         [ 1]  377 	ld	a, 0x5236
                           00018D   378 	Sstm8s_uart1$UART1_Init$86 ==.
                                    379 ;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0085D8 0D 1B            [ 1]  380 	tnz	(0x1b, sp)
      0085DA 2A 07            [ 1]  381 	jrpl	00108$
                           000191   382 	Sstm8s_uart1$UART1_Init$87 ==.
                           000191   383 	Sstm8s_uart1$UART1_Init$88 ==.
                                    384 ;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0085DC A4 F7            [ 1]  385 	and	a, #0xf7
      0085DE C7 52 36         [ 1]  386 	ld	0x5236, a
                           000196   387 	Sstm8s_uart1$UART1_Init$89 ==.
      0085E1 20 0D            [ 2]  388 	jra	00110$
      0085E3                        389 00108$:
                           000198   390 	Sstm8s_uart1$UART1_Init$90 ==.
                           000198   391 	Sstm8s_uart1$UART1_Init$91 ==.
                                    392 ;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0085E3 88               [ 1]  393 	push	a
                           000199   394 	Sstm8s_uart1$UART1_Init$92 ==.
      0085E4 7B 1C            [ 1]  395 	ld	a, (0x1c, sp)
      0085E6 A4 08            [ 1]  396 	and	a, #0x08
      0085E8 6B 12            [ 1]  397 	ld	(0x12, sp), a
      0085EA 84               [ 1]  398 	pop	a
                           0001A0   399 	Sstm8s_uart1$UART1_Init$93 ==.
      0085EB 1A 11            [ 1]  400 	or	a, (0x11, sp)
      0085ED C7 52 36         [ 1]  401 	ld	0x5236, a
                           0001A5   402 	Sstm8s_uart1$UART1_Init$94 ==.
      0085F0                        403 00110$:
                           0001A5   404 	Sstm8s_uart1$UART1_Init$95 ==.
                                    405 ;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
      0085F0 5B 11            [ 2]  406 	addw	sp, #17
                           0001A7   407 	Sstm8s_uart1$UART1_Init$96 ==.
                           0001A7   408 	Sstm8s_uart1$UART1_Init$97 ==.
                           0001A7   409 	XG$UART1_Init$0$0 ==.
      0085F2 81               [ 4]  410 	ret
                           0001A8   411 	Sstm8s_uart1$UART1_Init$98 ==.
                           0001A8   412 	Sstm8s_uart1$UART1_Cmd$99 ==.
                                    413 ;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    414 ;	-----------------------------------------
                                    415 ;	 function UART1_Cmd
                                    416 ;	-----------------------------------------
      0085F3                        417 _UART1_Cmd:
                           0001A8   418 	Sstm8s_uart1$UART1_Cmd$100 ==.
                           0001A8   419 	Sstm8s_uart1$UART1_Cmd$101 ==.
                                    420 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085F3 C6 52 34         [ 1]  421 	ld	a, 0x5234
                           0001AB   422 	Sstm8s_uart1$UART1_Cmd$102 ==.
                                    423 ;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      0085F6 0D 03            [ 1]  424 	tnz	(0x03, sp)
      0085F8 27 07            [ 1]  425 	jreq	00102$
                           0001AF   426 	Sstm8s_uart1$UART1_Cmd$103 ==.
                           0001AF   427 	Sstm8s_uart1$UART1_Cmd$104 ==.
                                    428 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085FA A4 DF            [ 1]  429 	and	a, #0xdf
      0085FC C7 52 34         [ 1]  430 	ld	0x5234, a
                           0001B4   431 	Sstm8s_uart1$UART1_Cmd$105 ==.
      0085FF 20 05            [ 2]  432 	jra	00104$
      008601                        433 00102$:
                           0001B6   434 	Sstm8s_uart1$UART1_Cmd$106 ==.
                           0001B6   435 	Sstm8s_uart1$UART1_Cmd$107 ==.
                                    436 ;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      008601 AA 20            [ 1]  437 	or	a, #0x20
      008603 C7 52 34         [ 1]  438 	ld	0x5234, a
                           0001BB   439 	Sstm8s_uart1$UART1_Cmd$108 ==.
      008606                        440 00104$:
                           0001BB   441 	Sstm8s_uart1$UART1_Cmd$109 ==.
                                    442 ;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
                           0001BB   443 	Sstm8s_uart1$UART1_Cmd$110 ==.
                           0001BB   444 	XG$UART1_Cmd$0$0 ==.
      008606 81               [ 4]  445 	ret
                           0001BC   446 	Sstm8s_uart1$UART1_Cmd$111 ==.
                           0001BC   447 	Sstm8s_uart1$UART1_ITConfig$112 ==.
                                    448 ;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    449 ;	-----------------------------------------
                                    450 ;	 function UART1_ITConfig
                                    451 ;	-----------------------------------------
      008607                        452 _UART1_ITConfig:
                           0001BC   453 	Sstm8s_uart1$UART1_ITConfig$113 ==.
      008607 89               [ 2]  454 	pushw	x
                           0001BD   455 	Sstm8s_uart1$UART1_ITConfig$114 ==.
                           0001BD   456 	Sstm8s_uart1$UART1_ITConfig$115 ==.
                                    457 ;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
      008608 1E 05            [ 2]  458 	ldw	x, (0x05, sp)
                           0001BF   459 	Sstm8s_uart1$UART1_ITConfig$116 ==.
                                    460 ;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      00860A 7B 06            [ 1]  461 	ld	a, (0x06, sp)
      00860C A4 0F            [ 1]  462 	and	a, #0x0f
      00860E 88               [ 1]  463 	push	a
                           0001C4   464 	Sstm8s_uart1$UART1_ITConfig$117 ==.
      00860F A6 01            [ 1]  465 	ld	a, #0x01
      008611 6B 03            [ 1]  466 	ld	(0x03, sp), a
      008613 84               [ 1]  467 	pop	a
                           0001C9   468 	Sstm8s_uart1$UART1_ITConfig$118 ==.
      008614 4D               [ 1]  469 	tnz	a
      008615 27 05            [ 1]  470 	jreq	00144$
      008617                        471 00143$:
      008617 08 02            [ 1]  472 	sll	(0x02, sp)
      008619 4A               [ 1]  473 	dec	a
      00861A 26 FB            [ 1]  474 	jrne	00143$
      00861C                        475 00144$:
                           0001D1   476 	Sstm8s_uart1$UART1_ITConfig$119 ==.
                                    477 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      00861C 9E               [ 1]  478 	ld	a, xh
      00861D 4A               [ 1]  479 	dec	a
      00861E 26 05            [ 1]  480 	jrne	00146$
      008620 A6 01            [ 1]  481 	ld	a, #0x01
      008622 6B 01            [ 1]  482 	ld	(0x01, sp), a
      008624 C5                     483 	.byte 0xc5
      008625                        484 00146$:
      008625 0F 01            [ 1]  485 	clr	(0x01, sp)
      008627                        486 00147$:
                           0001DC   487 	Sstm8s_uart1$UART1_ITConfig$120 ==.
                           0001DC   488 	Sstm8s_uart1$UART1_ITConfig$121 ==.
                                    489 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008627 9E               [ 1]  490 	ld	a, xh
      008628 A0 02            [ 1]  491 	sub	a, #0x02
      00862A 26 02            [ 1]  492 	jrne	00149$
      00862C 4C               [ 1]  493 	inc	a
      00862D 21                     494 	.byte 0x21
      00862E                        495 00149$:
      00862E 4F               [ 1]  496 	clr	a
      00862F                        497 00150$:
                           0001E4   498 	Sstm8s_uart1$UART1_ITConfig$122 ==.
                           0001E4   499 	Sstm8s_uart1$UART1_ITConfig$123 ==.
                                    500 ;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
      00862F 0D 07            [ 1]  501 	tnz	(0x07, sp)
      008631 27 27            [ 1]  502 	jreq	00114$
                           0001E8   503 	Sstm8s_uart1$UART1_ITConfig$124 ==.
                           0001E8   504 	Sstm8s_uart1$UART1_ITConfig$125 ==.
                                    505 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      008633 0D 01            [ 1]  506 	tnz	(0x01, sp)
      008635 27 0B            [ 1]  507 	jreq	00105$
                           0001EC   508 	Sstm8s_uart1$UART1_ITConfig$126 ==.
                           0001EC   509 	Sstm8s_uart1$UART1_ITConfig$127 ==.
                                    510 ;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      008637 C6 52 34         [ 1]  511 	ld	a, 0x5234
      00863A 1A 02            [ 1]  512 	or	a, (0x02, sp)
      00863C C7 52 34         [ 1]  513 	ld	0x5234, a
                           0001F4   514 	Sstm8s_uart1$UART1_ITConfig$128 ==.
      00863F CC 86 7F         [ 2]  515 	jp	00116$
      008642                        516 00105$:
                           0001F7   517 	Sstm8s_uart1$UART1_ITConfig$129 ==.
                                    518 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008642 4D               [ 1]  519 	tnz	a
      008643 27 0B            [ 1]  520 	jreq	00102$
                           0001FA   521 	Sstm8s_uart1$UART1_ITConfig$130 ==.
                           0001FA   522 	Sstm8s_uart1$UART1_ITConfig$131 ==.
                                    523 ;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      008645 C6 52 35         [ 1]  524 	ld	a, 0x5235
      008648 1A 02            [ 1]  525 	or	a, (0x02, sp)
      00864A C7 52 35         [ 1]  526 	ld	0x5235, a
                           000202   527 	Sstm8s_uart1$UART1_ITConfig$132 ==.
      00864D CC 86 7F         [ 2]  528 	jp	00116$
      008650                        529 00102$:
                           000205   530 	Sstm8s_uart1$UART1_ITConfig$133 ==.
                           000205   531 	Sstm8s_uart1$UART1_ITConfig$134 ==.
                                    532 ;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      008650 C6 52 37         [ 1]  533 	ld	a, 0x5237
      008653 1A 02            [ 1]  534 	or	a, (0x02, sp)
      008655 C7 52 37         [ 1]  535 	ld	0x5237, a
                           00020D   536 	Sstm8s_uart1$UART1_ITConfig$135 ==.
      008658 20 25            [ 2]  537 	jra	00116$
      00865A                        538 00114$:
                           00020F   539 	Sstm8s_uart1$UART1_ITConfig$136 ==.
                                    540 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00865A 03 02            [ 1]  541 	cpl	(0x02, sp)
                           000211   542 	Sstm8s_uart1$UART1_ITConfig$137 ==.
                           000211   543 	Sstm8s_uart1$UART1_ITConfig$138 ==.
                                    544 ;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
      00865C 0D 01            [ 1]  545 	tnz	(0x01, sp)
      00865E 27 0A            [ 1]  546 	jreq	00111$
                           000215   547 	Sstm8s_uart1$UART1_ITConfig$139 ==.
                           000215   548 	Sstm8s_uart1$UART1_ITConfig$140 ==.
                                    549 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      008660 C6 52 34         [ 1]  550 	ld	a, 0x5234
      008663 14 02            [ 1]  551 	and	a, (0x02, sp)
      008665 C7 52 34         [ 1]  552 	ld	0x5234, a
                           00021D   553 	Sstm8s_uart1$UART1_ITConfig$141 ==.
      008668 20 15            [ 2]  554 	jra	00116$
      00866A                        555 00111$:
                           00021F   556 	Sstm8s_uart1$UART1_ITConfig$142 ==.
                                    557 ;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
      00866A 4D               [ 1]  558 	tnz	a
      00866B 27 0A            [ 1]  559 	jreq	00108$
                           000222   560 	Sstm8s_uart1$UART1_ITConfig$143 ==.
                           000222   561 	Sstm8s_uart1$UART1_ITConfig$144 ==.
                                    562 ;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      00866D C6 52 35         [ 1]  563 	ld	a, 0x5235
      008670 14 02            [ 1]  564 	and	a, (0x02, sp)
      008672 C7 52 35         [ 1]  565 	ld	0x5235, a
                           00022A   566 	Sstm8s_uart1$UART1_ITConfig$145 ==.
      008675 20 08            [ 2]  567 	jra	00116$
      008677                        568 00108$:
                           00022C   569 	Sstm8s_uart1$UART1_ITConfig$146 ==.
                           00022C   570 	Sstm8s_uart1$UART1_ITConfig$147 ==.
                                    571 ;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      008677 C6 52 37         [ 1]  572 	ld	a, 0x5237
      00867A 14 02            [ 1]  573 	and	a, (0x02, sp)
      00867C C7 52 37         [ 1]  574 	ld	0x5237, a
                           000234   575 	Sstm8s_uart1$UART1_ITConfig$148 ==.
      00867F                        576 00116$:
                           000234   577 	Sstm8s_uart1$UART1_ITConfig$149 ==.
                                    578 ;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
      00867F 85               [ 2]  579 	popw	x
                           000235   580 	Sstm8s_uart1$UART1_ITConfig$150 ==.
                           000235   581 	Sstm8s_uart1$UART1_ITConfig$151 ==.
                           000235   582 	XG$UART1_ITConfig$0$0 ==.
      008680 81               [ 4]  583 	ret
                           000236   584 	Sstm8s_uart1$UART1_ITConfig$152 ==.
                           000236   585 	Sstm8s_uart1$UART1_ReceiveData8$153 ==.
                                    586 ;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    587 ;	-----------------------------------------
                                    588 ;	 function UART1_ReceiveData8
                                    589 ;	-----------------------------------------
      008681                        590 _UART1_ReceiveData8:
                           000236   591 	Sstm8s_uart1$UART1_ReceiveData8$154 ==.
                           000236   592 	Sstm8s_uart1$UART1_ReceiveData8$155 ==.
                                    593 ;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      008681 C6 52 31         [ 1]  594 	ld	a, 0x5231
                           000239   595 	Sstm8s_uart1$UART1_ReceiveData8$156 ==.
                                    596 ;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
                           000239   597 	Sstm8s_uart1$UART1_ReceiveData8$157 ==.
                           000239   598 	XG$UART1_ReceiveData8$0$0 ==.
      008684 81               [ 4]  599 	ret
                           00023A   600 	Sstm8s_uart1$UART1_ReceiveData8$158 ==.
                           00023A   601 	Sstm8s_uart1$UART1_SendData8$159 ==.
                                    602 ;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    603 ;	-----------------------------------------
                                    604 ;	 function UART1_SendData8
                                    605 ;	-----------------------------------------
      008685                        606 _UART1_SendData8:
                           00023A   607 	Sstm8s_uart1$UART1_SendData8$160 ==.
                           00023A   608 	Sstm8s_uart1$UART1_SendData8$161 ==.
                                    609 ;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
      008685 AE 52 31         [ 2]  610 	ldw	x, #0x5231
      008688 7B 03            [ 1]  611 	ld	a, (0x03, sp)
      00868A F7               [ 1]  612 	ld	(x), a
                           000240   613 	Sstm8s_uart1$UART1_SendData8$162 ==.
                                    614 ;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
                           000240   615 	Sstm8s_uart1$UART1_SendData8$163 ==.
                           000240   616 	XG$UART1_SendData8$0$0 ==.
      00868B 81               [ 4]  617 	ret
                           000241   618 	Sstm8s_uart1$UART1_SendData8$164 ==.
                           000241   619 	Sstm8s_uart1$UART1_GetFlagStatus$165 ==.
                                    620 ;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    621 ;	-----------------------------------------
                                    622 ;	 function UART1_GetFlagStatus
                                    623 ;	-----------------------------------------
      00868C                        624 _UART1_GetFlagStatus:
                           000241   625 	Sstm8s_uart1$UART1_GetFlagStatus$166 ==.
      00868C 52 03            [ 2]  626 	sub	sp, #3
                           000243   627 	Sstm8s_uart1$UART1_GetFlagStatus$167 ==.
                           000243   628 	Sstm8s_uart1$UART1_GetFlagStatus$168 ==.
                                    629 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      00868E 16 06            [ 2]  630 	ldw	y, (0x06, sp)
      008690 17 01            [ 2]  631 	ldw	(0x01, sp), y
                           000247   632 	Sstm8s_uart1$UART1_GetFlagStatus$169 ==.
                                    633 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      008692 7B 07            [ 1]  634 	ld	a, (0x07, sp)
      008694 6B 03            [ 1]  635 	ld	(0x03, sp), a
                           00024B   636 	Sstm8s_uart1$UART1_GetFlagStatus$170 ==.
                                    637 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      008696 1E 01            [ 2]  638 	ldw	x, (0x01, sp)
      008698 A3 02 10         [ 2]  639 	cpw	x, #0x0210
      00869B 26 0F            [ 1]  640 	jrne	00114$
                           000252   641 	Sstm8s_uart1$UART1_GetFlagStatus$171 ==.
                           000252   642 	Sstm8s_uart1$UART1_GetFlagStatus$172 ==.
                           000252   643 	Sstm8s_uart1$UART1_GetFlagStatus$173 ==.
                                    644 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00869D C6 52 37         [ 1]  645 	ld	a, 0x5237
      0086A0 14 03            [ 1]  646 	and	a, (0x03, sp)
      0086A2 27 05            [ 1]  647 	jreq	00102$
                           000259   648 	Sstm8s_uart1$UART1_GetFlagStatus$174 ==.
                           000259   649 	Sstm8s_uart1$UART1_GetFlagStatus$175 ==.
                                    650 ;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
      0086A4 A6 01            [ 1]  651 	ld	a, #0x01
                           00025B   652 	Sstm8s_uart1$UART1_GetFlagStatus$176 ==.
      0086A6 CC 86 CD         [ 2]  653 	jp	00115$
      0086A9                        654 00102$:
                           00025E   655 	Sstm8s_uart1$UART1_GetFlagStatus$177 ==.
                           00025E   656 	Sstm8s_uart1$UART1_GetFlagStatus$178 ==.
                                    657 ;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
      0086A9 4F               [ 1]  658 	clr	a
                           00025F   659 	Sstm8s_uart1$UART1_GetFlagStatus$179 ==.
      0086AA 20 21            [ 2]  660 	jra	00115$
      0086AC                        661 00114$:
                           000261   662 	Sstm8s_uart1$UART1_GetFlagStatus$180 ==.
                                    663 ;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      0086AC 1E 01            [ 2]  664 	ldw	x, (0x01, sp)
      0086AE A3 01 01         [ 2]  665 	cpw	x, #0x0101
      0086B1 26 0E            [ 1]  666 	jrne	00111$
                           000268   667 	Sstm8s_uart1$UART1_GetFlagStatus$181 ==.
                           000268   668 	Sstm8s_uart1$UART1_GetFlagStatus$182 ==.
                           000268   669 	Sstm8s_uart1$UART1_GetFlagStatus$183 ==.
                                    670 ;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0086B3 C6 52 35         [ 1]  671 	ld	a, 0x5235
      0086B6 14 03            [ 1]  672 	and	a, (0x03, sp)
      0086B8 27 04            [ 1]  673 	jreq	00105$
                           00026F   674 	Sstm8s_uart1$UART1_GetFlagStatus$184 ==.
                           00026F   675 	Sstm8s_uart1$UART1_GetFlagStatus$185 ==.
                                    676 ;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
      0086BA A6 01            [ 1]  677 	ld	a, #0x01
                           000271   678 	Sstm8s_uart1$UART1_GetFlagStatus$186 ==.
      0086BC 20 0F            [ 2]  679 	jra	00115$
      0086BE                        680 00105$:
                           000273   681 	Sstm8s_uart1$UART1_GetFlagStatus$187 ==.
                           000273   682 	Sstm8s_uart1$UART1_GetFlagStatus$188 ==.
                                    683 ;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
      0086BE 4F               [ 1]  684 	clr	a
                           000274   685 	Sstm8s_uart1$UART1_GetFlagStatus$189 ==.
      0086BF 20 0C            [ 2]  686 	jra	00115$
      0086C1                        687 00111$:
                           000276   688 	Sstm8s_uart1$UART1_GetFlagStatus$190 ==.
                           000276   689 	Sstm8s_uart1$UART1_GetFlagStatus$191 ==.
                                    690 ;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0086C1 C6 52 30         [ 1]  691 	ld	a, 0x5230
      0086C4 14 03            [ 1]  692 	and	a, (0x03, sp)
      0086C6 27 04            [ 1]  693 	jreq	00108$
                           00027D   694 	Sstm8s_uart1$UART1_GetFlagStatus$192 ==.
                           00027D   695 	Sstm8s_uart1$UART1_GetFlagStatus$193 ==.
                                    696 ;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
      0086C8 A6 01            [ 1]  697 	ld	a, #0x01
                           00027F   698 	Sstm8s_uart1$UART1_GetFlagStatus$194 ==.
      0086CA 20 01            [ 2]  699 	jra	00115$
      0086CC                        700 00108$:
                           000281   701 	Sstm8s_uart1$UART1_GetFlagStatus$195 ==.
                           000281   702 	Sstm8s_uart1$UART1_GetFlagStatus$196 ==.
                                    703 ;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
      0086CC 4F               [ 1]  704 	clr	a
                           000282   705 	Sstm8s_uart1$UART1_GetFlagStatus$197 ==.
      0086CD                        706 00115$:
                           000282   707 	Sstm8s_uart1$UART1_GetFlagStatus$198 ==.
                                    708 ;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
                           000282   709 	Sstm8s_uart1$UART1_GetFlagStatus$199 ==.
                                    710 ;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
      0086CD 5B 03            [ 2]  711 	addw	sp, #3
                           000284   712 	Sstm8s_uart1$UART1_GetFlagStatus$200 ==.
                           000284   713 	Sstm8s_uart1$UART1_GetFlagStatus$201 ==.
                           000284   714 	XG$UART1_GetFlagStatus$0$0 ==.
      0086CF 81               [ 4]  715 	ret
                           000285   716 	Sstm8s_uart1$UART1_GetFlagStatus$202 ==.
                           000285   717 	Sstm8s_uart1$UART1_GetITStatus$203 ==.
                                    718 ;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                    719 ;	-----------------------------------------
                                    720 ;	 function UART1_GetITStatus
                                    721 ;	-----------------------------------------
      0086D0                        722 _UART1_GetITStatus:
                           000285   723 	Sstm8s_uart1$UART1_GetITStatus$204 ==.
      0086D0 52 04            [ 2]  724 	sub	sp, #4
                           000287   725 	Sstm8s_uart1$UART1_GetITStatus$205 ==.
                           000287   726 	Sstm8s_uart1$UART1_GetITStatus$206 ==.
                                    727 ;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0086D2 7B 08            [ 1]  728 	ld	a, (0x08, sp)
      0086D4 97               [ 1]  729 	ld	xl, a
      0086D5 A4 0F            [ 1]  730 	and	a, #0x0f
      0086D7 88               [ 1]  731 	push	a
                           00028D   732 	Sstm8s_uart1$UART1_GetITStatus$207 ==.
      0086D8 A6 01            [ 1]  733 	ld	a, #0x01
      0086DA 6B 02            [ 1]  734 	ld	(0x02, sp), a
      0086DC 84               [ 1]  735 	pop	a
                           000292   736 	Sstm8s_uart1$UART1_GetITStatus$208 ==.
      0086DD 4D               [ 1]  737 	tnz	a
      0086DE 27 05            [ 1]  738 	jreq	00162$
      0086E0                        739 00161$:
      0086E0 08 01            [ 1]  740 	sll	(0x01, sp)
      0086E2 4A               [ 1]  741 	dec	a
      0086E3 26 FB            [ 1]  742 	jrne	00161$
      0086E5                        743 00162$:
                           00029A   744 	Sstm8s_uart1$UART1_GetITStatus$209 ==.
                                    745 ;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      0086E5 9F               [ 1]  746 	ld	a, xl
      0086E6 4E               [ 1]  747 	swap	a
      0086E7 A4 0F            [ 1]  748 	and	a, #0x0f
                           00029E   749 	Sstm8s_uart1$UART1_GetITStatus$210 ==.
                                    750 ;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0086E9 88               [ 1]  751 	push	a
                           00029F   752 	Sstm8s_uart1$UART1_GetITStatus$211 ==.
      0086EA A6 01            [ 1]  753 	ld	a, #0x01
      0086EC 6B 03            [ 1]  754 	ld	(0x03, sp), a
      0086EE 84               [ 1]  755 	pop	a
                           0002A4   756 	Sstm8s_uart1$UART1_GetITStatus$212 ==.
      0086EF 4D               [ 1]  757 	tnz	a
      0086F0 27 05            [ 1]  758 	jreq	00164$
      0086F2                        759 00163$:
      0086F2 08 02            [ 1]  760 	sll	(0x02, sp)
      0086F4 4A               [ 1]  761 	dec	a
      0086F5 26 FB            [ 1]  762 	jrne	00163$
      0086F7                        763 00164$:
                           0002AC   764 	Sstm8s_uart1$UART1_GetITStatus$213 ==.
                                    765 ;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      0086F7 16 07            [ 2]  766 	ldw	y, (0x07, sp)
      0086F9 17 03            [ 2]  767 	ldw	(0x03, sp), y
      0086FB 93               [ 1]  768 	ldw	x, y
      0086FC A3 01 00         [ 2]  769 	cpw	x, #0x0100
      0086FF 26 1A            [ 1]  770 	jrne	00117$
                           0002B6   771 	Sstm8s_uart1$UART1_GetITStatus$214 ==.
                           0002B6   772 	Sstm8s_uart1$UART1_GetITStatus$215 ==.
                           0002B6   773 	Sstm8s_uart1$UART1_GetITStatus$216 ==.
                                    774 ;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      008701 C6 52 34         [ 1]  775 	ld	a, 0x5234
      008704 14 02            [ 1]  776 	and	a, (0x02, sp)
      008706 97               [ 1]  777 	ld	xl, a
                           0002BC   778 	Sstm8s_uart1$UART1_GetITStatus$217 ==.
                                    779 ;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008707 C6 52 30         [ 1]  780 	ld	a, 0x5230
      00870A 14 01            [ 1]  781 	and	a, (0x01, sp)
      00870C 27 09            [ 1]  782 	jreq	00102$
      00870E 9F               [ 1]  783 	ld	a, xl
      00870F 4D               [ 1]  784 	tnz	a
      008710 27 05            [ 1]  785 	jreq	00102$
                           0002C7   786 	Sstm8s_uart1$UART1_GetITStatus$218 ==.
                           0002C7   787 	Sstm8s_uart1$UART1_GetITStatus$219 ==.
                                    788 ;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
      008712 A6 01            [ 1]  789 	ld	a, #0x01
                           0002C9   790 	Sstm8s_uart1$UART1_GetITStatus$220 ==.
      008714 CC 87 50         [ 2]  791 	jp	00118$
      008717                        792 00102$:
                           0002CC   793 	Sstm8s_uart1$UART1_GetITStatus$221 ==.
                           0002CC   794 	Sstm8s_uart1$UART1_GetITStatus$222 ==.
                                    795 ;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
      008717 4F               [ 1]  796 	clr	a
                           0002CD   797 	Sstm8s_uart1$UART1_GetITStatus$223 ==.
      008718 CC 87 50         [ 2]  798 	jp	00118$
      00871B                        799 00117$:
                           0002D0   800 	Sstm8s_uart1$UART1_GetITStatus$224 ==.
                                    801 ;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      00871B 1E 03            [ 2]  802 	ldw	x, (0x03, sp)
      00871D A3 03 46         [ 2]  803 	cpw	x, #0x0346
      008720 26 18            [ 1]  804 	jrne	00114$
                           0002D7   805 	Sstm8s_uart1$UART1_GetITStatus$225 ==.
                           0002D7   806 	Sstm8s_uart1$UART1_GetITStatus$226 ==.
                           0002D7   807 	Sstm8s_uart1$UART1_GetITStatus$227 ==.
                                    808 ;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      008722 C6 52 37         [ 1]  809 	ld	a, 0x5237
      008725 14 02            [ 1]  810 	and	a, (0x02, sp)
      008727 97               [ 1]  811 	ld	xl, a
                           0002DD   812 	Sstm8s_uart1$UART1_GetITStatus$228 ==.
                                    813 ;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      008728 C6 52 37         [ 1]  814 	ld	a, 0x5237
      00872B 14 01            [ 1]  815 	and	a, (0x01, sp)
      00872D 27 08            [ 1]  816 	jreq	00106$
      00872F 9F               [ 1]  817 	ld	a, xl
      008730 4D               [ 1]  818 	tnz	a
      008731 27 04            [ 1]  819 	jreq	00106$
                           0002E8   820 	Sstm8s_uart1$UART1_GetITStatus$229 ==.
                           0002E8   821 	Sstm8s_uart1$UART1_GetITStatus$230 ==.
                                    822 ;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
      008733 A6 01            [ 1]  823 	ld	a, #0x01
                           0002EA   824 	Sstm8s_uart1$UART1_GetITStatus$231 ==.
      008735 20 19            [ 2]  825 	jra	00118$
      008737                        826 00106$:
                           0002EC   827 	Sstm8s_uart1$UART1_GetITStatus$232 ==.
                           0002EC   828 	Sstm8s_uart1$UART1_GetITStatus$233 ==.
                                    829 ;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
      008737 4F               [ 1]  830 	clr	a
                           0002ED   831 	Sstm8s_uart1$UART1_GetITStatus$234 ==.
      008738 20 16            [ 2]  832 	jra	00118$
      00873A                        833 00114$:
                           0002EF   834 	Sstm8s_uart1$UART1_GetITStatus$235 ==.
                           0002EF   835 	Sstm8s_uart1$UART1_GetITStatus$236 ==.
                                    836 ;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      00873A C6 52 35         [ 1]  837 	ld	a, 0x5235
      00873D 14 02            [ 1]  838 	and	a, (0x02, sp)
      00873F 97               [ 1]  839 	ld	xl, a
                           0002F5   840 	Sstm8s_uart1$UART1_GetITStatus$237 ==.
                                    841 ;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008740 C6 52 30         [ 1]  842 	ld	a, 0x5230
      008743 14 01            [ 1]  843 	and	a, (0x01, sp)
      008745 27 08            [ 1]  844 	jreq	00110$
      008747 9F               [ 1]  845 	ld	a, xl
      008748 4D               [ 1]  846 	tnz	a
      008749 27 04            [ 1]  847 	jreq	00110$
                           000300   848 	Sstm8s_uart1$UART1_GetITStatus$238 ==.
                           000300   849 	Sstm8s_uart1$UART1_GetITStatus$239 ==.
                                    850 ;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
      00874B A6 01            [ 1]  851 	ld	a, #0x01
                           000302   852 	Sstm8s_uart1$UART1_GetITStatus$240 ==.
      00874D 20 01            [ 2]  853 	jra	00118$
      00874F                        854 00110$:
                           000304   855 	Sstm8s_uart1$UART1_GetITStatus$241 ==.
                           000304   856 	Sstm8s_uart1$UART1_GetITStatus$242 ==.
                                    857 ;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
      00874F 4F               [ 1]  858 	clr	a
                           000305   859 	Sstm8s_uart1$UART1_GetITStatus$243 ==.
      008750                        860 00118$:
                           000305   861 	Sstm8s_uart1$UART1_GetITStatus$244 ==.
                                    862 ;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
                           000305   863 	Sstm8s_uart1$UART1_GetITStatus$245 ==.
                                    864 ;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
      008750 5B 04            [ 2]  865 	addw	sp, #4
                           000307   866 	Sstm8s_uart1$UART1_GetITStatus$246 ==.
                           000307   867 	Sstm8s_uart1$UART1_GetITStatus$247 ==.
                           000307   868 	XG$UART1_GetITStatus$0$0 ==.
      008752 81               [ 4]  869 	ret
                           000308   870 	Sstm8s_uart1$UART1_GetITStatus$248 ==.
                           000308   871 	Sstm8s_uart1$UART1_ClearITPendingBit$249 ==.
                                    872 ;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                    873 ;	-----------------------------------------
                                    874 ;	 function UART1_ClearITPendingBit
                                    875 ;	-----------------------------------------
      008753                        876 _UART1_ClearITPendingBit:
                           000308   877 	Sstm8s_uart1$UART1_ClearITPendingBit$250 ==.
                           000308   878 	Sstm8s_uart1$UART1_ClearITPendingBit$251 ==.
                                    879 ;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      008753 1E 03            [ 2]  880 	ldw	x, (0x03, sp)
      008755 A3 02 55         [ 2]  881 	cpw	x, #0x0255
      008758 26 06            [ 1]  882 	jrne	00102$
                           00030F   883 	Sstm8s_uart1$UART1_ClearITPendingBit$252 ==.
                           00030F   884 	Sstm8s_uart1$UART1_ClearITPendingBit$253 ==.
                           00030F   885 	Sstm8s_uart1$UART1_ClearITPendingBit$254 ==.
                                    886 ;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      00875A 35 DF 52 30      [ 1]  887 	mov	0x5230+0, #0xdf
                           000313   888 	Sstm8s_uart1$UART1_ClearITPendingBit$255 ==.
      00875E 20 04            [ 2]  889 	jra	00104$
      008760                        890 00102$:
                           000315   891 	Sstm8s_uart1$UART1_ClearITPendingBit$256 ==.
                           000315   892 	Sstm8s_uart1$UART1_ClearITPendingBit$257 ==.
                                    893 ;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      008760 72 19 52 37      [ 1]  894 	bres	21047, #4
                           000319   895 	Sstm8s_uart1$UART1_ClearITPendingBit$258 ==.
      008764                        896 00104$:
                           000319   897 	Sstm8s_uart1$UART1_ClearITPendingBit$259 ==.
                                    898 ;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
                           000319   899 	Sstm8s_uart1$UART1_ClearITPendingBit$260 ==.
                           000319   900 	XG$UART1_ClearITPendingBit$0$0 ==.
      008764 81               [ 4]  901 	ret
                           00031A   902 	Sstm8s_uart1$UART1_ClearITPendingBit$261 ==.
                                    903 	.area CODE
                                    904 	.area CONST
                                    905 	.area INITIALIZER
                                    906 	.area CABS (ABS)
                                    907 
                                    908 	.area .debug_line (NOLOAD)
      0006CD 00 00 03 9B            909 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0006D1                        910 Ldebug_line_start:
      0006D1 00 02                  911 	.dw	2
      0006D3 00 00 00 81            912 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0006D7 01                     913 	.db	1
      0006D8 01                     914 	.db	1
      0006D9 FB                     915 	.db	-5
      0006DA 0F                     916 	.db	15
      0006DB 0A                     917 	.db	10
      0006DC 00                     918 	.db	0
      0006DD 01                     919 	.db	1
      0006DE 01                     920 	.db	1
      0006DF 01                     921 	.db	1
      0006E0 01                     922 	.db	1
      0006E1 00                     923 	.db	0
      0006E2 00                     924 	.db	0
      0006E3 00                     925 	.db	0
      0006E4 01                     926 	.db	1
      0006E5 43 3A 5C 50 72 6F 67   927 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00070D 00                     928 	.db	0
      00070E 43 3A 5C 50 72 6F 67   929 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000731 00                     930 	.db	0
      000732 00                     931 	.db	0
      000733 53 6F 75 72 63 65 2F   932 	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 75 61 72
             74 31 2E 63
      000753 00                     933 	.db	0
      000754 00                     934 	.uleb128	0
      000755 00                     935 	.uleb128	0
      000756 00                     936 	.uleb128	0
      000757 00                     937 	.db	0
      000758                        938 Ldebug_line_stmt:
      000758 00                     939 	.db	0
      000759 05                     940 	.uleb128	5
      00075A 02                     941 	.db	2
      00075B 00 00 84 4B            942 	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
      00075F 03                     943 	.db	3
      000760 34                     944 	.sleb128	52
      000761 01                     945 	.db	1
      000762 09                     946 	.db	9
      000763 00 00                  947 	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
      000765 03                     948 	.db	3
      000766 04                     949 	.sleb128	4
      000767 01                     950 	.db	1
      000768 09                     951 	.db	9
      000769 00 03                  952 	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
      00076B 03                     953 	.db	3
      00076C 01                     954 	.sleb128	1
      00076D 01                     955 	.db	1
      00076E 09                     956 	.db	9
      00076F 00 03                  957 	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
      000771 03                     958 	.db	3
      000772 02                     959 	.sleb128	2
      000773 01                     960 	.db	1
      000774 09                     961 	.db	9
      000775 00 04                  962 	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
      000777 03                     963 	.db	3
      000778 01                     964 	.sleb128	1
      000779 01                     965 	.db	1
      00077A 09                     966 	.db	9
      00077B 00 04                  967 	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
      00077D 03                     968 	.db	3
      00077E 02                     969 	.sleb128	2
      00077F 01                     970 	.db	1
      000780 09                     971 	.db	9
      000781 00 04                  972 	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
      000783 03                     973 	.db	3
      000784 01                     974 	.sleb128	1
      000785 01                     975 	.db	1
      000786 09                     976 	.db	9
      000787 00 04                  977 	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
      000789 03                     978 	.db	3
      00078A 01                     979 	.sleb128	1
      00078B 01                     980 	.db	1
      00078C 09                     981 	.db	9
      00078D 00 04                  982 	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
      00078F 03                     983 	.db	3
      000790 01                     984 	.sleb128	1
      000791 01                     985 	.db	1
      000792 09                     986 	.db	9
      000793 00 04                  987 	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
      000795 03                     988 	.db	3
      000796 01                     989 	.sleb128	1
      000797 01                     990 	.db	1
      000798 09                     991 	.db	9
      000799 00 04                  992 	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
      00079B 03                     993 	.db	3
      00079C 02                     994 	.sleb128	2
      00079D 01                     995 	.db	1
      00079E 09                     996 	.db	9
      00079F 00 04                  997 	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
      0007A1 03                     998 	.db	3
      0007A2 01                     999 	.sleb128	1
      0007A3 01                    1000 	.db	1
      0007A4 09                    1001 	.db	9
      0007A5 00 04                 1002 	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
      0007A7 03                    1003 	.db	3
      0007A8 01                    1004 	.sleb128	1
      0007A9 01                    1005 	.db	1
      0007AA 09                    1006 	.db	9
      0007AB 00 01                 1007 	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
      0007AD 00                    1008 	.db	0
      0007AE 01                    1009 	.uleb128	1
      0007AF 01                    1010 	.db	1
      0007B0 00                    1011 	.db	0
      0007B1 05                    1012 	.uleb128	5
      0007B2 02                    1013 	.db	2
      0007B3 00 00 84 76           1014 	.dw	0,(Sstm8s_uart1$UART1_Init$16)
      0007B7 03                    1015 	.db	3
      0007B8 D9 00                 1016 	.sleb128	89
      0007BA 01                    1017 	.db	1
      0007BB 09                    1018 	.db	9
      0007BC 00 02                 1019 	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
      0007BE 03                    1020 	.db	3
      0007BF 0F                    1021 	.sleb128	15
      0007C0 01                    1022 	.db	1
      0007C1 09                    1023 	.db	9
      0007C2 00 04                 1024 	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
      0007C4 03                    1025 	.db	3
      0007C5 03                    1026 	.sleb128	3
      0007C6 01                    1027 	.db	1
      0007C7 09                    1028 	.db	9
      0007C8 00 08                 1029 	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
      0007CA 03                    1030 	.db	3
      0007CB 03                    1031 	.sleb128	3
      0007CC 01                    1032 	.db	1
      0007CD 09                    1033 	.db	9
      0007CE 00 08                 1034 	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
      0007D0 03                    1035 	.db	3
      0007D1 02                    1036 	.sleb128	2
      0007D2 01                    1037 	.db	1
      0007D3 09                    1038 	.db	9
      0007D4 00 08                 1039 	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
      0007D6 03                    1040 	.db	3
      0007D7 03                    1041 	.sleb128	3
      0007D8 01                    1042 	.db	1
      0007D9 09                    1043 	.db	9
      0007DA 00 08                 1044 	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
      0007DC 03                    1045 	.db	3
      0007DD 02                    1046 	.sleb128	2
      0007DE 01                    1047 	.db	1
      0007DF 09                    1048 	.db	9
      0007E0 00 08                 1049 	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
      0007E2 03                    1050 	.db	3
      0007E3 03                    1051 	.sleb128	3
      0007E4 01                    1052 	.db	1
      0007E5 09                    1053 	.db	9
      0007E6 00 07                 1054 	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
      0007E8 03                    1055 	.db	3
      0007E9 02                    1056 	.sleb128	2
      0007EA 01                    1057 	.db	1
      0007EB 09                    1058 	.db	9
      0007EC 00 08                 1059 	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
      0007EE 03                    1060 	.db	3
      0007EF 02                    1061 	.sleb128	2
      0007F0 01                    1062 	.db	1
      0007F1 09                    1063 	.db	9
      0007F2 00 08                 1064 	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
      0007F4 03                    1065 	.db	3
      0007F5 03                    1066 	.sleb128	3
      0007F6 01                    1067 	.db	1
      0007F7 09                    1068 	.db	9
      0007F8 00 31                 1069 	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
      0007FA 03                    1070 	.db	3
      0007FB 01                    1071 	.sleb128	1
      0007FC 01                    1072 	.db	1
      0007FD 09                    1073 	.db	9
      0007FE 00 2E                 1074 	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
      000800 03                    1075 	.db	3
      000801 02                    1076 	.sleb128	2
      000802 01                    1077 	.db	1
      000803 09                    1078 	.db	9
      000804 00 51                 1079 	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
      000806 03                    1080 	.db	3
      000807 02                    1081 	.sleb128	2
      000808 01                    1082 	.db	1
      000809 09                    1083 	.db	9
      00080A 00 12                 1084 	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
      00080C 03                    1085 	.db	3
      00080D 02                    1086 	.sleb128	2
      00080E 01                    1087 	.db	1
      00080F 09                    1088 	.db	9
      000810 00 0C                 1089 	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
      000812 03                    1090 	.db	3
      000813 03                    1091 	.sleb128	3
      000814 01                    1092 	.db	1
      000815 09                    1093 	.db	9
      000816 00 08                 1094 	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
      000818 03                    1095 	.db	3
      000819 02                    1096 	.sleb128	2
      00081A 01                    1097 	.db	1
      00081B 09                    1098 	.db	9
      00081C 00 08                 1099 	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
      00081E 03                    1100 	.db	3
      00081F 02                    1101 	.sleb128	2
      000820 01                    1102 	.db	1
      000821 09                    1103 	.db	9
      000822 00 0E                 1104 	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
      000824 03                    1105 	.db	3
      000825 7C                    1106 	.sleb128	-4
      000826 01                    1107 	.db	1
      000827 09                    1108 	.db	9
      000828 00 03                 1109 	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
      00082A 03                    1110 	.db	3
      00082B 07                    1111 	.sleb128	7
      00082C 01                    1112 	.db	1
      00082D 09                    1113 	.db	9
      00082E 00 08                 1114 	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
      000830 03                    1115 	.db	3
      000831 03                    1116 	.sleb128	3
      000832 01                    1117 	.db	1
      000833 09                    1118 	.db	9
      000834 00 07                 1119 	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
      000836 03                    1120 	.db	3
      000837 05                    1121 	.sleb128	5
      000838 01                    1122 	.db	1
      000839 09                    1123 	.db	9
      00083A 00 05                 1124 	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
      00083C 03                    1125 	.db	3
      00083D 71                    1126 	.sleb128	-15
      00083E 01                    1127 	.db	1
      00083F 09                    1128 	.db	9
      000840 00 03                 1129 	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
      000842 03                    1130 	.db	3
      000843 11                    1131 	.sleb128	17
      000844 01                    1132 	.db	1
      000845 09                    1133 	.db	9
      000846 00 08                 1134 	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
      000848 03                    1135 	.db	3
      000849 03                    1136 	.sleb128	3
      00084A 01                    1137 	.db	1
      00084B 09                    1138 	.db	9
      00084C 00 07                 1139 	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
      00084E 03                    1140 	.db	3
      00084F 05                    1141 	.sleb128	5
      000850 01                    1142 	.db	1
      000851 09                    1143 	.db	9
      000852 00 05                 1144 	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
      000854 03                    1145 	.db	3
      000855 4C                    1146 	.sleb128	-52
      000856 01                    1147 	.db	1
      000857 09                    1148 	.db	9
      000858 00 03                 1149 	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
      00085A 03                    1150 	.db	3
      00085B 38                    1151 	.sleb128	56
      00085C 01                    1152 	.db	1
      00085D 09                    1153 	.db	9
      00085E 00 04                 1154 	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
      000860 03                    1155 	.db	3
      000861 03                    1156 	.sleb128	3
      000862 01                    1157 	.db	1
      000863 09                    1158 	.db	9
      000864 00 07                 1159 	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
      000866 03                    1160 	.db	3
      000867 04                    1161 	.sleb128	4
      000868 01                    1162 	.db	1
      000869 09                    1163 	.db	9
      00086A 00 0D                 1164 	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
      00086C 03                    1165 	.db	3
      00086D 02                    1166 	.sleb128	2
      00086E 01                    1167 	.db	1
      00086F 09                    1168 	.db	9
      000870 00 03                 1169 	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
      000872 00                    1170 	.db	0
      000873 01                    1171 	.uleb128	1
      000874 01                    1172 	.db	1
      000875 00                    1173 	.db	0
      000876 05                    1174 	.uleb128	5
      000877 02                    1175 	.db	2
      000878 00 00 85 F3           1176 	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
      00087C 03                    1177 	.db	3
      00087D B7 01                 1178 	.sleb128	183
      00087F 01                    1179 	.db	1
      000880 09                    1180 	.db	9
      000881 00 00                 1181 	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
      000883 03                    1182 	.db	3
      000884 05                    1183 	.sleb128	5
      000885 01                    1184 	.db	1
      000886 09                    1185 	.db	9
      000887 00 03                 1186 	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
      000889 03                    1187 	.db	3
      00088A 7D                    1188 	.sleb128	-3
      00088B 01                    1189 	.db	1
      00088C 09                    1190 	.db	9
      00088D 00 04                 1191 	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
      00088F 03                    1192 	.db	3
      000890 03                    1193 	.sleb128	3
      000891 01                    1194 	.db	1
      000892 09                    1195 	.db	9
      000893 00 07                 1196 	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
      000895 03                    1197 	.db	3
      000896 05                    1198 	.sleb128	5
      000897 01                    1199 	.db	1
      000898 09                    1200 	.db	9
      000899 00 05                 1201 	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
      00089B 03                    1202 	.db	3
      00089C 02                    1203 	.sleb128	2
      00089D 01                    1204 	.db	1
      00089E 09                    1205 	.db	9
      00089F 00 01                 1206 	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
      0008A1 00                    1207 	.db	0
      0008A2 01                    1208 	.uleb128	1
      0008A3 01                    1209 	.db	1
      0008A4 00                    1210 	.db	0
      0008A5 05                    1211 	.uleb128	5
      0008A6 02                    1212 	.db	2
      0008A7 00 00 86 07           1213 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
      0008AB 03                    1214 	.db	3
      0008AC D2 01                 1215 	.sleb128	210
      0008AE 01                    1216 	.db	1
      0008AF 09                    1217 	.db	9
      0008B0 00 01                 1218 	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
      0008B2 03                    1219 	.db	3
      0008B3 09                    1220 	.sleb128	9
      0008B4 01                    1221 	.db	1
      0008B5 09                    1222 	.db	9
      0008B6 00 02                 1223 	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
      0008B8 03                    1224 	.db	3
      0008B9 02                    1225 	.sleb128	2
      0008BA 01                    1226 	.db	1
      0008BB 09                    1227 	.db	9
      0008BC 00 12                 1228 	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
      0008BE 03                    1229 	.db	3
      0008BF 05                    1230 	.sleb128	5
      0008C0 01                    1231 	.db	1
      0008C1 09                    1232 	.db	9
      0008C2 00 0B                 1233 	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
      0008C4 03                    1234 	.db	3
      0008C5 04                    1235 	.sleb128	4
      0008C6 01                    1236 	.db	1
      0008C7 09                    1237 	.db	9
      0008C8 00 08                 1238 	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
      0008CA 03                    1239 	.db	3
      0008CB 79                    1240 	.sleb128	-7
      0008CC 01                    1241 	.db	1
      0008CD 09                    1242 	.db	9
      0008CE 00 04                 1243 	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
      0008D0 03                    1244 	.db	3
      0008D1 03                    1245 	.sleb128	3
      0008D2 01                    1246 	.db	1
      0008D3 09                    1247 	.db	9
      0008D4 00 04                 1248 	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
      0008D6 03                    1249 	.db	3
      0008D7 02                    1250 	.sleb128	2
      0008D8 01                    1251 	.db	1
      0008D9 09                    1252 	.db	9
      0008DA 00 0B                 1253 	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
      0008DC 03                    1254 	.db	3
      0008DD 02                    1255 	.sleb128	2
      0008DE 01                    1256 	.db	1
      0008DF 09                    1257 	.db	9
      0008E0 00 03                 1258 	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
      0008E2 03                    1259 	.db	3
      0008E3 02                    1260 	.sleb128	2
      0008E4 01                    1261 	.db	1
      0008E5 09                    1262 	.db	9
      0008E6 00 0B                 1263 	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
      0008E8 03                    1264 	.db	3
      0008E9 04                    1265 	.sleb128	4
      0008EA 01                    1266 	.db	1
      0008EB 09                    1267 	.db	9
      0008EC 00 0A                 1268 	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
      0008EE 03                    1269 	.db	3
      0008EF 08                    1270 	.sleb128	8
      0008F0 01                    1271 	.db	1
      0008F1 09                    1272 	.db	9
      0008F2 00 02                 1273 	.dw	Sstm8s_uart1$UART1_ITConfig$138-Sstm8s_uart1$UART1_ITConfig$136
      0008F4 03                    1274 	.db	3
      0008F5 7E                    1275 	.sleb128	-2
      0008F6 01                    1276 	.db	1
      0008F7 09                    1277 	.db	9
      0008F8 00 04                 1278 	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$138
      0008FA 03                    1279 	.db	3
      0008FB 02                    1280 	.sleb128	2
      0008FC 01                    1281 	.db	1
      0008FD 09                    1282 	.db	9
      0008FE 00 0A                 1283 	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
      000900 03                    1284 	.db	3
      000901 02                    1285 	.sleb128	2
      000902 01                    1286 	.db	1
      000903 09                    1287 	.db	9
      000904 00 03                 1288 	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
      000906 03                    1289 	.db	3
      000907 02                    1290 	.sleb128	2
      000908 01                    1291 	.db	1
      000909 09                    1292 	.db	9
      00090A 00 0A                 1293 	.dw	Sstm8s_uart1$UART1_ITConfig$147-Sstm8s_uart1$UART1_ITConfig$144
      00090C 03                    1294 	.db	3
      00090D 04                    1295 	.sleb128	4
      00090E 01                    1296 	.db	1
      00090F 09                    1297 	.db	9
      000910 00 08                 1298 	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$147
      000912 03                    1299 	.db	3
      000913 04                    1300 	.sleb128	4
      000914 01                    1301 	.db	1
      000915 09                    1302 	.db	9
      000916 00 02                 1303 	.dw	1+Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
      000918 00                    1304 	.db	0
      000919 01                    1305 	.uleb128	1
      00091A 01                    1306 	.db	1
      00091B 00                    1307 	.db	0
      00091C 05                    1308 	.uleb128	5
      00091D 02                    1309 	.db	2
      00091E 00 00 86 81           1310 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$153)
      000922 03                    1311 	.db	3
      000923 C2 03                 1312 	.sleb128	450
      000925 01                    1313 	.db	1
      000926 09                    1314 	.db	9
      000927 00 00                 1315 	.dw	Sstm8s_uart1$UART1_ReceiveData8$155-Sstm8s_uart1$UART1_ReceiveData8$153
      000929 03                    1316 	.db	3
      00092A 02                    1317 	.sleb128	2
      00092B 01                    1318 	.db	1
      00092C 09                    1319 	.db	9
      00092D 00 03                 1320 	.dw	Sstm8s_uart1$UART1_ReceiveData8$156-Sstm8s_uart1$UART1_ReceiveData8$155
      00092F 03                    1321 	.db	3
      000930 01                    1322 	.sleb128	1
      000931 01                    1323 	.db	1
      000932 09                    1324 	.db	9
      000933 00 01                 1325 	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$157-Sstm8s_uart1$UART1_ReceiveData8$156
      000935 00                    1326 	.db	0
      000936 01                    1327 	.uleb128	1
      000937 01                    1328 	.db	1
      000938 00                    1329 	.db	0
      000939 05                    1330 	.uleb128	5
      00093A 02                    1331 	.db	2
      00093B 00 00 86 85           1332 	.dw	0,(Sstm8s_uart1$UART1_SendData8$159)
      00093F 03                    1333 	.db	3
      000940 D9 03                 1334 	.sleb128	473
      000942 01                    1335 	.db	1
      000943 09                    1336 	.db	9
      000944 00 00                 1337 	.dw	Sstm8s_uart1$UART1_SendData8$161-Sstm8s_uart1$UART1_SendData8$159
      000946 03                    1338 	.db	3
      000947 03                    1339 	.sleb128	3
      000948 01                    1340 	.db	1
      000949 09                    1341 	.db	9
      00094A 00 06                 1342 	.dw	Sstm8s_uart1$UART1_SendData8$162-Sstm8s_uart1$UART1_SendData8$161
      00094C 03                    1343 	.db	3
      00094D 01                    1344 	.sleb128	1
      00094E 01                    1345 	.db	1
      00094F 09                    1346 	.db	9
      000950 00 01                 1347 	.dw	1+Sstm8s_uart1$UART1_SendData8$163-Sstm8s_uart1$UART1_SendData8$162
      000952 00                    1348 	.db	0
      000953 01                    1349 	.uleb128	1
      000954 01                    1350 	.db	1
      000955 00                    1351 	.db	0
      000956 05                    1352 	.uleb128	5
      000957 02                    1353 	.db	2
      000958 00 00 86 8C           1354 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$165)
      00095C 03                    1355 	.db	3
      00095D B7 04                 1356 	.sleb128	567
      00095F 01                    1357 	.db	1
      000960 09                    1358 	.db	9
      000961 00 02                 1359 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$168-Sstm8s_uart1$UART1_GetFlagStatus$165
      000963 03                    1360 	.db	3
      000964 09                    1361 	.sleb128	9
      000965 01                    1362 	.db	1
      000966 09                    1363 	.db	9
      000967 00 04                 1364 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$169-Sstm8s_uart1$UART1_GetFlagStatus$168
      000969 03                    1365 	.db	3
      00096A 02                    1366 	.sleb128	2
      00096B 01                    1367 	.db	1
      00096C 09                    1368 	.db	9
      00096D 00 04                 1369 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$170-Sstm8s_uart1$UART1_GetFlagStatus$169
      00096F 03                    1370 	.db	3
      000970 7E                    1371 	.sleb128	-2
      000971 01                    1372 	.db	1
      000972 09                    1373 	.db	9
      000973 00 07                 1374 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$173-Sstm8s_uart1$UART1_GetFlagStatus$170
      000975 03                    1375 	.db	3
      000976 02                    1376 	.sleb128	2
      000977 01                    1377 	.db	1
      000978 09                    1378 	.db	9
      000979 00 07                 1379 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$175-Sstm8s_uart1$UART1_GetFlagStatus$173
      00097B 03                    1380 	.db	3
      00097C 03                    1381 	.sleb128	3
      00097D 01                    1382 	.db	1
      00097E 09                    1383 	.db	9
      00097F 00 05                 1384 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$178-Sstm8s_uart1$UART1_GetFlagStatus$175
      000981 03                    1385 	.db	3
      000982 05                    1386 	.sleb128	5
      000983 01                    1387 	.db	1
      000984 09                    1388 	.db	9
      000985 00 03                 1389 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$180-Sstm8s_uart1$UART1_GetFlagStatus$178
      000987 03                    1390 	.db	3
      000988 03                    1391 	.sleb128	3
      000989 01                    1392 	.db	1
      00098A 09                    1393 	.db	9
      00098B 00 07                 1394 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$183-Sstm8s_uart1$UART1_GetFlagStatus$180
      00098D 03                    1395 	.db	3
      00098E 02                    1396 	.sleb128	2
      00098F 01                    1397 	.db	1
      000990 09                    1398 	.db	9
      000991 00 07                 1399 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$185-Sstm8s_uart1$UART1_GetFlagStatus$183
      000993 03                    1400 	.db	3
      000994 03                    1401 	.sleb128	3
      000995 01                    1402 	.db	1
      000996 09                    1403 	.db	9
      000997 00 04                 1404 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$188-Sstm8s_uart1$UART1_GetFlagStatus$185
      000999 03                    1405 	.db	3
      00099A 05                    1406 	.sleb128	5
      00099B 01                    1407 	.db	1
      00099C 09                    1408 	.db	9
      00099D 00 03                 1409 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$191-Sstm8s_uart1$UART1_GetFlagStatus$188
      00099F 03                    1410 	.db	3
      0009A0 05                    1411 	.sleb128	5
      0009A1 01                    1412 	.db	1
      0009A2 09                    1413 	.db	9
      0009A3 00 07                 1414 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$193-Sstm8s_uart1$UART1_GetFlagStatus$191
      0009A5 03                    1415 	.db	3
      0009A6 03                    1416 	.sleb128	3
      0009A7 01                    1417 	.db	1
      0009A8 09                    1418 	.db	9
      0009A9 00 04                 1419 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$196-Sstm8s_uart1$UART1_GetFlagStatus$193
      0009AB 03                    1420 	.db	3
      0009AC 05                    1421 	.sleb128	5
      0009AD 01                    1422 	.db	1
      0009AE 09                    1423 	.db	9
      0009AF 00 01                 1424 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$198-Sstm8s_uart1$UART1_GetFlagStatus$196
      0009B1 03                    1425 	.db	3
      0009B2 04                    1426 	.sleb128	4
      0009B3 01                    1427 	.db	1
      0009B4 09                    1428 	.db	9
      0009B5 00 00                 1429 	.dw	Sstm8s_uart1$UART1_GetFlagStatus$199-Sstm8s_uart1$UART1_GetFlagStatus$198
      0009B7 03                    1430 	.db	3
      0009B8 01                    1431 	.sleb128	1
      0009B9 01                    1432 	.db	1
      0009BA 09                    1433 	.db	9
      0009BB 00 03                 1434 	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$201-Sstm8s_uart1$UART1_GetFlagStatus$199
      0009BD 00                    1435 	.db	0
      0009BE 01                    1436 	.uleb128	1
      0009BF 01                    1437 	.db	1
      0009C0 00                    1438 	.db	0
      0009C1 05                    1439 	.uleb128	5
      0009C2 02                    1440 	.db	2
      0009C3 00 00 86 D0           1441 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$203)
      0009C7 03                    1442 	.db	3
      0009C8 A2 05                 1443 	.sleb128	674
      0009CA 01                    1444 	.db	1
      0009CB 09                    1445 	.db	9
      0009CC 00 02                 1446 	.dw	Sstm8s_uart1$UART1_GetITStatus$206-Sstm8s_uart1$UART1_GetITStatus$203
      0009CE 03                    1447 	.db	3
      0009CF 0C                    1448 	.sleb128	12
      0009D0 01                    1449 	.db	1
      0009D1 09                    1450 	.db	9
      0009D2 00 13                 1451 	.dw	Sstm8s_uart1$UART1_GetITStatus$209-Sstm8s_uart1$UART1_GetITStatus$206
      0009D4 03                    1452 	.db	3
      0009D5 02                    1453 	.sleb128	2
      0009D6 01                    1454 	.db	1
      0009D7 09                    1455 	.db	9
      0009D8 00 04                 1456 	.dw	Sstm8s_uart1$UART1_GetITStatus$210-Sstm8s_uart1$UART1_GetITStatus$209
      0009DA 03                    1457 	.db	3
      0009DB 02                    1458 	.sleb128	2
      0009DC 01                    1459 	.db	1
      0009DD 09                    1460 	.db	9
      0009DE 00 0E                 1461 	.dw	Sstm8s_uart1$UART1_GetITStatus$213-Sstm8s_uart1$UART1_GetITStatus$210
      0009E0 03                    1462 	.db	3
      0009E1 04                    1463 	.sleb128	4
      0009E2 01                    1464 	.db	1
      0009E3 09                    1465 	.db	9
      0009E4 00 0A                 1466 	.dw	Sstm8s_uart1$UART1_GetITStatus$216-Sstm8s_uart1$UART1_GetITStatus$213
      0009E6 03                    1467 	.db	3
      0009E7 03                    1468 	.sleb128	3
      0009E8 01                    1469 	.db	1
      0009E9 09                    1470 	.db	9
      0009EA 00 06                 1471 	.dw	Sstm8s_uart1$UART1_GetITStatus$217-Sstm8s_uart1$UART1_GetITStatus$216
      0009EC 03                    1472 	.db	3
      0009ED 03                    1473 	.sleb128	3
      0009EE 01                    1474 	.db	1
      0009EF 09                    1475 	.db	9
      0009F0 00 0B                 1476 	.dw	Sstm8s_uart1$UART1_GetITStatus$219-Sstm8s_uart1$UART1_GetITStatus$217
      0009F2 03                    1477 	.db	3
      0009F3 03                    1478 	.sleb128	3
      0009F4 01                    1479 	.db	1
      0009F5 09                    1480 	.db	9
      0009F6 00 05                 1481 	.dw	Sstm8s_uart1$UART1_GetITStatus$222-Sstm8s_uart1$UART1_GetITStatus$219
      0009F8 03                    1482 	.db	3
      0009F9 05                    1483 	.sleb128	5
      0009FA 01                    1484 	.db	1
      0009FB 09                    1485 	.db	9
      0009FC 00 04                 1486 	.dw	Sstm8s_uart1$UART1_GetITStatus$224-Sstm8s_uart1$UART1_GetITStatus$222
      0009FE 03                    1487 	.db	3
      0009FF 04                    1488 	.sleb128	4
      000A00 01                    1489 	.db	1
      000A01 09                    1490 	.db	9
      000A02 00 07                 1491 	.dw	Sstm8s_uart1$UART1_GetITStatus$227-Sstm8s_uart1$UART1_GetITStatus$224
      000A04 03                    1492 	.db	3
      000A05 03                    1493 	.sleb128	3
      000A06 01                    1494 	.db	1
      000A07 09                    1495 	.db	9
      000A08 00 06                 1496 	.dw	Sstm8s_uart1$UART1_GetITStatus$228-Sstm8s_uart1$UART1_GetITStatus$227
      000A0A 03                    1497 	.db	3
      000A0B 02                    1498 	.sleb128	2
      000A0C 01                    1499 	.db	1
      000A0D 09                    1500 	.db	9
      000A0E 00 0B                 1501 	.dw	Sstm8s_uart1$UART1_GetITStatus$230-Sstm8s_uart1$UART1_GetITStatus$228
      000A10 03                    1502 	.db	3
      000A11 03                    1503 	.sleb128	3
      000A12 01                    1504 	.db	1
      000A13 09                    1505 	.db	9
      000A14 00 04                 1506 	.dw	Sstm8s_uart1$UART1_GetITStatus$233-Sstm8s_uart1$UART1_GetITStatus$230
      000A16 03                    1507 	.db	3
      000A17 05                    1508 	.sleb128	5
      000A18 01                    1509 	.db	1
      000A19 09                    1510 	.db	9
      000A1A 00 03                 1511 	.dw	Sstm8s_uart1$UART1_GetITStatus$236-Sstm8s_uart1$UART1_GetITStatus$233
      000A1C 03                    1512 	.db	3
      000A1D 06                    1513 	.sleb128	6
      000A1E 01                    1514 	.db	1
      000A1F 09                    1515 	.db	9
      000A20 00 06                 1516 	.dw	Sstm8s_uart1$UART1_GetITStatus$237-Sstm8s_uart1$UART1_GetITStatus$236
      000A22 03                    1517 	.db	3
      000A23 02                    1518 	.sleb128	2
      000A24 01                    1519 	.db	1
      000A25 09                    1520 	.db	9
      000A26 00 0B                 1521 	.dw	Sstm8s_uart1$UART1_GetITStatus$239-Sstm8s_uart1$UART1_GetITStatus$237
      000A28 03                    1522 	.db	3
      000A29 03                    1523 	.sleb128	3
      000A2A 01                    1524 	.db	1
      000A2B 09                    1525 	.db	9
      000A2C 00 04                 1526 	.dw	Sstm8s_uart1$UART1_GetITStatus$242-Sstm8s_uart1$UART1_GetITStatus$239
      000A2E 03                    1527 	.db	3
      000A2F 05                    1528 	.sleb128	5
      000A30 01                    1529 	.db	1
      000A31 09                    1530 	.db	9
      000A32 00 01                 1531 	.dw	Sstm8s_uart1$UART1_GetITStatus$244-Sstm8s_uart1$UART1_GetITStatus$242
      000A34 03                    1532 	.db	3
      000A35 05                    1533 	.sleb128	5
      000A36 01                    1534 	.db	1
      000A37 09                    1535 	.db	9
      000A38 00 00                 1536 	.dw	Sstm8s_uart1$UART1_GetITStatus$245-Sstm8s_uart1$UART1_GetITStatus$244
      000A3A 03                    1537 	.db	3
      000A3B 01                    1538 	.sleb128	1
      000A3C 01                    1539 	.db	1
      000A3D 09                    1540 	.db	9
      000A3E 00 03                 1541 	.dw	1+Sstm8s_uart1$UART1_GetITStatus$247-Sstm8s_uart1$UART1_GetITStatus$245
      000A40 00                    1542 	.db	0
      000A41 01                    1543 	.uleb128	1
      000A42 01                    1544 	.db	1
      000A43 00                    1545 	.db	0
      000A44 05                    1546 	.uleb128	5
      000A45 02                    1547 	.db	2
      000A46 00 00 87 53           1548 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$249)
      000A4A 03                    1549 	.db	3
      000A4B 86 06                 1550 	.sleb128	774
      000A4D 01                    1551 	.db	1
      000A4E 09                    1552 	.db	9
      000A4F 00 00                 1553 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$251-Sstm8s_uart1$UART1_ClearITPendingBit$249
      000A51 03                    1554 	.db	3
      000A52 05                    1555 	.sleb128	5
      000A53 01                    1556 	.db	1
      000A54 09                    1557 	.db	9
      000A55 00 07                 1558 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$254-Sstm8s_uart1$UART1_ClearITPendingBit$251
      000A57 03                    1559 	.db	3
      000A58 02                    1560 	.sleb128	2
      000A59 01                    1561 	.db	1
      000A5A 09                    1562 	.db	9
      000A5B 00 06                 1563 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$257-Sstm8s_uart1$UART1_ClearITPendingBit$254
      000A5D 03                    1564 	.db	3
      000A5E 05                    1565 	.sleb128	5
      000A5F 01                    1566 	.db	1
      000A60 09                    1567 	.db	9
      000A61 00 04                 1568 	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$259-Sstm8s_uart1$UART1_ClearITPendingBit$257
      000A63 03                    1569 	.db	3
      000A64 02                    1570 	.sleb128	2
      000A65 01                    1571 	.db	1
      000A66 09                    1572 	.db	9
      000A67 00 01                 1573 	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$260-Sstm8s_uart1$UART1_ClearITPendingBit$259
      000A69 00                    1574 	.db	0
      000A6A 01                    1575 	.uleb128	1
      000A6B 01                    1576 	.db	1
      000A6C                       1577 Ldebug_line_end:
                                   1578 
                                   1579 	.area .debug_loc (NOLOAD)
      000648                       1580 Ldebug_loc_start:
      000648 00 00 87 5A           1581 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      00064C 00 00 87 65           1582 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$261)
      000650 00 02                 1583 	.dw	2
      000652 78                    1584 	.db	120
      000653 01                    1585 	.sleb128	1
      000654 00 00 87 53           1586 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
      000658 00 00 87 5A           1587 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      00065C 00 02                 1588 	.dw	2
      00065E 78                    1589 	.db	120
      00065F 01                    1590 	.sleb128	1
      000660 00 00 00 00           1591 	.dw	0,0
      000664 00 00 00 00           1592 	.dw	0,0
      000668 00 00 87 52           1593 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      00066C 00 00 87 53           1594 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$248)
      000670 00 02                 1595 	.dw	2
      000672 78                    1596 	.db	120
      000673 01                    1597 	.sleb128	1
      000674 00 00 87 22           1598 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      000678 00 00 87 52           1599 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      00067C 00 02                 1600 	.dw	2
      00067E 78                    1601 	.db	120
      00067F 05                    1602 	.sleb128	5
      000680 00 00 87 01           1603 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      000684 00 00 87 22           1604 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      000688 00 02                 1605 	.dw	2
      00068A 78                    1606 	.db	120
      00068B 05                    1607 	.sleb128	5
      00068C 00 00 86 EF           1608 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      000690 00 00 87 01           1609 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      000694 00 02                 1610 	.dw	2
      000696 78                    1611 	.db	120
      000697 05                    1612 	.sleb128	5
      000698 00 00 86 EA           1613 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      00069C 00 00 86 EF           1614 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      0006A0 00 02                 1615 	.dw	2
      0006A2 78                    1616 	.db	120
      0006A3 06                    1617 	.sleb128	6
      0006A4 00 00 86 DD           1618 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      0006A8 00 00 86 EA           1619 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      0006AC 00 02                 1620 	.dw	2
      0006AE 78                    1621 	.db	120
      0006AF 05                    1622 	.sleb128	5
      0006B0 00 00 86 D8           1623 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      0006B4 00 00 86 DD           1624 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      0006B8 00 02                 1625 	.dw	2
      0006BA 78                    1626 	.db	120
      0006BB 06                    1627 	.sleb128	6
      0006BC 00 00 86 D2           1628 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      0006C0 00 00 86 D8           1629 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      0006C4 00 02                 1630 	.dw	2
      0006C6 78                    1631 	.db	120
      0006C7 05                    1632 	.sleb128	5
      0006C8 00 00 86 D0           1633 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
      0006CC 00 00 86 D2           1634 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      0006D0 00 02                 1635 	.dw	2
      0006D2 78                    1636 	.db	120
      0006D3 01                    1637 	.sleb128	1
      0006D4 00 00 00 00           1638 	.dw	0,0
      0006D8 00 00 00 00           1639 	.dw	0,0
      0006DC 00 00 86 CF           1640 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      0006E0 00 00 86 D0           1641 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$202)
      0006E4 00 02                 1642 	.dw	2
      0006E6 78                    1643 	.db	120
      0006E7 01                    1644 	.sleb128	1
      0006E8 00 00 86 B3           1645 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      0006EC 00 00 86 CF           1646 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      0006F0 00 02                 1647 	.dw	2
      0006F2 78                    1648 	.db	120
      0006F3 04                    1649 	.sleb128	4
      0006F4 00 00 86 9D           1650 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      0006F8 00 00 86 B3           1651 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      0006FC 00 02                 1652 	.dw	2
      0006FE 78                    1653 	.db	120
      0006FF 04                    1654 	.sleb128	4
      000700 00 00 86 8E           1655 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000704 00 00 86 9D           1656 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      000708 00 02                 1657 	.dw	2
      00070A 78                    1658 	.db	120
      00070B 04                    1659 	.sleb128	4
      00070C 00 00 86 8C           1660 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
      000710 00 00 86 8E           1661 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000714 00 02                 1662 	.dw	2
      000716 78                    1663 	.db	120
      000717 01                    1664 	.sleb128	1
      000718 00 00 00 00           1665 	.dw	0,0
      00071C 00 00 00 00           1666 	.dw	0,0
      000720 00 00 86 85           1667 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
      000724 00 00 86 8C           1668 	.dw	0,(Sstm8s_uart1$UART1_SendData8$164)
      000728 00 02                 1669 	.dw	2
      00072A 78                    1670 	.db	120
      00072B 01                    1671 	.sleb128	1
      00072C 00 00 00 00           1672 	.dw	0,0
      000730 00 00 00 00           1673 	.dw	0,0
      000734 00 00 86 81           1674 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
      000738 00 00 86 85           1675 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$158)
      00073C 00 02                 1676 	.dw	2
      00073E 78                    1677 	.db	120
      00073F 01                    1678 	.sleb128	1
      000740 00 00 00 00           1679 	.dw	0,0
      000744 00 00 00 00           1680 	.dw	0,0
      000748 00 00 86 80           1681 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      00074C 00 00 86 81           1682 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
      000750 00 02                 1683 	.dw	2
      000752 78                    1684 	.db	120
      000753 01                    1685 	.sleb128	1
      000754 00 00 86 2F           1686 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      000758 00 00 86 80           1687 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      00075C 00 02                 1688 	.dw	2
      00075E 78                    1689 	.db	120
      00075F 03                    1690 	.sleb128	3
      000760 00 00 86 27           1691 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000764 00 00 86 2F           1692 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      000768 00 02                 1693 	.dw	2
      00076A 78                    1694 	.db	120
      00076B 03                    1695 	.sleb128	3
      00076C 00 00 86 14           1696 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      000770 00 00 86 27           1697 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000774 00 02                 1698 	.dw	2
      000776 78                    1699 	.db	120
      000777 03                    1700 	.sleb128	3
      000778 00 00 86 0F           1701 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      00077C 00 00 86 14           1702 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      000780 00 02                 1703 	.dw	2
      000782 78                    1704 	.db	120
      000783 04                    1705 	.sleb128	4
      000784 00 00 86 08           1706 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      000788 00 00 86 0F           1707 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      00078C 00 02                 1708 	.dw	2
      00078E 78                    1709 	.db	120
      00078F 03                    1710 	.sleb128	3
      000790 00 00 86 07           1711 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      000794 00 00 86 08           1712 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      000798 00 02                 1713 	.dw	2
      00079A 78                    1714 	.db	120
      00079B 01                    1715 	.sleb128	1
      00079C 00 00 00 00           1716 	.dw	0,0
      0007A0 00 00 00 00           1717 	.dw	0,0
      0007A4 00 00 85 F3           1718 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      0007A8 00 00 86 07           1719 	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
      0007AC 00 02                 1720 	.dw	2
      0007AE 78                    1721 	.db	120
      0007AF 01                    1722 	.sleb128	1
      0007B0 00 00 00 00           1723 	.dw	0,0
      0007B4 00 00 00 00           1724 	.dw	0,0
      0007B8 00 00 85 F2           1725 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0007BC 00 00 85 F3           1726 	.dw	0,(Sstm8s_uart1$UART1_Init$98)
      0007C0 00 02                 1727 	.dw	2
      0007C2 78                    1728 	.db	120
      0007C3 01                    1729 	.sleb128	1
      0007C4 00 00 85 EB           1730 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0007C8 00 00 85 F2           1731 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      0007CC 00 02                 1732 	.dw	2
      0007CE 78                    1733 	.db	120
      0007CF 12                    1734 	.sleb128	18
      0007D0 00 00 85 E4           1735 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      0007D4 00 00 85 EB           1736 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      0007D8 00 02                 1737 	.dw	2
      0007DA 78                    1738 	.db	120
      0007DB 13                    1739 	.sleb128	19
      0007DC 00 00 85 C7           1740 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      0007E0 00 00 85 E4           1741 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      0007E4 00 02                 1742 	.dw	2
      0007E6 78                    1743 	.db	120
      0007E7 12                    1744 	.sleb128	18
      0007E8 00 00 85 C2           1745 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      0007EC 00 00 85 C7           1746 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      0007F0 00 02                 1747 	.dw	2
      0007F2 78                    1748 	.db	120
      0007F3 13                    1749 	.sleb128	19
      0007F4 00 00 85 B0           1750 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      0007F8 00 00 85 C2           1751 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      0007FC 00 02                 1752 	.dw	2
      0007FE 78                    1753 	.db	120
      0007FF 12                    1754 	.sleb128	18
      000800 00 00 85 AB           1755 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      000804 00 00 85 B0           1756 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      000808 00 02                 1757 	.dw	2
      00080A 78                    1758 	.db	120
      00080B 13                    1759 	.sleb128	19
      00080C 00 00 85 63           1760 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      000810 00 00 85 AB           1761 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      000814 00 02                 1762 	.dw	2
      000816 78                    1763 	.db	120
      000817 12                    1764 	.sleb128	18
      000818 00 00 85 5E           1765 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      00081C 00 00 85 63           1766 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      000820 00 02                 1767 	.dw	2
      000822 78                    1768 	.db	120
      000823 1A                    1769 	.sleb128	26
      000824 00 00 85 5C           1770 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000828 00 00 85 5E           1771 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      00082C 00 02                 1772 	.dw	2
      00082E 78                    1773 	.db	120
      00082F 18                    1774 	.sleb128	24
      000830 00 00 85 5B           1775 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      000834 00 00 85 5C           1776 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000838 00 02                 1777 	.dw	2
      00083A 78                    1778 	.db	120
      00083B 16                    1779 	.sleb128	22
      00083C 00 00 85 59           1780 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      000840 00 00 85 5B           1781 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      000844 00 02                 1782 	.dw	2
      000846 78                    1783 	.db	120
      000847 15                    1784 	.sleb128	21
      000848 00 00 85 57           1785 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      00084C 00 00 85 59           1786 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      000850 00 02                 1787 	.dw	2
      000852 78                    1788 	.db	120
      000853 14                    1789 	.sleb128	20
      000854 00 00 85 55           1790 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      000858 00 00 85 57           1791 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      00085C 00 02                 1792 	.dw	2
      00085E 78                    1793 	.db	120
      00085F 13                    1794 	.sleb128	19
      000860 00 00 85 30           1795 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000864 00 00 85 55           1796 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      000868 00 02                 1797 	.dw	2
      00086A 78                    1798 	.db	120
      00086B 12                    1799 	.sleb128	18
      00086C 00 00 85 2B           1800 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      000870 00 00 85 30           1801 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000874 00 02                 1802 	.dw	2
      000876 78                    1803 	.db	120
      000877 1A                    1804 	.sleb128	26
      000878 00 00 85 29           1805 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      00087C 00 00 85 2B           1806 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      000880 00 02                 1807 	.dw	2
      000882 78                    1808 	.db	120
      000883 19                    1809 	.sleb128	25
      000884 00 00 85 27           1810 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      000888 00 00 85 29           1811 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      00088C 00 02                 1812 	.dw	2
      00088E 78                    1813 	.db	120
      00088F 17                    1814 	.sleb128	23
      000890 00 00 85 25           1815 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      000894 00 00 85 27           1816 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      000898 00 02                 1817 	.dw	2
      00089A 78                    1818 	.db	120
      00089B 16                    1819 	.sleb128	22
      00089C 00 00 85 22           1820 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      0008A0 00 00 85 25           1821 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      0008A4 00 02                 1822 	.dw	2
      0008A6 78                    1823 	.db	120
      0008A7 14                    1824 	.sleb128	20
      0008A8 00 00 85 16           1825 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0008AC 00 00 85 22           1826 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      0008B0 00 02                 1827 	.dw	2
      0008B2 78                    1828 	.db	120
      0008B3 12                    1829 	.sleb128	18
      0008B4 00 00 85 11           1830 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0008B8 00 00 85 16           1831 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0008BC 00 02                 1832 	.dw	2
      0008BE 78                    1833 	.db	120
      0008BF 1A                    1834 	.sleb128	26
      0008C0 00 00 85 0F           1835 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0008C4 00 00 85 11           1836 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0008C8 00 02                 1837 	.dw	2
      0008CA 78                    1838 	.db	120
      0008CB 18                    1839 	.sleb128	24
      0008CC 00 00 85 0C           1840 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0008D0 00 00 85 0F           1841 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0008D4 00 02                 1842 	.dw	2
      0008D6 78                    1843 	.db	120
      0008D7 16                    1844 	.sleb128	22
      0008D8 00 00 85 09           1845 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0008DC 00 00 85 0C           1846 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0008E0 00 02                 1847 	.dw	2
      0008E2 78                    1848 	.db	120
      0008E3 14                    1849 	.sleb128	20
      0008E4 00 00 85 04           1850 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0008E8 00 00 85 09           1851 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0008EC 00 02                 1852 	.dw	2
      0008EE 78                    1853 	.db	120
      0008EF 12                    1854 	.sleb128	18
      0008F0 00 00 84 FF           1855 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      0008F4 00 00 85 04           1856 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0008F8 00 02                 1857 	.dw	2
      0008FA 78                    1858 	.db	120
      0008FB 1A                    1859 	.sleb128	26
      0008FC 00 00 84 FD           1860 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      000900 00 00 84 FF           1861 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      000904 00 02                 1862 	.dw	2
      000906 78                    1863 	.db	120
      000907 19                    1864 	.sleb128	25
      000908 00 00 84 FB           1865 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      00090C 00 00 84 FD           1866 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      000910 00 02                 1867 	.dw	2
      000912 78                    1868 	.db	120
      000913 17                    1869 	.sleb128	23
      000914 00 00 84 F9           1870 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      000918 00 00 84 FB           1871 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      00091C 00 02                 1872 	.dw	2
      00091E 78                    1873 	.db	120
      00091F 16                    1874 	.sleb128	22
      000920 00 00 84 F6           1875 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      000924 00 00 84 F9           1876 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      000928 00 02                 1877 	.dw	2
      00092A 78                    1878 	.db	120
      00092B 14                    1879 	.sleb128	20
      00092C 00 00 84 E0           1880 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      000930 00 00 84 F6           1881 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      000934 00 02                 1882 	.dw	2
      000936 78                    1883 	.db	120
      000937 12                    1884 	.sleb128	18
      000938 00 00 84 DB           1885 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      00093C 00 00 84 E0           1886 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      000940 00 02                 1887 	.dw	2
      000942 78                    1888 	.db	120
      000943 1A                    1889 	.sleb128	26
      000944 00 00 84 D9           1890 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      000948 00 00 84 DB           1891 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      00094C 00 02                 1892 	.dw	2
      00094E 78                    1893 	.db	120
      00094F 18                    1894 	.sleb128	24
      000950 00 00 84 D6           1895 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      000954 00 00 84 D9           1896 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      000958 00 02                 1897 	.dw	2
      00095A 78                    1898 	.db	120
      00095B 16                    1899 	.sleb128	22
      00095C 00 00 84 D3           1900 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      000960 00 00 84 D6           1901 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      000964 00 02                 1902 	.dw	2
      000966 78                    1903 	.db	120
      000967 14                    1904 	.sleb128	20
      000968 00 00 84 78           1905 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      00096C 00 00 84 D3           1906 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      000970 00 02                 1907 	.dw	2
      000972 78                    1908 	.db	120
      000973 12                    1909 	.sleb128	18
      000974 00 00 84 76           1910 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      000978 00 00 84 78           1911 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      00097C 00 02                 1912 	.dw	2
      00097E 78                    1913 	.db	120
      00097F 01                    1914 	.sleb128	1
      000980 00 00 00 00           1915 	.dw	0,0
      000984 00 00 00 00           1916 	.dw	0,0
      000988 00 00 84 4B           1917 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      00098C 00 00 84 76           1918 	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
      000990 00 02                 1919 	.dw	2
      000992 78                    1920 	.db	120
      000993 01                    1921 	.sleb128	1
      000994 00 00 00 00           1922 	.dw	0,0
      000998 00 00 00 00           1923 	.dw	0,0
                                   1924 
                                   1925 	.area .debug_abbrev (NOLOAD)
      000224                       1926 Ldebug_abbrev:
      000224 09                    1927 	.uleb128	9
      000225 2E                    1928 	.uleb128	46
      000226 00                    1929 	.db	0
      000227 03                    1930 	.uleb128	3
      000228 08                    1931 	.uleb128	8
      000229 11                    1932 	.uleb128	17
      00022A 01                    1933 	.uleb128	1
      00022B 12                    1934 	.uleb128	18
      00022C 01                    1935 	.uleb128	1
      00022D 3F                    1936 	.uleb128	63
      00022E 0C                    1937 	.uleb128	12
      00022F 40                    1938 	.uleb128	64
      000230 06                    1939 	.uleb128	6
      000231 49                    1940 	.uleb128	73
      000232 13                    1941 	.uleb128	19
      000233 00                    1942 	.uleb128	0
      000234 00                    1943 	.uleb128	0
      000235 04                    1944 	.uleb128	4
      000236 05                    1945 	.uleb128	5
      000237 00                    1946 	.db	0
      000238 02                    1947 	.uleb128	2
      000239 0A                    1948 	.uleb128	10
      00023A 03                    1949 	.uleb128	3
      00023B 08                    1950 	.uleb128	8
      00023C 49                    1951 	.uleb128	73
      00023D 13                    1952 	.uleb128	19
      00023E 00                    1953 	.uleb128	0
      00023F 00                    1954 	.uleb128	0
      000240 03                    1955 	.uleb128	3
      000241 2E                    1956 	.uleb128	46
      000242 01                    1957 	.db	1
      000243 01                    1958 	.uleb128	1
      000244 13                    1959 	.uleb128	19
      000245 03                    1960 	.uleb128	3
      000246 08                    1961 	.uleb128	8
      000247 11                    1962 	.uleb128	17
      000248 01                    1963 	.uleb128	1
      000249 12                    1964 	.uleb128	18
      00024A 01                    1965 	.uleb128	1
      00024B 3F                    1966 	.uleb128	63
      00024C 0C                    1967 	.uleb128	12
      00024D 40                    1968 	.uleb128	64
      00024E 06                    1969 	.uleb128	6
      00024F 00                    1970 	.uleb128	0
      000250 00                    1971 	.uleb128	0
      000251 06                    1972 	.uleb128	6
      000252 34                    1973 	.uleb128	52
      000253 00                    1974 	.db	0
      000254 02                    1975 	.uleb128	2
      000255 0A                    1976 	.uleb128	10
      000256 03                    1977 	.uleb128	3
      000257 08                    1978 	.uleb128	8
      000258 49                    1979 	.uleb128	73
      000259 13                    1980 	.uleb128	19
      00025A 00                    1981 	.uleb128	0
      00025B 00                    1982 	.uleb128	0
      00025C 0A                    1983 	.uleb128	10
      00025D 2E                    1984 	.uleb128	46
      00025E 01                    1985 	.db	1
      00025F 01                    1986 	.uleb128	1
      000260 13                    1987 	.uleb128	19
      000261 03                    1988 	.uleb128	3
      000262 08                    1989 	.uleb128	8
      000263 11                    1990 	.uleb128	17
      000264 01                    1991 	.uleb128	1
      000265 12                    1992 	.uleb128	18
      000266 01                    1993 	.uleb128	1
      000267 3F                    1994 	.uleb128	63
      000268 0C                    1995 	.uleb128	12
      000269 40                    1996 	.uleb128	64
      00026A 06                    1997 	.uleb128	6
      00026B 49                    1998 	.uleb128	73
      00026C 13                    1999 	.uleb128	19
      00026D 00                    2000 	.uleb128	0
      00026E 00                    2001 	.uleb128	0
      00026F 01                    2002 	.uleb128	1
      000270 11                    2003 	.uleb128	17
      000271 01                    2004 	.db	1
      000272 03                    2005 	.uleb128	3
      000273 08                    2006 	.uleb128	8
      000274 10                    2007 	.uleb128	16
      000275 06                    2008 	.uleb128	6
      000276 13                    2009 	.uleb128	19
      000277 0B                    2010 	.uleb128	11
      000278 25                    2011 	.uleb128	37
      000279 08                    2012 	.uleb128	8
      00027A 00                    2013 	.uleb128	0
      00027B 00                    2014 	.uleb128	0
      00027C 05                    2015 	.uleb128	5
      00027D 0B                    2016 	.uleb128	11
      00027E 00                    2017 	.db	0
      00027F 11                    2018 	.uleb128	17
      000280 01                    2019 	.uleb128	1
      000281 12                    2020 	.uleb128	18
      000282 01                    2021 	.uleb128	1
      000283 00                    2022 	.uleb128	0
      000284 00                    2023 	.uleb128	0
      000285 08                    2024 	.uleb128	8
      000286 0B                    2025 	.uleb128	11
      000287 01                    2026 	.db	1
      000288 01                    2027 	.uleb128	1
      000289 13                    2028 	.uleb128	19
      00028A 11                    2029 	.uleb128	17
      00028B 01                    2030 	.uleb128	1
      00028C 00                    2031 	.uleb128	0
      00028D 00                    2032 	.uleb128	0
      00028E 02                    2033 	.uleb128	2
      00028F 2E                    2034 	.uleb128	46
      000290 00                    2035 	.db	0
      000291 03                    2036 	.uleb128	3
      000292 08                    2037 	.uleb128	8
      000293 11                    2038 	.uleb128	17
      000294 01                    2039 	.uleb128	1
      000295 12                    2040 	.uleb128	18
      000296 01                    2041 	.uleb128	1
      000297 3F                    2042 	.uleb128	63
      000298 0C                    2043 	.uleb128	12
      000299 40                    2044 	.uleb128	64
      00029A 06                    2045 	.uleb128	6
      00029B 00                    2046 	.uleb128	0
      00029C 00                    2047 	.uleb128	0
      00029D 0B                    2048 	.uleb128	11
      00029E 2E                    2049 	.uleb128	46
      00029F 01                    2050 	.db	1
      0002A0 03                    2051 	.uleb128	3
      0002A1 08                    2052 	.uleb128	8
      0002A2 11                    2053 	.uleb128	17
      0002A3 01                    2054 	.uleb128	1
      0002A4 12                    2055 	.uleb128	18
      0002A5 01                    2056 	.uleb128	1
      0002A6 3F                    2057 	.uleb128	63
      0002A7 0C                    2058 	.uleb128	12
      0002A8 40                    2059 	.uleb128	64
      0002A9 06                    2060 	.uleb128	6
      0002AA 00                    2061 	.uleb128	0
      0002AB 00                    2062 	.uleb128	0
      0002AC 07                    2063 	.uleb128	7
      0002AD 24                    2064 	.uleb128	36
      0002AE 00                    2065 	.db	0
      0002AF 03                    2066 	.uleb128	3
      0002B0 08                    2067 	.uleb128	8
      0002B1 0B                    2068 	.uleb128	11
      0002B2 0B                    2069 	.uleb128	11
      0002B3 3E                    2070 	.uleb128	62
      0002B4 0B                    2071 	.uleb128	11
      0002B5 00                    2072 	.uleb128	0
      0002B6 00                    2073 	.uleb128	0
      0002B7 00                    2074 	.uleb128	0
                                   2075 
                                   2076 	.area .debug_info (NOLOAD)
      000A06 00 00 04 96           2077 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000A0A                       2078 Ldebug_info_start:
      000A0A 00 02                 2079 	.dw	2
      000A0C 00 00 02 24           2080 	.dw	0,(Ldebug_abbrev)
      000A10 04                    2081 	.db	4
      000A11 01                    2082 	.uleb128	1
      000A12 53 6F 75 72 63 65 2F  2083 	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 75 61 72
             74 31 2E 63
      000A32 00                    2084 	.db	0
      000A33 00 00 06 CD           2085 	.dw	0,(Ldebug_line_start+-4)
      000A37 01                    2086 	.db	1
      000A38 53 44 43 43 20 76 65  2087 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000A51 00                    2088 	.db	0
      000A52 02                    2089 	.uleb128	2
      000A53 55 41 52 54 31 5F 44  2090 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      000A5F 00                    2091 	.db	0
      000A60 00 00 84 4B           2092 	.dw	0,(_UART1_DeInit)
      000A64 00 00 84 76           2093 	.dw	0,(XG$UART1_DeInit$0$0+1)
      000A68 01                    2094 	.db	1
      000A69 00 00 09 88           2095 	.dw	0,(Ldebug_loc_start+832)
      000A6D 03                    2096 	.uleb128	3
      000A6E 00 00 01 54           2097 	.dw	0,340
      000A72 55 41 52 54 31 5F 49  2098 	.ascii "UART1_Init"
             6E 69 74
      000A7C 00                    2099 	.db	0
      000A7D 00 00 84 76           2100 	.dw	0,(_UART1_Init)
      000A81 00 00 85 F3           2101 	.dw	0,(XG$UART1_Init$0$0+1)
      000A85 01                    2102 	.db	1
      000A86 00 00 07 B8           2103 	.dw	0,(Ldebug_loc_start+368)
      000A8A 04                    2104 	.uleb128	4
      000A8B 02                    2105 	.db	2
      000A8C 91                    2106 	.db	145
      000A8D 02                    2107 	.sleb128	2
      000A8E 42 61 75 64 52 61 74  2108 	.ascii "BaudRate"
             65
      000A96 00                    2109 	.db	0
      000A97 00 00 01 54           2110 	.dw	0,340
      000A9B 04                    2111 	.uleb128	4
      000A9C 02                    2112 	.db	2
      000A9D 91                    2113 	.db	145
      000A9E 06                    2114 	.sleb128	6
      000A9F 57 6F 72 64 4C 65 6E  2115 	.ascii "WordLength"
             67 74 68
      000AA9 00                    2116 	.db	0
      000AAA 00 00 01 65           2117 	.dw	0,357
      000AAE 04                    2118 	.uleb128	4
      000AAF 02                    2119 	.db	2
      000AB0 91                    2120 	.db	145
      000AB1 07                    2121 	.sleb128	7
      000AB2 53 74 6F 70 42 69 74  2122 	.ascii "StopBits"
             73
      000ABA 00                    2123 	.db	0
      000ABB 00 00 01 65           2124 	.dw	0,357
      000ABF 04                    2125 	.uleb128	4
      000AC0 02                    2126 	.db	2
      000AC1 91                    2127 	.db	145
      000AC2 08                    2128 	.sleb128	8
      000AC3 50 61 72 69 74 79     2129 	.ascii "Parity"
      000AC9 00                    2130 	.db	0
      000ACA 00 00 01 65           2131 	.dw	0,357
      000ACE 04                    2132 	.uleb128	4
      000ACF 02                    2133 	.db	2
      000AD0 91                    2134 	.db	145
      000AD1 09                    2135 	.sleb128	9
      000AD2 53 79 6E 63 4D 6F 64  2136 	.ascii "SyncMode"
             65
      000ADA 00                    2137 	.db	0
      000ADB 00 00 01 65           2138 	.dw	0,357
      000ADF 04                    2139 	.uleb128	4
      000AE0 02                    2140 	.db	2
      000AE1 91                    2141 	.db	145
      000AE2 0A                    2142 	.sleb128	10
      000AE3 4D 6F 64 65           2143 	.ascii "Mode"
      000AE7 00                    2144 	.db	0
      000AE8 00 00 01 65           2145 	.dw	0,357
      000AEC 05                    2146 	.uleb128	5
      000AED 00 00 85 B2           2147 	.dw	0,(Sstm8s_uart1$UART1_Init$69)
      000AF1 00 00 85 B7           2148 	.dw	0,(Sstm8s_uart1$UART1_Init$71)
      000AF5 05                    2149 	.uleb128	5
      000AF6 00 00 85 B9           2150 	.dw	0,(Sstm8s_uart1$UART1_Init$72)
      000AFA 00 00 85 BE           2151 	.dw	0,(Sstm8s_uart1$UART1_Init$74)
      000AFE 05                    2152 	.uleb128	5
      000AFF 00 00 85 C9           2153 	.dw	0,(Sstm8s_uart1$UART1_Init$79)
      000B03 00 00 85 CE           2154 	.dw	0,(Sstm8s_uart1$UART1_Init$81)
      000B07 05                    2155 	.uleb128	5
      000B08 00 00 85 D0           2156 	.dw	0,(Sstm8s_uart1$UART1_Init$82)
      000B0C 00 00 85 D5           2157 	.dw	0,(Sstm8s_uart1$UART1_Init$84)
      000B10 05                    2158 	.uleb128	5
      000B11 00 00 85 DC           2159 	.dw	0,(Sstm8s_uart1$UART1_Init$87)
      000B15 00 00 85 E1           2160 	.dw	0,(Sstm8s_uart1$UART1_Init$89)
      000B19 05                    2161 	.uleb128	5
      000B1A 00 00 85 E3           2162 	.dw	0,(Sstm8s_uart1$UART1_Init$90)
      000B1E 00 00 85 F0           2163 	.dw	0,(Sstm8s_uart1$UART1_Init$94)
      000B22 06                    2164 	.uleb128	6
      000B23 02                    2165 	.db	2
      000B24 91                    2166 	.db	145
      000B25 6F                    2167 	.sleb128	-17
      000B26 42 61 75 64 52 61 74  2168 	.ascii "BaudRate_Mantissa"
             65 5F 4D 61 6E 74 69
             73 73 61
      000B37 00                    2169 	.db	0
      000B38 00 00 01 54           2170 	.dw	0,340
      000B3C 06                    2171 	.uleb128	6
      000B3D 02                    2172 	.db	2
      000B3E 91                    2173 	.db	145
      000B3F 73                    2174 	.sleb128	-13
      000B40 42 61 75 64 52 61 74  2175 	.ascii "BaudRate_Mantissa100"
             65 5F 4D 61 6E 74 69
             73 73 61 31 30 30
      000B54 00                    2176 	.db	0
      000B55 00 00 01 54           2177 	.dw	0,340
      000B59 00                    2178 	.uleb128	0
      000B5A 07                    2179 	.uleb128	7
      000B5B 75 6E 73 69 67 6E 65  2180 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      000B68 00                    2181 	.db	0
      000B69 04                    2182 	.db	4
      000B6A 07                    2183 	.db	7
      000B6B 07                    2184 	.uleb128	7
      000B6C 75 6E 73 69 67 6E 65  2185 	.ascii "unsigned char"
             64 20 63 68 61 72
      000B79 00                    2186 	.db	0
      000B7A 01                    2187 	.db	1
      000B7B 08                    2188 	.db	8
      000B7C 03                    2189 	.uleb128	3
      000B7D 00 00 01 B6           2190 	.dw	0,438
      000B81 55 41 52 54 31 5F 43  2191 	.ascii "UART1_Cmd"
             6D 64
      000B8A 00                    2192 	.db	0
      000B8B 00 00 85 F3           2193 	.dw	0,(_UART1_Cmd)
      000B8F 00 00 86 07           2194 	.dw	0,(XG$UART1_Cmd$0$0+1)
      000B93 01                    2195 	.db	1
      000B94 00 00 07 A4           2196 	.dw	0,(Ldebug_loc_start+348)
      000B98 04                    2197 	.uleb128	4
      000B99 02                    2198 	.db	2
      000B9A 91                    2199 	.db	145
      000B9B 02                    2200 	.sleb128	2
      000B9C 4E 65 77 53 74 61 74  2201 	.ascii "NewState"
             65
      000BA4 00                    2202 	.db	0
      000BA5 00 00 01 65           2203 	.dw	0,357
      000BA9 05                    2204 	.uleb128	5
      000BAA 00 00 85 FA           2205 	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
      000BAE 00 00 85 FF           2206 	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
      000BB2 05                    2207 	.uleb128	5
      000BB3 00 00 86 01           2208 	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
      000BB7 00 00 86 06           2209 	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
      000BBB 00                    2210 	.uleb128	0
      000BBC 03                    2211 	.uleb128	3
      000BBD 00 00 02 61           2212 	.dw	0,609
      000BC1 55 41 52 54 31 5F 49  2213 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      000BCF 00                    2214 	.db	0
      000BD0 00 00 86 07           2215 	.dw	0,(_UART1_ITConfig)
      000BD4 00 00 86 81           2216 	.dw	0,(XG$UART1_ITConfig$0$0+1)
      000BD8 01                    2217 	.db	1
      000BD9 00 00 07 48           2218 	.dw	0,(Ldebug_loc_start+256)
      000BDD 04                    2219 	.uleb128	4
      000BDE 02                    2220 	.db	2
      000BDF 91                    2221 	.db	145
      000BE0 02                    2222 	.sleb128	2
      000BE1 55 41 52 54 31 5F 49  2223 	.ascii "UART1_IT"
             54
      000BE9 00                    2224 	.db	0
      000BEA 00 00 02 61           2225 	.dw	0,609
      000BEE 04                    2226 	.uleb128	4
      000BEF 02                    2227 	.db	2
      000BF0 91                    2228 	.db	145
      000BF1 04                    2229 	.sleb128	4
      000BF2 4E 65 77 53 74 61 74  2230 	.ascii "NewState"
             65
      000BFA 00                    2231 	.db	0
      000BFB 00 00 01 65           2232 	.dw	0,357
      000BFF 08                    2233 	.uleb128	8
      000C00 00 00 02 1E           2234 	.dw	0,542
      000C04 00 00 86 33           2235 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
      000C08 05                    2236 	.uleb128	5
      000C09 00 00 86 37           2237 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
      000C0D 00 00 86 3F           2238 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
      000C11 05                    2239 	.uleb128	5
      000C12 00 00 86 45           2240 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
      000C16 00 00 86 4D           2241 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
      000C1A 05                    2242 	.uleb128	5
      000C1B 00 00 86 50           2243 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
      000C1F 00 00 86 58           2244 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
      000C23 00                    2245 	.uleb128	0
      000C24 08                    2246 	.uleb128	8
      000C25 00 00 02 43           2247 	.dw	0,579
      000C29 00 00 86 5C           2248 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
      000C2D 05                    2249 	.uleb128	5
      000C2E 00 00 86 60           2250 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
      000C32 00 00 86 68           2251 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
      000C36 05                    2252 	.uleb128	5
      000C37 00 00 86 6D           2253 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
      000C3B 00 00 86 75           2254 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
      000C3F 05                    2255 	.uleb128	5
      000C40 00 00 86 77           2256 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$146)
      000C44 00 00 86 7F           2257 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
      000C48 00                    2258 	.uleb128	0
      000C49 06                    2259 	.uleb128	6
      000C4A 01                    2260 	.db	1
      000C4B 52                    2261 	.db	82
      000C4C 75 61 72 74 72 65 67  2262 	.ascii "uartreg"
      000C53 00                    2263 	.db	0
      000C54 00 00 01 65           2264 	.dw	0,357
      000C58 06                    2265 	.uleb128	6
      000C59 02                    2266 	.db	2
      000C5A 91                    2267 	.db	145
      000C5B 7F                    2268 	.sleb128	-1
      000C5C 69 74 70 6F 73        2269 	.ascii "itpos"
      000C61 00                    2270 	.db	0
      000C62 00 00 01 65           2271 	.dw	0,357
      000C66 00                    2272 	.uleb128	0
      000C67 07                    2273 	.uleb128	7
      000C68 75 6E 73 69 67 6E 65  2274 	.ascii "unsigned int"
             64 20 69 6E 74
      000C74 00                    2275 	.db	0
      000C75 02                    2276 	.db	2
      000C76 07                    2277 	.db	7
      000C77 09                    2278 	.uleb128	9
      000C78 55 41 52 54 31 5F 52  2279 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      000C8A 00                    2280 	.db	0
      000C8B 00 00 86 81           2281 	.dw	0,(_UART1_ReceiveData8)
      000C8F 00 00 86 85           2282 	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
      000C93 01                    2283 	.db	1
      000C94 00 00 07 34           2284 	.dw	0,(Ldebug_loc_start+236)
      000C98 00 00 01 65           2285 	.dw	0,357
      000C9C 03                    2286 	.uleb128	3
      000C9D 00 00 02 C6           2287 	.dw	0,710
      000CA1 55 41 52 54 31 5F 53  2288 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      000CB0 00                    2289 	.db	0
      000CB1 00 00 86 85           2290 	.dw	0,(_UART1_SendData8)
      000CB5 00 00 86 8C           2291 	.dw	0,(XG$UART1_SendData8$0$0+1)
      000CB9 01                    2292 	.db	1
      000CBA 00 00 07 20           2293 	.dw	0,(Ldebug_loc_start+216)
      000CBE 04                    2294 	.uleb128	4
      000CBF 02                    2295 	.db	2
      000CC0 91                    2296 	.db	145
      000CC1 02                    2297 	.sleb128	2
      000CC2 44 61 74 61           2298 	.ascii "Data"
      000CC6 00                    2299 	.db	0
      000CC7 00 00 01 65           2300 	.dw	0,357
      000CCB 00                    2301 	.uleb128	0
      000CCC 0A                    2302 	.uleb128	10
      000CCD 00 00 03 66           2303 	.dw	0,870
      000CD1 55 41 52 54 31 5F 47  2304 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      000CE4 00                    2305 	.db	0
      000CE5 00 00 86 8C           2306 	.dw	0,(_UART1_GetFlagStatus)
      000CE9 00 00 86 D0           2307 	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
      000CED 01                    2308 	.db	1
      000CEE 00 00 06 DC           2309 	.dw	0,(Ldebug_loc_start+148)
      000CF2 00 00 01 65           2310 	.dw	0,357
      000CF6 04                    2311 	.uleb128	4
      000CF7 02                    2312 	.db	2
      000CF8 91                    2313 	.db	145
      000CF9 02                    2314 	.sleb128	2
      000CFA 55 41 52 54 31 5F 46  2315 	.ascii "UART1_FLAG"
             4C 41 47
      000D04 00                    2316 	.db	0
      000D05 00 00 02 61           2317 	.dw	0,609
      000D09 08                    2318 	.uleb128	8
      000D0A 00 00 03 1F           2319 	.dw	0,799
      000D0E 00 00 86 9D           2320 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$172)
      000D12 05                    2321 	.uleb128	5
      000D13 00 00 86 A4           2322 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$174)
      000D17 00 00 86 A6           2323 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$176)
      000D1B 05                    2324 	.uleb128	5
      000D1C 00 00 86 A9           2325 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$177)
      000D20 00 00 86 AA           2326 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$179)
      000D24 00                    2327 	.uleb128	0
      000D25 08                    2328 	.uleb128	8
      000D26 00 00 03 3B           2329 	.dw	0,827
      000D2A 00 00 86 B3           2330 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$182)
      000D2E 05                    2331 	.uleb128	5
      000D2F 00 00 86 BA           2332 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$184)
      000D33 00 00 86 BC           2333 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$186)
      000D37 05                    2334 	.uleb128	5
      000D38 00 00 86 BE           2335 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$187)
      000D3C 00 00 86 BF           2336 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$189)
      000D40 00                    2337 	.uleb128	0
      000D41 08                    2338 	.uleb128	8
      000D42 00 00 03 57           2339 	.dw	0,855
      000D46 00 00 86 C1           2340 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$190)
      000D4A 05                    2341 	.uleb128	5
      000D4B 00 00 86 C8           2342 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$192)
      000D4F 00 00 86 CA           2343 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$194)
      000D53 05                    2344 	.uleb128	5
      000D54 00 00 86 CC           2345 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$195)
      000D58 00 00 86 CD           2346 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$197)
      000D5C 00                    2347 	.uleb128	0
      000D5D 06                    2348 	.uleb128	6
      000D5E 01                    2349 	.db	1
      000D5F 50                    2350 	.db	80
      000D60 73 74 61 74 75 73     2351 	.ascii "status"
      000D66 00                    2352 	.db	0
      000D67 00 00 01 65           2353 	.dw	0,357
      000D6B 00                    2354 	.uleb128	0
      000D6C 0A                    2355 	.uleb128	10
      000D6D 00 00 04 4D           2356 	.dw	0,1101
      000D71 55 41 52 54 31 5F 47  2357 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      000D82 00                    2358 	.db	0
      000D83 00 00 86 D0           2359 	.dw	0,(_UART1_GetITStatus)
      000D87 00 00 87 53           2360 	.dw	0,(XG$UART1_GetITStatus$0$0+1)
      000D8B 01                    2361 	.db	1
      000D8C 00 00 06 68           2362 	.dw	0,(Ldebug_loc_start+32)
      000D90 00 00 01 65           2363 	.dw	0,357
      000D94 04                    2364 	.uleb128	4
      000D95 02                    2365 	.db	2
      000D96 91                    2366 	.db	145
      000D97 02                    2367 	.sleb128	2
      000D98 55 41 52 54 31 5F 49  2368 	.ascii "UART1_IT"
             54
      000DA0 00                    2369 	.db	0
      000DA1 00 00 02 61           2370 	.dw	0,609
      000DA5 08                    2371 	.uleb128	8
      000DA6 00 00 03 BB           2372 	.dw	0,955
      000DAA 00 00 87 01           2373 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$215)
      000DAE 05                    2374 	.uleb128	5
      000DAF 00 00 87 12           2375 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$218)
      000DB3 00 00 87 14           2376 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$220)
      000DB7 05                    2377 	.uleb128	5
      000DB8 00 00 87 17           2378 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$221)
      000DBC 00 00 87 18           2379 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$223)
      000DC0 00                    2380 	.uleb128	0
      000DC1 08                    2381 	.uleb128	8
      000DC2 00 00 03 D7           2382 	.dw	0,983
      000DC6 00 00 87 22           2383 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$226)
      000DCA 05                    2384 	.uleb128	5
      000DCB 00 00 87 33           2385 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$229)
      000DCF 00 00 87 35           2386 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$231)
      000DD3 05                    2387 	.uleb128	5
      000DD4 00 00 87 37           2388 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$232)
      000DD8 00 00 87 38           2389 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$234)
      000DDC 00                    2390 	.uleb128	0
      000DDD 08                    2391 	.uleb128	8
      000DDE 00 00 03 F3           2392 	.dw	0,1011
      000DE2 00 00 87 3A           2393 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$235)
      000DE6 05                    2394 	.uleb128	5
      000DE7 00 00 87 4B           2395 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$238)
      000DEB 00 00 87 4D           2396 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$240)
      000DEF 05                    2397 	.uleb128	5
      000DF0 00 00 87 4F           2398 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$241)
      000DF4 00 00 87 50           2399 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$243)
      000DF8 00                    2400 	.uleb128	0
      000DF9 06                    2401 	.uleb128	6
      000DFA 01                    2402 	.db	1
      000DFB 50                    2403 	.db	80
      000DFC 70 65 6E 64 69 6E 67  2404 	.ascii "pendingbitstatus"
             62 69 74 73 74 61 74
             75 73
      000E0C 00                    2405 	.db	0
      000E0D 00 00 01 65           2406 	.dw	0,357
      000E11 06                    2407 	.uleb128	6
      000E12 02                    2408 	.db	2
      000E13 91                    2409 	.db	145
      000E14 7C                    2410 	.sleb128	-4
      000E15 69 74 70 6F 73        2411 	.ascii "itpos"
      000E1A 00                    2412 	.db	0
      000E1B 00 00 01 65           2413 	.dw	0,357
      000E1F 06                    2414 	.uleb128	6
      000E20 01                    2415 	.db	1
      000E21 50                    2416 	.db	80
      000E22 69 74 6D 61 73 6B 31  2417 	.ascii "itmask1"
      000E29 00                    2418 	.db	0
      000E2A 00 00 01 65           2419 	.dw	0,357
      000E2E 06                    2420 	.uleb128	6
      000E2F 02                    2421 	.db	2
      000E30 91                    2422 	.db	145
      000E31 7D                    2423 	.sleb128	-3
      000E32 69 74 6D 61 73 6B 32  2424 	.ascii "itmask2"
      000E39 00                    2425 	.db	0
      000E3A 00 00 01 65           2426 	.dw	0,357
      000E3E 06                    2427 	.uleb128	6
      000E3F 01                    2428 	.db	1
      000E40 51                    2429 	.db	81
      000E41 65 6E 61 62 6C 65 73  2430 	.ascii "enablestatus"
             74 61 74 75 73
      000E4D 00                    2431 	.db	0
      000E4E 00 00 01 65           2432 	.dw	0,357
      000E52 00                    2433 	.uleb128	0
      000E53 0B                    2434 	.uleb128	11
      000E54 55 41 52 54 31 5F 43  2435 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      000E6B 00                    2436 	.db	0
      000E6C 00 00 87 53           2437 	.dw	0,(_UART1_ClearITPendingBit)
      000E70 00 00 87 65           2438 	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
      000E74 01                    2439 	.db	1
      000E75 00 00 06 48           2440 	.dw	0,(Ldebug_loc_start)
      000E79 04                    2441 	.uleb128	4
      000E7A 02                    2442 	.db	2
      000E7B 91                    2443 	.db	145
      000E7C 02                    2444 	.sleb128	2
      000E7D 55 41 52 54 31 5F 49  2445 	.ascii "UART1_IT"
             54
      000E85 00                    2446 	.db	0
      000E86 00 00 02 61           2447 	.dw	0,609
      000E8A 05                    2448 	.uleb128	5
      000E8B 00 00 87 5A           2449 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$253)
      000E8F 00 00 87 5E           2450 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$255)
      000E93 05                    2451 	.uleb128	5
      000E94 00 00 87 60           2452 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$256)
      000E98 00 00 87 64           2453 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$258)
      000E9C 00                    2454 	.uleb128	0
      000E9D 00                    2455 	.uleb128	0
      000E9E 00                    2456 	.uleb128	0
      000E9F 00                    2457 	.uleb128	0
      000EA0                       2458 Ldebug_info_end:
                                   2459 
                                   2460 	.area .debug_pubnames (NOLOAD)
      00024C 00 00 00 C4           2461 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000250                       2462 Ldebug_pubnames_start:
      000250 00 02                 2463 	.dw	2
      000252 00 00 0A 06           2464 	.dw	0,(Ldebug_info_start-4)
      000256 00 00 04 9A           2465 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00025A 00 00 00 4C           2466 	.dw	0,76
      00025E 55 41 52 54 31 5F 44  2467 	.ascii "UART1_DeInit"
             65 49 6E 69 74
      00026A 00                    2468 	.db	0
      00026B 00 00 00 67           2469 	.dw	0,103
      00026F 55 41 52 54 31 5F 49  2470 	.ascii "UART1_Init"
             6E 69 74
      000279 00                    2471 	.db	0
      00027A 00 00 01 76           2472 	.dw	0,374
      00027E 55 41 52 54 31 5F 43  2473 	.ascii "UART1_Cmd"
             6D 64
      000287 00                    2474 	.db	0
      000288 00 00 01 B6           2475 	.dw	0,438
      00028C 55 41 52 54 31 5F 49  2476 	.ascii "UART1_ITConfig"
             54 43 6F 6E 66 69 67
      00029A 00                    2477 	.db	0
      00029B 00 00 02 71           2478 	.dw	0,625
      00029F 55 41 52 54 31 5F 52  2479 	.ascii "UART1_ReceiveData8"
             65 63 65 69 76 65 44
             61 74 61 38
      0002B1 00                    2480 	.db	0
      0002B2 00 00 02 96           2481 	.dw	0,662
      0002B6 55 41 52 54 31 5F 53  2482 	.ascii "UART1_SendData8"
             65 6E 64 44 61 74 61
             38
      0002C5 00                    2483 	.db	0
      0002C6 00 00 02 C6           2484 	.dw	0,710
      0002CA 55 41 52 54 31 5F 47  2485 	.ascii "UART1_GetFlagStatus"
             65 74 46 6C 61 67 53
             74 61 74 75 73
      0002DD 00                    2486 	.db	0
      0002DE 00 00 03 66           2487 	.dw	0,870
      0002E2 55 41 52 54 31 5F 47  2488 	.ascii "UART1_GetITStatus"
             65 74 49 54 53 74 61
             74 75 73
      0002F3 00                    2489 	.db	0
      0002F4 00 00 04 4D           2490 	.dw	0,1101
      0002F8 55 41 52 54 31 5F 43  2491 	.ascii "UART1_ClearITPendingBit"
             6C 65 61 72 49 54 50
             65 6E 64 69 6E 67 42
             69 74
      00030F 00                    2492 	.db	0
      000310 00 00 00 00           2493 	.dw	0,0
      000314                       2494 Ldebug_pubnames_end:
                                   2495 
                                   2496 	.area .debug_frame (NOLOAD)
      0005BA 00 00                 2497 	.dw	0
      0005BC 00 0E                 2498 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0005BE                       2499 Ldebug_CIE0_start:
      0005BE FF FF                 2500 	.dw	0xffff
      0005C0 FF FF                 2501 	.dw	0xffff
      0005C2 01                    2502 	.db	1
      0005C3 00                    2503 	.db	0
      0005C4 01                    2504 	.uleb128	1
      0005C5 7F                    2505 	.sleb128	-1
      0005C6 09                    2506 	.db	9
      0005C7 0C                    2507 	.db	12
      0005C8 08                    2508 	.uleb128	8
      0005C9 02                    2509 	.uleb128	2
      0005CA 89                    2510 	.db	137
      0005CB 01                    2511 	.uleb128	1
      0005CC                       2512 Ldebug_CIE0_end:
      0005CC 00 00 00 1A           2513 	.dw	0,26
      0005D0 00 00 05 BA           2514 	.dw	0,(Ldebug_CIE0_start-4)
      0005D4 00 00 87 53           2515 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)	;initial loc
      0005D8 00 00 00 12           2516 	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$261-Sstm8s_uart1$UART1_ClearITPendingBit$250
      0005DC 01                    2517 	.db	1
      0005DD 00 00 87 53           2518 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
      0005E1 0E                    2519 	.db	14
      0005E2 02                    2520 	.uleb128	2
      0005E3 01                    2521 	.db	1
      0005E4 00 00 87 5A           2522 	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
      0005E8 0E                    2523 	.db	14
      0005E9 02                    2524 	.uleb128	2
                                   2525 
                                   2526 	.area .debug_frame (NOLOAD)
      0005EA 00 00                 2527 	.dw	0
      0005EC 00 0E                 2528 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0005EE                       2529 Ldebug_CIE1_start:
      0005EE FF FF                 2530 	.dw	0xffff
      0005F0 FF FF                 2531 	.dw	0xffff
      0005F2 01                    2532 	.db	1
      0005F3 00                    2533 	.db	0
      0005F4 01                    2534 	.uleb128	1
      0005F5 7F                    2535 	.sleb128	-1
      0005F6 09                    2536 	.db	9
      0005F7 0C                    2537 	.db	12
      0005F8 08                    2538 	.uleb128	8
      0005F9 02                    2539 	.uleb128	2
      0005FA 89                    2540 	.db	137
      0005FB 01                    2541 	.uleb128	1
      0005FC                       2542 Ldebug_CIE1_end:
      0005FC 00 00 00 4B           2543 	.dw	0,75
      000600 00 00 05 EA           2544 	.dw	0,(Ldebug_CIE1_start-4)
      000604 00 00 86 D0           2545 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)	;initial loc
      000608 00 00 00 83           2546 	.dw	0,Sstm8s_uart1$UART1_GetITStatus$248-Sstm8s_uart1$UART1_GetITStatus$204
      00060C 01                    2547 	.db	1
      00060D 00 00 86 D0           2548 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
      000611 0E                    2549 	.db	14
      000612 02                    2550 	.uleb128	2
      000613 01                    2551 	.db	1
      000614 00 00 86 D2           2552 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
      000618 0E                    2553 	.db	14
      000619 06                    2554 	.uleb128	6
      00061A 01                    2555 	.db	1
      00061B 00 00 86 D8           2556 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
      00061F 0E                    2557 	.db	14
      000620 07                    2558 	.uleb128	7
      000621 01                    2559 	.db	1
      000622 00 00 86 DD           2560 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
      000626 0E                    2561 	.db	14
      000627 06                    2562 	.uleb128	6
      000628 01                    2563 	.db	1
      000629 00 00 86 EA           2564 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
      00062D 0E                    2565 	.db	14
      00062E 07                    2566 	.uleb128	7
      00062F 01                    2567 	.db	1
      000630 00 00 86 EF           2568 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
      000634 0E                    2569 	.db	14
      000635 06                    2570 	.uleb128	6
      000636 01                    2571 	.db	1
      000637 00 00 87 01           2572 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
      00063B 0E                    2573 	.db	14
      00063C 06                    2574 	.uleb128	6
      00063D 01                    2575 	.db	1
      00063E 00 00 87 22           2576 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
      000642 0E                    2577 	.db	14
      000643 06                    2578 	.uleb128	6
      000644 01                    2579 	.db	1
      000645 00 00 87 52           2580 	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
      000649 0E                    2581 	.db	14
      00064A 02                    2582 	.uleb128	2
                                   2583 
                                   2584 	.area .debug_frame (NOLOAD)
      00064B 00 00                 2585 	.dw	0
      00064D 00 0E                 2586 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00064F                       2587 Ldebug_CIE2_start:
      00064F FF FF                 2588 	.dw	0xffff
      000651 FF FF                 2589 	.dw	0xffff
      000653 01                    2590 	.db	1
      000654 00                    2591 	.db	0
      000655 01                    2592 	.uleb128	1
      000656 7F                    2593 	.sleb128	-1
      000657 09                    2594 	.db	9
      000658 0C                    2595 	.db	12
      000659 08                    2596 	.uleb128	8
      00065A 02                    2597 	.uleb128	2
      00065B 89                    2598 	.db	137
      00065C 01                    2599 	.uleb128	1
      00065D                       2600 Ldebug_CIE2_end:
      00065D 00 00 00 2F           2601 	.dw	0,47
      000661 00 00 06 4B           2602 	.dw	0,(Ldebug_CIE2_start-4)
      000665 00 00 86 8C           2603 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)	;initial loc
      000669 00 00 00 44           2604 	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$202-Sstm8s_uart1$UART1_GetFlagStatus$166
      00066D 01                    2605 	.db	1
      00066E 00 00 86 8C           2606 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
      000672 0E                    2607 	.db	14
      000673 02                    2608 	.uleb128	2
      000674 01                    2609 	.db	1
      000675 00 00 86 8E           2610 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
      000679 0E                    2611 	.db	14
      00067A 05                    2612 	.uleb128	5
      00067B 01                    2613 	.db	1
      00067C 00 00 86 9D           2614 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
      000680 0E                    2615 	.db	14
      000681 05                    2616 	.uleb128	5
      000682 01                    2617 	.db	1
      000683 00 00 86 B3           2618 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
      000687 0E                    2619 	.db	14
      000688 05                    2620 	.uleb128	5
      000689 01                    2621 	.db	1
      00068A 00 00 86 CF           2622 	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
      00068E 0E                    2623 	.db	14
      00068F 02                    2624 	.uleb128	2
                                   2625 
                                   2626 	.area .debug_frame (NOLOAD)
      000690 00 00                 2627 	.dw	0
      000692 00 0E                 2628 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000694                       2629 Ldebug_CIE3_start:
      000694 FF FF                 2630 	.dw	0xffff
      000696 FF FF                 2631 	.dw	0xffff
      000698 01                    2632 	.db	1
      000699 00                    2633 	.db	0
      00069A 01                    2634 	.uleb128	1
      00069B 7F                    2635 	.sleb128	-1
      00069C 09                    2636 	.db	9
      00069D 0C                    2637 	.db	12
      00069E 08                    2638 	.uleb128	8
      00069F 02                    2639 	.uleb128	2
      0006A0 89                    2640 	.db	137
      0006A1 01                    2641 	.uleb128	1
      0006A2                       2642 Ldebug_CIE3_end:
      0006A2 00 00 00 13           2643 	.dw	0,19
      0006A6 00 00 06 90           2644 	.dw	0,(Ldebug_CIE3_start-4)
      0006AA 00 00 86 85           2645 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)	;initial loc
      0006AE 00 00 00 07           2646 	.dw	0,Sstm8s_uart1$UART1_SendData8$164-Sstm8s_uart1$UART1_SendData8$160
      0006B2 01                    2647 	.db	1
      0006B3 00 00 86 85           2648 	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
      0006B7 0E                    2649 	.db	14
      0006B8 02                    2650 	.uleb128	2
                                   2651 
                                   2652 	.area .debug_frame (NOLOAD)
      0006B9 00 00                 2653 	.dw	0
      0006BB 00 0E                 2654 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0006BD                       2655 Ldebug_CIE4_start:
      0006BD FF FF                 2656 	.dw	0xffff
      0006BF FF FF                 2657 	.dw	0xffff
      0006C1 01                    2658 	.db	1
      0006C2 00                    2659 	.db	0
      0006C3 01                    2660 	.uleb128	1
      0006C4 7F                    2661 	.sleb128	-1
      0006C5 09                    2662 	.db	9
      0006C6 0C                    2663 	.db	12
      0006C7 08                    2664 	.uleb128	8
      0006C8 02                    2665 	.uleb128	2
      0006C9 89                    2666 	.db	137
      0006CA 01                    2667 	.uleb128	1
      0006CB                       2668 Ldebug_CIE4_end:
      0006CB 00 00 00 13           2669 	.dw	0,19
      0006CF 00 00 06 B9           2670 	.dw	0,(Ldebug_CIE4_start-4)
      0006D3 00 00 86 81           2671 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)	;initial loc
      0006D7 00 00 00 04           2672 	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$158-Sstm8s_uart1$UART1_ReceiveData8$154
      0006DB 01                    2673 	.db	1
      0006DC 00 00 86 81           2674 	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
      0006E0 0E                    2675 	.db	14
      0006E1 02                    2676 	.uleb128	2
                                   2677 
                                   2678 	.area .debug_frame (NOLOAD)
      0006E2 00 00                 2679 	.dw	0
      0006E4 00 0E                 2680 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0006E6                       2681 Ldebug_CIE5_start:
      0006E6 FF FF                 2682 	.dw	0xffff
      0006E8 FF FF                 2683 	.dw	0xffff
      0006EA 01                    2684 	.db	1
      0006EB 00                    2685 	.db	0
      0006EC 01                    2686 	.uleb128	1
      0006ED 7F                    2687 	.sleb128	-1
      0006EE 09                    2688 	.db	9
      0006EF 0C                    2689 	.db	12
      0006F0 08                    2690 	.uleb128	8
      0006F1 02                    2691 	.uleb128	2
      0006F2 89                    2692 	.db	137
      0006F3 01                    2693 	.uleb128	1
      0006F4                       2694 Ldebug_CIE5_end:
      0006F4 00 00 00 3D           2695 	.dw	0,61
      0006F8 00 00 06 E2           2696 	.dw	0,(Ldebug_CIE5_start-4)
      0006FC 00 00 86 07           2697 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
      000700 00 00 00 7A           2698 	.dw	0,Sstm8s_uart1$UART1_ITConfig$152-Sstm8s_uart1$UART1_ITConfig$113
      000704 01                    2699 	.db	1
      000705 00 00 86 07           2700 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
      000709 0E                    2701 	.db	14
      00070A 02                    2702 	.uleb128	2
      00070B 01                    2703 	.db	1
      00070C 00 00 86 08           2704 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
      000710 0E                    2705 	.db	14
      000711 04                    2706 	.uleb128	4
      000712 01                    2707 	.db	1
      000713 00 00 86 0F           2708 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
      000717 0E                    2709 	.db	14
      000718 05                    2710 	.uleb128	5
      000719 01                    2711 	.db	1
      00071A 00 00 86 14           2712 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
      00071E 0E                    2713 	.db	14
      00071F 04                    2714 	.uleb128	4
      000720 01                    2715 	.db	1
      000721 00 00 86 27           2716 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
      000725 0E                    2717 	.db	14
      000726 04                    2718 	.uleb128	4
      000727 01                    2719 	.db	1
      000728 00 00 86 2F           2720 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
      00072C 0E                    2721 	.db	14
      00072D 04                    2722 	.uleb128	4
      00072E 01                    2723 	.db	1
      00072F 00 00 86 80           2724 	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
      000733 0E                    2725 	.db	14
      000734 02                    2726 	.uleb128	2
                                   2727 
                                   2728 	.area .debug_frame (NOLOAD)
      000735 00 00                 2729 	.dw	0
      000737 00 0E                 2730 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      000739                       2731 Ldebug_CIE6_start:
      000739 FF FF                 2732 	.dw	0xffff
      00073B FF FF                 2733 	.dw	0xffff
      00073D 01                    2734 	.db	1
      00073E 00                    2735 	.db	0
      00073F 01                    2736 	.uleb128	1
      000740 7F                    2737 	.sleb128	-1
      000741 09                    2738 	.db	9
      000742 0C                    2739 	.db	12
      000743 08                    2740 	.uleb128	8
      000744 02                    2741 	.uleb128	2
      000745 89                    2742 	.db	137
      000746 01                    2743 	.uleb128	1
      000747                       2744 Ldebug_CIE6_end:
      000747 00 00 00 13           2745 	.dw	0,19
      00074B 00 00 07 35           2746 	.dw	0,(Ldebug_CIE6_start-4)
      00074F 00 00 85 F3           2747 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
      000753 00 00 00 14           2748 	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
      000757 01                    2749 	.db	1
      000758 00 00 85 F3           2750 	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
      00075C 0E                    2751 	.db	14
      00075D 02                    2752 	.uleb128	2
                                   2753 
                                   2754 	.area .debug_frame (NOLOAD)
      00075E 00 00                 2755 	.dw	0
      000760 00 0E                 2756 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      000762                       2757 Ldebug_CIE7_start:
      000762 FF FF                 2758 	.dw	0xffff
      000764 FF FF                 2759 	.dw	0xffff
      000766 01                    2760 	.db	1
      000767 00                    2761 	.db	0
      000768 01                    2762 	.uleb128	1
      000769 7F                    2763 	.sleb128	-1
      00076A 09                    2764 	.db	9
      00076B 0C                    2765 	.db	12
      00076C 08                    2766 	.uleb128	8
      00076D 02                    2767 	.uleb128	2
      00076E 89                    2768 	.db	137
      00076F 01                    2769 	.uleb128	1
      000770                       2770 Ldebug_CIE7_end:
      000770 00 00 01 16           2771 	.dw	0,278
      000774 00 00 07 5E           2772 	.dw	0,(Ldebug_CIE7_start-4)
      000778 00 00 84 76           2773 	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
      00077C 00 00 01 7D           2774 	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
      000780 01                    2775 	.db	1
      000781 00 00 84 76           2776 	.dw	0,(Sstm8s_uart1$UART1_Init$17)
      000785 0E                    2777 	.db	14
      000786 02                    2778 	.uleb128	2
      000787 01                    2779 	.db	1
      000788 00 00 84 78           2780 	.dw	0,(Sstm8s_uart1$UART1_Init$18)
      00078C 0E                    2781 	.db	14
      00078D 13                    2782 	.uleb128	19
      00078E 01                    2783 	.db	1
      00078F 00 00 84 D3           2784 	.dw	0,(Sstm8s_uart1$UART1_Init$29)
      000793 0E                    2785 	.db	14
      000794 15                    2786 	.uleb128	21
      000795 01                    2787 	.db	1
      000796 00 00 84 D6           2788 	.dw	0,(Sstm8s_uart1$UART1_Init$30)
      00079A 0E                    2789 	.db	14
      00079B 17                    2790 	.uleb128	23
      00079C 01                    2791 	.db	1
      00079D 00 00 84 D9           2792 	.dw	0,(Sstm8s_uart1$UART1_Init$31)
      0007A1 0E                    2793 	.db	14
      0007A2 19                    2794 	.uleb128	25
      0007A3 01                    2795 	.db	1
      0007A4 00 00 84 DB           2796 	.dw	0,(Sstm8s_uart1$UART1_Init$32)
      0007A8 0E                    2797 	.db	14
      0007A9 1B                    2798 	.uleb128	27
      0007AA 01                    2799 	.db	1
      0007AB 00 00 84 E0           2800 	.dw	0,(Sstm8s_uart1$UART1_Init$33)
      0007AF 0E                    2801 	.db	14
      0007B0 13                    2802 	.uleb128	19
      0007B1 01                    2803 	.db	1
      0007B2 00 00 84 F6           2804 	.dw	0,(Sstm8s_uart1$UART1_Init$35)
      0007B6 0E                    2805 	.db	14
      0007B7 15                    2806 	.uleb128	21
      0007B8 01                    2807 	.db	1
      0007B9 00 00 84 F9           2808 	.dw	0,(Sstm8s_uart1$UART1_Init$36)
      0007BD 0E                    2809 	.db	14
      0007BE 17                    2810 	.uleb128	23
      0007BF 01                    2811 	.db	1
      0007C0 00 00 84 FB           2812 	.dw	0,(Sstm8s_uart1$UART1_Init$37)
      0007C4 0E                    2813 	.db	14
      0007C5 18                    2814 	.uleb128	24
      0007C6 01                    2815 	.db	1
      0007C7 00 00 84 FD           2816 	.dw	0,(Sstm8s_uart1$UART1_Init$38)
      0007CB 0E                    2817 	.db	14
      0007CC 1A                    2818 	.uleb128	26
      0007CD 01                    2819 	.db	1
      0007CE 00 00 84 FF           2820 	.dw	0,(Sstm8s_uart1$UART1_Init$39)
      0007D2 0E                    2821 	.db	14
      0007D3 1B                    2822 	.uleb128	27
      0007D4 01                    2823 	.db	1
      0007D5 00 00 85 04           2824 	.dw	0,(Sstm8s_uart1$UART1_Init$40)
      0007D9 0E                    2825 	.db	14
      0007DA 13                    2826 	.uleb128	19
      0007DB 01                    2827 	.db	1
      0007DC 00 00 85 09           2828 	.dw	0,(Sstm8s_uart1$UART1_Init$41)
      0007E0 0E                    2829 	.db	14
      0007E1 15                    2830 	.uleb128	21
      0007E2 01                    2831 	.db	1
      0007E3 00 00 85 0C           2832 	.dw	0,(Sstm8s_uart1$UART1_Init$42)
      0007E7 0E                    2833 	.db	14
      0007E8 17                    2834 	.uleb128	23
      0007E9 01                    2835 	.db	1
      0007EA 00 00 85 0F           2836 	.dw	0,(Sstm8s_uart1$UART1_Init$43)
      0007EE 0E                    2837 	.db	14
      0007EF 19                    2838 	.uleb128	25
      0007F0 01                    2839 	.db	1
      0007F1 00 00 85 11           2840 	.dw	0,(Sstm8s_uart1$UART1_Init$44)
      0007F5 0E                    2841 	.db	14
      0007F6 1B                    2842 	.uleb128	27
      0007F7 01                    2843 	.db	1
      0007F8 00 00 85 16           2844 	.dw	0,(Sstm8s_uart1$UART1_Init$45)
      0007FC 0E                    2845 	.db	14
      0007FD 13                    2846 	.uleb128	19
      0007FE 01                    2847 	.db	1
      0007FF 00 00 85 22           2848 	.dw	0,(Sstm8s_uart1$UART1_Init$47)
      000803 0E                    2849 	.db	14
      000804 15                    2850 	.uleb128	21
      000805 01                    2851 	.db	1
      000806 00 00 85 25           2852 	.dw	0,(Sstm8s_uart1$UART1_Init$48)
      00080A 0E                    2853 	.db	14
      00080B 17                    2854 	.uleb128	23
      00080C 01                    2855 	.db	1
      00080D 00 00 85 27           2856 	.dw	0,(Sstm8s_uart1$UART1_Init$49)
      000811 0E                    2857 	.db	14
      000812 18                    2858 	.uleb128	24
      000813 01                    2859 	.db	1
      000814 00 00 85 29           2860 	.dw	0,(Sstm8s_uart1$UART1_Init$50)
      000818 0E                    2861 	.db	14
      000819 1A                    2862 	.uleb128	26
      00081A 01                    2863 	.db	1
      00081B 00 00 85 2B           2864 	.dw	0,(Sstm8s_uart1$UART1_Init$51)
      00081F 0E                    2865 	.db	14
      000820 1B                    2866 	.uleb128	27
      000821 01                    2867 	.db	1
      000822 00 00 85 30           2868 	.dw	0,(Sstm8s_uart1$UART1_Init$52)
      000826 0E                    2869 	.db	14
      000827 13                    2870 	.uleb128	19
      000828 01                    2871 	.db	1
      000829 00 00 85 55           2872 	.dw	0,(Sstm8s_uart1$UART1_Init$53)
      00082D 0E                    2873 	.db	14
      00082E 14                    2874 	.uleb128	20
      00082F 01                    2875 	.db	1
      000830 00 00 85 57           2876 	.dw	0,(Sstm8s_uart1$UART1_Init$54)
      000834 0E                    2877 	.db	14
      000835 15                    2878 	.uleb128	21
      000836 01                    2879 	.db	1
      000837 00 00 85 59           2880 	.dw	0,(Sstm8s_uart1$UART1_Init$55)
      00083B 0E                    2881 	.db	14
      00083C 16                    2882 	.uleb128	22
      00083D 01                    2883 	.db	1
      00083E 00 00 85 5B           2884 	.dw	0,(Sstm8s_uart1$UART1_Init$56)
      000842 0E                    2885 	.db	14
      000843 17                    2886 	.uleb128	23
      000844 01                    2887 	.db	1
      000845 00 00 85 5C           2888 	.dw	0,(Sstm8s_uart1$UART1_Init$57)
      000849 0E                    2889 	.db	14
      00084A 19                    2890 	.uleb128	25
      00084B 01                    2891 	.db	1
      00084C 00 00 85 5E           2892 	.dw	0,(Sstm8s_uart1$UART1_Init$58)
      000850 0E                    2893 	.db	14
      000851 1B                    2894 	.uleb128	27
      000852 01                    2895 	.db	1
      000853 00 00 85 63           2896 	.dw	0,(Sstm8s_uart1$UART1_Init$59)
      000857 0E                    2897 	.db	14
      000858 13                    2898 	.uleb128	19
      000859 01                    2899 	.db	1
      00085A 00 00 85 AB           2900 	.dw	0,(Sstm8s_uart1$UART1_Init$67)
      00085E 0E                    2901 	.db	14
      00085F 14                    2902 	.uleb128	20
      000860 01                    2903 	.db	1
      000861 00 00 85 B0           2904 	.dw	0,(Sstm8s_uart1$UART1_Init$68)
      000865 0E                    2905 	.db	14
      000866 13                    2906 	.uleb128	19
      000867 01                    2907 	.db	1
      000868 00 00 85 C2           2908 	.dw	0,(Sstm8s_uart1$UART1_Init$77)
      00086C 0E                    2909 	.db	14
      00086D 14                    2910 	.uleb128	20
      00086E 01                    2911 	.db	1
      00086F 00 00 85 C7           2912 	.dw	0,(Sstm8s_uart1$UART1_Init$78)
      000873 0E                    2913 	.db	14
      000874 13                    2914 	.uleb128	19
      000875 01                    2915 	.db	1
      000876 00 00 85 E4           2916 	.dw	0,(Sstm8s_uart1$UART1_Init$92)
      00087A 0E                    2917 	.db	14
      00087B 14                    2918 	.uleb128	20
      00087C 01                    2919 	.db	1
      00087D 00 00 85 EB           2920 	.dw	0,(Sstm8s_uart1$UART1_Init$93)
      000881 0E                    2921 	.db	14
      000882 13                    2922 	.uleb128	19
      000883 01                    2923 	.db	1
      000884 00 00 85 F2           2924 	.dw	0,(Sstm8s_uart1$UART1_Init$96)
      000888 0E                    2925 	.db	14
      000889 02                    2926 	.uleb128	2
                                   2927 
                                   2928 	.area .debug_frame (NOLOAD)
      00088A 00 00                 2929 	.dw	0
      00088C 00 0E                 2930 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      00088E                       2931 Ldebug_CIE8_start:
      00088E FF FF                 2932 	.dw	0xffff
      000890 FF FF                 2933 	.dw	0xffff
      000892 01                    2934 	.db	1
      000893 00                    2935 	.db	0
      000894 01                    2936 	.uleb128	1
      000895 7F                    2937 	.sleb128	-1
      000896 09                    2938 	.db	9
      000897 0C                    2939 	.db	12
      000898 08                    2940 	.uleb128	8
      000899 02                    2941 	.uleb128	2
      00089A 89                    2942 	.db	137
      00089B 01                    2943 	.uleb128	1
      00089C                       2944 Ldebug_CIE8_end:
      00089C 00 00 00 13           2945 	.dw	0,19
      0008A0 00 00 08 8A           2946 	.dw	0,(Ldebug_CIE8_start-4)
      0008A4 00 00 84 4B           2947 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
      0008A8 00 00 00 2B           2948 	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
      0008AC 01                    2949 	.db	1
      0008AD 00 00 84 4B           2950 	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
      0008B1 0E                    2951 	.db	14
      0008B2 02                    2952 	.uleb128	2
