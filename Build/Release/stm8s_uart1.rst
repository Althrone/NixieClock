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
                                     58 ;	Source/Std_Lib/Src/stm8s_uart1.c: 53: void UART1_DeInit(void)
                                     59 ;	-----------------------------------------
                                     60 ;	 function UART1_DeInit
                                     61 ;	-----------------------------------------
      008437                         62 _UART1_DeInit:
                                     63 ;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
      008437 C6 52 30         [ 1]   64 	ld	a, 0x5230
                                     65 ;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
      00843A C6 52 31         [ 1]   66 	ld	a, 0x5231
                                     67 ;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      00843D 35 00 52 33      [ 1]   68 	mov	0x5233+0, #0x00
                                     69 ;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      008441 35 00 52 32      [ 1]   70 	mov	0x5232+0, #0x00
                                     71 ;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      008445 35 00 52 34      [ 1]   72 	mov	0x5234+0, #0x00
                                     73 ;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      008449 35 00 52 35      [ 1]   74 	mov	0x5235+0, #0x00
                                     75 ;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      00844D 35 00 52 36      [ 1]   76 	mov	0x5236+0, #0x00
                                     77 ;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      008451 35 00 52 37      [ 1]   78 	mov	0x5237+0, #0x00
                                     79 ;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      008455 35 00 52 38      [ 1]   80 	mov	0x5238+0, #0x00
                                     81 ;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      008459 35 00 52 39      [ 1]   82 	mov	0x5239+0, #0x00
                                     83 ;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      00845D 35 00 52 3A      [ 1]   84 	mov	0x523a+0, #0x00
                                     85 ;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
      008461 81               [ 4]   86 	ret
                                     87 ;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     88 ;	-----------------------------------------
                                     89 ;	 function UART1_Init
                                     90 ;	-----------------------------------------
      008462                         91 _UART1_Init:
      008462 52 11            [ 2]   92 	sub	sp, #17
                                     93 ;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      008464 72 19 52 34      [ 1]   94 	bres	21044, #4
                                     95 ;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      008468 C6 52 34         [ 1]   96 	ld	a, 0x5234
      00846B 1A 18            [ 1]   97 	or	a, (0x18, sp)
      00846D C7 52 34         [ 1]   98 	ld	0x5234, a
                                     99 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008470 C6 52 36         [ 1]  100 	ld	a, 0x5236
      008473 A4 CF            [ 1]  101 	and	a, #0xcf
      008475 C7 52 36         [ 1]  102 	ld	0x5236, a
                                    103 ;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      008478 C6 52 36         [ 1]  104 	ld	a, 0x5236
      00847B 1A 19            [ 1]  105 	or	a, (0x19, sp)
      00847D C7 52 36         [ 1]  106 	ld	0x5236, a
                                    107 ;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      008480 C6 52 34         [ 1]  108 	ld	a, 0x5234
      008483 A4 F9            [ 1]  109 	and	a, #0xf9
      008485 C7 52 34         [ 1]  110 	ld	0x5234, a
                                    111 ;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      008488 C6 52 34         [ 1]  112 	ld	a, 0x5234
      00848B 1A 1A            [ 1]  113 	or	a, (0x1a, sp)
      00848D C7 52 34         [ 1]  114 	ld	0x5234, a
                                    115 ;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      008490 C6 52 32         [ 1]  116 	ld	a, 0x5232
      008493 35 00 52 32      [ 1]  117 	mov	0x5232+0, #0x00
                                    118 ;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      008497 C6 52 33         [ 1]  119 	ld	a, 0x5233
      00849A A4 0F            [ 1]  120 	and	a, #0x0f
      00849C C7 52 33         [ 1]  121 	ld	0x5233, a
                                    122 ;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      00849F C6 52 33         [ 1]  123 	ld	a, 0x5233
      0084A2 A4 F0            [ 1]  124 	and	a, #0xf0
      0084A4 C7 52 33         [ 1]  125 	ld	0x5233, a
                                    126 ;	Source/Std_Lib/Src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0084A7 CD 83 67         [ 4]  127 	call	_CLK_GetClockFreq
      0084AA 1F 10            [ 2]  128 	ldw	(0x10, sp), x
      0084AC 1E 14            [ 2]  129 	ldw	x, (0x14, sp)
      0084AE 1F 0A            [ 2]  130 	ldw	(0x0a, sp), x
      0084B0 1E 16            [ 2]  131 	ldw	x, (0x16, sp)
      0084B2 A6 04            [ 1]  132 	ld	a, #0x04
      0084B4                        133 00127$:
      0084B4 58               [ 2]  134 	sllw	x
      0084B5 09 0B            [ 1]  135 	rlc	(0x0b, sp)
      0084B7 09 0A            [ 1]  136 	rlc	(0x0a, sp)
      0084B9 4A               [ 1]  137 	dec	a
      0084BA 26 F8            [ 1]  138 	jrne	00127$
      0084BC 1F 0C            [ 2]  139 	ldw	(0x0c, sp), x
      0084BE 89               [ 2]  140 	pushw	x
      0084BF 1E 0C            [ 2]  141 	ldw	x, (0x0c, sp)
      0084C1 89               [ 2]  142 	pushw	x
      0084C2 1E 14            [ 2]  143 	ldw	x, (0x14, sp)
      0084C4 89               [ 2]  144 	pushw	x
      0084C5 90 89            [ 2]  145 	pushw	y
      0084C7 CD 94 F2         [ 4]  146 	call	__divulong
      0084CA 5B 08            [ 2]  147 	addw	sp, #8
      0084CC 1F 10            [ 2]  148 	ldw	(0x10, sp), x
      0084CE 17 0E            [ 2]  149 	ldw	(0x0e, sp), y
      0084D0 16 10            [ 2]  150 	ldw	y, (0x10, sp)
      0084D2 17 03            [ 2]  151 	ldw	(0x03, sp), y
      0084D4 16 0E            [ 2]  152 	ldw	y, (0x0e, sp)
      0084D6 17 01            [ 2]  153 	ldw	(0x01, sp), y
                                    154 ;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0084D8 CD 83 67         [ 4]  155 	call	_CLK_GetClockFreq
      0084DB 1F 10            [ 2]  156 	ldw	(0x10, sp), x
      0084DD 17 0E            [ 2]  157 	ldw	(0x0e, sp), y
      0084DF 1E 10            [ 2]  158 	ldw	x, (0x10, sp)
      0084E1 89               [ 2]  159 	pushw	x
      0084E2 1E 10            [ 2]  160 	ldw	x, (0x10, sp)
      0084E4 89               [ 2]  161 	pushw	x
      0084E5 4B 64            [ 1]  162 	push	#0x64
      0084E7 5F               [ 1]  163 	clrw	x
      0084E8 89               [ 2]  164 	pushw	x
      0084E9 4B 00            [ 1]  165 	push	#0x00
      0084EB CD 95 72         [ 4]  166 	call	__mullong
      0084EE 5B 08            [ 2]  167 	addw	sp, #8
      0084F0 1F 10            [ 2]  168 	ldw	(0x10, sp), x
      0084F2 1E 0C            [ 2]  169 	ldw	x, (0x0c, sp)
      0084F4 89               [ 2]  170 	pushw	x
      0084F5 1E 0C            [ 2]  171 	ldw	x, (0x0c, sp)
      0084F7 89               [ 2]  172 	pushw	x
      0084F8 1E 14            [ 2]  173 	ldw	x, (0x14, sp)
      0084FA 89               [ 2]  174 	pushw	x
      0084FB 90 89            [ 2]  175 	pushw	y
      0084FD CD 94 F2         [ 4]  176 	call	__divulong
      008500 5B 08            [ 2]  177 	addw	sp, #8
      008502 1F 07            [ 2]  178 	ldw	(0x07, sp), x
      008504 17 05            [ 2]  179 	ldw	(0x05, sp), y
                                    180 ;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      008506 C6 52 33         [ 1]  181 	ld	a, 0x5233
      008509 6B 09            [ 1]  182 	ld	(0x09, sp), a
      00850B 1E 03            [ 2]  183 	ldw	x, (0x03, sp)
      00850D 89               [ 2]  184 	pushw	x
      00850E 1E 03            [ 2]  185 	ldw	x, (0x03, sp)
      008510 89               [ 2]  186 	pushw	x
      008511 4B 64            [ 1]  187 	push	#0x64
      008513 5F               [ 1]  188 	clrw	x
      008514 89               [ 2]  189 	pushw	x
      008515 4B 00            [ 1]  190 	push	#0x00
      008517 CD 95 72         [ 4]  191 	call	__mullong
      00851A 5B 08            [ 2]  192 	addw	sp, #8
      00851C 1F 0C            [ 2]  193 	ldw	(0x0c, sp), x
      00851E 17 0A            [ 2]  194 	ldw	(0x0a, sp), y
      008520 1E 07            [ 2]  195 	ldw	x, (0x07, sp)
      008522 72 F0 0C         [ 2]  196 	subw	x, (0x0c, sp)
      008525 1F 10            [ 2]  197 	ldw	(0x10, sp), x
      008527 7B 06            [ 1]  198 	ld	a, (0x06, sp)
      008529 12 0B            [ 1]  199 	sbc	a, (0x0b, sp)
      00852B 6B 0F            [ 1]  200 	ld	(0x0f, sp), a
      00852D 7B 05            [ 1]  201 	ld	a, (0x05, sp)
      00852F 12 0A            [ 1]  202 	sbc	a, (0x0a, sp)
      008531 6B 0E            [ 1]  203 	ld	(0x0e, sp), a
      008533 1E 10            [ 2]  204 	ldw	x, (0x10, sp)
      008535 16 0E            [ 2]  205 	ldw	y, (0x0e, sp)
      008537 A6 04            [ 1]  206 	ld	a, #0x04
      008539                        207 00129$:
      008539 58               [ 2]  208 	sllw	x
      00853A 90 59            [ 2]  209 	rlcw	y
      00853C 4A               [ 1]  210 	dec	a
      00853D 26 FA            [ 1]  211 	jrne	00129$
      00853F 4B 64            [ 1]  212 	push	#0x64
      008541 4B 00            [ 1]  213 	push	#0x00
      008543 4B 00            [ 1]  214 	push	#0x00
      008545 4B 00            [ 1]  215 	push	#0x00
      008547 89               [ 2]  216 	pushw	x
      008548 90 89            [ 2]  217 	pushw	y
      00854A CD 94 F2         [ 4]  218 	call	__divulong
      00854D 5B 08            [ 2]  219 	addw	sp, #8
      00854F 9F               [ 1]  220 	ld	a, xl
      008550 A4 0F            [ 1]  221 	and	a, #0x0f
      008552 1A 09            [ 1]  222 	or	a, (0x09, sp)
      008554 C7 52 33         [ 1]  223 	ld	0x5233, a
                                    224 ;	Source/Std_Lib/Src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      008557 C6 52 33         [ 1]  225 	ld	a, 0x5233
      00855A 6B 11            [ 1]  226 	ld	(0x11, sp), a
      00855C 1E 03            [ 2]  227 	ldw	x, (0x03, sp)
      00855E A6 10            [ 1]  228 	ld	a, #0x10
      008560 62               [ 2]  229 	div	x, a
      008561 9F               [ 1]  230 	ld	a, xl
      008562 A4 F0            [ 1]  231 	and	a, #0xf0
      008564 1A 11            [ 1]  232 	or	a, (0x11, sp)
      008566 C7 52 33         [ 1]  233 	ld	0x5233, a
                                    234 ;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      008569 C6 52 32         [ 1]  235 	ld	a, 0x5232
      00856C 6B 11            [ 1]  236 	ld	(0x11, sp), a
      00856E 7B 04            [ 1]  237 	ld	a, (0x04, sp)
      008570 1A 11            [ 1]  238 	or	a, (0x11, sp)
      008572 C7 52 32         [ 1]  239 	ld	0x5232, a
                                    240 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008575 C6 52 35         [ 1]  241 	ld	a, 0x5235
      008578 A4 F3            [ 1]  242 	and	a, #0xf3
      00857A C7 52 35         [ 1]  243 	ld	0x5235, a
                                    244 ;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      00857D C6 52 36         [ 1]  245 	ld	a, 0x5236
      008580 A4 F8            [ 1]  246 	and	a, #0xf8
      008582 C7 52 36         [ 1]  247 	ld	0x5236, a
                                    248 ;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      008585 C6 52 36         [ 1]  249 	ld	a, 0x5236
      008588 6B 11            [ 1]  250 	ld	(0x11, sp), a
      00858A 7B 1B            [ 1]  251 	ld	a, (0x1b, sp)
      00858C A4 07            [ 1]  252 	and	a, #0x07
      00858E 1A 11            [ 1]  253 	or	a, (0x11, sp)
      008590 C7 52 36         [ 1]  254 	ld	0x5236, a
                                    255 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      008593 C6 52 35         [ 1]  256 	ld	a, 0x5235
                                    257 ;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      008596 88               [ 1]  258 	push	a
      008597 7B 1D            [ 1]  259 	ld	a, (0x1d, sp)
      008599 A5 04            [ 1]  260 	bcp	a, #0x04
      00859B 84               [ 1]  261 	pop	a
      00859C 27 07            [ 1]  262 	jreq	00102$
                                    263 ;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      00859E AA 08            [ 1]  264 	or	a, #0x08
      0085A0 C7 52 35         [ 1]  265 	ld	0x5235, a
      0085A3 20 05            [ 2]  266 	jra	00103$
      0085A5                        267 00102$:
                                    268 ;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0085A5 A4 F7            [ 1]  269 	and	a, #0xf7
      0085A7 C7 52 35         [ 1]  270 	ld	0x5235, a
      0085AA                        271 00103$:
                                    272 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0085AA C6 52 35         [ 1]  273 	ld	a, 0x5235
                                    274 ;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0085AD 88               [ 1]  275 	push	a
      0085AE 7B 1D            [ 1]  276 	ld	a, (0x1d, sp)
      0085B0 A5 08            [ 1]  277 	bcp	a, #0x08
      0085B2 84               [ 1]  278 	pop	a
      0085B3 27 07            [ 1]  279 	jreq	00105$
                                    280 ;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0085B5 AA 04            [ 1]  281 	or	a, #0x04
      0085B7 C7 52 35         [ 1]  282 	ld	0x5235, a
      0085BA 20 05            [ 2]  283 	jra	00106$
      0085BC                        284 00105$:
                                    285 ;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0085BC A4 FB            [ 1]  286 	and	a, #0xfb
      0085BE C7 52 35         [ 1]  287 	ld	0x5235, a
      0085C1                        288 00106$:
                                    289 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0085C1 C6 52 36         [ 1]  290 	ld	a, 0x5236
                                    291 ;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0085C4 0D 1B            [ 1]  292 	tnz	(0x1b, sp)
      0085C6 2A 07            [ 1]  293 	jrpl	00108$
                                    294 ;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0085C8 A4 F7            [ 1]  295 	and	a, #0xf7
      0085CA C7 52 36         [ 1]  296 	ld	0x5236, a
      0085CD 20 0D            [ 2]  297 	jra	00110$
      0085CF                        298 00108$:
                                    299 ;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0085CF 88               [ 1]  300 	push	a
      0085D0 7B 1C            [ 1]  301 	ld	a, (0x1c, sp)
      0085D2 A4 08            [ 1]  302 	and	a, #0x08
      0085D4 6B 12            [ 1]  303 	ld	(0x12, sp), a
      0085D6 84               [ 1]  304 	pop	a
      0085D7 1A 11            [ 1]  305 	or	a, (0x11, sp)
      0085D9 C7 52 36         [ 1]  306 	ld	0x5236, a
      0085DC                        307 00110$:
                                    308 ;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
      0085DC 5B 11            [ 2]  309 	addw	sp, #17
      0085DE 81               [ 4]  310 	ret
                                    311 ;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    312 ;	-----------------------------------------
                                    313 ;	 function UART1_Cmd
                                    314 ;	-----------------------------------------
      0085DF                        315 _UART1_Cmd:
                                    316 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085DF C6 52 34         [ 1]  317 	ld	a, 0x5234
                                    318 ;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      0085E2 0D 03            [ 1]  319 	tnz	(0x03, sp)
      0085E4 27 06            [ 1]  320 	jreq	00102$
                                    321 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085E6 A4 DF            [ 1]  322 	and	a, #0xdf
      0085E8 C7 52 34         [ 1]  323 	ld	0x5234, a
      0085EB 81               [ 4]  324 	ret
      0085EC                        325 00102$:
                                    326 ;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      0085EC AA 20            [ 1]  327 	or	a, #0x20
      0085EE C7 52 34         [ 1]  328 	ld	0x5234, a
                                    329 ;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
      0085F1 81               [ 4]  330 	ret
                                    331 ;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    332 ;	-----------------------------------------
                                    333 ;	 function UART1_ITConfig
                                    334 ;	-----------------------------------------
      0085F2                        335 _UART1_ITConfig:
      0085F2 89               [ 2]  336 	pushw	x
                                    337 ;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
      0085F3 1E 05            [ 2]  338 	ldw	x, (0x05, sp)
                                    339 ;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0085F5 7B 06            [ 1]  340 	ld	a, (0x06, sp)
      0085F7 A4 0F            [ 1]  341 	and	a, #0x0f
      0085F9 88               [ 1]  342 	push	a
      0085FA A6 01            [ 1]  343 	ld	a, #0x01
      0085FC 6B 03            [ 1]  344 	ld	(0x03, sp), a
      0085FE 84               [ 1]  345 	pop	a
      0085FF 4D               [ 1]  346 	tnz	a
      008600 27 05            [ 1]  347 	jreq	00144$
      008602                        348 00143$:
      008602 08 02            [ 1]  349 	sll	(0x02, sp)
      008604 4A               [ 1]  350 	dec	a
      008605 26 FB            [ 1]  351 	jrne	00143$
      008607                        352 00144$:
                                    353 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      008607 9E               [ 1]  354 	ld	a, xh
      008608 4A               [ 1]  355 	dec	a
      008609 26 05            [ 1]  356 	jrne	00146$
      00860B A6 01            [ 1]  357 	ld	a, #0x01
      00860D 6B 01            [ 1]  358 	ld	(0x01, sp), a
      00860F C5                     359 	.byte 0xc5
      008610                        360 00146$:
      008610 0F 01            [ 1]  361 	clr	(0x01, sp)
      008612                        362 00147$:
                                    363 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008612 9E               [ 1]  364 	ld	a, xh
      008613 A0 02            [ 1]  365 	sub	a, #0x02
      008615 26 02            [ 1]  366 	jrne	00149$
      008617 4C               [ 1]  367 	inc	a
      008618 21                     368 	.byte 0x21
      008619                        369 00149$:
      008619 4F               [ 1]  370 	clr	a
      00861A                        371 00150$:
                                    372 ;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
      00861A 0D 07            [ 1]  373 	tnz	(0x07, sp)
      00861C 27 25            [ 1]  374 	jreq	00114$
                                    375 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      00861E 0D 01            [ 1]  376 	tnz	(0x01, sp)
      008620 27 0A            [ 1]  377 	jreq	00105$
                                    378 ;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      008622 C6 52 34         [ 1]  379 	ld	a, 0x5234
      008625 1A 02            [ 1]  380 	or	a, (0x02, sp)
      008627 C7 52 34         [ 1]  381 	ld	0x5234, a
      00862A 20 3C            [ 2]  382 	jra	00116$
      00862C                        383 00105$:
                                    384 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      00862C 4D               [ 1]  385 	tnz	a
      00862D 27 0A            [ 1]  386 	jreq	00102$
                                    387 ;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      00862F C6 52 35         [ 1]  388 	ld	a, 0x5235
      008632 1A 02            [ 1]  389 	or	a, (0x02, sp)
      008634 C7 52 35         [ 1]  390 	ld	0x5235, a
      008637 20 2F            [ 2]  391 	jra	00116$
      008639                        392 00102$:
                                    393 ;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      008639 C6 52 37         [ 1]  394 	ld	a, 0x5237
      00863C 1A 02            [ 1]  395 	or	a, (0x02, sp)
      00863E C7 52 37         [ 1]  396 	ld	0x5237, a
      008641 20 25            [ 2]  397 	jra	00116$
      008643                        398 00114$:
                                    399 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      008643 03 02            [ 1]  400 	cpl	(0x02, sp)
                                    401 ;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
      008645 0D 01            [ 1]  402 	tnz	(0x01, sp)
      008647 27 0A            [ 1]  403 	jreq	00111$
                                    404 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      008649 C6 52 34         [ 1]  405 	ld	a, 0x5234
      00864C 14 02            [ 1]  406 	and	a, (0x02, sp)
      00864E C7 52 34         [ 1]  407 	ld	0x5234, a
      008651 20 15            [ 2]  408 	jra	00116$
      008653                        409 00111$:
                                    410 ;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
      008653 4D               [ 1]  411 	tnz	a
      008654 27 0A            [ 1]  412 	jreq	00108$
                                    413 ;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      008656 C6 52 35         [ 1]  414 	ld	a, 0x5235
      008659 14 02            [ 1]  415 	and	a, (0x02, sp)
      00865B C7 52 35         [ 1]  416 	ld	0x5235, a
      00865E 20 08            [ 2]  417 	jra	00116$
      008660                        418 00108$:
                                    419 ;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      008660 C6 52 37         [ 1]  420 	ld	a, 0x5237
      008663 14 02            [ 1]  421 	and	a, (0x02, sp)
      008665 C7 52 37         [ 1]  422 	ld	0x5237, a
      008668                        423 00116$:
                                    424 ;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
      008668 85               [ 2]  425 	popw	x
      008669 81               [ 4]  426 	ret
                                    427 ;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    428 ;	-----------------------------------------
                                    429 ;	 function UART1_ReceiveData8
                                    430 ;	-----------------------------------------
      00866A                        431 _UART1_ReceiveData8:
                                    432 ;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      00866A C6 52 31         [ 1]  433 	ld	a, 0x5231
                                    434 ;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
      00866D 81               [ 4]  435 	ret
                                    436 ;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_SendData8
                                    439 ;	-----------------------------------------
      00866E                        440 _UART1_SendData8:
                                    441 ;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
      00866E AE 52 31         [ 2]  442 	ldw	x, #0x5231
      008671 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      008673 F7               [ 1]  444 	ld	(x), a
                                    445 ;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
      008674 81               [ 4]  446 	ret
                                    447 ;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    448 ;	-----------------------------------------
                                    449 ;	 function UART1_GetFlagStatus
                                    450 ;	-----------------------------------------
      008675                        451 _UART1_GetFlagStatus:
      008675 52 03            [ 2]  452 	sub	sp, #3
                                    453 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      008677 16 06            [ 2]  454 	ldw	y, (0x06, sp)
      008679 17 01            [ 2]  455 	ldw	(0x01, sp), y
                                    456 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00867B 7B 07            [ 1]  457 	ld	a, (0x07, sp)
      00867D 6B 03            [ 1]  458 	ld	(0x03, sp), a
                                    459 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      00867F 1E 01            [ 2]  460 	ldw	x, (0x01, sp)
      008681 A3 02 10         [ 2]  461 	cpw	x, #0x0210
      008684 26 0E            [ 1]  462 	jrne	00114$
                                    463 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      008686 C6 52 37         [ 1]  464 	ld	a, 0x5237
      008689 14 03            [ 1]  465 	and	a, (0x03, sp)
      00868B 27 04            [ 1]  466 	jreq	00102$
                                    467 ;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
      00868D A6 01            [ 1]  468 	ld	a, #0x01
      00868F 20 23            [ 2]  469 	jra	00115$
      008691                        470 00102$:
                                    471 ;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
      008691 4F               [ 1]  472 	clr	a
      008692 20 20            [ 2]  473 	jra	00115$
      008694                        474 00114$:
                                    475 ;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      008694 1E 01            [ 2]  476 	ldw	x, (0x01, sp)
      008696 A3 01 01         [ 2]  477 	cpw	x, #0x0101
      008699 26 0E            [ 1]  478 	jrne	00111$
                                    479 ;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00869B C6 52 35         [ 1]  480 	ld	a, 0x5235
      00869E 14 03            [ 1]  481 	and	a, (0x03, sp)
      0086A0 27 04            [ 1]  482 	jreq	00105$
                                    483 ;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
      0086A2 A6 01            [ 1]  484 	ld	a, #0x01
      0086A4 20 0E            [ 2]  485 	jra	00115$
      0086A6                        486 00105$:
                                    487 ;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
      0086A6 4F               [ 1]  488 	clr	a
      0086A7 20 0B            [ 2]  489 	jra	00115$
      0086A9                        490 00111$:
                                    491 ;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0086A9 C6 52 30         [ 1]  492 	ld	a, 0x5230
      0086AC 14 03            [ 1]  493 	and	a, (0x03, sp)
      0086AE 27 03            [ 1]  494 	jreq	00108$
                                    495 ;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
      0086B0 A6 01            [ 1]  496 	ld	a, #0x01
                                    497 ;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
      0086B2 21                     498 	.byte 0x21
      0086B3                        499 00108$:
      0086B3 4F               [ 1]  500 	clr	a
      0086B4                        501 00115$:
                                    502 ;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
                                    503 ;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
      0086B4 5B 03            [ 2]  504 	addw	sp, #3
      0086B6 81               [ 4]  505 	ret
                                    506 ;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                    507 ;	-----------------------------------------
                                    508 ;	 function UART1_GetITStatus
                                    509 ;	-----------------------------------------
      0086B7                        510 _UART1_GetITStatus:
      0086B7 52 04            [ 2]  511 	sub	sp, #4
                                    512 ;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0086B9 7B 08            [ 1]  513 	ld	a, (0x08, sp)
      0086BB 97               [ 1]  514 	ld	xl, a
      0086BC A4 0F            [ 1]  515 	and	a, #0x0f
      0086BE 88               [ 1]  516 	push	a
      0086BF A6 01            [ 1]  517 	ld	a, #0x01
      0086C1 6B 02            [ 1]  518 	ld	(0x02, sp), a
      0086C3 84               [ 1]  519 	pop	a
      0086C4 4D               [ 1]  520 	tnz	a
      0086C5 27 05            [ 1]  521 	jreq	00162$
      0086C7                        522 00161$:
      0086C7 08 01            [ 1]  523 	sll	(0x01, sp)
      0086C9 4A               [ 1]  524 	dec	a
      0086CA 26 FB            [ 1]  525 	jrne	00161$
      0086CC                        526 00162$:
                                    527 ;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      0086CC 9F               [ 1]  528 	ld	a, xl
      0086CD 4E               [ 1]  529 	swap	a
      0086CE A4 0F            [ 1]  530 	and	a, #0x0f
                                    531 ;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0086D0 88               [ 1]  532 	push	a
      0086D1 A6 01            [ 1]  533 	ld	a, #0x01
      0086D3 6B 03            [ 1]  534 	ld	(0x03, sp), a
      0086D5 84               [ 1]  535 	pop	a
      0086D6 4D               [ 1]  536 	tnz	a
      0086D7 27 05            [ 1]  537 	jreq	00164$
      0086D9                        538 00163$:
      0086D9 08 02            [ 1]  539 	sll	(0x02, sp)
      0086DB 4A               [ 1]  540 	dec	a
      0086DC 26 FB            [ 1]  541 	jrne	00163$
      0086DE                        542 00164$:
                                    543 ;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      0086DE 16 07            [ 2]  544 	ldw	y, (0x07, sp)
      0086E0 17 03            [ 2]  545 	ldw	(0x03, sp), y
      0086E2 93               [ 1]  546 	ldw	x, y
      0086E3 A3 01 00         [ 2]  547 	cpw	x, #0x0100
      0086E6 26 18            [ 1]  548 	jrne	00117$
                                    549 ;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      0086E8 C6 52 34         [ 1]  550 	ld	a, 0x5234
      0086EB 14 02            [ 1]  551 	and	a, (0x02, sp)
      0086ED 97               [ 1]  552 	ld	xl, a
                                    553 ;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      0086EE C6 52 30         [ 1]  554 	ld	a, 0x5230
      0086F1 14 01            [ 1]  555 	and	a, (0x01, sp)
      0086F3 27 08            [ 1]  556 	jreq	00102$
      0086F5 9F               [ 1]  557 	ld	a, xl
      0086F6 4D               [ 1]  558 	tnz	a
      0086F7 27 04            [ 1]  559 	jreq	00102$
                                    560 ;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
      0086F9 A6 01            [ 1]  561 	ld	a, #0x01
      0086FB 20 37            [ 2]  562 	jra	00118$
      0086FD                        563 00102$:
                                    564 ;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
      0086FD 4F               [ 1]  565 	clr	a
      0086FE 20 34            [ 2]  566 	jra	00118$
      008700                        567 00117$:
                                    568 ;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      008700 1E 03            [ 2]  569 	ldw	x, (0x03, sp)
      008702 A3 03 46         [ 2]  570 	cpw	x, #0x0346
      008705 26 18            [ 1]  571 	jrne	00114$
                                    572 ;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      008707 C6 52 37         [ 1]  573 	ld	a, 0x5237
      00870A 14 02            [ 1]  574 	and	a, (0x02, sp)
      00870C 97               [ 1]  575 	ld	xl, a
                                    576 ;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00870D C6 52 37         [ 1]  577 	ld	a, 0x5237
      008710 14 01            [ 1]  578 	and	a, (0x01, sp)
      008712 27 08            [ 1]  579 	jreq	00106$
      008714 9F               [ 1]  580 	ld	a, xl
      008715 4D               [ 1]  581 	tnz	a
      008716 27 04            [ 1]  582 	jreq	00106$
                                    583 ;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
      008718 A6 01            [ 1]  584 	ld	a, #0x01
      00871A 20 18            [ 2]  585 	jra	00118$
      00871C                        586 00106$:
                                    587 ;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
      00871C 4F               [ 1]  588 	clr	a
      00871D 20 15            [ 2]  589 	jra	00118$
      00871F                        590 00114$:
                                    591 ;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      00871F C6 52 35         [ 1]  592 	ld	a, 0x5235
      008722 14 02            [ 1]  593 	and	a, (0x02, sp)
      008724 97               [ 1]  594 	ld	xl, a
                                    595 ;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008725 C6 52 30         [ 1]  596 	ld	a, 0x5230
      008728 14 01            [ 1]  597 	and	a, (0x01, sp)
      00872A 27 07            [ 1]  598 	jreq	00110$
      00872C 9F               [ 1]  599 	ld	a, xl
      00872D 4D               [ 1]  600 	tnz	a
      00872E 27 03            [ 1]  601 	jreq	00110$
                                    602 ;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
      008730 A6 01            [ 1]  603 	ld	a, #0x01
                                    604 ;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
      008732 21                     605 	.byte 0x21
      008733                        606 00110$:
      008733 4F               [ 1]  607 	clr	a
      008734                        608 00118$:
                                    609 ;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
                                    610 ;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
      008734 5B 04            [ 2]  611 	addw	sp, #4
      008736 81               [ 4]  612 	ret
                                    613 ;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                    614 ;	-----------------------------------------
                                    615 ;	 function UART1_ClearITPendingBit
                                    616 ;	-----------------------------------------
      008737                        617 _UART1_ClearITPendingBit:
                                    618 ;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      008737 1E 03            [ 2]  619 	ldw	x, (0x03, sp)
      008739 A3 02 55         [ 2]  620 	cpw	x, #0x0255
      00873C 26 05            [ 1]  621 	jrne	00102$
                                    622 ;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      00873E 35 DF 52 30      [ 1]  623 	mov	0x5230+0, #0xdf
      008742 81               [ 4]  624 	ret
      008743                        625 00102$:
                                    626 ;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      008743 72 19 52 37      [ 1]  627 	bres	21047, #4
                                    628 ;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
      008747 81               [ 4]  629 	ret
                                    630 	.area CODE
                                    631 	.area CONST
                                    632 	.area INITIALIZER
                                    633 	.area CABS (ABS)
