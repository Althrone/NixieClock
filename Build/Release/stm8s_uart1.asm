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
;	Source/Std_Lib/Src/stm8s_uart1.c: 53: void UART1_DeInit(void)
;	-----------------------------------------
;	 function UART1_DeInit
;	-----------------------------------------
_UART1_DeInit:
;	Source/Std_Lib/Src/stm8s_uart1.c: 57: (void)UART1->SR;
	ld	a, 0x5230
;	Source/Std_Lib/Src/stm8s_uart1.c: 58: (void)UART1->DR;
	ld	a, 0x5231
;	Source/Std_Lib/Src/stm8s_uart1.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
	mov	0x5233+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
	mov	0x5232+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
	mov	0x5234+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
	mov	0x5235+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
	mov	0x5236+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
	mov	0x5237+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
	mov	0x5238+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
	mov	0x5239+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
	mov	0x523a+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 71: }
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 90: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	sub	sp, #17
;	Source/Std_Lib/Src/stm8s_uart1.c: 105: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
	bres	21044, #4
;	Source/Std_Lib/Src/stm8s_uart1.c: 108: UART1->CR1 |= (uint8_t)WordLength;
	ld	a, 0x5234
	or	a, (0x18, sp)
	ld	0x5234, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
	ld	a, 0x5236
	and	a, #0xcf
	ld	0x5236, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 113: UART1->CR3 |= (uint8_t)StopBits;  
	ld	a, 0x5236
	or	a, (0x19, sp)
	ld	0x5236, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 116: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
	ld	a, 0x5234
	and	a, #0xf9
	ld	0x5234, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 118: UART1->CR1 |= (uint8_t)Parity;  
	ld	a, 0x5234
	or	a, (0x1a, sp)
	ld	0x5234, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 121: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
	ld	a, 0x5232
	mov	0x5232+0, #0x00
;	Source/Std_Lib/Src/stm8s_uart1.c: 123: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
	ld	a, 0x5233
	and	a, #0x0f
	ld	0x5233, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 125: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
	ld	a, 0x5233
	and	a, #0xf0
	ld	0x5233, a
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
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
	ldw	y, (0x10, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x01, sp), y
;	Source/Std_Lib/Src/stm8s_uart1.c: 129: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x10, sp), x
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	Source/Std_Lib/Src/stm8s_uart1.c: 131: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
	ld	a, 0x5233
	ld	(0x09, sp), a
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
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
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	or	a, (0x09, sp)
	ld	0x5233, a
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
;	Source/Std_Lib/Src/stm8s_uart1.c: 135: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
	ld	a, 0x5232
	ld	(0x11, sp), a
	ld	a, (0x04, sp)
	or	a, (0x11, sp)
	ld	0x5232, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
	and	a, #0xf3
	ld	0x5235, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 140: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
	ld	a, 0x5236
	and	a, #0xf8
	ld	0x5236, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 142: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
	ld	a, 0x5236
	ld	(0x11, sp), a
	ld	a, (0x1b, sp)
	and	a, #0x07
	or	a, (0x11, sp)
	ld	0x5236, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
;	Source/Std_Lib/Src/stm8s_uart1.c: 145: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
	push	a
	ld	a, (0x1d, sp)
	bcp	a, #0x04
	pop	a
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 148: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
	or	a, #0x08
	ld	0x5235, a
	jra	00103$
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 153: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
	and	a, #0xf7
	ld	0x5235, a
00103$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 138: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ld	a, 0x5235
;	Source/Std_Lib/Src/stm8s_uart1.c: 155: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
	push	a
	ld	a, (0x1d, sp)
	bcp	a, #0x08
	pop	a
	jreq	00105$
;	Source/Std_Lib/Src/stm8s_uart1.c: 158: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
	or	a, #0x04
	ld	0x5235, a
	jra	00106$
00105$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 163: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
	and	a, #0xfb
	ld	0x5235, a
00106$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 111: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
	ld	a, 0x5236
;	Source/Std_Lib/Src/stm8s_uart1.c: 167: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x1b, sp)
	jrpl	00108$
;	Source/Std_Lib/Src/stm8s_uart1.c: 170: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
	and	a, #0xf7
	ld	0x5236, a
	jra	00110$
00108$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 174: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
	push	a
	ld	a, (0x1c, sp)
	and	a, #0x08
	ld	(0x12, sp), a
	pop	a
	or	a, (0x11, sp)
	ld	0x5236, a
00110$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 176: }
	addw	sp, #17
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 184: void UART1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART1_Cmd
;	-----------------------------------------
_UART1_Cmd:
;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
	ld	a, 0x5234
;	Source/Std_Lib/Src/stm8s_uart1.c: 186: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 189: UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
	and	a, #0xdf
	ld	0x5234, a
	ret
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 194: UART1->CR1 |= UART1_CR1_UARTD;  
	or	a, #0x20
	ld	0x5234, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 196: }
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 211: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART1_ITConfig
;	-----------------------------------------
_UART1_ITConfig:
	pushw	x
;	Source/Std_Lib/Src/stm8s_uart1.c: 220: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
	ldw	x, (0x05, sp)
;	Source/Std_Lib/Src/stm8s_uart1.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00144$
00143$:
	sll	(0x02, sp)
	dec	a
	jrne	00143$
00144$:
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
;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
	ld	a, xh
	sub	a, #0x02
	jrne	00149$
	inc	a
	.byte 0x21
00149$:
	clr	a
00150$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 224: if (NewState != DISABLE)
	tnz	(0x07, sp)
	jreq	00114$
;	Source/Std_Lib/Src/stm8s_uart1.c: 227: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00105$
;	Source/Std_Lib/Src/stm8s_uart1.c: 229: UART1->CR1 |= itpos;
	ld	a, 0x5234
	or	a, (0x02, sp)
	ld	0x5234, a
	jra	00116$
00105$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 231: else if (uartreg == 0x02)
	tnz	a
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 233: UART1->CR2 |= itpos;
	ld	a, 0x5235
	or	a, (0x02, sp)
	ld	0x5235, a
	jra	00116$
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 237: UART1->CR4 |= itpos;
	ld	a, 0x5237
	or	a, (0x02, sp)
	ld	0x5237, a
	jra	00116$
00114$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
	cpl	(0x02, sp)
;	Source/Std_Lib/Src/stm8s_uart1.c: 243: if (uartreg == 0x01)
	tnz	(0x01, sp)
	jreq	00111$
;	Source/Std_Lib/Src/stm8s_uart1.c: 245: UART1->CR1 &= (uint8_t)(~itpos);
	ld	a, 0x5234
	and	a, (0x02, sp)
	ld	0x5234, a
	jra	00116$
00111$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 247: else if (uartreg == 0x02)
	tnz	a
	jreq	00108$
;	Source/Std_Lib/Src/stm8s_uart1.c: 249: UART1->CR2 &= (uint8_t)(~itpos);
	ld	a, 0x5235
	and	a, (0x02, sp)
	ld	0x5235, a
	jra	00116$
00108$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 253: UART1->CR4 &= (uint8_t)(~itpos);
	ld	a, 0x5237
	and	a, (0x02, sp)
	ld	0x5237, a
00116$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 257: }
	popw	x
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 451: uint8_t UART1_ReceiveData8(void)
;	-----------------------------------------
;	 function UART1_ReceiveData8
;	-----------------------------------------
_UART1_ReceiveData8:
;	Source/Std_Lib/Src/stm8s_uart1.c: 453: return ((uint8_t)UART1->DR);
	ld	a, 0x5231
;	Source/Std_Lib/Src/stm8s_uart1.c: 454: }
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 474: void UART1_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART1_SendData8
;	-----------------------------------------
_UART1_SendData8:
;	Source/Std_Lib/Src/stm8s_uart1.c: 477: UART1->DR = Data;
	ldw	x, #0x5231
	ld	a, (0x03, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_uart1.c: 478: }
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 568: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
;	-----------------------------------------
;	 function UART1_GetFlagStatus
;	-----------------------------------------
_UART1_GetFlagStatus:
	sub	sp, #3
;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
	ldw	y, (0x06, sp)
	ldw	(0x01, sp), y
;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, (0x07, sp)
	ld	(0x03, sp), a
;	Source/Std_Lib/Src/stm8s_uart1.c: 577: if (UART1_FLAG == UART1_FLAG_LBDF)
	ldw	x, (0x01, sp)
	cpw	x, #0x0210
	jrne	00114$
;	Source/Std_Lib/Src/stm8s_uart1.c: 579: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5237
	and	a, (0x03, sp)
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 582: status = SET;
	ld	a, #0x01
	jra	00115$
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 587: status = RESET;
	clr	a
	jra	00115$
00114$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 590: else if (UART1_FLAG == UART1_FLAG_SBK)
	ldw	x, (0x01, sp)
	cpw	x, #0x0101
	jrne	00111$
;	Source/Std_Lib/Src/stm8s_uart1.c: 592: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5235
	and	a, (0x03, sp)
	jreq	00105$
;	Source/Std_Lib/Src/stm8s_uart1.c: 595: status = SET;
	ld	a, #0x01
	jra	00115$
00105$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 600: status = RESET;
	clr	a
	jra	00115$
00111$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 605: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ld	a, 0x5230
	and	a, (0x03, sp)
	jreq	00108$
;	Source/Std_Lib/Src/stm8s_uart1.c: 608: status = SET;
	ld	a, #0x01
;	Source/Std_Lib/Src/stm8s_uart1.c: 613: status = RESET;
	.byte 0x21
00108$:
	clr	a
00115$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 617: return status;
;	Source/Std_Lib/Src/stm8s_uart1.c: 618: }
	addw	sp, #3
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 675: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_GetITStatus
;	-----------------------------------------
_UART1_GetITStatus:
	sub	sp, #4
;	Source/Std_Lib/Src/stm8s_uart1.c: 687: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x08, sp)
	ld	xl, a
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00162$
00161$:
	sll	(0x01, sp)
	dec	a
	jrne	00161$
00162$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 689: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
	ld	a, xl
	swap	a
	and	a, #0x0f
;	Source/Std_Lib/Src/stm8s_uart1.c: 691: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00164$
00163$:
	sll	(0x02, sp)
	dec	a
	jrne	00163$
00164$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 695: if (UART1_IT == UART1_IT_PE)
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
	ldw	x, y
	cpw	x, #0x0100
	jrne	00117$
;	Source/Std_Lib/Src/stm8s_uart1.c: 698: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
	ld	a, 0x5234
	and	a, (0x02, sp)
	ld	xl, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 701: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5230
	and	a, (0x01, sp)
	jreq	00102$
	ld	a, xl
	tnz	a
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 704: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00118$
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 709: pendingbitstatus = RESET;
	clr	a
	jra	00118$
00117$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 713: else if (UART1_IT == UART1_IT_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00114$
;	Source/Std_Lib/Src/stm8s_uart1.c: 716: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
	ld	a, 0x5237
	and	a, (0x02, sp)
	ld	xl, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 718: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5237
	and	a, (0x01, sp)
	jreq	00106$
	ld	a, xl
	tnz	a
	jreq	00106$
;	Source/Std_Lib/Src/stm8s_uart1.c: 721: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00118$
00106$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 726: pendingbitstatus = RESET;
	clr	a
	jra	00118$
00114$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 732: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
	ld	a, 0x5235
	and	a, (0x02, sp)
	ld	xl, a
;	Source/Std_Lib/Src/stm8s_uart1.c: 734: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ld	a, 0x5230
	and	a, (0x01, sp)
	jreq	00110$
	ld	a, xl
	tnz	a
	jreq	00110$
;	Source/Std_Lib/Src/stm8s_uart1.c: 737: pendingbitstatus = SET;
	ld	a, #0x01
;	Source/Std_Lib/Src/stm8s_uart1.c: 742: pendingbitstatus = RESET;
	.byte 0x21
00110$:
	clr	a
00118$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 747: return  pendingbitstatus;
;	Source/Std_Lib/Src/stm8s_uart1.c: 748: }
	addw	sp, #4
	ret
;	Source/Std_Lib/Src/stm8s_uart1.c: 775: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_ClearITPendingBit
;	-----------------------------------------
_UART1_ClearITPendingBit:
;	Source/Std_Lib/Src/stm8s_uart1.c: 780: if (UART1_IT == UART1_IT_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0255
	jrne	00102$
;	Source/Std_Lib/Src/stm8s_uart1.c: 782: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
	mov	0x5230+0, #0xdf
	ret
00102$:
;	Source/Std_Lib/Src/stm8s_uart1.c: 787: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
	bres	21047, #4
;	Source/Std_Lib/Src/stm8s_uart1.c: 789: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
