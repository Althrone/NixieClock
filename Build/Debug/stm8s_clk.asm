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
	Sstm8s_clk$CLK_HSECmd$0 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
_CLK_HSECmd:
	Sstm8s_clk$CLK_HSECmd$1 ==.
	Sstm8s_clk$CLK_HSECmd$2 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	ld	a, 0x50c1
	Sstm8s_clk$CLK_HSECmd$3 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 126: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	Sstm8s_clk$CLK_HSECmd$4 ==.
	Sstm8s_clk$CLK_HSECmd$5 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	or	a, #0x01
	ld	0x50c1, a
	Sstm8s_clk$CLK_HSECmd$6 ==.
	jra	00104$
00102$:
	Sstm8s_clk$CLK_HSECmd$7 ==.
	Sstm8s_clk$CLK_HSECmd$8 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	and	a, #0xfe
	ld	0x50c1, a
	Sstm8s_clk$CLK_HSECmd$9 ==.
00104$:
	Sstm8s_clk$CLK_HSECmd$10 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 136: }
	Sstm8s_clk$CLK_HSECmd$11 ==.
	XG$CLK_HSECmd$0$0 ==.
	ret
	Sstm8s_clk$CLK_HSECmd$12 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$13 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
	Sstm8s_clk$CLK_ClockSwitchConfig$14 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$15 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	ld	yl, a
	Sstm8s_clk$CLK_ClockSwitchConfig$16 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
	Sstm8s_clk$CLK_ClockSwitchConfig$17 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	push	a
	Sstm8s_clk$CLK_ClockSwitchConfig$18 ==.
	ld	a, (0x04, sp)
	dec	a
	pop	a
	Sstm8s_clk$CLK_ClockSwitchConfig$19 ==.
	jreq	00233$
	jp	00122$
00233$:
	Sstm8s_clk$CLK_ClockSwitchConfig$20 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$21 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$22 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c5, a
	Sstm8s_clk$CLK_ClockSwitchConfig$23 ==.
	ld	a, 0x50c5
	Sstm8s_clk$CLK_ClockSwitchConfig$24 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 331: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	Sstm8s_clk$CLK_ClockSwitchConfig$25 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$26 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	Sstm8s_clk$CLK_ClockSwitchConfig$27 ==.
	jra	00103$
00102$:
	Sstm8s_clk$CLK_ClockSwitchConfig$28 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$29 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
	Sstm8s_clk$CLK_ClockSwitchConfig$30 ==.
00103$:
	Sstm8s_clk$CLK_ClockSwitchConfig$31 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$32 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$33 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	clrw	x
	decw	x
00105$:
	ld	a, 0x50c5
	srl	a
	jrnc	00107$
	tnzw	x
	jreq	00107$
	Sstm8s_clk$CLK_ClockSwitchConfig$34 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$35 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 346: DownCounter--;
	decw	x
	Sstm8s_clk$CLK_ClockSwitchConfig$36 ==.
	jra	00105$
00107$:
	Sstm8s_clk$CLK_ClockSwitchConfig$37 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 349: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
	Sstm8s_clk$CLK_ClockSwitchConfig$38 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$39 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 351: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	Sstm8s_clk$CLK_ClockSwitchConfig$40 ==.
	jp	00123$
00109$:
	Sstm8s_clk$CLK_ClockSwitchConfig$41 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$42 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 355: Swif = ERROR;
	clrw	x
	Sstm8s_clk$CLK_ClockSwitchConfig$43 ==.
	jp	00123$
00122$:
	Sstm8s_clk$CLK_ClockSwitchConfig$44 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$45 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 361: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00112$
	Sstm8s_clk$CLK_ClockSwitchConfig$46 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$47 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	Sstm8s_clk$CLK_ClockSwitchConfig$48 ==.
	jra	00113$
00112$:
	Sstm8s_clk$CLK_ClockSwitchConfig$49 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$50 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
	Sstm8s_clk$CLK_ClockSwitchConfig$51 ==.
00113$:
	Sstm8s_clk$CLK_ClockSwitchConfig$52 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
	Sstm8s_clk$CLK_ClockSwitchConfig$53 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$54 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	clrw	x
	decw	x
00115$:
	ld	a, 0x50c5
	bcp	a, #0x08
	jreq	00117$
	tnzw	x
	jreq	00117$
	Sstm8s_clk$CLK_ClockSwitchConfig$55 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$56 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 376: DownCounter--;
	decw	x
	Sstm8s_clk$CLK_ClockSwitchConfig$57 ==.
	jra	00115$
00117$:
	Sstm8s_clk$CLK_ClockSwitchConfig$58 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 379: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
	Sstm8s_clk$CLK_ClockSwitchConfig$59 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$60 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
	bset	20677, #1
	Sstm8s_clk$CLK_ClockSwitchConfig$61 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 383: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	Sstm8s_clk$CLK_ClockSwitchConfig$62 ==.
	jra	00123$
00119$:
	Sstm8s_clk$CLK_ClockSwitchConfig$63 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$64 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 387: Swif = ERROR;
	clrw	x
	Sstm8s_clk$CLK_ClockSwitchConfig$65 ==.
00123$:
	Sstm8s_clk$CLK_ClockSwitchConfig$66 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 390: if(Swif != ERROR)
	ld	a, xl
	tnz	a
	jrne	00242$
	jp	00136$
00242$:
	Sstm8s_clk$CLK_ClockSwitchConfig$67 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$68 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x06, sp)
	jrne	00132$
	ld	a, yl
	cp	a, #0xe1
	jrne	00132$
	Sstm8s_clk$CLK_ClockSwitchConfig$69 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$70 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$71 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	bres	20672, #0
	Sstm8s_clk$CLK_ClockSwitchConfig$72 ==.
	jra	00136$
00132$:
	Sstm8s_clk$CLK_ClockSwitchConfig$73 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x06, sp)
	jrne	00128$
	ld	a, yl
	cp	a, #0xd2
	jrne	00128$
	Sstm8s_clk$CLK_ClockSwitchConfig$74 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$75 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$76 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	bres	20672, #3
	Sstm8s_clk$CLK_ClockSwitchConfig$77 ==.
	jra	00136$
00128$:
	Sstm8s_clk$CLK_ClockSwitchConfig$78 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x06, sp)
	jrne	00136$
	ld	a, yl
	cp	a, #0xb4
	jrne	00136$
	Sstm8s_clk$CLK_ClockSwitchConfig$79 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$80 ==.
	Sstm8s_clk$CLK_ClockSwitchConfig$81 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	bres	20673, #0
	Sstm8s_clk$CLK_ClockSwitchConfig$82 ==.
00136$:
	Sstm8s_clk$CLK_ClockSwitchConfig$83 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 406: return(Swif);
	ld	a, xl
	Sstm8s_clk$CLK_ClockSwitchConfig$84 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 407: }
	Sstm8s_clk$CLK_ClockSwitchConfig$85 ==.
	XG$CLK_ClockSwitchConfig$0$0 ==.
	ret
	Sstm8s_clk$CLK_ClockSwitchConfig$86 ==.
	Sstm8s_clk$CLK_GetClockFreq$87 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	Sstm8s_clk$CLK_GetClockFreq$88 ==.
	sub	sp, #4
	Sstm8s_clk$CLK_GetClockFreq$89 ==.
	Sstm8s_clk$CLK_GetClockFreq$90 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	ld	(0x04, sp), a
	Sstm8s_clk$CLK_GetClockFreq$91 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
	ld	a, (0x04, sp)
	cp	a, #0xe1
	jrne	00105$
	Sstm8s_clk$CLK_GetClockFreq$92 ==.
	Sstm8s_clk$CLK_GetClockFreq$93 ==.
	Sstm8s_clk$CLK_GetClockFreq$94 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0x18
	Sstm8s_clk$CLK_GetClockFreq$95 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
	Sstm8s_clk$CLK_GetClockFreq$96 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
	clrw	x
	ld	xl, a
	addw	x, #(_HSIDivFactor + 0)
	ld	a, (x)
	Sstm8s_clk$CLK_GetClockFreq$97 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
	clrw	x
	ld	xl, a
	clrw	y
	Sstm8s_clk$CLK_GetClockFreq$98 ==.
	pushw	x
	Sstm8s_clk$CLK_GetClockFreq$99 ==.
	pushw	y
	Sstm8s_clk$CLK_GetClockFreq$100 ==.
	push	#0x00
	Sstm8s_clk$CLK_GetClockFreq$101 ==.
	push	#0x24
	Sstm8s_clk$CLK_GetClockFreq$102 ==.
	push	#0xf4
	Sstm8s_clk$CLK_GetClockFreq$103 ==.
	push	#0x00
	Sstm8s_clk$CLK_GetClockFreq$104 ==.
	call	__divulong
	addw	sp, #8
	Sstm8s_clk$CLK_GetClockFreq$105 ==.
	ldw	(0x03, sp), x
	jra	00106$
00105$:
	Sstm8s_clk$CLK_GetClockFreq$106 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x04, sp)
	cp	a, #0xd2
	jrne	00102$
	Sstm8s_clk$CLK_GetClockFreq$107 ==.
	Sstm8s_clk$CLK_GetClockFreq$108 ==.
	Sstm8s_clk$CLK_GetClockFreq$109 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	(0x03, sp), x
	ldw	y, #0x0001
	Sstm8s_clk$CLK_GetClockFreq$110 ==.
	jra	00106$
00102$:
	Sstm8s_clk$CLK_GetClockFreq$111 ==.
	Sstm8s_clk$CLK_GetClockFreq$112 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
	ldw	x, #0x1200
	ldw	(0x03, sp), x
	ldw	y, #0x007a
	Sstm8s_clk$CLK_GetClockFreq$113 ==.
00106$:
	Sstm8s_clk$CLK_GetClockFreq$114 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
	ldw	x, (0x03, sp)
	Sstm8s_clk$CLK_GetClockFreq$115 ==.
;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
	addw	sp, #4
	Sstm8s_clk$CLK_GetClockFreq$116 ==.
	Sstm8s_clk$CLK_GetClockFreq$117 ==.
	XG$CLK_GetClockFreq$0$0 ==.
	ret
	Sstm8s_clk$CLK_GetClockFreq$118 ==.
	.area CODE
	.area CONST
G$HSIDivFactor$0_0$0 == .
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
G$CLKPrescTable$0_0$0 == .
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
	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_HSECmd$0)
	.db	3
	.sleb128	120
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$2-Sstm8s_clk$CLK_HSECmd$0
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$3-Sstm8s_clk$CLK_HSECmd$2
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$5-Sstm8s_clk$CLK_HSECmd$3
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$8-Sstm8s_clk$CLK_HSECmd$5
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_HSECmd$10-Sstm8s_clk$CLK_HSECmd$8
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_clk$CLK_HSECmd$11-Sstm8s_clk$CLK_HSECmd$10
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$13)
	.db	3
	.sleb128	308
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$15-Sstm8s_clk$CLK_ClockSwitchConfig$13
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$16-Sstm8s_clk$CLK_ClockSwitchConfig$15
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$17-Sstm8s_clk$CLK_ClockSwitchConfig$16
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$22-Sstm8s_clk$CLK_ClockSwitchConfig$17
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$24-Sstm8s_clk$CLK_ClockSwitchConfig$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$26-Sstm8s_clk$CLK_ClockSwitchConfig$24
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$29-Sstm8s_clk$CLK_ClockSwitchConfig$26
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$31-Sstm8s_clk$CLK_ClockSwitchConfig$29
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$33-Sstm8s_clk$CLK_ClockSwitchConfig$31
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$35-Sstm8s_clk$CLK_ClockSwitchConfig$33
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$37-Sstm8s_clk$CLK_ClockSwitchConfig$35
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$39-Sstm8s_clk$CLK_ClockSwitchConfig$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$42-Sstm8s_clk$CLK_ClockSwitchConfig$39
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$45-Sstm8s_clk$CLK_ClockSwitchConfig$42
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$47-Sstm8s_clk$CLK_ClockSwitchConfig$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$50-Sstm8s_clk$CLK_ClockSwitchConfig$47
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$52-Sstm8s_clk$CLK_ClockSwitchConfig$50
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$54-Sstm8s_clk$CLK_ClockSwitchConfig$52
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$56-Sstm8s_clk$CLK_ClockSwitchConfig$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$58-Sstm8s_clk$CLK_ClockSwitchConfig$56
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$60-Sstm8s_clk$CLK_ClockSwitchConfig$58
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$61-Sstm8s_clk$CLK_ClockSwitchConfig$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$64-Sstm8s_clk$CLK_ClockSwitchConfig$61
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$66-Sstm8s_clk$CLK_ClockSwitchConfig$64
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$68-Sstm8s_clk$CLK_ClockSwitchConfig$66
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$71-Sstm8s_clk$CLK_ClockSwitchConfig$68
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$73-Sstm8s_clk$CLK_ClockSwitchConfig$71
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$76-Sstm8s_clk$CLK_ClockSwitchConfig$73
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$78-Sstm8s_clk$CLK_ClockSwitchConfig$76
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$81-Sstm8s_clk$CLK_ClockSwitchConfig$78
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$83-Sstm8s_clk$CLK_ClockSwitchConfig$81
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$84-Sstm8s_clk$CLK_ClockSwitchConfig$83
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_clk$CLK_ClockSwitchConfig$85-Sstm8s_clk$CLK_ClockSwitchConfig$84
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$87)
	.db	3
	.sleb128	568
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$90-Sstm8s_clk$CLK_GetClockFreq$87
	.db	3
	.sleb128	7
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$91-Sstm8s_clk$CLK_GetClockFreq$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$94-Sstm8s_clk$CLK_GetClockFreq$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$95-Sstm8s_clk$CLK_GetClockFreq$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$96-Sstm8s_clk$CLK_GetClockFreq$95
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$97-Sstm8s_clk$CLK_GetClockFreq$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$106-Sstm8s_clk$CLK_GetClockFreq$97
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$109-Sstm8s_clk$CLK_GetClockFreq$106
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$112-Sstm8s_clk$CLK_GetClockFreq$109
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$114-Sstm8s_clk$CLK_GetClockFreq$112
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_clk$CLK_GetClockFreq$115-Sstm8s_clk$CLK_GetClockFreq$114
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_clk$CLK_GetClockFreq$117-Sstm8s_clk$CLK_GetClockFreq$115
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$118)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
	.dw	2
	.db	120
	.sleb128	13
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
	.dw	2
	.db	120
	.sleb128	12
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
	.dw	2
	.db	120
	.sleb128	11
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$86)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
	.dw	0,(Sstm8s_clk$CLK_HSECmd$12)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	13
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
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
	.uleb128	11
	.uleb128	1
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	11
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
	.uleb128	9
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
	.uleb128	6
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
	.uleb128	10
	.uleb128	38
	.db	0
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
	.uleb128	4
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
	.uleb128	7
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
	.uleb128	12
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	5
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
	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.dw	0,139
	.ascii "CLK_HSECmd"
	.db	0
	.dw	0,(_CLK_HSECmd)
	.dw	0,(XG$CLK_HSECmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+244)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,139
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_HSECmd$4)
	.dw	0,(Sstm8s_clk$CLK_HSECmd$6)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_HSECmd$7)
	.dw	0,(Sstm8s_clk$CLK_HSECmd$9)
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	6
	.dw	0,502
	.ascii "CLK_ClockSwitchConfig"
	.db	0
	.dw	0,(_CLK_ClockSwitchConfig)
	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+152)
	.dw	0,139
	.uleb128	3
	.db	2
	.db	145
	.sleb128	2
	.ascii "CLK_SwitchMode"
	.db	0
	.dw	0,139
	.uleb128	3
	.db	2
	.db	145
	.sleb128	3
	.ascii "CLK_NewClock"
	.db	0
	.dw	0,139
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "ITState"
	.db	0
	.dw	0,139
	.uleb128	3
	.db	2
	.db	145
	.sleb128	5
	.ascii "CLK_CurrentClockState"
	.db	0
	.dw	0,139
	.uleb128	7
	.dw	0,349
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$21)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$32)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$25)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$27)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$28)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$30)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$34)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$36)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$38)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$40)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$41)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$43)
	.uleb128	0
	.uleb128	7
	.dw	0,408
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$44)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$53)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$46)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$48)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$49)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$51)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$55)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$57)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$59)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$62)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$63)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$65)
	.uleb128	0
	.uleb128	8
	.dw	0,445
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$67)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$70)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$72)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$75)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$77)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$80)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$82)
	.uleb128	0
	.uleb128	9
	.db	1
	.db	83
	.ascii "clock_master"
	.db	0
	.dw	0,139
	.uleb128	9
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "DownCounter"
	.db	0
	.dw	0,502
	.uleb128	9
	.db	1
	.db	81
	.ascii "Swif"
	.db	0
	.dw	0,139
	.uleb128	0
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	5
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	6
	.dw	0,681
	.ascii "CLK_GetClockFreq"
	.db	0
	.dw	0,(_CLK_GetClockFreq)
	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,518
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$93)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$98)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$108)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$110)
	.uleb128	4
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$111)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$113)
	.uleb128	9
	.db	14
	.db	84
	.db	147
	.uleb128	1
	.db	83
	.db	147
	.uleb128	1
	.db	145
	.sleb128	-2
	.db	147
	.uleb128	1
	.db	145
	.sleb128	-1
	.db	147
	.uleb128	1
	.ascii "clockfrequency"
	.db	0
	.dw	0,518
	.uleb128	9
	.db	2
	.db	145
	.sleb128	-1
	.ascii "clocksource"
	.db	0
	.dw	0,139
	.uleb128	9
	.db	1
	.db	80
	.ascii "tmp"
	.db	0
	.dw	0,139
	.uleb128	9
	.db	1
	.db	80
	.ascii "presc"
	.db	0
	.dw	0,139
	.uleb128	0
	.uleb128	10
	.dw	0,139
	.uleb128	11
	.dw	0,699
	.db	4
	.dw	0,681
	.uleb128	12
	.db	3
	.uleb128	0
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_HSIDivFactor)
	.ascii "HSIDivFactor"
	.db	0
	.db	1
	.dw	0,686
	.uleb128	11
	.dw	0,737
	.db	8
	.dw	0,681
	.uleb128	12
	.db	7
	.uleb128	0
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_CLKPrescTable)
	.ascii "CLKPrescTable"
	.db	0
	.db	1
	.dw	0,724
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
	.ascii "CLK_HSECmd"
	.db	0
	.dw	0,156
	.ascii "CLK_ClockSwitchConfig"
	.db	0
	.dw	0,535
	.ascii "CLK_GetClockFreq"
	.db	0
	.dw	0,699
	.ascii "HSIDivFactor"
	.db	0
	.dw	0,737
	.ascii "CLKPrescTable"
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
	.dw	0,96
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)	;initial loc
	.dw	0,Sstm8s_clk$CLK_GetClockFreq$118-Sstm8s_clk$CLK_GetClockFreq$88
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$88)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$89)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$92)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$99)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$100)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$101)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$102)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$103)
	.db	14
	.uleb128	13
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$104)
	.db	14
	.uleb128	14
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$105)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$107)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$116)
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
	.dw	0,61
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)	;initial loc
	.dw	0,Sstm8s_clk$CLK_ClockSwitchConfig$86-Sstm8s_clk$CLK_ClockSwitchConfig$14
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$14)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$18)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$19)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$20)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$69)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$74)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$79)
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
	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)	;initial loc
	.dw	0,Sstm8s_clk$CLK_HSECmd$12-Sstm8s_clk$CLK_HSECmd$1
	.db	1
	.dw	0,(Sstm8s_clk$CLK_HSECmd$1)
	.db	14
	.uleb128	2
