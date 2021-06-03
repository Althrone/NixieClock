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
;	Source/User/main.c: 3: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	Source/User/main.c: 5: CLK_DeInit();//全部外设的时钟都打开了
	call	_CLK_DeInit
;	Source/User/main.c: 6: rim();
	rim
;	Source/User/main.c: 8: GPS_Init();//PD5 PD6
	call	_GPS_Init
;	Source/User/main.c: 9: NIXIE_Init();//PC5 PC6 PC7
	call	_NIXIE_Init
;	Source/User/main.c: 10: DS3231_Init();
	call	_DS3231_Init
;	Source/User/main.c: 11: while(1)
00102$:
;	Source/User/main.c: 13: NIXIE_DisplayTime(1,2);
	push	#0x02
	push	#0x01
	call	_NIXIE_DisplayTime
	popw	x
;	Source/User/main.c: 14: DS3231_GetTime();
	call	_DS3231_GetTime
	jra	00102$
;	Source/User/main.c: 16: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
