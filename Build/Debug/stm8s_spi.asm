;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module stm8s_spi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
	.globl _SPI_Init
	.globl _SPI_Cmd
	.globl _SPI_SendData
	.globl _SPI_GetFlagStatus
	.globl _SPI_ClearFlag
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
	Sstm8s_spi$SPI_DeInit$0 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 50: void SPI_DeInit(void)
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
_SPI_DeInit:
	Sstm8s_spi$SPI_DeInit$1 ==.
	Sstm8s_spi$SPI_DeInit$2 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
	mov	0x5200+0, #0x00
	Sstm8s_spi$SPI_DeInit$3 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
	mov	0x5201+0, #0x00
	Sstm8s_spi$SPI_DeInit$4 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
	mov	0x5202+0, #0x00
	Sstm8s_spi$SPI_DeInit$5 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
	mov	0x5203+0, #0x02
	Sstm8s_spi$SPI_DeInit$6 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
	mov	0x5205+0, #0x07
	Sstm8s_spi$SPI_DeInit$7 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 57: }
	Sstm8s_spi$SPI_DeInit$8 ==.
	XG$SPI_DeInit$0$0 ==.
	ret
	Sstm8s_spi$SPI_DeInit$9 ==.
	Sstm8s_spi$SPI_Init$10 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	Sstm8s_spi$SPI_Init$11 ==.
	push	a
	Sstm8s_spi$SPI_Init$12 ==.
	Sstm8s_spi$SPI_Init$13 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	ld	(0x01, sp), a
	Sstm8s_spi$SPI_Init$14 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
	or	a, (0x01, sp)
	ld	0x5200, a
	Sstm8s_spi$SPI_Init$15 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
	ld	a, (0x09, sp)
	or	a, (0x0a, sp)
	ld	0x5201, a
	Sstm8s_spi$SPI_Init$16 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
	ld	a, 0x5201
	Sstm8s_spi$SPI_Init$17 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
	push	a
	Sstm8s_spi$SPI_Init$18 ==.
	ld	a, (0x07, sp)
	cp	a, #0x04
	pop	a
	Sstm8s_spi$SPI_Init$19 ==.
	jrne	00102$
	Sstm8s_spi$SPI_Init$20 ==.
	Sstm8s_spi$SPI_Init$21 ==.
	Sstm8s_spi$SPI_Init$22 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
	or	a, #0x01
	ld	0x5201, a
	Sstm8s_spi$SPI_Init$23 ==.
	jra	00103$
00102$:
	Sstm8s_spi$SPI_Init$24 ==.
	Sstm8s_spi$SPI_Init$25 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
	and	a, #0xfe
	ld	0x5201, a
	Sstm8s_spi$SPI_Init$26 ==.
00103$:
	Sstm8s_spi$SPI_Init$27 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
	ld	a, 0x5200
	or	a, (0x06, sp)
	ld	0x5200, a
	Sstm8s_spi$SPI_Init$28 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
	ldw	x, #0x5205
	ld	a, (0x0b, sp)
	ld	(x), a
	Sstm8s_spi$SPI_Init$29 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 111: }
	pop	a
	Sstm8s_spi$SPI_Init$30 ==.
	Sstm8s_spi$SPI_Init$31 ==.
	XG$SPI_Init$0$0 ==.
	ret
	Sstm8s_spi$SPI_Init$32 ==.
	Sstm8s_spi$SPI_Cmd$33 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_Cmd
;	-----------------------------------------
_SPI_Cmd:
	Sstm8s_spi$SPI_Cmd$34 ==.
	Sstm8s_spi$SPI_Cmd$35 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
	ld	a, 0x5200
	Sstm8s_spi$SPI_Cmd$36 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 124: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	Sstm8s_spi$SPI_Cmd$37 ==.
	Sstm8s_spi$SPI_Cmd$38 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
	or	a, #0x40
	ld	0x5200, a
	Sstm8s_spi$SPI_Cmd$39 ==.
	jra	00104$
00102$:
	Sstm8s_spi$SPI_Cmd$40 ==.
	Sstm8s_spi$SPI_Cmd$41 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
	and	a, #0xbf
	ld	0x5200, a
	Sstm8s_spi$SPI_Cmd$42 ==.
00104$:
	Sstm8s_spi$SPI_Cmd$43 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 132: }
	Sstm8s_spi$SPI_Cmd$44 ==.
	XG$SPI_Cmd$0$0 ==.
	ret
	Sstm8s_spi$SPI_Cmd$45 ==.
	Sstm8s_spi$SPI_SendData$46 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
;	-----------------------------------------
;	 function SPI_SendData
;	-----------------------------------------
_SPI_SendData:
	Sstm8s_spi$SPI_SendData$47 ==.
	Sstm8s_spi$SPI_SendData$48 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
	ldw	x, #0x5204
	ld	a, (0x03, sp)
	ld	(x), a
	Sstm8s_spi$SPI_SendData$49 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 169: }
	Sstm8s_spi$SPI_SendData$50 ==.
	XG$SPI_SendData$0$0 ==.
	ret
	Sstm8s_spi$SPI_SendData$51 ==.
	Sstm8s_spi$SPI_GetFlagStatus$52 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
_SPI_GetFlagStatus:
	Sstm8s_spi$SPI_GetFlagStatus$53 ==.
	Sstm8s_spi$SPI_GetFlagStatus$54 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
	ld	a, 0x5203
	and	a, (0x03, sp)
	jreq	00102$
	Sstm8s_spi$SPI_GetFlagStatus$55 ==.
	Sstm8s_spi$SPI_GetFlagStatus$56 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
	ld	a, #0x01
	Sstm8s_spi$SPI_GetFlagStatus$57 ==.
	jra	00103$
00102$:
	Sstm8s_spi$SPI_GetFlagStatus$58 ==.
	Sstm8s_spi$SPI_GetFlagStatus$59 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
	clr	a
	Sstm8s_spi$SPI_GetFlagStatus$60 ==.
00103$:
	Sstm8s_spi$SPI_GetFlagStatus$61 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 328: return status;
	Sstm8s_spi$SPI_GetFlagStatus$62 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 329: }
	Sstm8s_spi$SPI_GetFlagStatus$63 ==.
	XG$SPI_GetFlagStatus$0$0 ==.
	ret
	Sstm8s_spi$SPI_GetFlagStatus$64 ==.
	Sstm8s_spi$SPI_ClearFlag$65 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_ClearFlag
;	-----------------------------------------
_SPI_ClearFlag:
	Sstm8s_spi$SPI_ClearFlag$66 ==.
	Sstm8s_spi$SPI_ClearFlag$67 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
	ld	a, (0x03, sp)
	cpl	a
	ld	0x5203, a
	Sstm8s_spi$SPI_ClearFlag$68 ==.
;	Source/Std_Lib/Src/stm8s_spi.c: 351: }
	Sstm8s_spi$SPI_ClearFlag$69 ==.
	XG$SPI_ClearFlag$0$0 ==.
	ret
	Sstm8s_spi$SPI_ClearFlag$70 ==.
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
	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_DeInit$0)
	.db	3
	.sleb128	49
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$2-Sstm8s_spi$SPI_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$3-Sstm8s_spi$SPI_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$4-Sstm8s_spi$SPI_DeInit$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$5-Sstm8s_spi$SPI_DeInit$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$6-Sstm8s_spi$SPI_DeInit$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_DeInit$7-Sstm8s_spi$SPI_DeInit$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_DeInit$8-Sstm8s_spi$SPI_DeInit$7
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_Init$10)
	.db	3
	.sleb128	77
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$13-Sstm8s_spi$SPI_Init$10
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$14-Sstm8s_spi$SPI_Init$13
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$15-Sstm8s_spi$SPI_Init$14
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$16-Sstm8s_spi$SPI_Init$15
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$17-Sstm8s_spi$SPI_Init$16
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$22-Sstm8s_spi$SPI_Init$17
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$25-Sstm8s_spi$SPI_Init$22
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$27-Sstm8s_spi$SPI_Init$25
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$28-Sstm8s_spi$SPI_Init$27
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Init$29-Sstm8s_spi$SPI_Init$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_Init$31-Sstm8s_spi$SPI_Init$29
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_Cmd$33)
	.db	3
	.sleb128	118
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Cmd$35-Sstm8s_spi$SPI_Cmd$33
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Cmd$36-Sstm8s_spi$SPI_Cmd$35
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Cmd$38-Sstm8s_spi$SPI_Cmd$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Cmd$41-Sstm8s_spi$SPI_Cmd$38
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_Cmd$43-Sstm8s_spi$SPI_Cmd$41
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_Cmd$44-Sstm8s_spi$SPI_Cmd$43
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_SendData$46)
	.db	3
	.sleb128	165
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_SendData$48-Sstm8s_spi$SPI_SendData$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_SendData$49-Sstm8s_spi$SPI_SendData$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_SendData$50-Sstm8s_spi$SPI_SendData$49
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$52)
	.db	3
	.sleb128	310
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_GetFlagStatus$54-Sstm8s_spi$SPI_GetFlagStatus$52
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_GetFlagStatus$56-Sstm8s_spi$SPI_GetFlagStatus$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_GetFlagStatus$59-Sstm8s_spi$SPI_GetFlagStatus$56
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_GetFlagStatus$61-Sstm8s_spi$SPI_GetFlagStatus$59
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_GetFlagStatus$62-Sstm8s_spi$SPI_GetFlagStatus$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_GetFlagStatus$63-Sstm8s_spi$SPI_GetFlagStatus$62
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_spi$SPI_ClearFlag$65)
	.db	3
	.sleb128	345
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_ClearFlag$67-Sstm8s_spi$SPI_ClearFlag$65
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_spi$SPI_ClearFlag$68-Sstm8s_spi$SPI_ClearFlag$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_spi$SPI_ClearFlag$69-Sstm8s_spi$SPI_ClearFlag$68
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
	.dw	0,(Sstm8s_spi$SPI_ClearFlag$70)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$64)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_spi$SPI_SendData$47)
	.dw	0,(Sstm8s_spi$SPI_SendData$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
	.dw	0,(Sstm8s_spi$SPI_Cmd$45)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_spi$SPI_Init$30)
	.dw	0,(Sstm8s_spi$SPI_Init$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_spi$SPI_Init$20)
	.dw	0,(Sstm8s_spi$SPI_Init$30)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_spi$SPI_Init$19)
	.dw	0,(Sstm8s_spi$SPI_Init$20)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_spi$SPI_Init$18)
	.dw	0,(Sstm8s_spi$SPI_Init$19)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sstm8s_spi$SPI_Init$12)
	.dw	0,(Sstm8s_spi$SPI_Init$18)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_spi$SPI_Init$11)
	.dw	0,(Sstm8s_spi$SPI_Init$12)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
	.dw	0,(Sstm8s_spi$SPI_DeInit$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
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
	.uleb128	8
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
	.uleb128	7
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
	.uleb128	9
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
	.uleb128	6
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
	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "SPI_DeInit"
	.db	0
	.dw	0,(_SPI_DeInit)
	.dw	0,(XG$SPI_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+160)
	.uleb128	3
	.dw	0,312
	.ascii "SPI_Init"
	.db	0
	.dw	0,(_SPI_Init)
	.dw	0,(XG$SPI_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "FirstBit"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	3
	.ascii "BaudRatePrescaler"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	4
	.ascii "Mode"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	5
	.ascii "ClockPolarity"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	6
	.ascii "ClockPhase"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	7
	.ascii "Data_Direction"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	8
	.ascii "Slave_Management"
	.db	0
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	9
	.ascii "CRCPolynomial"
	.db	0
	.dw	0,312
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_Init$21)
	.dw	0,(Sstm8s_spi$SPI_Init$23)
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_Init$24)
	.dw	0,(Sstm8s_spi$SPI_Init$26)
	.uleb128	0
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	3
	.dw	0,391
	.ascii "SPI_Cmd"
	.db	0
	.dw	0,(_SPI_Cmd)
	.dw	0,(XG$SPI_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,312
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_Cmd$37)
	.dw	0,(Sstm8s_spi$SPI_Cmd$39)
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_Cmd$40)
	.dw	0,(Sstm8s_spi$SPI_Cmd$42)
	.uleb128	0
	.uleb128	3
	.dw	0,436
	.ascii "SPI_SendData"
	.db	0
	.dw	0,(_SPI_SendData)
	.dw	0,(XG$SPI_SendData$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "Data"
	.db	0
	.dw	0,312
	.uleb128	0
	.uleb128	7
	.dw	0,526
	.ascii "SPI_GetFlagStatus"
	.db	0
	.dw	0,(_SPI_GetFlagStatus)
	.dw	0,(XG$SPI_GetFlagStatus$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,312
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "SPI_FLAG"
	.db	0
	.dw	0,312
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$55)
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$57)
	.uleb128	5
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$58)
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$60)
	.uleb128	8
	.db	1
	.db	80
	.ascii "status"
	.db	0
	.dw	0,312
	.uleb128	0
	.uleb128	9
	.ascii "SPI_ClearFlag"
	.db	0
	.dw	0,(_SPI_ClearFlag)
	.dw	0,(XG$SPI_ClearFlag$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "SPI_FLAG"
	.db	0
	.dw	0,312
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
	.dw	0,74
	.ascii "SPI_DeInit"
	.db	0
	.dw	0,99
	.ascii "SPI_Init"
	.db	0
	.dw	0,329
	.ascii "SPI_Cmd"
	.db	0
	.dw	0,391
	.ascii "SPI_SendData"
	.db	0
	.dw	0,436
	.ascii "SPI_GetFlagStatus"
	.db	0
	.dw	0,526
	.ascii "SPI_ClearFlag"
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
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)	;initial loc
	.dw	0,Sstm8s_spi$SPI_ClearFlag$70-Sstm8s_spi$SPI_ClearFlag$66
	.db	1
	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)	;initial loc
	.dw	0,Sstm8s_spi$SPI_GetFlagStatus$64-Sstm8s_spi$SPI_GetFlagStatus$53
	.db	1
	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sstm8s_spi$SPI_SendData$47)	;initial loc
	.dw	0,Sstm8s_spi$SPI_SendData$51-Sstm8s_spi$SPI_SendData$47
	.db	1
	.dw	0,(Sstm8s_spi$SPI_SendData$47)
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
	.dw	0,(Sstm8s_spi$SPI_Cmd$34)	;initial loc
	.dw	0,Sstm8s_spi$SPI_Cmd$45-Sstm8s_spi$SPI_Cmd$34
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
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
	.dw	0,54
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sstm8s_spi$SPI_Init$11)	;initial loc
	.dw	0,Sstm8s_spi$SPI_Init$32-Sstm8s_spi$SPI_Init$11
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$11)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$12)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$18)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$19)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$20)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_spi$SPI_Init$30)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sstm8s_spi$SPI_DeInit$1)	;initial loc
	.dw	0,Sstm8s_spi$SPI_DeInit$9-Sstm8s_spi$SPI_DeInit$1
	.db	1
	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
	.db	14
	.uleb128	2
