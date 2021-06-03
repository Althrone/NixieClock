;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module ds3231
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_MasterReceiveData
	.globl _I2C_Init
	.globl _DS3231_Buf
	.globl _DS3231_TimeSturcture
	.globl _DS3231_Init
	.globl _DS3231_GetTime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_DS3231_TimeSturcture::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_DS3231_Buf::
	.ds 8
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
;	Source/Device/Src/ds3231.c: 29: void DS3231_Init(void)
;	-----------------------------------------
;	 function DS3231_Init
;	-----------------------------------------
_DS3231_Init:
;	Source/Device/Src/ds3231.c: 31: I2C_Init();
;	Source/Device/Src/ds3231.c: 32: }
	jp	_I2C_Init
;	Source/Device/Src/ds3231.c: 34: void DS3231_GetTime(void)
;	-----------------------------------------
;	 function DS3231_GetTime
;	-----------------------------------------
_DS3231_GetTime:
	sub	sp, #4
;	Source/Device/Src/ds3231.c: 36: for(int i=0;i<7;++i)
	clrw	x
	ldw	(0x03, sp), x
00103$:
	ldw	x, (0x03, sp)
	cpw	x, #0x0007
	jrsge	00101$
;	Source/Device/Src/ds3231.c: 39: &DS3231_Buf[i],1);
	ldw	x, (0x03, sp)
	addw	x, #(_DS3231_Buf + 0)
;	Source/Device/Src/ds3231.c: 38: I2C_MasterReceiveData(DS3231_ADDR,DS3231_SECONDS+i,
	ld	a, (0x04, sp)
	push	#0x01
	pushw	x
	push	a
	push	#0x68
	call	_I2C_MasterReceiveData
	addw	sp, #5
;	Source/Device/Src/ds3231.c: 36: for(int i=0;i<7;++i)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00103$
00101$:
;	Source/Device/Src/ds3231.c: 42: DS3231_TimeSturcture.seconds=(DS3231_Buf[0]&0x0F)+((DS3231_Buf[0]&0xF0)>>4)*10;
	ld	a, _DS3231_Buf+0
	ld	xl, a
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	ld	a, #0x0a
	mul	x, a
	ld	a, xl
	add	a, (0x04, sp)
	ld	_DS3231_TimeSturcture+0, a
;	Source/Device/Src/ds3231.c: 43: DS3231_TimeSturcture.minutes=(DS3231_Buf[1]&0x0F)+((DS3231_Buf[1]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+1
	ld	a, _DS3231_Buf+1
	ld	xl, a
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	ld	a, #0x0a
	mul	x, a
	ld	a, xl
	add	a, (0x04, sp)
	ld	(y), a
;	Source/Device/Src/ds3231.c: 44: DS3231_TimeSturcture.hours=(DS3231_Buf[2]&0x0F)+((DS3231_Buf[2]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+2
	ld	a, _DS3231_Buf+2
	ld	xl, a
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	ld	a, #0x0a
	mul	x, a
	ld	a, xl
	add	a, (0x04, sp)
	ld	(y), a
;	Source/Device/Src/ds3231.c: 45: DS3231_TimeSturcture.day=(DS3231_Buf[3]&0x0F);
	ldw	x, #(_DS3231_TimeSturcture + 0)+3
	ld	a, _DS3231_Buf+3
	and	a, #0x0f
	ld	(x), a
;	Source/Device/Src/ds3231.c: 46: DS3231_TimeSturcture.date=(DS3231_Buf[4]&0x0F)+((DS3231_Buf[4]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+4
	ld	a, _DS3231_Buf+4
	ld	xl, a
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	ld	a, #0x0a
	mul	x, a
	ld	a, xl
	add	a, (0x04, sp)
	ld	(y), a
;	Source/Device/Src/ds3231.c: 47: DS3231_TimeSturcture.month=(DS3231_Buf[5]&0x0F)+((DS3231_Buf[5]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+5
	ld	a, _DS3231_Buf+5
	ld	xl, a
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	ld	a, #0x0a
	mul	x, a
	ld	a, xl
	add	a, (0x04, sp)
	ld	(y), a
;	Source/Device/Src/ds3231.c: 48: DS3231_TimeSturcture.year=2000+(DS3231_Buf[6]&0x0F)+((DS3231_Buf[6]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+6
	ld	a, _DS3231_Buf+6
	clr	(0x01, sp)
	push	a
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
	addw	x, #0x07d0
	ldw	(0x03, sp), x
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	sraw	x
	sraw	x
	sraw	x
	sraw	x
	pushw	x
	sllw	x
	sllw	x
	addw	x, (1, sp)
	sllw	x
	addw	sp, #2
	addw	x, (0x03, sp)
	ldw	(y), x
;	Source/Device/Src/ds3231.c: 49: }
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__DS3231_Buf:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area CABS (ABS)
