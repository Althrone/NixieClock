;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module stm8s_beep
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BEEP_DeInit
	.globl _BEEP_Init
	.globl _BEEP_Cmd
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
	Sstm8s_beep$BEEP_DeInit$0 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 54: void BEEP_DeInit(void)
;	-----------------------------------------
;	 function BEEP_DeInit
;	-----------------------------------------
_BEEP_DeInit:
	Sstm8s_beep$BEEP_DeInit$1 ==.
	Sstm8s_beep$BEEP_DeInit$2 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
	mov	0x50f3+0, #0x1f
	Sstm8s_beep$BEEP_DeInit$3 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 57: }
	Sstm8s_beep$BEEP_DeInit$4 ==.
	XG$BEEP_DeInit$0$0 ==.
	ret
	Sstm8s_beep$BEEP_DeInit$5 ==.
	Sstm8s_beep$BEEP_Init$6 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
;	-----------------------------------------
;	 function BEEP_Init
;	-----------------------------------------
_BEEP_Init:
	Sstm8s_beep$BEEP_Init$7 ==.
	Sstm8s_beep$BEEP_Init$8 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
	ld	a, 0x50f3
	and	a, #0x1f
	cp	a, #0x1f
	jrne	00102$
	Sstm8s_beep$BEEP_Init$9 ==.
	Sstm8s_beep$BEEP_Init$10 ==.
	Sstm8s_beep$BEEP_Init$11 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
	ld	a, 0x50f3
	and	a, #0xe0
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Init$12 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
	ld	a, 0x50f3
	or	a, #0x0b
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Init$13 ==.
00102$:
	Sstm8s_beep$BEEP_Init$14 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
	ld	a, 0x50f3
	and	a, #0x3f
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Init$15 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
	ld	a, 0x50f3
	or	a, (0x03, sp)
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Init$16 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 82: }
	Sstm8s_beep$BEEP_Init$17 ==.
	XG$BEEP_Init$0$0 ==.
	ret
	Sstm8s_beep$BEEP_Init$18 ==.
	Sstm8s_beep$BEEP_Cmd$19 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function BEEP_Cmd
;	-----------------------------------------
_BEEP_Cmd:
	Sstm8s_beep$BEEP_Cmd$20 ==.
	Sstm8s_beep$BEEP_Cmd$21 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
	ld	a, 0x50f3
	Sstm8s_beep$BEEP_Cmd$22 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 93: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
	Sstm8s_beep$BEEP_Cmd$23 ==.
	Sstm8s_beep$BEEP_Cmd$24 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
	or	a, #0x20
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Cmd$25 ==.
	jra	00104$
00102$:
	Sstm8s_beep$BEEP_Cmd$26 ==.
	Sstm8s_beep$BEEP_Cmd$27 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
	and	a, #0xdf
	ld	0x50f3, a
	Sstm8s_beep$BEEP_Cmd$28 ==.
00104$:
	Sstm8s_beep$BEEP_Cmd$29 ==.
;	Source/Std_Lib/Src/stm8s_beep.c: 103: }
	Sstm8s_beep$BEEP_Cmd$30 ==.
	XG$BEEP_Cmd$0$0 ==.
	ret
	Sstm8s_beep$BEEP_Cmd$31 ==.
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
	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_beep$BEEP_DeInit$0)
	.db	3
	.sleb128	53
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_DeInit$2-Sstm8s_beep$BEEP_DeInit$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_DeInit$3-Sstm8s_beep$BEEP_DeInit$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_beep$BEEP_DeInit$4-Sstm8s_beep$BEEP_DeInit$3
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_beep$BEEP_Init$6)
	.db	3
	.sleb128	66
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$8-Sstm8s_beep$BEEP_Init$6
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$11-Sstm8s_beep$BEEP_Init$8
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$12-Sstm8s_beep$BEEP_Init$11
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$14-Sstm8s_beep$BEEP_Init$12
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$15-Sstm8s_beep$BEEP_Init$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Init$16-Sstm8s_beep$BEEP_Init$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sstm8s_beep$BEEP_Init$17-Sstm8s_beep$BEEP_Init$16
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_beep$BEEP_Cmd$19)
	.db	3
	.sleb128	90
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Cmd$21-Sstm8s_beep$BEEP_Cmd$19
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Cmd$22-Sstm8s_beep$BEEP_Cmd$21
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Cmd$24-Sstm8s_beep$BEEP_Cmd$22
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Cmd$27-Sstm8s_beep$BEEP_Cmd$24
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_beep$BEEP_Cmd$29-Sstm8s_beep$BEEP_Cmd$27
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sstm8s_beep$BEEP_Cmd$30-Sstm8s_beep$BEEP_Cmd$29
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
	.dw	0,(Sstm8s_beep$BEEP_Cmd$31)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_beep$BEEP_Init$9)
	.dw	0,(Sstm8s_beep$BEEP_Init$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sstm8s_beep$BEEP_Init$7)
	.dw	0,(Sstm8s_beep$BEEP_Init$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
	.dw	0,(Sstm8s_beep$BEEP_DeInit$5)
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
	.uleb128	7
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
	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "BEEP_DeInit"
	.db	0
	.dw	0,(_BEEP_DeInit)
	.dw	0,(XG$BEEP_DeInit$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+52)
	.uleb128	3
	.dw	0,162
	.ascii "BEEP_Init"
	.db	0
	.dw	0,(_BEEP_Init)
	.dw	0,(XG$BEEP_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "BEEP_Frequency"
	.db	0
	.dw	0,162
	.uleb128	5
	.dw	0,(Sstm8s_beep$BEEP_Init$10)
	.dw	0,(Sstm8s_beep$BEEP_Init$13)
	.uleb128	0
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	7
	.ascii "BEEP_Cmd"
	.db	0
	.dw	0,(_BEEP_Cmd)
	.dw	0,(XG$BEEP_Cmd$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	2
	.ascii "NewState"
	.db	0
	.dw	0,162
	.uleb128	5
	.dw	0,(Sstm8s_beep$BEEP_Cmd$23)
	.dw	0,(Sstm8s_beep$BEEP_Cmd$25)
	.uleb128	5
	.dw	0,(Sstm8s_beep$BEEP_Cmd$26)
	.dw	0,(Sstm8s_beep$BEEP_Cmd$28)
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
	.ascii "BEEP_DeInit"
	.db	0
	.dw	0,101
	.ascii "BEEP_Init"
	.db	0
	.dw	0,179
	.ascii "BEEP_Cmd"
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
	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)	;initial loc
	.dw	0,Sstm8s_beep$BEEP_Cmd$31-Sstm8s_beep$BEEP_Cmd$20
	.db	1
	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
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
	.dw	0,26
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sstm8s_beep$BEEP_Init$7)	;initial loc
	.dw	0,Sstm8s_beep$BEEP_Init$18-Sstm8s_beep$BEEP_Init$7
	.db	1
	.dw	0,(Sstm8s_beep$BEEP_Init$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sstm8s_beep$BEEP_Init$9)
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
	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)	;initial loc
	.dw	0,Sstm8s_beep$BEEP_DeInit$5-Sstm8s_beep$BEEP_DeInit$1
	.db	1
	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
	.db	14
	.uleb128	2
