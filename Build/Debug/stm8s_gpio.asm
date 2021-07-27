;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module stm8s_gpio
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Init
	.globl _GPIO_WriteHigh
	.globl _GPIO_WriteLow
	.globl _GPIO_ReadInputPin
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
	Sstm8s_gpio$GPIO_Init$0 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	Sstm8s_gpio$GPIO_Init$1 ==.
	sub	sp, #5
	Sstm8s_gpio$GPIO_Init$2 ==.
	Sstm8s_gpio$GPIO_Init$3 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x08, sp)
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x01, sp), x
	ld	a, (x)
	push	a
	Sstm8s_gpio$GPIO_Init$4 ==.
	ld	a, (0x0b, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
	Sstm8s_gpio$GPIO_Init$5 ==.
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$6 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
	Sstm8s_gpio$GPIO_Init$7 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x0b, sp)
	jrpl	00105$
	Sstm8s_gpio$GPIO_Init$8 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	ld	a, (y)
	Sstm8s_gpio$GPIO_Init$9 ==.
	Sstm8s_gpio$GPIO_Init$10 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	push	a
	Sstm8s_gpio$GPIO_Init$11 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x10
	pop	a
	Sstm8s_gpio$GPIO_Init$12 ==.
	jreq	00102$
	Sstm8s_gpio$GPIO_Init$13 ==.
	Sstm8s_gpio$GPIO_Init$14 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ld	(y), a
	Sstm8s_gpio$GPIO_Init$15 ==.
	jra	00103$
00102$:
	Sstm8s_gpio$GPIO_Init$16 ==.
	Sstm8s_gpio$GPIO_Init$17 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(y), a
	Sstm8s_gpio$GPIO_Init$18 ==.
00103$:
	Sstm8s_gpio$GPIO_Init$19 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, (0x04, sp)
	ld	a, (x)
	or	a, (0x0a, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$20 ==.
	jra	00106$
00105$:
	Sstm8s_gpio$GPIO_Init$21 ==.
	Sstm8s_gpio$GPIO_Init$22 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x04, sp)
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$23 ==.
00106$:
	Sstm8s_gpio$GPIO_Init$24 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, y
	addw	x, #0x0003
	ld	a, (x)
	Sstm8s_gpio$GPIO_Init$25 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	push	a
	Sstm8s_gpio$GPIO_Init$26 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x40
	pop	a
	Sstm8s_gpio$GPIO_Init$27 ==.
	jreq	00108$
	Sstm8s_gpio$GPIO_Init$28 ==.
	Sstm8s_gpio$GPIO_Init$29 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$30 ==.
	jra	00109$
00108$:
	Sstm8s_gpio$GPIO_Init$31 ==.
	Sstm8s_gpio$GPIO_Init$32 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$33 ==.
00109$:
	Sstm8s_gpio$GPIO_Init$34 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x01, sp)
	ld	a, (x)
	Sstm8s_gpio$GPIO_Init$35 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	push	a
	Sstm8s_gpio$GPIO_Init$36 ==.
	ld	a, (0x0c, sp)
	bcp	a, #0x20
	pop	a
	Sstm8s_gpio$GPIO_Init$37 ==.
	jreq	00111$
	Sstm8s_gpio$GPIO_Init$38 ==.
	Sstm8s_gpio$GPIO_Init$39 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$40 ==.
	jra	00113$
00111$:
	Sstm8s_gpio$GPIO_Init$41 ==.
	Sstm8s_gpio$GPIO_Init$42 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_Init$43 ==.
00113$:
	Sstm8s_gpio$GPIO_Init$44 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
	addw	sp, #5
	Sstm8s_gpio$GPIO_Init$45 ==.
	Sstm8s_gpio$GPIO_Init$46 ==.
	XG$GPIO_Init$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_Init$47 ==.
	Sstm8s_gpio$GPIO_WriteHigh$48 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
_GPIO_WriteHigh:
	Sstm8s_gpio$GPIO_WriteHigh$49 ==.
	Sstm8s_gpio$GPIO_WriteHigh$50 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x05, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_WriteHigh$51 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
	Sstm8s_gpio$GPIO_WriteHigh$52 ==.
	XG$GPIO_WriteHigh$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_WriteHigh$53 ==.
	Sstm8s_gpio$GPIO_WriteLow$54 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
_GPIO_WriteLow:
	Sstm8s_gpio$GPIO_WriteLow$55 ==.
	push	a
	Sstm8s_gpio$GPIO_WriteLow$56 ==.
	Sstm8s_gpio$GPIO_WriteLow$57 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
	ldw	x, (0x04, sp)
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
	Sstm8s_gpio$GPIO_WriteLow$58 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
	pop	a
	Sstm8s_gpio$GPIO_WriteLow$59 ==.
	Sstm8s_gpio$GPIO_WriteLow$60 ==.
	XG$GPIO_WriteLow$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_WriteLow$61 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$62 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
_GPIO_ReadInputPin:
	Sstm8s_gpio$GPIO_ReadInputPin$63 ==.
	Sstm8s_gpio$GPIO_ReadInputPin$64 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	and	a, (0x05, sp)
	Sstm8s_gpio$GPIO_ReadInputPin$65 ==.
;	Source/Std_Lib/Src/stm8s_gpio.c: 216: }
	Sstm8s_gpio$GPIO_ReadInputPin$66 ==.
	XG$GPIO_ReadInputPin$0$0 ==.
	ret
	Sstm8s_gpio$GPIO_ReadInputPin$67 ==.
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
	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_Init$0)
	.db	3
	.sleb128	70
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$3-Sstm8s_gpio$GPIO_Init$0
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$6-Sstm8s_gpio$GPIO_Init$3
	.db	3
	.sleb128	17
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$7-Sstm8s_gpio$GPIO_Init$6
	.db	3
	.sleb128	-11
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$8-Sstm8s_gpio$GPIO_Init$7
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$10-Sstm8s_gpio$GPIO_Init$8
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$10
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$14
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$19
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$22
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$29-Sstm8s_gpio$GPIO_Init$25
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$32-Sstm8s_gpio$GPIO_Init$29
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$32
	.db	3
	.sleb128	-35
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$35-Sstm8s_gpio$GPIO_Init$34
	.db	3
	.sleb128	42
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$39-Sstm8s_gpio$GPIO_Init$35
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$39
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_Init$46-Sstm8s_gpio$GPIO_Init$44
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$48)
	.db	3
	.sleb128	153
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$50-Sstm8s_gpio$GPIO_WriteHigh$48
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteHigh$51-Sstm8s_gpio$GPIO_WriteHigh$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$52-Sstm8s_gpio$GPIO_WriteHigh$51
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$54)
	.db	3
	.sleb128	166
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$57-Sstm8s_gpio$GPIO_WriteLow$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_WriteLow$58-Sstm8s_gpio$GPIO_WriteLow$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_WriteLow$60-Sstm8s_gpio$GPIO_WriteLow$58
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$62)
	.db	3
	.sleb128	212
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$64-Sstm8s_gpio$GPIO_ReadInputPin$62
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_gpio$GPIO_ReadInputPin$65-Sstm8s_gpio$GPIO_ReadInputPin$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$66-Sstm8s_gpio$GPIO_ReadInputPin$65
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$67)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$61)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$53)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	6
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	2
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
	.uleb128	13
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	9
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
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	19
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	10
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
	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.dw	0,320
	.ascii "GPIO_Init"
	.db	0
	.dw	0,(_GPIO_Init)
	.dw	0,(XG$GPIO_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+84)
	.uleb128	3
	.dw	0,187
	.ascii "GPIO_struct"
	.db	0
	.db	5
	.uleb128	4
	.dw	0,320
	.uleb128	5
	.ascii "ODR"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,121
	.uleb128	5
	.ascii "IDR"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,121
	.uleb128	5
	.ascii "DDR"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,121
	.uleb128	5
	.ascii "CR1"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,121
	.uleb128	5
	.ascii "CR2"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,121
	.uleb128	0
	.uleb128	6
	.db	2
	.dw	0,103
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,187
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,337
	.uleb128	7
	.db	2
	.db	145
	.sleb128	5
	.ascii "GPIO_Mode"
	.db	0
	.dw	0,337
	.uleb128	8
	.dw	0,274
	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
	.uleb128	0
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
	.uleb128	9
	.dw	0,(Sstm8s_gpio$GPIO_Init$41)
	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
	.uleb128	0
	.uleb128	10
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	10
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,419
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,(_GPIO_WriteHigh)
	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+64)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,187
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortPins"
	.db	0
	.dw	0,337
	.uleb128	0
	.uleb128	2
	.dw	0,483
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,(_GPIO_WriteLow)
	.dw	0,(XG$GPIO_WriteLow$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,187
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "PortPins"
	.db	0
	.dw	0,337
	.uleb128	0
	.uleb128	11
	.ascii "GPIO_ReadInputPin"
	.db	0
	.dw	0,(_GPIO_ReadInputPin)
	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,337
	.uleb128	7
	.db	2
	.db	145
	.sleb128	2
	.ascii "GPIOx"
	.db	0
	.dw	0,187
	.uleb128	7
	.db	2
	.db	145
	.sleb128	4
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,337
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
	.dw	0,75
	.ascii "GPIO_Init"
	.db	0
	.dw	0,354
	.ascii "GPIO_WriteHigh"
	.db	0
	.dw	0,419
	.ascii "GPIO_WriteLow"
	.db	0
	.dw	0,483
	.ascii "GPIO_ReadInputPin"
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
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$67-Sstm8s_gpio$GPIO_ReadInputPin$63
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_WriteLow$61-Sstm8s_gpio$GPIO_WriteLow$55
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
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
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$53-Sstm8s_gpio$GPIO_WriteHigh$49
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
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
	.dw	0,89
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sstm8s_gpio$GPIO_Init$1)	;initial loc
	.dw	0,Sstm8s_gpio$GPIO_Init$47-Sstm8s_gpio$GPIO_Init$1
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
	.db	14
	.uleb128	2
