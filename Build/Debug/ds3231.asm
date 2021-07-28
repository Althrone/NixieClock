;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module ds3231
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_MasterSendData
	.globl _I2C_MasterReceiveData
	.globl _I2C_Init
	.globl _DS3231_Buf
	.globl _DS3231_TimeSturcture
	.globl _DS3231_Init
	.globl _DS3231_GetTime
	.globl _DS3231_GPSSetTime
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
;	Source/Device/Src/ds3231.c: 30: void DS3231_Init(void)
;	-----------------------------------------
;	 function DS3231_Init
;	-----------------------------------------
_DS3231_Init:
	Sds3231$DS3231_Init$1 ==.
	Sds3231$DS3231_Init$2 ==.
;	Source/Device/Src/ds3231.c: 32: I2C_Init();
	jp	_I2C_Init
	Sds3231$DS3231_Init$3 ==.
;	Source/Device/Src/ds3231.c: 33: }
	Sds3231$DS3231_Init$4 ==.
	XG$DS3231_Init$0$0 ==.
	ret
	Sds3231$DS3231_Init$5 ==.
	Sds3231$DS3231_GetTime$6 ==.
;	Source/Device/Src/ds3231.c: 35: void DS3231_GetTime(void)
;	-----------------------------------------
;	 function DS3231_GetTime
;	-----------------------------------------
_DS3231_GetTime:
	Sds3231$DS3231_GetTime$7 ==.
	sub	sp, #4
	Sds3231$DS3231_GetTime$8 ==.
	Sds3231$DS3231_GetTime$9 ==.
	Sds3231$DS3231_GetTime$10 ==.
;	Source/Device/Src/ds3231.c: 37: for(int i=0;i<7;++i)
	Sds3231$DS3231_GetTime$11 ==.
	clrw	x
	ldw	(0x03, sp), x
	Sds3231$DS3231_GetTime$12 ==.
00103$:
	ldw	x, (0x03, sp)
	cpw	x, #0x0007
	jrsge	00101$
	Sds3231$DS3231_GetTime$13 ==.
;	Source/Device/Src/ds3231.c: 40: &DS3231_Buf[i],1);
	ldw	x, (0x03, sp)
	addw	x, #(_DS3231_Buf + 0)
	Sds3231$DS3231_GetTime$14 ==.
;	Source/Device/Src/ds3231.c: 39: I2C_MasterReceiveData(DS3231_ADDR,DS3231_SECONDS+i,
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
;	Source/Device/Src/ds3231.c: 37: for(int i=0;i<7;++i)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00103$
00101$:
	Sds3231$DS3231_GetTime$22 ==.
	Sds3231$DS3231_GetTime$23 ==.
;	Source/Device/Src/ds3231.c: 45: DS3231_TimeSturcture.seconds=(DS3231_Buf[0]&0x0F)+((DS3231_Buf[0]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 46: DS3231_TimeSturcture.minutes=(DS3231_Buf[1]&0x0F)+((DS3231_Buf[1]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 47: DS3231_TimeSturcture.hours=(DS3231_Buf[2]&0x0F)+((DS3231_Buf[2]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 48: DS3231_TimeSturcture.day=(DS3231_Buf[3]&0x0F);
	ldw	x, #(_DS3231_TimeSturcture + 0)+3
	ld	a, _DS3231_Buf+3
	and	a, #0x0f
	ld	(x), a
	Sds3231$DS3231_GetTime$27 ==.
;	Source/Device/Src/ds3231.c: 49: DS3231_TimeSturcture.date=(DS3231_Buf[4]&0x0F)+((DS3231_Buf[4]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 50: DS3231_TimeSturcture.month=(DS3231_Buf[5]&0x0F)+((DS3231_Buf[5]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 51: DS3231_TimeSturcture.year=2000+(DS3231_Buf[6]&0x0F)+((DS3231_Buf[6]&0xF0)>>4)*10;
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
;	Source/Device/Src/ds3231.c: 52: }
	addw	sp, #4
	Sds3231$DS3231_GetTime$35 ==.
	Sds3231$DS3231_GetTime$36 ==.
	XG$DS3231_GetTime$0$0 ==.
	ret
	Sds3231$DS3231_GetTime$37 ==.
	Sds3231$DS3231_GPSSetTime$38 ==.
;	Source/Device/Src/ds3231.c: 54: void DS3231_GPSSetTime(void)
;	-----------------------------------------
;	 function DS3231_GPSSetTime
;	-----------------------------------------
_DS3231_GPSSetTime:
	Sds3231$DS3231_GPSSetTime$39 ==.
	sub	sp, #21
	Sds3231$DS3231_GPSSetTime$40 ==.
	Sds3231$DS3231_GPSSetTime$41 ==.
;	Source/Device/Src/ds3231.c: 56: uint8_t tmp[7]={0};
	clr	(0x01, sp)
	ldw	x, sp
	addw	x, #2
	ldw	(0x08, sp), x
	clr	(x)
	ldw	x, sp
	addw	x, #3
	ldw	(0x0a, sp), x
	clr	(x)
	ldw	x, sp
	addw	x, #4
	ldw	(0x0c, sp), x
	clr	(x)
	ldw	x, sp
	addw	x, #5
	ldw	(0x0e, sp), x
	clr	(x)
	ldw	x, sp
	addw	x, #6
	ldw	(0x10, sp), x
	clr	(x)
	ldw	x, sp
	addw	x, #7
	ldw	(0x12, sp), x
	clr	(x)
	Sds3231$DS3231_GPSSetTime$42 ==.
;	Source/Device/Src/ds3231.c: 57: tmp[0]=(((GPS_TimeDataSturcture.sec+3)/10)<<4)|((GPS_TimeDataSturcture.sec+3)%10);
	ld	a, _GPS_TimeDataSturcture+20
	clrw	x
	ld	xl, a
	addw	x, #0x0003
	pushw	x
	Sds3231$DS3231_GPSSetTime$43 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$44 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$45 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$46 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$47 ==.
	ldw	(0x16, sp), x
	popw	x
	Sds3231$DS3231_GPSSetTime$48 ==.
	ld	a, (0x15, sp)
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$49 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$50 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$51 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$52 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$53 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$54 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$55 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$56 ==.
	ld	(0x01, sp), a
	Sds3231$DS3231_GPSSetTime$57 ==.
;	Source/Device/Src/ds3231.c: 58: tmp[1]=((GPS_TimeDataSturcture.min/10)<<4)|(GPS_TimeDataSturcture.min%10);
	ld	a, _GPS_TimeDataSturcture+19
	clrw	x
	ld	xl, a
	pushw	x
	Sds3231$DS3231_GPSSetTime$58 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$59 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$60 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$61 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$62 ==.
	ldw	(0x16, sp), x
	popw	x
	Sds3231$DS3231_GPSSetTime$63 ==.
	ld	a, (0x15, sp)
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$64 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$65 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$66 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$67 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$68 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$69 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$70 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$71 ==.
	ldw	x, (0x08, sp)
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$72 ==.
;	Source/Device/Src/ds3231.c: 59: tmp[2]=((GPS_TimeDataSturcture.hour/10)<<4)|(GPS_TimeDataSturcture.hour%10);//24小时制
	ld	a, _GPS_TimeDataSturcture+18
	clrw	x
	ld	xl, a
	pushw	x
	Sds3231$DS3231_GPSSetTime$73 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$74 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$75 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$76 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$77 ==.
	ldw	(0x16, sp), x
	popw	x
	Sds3231$DS3231_GPSSetTime$78 ==.
	ld	a, (0x15, sp)
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$79 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$80 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$81 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$82 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$83 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$84 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$85 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$86 ==.
	ldw	x, (0x0a, sp)
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$87 ==.
;	Source/Device/Src/ds3231.c: 60: tmp[3]=2;//这个自己设置，gps信号里面没有
	ldw	x, (0x0c, sp)
	ld	a, #0x02
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$88 ==.
;	Source/Device/Src/ds3231.c: 61: tmp[4]=((GPS_TimeDataSturcture.day/10)<<4)|(GPS_TimeDataSturcture.day%10);
	ld	a, _GPS_TimeDataSturcture+17
	clrw	x
	ld	xl, a
	pushw	x
	Sds3231$DS3231_GPSSetTime$89 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$90 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$91 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$92 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$93 ==.
	ldw	(0x16, sp), x
	popw	x
	Sds3231$DS3231_GPSSetTime$94 ==.
	ld	a, (0x15, sp)
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$95 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$96 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$97 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$98 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$99 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$100 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$101 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$102 ==.
	ldw	x, (0x0e, sp)
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$103 ==.
;	Source/Device/Src/ds3231.c: 62: tmp[5]=((GPS_TimeDataSturcture.month/10)<<4)|(GPS_TimeDataSturcture.month%10);//世纪位我这辈子都用不到了
	ldw	x, #(_GPS_TimeDataSturcture + 0)+16
	ldw	(0x0e, sp), x
	ld	a, (x)
	clrw	x
	ld	xl, a
	pushw	x
	Sds3231$DS3231_GPSSetTime$104 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$105 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$106 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$107 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$108 ==.
	ldw	(0x16, sp), x
	popw	x
	Sds3231$DS3231_GPSSetTime$109 ==.
	ld	a, (0x15, sp)
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$110 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$111 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$112 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$113 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$114 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$115 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$116 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$117 ==.
	ldw	x, (0x10, sp)
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$118 ==.
;	Source/Device/Src/ds3231.c: 63: tmp[6]=((GPS_TimeDataSturcture.month%100/10)<<4)|(GPS_TimeDataSturcture.month%10);
	ldw	x, (0x0e, sp)
	ld	a, (x)
	ld	(0x15, sp), a
	clr	(0x14, sp)
	push	#0x64
	Sds3231$DS3231_GPSSetTime$119 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$120 ==.
	ldw	x, (0x16, sp)
	pushw	x
	Sds3231$DS3231_GPSSetTime$121 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$122 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$123 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$124 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$125 ==.
	call	__divsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$126 ==.
	ld	a, xl
	swap	a
	and	a, #0xf0
	push	a
	Sds3231$DS3231_GPSSetTime$127 ==.
	push	#0x0a
	Sds3231$DS3231_GPSSetTime$128 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$129 ==.
	ldw	x, (0x17, sp)
	pushw	x
	Sds3231$DS3231_GPSSetTime$130 ==.
	call	__modsint
	addw	sp, #4
	Sds3231$DS3231_GPSSetTime$131 ==.
	pop	a
	Sds3231$DS3231_GPSSetTime$132 ==.
	pushw	x
	Sds3231$DS3231_GPSSetTime$133 ==.
	or	a, (2, sp)
	popw	x
	Sds3231$DS3231_GPSSetTime$134 ==.
	ldw	x, (0x12, sp)
	ld	(x), a
	Sds3231$DS3231_GPSSetTime$135 ==.
;	Source/Device/Src/ds3231.c: 64: I2C_MasterSendData(DS3231_ADDR,DS3231_SECONDS,tmp,sizeof(tmp));
	push	#0x07
	Sds3231$DS3231_GPSSetTime$136 ==.
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	Sds3231$DS3231_GPSSetTime$137 ==.
	push	#0x00
	Sds3231$DS3231_GPSSetTime$138 ==.
	push	#0x68
	Sds3231$DS3231_GPSSetTime$139 ==.
	call	_I2C_MasterSendData
	addw	sp, #5
	Sds3231$DS3231_GPSSetTime$140 ==.
	Sds3231$DS3231_GPSSetTime$141 ==.
;	Source/Device/Src/ds3231.c: 65: }
	addw	sp, #21
	Sds3231$DS3231_GPSSetTime$142 ==.
	Sds3231$DS3231_GPSSetTime$143 ==.
	XG$DS3231_GPSSetTime$0$0 ==.
	ret
	Sds3231$DS3231_GPSSetTime$144 ==.
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
	.sleb128	29
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
	.sleb128	34
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
	.sleb128	8
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
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sds3231$DS3231_GPSSetTime$38)
	.db	3
	.sleb128	53
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$41-Sds3231$DS3231_GPSSetTime$38
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$42-Sds3231$DS3231_GPSSetTime$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$57-Sds3231$DS3231_GPSSetTime$42
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$72-Sds3231$DS3231_GPSSetTime$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$87-Sds3231$DS3231_GPSSetTime$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$88-Sds3231$DS3231_GPSSetTime$87
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$103-Sds3231$DS3231_GPSSetTime$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$118-Sds3231$DS3231_GPSSetTime$103
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$135-Sds3231$DS3231_GPSSetTime$118
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sds3231$DS3231_GPSSetTime$141-Sds3231$DS3231_GPSSetTime$135
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sds3231$DS3231_GPSSetTime$143-Sds3231$DS3231_GPSSetTime$141
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sds3231$DS3231_GPSSetTime$142)
	.dw	0,(Sds3231$DS3231_GPSSetTime$144)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$140)
	.dw	0,(Sds3231$DS3231_GPSSetTime$142)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$139)
	.dw	0,(Sds3231$DS3231_GPSSetTime$140)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$138)
	.dw	0,(Sds3231$DS3231_GPSSetTime$139)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$137)
	.dw	0,(Sds3231$DS3231_GPSSetTime$138)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$136)
	.dw	0,(Sds3231$DS3231_GPSSetTime$137)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$134)
	.dw	0,(Sds3231$DS3231_GPSSetTime$136)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$133)
	.dw	0,(Sds3231$DS3231_GPSSetTime$134)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$132)
	.dw	0,(Sds3231$DS3231_GPSSetTime$133)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$131)
	.dw	0,(Sds3231$DS3231_GPSSetTime$132)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$130)
	.dw	0,(Sds3231$DS3231_GPSSetTime$131)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$129)
	.dw	0,(Sds3231$DS3231_GPSSetTime$130)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$128)
	.dw	0,(Sds3231$DS3231_GPSSetTime$129)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$127)
	.dw	0,(Sds3231$DS3231_GPSSetTime$128)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$126)
	.dw	0,(Sds3231$DS3231_GPSSetTime$127)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$125)
	.dw	0,(Sds3231$DS3231_GPSSetTime$126)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$124)
	.dw	0,(Sds3231$DS3231_GPSSetTime$125)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$123)
	.dw	0,(Sds3231$DS3231_GPSSetTime$124)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$122)
	.dw	0,(Sds3231$DS3231_GPSSetTime$123)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$121)
	.dw	0,(Sds3231$DS3231_GPSSetTime$122)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$120)
	.dw	0,(Sds3231$DS3231_GPSSetTime$121)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$119)
	.dw	0,(Sds3231$DS3231_GPSSetTime$120)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$117)
	.dw	0,(Sds3231$DS3231_GPSSetTime$119)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$116)
	.dw	0,(Sds3231$DS3231_GPSSetTime$117)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$115)
	.dw	0,(Sds3231$DS3231_GPSSetTime$116)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$114)
	.dw	0,(Sds3231$DS3231_GPSSetTime$115)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$113)
	.dw	0,(Sds3231$DS3231_GPSSetTime$114)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$112)
	.dw	0,(Sds3231$DS3231_GPSSetTime$113)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$111)
	.dw	0,(Sds3231$DS3231_GPSSetTime$112)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$110)
	.dw	0,(Sds3231$DS3231_GPSSetTime$111)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$109)
	.dw	0,(Sds3231$DS3231_GPSSetTime$110)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$108)
	.dw	0,(Sds3231$DS3231_GPSSetTime$109)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$107)
	.dw	0,(Sds3231$DS3231_GPSSetTime$108)
	.dw	2
	.db	120
	.sleb128	28
	.dw	0,(Sds3231$DS3231_GPSSetTime$106)
	.dw	0,(Sds3231$DS3231_GPSSetTime$107)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$105)
	.dw	0,(Sds3231$DS3231_GPSSetTime$106)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$104)
	.dw	0,(Sds3231$DS3231_GPSSetTime$105)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$102)
	.dw	0,(Sds3231$DS3231_GPSSetTime$104)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$101)
	.dw	0,(Sds3231$DS3231_GPSSetTime$102)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$100)
	.dw	0,(Sds3231$DS3231_GPSSetTime$101)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$99)
	.dw	0,(Sds3231$DS3231_GPSSetTime$100)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$98)
	.dw	0,(Sds3231$DS3231_GPSSetTime$99)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$97)
	.dw	0,(Sds3231$DS3231_GPSSetTime$98)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$96)
	.dw	0,(Sds3231$DS3231_GPSSetTime$97)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$95)
	.dw	0,(Sds3231$DS3231_GPSSetTime$96)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$94)
	.dw	0,(Sds3231$DS3231_GPSSetTime$95)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$93)
	.dw	0,(Sds3231$DS3231_GPSSetTime$94)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$92)
	.dw	0,(Sds3231$DS3231_GPSSetTime$93)
	.dw	2
	.db	120
	.sleb128	28
	.dw	0,(Sds3231$DS3231_GPSSetTime$91)
	.dw	0,(Sds3231$DS3231_GPSSetTime$92)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$90)
	.dw	0,(Sds3231$DS3231_GPSSetTime$91)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$89)
	.dw	0,(Sds3231$DS3231_GPSSetTime$90)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$86)
	.dw	0,(Sds3231$DS3231_GPSSetTime$89)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$85)
	.dw	0,(Sds3231$DS3231_GPSSetTime$86)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$84)
	.dw	0,(Sds3231$DS3231_GPSSetTime$85)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$83)
	.dw	0,(Sds3231$DS3231_GPSSetTime$84)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$82)
	.dw	0,(Sds3231$DS3231_GPSSetTime$83)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$81)
	.dw	0,(Sds3231$DS3231_GPSSetTime$82)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$80)
	.dw	0,(Sds3231$DS3231_GPSSetTime$81)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$79)
	.dw	0,(Sds3231$DS3231_GPSSetTime$80)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$78)
	.dw	0,(Sds3231$DS3231_GPSSetTime$79)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$77)
	.dw	0,(Sds3231$DS3231_GPSSetTime$78)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$76)
	.dw	0,(Sds3231$DS3231_GPSSetTime$77)
	.dw	2
	.db	120
	.sleb128	28
	.dw	0,(Sds3231$DS3231_GPSSetTime$75)
	.dw	0,(Sds3231$DS3231_GPSSetTime$76)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$74)
	.dw	0,(Sds3231$DS3231_GPSSetTime$75)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$73)
	.dw	0,(Sds3231$DS3231_GPSSetTime$74)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$71)
	.dw	0,(Sds3231$DS3231_GPSSetTime$73)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$70)
	.dw	0,(Sds3231$DS3231_GPSSetTime$71)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$69)
	.dw	0,(Sds3231$DS3231_GPSSetTime$70)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$68)
	.dw	0,(Sds3231$DS3231_GPSSetTime$69)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$67)
	.dw	0,(Sds3231$DS3231_GPSSetTime$68)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$66)
	.dw	0,(Sds3231$DS3231_GPSSetTime$67)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$65)
	.dw	0,(Sds3231$DS3231_GPSSetTime$66)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$64)
	.dw	0,(Sds3231$DS3231_GPSSetTime$65)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$63)
	.dw	0,(Sds3231$DS3231_GPSSetTime$64)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$62)
	.dw	0,(Sds3231$DS3231_GPSSetTime$63)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$61)
	.dw	0,(Sds3231$DS3231_GPSSetTime$62)
	.dw	2
	.db	120
	.sleb128	28
	.dw	0,(Sds3231$DS3231_GPSSetTime$60)
	.dw	0,(Sds3231$DS3231_GPSSetTime$61)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$59)
	.dw	0,(Sds3231$DS3231_GPSSetTime$60)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$58)
	.dw	0,(Sds3231$DS3231_GPSSetTime$59)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$56)
	.dw	0,(Sds3231$DS3231_GPSSetTime$58)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$55)
	.dw	0,(Sds3231$DS3231_GPSSetTime$56)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$54)
	.dw	0,(Sds3231$DS3231_GPSSetTime$55)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$53)
	.dw	0,(Sds3231$DS3231_GPSSetTime$54)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$52)
	.dw	0,(Sds3231$DS3231_GPSSetTime$53)
	.dw	2
	.db	120
	.sleb128	27
	.dw	0,(Sds3231$DS3231_GPSSetTime$51)
	.dw	0,(Sds3231$DS3231_GPSSetTime$52)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$50)
	.dw	0,(Sds3231$DS3231_GPSSetTime$51)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$49)
	.dw	0,(Sds3231$DS3231_GPSSetTime$50)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Sds3231$DS3231_GPSSetTime$48)
	.dw	0,(Sds3231$DS3231_GPSSetTime$49)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$47)
	.dw	0,(Sds3231$DS3231_GPSSetTime$48)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$46)
	.dw	0,(Sds3231$DS3231_GPSSetTime$47)
	.dw	2
	.db	120
	.sleb128	28
	.dw	0,(Sds3231$DS3231_GPSSetTime$45)
	.dw	0,(Sds3231$DS3231_GPSSetTime$46)
	.dw	2
	.db	120
	.sleb128	26
	.dw	0,(Sds3231$DS3231_GPSSetTime$44)
	.dw	0,(Sds3231$DS3231_GPSSetTime$45)
	.dw	2
	.db	120
	.sleb128	25
	.dw	0,(Sds3231$DS3231_GPSSetTime$43)
	.dw	0,(Sds3231$DS3231_GPSSetTime$44)
	.dw	2
	.db	120
	.sleb128	24
	.dw	0,(Sds3231$DS3231_GPSSetTime$40)
	.dw	0,(Sds3231$DS3231_GPSSetTime$43)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Sds3231$DS3231_GPSSetTime$39)
	.dw	0,(Sds3231$DS3231_GPSSetTime$40)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
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
	.uleb128	13
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	60
	.uleb128	12
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
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
	.dw	0,(Ldebug_loc_start+1288)
	.uleb128	3
	.dw	0,159
	.ascii "DS3231_GetTime"
	.db	0
	.dw	0,(_DS3231_GetTime)
	.dw	0,(XG$DS3231_GetTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1136)
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
	.uleb128	3
	.dw	0,228
	.ascii "DS3231_GPSSetTime"
	.db	0
	.dw	0,(_DS3231_GPSSetTime)
	.dw	0,(XG$DS3231_GPSSetTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	8
	.dw	0,215
	.db	7
	.dw	0,228
	.uleb128	9
	.db	6
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-21
	.ascii "tmp"
	.db	0
	.dw	0,202
	.uleb128	0
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	8
	.dw	0,258
	.db	8
	.dw	0,228
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
	.dw	0,245
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	11
	.dw	0,413
	.ascii "__00000010"
	.db	0
	.db	8
	.uleb128	12
	.ascii "seconds"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,228
	.uleb128	12
	.ascii "minutes"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,228
	.uleb128	12
	.ascii "hours"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,228
	.uleb128	12
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,228
	.uleb128	12
	.ascii "date"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,228
	.uleb128	12
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	5
	.dw	0,228
	.uleb128	12
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	6
	.dw	0,281
	.uleb128	0
	.uleb128	10
	.db	5
	.db	3
	.dw	0,(_DS3231_TimeSturcture)
	.ascii "DS3231_TimeSturcture"
	.db	0
	.db	1
	.dw	0,297
	.uleb128	7
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	7
	.ascii "float"
	.db	0
	.db	4
	.db	4
	.uleb128	11
	.dw	0,668
	.ascii "__00000009"
	.db	0
	.db	24
	.uleb128	12
	.ascii "runTime"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,446
	.uleb128	12
	.ascii "tAcc"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,463
	.uleb128	12
	.ascii "msErr"
	.db	0
	.db	2
	.db	35
	.uleb128	8
	.dw	0,463
	.uleb128	12
	.ascii "ms"
	.db	0
	.db	2
	.db	35
	.uleb128	12
	.dw	0,281
	.uleb128	12
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	14
	.dw	0,281
	.uleb128	12
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	16
	.dw	0,228
	.uleb128	12
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	17
	.dw	0,228
	.uleb128	12
	.ascii "hour"
	.db	0
	.db	2
	.db	35
	.uleb128	18
	.dw	0,228
	.uleb128	12
	.ascii "min"
	.db	0
	.db	2
	.db	35
	.uleb128	19
	.dw	0,228
	.uleb128	12
	.ascii "sec"
	.db	0
	.db	2
	.db	35
	.uleb128	20
	.dw	0,228
	.uleb128	12
	.ascii "valid"
	.db	0
	.db	2
	.db	35
	.uleb128	21
	.dw	0,228
	.uleb128	12
	.ascii "timeSrc"
	.db	0
	.db	2
	.db	35
	.uleb128	22
	.dw	0,228
	.uleb128	12
	.ascii "dateValid"
	.db	0
	.db	2
	.db	35
	.uleb128	23
	.dw	0,228
	.uleb128	0
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_GPS_TimeDataSturcture)
	.ascii "GPS_TimeDataSturcture"
	.db	0
	.db	1
	.db	1
	.dw	0,472
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
	.dw	0,166
	.ascii "DS3231_GPSSetTime"
	.db	0
	.dw	0,258
	.ascii "DS3231_Buf"
	.db	0
	.dw	0,413
	.ascii "DS3231_TimeSturcture"
	.db	0
	.dw	0,668
	.ascii "GPS_TimeDataSturcture"
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
	.dw	0,670
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sds3231$DS3231_GPSSetTime$39)	;initial loc
	.dw	0,Sds3231$DS3231_GPSSetTime$144-Sds3231$DS3231_GPSSetTime$39
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$39)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$40)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$43)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$44)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$45)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$46)
	.db	14
	.uleb128	29
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$47)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$48)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$49)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$50)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$51)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$52)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$53)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$54)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$55)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$56)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$58)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$59)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$60)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$61)
	.db	14
	.uleb128	29
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$62)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$63)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$64)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$65)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$66)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$67)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$68)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$69)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$70)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$71)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$73)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$74)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$75)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$76)
	.db	14
	.uleb128	29
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$77)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$78)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$79)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$80)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$81)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$82)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$83)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$84)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$85)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$86)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$89)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$90)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$91)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$92)
	.db	14
	.uleb128	29
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$93)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$94)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$95)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$96)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$97)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$98)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$99)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$100)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$101)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$102)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$104)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$105)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$106)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$107)
	.db	14
	.uleb128	29
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$108)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$109)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$110)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$111)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$112)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$113)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$114)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$115)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$116)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$117)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$119)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$120)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$121)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$122)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$123)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$124)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$125)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$126)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$127)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$128)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$129)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$130)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$131)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$132)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$133)
	.db	14
	.uleb128	25
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$134)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$136)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$137)
	.db	14
	.uleb128	26
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$138)
	.db	14
	.uleb128	27
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$139)
	.db	14
	.uleb128	28
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$140)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Sds3231$DS3231_GPSSetTime$142)
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
	.dw	0,96
	.dw	0,(Ldebug_CIE1_start-4)
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
	.dw	0,(Sds3231$DS3231_Init$1)	;initial loc
	.dw	0,Sds3231$DS3231_Init$5-Sds3231$DS3231_Init$1
	.db	1
	.dw	0,(Sds3231$DS3231_Init$1)
	.db	14
	.uleb128	2
