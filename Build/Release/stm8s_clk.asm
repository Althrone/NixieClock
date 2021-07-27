;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module stm8s_clk
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLKPrescTable
	.globl _HSIDivFactor
	.globl _CLK_HSECmd
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_GetClockFreq
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
;	Source/Std_Lib/Src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
_CLK_HSECmd:
;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	ld	a, 0x50c1
;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	or	a, #0x01
	ld	0x50c1, a
	ret
00102$:
;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	and	a, #0xfe
	ld	0x50c1, a
;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
	ret
;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	ld	yl, a
;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	push	a
	ld	a, (0x04, sp)
	dec	a
	pop	a
	jrne	00122$
;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c5, a
	ld	a, 0x50c5
;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	jra	00103$
00102$:
;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
00103$:
;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	clrw	x
	decw	x
00105$:
	ld	a, 0x50c5
	srl	a
	jrnc	00107$
	tnzw	x
	jreq	00107$
;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
	decw	x
	jra	00105$
00107$:
;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	jra	00123$
00109$:
;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
	clrw	x
	jra	00123$
00122$:
;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00112$
;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	jra	00113$
00112$:
;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
00113$:
;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	clrw	x
	decw	x
00115$:
	ld	a, 0x50c5
	bcp	a, #0x08
	jreq	00117$
	tnzw	x
	jreq	00117$
;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
	decw	x
	jra	00115$
00117$:
;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
	bset	20677, #1
;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
	.byte 0x21
00119$:
	clrw	x
00123$:
;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
	ld	a, xl
	tnz	a
	jreq	00136$
;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x06, sp)
	jrne	00132$
	ld	a, yl
	cp	a, #0xe1
	jrne	00132$
;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	bres	20672, #0
	jra	00136$
00132$:
;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x06, sp)
	jrne	00128$
	ld	a, yl
	cp	a, #0xd2
	jrne	00128$
;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	bres	20672, #3
	jra	00136$
00128$:
;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x06, sp)
	jrne	00136$
	ld	a, yl
	cp	a, #0xb4
	jrne	00136$
;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	bres	20673, #0
00136$:
;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
	ld	a, xl
;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
	ret
;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #4
;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
	ld	(0x04, sp), a
	cp	a, #0xe1
	jrne	00105$
;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0x18
;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
	clrw	x
	ld	xl, a
	addw	x, #(_HSIDivFactor + 0)
	ld	a, (x)
;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
	jra	00106$
00105$:
;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x04, sp)
	cp	a, #0xd2
	jrne	00102$
;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	(0x03, sp), x
	ldw	y, #0x0001
	jra	00106$
00102$:
;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
	ldw	x, #0x1200
	ldw	(0x03, sp), x
	ldw	y, #0x007a
00106$:
;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
	ldw	x, (0x03, sp)
;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
	addw	sp, #4
	ret
	.area CODE
	.area CONST
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
_CLKPrescTable:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x28	; 40
	.area INITIALIZER
	.area CABS (ABS)
