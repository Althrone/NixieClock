;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DS3231_GetTime
	.globl _DS3231_Init
	.globl _NIXIE_DisplayTime
	.globl _NIXIE_Init
	.globl _GPS_Init
	.globl _CLK_DeInit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int 0x000000 ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int 0x000000 ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int _UART1_RX_IRQHandler ; int18
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$main$0 ==.
;	Source/User/main.c: 3: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	Smain$main$1 ==.
	Smain$main$2 ==.
;	Source/User/main.c: 5: CLK_DeInit();//全部外设的时钟都打开了
	call	_CLK_DeInit
	Smain$main$3 ==.
;	Source/User/main.c: 6: rim();
	rim
	Smain$main$4 ==.
;	Source/User/main.c: 8: GPS_Init();//PD5 PD6
	call	_GPS_Init
	Smain$main$5 ==.
;	Source/User/main.c: 9: NIXIE_Init();//PC5 PC6 PC7
	call	_NIXIE_Init
	Smain$main$6 ==.
;	Source/User/main.c: 10: DS3231_Init();
	call	_DS3231_Init
	Smain$main$7 ==.
;	Source/User/main.c: 11: while(1)
00102$:
	Smain$main$8 ==.
	Smain$main$9 ==.
;	Source/User/main.c: 13: NIXIE_DisplayTime(1,2);
	push	#0x02
	Smain$main$10 ==.
	push	#0x01
	Smain$main$11 ==.
	call	_NIXIE_DisplayTime
	popw	x
	Smain$main$12 ==.
	Smain$main$13 ==.
;	Source/User/main.c: 14: DS3231_GetTime();
	call	_DS3231_GetTime
	Smain$main$14 ==.
	jra	00102$
	Smain$main$15 ==.
;	Source/User/main.c: 16: }
	Smain$main$16 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$17 ==.
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
	.ascii "Source/User/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$0)
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$2-Smain$main$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$3-Smain$main$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$4-Smain$main$3
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$5-Smain$main$4
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$6-Smain$main$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$7-Smain$main$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$9-Smain$main$7
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$13-Smain$main$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$15-Smain$main$13
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$main$16-Smain$main$15
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$12)
	.dw	0,(Smain$main$17)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$11)
	.dw	0,(Smain$main$12)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$10)
	.dw	0,(Smain$main$11)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$main$1)
	.dw	0,(Smain$main$10)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	3
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
	.uleb128	2
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
	.ascii "Source/User/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	3
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,62
	.uleb128	4
	.dw	0,(Smain$main$8)
	.dw	0,(Smain$main$14)
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
	.dw	0,69
	.ascii "main"
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
	.dw	0,40
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$main$1)	;initial loc
	.dw	0,Smain$main$17-Smain$main$1
	.db	1
	.dw	0,(Smain$main$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$10)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Smain$main$11)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$12)
	.db	14
	.uleb128	2
