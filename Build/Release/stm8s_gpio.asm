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
;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	sub	sp, #5
;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x08, sp)
	ldw	x, y
	addw	x, #0x0004
	ldw	(0x01, sp), x
	ld	a, (x)
	push	a
	ld	a, (0x0b, sp)
	cpl	a
	ld	(0x04, sp), a
	pop	a
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, y
	incw	x
	incw	x
	ldw	(0x04, sp), x
;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x0b, sp)
	jrpl	00105$
;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	ld	a, (y)
;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x10
	pop	a
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ld	(y), a
	jra	00103$
00102$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(y), a
00103$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, (0x04, sp)
	ld	a, (x)
	or	a, (0x0a, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
	jra	00106$
00105$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x04, sp)
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
00106$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, y
	addw	x, #0x0003
	ld	a, (x)
;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x40
	pop	a
	jreq	00108$
;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ld	(x), a
	jra	00109$
00108$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ld	(x), a
00109$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x01, sp)
	ld	a, (x)
;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x20
	pop	a
	jreq	00111$
;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
	jra	00113$
00111$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	(x), a
00113$:
;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
	addw	sp, #5
	ret
;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteHigh
;	-----------------------------------------
_GPIO_WriteHigh:
;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	or	a, (0x05, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
	ret
;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteLow
;	-----------------------------------------
_GPIO_WriteLow:
	push	a
;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
	ldw	x, (0x04, sp)
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
	pop	a
	ret
;	Source/Std_Lib/Src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
_GPIO_ReadInputPin:
;	Source/Std_Lib/Src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	and	a, (0x05, sp)
;	Source/Std_Lib/Src/stm8s_gpio.c: 216: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
