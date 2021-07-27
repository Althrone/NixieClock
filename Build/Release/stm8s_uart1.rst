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
      00844E                         62 _UART1_DeInit:
                                     63 ;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
      00844E C6 52 30         [ 1]   64 	ld	a, 0x5230
                                     65 ;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
      008451 C6 52 31         [ 1]   66 	ld	a, 0x5231
                                     67 ;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
      008454 35 00 52 33      [ 1]   68 	mov	0x5233+0, #0x00
                                     69 ;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
      008458 35 00 52 32      [ 1]   70 	mov	0x5232+0, #0x00
                                     71 ;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
      00845C 35 00 52 34      [ 1]   72 	mov	0x5234+0, #0x00
                                     73 ;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
      008460 35 00 52 35      [ 1]   74 	mov	0x5235+0, #0x00
                                     75 ;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
      008464 35 00 52 36      [ 1]   76 	mov	0x5236+0, #0x00
                                     77 ;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
      008468 35 00 52 37      [ 1]   78 	mov	0x5237+0, #0x00
                                     79 ;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
      00846C 35 00 52 38      [ 1]   80 	mov	0x5238+0, #0x00
                                     81 ;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
      008470 35 00 52 39      [ 1]   82 	mov	0x5239+0, #0x00
                                     83 ;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
      008474 35 00 52 3A      [ 1]   84 	mov	0x523a+0, #0x00
                                     85 ;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
      008478 81               [ 4]   86 	ret
                                     87 ;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
                                     88 ;	-----------------------------------------
                                     89 ;	 function UART1_Init
                                     90 ;	-----------------------------------------
      008479                         91 _UART1_Init:
      008479 52 11            [ 2]   92 	sub	sp, #17
                                     93 ;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
      00847B 72 19 52 34      [ 1]   94 	bres	21044, #4
                                     95 ;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
      00847F C6 52 34         [ 1]   96 	ld	a, 0x5234
      008482 1A 18            [ 1]   97 	or	a, (0x18, sp)
      008484 C7 52 34         [ 1]   98 	ld	0x5234, a
                                     99 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      008487 C6 52 36         [ 1]  100 	ld	a, 0x5236
      00848A A4 CF            [ 1]  101 	and	a, #0xcf
      00848C C7 52 36         [ 1]  102 	ld	0x5236, a
                                    103 ;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
      00848F C6 52 36         [ 1]  104 	ld	a, 0x5236
      008492 1A 19            [ 1]  105 	or	a, (0x19, sp)
      008494 C7 52 36         [ 1]  106 	ld	0x5236, a
                                    107 ;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
      008497 C6 52 34         [ 1]  108 	ld	a, 0x5234
      00849A A4 F9            [ 1]  109 	and	a, #0xf9
      00849C C7 52 34         [ 1]  110 	ld	0x5234, a
                                    111 ;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
      00849F C6 52 34         [ 1]  112 	ld	a, 0x5234
      0084A2 1A 1A            [ 1]  113 	or	a, (0x1a, sp)
      0084A4 C7 52 34         [ 1]  114 	ld	0x5234, a
                                    115 ;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
      0084A7 C6 52 32         [ 1]  116 	ld	a, 0x5232
      0084AA 35 00 52 32      [ 1]  117 	mov	0x5232+0, #0x00
                                    118 ;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
      0084AE C6 52 33         [ 1]  119 	ld	a, 0x5233
      0084B1 A4 0F            [ 1]  120 	and	a, #0x0f
      0084B3 C7 52 33         [ 1]  121 	ld	0x5233, a
                                    122 ;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
      0084B6 C6 52 33         [ 1]  123 	ld	a, 0x5233
      0084B9 A4 F0            [ 1]  124 	and	a, #0xf0
      0084BB C7 52 33         [ 1]  125 	ld	0x5233, a
                                    126 ;	Source/Std_Lib/Src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0084BE CD 83 7E         [ 4]  127 	call	_CLK_GetClockFreq
      0084C1 1F 10            [ 2]  128 	ldw	(0x10, sp), x
      0084C3 1E 14            [ 2]  129 	ldw	x, (0x14, sp)
      0084C5 1F 0A            [ 2]  130 	ldw	(0x0a, sp), x
      0084C7 1E 16            [ 2]  131 	ldw	x, (0x16, sp)
      0084C9 A6 04            [ 1]  132 	ld	a, #0x04
      0084CB                        133 00127$:
      0084CB 58               [ 2]  134 	sllw	x
      0084CC 09 0B            [ 1]  135 	rlc	(0x0b, sp)
      0084CE 09 0A            [ 1]  136 	rlc	(0x0a, sp)
      0084D0 4A               [ 1]  137 	dec	a
      0084D1 26 F8            [ 1]  138 	jrne	00127$
      0084D3 1F 0C            [ 2]  139 	ldw	(0x0c, sp), x
      0084D5 89               [ 2]  140 	pushw	x
      0084D6 1E 0C            [ 2]  141 	ldw	x, (0x0c, sp)
      0084D8 89               [ 2]  142 	pushw	x
      0084D9 1E 14            [ 2]  143 	ldw	x, (0x14, sp)
      0084DB 89               [ 2]  144 	pushw	x
      0084DC 90 89            [ 2]  145 	pushw	y
      0084DE CD 93 78         [ 4]  146 	call	__divulong
      0084E1 5B 08            [ 2]  147 	addw	sp, #8
      0084E3 1F 10            [ 2]  148 	ldw	(0x10, sp), x
      0084E5 17 0E            [ 2]  149 	ldw	(0x0e, sp), y
      0084E7 16 10            [ 2]  150 	ldw	y, (0x10, sp)
      0084E9 17 03            [ 2]  151 	ldw	(0x03, sp), y
      0084EB 16 0E            [ 2]  152 	ldw	y, (0x0e, sp)
      0084ED 17 01            [ 2]  153 	ldw	(0x01, sp), y
                                    154 ;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      0084EF CD 83 7E         [ 4]  155 	call	_CLK_GetClockFreq
      0084F2 1F 10            [ 2]  156 	ldw	(0x10, sp), x
      0084F4 17 0E            [ 2]  157 	ldw	(0x0e, sp), y
      0084F6 1E 10            [ 2]  158 	ldw	x, (0x10, sp)
      0084F8 89               [ 2]  159 	pushw	x
      0084F9 1E 10            [ 2]  160 	ldw	x, (0x10, sp)
      0084FB 89               [ 2]  161 	pushw	x
      0084FC 4B 64            [ 1]  162 	push	#0x64
      0084FE 5F               [ 1]  163 	clrw	x
      0084FF 89               [ 2]  164 	pushw	x
      008500 4B 00            [ 1]  165 	push	#0x00
      008502 CD 94 0E         [ 4]  166 	call	__mullong
      008505 5B 08            [ 2]  167 	addw	sp, #8
      008507 1F 10            [ 2]  168 	ldw	(0x10, sp), x
      008509 1E 0C            [ 2]  169 	ldw	x, (0x0c, sp)
      00850B 89               [ 2]  170 	pushw	x
      00850C 1E 0C            [ 2]  171 	ldw	x, (0x0c, sp)
      00850E 89               [ 2]  172 	pushw	x
      00850F 1E 14            [ 2]  173 	ldw	x, (0x14, sp)
      008511 89               [ 2]  174 	pushw	x
      008512 90 89            [ 2]  175 	pushw	y
      008514 CD 93 78         [ 4]  176 	call	__divulong
      008517 5B 08            [ 2]  177 	addw	sp, #8
      008519 1F 07            [ 2]  178 	ldw	(0x07, sp), x
      00851B 17 05            [ 2]  179 	ldw	(0x05, sp), y
                                    180 ;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
      00851D C6 52 33         [ 1]  181 	ld	a, 0x5233
      008520 6B 09            [ 1]  182 	ld	(0x09, sp), a
      008522 1E 03            [ 2]  183 	ldw	x, (0x03, sp)
      008524 89               [ 2]  184 	pushw	x
      008525 1E 03            [ 2]  185 	ldw	x, (0x03, sp)
      008527 89               [ 2]  186 	pushw	x
      008528 4B 64            [ 1]  187 	push	#0x64
      00852A 5F               [ 1]  188 	clrw	x
      00852B 89               [ 2]  189 	pushw	x
      00852C 4B 00            [ 1]  190 	push	#0x00
      00852E CD 94 0E         [ 4]  191 	call	__mullong
      008531 5B 08            [ 2]  192 	addw	sp, #8
      008533 1F 0C            [ 2]  193 	ldw	(0x0c, sp), x
      008535 17 0A            [ 2]  194 	ldw	(0x0a, sp), y
      008537 1E 07            [ 2]  195 	ldw	x, (0x07, sp)
      008539 72 F0 0C         [ 2]  196 	subw	x, (0x0c, sp)
      00853C 1F 10            [ 2]  197 	ldw	(0x10, sp), x
      00853E 7B 06            [ 1]  198 	ld	a, (0x06, sp)
      008540 12 0B            [ 1]  199 	sbc	a, (0x0b, sp)
      008542 6B 0F            [ 1]  200 	ld	(0x0f, sp), a
      008544 7B 05            [ 1]  201 	ld	a, (0x05, sp)
      008546 12 0A            [ 1]  202 	sbc	a, (0x0a, sp)
      008548 6B 0E            [ 1]  203 	ld	(0x0e, sp), a
      00854A 1E 10            [ 2]  204 	ldw	x, (0x10, sp)
      00854C 16 0E            [ 2]  205 	ldw	y, (0x0e, sp)
      00854E A6 04            [ 1]  206 	ld	a, #0x04
      008550                        207 00129$:
      008550 58               [ 2]  208 	sllw	x
      008551 90 59            [ 2]  209 	rlcw	y
      008553 4A               [ 1]  210 	dec	a
      008554 26 FA            [ 1]  211 	jrne	00129$
      008556 4B 64            [ 1]  212 	push	#0x64
      008558 4B 00            [ 1]  213 	push	#0x00
      00855A 4B 00            [ 1]  214 	push	#0x00
      00855C 4B 00            [ 1]  215 	push	#0x00
      00855E 89               [ 2]  216 	pushw	x
      00855F 90 89            [ 2]  217 	pushw	y
      008561 CD 93 78         [ 4]  218 	call	__divulong
      008564 5B 08            [ 2]  219 	addw	sp, #8
      008566 9F               [ 1]  220 	ld	a, xl
      008567 A4 0F            [ 1]  221 	and	a, #0x0f
      008569 1A 09            [ 1]  222 	or	a, (0x09, sp)
      00856B C7 52 33         [ 1]  223 	ld	0x5233, a
                                    224 ;	Source/Std_Lib/Src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
      00856E C6 52 33         [ 1]  225 	ld	a, 0x5233
      008571 6B 11            [ 1]  226 	ld	(0x11, sp), a
      008573 1E 03            [ 2]  227 	ldw	x, (0x03, sp)
      008575 A6 10            [ 1]  228 	ld	a, #0x10
      008577 62               [ 2]  229 	div	x, a
      008578 9F               [ 1]  230 	ld	a, xl
      008579 A4 F0            [ 1]  231 	and	a, #0xf0
      00857B 1A 11            [ 1]  232 	or	a, (0x11, sp)
      00857D C7 52 33         [ 1]  233 	ld	0x5233, a
                                    234 ;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
      008580 C6 52 32         [ 1]  235 	ld	a, 0x5232
      008583 6B 11            [ 1]  236 	ld	(0x11, sp), a
      008585 7B 04            [ 1]  237 	ld	a, (0x04, sp)
      008587 1A 11            [ 1]  238 	or	a, (0x11, sp)
      008589 C7 52 32         [ 1]  239 	ld	0x5232, a
                                    240 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      00858C C6 52 35         [ 1]  241 	ld	a, 0x5235
      00858F A4 F3            [ 1]  242 	and	a, #0xf3
      008591 C7 52 35         [ 1]  243 	ld	0x5235, a
                                    244 ;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
      008594 C6 52 36         [ 1]  245 	ld	a, 0x5236
      008597 A4 F8            [ 1]  246 	and	a, #0xf8
      008599 C7 52 36         [ 1]  247 	ld	0x5236, a
                                    248 ;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
      00859C C6 52 36         [ 1]  249 	ld	a, 0x5236
      00859F 6B 11            [ 1]  250 	ld	(0x11, sp), a
      0085A1 7B 1B            [ 1]  251 	ld	a, (0x1b, sp)
      0085A3 A4 07            [ 1]  252 	and	a, #0x07
      0085A5 1A 11            [ 1]  253 	or	a, (0x11, sp)
      0085A7 C7 52 36         [ 1]  254 	ld	0x5236, a
                                    255 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0085AA C6 52 35         [ 1]  256 	ld	a, 0x5235
                                    257 ;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
      0085AD 88               [ 1]  258 	push	a
      0085AE 7B 1D            [ 1]  259 	ld	a, (0x1d, sp)
      0085B0 A5 04            [ 1]  260 	bcp	a, #0x04
      0085B2 84               [ 1]  261 	pop	a
      0085B3 27 07            [ 1]  262 	jreq	00102$
                                    263 ;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
      0085B5 AA 08            [ 1]  264 	or	a, #0x08
      0085B7 C7 52 35         [ 1]  265 	ld	0x5235, a
      0085BA 20 05            [ 2]  266 	jra	00103$
      0085BC                        267 00102$:
                                    268 ;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
      0085BC A4 F7            [ 1]  269 	and	a, #0xf7
      0085BE C7 52 35         [ 1]  270 	ld	0x5235, a
      0085C1                        271 00103$:
                                    272 ;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
      0085C1 C6 52 35         [ 1]  273 	ld	a, 0x5235
                                    274 ;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
      0085C4 88               [ 1]  275 	push	a
      0085C5 7B 1D            [ 1]  276 	ld	a, (0x1d, sp)
      0085C7 A5 08            [ 1]  277 	bcp	a, #0x08
      0085C9 84               [ 1]  278 	pop	a
      0085CA 27 07            [ 1]  279 	jreq	00105$
                                    280 ;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
      0085CC AA 04            [ 1]  281 	or	a, #0x04
      0085CE C7 52 35         [ 1]  282 	ld	0x5235, a
      0085D1 20 05            [ 2]  283 	jra	00106$
      0085D3                        284 00105$:
                                    285 ;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
      0085D3 A4 FB            [ 1]  286 	and	a, #0xfb
      0085D5 C7 52 35         [ 1]  287 	ld	0x5235, a
      0085D8                        288 00106$:
                                    289 ;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
      0085D8 C6 52 36         [ 1]  290 	ld	a, 0x5236
                                    291 ;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
      0085DB 0D 1B            [ 1]  292 	tnz	(0x1b, sp)
      0085DD 2A 07            [ 1]  293 	jrpl	00108$
                                    294 ;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
      0085DF A4 F7            [ 1]  295 	and	a, #0xf7
      0085E1 C7 52 36         [ 1]  296 	ld	0x5236, a
      0085E4 20 0D            [ 2]  297 	jra	00110$
      0085E6                        298 00108$:
                                    299 ;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
      0085E6 88               [ 1]  300 	push	a
      0085E7 7B 1C            [ 1]  301 	ld	a, (0x1c, sp)
      0085E9 A4 08            [ 1]  302 	and	a, #0x08
      0085EB 6B 12            [ 1]  303 	ld	(0x12, sp), a
      0085ED 84               [ 1]  304 	pop	a
      0085EE 1A 11            [ 1]  305 	or	a, (0x11, sp)
      0085F0 C7 52 36         [ 1]  306 	ld	0x5236, a
      0085F3                        307 00110$:
                                    308 ;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
      0085F3 5B 11            [ 2]  309 	addw	sp, #17
      0085F5 81               [ 4]  310 	ret
                                    311 ;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
                                    312 ;	-----------------------------------------
                                    313 ;	 function UART1_Cmd
                                    314 ;	-----------------------------------------
      0085F6                        315 _UART1_Cmd:
                                    316 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085F6 C6 52 34         [ 1]  317 	ld	a, 0x5234
                                    318 ;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
      0085F9 0D 03            [ 1]  319 	tnz	(0x03, sp)
      0085FB 27 06            [ 1]  320 	jreq	00102$
                                    321 ;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
      0085FD A4 DF            [ 1]  322 	and	a, #0xdf
      0085FF C7 52 34         [ 1]  323 	ld	0x5234, a
      008602 81               [ 4]  324 	ret
      008603                        325 00102$:
                                    326 ;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
      008603 AA 20            [ 1]  327 	or	a, #0x20
      008605 C7 52 34         [ 1]  328 	ld	0x5234, a
                                    329 ;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
      008608 81               [ 4]  330 	ret
                                    331 ;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
                                    332 ;	-----------------------------------------
                                    333 ;	 function UART1_ITConfig
                                    334 ;	-----------------------------------------
      008609                        335 _UART1_ITConfig:
      008609 89               [ 2]  336 	pushw	x
                                    337 ;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
      00860A 1E 05            [ 2]  338 	ldw	x, (0x05, sp)
                                    339 ;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      00860C 7B 06            [ 1]  340 	ld	a, (0x06, sp)
      00860E A4 0F            [ 1]  341 	and	a, #0x0f
      008610 88               [ 1]  342 	push	a
      008611 A6 01            [ 1]  343 	ld	a, #0x01
      008613 6B 03            [ 1]  344 	ld	(0x03, sp), a
      008615 84               [ 1]  345 	pop	a
      008616 4D               [ 1]  346 	tnz	a
      008617 27 05            [ 1]  347 	jreq	00144$
      008619                        348 00143$:
      008619 08 02            [ 1]  349 	sll	(0x02, sp)
      00861B 4A               [ 1]  350 	dec	a
      00861C 26 FB            [ 1]  351 	jrne	00143$
      00861E                        352 00144$:
                                    353 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      00861E 9E               [ 1]  354 	ld	a, xh
      00861F 4A               [ 1]  355 	dec	a
      008620 26 05            [ 1]  356 	jrne	00146$
      008622 A6 01            [ 1]  357 	ld	a, #0x01
      008624 6B 01            [ 1]  358 	ld	(0x01, sp), a
      008626 C5                     359 	.byte 0xc5
      008627                        360 00146$:
      008627 0F 01            [ 1]  361 	clr	(0x01, sp)
      008629                        362 00147$:
                                    363 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008629 9E               [ 1]  364 	ld	a, xh
      00862A A0 02            [ 1]  365 	sub	a, #0x02
      00862C 26 02            [ 1]  366 	jrne	00149$
      00862E 4C               [ 1]  367 	inc	a
      00862F 21                     368 	.byte 0x21
      008630                        369 00149$:
      008630 4F               [ 1]  370 	clr	a
      008631                        371 00150$:
                                    372 ;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
      008631 0D 07            [ 1]  373 	tnz	(0x07, sp)
      008633 27 25            [ 1]  374 	jreq	00114$
                                    375 ;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
      008635 0D 01            [ 1]  376 	tnz	(0x01, sp)
      008637 27 0A            [ 1]  377 	jreq	00105$
                                    378 ;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
      008639 C6 52 34         [ 1]  379 	ld	a, 0x5234
      00863C 1A 02            [ 1]  380 	or	a, (0x02, sp)
      00863E C7 52 34         [ 1]  381 	ld	0x5234, a
      008641 20 3C            [ 2]  382 	jra	00116$
      008643                        383 00105$:
                                    384 ;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
      008643 4D               [ 1]  385 	tnz	a
      008644 27 0A            [ 1]  386 	jreq	00102$
                                    387 ;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
      008646 C6 52 35         [ 1]  388 	ld	a, 0x5235
      008649 1A 02            [ 1]  389 	or	a, (0x02, sp)
      00864B C7 52 35         [ 1]  390 	ld	0x5235, a
      00864E 20 2F            [ 2]  391 	jra	00116$
      008650                        392 00102$:
                                    393 ;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
      008650 C6 52 37         [ 1]  394 	ld	a, 0x5237
      008653 1A 02            [ 1]  395 	or	a, (0x02, sp)
      008655 C7 52 37         [ 1]  396 	ld	0x5237, a
      008658 20 25            [ 2]  397 	jra	00116$
      00865A                        398 00114$:
                                    399 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      00865A 03 02            [ 1]  400 	cpl	(0x02, sp)
                                    401 ;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
      00865C 0D 01            [ 1]  402 	tnz	(0x01, sp)
      00865E 27 0A            [ 1]  403 	jreq	00111$
                                    404 ;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
      008660 C6 52 34         [ 1]  405 	ld	a, 0x5234
      008663 14 02            [ 1]  406 	and	a, (0x02, sp)
      008665 C7 52 34         [ 1]  407 	ld	0x5234, a
      008668 20 15            [ 2]  408 	jra	00116$
      00866A                        409 00111$:
                                    410 ;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
      00866A 4D               [ 1]  411 	tnz	a
      00866B 27 0A            [ 1]  412 	jreq	00108$
                                    413 ;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
      00866D C6 52 35         [ 1]  414 	ld	a, 0x5235
      008670 14 02            [ 1]  415 	and	a, (0x02, sp)
      008672 C7 52 35         [ 1]  416 	ld	0x5235, a
      008675 20 08            [ 2]  417 	jra	00116$
      008677                        418 00108$:
                                    419 ;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
      008677 C6 52 37         [ 1]  420 	ld	a, 0x5237
      00867A 14 02            [ 1]  421 	and	a, (0x02, sp)
      00867C C7 52 37         [ 1]  422 	ld	0x5237, a
      00867F                        423 00116$:
                                    424 ;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
      00867F 85               [ 2]  425 	popw	x
      008680 81               [ 4]  426 	ret
                                    427 ;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
                                    428 ;	-----------------------------------------
                                    429 ;	 function UART1_ReceiveData8
                                    430 ;	-----------------------------------------
      008681                        431 _UART1_ReceiveData8:
                                    432 ;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
      008681 C6 52 31         [ 1]  433 	ld	a, 0x5231
                                    434 ;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
      008684 81               [ 4]  435 	ret
                                    436 ;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
                                    437 ;	-----------------------------------------
                                    438 ;	 function UART1_SendData8
                                    439 ;	-----------------------------------------
      008685                        440 _UART1_SendData8:
                                    441 ;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
      008685 AE 52 31         [ 2]  442 	ldw	x, #0x5231
      008688 7B 03            [ 1]  443 	ld	a, (0x03, sp)
      00868A F7               [ 1]  444 	ld	(x), a
                                    445 ;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
      00868B 81               [ 4]  446 	ret
                                    447 ;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
                                    448 ;	-----------------------------------------
                                    449 ;	 function UART1_GetFlagStatus
                                    450 ;	-----------------------------------------
      00868C                        451 _UART1_GetFlagStatus:
      00868C 52 03            [ 2]  452 	sub	sp, #3
                                    453 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      00868E 16 06            [ 2]  454 	ldw	y, (0x06, sp)
      008690 17 01            [ 2]  455 	ldw	(0x01, sp), y
                                    456 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      008692 7B 07            [ 1]  457 	ld	a, (0x07, sp)
      008694 6B 03            [ 1]  458 	ld	(0x03, sp), a
                                    459 ;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
      008696 1E 01            [ 2]  460 	ldw	x, (0x01, sp)
      008698 A3 02 10         [ 2]  461 	cpw	x, #0x0210
      00869B 26 0E            [ 1]  462 	jrne	00114$
                                    463 ;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      00869D C6 52 37         [ 1]  464 	ld	a, 0x5237
      0086A0 14 03            [ 1]  465 	and	a, (0x03, sp)
      0086A2 27 04            [ 1]  466 	jreq	00102$
                                    467 ;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
      0086A4 A6 01            [ 1]  468 	ld	a, #0x01
      0086A6 20 23            [ 2]  469 	jra	00115$
      0086A8                        470 00102$:
                                    471 ;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
      0086A8 4F               [ 1]  472 	clr	a
      0086A9 20 20            [ 2]  473 	jra	00115$
      0086AB                        474 00114$:
                                    475 ;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
      0086AB 1E 01            [ 2]  476 	ldw	x, (0x01, sp)
      0086AD A3 01 01         [ 2]  477 	cpw	x, #0x0101
      0086B0 26 0E            [ 1]  478 	jrne	00111$
                                    479 ;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0086B2 C6 52 35         [ 1]  480 	ld	a, 0x5235
      0086B5 14 03            [ 1]  481 	and	a, (0x03, sp)
      0086B7 27 04            [ 1]  482 	jreq	00105$
                                    483 ;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
      0086B9 A6 01            [ 1]  484 	ld	a, #0x01
      0086BB 20 0E            [ 2]  485 	jra	00115$
      0086BD                        486 00105$:
                                    487 ;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
      0086BD 4F               [ 1]  488 	clr	a
      0086BE 20 0B            [ 2]  489 	jra	00115$
      0086C0                        490 00111$:
                                    491 ;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
      0086C0 C6 52 30         [ 1]  492 	ld	a, 0x5230
      0086C3 14 03            [ 1]  493 	and	a, (0x03, sp)
      0086C5 27 03            [ 1]  494 	jreq	00108$
                                    495 ;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
      0086C7 A6 01            [ 1]  496 	ld	a, #0x01
                                    497 ;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
      0086C9 21                     498 	.byte 0x21
      0086CA                        499 00108$:
      0086CA 4F               [ 1]  500 	clr	a
      0086CB                        501 00115$:
                                    502 ;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
                                    503 ;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
      0086CB 5B 03            [ 2]  504 	addw	sp, #3
      0086CD 81               [ 4]  505 	ret
                                    506 ;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
                                    507 ;	-----------------------------------------
                                    508 ;	 function UART1_GetITStatus
                                    509 ;	-----------------------------------------
      0086CE                        510 _UART1_GetITStatus:
      0086CE 52 04            [ 2]  511 	sub	sp, #4
                                    512 ;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
      0086D0 7B 08            [ 1]  513 	ld	a, (0x08, sp)
      0086D2 97               [ 1]  514 	ld	xl, a
      0086D3 A4 0F            [ 1]  515 	and	a, #0x0f
      0086D5 88               [ 1]  516 	push	a
      0086D6 A6 01            [ 1]  517 	ld	a, #0x01
      0086D8 6B 02            [ 1]  518 	ld	(0x02, sp), a
      0086DA 84               [ 1]  519 	pop	a
      0086DB 4D               [ 1]  520 	tnz	a
      0086DC 27 05            [ 1]  521 	jreq	00162$
      0086DE                        522 00161$:
      0086DE 08 01            [ 1]  523 	sll	(0x01, sp)
      0086E0 4A               [ 1]  524 	dec	a
      0086E1 26 FB            [ 1]  525 	jrne	00161$
      0086E3                        526 00162$:
                                    527 ;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
      0086E3 9F               [ 1]  528 	ld	a, xl
      0086E4 4E               [ 1]  529 	swap	a
      0086E5 A4 0F            [ 1]  530 	and	a, #0x0f
                                    531 ;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      0086E7 88               [ 1]  532 	push	a
      0086E8 A6 01            [ 1]  533 	ld	a, #0x01
      0086EA 6B 03            [ 1]  534 	ld	(0x03, sp), a
      0086EC 84               [ 1]  535 	pop	a
      0086ED 4D               [ 1]  536 	tnz	a
      0086EE 27 05            [ 1]  537 	jreq	00164$
      0086F0                        538 00163$:
      0086F0 08 02            [ 1]  539 	sll	(0x02, sp)
      0086F2 4A               [ 1]  540 	dec	a
      0086F3 26 FB            [ 1]  541 	jrne	00163$
      0086F5                        542 00164$:
                                    543 ;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
      0086F5 16 07            [ 2]  544 	ldw	y, (0x07, sp)
      0086F7 17 03            [ 2]  545 	ldw	(0x03, sp), y
      0086F9 93               [ 1]  546 	ldw	x, y
      0086FA A3 01 00         [ 2]  547 	cpw	x, #0x0100
      0086FD 26 18            [ 1]  548 	jrne	00117$
                                    549 ;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
      0086FF C6 52 34         [ 1]  550 	ld	a, 0x5234
      008702 14 02            [ 1]  551 	and	a, (0x02, sp)
      008704 97               [ 1]  552 	ld	xl, a
                                    553 ;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008705 C6 52 30         [ 1]  554 	ld	a, 0x5230
      008708 14 01            [ 1]  555 	and	a, (0x01, sp)
      00870A 27 08            [ 1]  556 	jreq	00102$
      00870C 9F               [ 1]  557 	ld	a, xl
      00870D 4D               [ 1]  558 	tnz	a
      00870E 27 04            [ 1]  559 	jreq	00102$
                                    560 ;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
      008710 A6 01            [ 1]  561 	ld	a, #0x01
      008712 20 37            [ 2]  562 	jra	00118$
      008714                        563 00102$:
                                    564 ;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
      008714 4F               [ 1]  565 	clr	a
      008715 20 34            [ 2]  566 	jra	00118$
      008717                        567 00117$:
                                    568 ;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
      008717 1E 03            [ 2]  569 	ldw	x, (0x03, sp)
      008719 A3 03 46         [ 2]  570 	cpw	x, #0x0346
      00871C 26 18            [ 1]  571 	jrne	00114$
                                    572 ;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
      00871E C6 52 37         [ 1]  573 	ld	a, 0x5237
      008721 14 02            [ 1]  574 	and	a, (0x02, sp)
      008723 97               [ 1]  575 	ld	xl, a
                                    576 ;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      008724 C6 52 37         [ 1]  577 	ld	a, 0x5237
      008727 14 01            [ 1]  578 	and	a, (0x01, sp)
      008729 27 08            [ 1]  579 	jreq	00106$
      00872B 9F               [ 1]  580 	ld	a, xl
      00872C 4D               [ 1]  581 	tnz	a
      00872D 27 04            [ 1]  582 	jreq	00106$
                                    583 ;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
      00872F A6 01            [ 1]  584 	ld	a, #0x01
      008731 20 18            [ 2]  585 	jra	00118$
      008733                        586 00106$:
                                    587 ;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
      008733 4F               [ 1]  588 	clr	a
      008734 20 15            [ 2]  589 	jra	00118$
      008736                        590 00114$:
                                    591 ;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
      008736 C6 52 35         [ 1]  592 	ld	a, 0x5235
      008739 14 02            [ 1]  593 	and	a, (0x02, sp)
      00873B 97               [ 1]  594 	ld	xl, a
                                    595 ;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00873C C6 52 30         [ 1]  596 	ld	a, 0x5230
      00873F 14 01            [ 1]  597 	and	a, (0x01, sp)
      008741 27 07            [ 1]  598 	jreq	00110$
      008743 9F               [ 1]  599 	ld	a, xl
      008744 4D               [ 1]  600 	tnz	a
      008745 27 03            [ 1]  601 	jreq	00110$
                                    602 ;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
      008747 A6 01            [ 1]  603 	ld	a, #0x01
                                    604 ;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
      008749 21                     605 	.byte 0x21
      00874A                        606 00110$:
      00874A 4F               [ 1]  607 	clr	a
      00874B                        608 00118$:
                                    609 ;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
                                    610 ;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
      00874B 5B 04            [ 2]  611 	addw	sp, #4
      00874D 81               [ 4]  612 	ret
                                    613 ;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
                                    614 ;	-----------------------------------------
                                    615 ;	 function UART1_ClearITPendingBit
                                    616 ;	-----------------------------------------
      00874E                        617 _UART1_ClearITPendingBit:
                                    618 ;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
      00874E 1E 03            [ 2]  619 	ldw	x, (0x03, sp)
      008750 A3 02 55         [ 2]  620 	cpw	x, #0x0255
      008753 26 05            [ 1]  621 	jrne	00102$
                                    622 ;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
      008755 35 DF 52 30      [ 1]  623 	mov	0x5230+0, #0xdf
      008759 81               [ 4]  624 	ret
      00875A                        625 00102$:
                                    626 ;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
      00875A 72 19 52 37      [ 1]  627 	bres	21047, #4
                                    628 ;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
      00875E 81               [ 4]  629 	ret
                                    630 	.area CODE
                                    631 	.area CONST
                                    632 	.area INITIALIZER
                                    633 	.area CABS (ABS)
