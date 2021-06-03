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
G$DS3231_TimeSturcture$0_0$0==.
_DS3231_TimeSturcture::
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$DS3231_Buf$0_0$0==.
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
	Sds3231$DS3231_Init$0 ==.
;	Source/Device/Src/ds3231.c: 29: void DS3231_Init(void)
;	-----------------------------------------
;	 function DS3231_Init
;	-----------------------------------------
_DS3231_Init:
	Sds3231$DS3231_Init$1 ==.
	Sds3231$DS3231_Init$2 ==.
;	Source/Device/Src/ds3231.c: 31: I2C_Init();
	jp	_I2C_Init
	Sds3231$DS3231_Init$3 ==.
;	Source/Device/Src/ds3231.c: 32: }
	Sds3231$DS3231_Init$4 ==.
	XG$DS3231_Init$0$0 ==.
	ret
	Sds3231$DS3231_Init$5 ==.
	Sds3231$DS3231_GetTime$6 ==.
;	Source/Device/Src/ds3231.c: 34: void DS3231_GetTime(void)
;	-----------------------------------------
;	 function DS3231_GetTime
;	-----------------------------------------
_DS3231_GetTime:
	Sds3231$DS3231_GetTime$7 ==.
	sub	sp, #4
	Sds3231$DS3231_GetTime$8 ==.
	Sds3231$DS3231_GetTime$9 ==.
	Sds3231$DS3231_GetTime$10 ==.
;	Source/Device/Src/ds3231.c: 36: for(int i=0;i<7;++i)
	Sds3231$DS3231_GetTime$11 ==.
	clrw	x
	ldw	(0x03, sp), x
	Sds3231$DS3231_GetTime$12 ==.
00103$:
	ldw	x, (0x03, sp)
	cpw	x, #0x0007
	jrsge	00101$
	Sds3231$DS3231_GetTime$13 ==.
;	Source/Device/Src/ds3231.c: 39: &DS3231_Buf[i],1);
	ldw	x, (0x03, sp)
	addw	x, #(_DS3231_Buf + 0)
	Sds3231$DS3231_GetTime$14 ==.
;	Source/Device/Src/ds3231.c: 38: I2C_MasterReceiveData(DS3231_ADDR,DS3231_SECONDS+i,
	ld	a, (0x04, sp)
	push	#0x01
	Sds3231$DS3231_GetTime$15 ==.
	pushw	x
	Sds3231$DS3231_GetTime$16 ==.
	push	a
	Sds3231$DS3231_GetTime$17 ==.
	push	#0x68
	Sds3231$DS3231_GetTime$18 ==.
	call	_I2C_MasterReceiveData
	addw	sp, #5
	Sds3231$DS3231_GetTime$19 ==.
	Sds3231$DS3231_GetTime$20 ==.
	Sds3231$DS3231_GetTime$21 ==.
;	Source/Device/Src/ds3231.c: 36: for(int i=0;i<7;++i)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00103$
00101$:
	Sds3231$DS3231_GetTime$22 ==.
	Sds3231$DS3231_GetTime$23 ==.
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
	Sds3231$DS3231_GetTime$24 ==.
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
	Sds3231$DS3231_GetTime$25 ==.
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
	Sds3231$DS3231_GetTime$26 ==.
;	Source/Device/Src/ds3231.c: 45: DS3231_TimeSturcture.day=(DS3231_Buf[3]&0x0F);
	ldw	x, #(_DS3231_TimeSturcture + 0)+3
	ld	a, _DS3231_Buf+3
	and	a, #0x0f
	ld	(x), a
	Sds3231$DS3231_GetTime$27 ==.
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
	Sds3231$DS3231_GetTime$28 ==.
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
	Sds3231$DS3231_GetTime$29 ==.
;	Source/Device/Src/ds3231.c: 48: DS3231_TimeSturcture.year=2000+(DS3231_Buf[6]&0x0F)+((DS3231_Buf[6]&0xF0)>>4)*10;
	ldw	y, #(_DS3231_TimeSturcture + 0)+6
	ld	a, _DS3231_Buf+6
	clr	(0x01, sp)
	push	a
	Sds3231$DS3231_GetTime$30 ==.
	and	a, #0x0f
	ld	xl, a
	clr	a
	ld	xh, a
	pop	a
	Sds3231$DS3231_GetTime$31 ==.
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
	Sds3231$DS3231_GetTime$32 ==.
	sllw	x
	sllw	x
	addw	x, (1, sp)
	sllw	x
	addw	sp, #2
	Sds3231$DS3231_GetTime$33 ==.
	addw	x, (0x03, sp)
	ldw	(y), x
	Sds3231$DS3231_GetTime$34 ==.
;	Source/Device/Src/ds3231.c: 49: }
	addw	sp, #4
	Sds3231$DS3231_GetTime$35 ==.
	Sds3231$DS3231_GetTime$36 ==.
	XG$DS3231_GetTime$0$0 ==.
	ret
	Sds3231$DS3231_GetTime$37 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fds3231$__xinit_DS3231_Buf$0_0$0 == .
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
	.ascii "Source/Device/Src/ds3231.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sds3231$DS3231_Init$0)
	.db	3
	.sleb128	28
	.db	1
	.db	9
	.dw	Sds3231$DS3231_Init$2-Sds3231$DS3231_Init$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sds3231$DS3231_Init$3-Sds3231$DS3231_Init$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sds3231$DS3231_Init$4-Sds3231$DS3231_Init$3
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sds3231$DS3231_GetTime$6)
	.db	3
	.sleb128	33
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$10-Sds3231$DS3231_GetTime$6
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$13-Sds3231$DS3231_GetTime$10
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$14-Sds3231$DS3231_GetTime$13
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$21-Sds3231$DS3231_GetTime$14
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$23-Sds3231$DS3231_GetTime$21
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$24-Sds3231$DS3231_GetTime$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$25-Sds3231$DS3231_GetTime$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$26-Sds3231$DS3231_GetTime$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$27-Sds3231$DS3231_GetTime$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$28-Sds3231$DS3231_GetTime$27
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$29-Sds3231$DS3231_GetTime$28
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GetTime$34-Sds3231$DS3231_GetTime$29
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sds3231$DS3231_GetTime$36-Sds3231$DS3231_GetTime$34
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sds3231$DS3231_GetTime$35)
	.dw	0,(Sds3231$DS3231_GetTime$37)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sds3231$DS3231_GetTime$33)
	.dw	0,(Sds3231$DS3231_GetTime$35)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sds3231$DS3231_GetTime$32)
	.dw	0,(Sds3231$DS3231_GetTime$33)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sds3231$DS3231_GetTime$31)
	.dw	0,(Sds3231$DS3231_GetTime$32)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sds3231$DS3231_GetTime$30)
	.dw	0,(Sds3231$DS3231_GetTime$31)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sds3231$DS3231_GetTime$19)
	.dw	0,(Sds3231$DS3231_GetTime$30)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sds3231$DS3231_GetTime$18)
	.dw	0,(Sds3231$DS3231_GetTime$19)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Sds3231$DS3231_GetTime$17)
	.dw	0,(Sds3231$DS3231_GetTime$18)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sds3231$DS3231_GetTime$16)
	.dw	0,(Sds3231$DS3231_GetTime$17)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sds3231$DS3231_GetTime$15)
	.dw	0,(Sds3231$DS3231_GetTime$16)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sds3231$DS3231_GetTime$8)
	.dw	0,(Sds3231$DS3231_GetTime$15)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sds3231$DS3231_GetTime$7)
	.dw	0,(Sds3231$DS3231_GetTime$8)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sds3231$DS3231_Init$1)
	.dw	0,(Sds3231$DS3231_Init$5)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	10
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
	.uleb128	8
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
	.uleb128	6
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
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	12
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
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	11
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
	.uleb128	7
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
	.ascii "Source/Device/Src/ds3231.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "DS3231_Init"
	.db	0
	.dw	0,(_DS3231_Init)
	.dw	0,(XG$DS3231_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+152)
	.uleb128	3
	.dw	0,159
	.ascii "DS3231_GetTime"
	.db	0
	.dw	0,(_DS3231_GetTime)
	.dw	0,(XG$DS3231_GetTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	4
	.dw	0,(Sds3231$DS3231_GetTime$12)
	.dw	0,(Sds3231$DS3231_GetTime$22)
	.uleb128	5
	.dw	0,(Sds3231$DS3231_GetTime$9)
	.dw	0,(Sds3231$DS3231_GetTime$11)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-2
	.ascii "i"
	.db	0
	.dw	0,159
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	8
	.dw	0,196
	.db	8
	.dw	0,166
	.uleb128	9
	.db	7
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_DS3231_Buf)
	.ascii "DS3231_Buf"
	.db	0
	.db	1
	.dw	0,183
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	11
	.dw	0,351
	.ascii "__00000009"
	.db	0
	.db	8
	.uleb128	12
	.ascii "seconds"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,166
	.uleb128	12
	.ascii "minutes"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,166
	.uleb128	12
	.ascii "hours"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,166
	.uleb128	12
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,166
	.uleb128	12
	.ascii "date"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,166
	.uleb128	12
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	5
	.dw	0,166
	.uleb128	12
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	6
	.dw	0,219
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_DS3231_TimeSturcture)
	.ascii "DS3231_TimeSturcture"
	.db	0
	.db	1
	.dw	0,235
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
	.dw	0,70
	.ascii "DS3231_Init"
	.db	0
	.dw	0,96
	.ascii "DS3231_GetTime"
	.db	0
	.dw	0,196
	.ascii "DS3231_Buf"
	.db	0
	.dw	0,351
	.ascii "DS3231_TimeSturcture"
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
	.dw	0,(Sds3231$DS3231_GetTime$7)	;initial loc
	.dw	0,Sds3231$DS3231_GetTime$37-Sds3231$DS3231_GetTime$7
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$8)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$15)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$16)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$17)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$18)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$19)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$30)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$31)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$32)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$33)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sds3231$DS3231_GetTime$35)
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
	.dw	0,(Sds3231$DS3231_Init$1)	;initial loc
	.dw	0,Sds3231$DS3231_Init$5-Sds3231$DS3231_Init$1
	.db	1
	.dw	0,(Sds3231$DS3231_Init$1)
	.db	14
	.uleb128	2
