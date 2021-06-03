;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module stm8s_uart1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART1_DeInit
	.globl _UART1_Init
	.globl _UART1_Cmd
	.globl _UART1_ITConfig
	.globl _UART1_ReceiveData8
	.globl _UART1_SendData8
	.globl _UART1_GetFlagStatus
	.globl _UART1_GetITStatus
	.globl _UART1_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_uart1$UART1_DeInit$0 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 53: void UART1_DeInit(void)
;	-----------------------------------------
;	 function UART1_DeInit
;	-----------------------------------------
_UART1_DeInit:
	Sstm8s_uart1$UART1_DeInit$1 ==.
	Sstm8s_uart1$UART1_DeInit$2 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
	ld	a, 0x5230
	Sstm8s_uart1$UART1_DeInit$3 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
	ld	a, 0x5231
	Sstm8s_uart1$UART1_DeInit$4 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
	mov	0x5233+0, #0x00
	Sstm8s_uart1$UART1_DeInit$5 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
	mov	0x5232+0, #0x00
	Sstm8s_uart1$UART1_DeInit$6 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
	mov	0x5234+0, #0x00
	Sstm8s_uart1$UART1_DeInit$7 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
	mov	0x5235+0, #0x00
	Sstm8s_uart1$UART1_DeInit$8 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
	mov	0x5236+0, #0x00
	Sstm8s_uart1$UART1_DeInit$9 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
	mov	0x5237+0, #0x00
	Sstm8s_uart1$UART1_DeInit$10 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
	mov	0x5238+0, #0x00
	Sstm8s_uart1$UART1_DeInit$11 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
	mov	0x5239+0, #0x00
	Sstm8s_uart1$UART1_DeInit$12 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
	mov	0x523a+0, #0x00
	Sstm8s_uart1$UART1_DeInit$13 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
	Sstm8s_uart1$UART1_DeInit$14 ==.
	XG$UART1_DeInit$0$0 ==.
	ret
	Sstm8s_uart1$UART1_DeInit$15 ==.
	Sstm8s_uart1$UART1_Init$16 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	Sstm8s_uart1$UART1_Init$17 ==.
	sub	sp, #17
	Sstm8s_uart1$UART1_Init$18 ==.
	Sstm8s_uart1$UART1_Init$19 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
	bres	21044, #4
	Sstm8s_uart1$UART1_Init$20 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
	ld	a, 0x5234
	or	a, (0x18, sp)
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$21 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
	ld	a, 0x5236
	and	a, #0xcf
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$22 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
	ld	a, 0x5236
	or	a, (0x19, sp)
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$23 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
	ld	a, 0x5234
	and	a, #0xf9
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$24 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
	ld	a, 0x5234
	or	a, (0x1a, sp)
	ld	0x5234, a
	Sstm8s_uart1$UART1_Init$25 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
	ld	a, 0x5232
	mov	0x5232+0, #0x00
	Sstm8s_uart1$UART1_Init$26 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
	ld	a, 0x5233
	and	a, #0x0f
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$27 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
	ld	a, 0x5233
	and	a, #0xf0
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$28 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 128: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
	ldw	x, (0x14, sp)
	ldw	(0x0a, sp), x
	ldw	x, (0x16, sp)
	ld	a, #0x04
00127$:
	sllw	x
	rlc	(0x0b, sp)
	rlc	(0x0a, sp)
	dec	a
	jrne	00127$
	ldw	(0x0c, sp), x
	pushw	x
	Sstm8s_uart1$UART1_Init$29 ==.
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$30 ==.
	ldw	x, (0x14, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$31 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$32 ==.
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$33 ==.
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
	ldw	y, (0x10, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x01, sp), y
	Sstm8s_uart1$UART1_Init$34 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
	ldw	x, (0x10, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$35 ==.
	ldw	x, (0x10, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$36 ==.
	push	#0x64
	Sstm8s_uart1$UART1_Init$37 ==.
	clrw	x
	pushw	x
	Sstm8s_uart1$UART1_Init$38 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$39 ==.
	call	__mullong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$40 ==.
	ldw	(0x10, sp), x
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$41 ==.
	ldw	x, (0x0c, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$42 ==.
	ldw	x, (0x14, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$43 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$44 ==.
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$45 ==.
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
	Sstm8s_uart1$UART1_Init$46 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
	ld	a, 0x5233
	ld	(0x09, sp), a
	ldw	x, (0x03, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$47 ==.
	ldw	x, (0x03, sp)
	pushw	x
	Sstm8s_uart1$UART1_Init$48 ==.
	push	#0x64
	Sstm8s_uart1$UART1_Init$49 ==.
	clrw	x
	pushw	x
	Sstm8s_uart1$UART1_Init$50 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$51 ==.
	call	__mullong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$52 ==.
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
	ldw	x, (0x07, sp)
	subw	x, (0x0c, sp)
	ldw	(0x10, sp), x
	ld	a, (0x06, sp)
	sbc	a, (0x0b, sp)
	ld	(0x0f, sp), a
	ld	a, (0x05, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
	ldw	x, (0x10, sp)
	ldw	y, (0x0e, sp)
	ld	a, #0x04
00129$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00129$
	push	#0x64
	Sstm8s_uart1$UART1_Init$53 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$54 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$55 ==.
	push	#0x00
	Sstm8s_uart1$UART1_Init$56 ==.
	pushw	x
	Sstm8s_uart1$UART1_Init$57 ==.
	pushw	y
	Sstm8s_uart1$UART1_Init$58 ==.
	call	__divulong
	addw	sp, #8
	Sstm8s_uart1$UART1_Init$59 ==.
	ld	a, xl
	and	a, #0x0f
	or	a, (0x09, sp)
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$60 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 133: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
	ld	a, 0x5233
	ld	(0x11, sp), a
	ldw	x, (0x03, sp)
	ld	a, #0x10
	div	x, a
	ld	a, xl
	and	a, #0xf0
	or	a, (0x11, sp)
	ld	0x5233, a
	Sstm8s_uart1$UART1_Init$61 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
	ld	a, 0x5232
	ld	(0x11, sp), a
	ld	a, (0x04, sp)
	or	a, (0x11, sp)
	ld	0x5232, a
	Sstm8s_uart1$UART1_Init$62 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
	and	a, #0xf3
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$63 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
	ld	a, 0x5236
	and	a, #0xf8
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$64 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
	ld	a, 0x5236
	ld	(0x11, sp), a
	ld	a, (0x1b, sp)
	and	a, #0x07
	or	a, (0x11, sp)
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$65 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
	Sstm8s_uart1$UART1_Init$66 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
	push	a
	Sstm8s_uart1$UART1_Init$67 ==.
	ld	a, (0x1d, sp)
	bcp	a, #0x04
	pop	a
	Sstm8s_uart1$UART1_Init$68 ==.
	jreq	00102$
	Sstm8s_uart1$UART1_Init$69 ==.
	Sstm8s_uart1$UART1_Init$70 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
	or	a, #0x08
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$71 ==.
	jra	00103$
00102$:
	Sstm8s_uart1$UART1_Init$72 ==.
	Sstm8s_uart1$UART1_Init$73 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
	and	a, #0xf7
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$74 ==.
00103$:
	Sstm8s_uart1$UART1_Init$75 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
	Sstm8s_uart1$UART1_Init$76 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
	push	a
	Sstm8s_uart1$UART1_Init$77 ==.
	ld	a, (0x1d, sp)
	bcp	a, #0x08
	pop	a
	Sstm8s_uart1$UART1_Init$78 ==.
	jreq	00105$
	Sstm8s_uart1$UART1_Init$79 ==.
	Sstm8s_uart1$UART1_Init$80 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
	or	a, #0x04
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$81 ==.
	jra	00106$
00105$:
	Sstm8s_uart1$UART1_Init$82 ==.
	Sstm8s_uart1$UART1_Init$83 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
	and	a, #0xfb
	ld	0x5235, a
	Sstm8s_uart1$UART1_Init$84 ==.
00106$:
	Sstm8s_uart1$UART1_Init$85 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
	ld	a, 0x5236
	Sstm8s_uart1$UART1_Init$86 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x1b, sp)
	jrpl	00108$
	Sstm8s_uart1$UART1_Init$87 ==.
	Sstm8s_uart1$UART1_Init$88 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
	and	a, #0xf7
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$89 ==.
	jra	00110$
00108$:
	Sstm8s_uart1$UART1_Init$90 ==.
	Sstm8s_uart1$UART1_Init$91 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
	push	a
	Sstm8s_uart1$UART1_Init$92 ==.
	ld	a, (0x1c, sp)
	and	a, #0x08
	ld	(0x12, sp), a
	pop	a
	Sstm8s_uart1$UART1_Init$93 ==.
	or	a, (0x11, sp)
	ld	0x5236, a
	Sstm8s_uart1$UART1_Init$94 ==.
00110$:
	Sstm8s_uart1$UART1_Init$95 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
	addw	sp, #17
	Sstm8s_uart1$UART1_Init$96 ==.
	Sstm8s_uart1$UART1_Init$97 ==.
	XG$UART1_Init$0$0 ==.
	ret
	Sstm8s_uart1$UART1_Init$98 ==.
	Sstm8s_uart1$UART1_Cmd$99 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART1_Cmd
;	-----------------------------------------
_UART1_Cmd:
	Sstm8s_uart1$UART1_Cmd$100 ==.
	Sstm8s_uart1$UART1_Cmd$101 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
	ld	a, 0x5234
	Sstm8s_uart1$UART1_Cmd$102 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	Sstm8s_uart1$UART1_Cmd$103 ==.
	Sstm8s_uart1$UART1_Cmd$104 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
	and	a, #0xdf
	ld	0x5234, a
	Sstm8s_uart1$UART1_Cmd$105 ==.
	jra	00104$
00102$:
	Sstm8s_uart1$UART1_Cmd$106 ==.
	Sstm8s_uart1$UART1_Cmd$107 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
	or	a, #0x20
	ld	0x5234, a
	Sstm8s_uart1$UART1_Cmd$108 ==.
00104$:
	Sstm8s_uart1$UART1_Cmd$109 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
	Sstm8s_uart1$UART1_Cmd$110 ==.
	XG$UART1_Cmd$0$0 ==.
	ret
	Sstm8s_uart1$UART1_Cmd$111 ==.
	Sstm8s_uart1$UART1_ITConfig$112 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART1_ITConfig
;	-----------------------------------------
_UART1_ITConfig:
	Sstm8s_uart1$UART1_ITConfig$113 ==.
	pushw	x
	Sstm8s_uart1$UART1_ITConfig$114 ==.
	Sstm8s_uart1$UART1_ITConfig$115 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
	ldw	x, (0x05, sp)
	Sstm8s_uart1$UART1_ITConfig$116 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	and	a, #0x0f
	push	a
	Sstm8s_uart1$UART1_ITConfig$117 ==.
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	Sstm8s_uart1$UART1_ITConfig$118 ==.
	tnz	a
	jreq	00144$
00143$:
	sll	(0x02, sp)
	dec	a
	jrne	00143$
00144$:
	Sstm8s_uart1$UART1_ITConfig$119 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
	ld	a, xh
	dec	a
	jrne	00146$
	ld	a, #0x01
	ld	(0x01, sp), a
	.byte 0xc5
00146$:
	clr	(0x01, sp)
00147$:
	Sstm8s_uart1$UART1_ITConfig$120 ==.
	Sstm8s_uart1$UART1_ITConfig$121 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
	ld	a, xh
	sub	a, #0x02
	jrne	00149$
	inc	a
	.byte 0x21
00149$:
	clr	a
00150$:
	Sstm8s_uart1$UART1_ITConfig$122 ==.
	Sstm8s_uart1$UART1_ITConfig$123 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
	tnz	(0x07, sp)
	jreq	00114$
	Sstm8s_uart1$UART1_ITConfig$124 ==.
	Sstm8s_uart1$UART1_ITConfig$125 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00105$
	Sstm8s_uart1$UART1_ITConfig$126 ==.
	Sstm8s_uart1$UART1_ITConfig$127 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
	ld	a, 0x5234
	or	a, (0x02, sp)
	ld	0x5234, a
	Sstm8s_uart1$UART1_ITConfig$128 ==.
	jp	00116$
00105$:
	Sstm8s_uart1$UART1_ITConfig$129 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
	tnz	a
	jreq	00102$
	Sstm8s_uart1$UART1_ITConfig$130 ==.
	Sstm8s_uart1$UART1_ITConfig$131 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
	ld	a, 0x5235
	or	a, (0x02, sp)
	ld	0x5235, a
	Sstm8s_uart1$UART1_ITConfig$132 ==.
	jp	00116$
00102$:
	Sstm8s_uart1$UART1_ITConfig$133 ==.
	Sstm8s_uart1$UART1_ITConfig$134 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
	ld	a, 0x5237
	or	a, (0x02, sp)
	ld	0x5237, a
	Sstm8s_uart1$UART1_ITConfig$135 ==.
	jra	00116$
00114$:
	Sstm8s_uart1$UART1_ITConfig$136 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
	cpl	(0x02, sp)
	Sstm8s_uart1$UART1_ITConfig$137 ==.
	Sstm8s_uart1$UART1_ITConfig$138 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00111$
	Sstm8s_uart1$UART1_ITConfig$139 ==.
	Sstm8s_uart1$UART1_ITConfig$140 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
	ld	a, 0x5234
	and	a, (0x02, sp)
	ld	0x5234, a
	Sstm8s_uart1$UART1_ITConfig$141 ==.
	jra	00116$
00111$:
	Sstm8s_uart1$UART1_ITConfig$142 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
	tnz	a
	jreq	00108$
	Sstm8s_uart1$UART1_ITConfig$143 ==.
	Sstm8s_uart1$UART1_ITConfig$144 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
	ld	a, 0x5235
	and	a, (0x02, sp)
	ld	0x5235, a
	Sstm8s_uart1$UART1_ITConfig$145 ==.
	jra	00116$
00108$:
	Sstm8s_uart1$UART1_ITConfig$146 ==.
	Sstm8s_uart1$UART1_ITConfig$147 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
	ld	a, 0x5237
	and	a, (0x02, sp)
	ld	0x5237, a
	Sstm8s_uart1$UART1_ITConfig$148 ==.
00116$:
	Sstm8s_uart1$UART1_ITConfig$149 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
	popw	x
	Sstm8s_uart1$UART1_ITConfig$150 ==.
	Sstm8s_uart1$UART1_ITConfig$151 ==.
	XG$UART1_ITConfig$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ITConfig$152 ==.
	Sstm8s_uart1$UART1_ReceiveData8$153 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
;	-----------------------------------------
;	 function UART1_ReceiveData8
;	-----------------------------------------
_UART1_ReceiveData8:
	Sstm8s_uart1$UART1_ReceiveData8$154 ==.
	Sstm8s_uart1$UART1_ReceiveData8$155 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
	ld	a, 0x5231
	Sstm8s_uart1$UART1_ReceiveData8$156 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
	Sstm8s_uart1$UART1_ReceiveData8$157 ==.
	XG$UART1_ReceiveData8$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ReceiveData8$158 ==.
	Sstm8s_uart1$UART1_SendData8$159 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART1_SendData8
;	-----------------------------------------
_UART1_SendData8:
	Sstm8s_uart1$UART1_SendData8$160 ==.
	Sstm8s_uart1$UART1_SendData8$161 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
	ldw	x, #0x5231
	ld	a, (0x03, sp)
	ld	(x), a
	Sstm8s_uart1$UART1_SendData8$162 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
	Sstm8s_uart1$UART1_SendData8$163 ==.
	XG$UART1_SendData8$0$0 ==.
	ret
	Sstm8s_uart1$UART1_SendData8$164 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$165 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
;	-----------------------------------------
;	 function UART1_GetFlagStatus
;	-----------------------------------------
_UART1_GetFlagStatus:
	Sstm8s_uart1$UART1_GetFlagStatus$166 ==.
	sub	sp, #3
	Sstm8s_uart1$UART1_GetFlagStatus$167 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$168 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
	ldw	y, (0x06, sp)
	ldw	(0x01, sp), y
	Sstm8s_uart1$UART1_GetFlagStatus$169 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, (0x07, sp)
	ld	(0x03, sp), a
	Sstm8s_uart1$UART1_GetFlagStatus$170 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
	ldw	x, (0x01, sp)
	cpw	x, #0x0210
	jrne	00114$
	Sstm8s_uart1$UART1_GetFlagStatus$171 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$172 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$173 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5237
	and	a, (0x03, sp)
	jreq	00102$
	Sstm8s_uart1$UART1_GetFlagStatus$174 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$175 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$176 ==.
	jp	00115$
00102$:
	Sstm8s_uart1$UART1_GetFlagStatus$177 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$178 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$179 ==.
	jra	00115$
00114$:
	Sstm8s_uart1$UART1_GetFlagStatus$180 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
	ldw	x, (0x01, sp)
	cpw	x, #0x0101
	jrne	00111$
	Sstm8s_uart1$UART1_GetFlagStatus$181 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$182 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$183 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5235
	and	a, (0x03, sp)
	jreq	00105$
	Sstm8s_uart1$UART1_GetFlagStatus$184 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$185 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$186 ==.
	jra	00115$
00105$:
	Sstm8s_uart1$UART1_GetFlagStatus$187 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$188 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$189 ==.
	jra	00115$
00111$:
	Sstm8s_uart1$UART1_GetFlagStatus$190 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$191 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5230
	and	a, (0x03, sp)
	jreq	00108$
	Sstm8s_uart1$UART1_GetFlagStatus$192 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$193 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetFlagStatus$194 ==.
	jra	00115$
00108$:
	Sstm8s_uart1$UART1_GetFlagStatus$195 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$196 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetFlagStatus$197 ==.
00115$:
	Sstm8s_uart1$UART1_GetFlagStatus$198 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
	Sstm8s_uart1$UART1_GetFlagStatus$199 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
	addw	sp, #3
	Sstm8s_uart1$UART1_GetFlagStatus$200 ==.
	Sstm8s_uart1$UART1_GetFlagStatus$201 ==.
	XG$UART1_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_uart1$UART1_GetFlagStatus$202 ==.
	Sstm8s_uart1$UART1_GetITStatus$203 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_GetITStatus
;	-----------------------------------------
_UART1_GetITStatus:
	Sstm8s_uart1$UART1_GetITStatus$204 ==.
	sub	sp, #4
	Sstm8s_uart1$UART1_GetITStatus$205 ==.
	Sstm8s_uart1$UART1_GetITStatus$206 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x08, sp)
	ld	xl, a
	and	a, #0x0f
	push	a
	Sstm8s_uart1$UART1_GetITStatus$207 ==.
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	Sstm8s_uart1$UART1_GetITStatus$208 ==.
	tnz	a
	jreq	00162$
00161$:
	sll	(0x01, sp)
	dec	a
	jrne	00161$
00162$:
	Sstm8s_uart1$UART1_GetITStatus$209 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
	Sstm8s_uart1$UART1_GetITStatus$210 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	push	a
	Sstm8s_uart1$UART1_GetITStatus$211 ==.
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	Sstm8s_uart1$UART1_GetITStatus$212 ==.
	tnz	a
	jreq	00164$
00163$:
	sll	(0x02, sp)
	dec	a
	jrne	00163$
00164$:
	Sstm8s_uart1$UART1_GetITStatus$213 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
	ldw	x, y
	cpw	x, #0x0100
	jrne	00117$
	Sstm8s_uart1$UART1_GetITStatus$214 ==.
	Sstm8s_uart1$UART1_GetITStatus$215 ==.
	Sstm8s_uart1$UART1_GetITStatus$216 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
	ld	a, 0x5234
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$217 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5230
	and	a, (0x01, sp)
	jreq	00102$
	ld	a, xl
	tnz	a
	jreq	00102$
	Sstm8s_uart1$UART1_GetITStatus$218 ==.
	Sstm8s_uart1$UART1_GetITStatus$219 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$220 ==.
	jp	00118$
00102$:
	Sstm8s_uart1$UART1_GetITStatus$221 ==.
	Sstm8s_uart1$UART1_GetITStatus$222 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$223 ==.
	jp	00118$
00117$:
	Sstm8s_uart1$UART1_GetITStatus$224 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00114$
	Sstm8s_uart1$UART1_GetITStatus$225 ==.
	Sstm8s_uart1$UART1_GetITStatus$226 ==.
	Sstm8s_uart1$UART1_GetITStatus$227 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
	ld	a, 0x5237
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$228 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5237
	and	a, (0x01, sp)
	jreq	00106$
	ld	a, xl
	tnz	a
	jreq	00106$
	Sstm8s_uart1$UART1_GetITStatus$229 ==.
	Sstm8s_uart1$UART1_GetITStatus$230 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$231 ==.
	jra	00118$
00106$:
	Sstm8s_uart1$UART1_GetITStatus$232 ==.
	Sstm8s_uart1$UART1_GetITStatus$233 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$234 ==.
	jra	00118$
00114$:
	Sstm8s_uart1$UART1_GetITStatus$235 ==.
	Sstm8s_uart1$UART1_GetITStatus$236 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
	ld	a, 0x5235
	and	a, (0x02, sp)
	ld	xl, a
	Sstm8s_uart1$UART1_GetITStatus$237 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5230
	and	a, (0x01, sp)
	jreq	00110$
	ld	a, xl
	tnz	a
	jreq	00110$
	Sstm8s_uart1$UART1_GetITStatus$238 ==.
	Sstm8s_uart1$UART1_GetITStatus$239 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
	ld	a, #0x01
	Sstm8s_uart1$UART1_GetITStatus$240 ==.
	jra	00118$
00110$:
	Sstm8s_uart1$UART1_GetITStatus$241 ==.
	Sstm8s_uart1$UART1_GetITStatus$242 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
	clr	a
	Sstm8s_uart1$UART1_GetITStatus$243 ==.
00118$:
	Sstm8s_uart1$UART1_GetITStatus$244 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
	Sstm8s_uart1$UART1_GetITStatus$245 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
	addw	sp, #4
	Sstm8s_uart1$UART1_GetITStatus$246 ==.
	Sstm8s_uart1$UART1_GetITStatus$247 ==.
	XG$UART1_GetITStatus$0$0 ==.
	ret
	Sstm8s_uart1$UART1_GetITStatus$248 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$249 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_ClearITPendingBit
;	-----------------------------------------
_UART1_ClearITPendingBit:
	Sstm8s_uart1$UART1_ClearITPendingBit$250 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$251 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0255
	jrne	00102$
	Sstm8s_uart1$UART1_ClearITPendingBit$252 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$253 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$254 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
	mov	0x5230+0, #0xdf
	Sstm8s_uart1$UART1_ClearITPendingBit$255 ==.
	jra	00104$
00102$:
	Sstm8s_uart1$UART1_ClearITPendingBit$256 ==.
	Sstm8s_uart1$UART1_ClearITPendingBit$257 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
	bres	21047, #4
	Sstm8s_uart1$UART1_ClearITPendingBit$258 ==.
00104$:
	Sstm8s_uart1$UART1_ClearITPendingBit$259 ==.
;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
	Sstm8s_uart1$UART1_ClearITPendingBit$260 ==.
	XG$UART1_ClearITPendingBit$0$0 ==.
	ret
	Sstm8s_uart1$UART1_ClearITPendingBit$261 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_DeInit$0)
	.db	3
	.sleb128	52
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$2-Sstm8s_uart1$UART1_DeInit$0
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$3-Sstm8s_uart1$UART1_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$4-Sstm8s_uart1$UART1_DeInit$3
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$5-Sstm8s_uart1$UART1_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$6-Sstm8s_uart1$UART1_DeInit$5
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$7-Sstm8s_uart1$UART1_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$8-Sstm8s_uart1$UART1_DeInit$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$9-Sstm8s_uart1$UART1_DeInit$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$10-Sstm8s_uart1$UART1_DeInit$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$11-Sstm8s_uart1$UART1_DeInit$10
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$12-Sstm8s_uart1$UART1_DeInit$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_DeInit$13-Sstm8s_uart1$UART1_DeInit$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_DeInit$14-Sstm8s_uart1$UART1_DeInit$13
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_Init$16)
	.db	3
	.sleb128	89
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$19-Sstm8s_uart1$UART1_Init$16
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$20-Sstm8s_uart1$UART1_Init$19
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$21-Sstm8s_uart1$UART1_Init$20
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$22-Sstm8s_uart1$UART1_Init$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$23-Sstm8s_uart1$UART1_Init$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$24-Sstm8s_uart1$UART1_Init$23
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$25-Sstm8s_uart1$UART1_Init$24
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$26-Sstm8s_uart1$UART1_Init$25
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$27-Sstm8s_uart1$UART1_Init$26
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$28-Sstm8s_uart1$UART1_Init$27
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$34-Sstm8s_uart1$UART1_Init$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$46-Sstm8s_uart1$UART1_Init$34
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$60-Sstm8s_uart1$UART1_Init$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$61-Sstm8s_uart1$UART1_Init$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$62-Sstm8s_uart1$UART1_Init$61
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$63-Sstm8s_uart1$UART1_Init$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$64-Sstm8s_uart1$UART1_Init$63
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$65-Sstm8s_uart1$UART1_Init$64
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$66-Sstm8s_uart1$UART1_Init$65
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$70-Sstm8s_uart1$UART1_Init$66
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$73-Sstm8s_uart1$UART1_Init$70
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$75-Sstm8s_uart1$UART1_Init$73
	.db	3
	.sleb128	-15
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$76-Sstm8s_uart1$UART1_Init$75
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$80-Sstm8s_uart1$UART1_Init$76
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$83-Sstm8s_uart1$UART1_Init$80
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$85-Sstm8s_uart1$UART1_Init$83
	.db	3
	.sleb128	-52
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$86-Sstm8s_uart1$UART1_Init$85
	.db	3
	.sleb128	56
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$88-Sstm8s_uart1$UART1_Init$86
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$91-Sstm8s_uart1$UART1_Init$88
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Init$95-Sstm8s_uart1$UART1_Init$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_Init$97-Sstm8s_uart1$UART1_Init$95
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_Cmd$99)
	.db	3
	.sleb128	183
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$101-Sstm8s_uart1$UART1_Cmd$99
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$102-Sstm8s_uart1$UART1_Cmd$101
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$104-Sstm8s_uart1$UART1_Cmd$102
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$107-Sstm8s_uart1$UART1_Cmd$104
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_Cmd$109-Sstm8s_uart1$UART1_Cmd$107
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_Cmd$110-Sstm8s_uart1$UART1_Cmd$109
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$112)
	.db	3
	.sleb128	210
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$115-Sstm8s_uart1$UART1_ITConfig$112
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$116-Sstm8s_uart1$UART1_ITConfig$115
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$119-Sstm8s_uart1$UART1_ITConfig$116
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$121-Sstm8s_uart1$UART1_ITConfig$119
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$123-Sstm8s_uart1$UART1_ITConfig$121
	.db	3
	.sleb128	-7
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$125-Sstm8s_uart1$UART1_ITConfig$123
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$127-Sstm8s_uart1$UART1_ITConfig$125
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$129-Sstm8s_uart1$UART1_ITConfig$127
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$131-Sstm8s_uart1$UART1_ITConfig$129
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$134-Sstm8s_uart1$UART1_ITConfig$131
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$136-Sstm8s_uart1$UART1_ITConfig$134
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$138-Sstm8s_uart1$UART1_ITConfig$136
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$140-Sstm8s_uart1$UART1_ITConfig$138
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$142-Sstm8s_uart1$UART1_ITConfig$140
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$144-Sstm8s_uart1$UART1_ITConfig$142
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$147-Sstm8s_uart1$UART1_ITConfig$144
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ITConfig$149-Sstm8s_uart1$UART1_ITConfig$147
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ITConfig$151-Sstm8s_uart1$UART1_ITConfig$149
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$153)
	.db	3
	.sleb128	450
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData8$155-Sstm8s_uart1$UART1_ReceiveData8$153
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ReceiveData8$156-Sstm8s_uart1$UART1_ReceiveData8$155
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ReceiveData8$157-Sstm8s_uart1$UART1_ReceiveData8$156
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_SendData8$159)
	.db	3
	.sleb128	473
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData8$161-Sstm8s_uart1$UART1_SendData8$159
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_SendData8$162-Sstm8s_uart1$UART1_SendData8$161
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_SendData8$163-Sstm8s_uart1$UART1_SendData8$162
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$165)
	.db	3
	.sleb128	567
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$168-Sstm8s_uart1$UART1_GetFlagStatus$165
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$169-Sstm8s_uart1$UART1_GetFlagStatus$168
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$170-Sstm8s_uart1$UART1_GetFlagStatus$169
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$173-Sstm8s_uart1$UART1_GetFlagStatus$170
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$175-Sstm8s_uart1$UART1_GetFlagStatus$173
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$178-Sstm8s_uart1$UART1_GetFlagStatus$175
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$180-Sstm8s_uart1$UART1_GetFlagStatus$178
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$183-Sstm8s_uart1$UART1_GetFlagStatus$180
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$185-Sstm8s_uart1$UART1_GetFlagStatus$183
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$188-Sstm8s_uart1$UART1_GetFlagStatus$185
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$191-Sstm8s_uart1$UART1_GetFlagStatus$188
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$193-Sstm8s_uart1$UART1_GetFlagStatus$191
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$196-Sstm8s_uart1$UART1_GetFlagStatus$193
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$198-Sstm8s_uart1$UART1_GetFlagStatus$196
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetFlagStatus$199-Sstm8s_uart1$UART1_GetFlagStatus$198
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_GetFlagStatus$201-Sstm8s_uart1$UART1_GetFlagStatus$199
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$203)
	.db	3
	.sleb128	674
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$206-Sstm8s_uart1$UART1_GetITStatus$203
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$209-Sstm8s_uart1$UART1_GetITStatus$206
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$210-Sstm8s_uart1$UART1_GetITStatus$209
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$213-Sstm8s_uart1$UART1_GetITStatus$210
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$216-Sstm8s_uart1$UART1_GetITStatus$213
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$217-Sstm8s_uart1$UART1_GetITStatus$216
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$219-Sstm8s_uart1$UART1_GetITStatus$217
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$222-Sstm8s_uart1$UART1_GetITStatus$219
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$224-Sstm8s_uart1$UART1_GetITStatus$222
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$227-Sstm8s_uart1$UART1_GetITStatus$224
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$228-Sstm8s_uart1$UART1_GetITStatus$227
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$230-Sstm8s_uart1$UART1_GetITStatus$228
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$233-Sstm8s_uart1$UART1_GetITStatus$230
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$236-Sstm8s_uart1$UART1_GetITStatus$233
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$237-Sstm8s_uart1$UART1_GetITStatus$236
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$239-Sstm8s_uart1$UART1_GetITStatus$237
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$242-Sstm8s_uart1$UART1_GetITStatus$239
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$244-Sstm8s_uart1$UART1_GetITStatus$242
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_GetITStatus$245-Sstm8s_uart1$UART1_GetITStatus$244
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_GetITStatus$247-Sstm8s_uart1$UART1_GetITStatus$245
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$249)
	.db	3
	.sleb128	774
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$251-Sstm8s_uart1$UART1_ClearITPendingBit$249
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$254-Sstm8s_uart1$UART1_ClearITPendingBit$251
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$257-Sstm8s_uart1$UART1_ClearITPendingBit$254
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_uart1$UART1_ClearITPendingBit$259-Sstm8s_uart1$UART1_ClearITPendingBit$257
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_uart1$UART1_ClearITPendingBit$260-Sstm8s_uart1$UART1_ClearITPendingBit$259
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$261)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$248)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$202)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
	.dw	0,(Sstm8s_uart1$UART1_SendData8$164)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$158)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$152)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$111)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.dw	0,(Sstm8s_uart1$UART1_Init$98)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.dw	2
	.db	120
	.sleb128	18
	.dw	0,(Sstm8s_uart1$UART1_Init$17)
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
	.dw	0,(Sstm8s_uart1$UART1_DeInit$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	46
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "Source/Std_Lib/Src/stm8s_uart1.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "UART1_DeInit"
	.db	0
	.dw	0,(_UART1_DeInit)
	.dw	0,(XG$UART1_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+832)
	.uleb128	3
	.dw	0,340
	.ascii "UART1_Init"
	.db	0
	.dw	0,(_UART1_Init)
	.dw	0,(XG$UART1_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+368)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "BaudRate"
	.db	0
	.dw	0,340
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "WordLength"
	.db	0
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "StopBits"
	.db	0
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "Parity"
	.db	0
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "SyncMode"
	.db	0
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	10
	.ascii "Mode"
	.db	0
	.dw	0,357
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$69)
	.dw	0,(Sstm8s_uart1$UART1_Init$71)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$72)
	.dw	0,(Sstm8s_uart1$UART1_Init$74)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$79)
	.dw	0,(Sstm8s_uart1$UART1_Init$81)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$82)
	.dw	0,(Sstm8s_uart1$UART1_Init$84)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$87)
	.dw	0,(Sstm8s_uart1$UART1_Init$89)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Init$90)
	.dw	0,(Sstm8s_uart1$UART1_Init$94)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-17
	.ascii "BaudRate_Mantissa"
	.db	0
	.dw	0,340
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-13
	.ascii "BaudRate_Mantissa100"
	.db	0
	.dw	0,340
	.uleb128	0
	.uleb128	7
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,438
	.ascii "UART1_Cmd"
	.db	0
	.dw	0,(_UART1_Cmd)
	.dw	0,(XG$UART1_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+348)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,357
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Cmd$103)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$105)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_Cmd$106)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$108)
	.uleb128	0
	.uleb128	3
	.dw	0,609
	.ascii "UART1_ITConfig"
	.db	0
	.dw	0,(_UART1_ITConfig)
	.dw	0,(XG$UART1_ITConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+256)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,609
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "NewState"
	.db	0
	.dw	0,357
	.uleb128	8
	.dw	0,542
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$124)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$126)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$128)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$130)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$132)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$133)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$135)
	.uleb128	0
	.uleb128	8
	.dw	0,579
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$137)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$139)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$141)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$143)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$145)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$146)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$148)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	82
	.ascii "uartreg"
	.db	0
	.dw	0,357
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "itpos"
	.db	0
	.dw	0,357
	.uleb128	0
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	9
	.ascii "UART1_ReceiveData8"
	.db	0
	.dw	0,(_UART1_ReceiveData8)
	.dw	0,(XG$UART1_ReceiveData8$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+236)
	.dw	0,357
	.uleb128	3
	.dw	0,710
	.ascii "UART1_SendData8"
	.db	0
	.dw	0,(_UART1_SendData8)
	.dw	0,(XG$UART1_SendData8$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+216)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Data"
	.db	0
	.dw	0,357
	.uleb128	0
	.uleb128	10
	.dw	0,870
	.ascii "UART1_GetFlagStatus"
	.db	0
	.dw	0,(_UART1_GetFlagStatus)
	.dw	0,(XG$UART1_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+148)
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_FLAG"
	.db	0
	.dw	0,609
	.uleb128	8
	.dw	0,799
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$172)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$174)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$176)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$177)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$179)
	.uleb128	0
	.uleb128	8
	.dw	0,827
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$182)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$184)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$186)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$187)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$189)
	.uleb128	0
	.uleb128	8
	.dw	0,855
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$190)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$192)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$194)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$195)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$197)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	80
	.ascii "status"
	.db	0
	.dw	0,357
	.uleb128	0
	.uleb128	10
	.dw	0,1101
	.ascii "UART1_GetITStatus"
	.db	0
	.dw	0,(_UART1_GetITStatus)
	.dw	0,(XG$UART1_GetITStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+32)
	.dw	0,357
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,609
	.uleb128	8
	.dw	0,955
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$215)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$218)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$220)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$221)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$223)
	.uleb128	0
	.uleb128	8
	.dw	0,983
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$226)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$229)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$231)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$232)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$234)
	.uleb128	0
	.uleb128	8
	.dw	0,1011
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$235)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$238)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$240)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$241)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$243)
	.uleb128	0
	.uleb128	6
	.db	1
	.db	80
	.ascii "pendingbitstatus"
	.db	0
	.dw	0,357
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-4
	.ascii "itpos"
	.db	0
	.dw	0,357
	.uleb128	6
	.db	1
	.db	80
	.ascii "itmask1"
	.db	0
	.dw	0,357
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "itmask2"
	.db	0
	.dw	0,357
	.uleb128	6
	.db	1
	.db	81
	.ascii "enablestatus"
	.db	0
	.dw	0,357
	.uleb128	0
	.uleb128	11
	.ascii "UART1_ClearITPendingBit"
	.db	0
	.dw	0,(_UART1_ClearITPendingBit)
	.dw	0,(XG$UART1_ClearITPendingBit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "UART1_IT"
	.db	0
	.dw	0,609
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$253)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$255)
	.uleb128	5
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$256)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$258)
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,76
	.ascii "UART1_DeInit"
	.db	0
	.dw	0,103
	.ascii "UART1_Init"
	.db	0
	.dw	0,374
	.ascii "UART1_Cmd"
	.db	0
	.dw	0,438
	.ascii "UART1_ITConfig"
	.db	0
	.dw	0,625
	.ascii "UART1_ReceiveData8"
	.db	0
	.dw	0,662
	.ascii "UART1_SendData8"
	.db	0
	.dw	0,710
	.ascii "UART1_GetFlagStatus"
	.db	0
	.dw	0,870
	.ascii "UART1_GetITStatus"
	.db	0
	.dw	0,1101
	.ascii "UART1_ClearITPendingBit"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,26
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ClearITPendingBit$261-Sstm8s_uart1$UART1_ClearITPendingBit$250
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$250)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ClearITPendingBit$252)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,75
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_GetITStatus$248-Sstm8s_uart1$UART1_GetITStatus$204
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$204)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$205)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$207)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$208)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$211)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$212)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$214)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$225)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetITStatus$246)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,47
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_GetFlagStatus$202-Sstm8s_uart1$UART1_GetFlagStatus$166
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$166)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$167)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$171)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$181)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_GetFlagStatus$200)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_SendData8$164-Sstm8s_uart1$UART1_SendData8$160
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_SendData8$160)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ReceiveData8$158-Sstm8s_uart1$UART1_ReceiveData8$154
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ReceiveData8$154)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE5_end:
	.dw	0,61
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_ITConfig$152-Sstm8s_uart1$UART1_ITConfig$113
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$113)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$114)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$117)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$118)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$120)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$122)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_ITConfig$150)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE6_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_Cmd$111-Sstm8s_uart1$UART1_Cmd$100
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Cmd$100)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE7_end:
	.dw	0,278
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Sstm8s_uart1$UART1_Init$17)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_Init$98-Sstm8s_uart1$UART1_Init$17
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$17)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$18)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$29)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$30)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$31)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$32)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$33)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$35)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$36)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$37)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$38)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$39)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$40)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$41)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$42)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$43)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$44)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$45)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$47)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$48)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$49)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$50)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$51)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$52)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$53)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$54)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$55)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$56)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$57)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$58)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$59)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$67)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$68)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$77)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$78)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$92)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$93)
	.db	14
	.uleb128	19
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_Init$96)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE8_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)	;initial loc
	.dw	0,Sstm8s_uart1$UART1_DeInit$15-Sstm8s_uart1$UART1_DeInit$1
	.db	1
	.dw	0,(Sstm8s_uart1$UART1_DeInit$1)
	.db	14
	.uleb128	2
