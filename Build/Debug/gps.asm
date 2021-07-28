;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module gps
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_GetITStatus
	.globl _UART1_GetFlagStatus
	.globl _UART1_SendData8
	.globl _UART1_ReceiveData8
	.globl _UART1_ITConfig
	.globl _UART1_Cmd
	.globl _UART1_Init
	.globl _UART1_DeInit
	.globl _GPIO_Init
	.globl _gps_first_send
	.globl _GPS_RxBuf
	.globl _GPS_TimeDataSturcture
	.globl _GPS_Init
	.globl _GPS_GetTime
	.globl _UART1_RX_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
G$GPS_TimeDataSturcture$0_0$0==.
_GPS_TimeDataSturcture::
	.ds 24
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$GPS_RxBuf$0_0$0==.
_GPS_RxBuf::
	.ds 34
G$gps_first_send$0_0$0==.
_gps_first_send::
	.ds 1
Fgps$num$0_0$0==.
_num:
	.ds 1
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
	Sgps$GPS_Init$0 ==.
;	Source/Device/Src/gps.c: 33: void GPS_Init(void)
;	-----------------------------------------
;	 function GPS_Init
;	-----------------------------------------
_GPS_Init:
	Sgps$GPS_Init$1 ==.
	sub	sp, #30
	Sgps$GPS_Init$2 ==.
	Sgps$GPS_Init$3 ==.
;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	Sgps$GPS_Init$4 ==.
	push	#0x20
	Sgps$GPS_Init$5 ==.
	push	#0x0f
	Sgps$GPS_Init$6 ==.
	push	#0x50
	Sgps$GPS_Init$7 ==.
	call	_GPIO_Init
	addw	sp, #4
	Sgps$GPS_Init$8 ==.
	Sgps$GPS_Init$9 ==.
;	Source/Device/Src/gps.c: 36: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	Sgps$GPS_Init$10 ==.
	push	#0x40
	Sgps$GPS_Init$11 ==.
	push	#0x0f
	Sgps$GPS_Init$12 ==.
	push	#0x50
	Sgps$GPS_Init$13 ==.
	call	_GPIO_Init
	addw	sp, #4
	Sgps$GPS_Init$14 ==.
	Sgps$GPS_Init$15 ==.
;	Source/Device/Src/gps.c: 37: UART1_DeInit();
	call	_UART1_DeInit
	Sgps$GPS_Init$16 ==.
;	Source/Device/Src/gps.c: 38: UART1_Init((uint32_t)9600,
	push	#0x0c
	Sgps$GPS_Init$17 ==.
	push	#0x80
	Sgps$GPS_Init$18 ==.
	push	#0x00
	Sgps$GPS_Init$19 ==.
	push	#0x00
	Sgps$GPS_Init$20 ==.
	push	#0x00
	Sgps$GPS_Init$21 ==.
	push	#0x80
	Sgps$GPS_Init$22 ==.
	push	#0x25
	Sgps$GPS_Init$23 ==.
	clrw	x
	pushw	x
	Sgps$GPS_Init$24 ==.
	call	_UART1_Init
	addw	sp, #9
	Sgps$GPS_Init$25 ==.
	Sgps$GPS_Init$26 ==.
;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
	push	#0x01
	Sgps$GPS_Init$27 ==.
	push	#0x05
	Sgps$GPS_Init$28 ==.
	push	#0x02
	Sgps$GPS_Init$29 ==.
	call	_UART1_ITConfig
	addw	sp, #3
	Sgps$GPS_Init$30 ==.
	Sgps$GPS_Init$31 ==.
;	Source/Device/Src/gps.c: 45: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
	push	#0x01
	Sgps$GPS_Init$32 ==.
	push	#0x44
	Sgps$GPS_Init$33 ==.
	push	#0x02
	Sgps$GPS_Init$34 ==.
	call	_UART1_ITConfig
	addw	sp, #3
	Sgps$GPS_Init$35 ==.
	Sgps$GPS_Init$36 ==.
;	Source/Device/Src/gps.c: 46: UART1_Cmd(ENABLE);
	push	#0x01
	Sgps$GPS_Init$37 ==.
	call	_UART1_Cmd
	pop	a
	Sgps$GPS_Init$38 ==.
	Sgps$GPS_Init$39 ==.
	Sgps$GPS_Init$40 ==.
;	Source/Device/Src/gps.c: 49: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
	ld	a, #0xba
	ld	(0x01, sp), a
	ldw	x, sp
	ld	a, #0xce
	ld	(2, x), a
	ldw	x, sp
	ld	a, #0x04
	ld	(3, x), a
	ldw	x, sp
	clr	(4, x)
	ldw	x, sp
	ld	a, #0x06
	ld	(5, x), a
	ldw	x, sp
	ld	a, #0x01
	ld	(6, x), a
	ldw	x, sp
	ld	a, #0x01
	ld	(7, x), a
	ldw	x, sp
	ld	a, #0x10
	ld	(8, x), a
	ldw	x, sp
	ld	a, #0x01
	ld	(9, x), a
	ldw	x, sp
	clr	(10, x)
	ldw	x, sp
	ld	a, #0x05
	ld	(11, x), a
	ldw	x, sp
	ld	a, #0x10
	ld	(12, x), a
	ldw	x, sp
	ld	a, #0x07
	ld	(13, x), a
	ldw	x, sp
	ld	a, #0x01
	ld	(14, x), a
	Sgps$GPS_Init$41 ==.
;	Source/Device/Src/gps.c: 50: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
	ld	a, #0x24
	ld	(0x0f, sp), a
	ldw	x, sp
	ld	a, #0x43
	ld	(16, x), a
	ldw	x, sp
	ld	a, #0x43
	ld	(17, x), a
	ldw	x, sp
	ld	a, #0x52
	ld	(18, x), a
	ldw	x, sp
	ld	a, #0x4d
	ld	(19, x), a
	ldw	x, sp
	ld	a, #0x4f
	ld	(20, x), a
	ldw	x, sp
	ld	a, #0x2c
	ld	(21, x), a
	ldw	x, sp
	ld	a, #0x2c
	ld	(22, x), a
	ldw	x, sp
	ld	a, #0x33
	ld	(23, x), a
	ldw	x, sp
	ld	a, #0x2c
	ld	(24, x), a
	ldw	x, sp
	ld	a, #0x2a
	ld	(25, x), a
	ldw	x, sp
	ld	a, #0x34
	ld	(26, x), a
	ldw	x, sp
	ld	a, #0x46
	ld	(27, x), a
	ldw	x, sp
	ld	a, #0x0d
	ld	(28, x), a
	ldw	x, sp
	ld	a, #0x0a
	ld	(29, x), a
	Sgps$GPS_Init$42 ==.
;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
	clr	(0x1e, sp)
	Sgps$GPS_Init$43 ==.
00110$:
	ld	a, (0x1e, sp)
	cp	a, #0x0f
	jrnc	00104$
	Sgps$GPS_Init$44 ==.
	Sgps$GPS_Init$45 ==.
;	Source/Device/Src/gps.c: 55: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
00101$:
	push	#0x80
	Sgps$GPS_Init$46 ==.
	push	#0x00
	Sgps$GPS_Init$47 ==.
	call	_UART1_GetFlagStatus
	popw	x
	Sgps$GPS_Init$48 ==.
	dec	a
	jrne	00101$
	Sgps$GPS_Init$49 ==.
	Sgps$GPS_Init$50 ==.
;	Source/Device/Src/gps.c: 56: UART1_SendData8(close_all_nmea[i]);
	clrw	x
	ld	a, (0x1e, sp)
	ld	xl, a
	pushw	x
	Sgps$GPS_Init$51 ==.
	ldw	x, sp
	addw	x, #17
	addw	x, (1, sp)
	addw	sp, #2
	Sgps$GPS_Init$52 ==.
	ld	a, (x)
	push	a
	Sgps$GPS_Init$53 ==.
	call	_UART1_SendData8
	pop	a
	Sgps$GPS_Init$54 ==.
	Sgps$GPS_Init$55 ==.
	Sgps$GPS_Init$56 ==.
;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
	inc	(0x1e, sp)
	jra	00110$
00104$:
	Sgps$GPS_Init$57 ==.
	Sgps$GPS_Init$58 ==.
;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
	clr	(0x1e, sp)
	Sgps$GPS_Init$59 ==.
00113$:
	ld	a, (0x1e, sp)
	cp	a, #0x0e
	jrnc	00115$
	Sgps$GPS_Init$60 ==.
	Sgps$GPS_Init$61 ==.
;	Source/Device/Src/gps.c: 67: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
00105$:
	push	#0x80
	Sgps$GPS_Init$62 ==.
	push	#0x00
	Sgps$GPS_Init$63 ==.
	call	_UART1_GetFlagStatus
	popw	x
	Sgps$GPS_Init$64 ==.
	dec	a
	jrne	00105$
	Sgps$GPS_Init$65 ==.
	Sgps$GPS_Init$66 ==.
;	Source/Device/Src/gps.c: 68: UART1_SendData8(open_nav_timeutc[i]);
	clrw	x
	ld	a, (0x1e, sp)
	ld	xl, a
	pushw	x
	Sgps$GPS_Init$67 ==.
	ldw	x, sp
	addw	x, #3
	addw	x, (1, sp)
	addw	sp, #2
	Sgps$GPS_Init$68 ==.
	ld	a, (x)
	push	a
	Sgps$GPS_Init$69 ==.
	call	_UART1_SendData8
	pop	a
	Sgps$GPS_Init$70 ==.
	Sgps$GPS_Init$71 ==.
	Sgps$GPS_Init$72 ==.
;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
	inc	(0x1e, sp)
	jra	00113$
	Sgps$GPS_Init$73 ==.
00115$:
	Sgps$GPS_Init$74 ==.
;	Source/Device/Src/gps.c: 70: }
	addw	sp, #30
	Sgps$GPS_Init$75 ==.
	Sgps$GPS_Init$76 ==.
	XG$GPS_Init$0$0 ==.
	ret
	Sgps$GPS_Init$77 ==.
	Sgps$GPS_GetTime$78 ==.
;	Source/Device/Src/gps.c: 75: void GPS_GetTime(void)
;	-----------------------------------------
;	 function GPS_GetTime
;	-----------------------------------------
_GPS_GetTime:
	Sgps$GPS_GetTime$79 ==.
	sub	sp, #4
	Sgps$GPS_GetTime$80 ==.
	Sgps$GPS_GetTime$81 ==.
	Sgps$GPS_GetTime$82 ==.
;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
	Sgps$GPS_GetTime$83 ==.
	clrw	y
00106$:
	cpw	y, #0x0008
	jrsge	00101$
	Sgps$GPS_GetTime$84 ==.
;	Source/Device/Src/gps.c: 80: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
	ldw	x, #(_GPS_TimeDataSturcture + 0)
	ldw	(0x01, sp), x
	ldw	x, y
	addw	x, #0x0010
	addw	x, (0x01, sp)
	ldw	(0x03, sp), x
	ldw	x, y
	addw	x, #22
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_GPS_RxBuf + 0)
	ld	a, (x)
	ldw	x, (0x03, sp)
	ld	(x), a
	Sgps$GPS_GetTime$85 ==.
;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
	incw	y
	jra	00106$
00101$:
	Sgps$GPS_GetTime$86 ==.
;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
	ld	a, (y)
	clrw	x
	ld	xl, a
	addw	x, #0x0008
	Sgps$GPS_GetTime$87 ==.
;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
	Sgps$GPS_GetTime$88 ==.
;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
	cpw	x, #0x0018
	jrsle	00103$
	Sgps$GPS_GetTime$89 ==.
;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
	add	a, #0xf0
	ld	(y), a
	jra	00104$
00103$:
	Sgps$GPS_GetTime$90 ==.
;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.hour+=8;
	add	a, #0x08
	ld	(y), a
00104$:
	Sgps$GPS_GetTime$91 ==.
;	Source/Device/Src/gps.c: 85: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
	ld	a, _GPS_RxBuf+21
	ld	xh, a
	clr	(0x02, sp)
	ld	a, _GPS_RxBuf+20
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	ldw	(y), x
	Sgps$GPS_GetTime$92 ==.
;	Source/Device/Src/gps.c: 86: }
	addw	sp, #4
	Sgps$GPS_GetTime$93 ==.
	Sgps$GPS_GetTime$94 ==.
	XG$GPS_GetTime$0$0 ==.
	ret
	Sgps$GPS_GetTime$95 ==.
	Sgps$UART1_RX_IRQHandler$96 ==.
;	Source/Device/Src/gps.c: 94: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
_UART1_RX_IRQHandler:
	div	x, a
	Sgps$UART1_RX_IRQHandler$97 ==.
	Sgps$UART1_RX_IRQHandler$98 ==.
;	Source/Device/Src/gps.c: 96: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
	push	#0x55
	Sgps$UART1_RX_IRQHandler$99 ==.
	push	#0x02
	Sgps$UART1_RX_IRQHandler$100 ==.
	call	_UART1_GetITStatus
	popw	x
	Sgps$UART1_RX_IRQHandler$101 ==.
	dec	a
	jrne	00109$
	Sgps$UART1_RX_IRQHandler$102 ==.
	Sgps$UART1_RX_IRQHandler$103 ==.
	Sgps$UART1_RX_IRQHandler$104 ==.
;	Source/Device/Src/gps.c: 98: if(num<34)
	ld	a, _num+0
	cp	a, #0x22
	jrnc	00102$
	Sgps$UART1_RX_IRQHandler$105 ==.
	Sgps$UART1_RX_IRQHandler$106 ==.
;	Source/Device/Src/gps.c: 100: GPS_RxBuf[num]=UART1_ReceiveData8();
	clrw	x
	ld	a, _num+0
	ld	xl, a
	addw	x, #(_GPS_RxBuf + 0)
	pushw	x
	Sgps$UART1_RX_IRQHandler$107 ==.
	call	_UART1_ReceiveData8
	popw	x
	Sgps$UART1_RX_IRQHandler$108 ==.
	ld	(x), a
	Sgps$UART1_RX_IRQHandler$109 ==.
;	Source/Device/Src/gps.c: 101: ++num;
	inc	_num+0
	Sgps$UART1_RX_IRQHandler$110 ==.
	jra	00111$
00102$:
	Sgps$UART1_RX_IRQHandler$111 ==.
;	Source/Device/Src/gps.c: 104: num=0;
	clr	_num+0
	Sgps$UART1_RX_IRQHandler$112 ==.
	jra	00111$
00109$:
	Sgps$UART1_RX_IRQHandler$113 ==.
;	Source/Device/Src/gps.c: 106: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
	push	#0x44
	Sgps$UART1_RX_IRQHandler$114 ==.
	push	#0x02
	Sgps$UART1_RX_IRQHandler$115 ==.
	call	_UART1_GetITStatus
	popw	x
	Sgps$UART1_RX_IRQHandler$116 ==.
	dec	a
	jrne	00111$
	Sgps$UART1_RX_IRQHandler$117 ==.
	Sgps$UART1_RX_IRQHandler$118 ==.
	Sgps$UART1_RX_IRQHandler$119 ==.
;	Source/Device/Src/gps.c: 108: UART1_ReceiveData8();
	call	_UART1_ReceiveData8
	Sgps$UART1_RX_IRQHandler$120 ==.
;	Source/Device/Src/gps.c: 109: num=0;
	clr	_num+0
	Sgps$UART1_RX_IRQHandler$121 ==.
;	Source/Device/Src/gps.c: 110: if(checksum()==SUCCESS)
	call	_checksum
	dec	a
	jrne	00111$
	Sgps$UART1_RX_IRQHandler$122 ==.
	Sgps$UART1_RX_IRQHandler$123 ==.
	Sgps$UART1_RX_IRQHandler$124 ==.
;	Source/Device/Src/gps.c: 112: GPS_GetTime();
	call	_GPS_GetTime
	Sgps$UART1_RX_IRQHandler$125 ==.
;	Source/Device/Src/gps.c: 113: gps_first_send=SET;
	mov	_gps_first_send+0, #0x01
	Sgps$UART1_RX_IRQHandler$126 ==.
00111$:
	Sgps$UART1_RX_IRQHandler$127 ==.
;	Source/Device/Src/gps.c: 116: }
	Sgps$UART1_RX_IRQHandler$128 ==.
	XG$UART1_RX_IRQHandler$0$0 ==.
	iret
	Sgps$UART1_RX_IRQHandler$129 ==.
	Sgps$checksum$130 ==.
;	Source/Device/Src/gps.c: 124: static ErrorStatus checksum(void)
;	-----------------------------------------
;	 function checksum
;	-----------------------------------------
_checksum:
	Sgps$checksum$131 ==.
	sub	sp, #14
	Sgps$checksum$132 ==.
	Sgps$checksum$133 ==.
;	Source/Device/Src/gps.c: 127: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
	ld	a, _GPS_RxBuf+5
	clr	(0x05, sp)
	ld	(0x0a, sp), a
	clrw	x
	clr	(0x0b, sp)
	ldw	y, #(_GPS_RxBuf + 0)+2
	ld	a, _GPS_RxBuf+3
	ld	(0x0e, sp), a
	tnzw	x
	jrne	00111$
	ldw	x, (0x0a, sp)
	jrne	00111$
	ld	a, _GPS_RxBuf+4
	clrw	x
	clr	(0x0a, sp)
	ld	(0x0b, sp), a
	ld	a, xl
	clrw	x
	tnzw	x
	jrne	00111$
	tnz	(0x0b, sp)
	jrne	00111$
	tnz	a
	jrne	00111$
	ld	a, (y)
	clrw	x
	clr	(0x0a, sp)
	clr	(0x0d, sp)
	tnz	(0x0d, sp)
	jrne	00111$
	tnz	a
	jrne	00111$
	tnzw	x
	jrne	00111$
	ld	a, (0x0e, sp)
	clr	(0x0c, sp)
	clrw	x
	ldw	(0x0a, sp), x
	ld	xl, a
	ld	a, (0x0c, sp)
	ld	xh, a
	tnzw	x
	jrne	00111$
	ldw	x, (0x0a, sp)
	jrne	00111$
	clr	a
	.byte 0xc5
00111$:
	ld	a, #0x01
00112$:
	clrw	x
	clr	(0x0a, sp)
	ld	(0x04, sp), a
	ldw	(0x02, sp), x
	ld	a, (0x0a, sp)
	ld	(0x01, sp), a
	Sgps$checksum$134 ==.
	Sgps$checksum$135 ==.
;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ld	a, (0x0e, sp)
	ld	(0x05, sp), a
	ldw	(0x06, sp), y
	Sgps$checksum$136 ==.
	clrw	x
	ldw	(0x0d, sp), x
00106$:
	ldw	x, (0x06, sp)
	ld	a, (x)
	ld	xh, a
	clr	a
	ld	xl, a
	tnzw	x
	jrne	00120$
	ld	a, (0x05, sp)
	clrw	x
	ld	xl, a
	tnzw	x
	jrne	00120$
	clr	a
	.byte 0xc5
00120$:
	ld	a, #0x01
00121$:
	clrw	x
	ld	xl, a
	push	#0x04
	Sgps$checksum$137 ==.
	push	#0x00
	Sgps$checksum$138 ==.
	pushw	x
	Sgps$checksum$139 ==.
	call	__divsint
	addw	sp, #4
	Sgps$checksum$140 ==.
	ldw	y, (0x0d, sp)
	ldw	(0x0b, sp), x
	ldw	x, y
	cpw	x, (0x0b, sp)
	jrc	00236$
	jp	00101$
00236$:
	Sgps$checksum$141 ==.
;	Source/Device/Src/gps.c: 131: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
	ld	a, (0x0e, sp)
	sll	a
	sll	a
	ld	(0x08, sp), a
	add	a, #0x06
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_GPS_RxBuf + 0)
	ld	a, (x)
	clr	(0x09, sp)
	ld	(0x09, sp), a
	clrw	x
	ldw	(0x0b, sp), x
	clr	(0x0a, sp)
	ldw	x, (0x0b, sp)
	jrne	00123$
	ldw	x, (0x09, sp)
	jrne	00123$
	ld	a, (0x08, sp)
	add	a, #0x07
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_GPS_RxBuf + 0)
	ld	a, (x)
	clrw	x
	ld	xl, a
	clrw	y
	tnzw	y
	jrne	00123$
	tnzw	x
	jrne	00123$
	Sgps$checksum$142 ==.
;	Source/Device/Src/gps.c: 132: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
	ld	a, (0x08, sp)
	add	a, #0x08
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_GPS_RxBuf + 0)
	ld	a, (x)
	clrw	y
	ld	xh, a
	clr	a
	ld	xl, a
	tnzw	x
	jrne	00123$
	tnzw	y
	jrne	00123$
	ld	a, (0x08, sp)
	add	a, #0x09
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_GPS_RxBuf + 0)
	ld	a, (x)
	clrw	x
	ld	xl, a
	clrw	y
	tnzw	x
	jrne	00123$
	tnzw	y
	jreq	00124$
00123$:
	ld	a, #0x01
	ld	yl, a
00124$:
	clr	a
	clrw	x
	tnz	a
	jrpl	00245$
	decw	x
00245$:
	ld	yh, a
	addw	y, (0x03, sp)
	ld	a, xl
	adc	a, (0x02, sp)
	rlwa	x
	adc	a, (0x01, sp)
	ld	xh, a
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
	Sgps$checksum$143 ==.
;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ldw	x, (0x0d, sp)
	incw	x
	ldw	(0x0d, sp), x
	jp	00106$
00101$:
	Sgps$checksum$144 ==.
;	Source/Device/Src/gps.c: 134: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
	ld	a, _GPS_RxBuf+30
	clr	(0x0b, sp)
	ld	(0x0b, sp), a
	clrw	x
	clr	(0x0c, sp)
	tnzw	x
	jrne	00132$
	ldw	x, (0x0b, sp)
	jrne	00132$
	ld	a, _GPS_RxBuf+31
	clrw	x
	ld	xl, a
	clrw	y
	tnzw	y
	jrne	00132$
	tnzw	x
	jrne	00132$
	Sgps$checksum$145 ==.
;	Source/Device/Src/gps.c: 135: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
	ld	a, _GPS_RxBuf+32
	clrw	x
	clr	(0x0b, sp)
	ld	(0x0d, sp), a
	swapw	x
	clr	(0x0e, sp)
	ldw	y, (0x0d, sp)
	jrne	00132$
	tnzw	x
	jrne	00132$
	ld	a, _GPS_RxBuf+33
	clrw	x
	clrw	y
	ld	xl, a
	tnzw	x
	jrne	00132$
	tnzw	y
	jrne	00132$
	clr	a
	.byte 0xc5
00132$:
	ld	a, #0x01
00133$:
	clrw	x
	clrw	y
	ld	xl, a
	cpw	x, (0x03, sp)
	jrne	00103$
	ldw	x, y
	cpw	x, (0x01, sp)
	jrne	00103$
	Sgps$checksum$146 ==.
	Sgps$checksum$147 ==.
;	Source/Device/Src/gps.c: 136: return SUCCESS;
	ld	a, #0x01
	jra	00108$
00103$:
	Sgps$checksum$148 ==.
;	Source/Device/Src/gps.c: 138: return ERROR;
	clr	a
00108$:
	Sgps$checksum$149 ==.
;	Source/Device/Src/gps.c: 139: }
	addw	sp, #14
	Sgps$checksum$150 ==.
	Sgps$checksum$151 ==.
	XFgps$checksum$0$0 ==.
	ret
	Sgps$checksum$152 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fgps$__xinit_GPS_RxBuf$0_0$0 == .
__xinit__GPS_RxBuf:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
Fgps$__xinit_gps_first_send$0_0$0 == .
__xinit__gps_first_send:
	.db #0x00	; 0
Fgps$__xinit_num$0_0$0 == .
__xinit__num:
	.db #0x00	; 0
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
	.ascii "Source/Device/Src/gps.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$GPS_Init$0)
	.db	3
	.sleb128	32
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$3-Sgps$GPS_Init$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$9-Sgps$GPS_Init$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$15-Sgps$GPS_Init$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$16-Sgps$GPS_Init$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$26-Sgps$GPS_Init$16
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$31-Sgps$GPS_Init$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$36-Sgps$GPS_Init$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$40-Sgps$GPS_Init$36
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$41-Sgps$GPS_Init$40
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$42-Sgps$GPS_Init$41
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$45-Sgps$GPS_Init$42
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$50-Sgps$GPS_Init$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$56-Sgps$GPS_Init$50
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$58-Sgps$GPS_Init$56
	.db	3
	.sleb128	12
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$61-Sgps$GPS_Init$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$66-Sgps$GPS_Init$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$72-Sgps$GPS_Init$66
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$74-Sgps$GPS_Init$72
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	1+Sgps$GPS_Init$76-Sgps$GPS_Init$74
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$GPS_GetTime$78)
	.db	3
	.sleb128	74
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$82-Sgps$GPS_GetTime$78
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$84-Sgps$GPS_GetTime$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$85-Sgps$GPS_GetTime$84
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$86-Sgps$GPS_GetTime$85
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$87-Sgps$GPS_GetTime$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$88-Sgps$GPS_GetTime$87
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$89-Sgps$GPS_GetTime$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$90-Sgps$GPS_GetTime$89
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$91-Sgps$GPS_GetTime$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$92-Sgps$GPS_GetTime$91
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sgps$GPS_GetTime$94-Sgps$GPS_GetTime$92
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$96)
	.db	3
	.sleb128	93
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$98-Sgps$UART1_RX_IRQHandler$96
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$104-Sgps$UART1_RX_IRQHandler$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$106-Sgps$UART1_RX_IRQHandler$104
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$109-Sgps$UART1_RX_IRQHandler$106
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$111-Sgps$UART1_RX_IRQHandler$109
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$113-Sgps$UART1_RX_IRQHandler$111
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$119-Sgps$UART1_RX_IRQHandler$113
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$120-Sgps$UART1_RX_IRQHandler$119
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$121-Sgps$UART1_RX_IRQHandler$120
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$124-Sgps$UART1_RX_IRQHandler$121
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$125-Sgps$UART1_RX_IRQHandler$124
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$127-Sgps$UART1_RX_IRQHandler$125
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Sgps$UART1_RX_IRQHandler$128-Sgps$UART1_RX_IRQHandler$127
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$checksum$130)
	.db	3
	.sleb128	123
	.db	1
	.db	9
	.dw	Sgps$checksum$133-Sgps$checksum$130
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$checksum$135-Sgps$checksum$133
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$checksum$141-Sgps$checksum$135
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$142-Sgps$checksum$141
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$143-Sgps$checksum$142
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sgps$checksum$144-Sgps$checksum$143
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sgps$checksum$145-Sgps$checksum$144
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$147-Sgps$checksum$145
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$148-Sgps$checksum$147
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$checksum$149-Sgps$checksum$148
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sgps$checksum$151-Sgps$checksum$149
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sgps$checksum$150)
	.dw	0,(Sgps$checksum$152)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$checksum$146)
	.dw	0,(Sgps$checksum$150)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$140)
	.dw	0,(Sgps$checksum$146)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$139)
	.dw	0,(Sgps$checksum$140)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sgps$checksum$138)
	.dw	0,(Sgps$checksum$139)
	.dw	2
	.db	120
	.sleb128	17
	.dw	0,(Sgps$checksum$137)
	.dw	0,(Sgps$checksum$138)
	.dw	2
	.db	120
	.sleb128	16
	.dw	0,(Sgps$checksum$132)
	.dw	0,(Sgps$checksum$137)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$131)
	.dw	0,(Sgps$checksum$132)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
	.dw	0,(Sgps$UART1_RX_IRQHandler$129)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$GPS_GetTime$93)
	.dw	0,(Sgps$GPS_GetTime$95)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_GetTime$80)
	.dw	0,(Sgps$GPS_GetTime$93)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sgps$GPS_GetTime$79)
	.dw	0,(Sgps$GPS_GetTime$80)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$GPS_Init$75)
	.dw	0,(Sgps$GPS_Init$77)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_Init$70)
	.dw	0,(Sgps$GPS_Init$75)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$69)
	.dw	0,(Sgps$GPS_Init$70)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$68)
	.dw	0,(Sgps$GPS_Init$69)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$67)
	.dw	0,(Sgps$GPS_Init$68)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$65)
	.dw	0,(Sgps$GPS_Init$67)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$64)
	.dw	0,(Sgps$GPS_Init$65)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$63)
	.dw	0,(Sgps$GPS_Init$64)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$62)
	.dw	0,(Sgps$GPS_Init$63)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$54)
	.dw	0,(Sgps$GPS_Init$62)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$53)
	.dw	0,(Sgps$GPS_Init$54)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$52)
	.dw	0,(Sgps$GPS_Init$53)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$51)
	.dw	0,(Sgps$GPS_Init$52)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$49)
	.dw	0,(Sgps$GPS_Init$51)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$48)
	.dw	0,(Sgps$GPS_Init$49)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$47)
	.dw	0,(Sgps$GPS_Init$48)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$46)
	.dw	0,(Sgps$GPS_Init$47)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$38)
	.dw	0,(Sgps$GPS_Init$46)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$37)
	.dw	0,(Sgps$GPS_Init$38)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$35)
	.dw	0,(Sgps$GPS_Init$37)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$34)
	.dw	0,(Sgps$GPS_Init$35)
	.dw	2
	.db	120
	.sleb128	34
	.dw	0,(Sgps$GPS_Init$33)
	.dw	0,(Sgps$GPS_Init$34)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$32)
	.dw	0,(Sgps$GPS_Init$33)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$30)
	.dw	0,(Sgps$GPS_Init$32)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$29)
	.dw	0,(Sgps$GPS_Init$30)
	.dw	2
	.db	120
	.sleb128	34
	.dw	0,(Sgps$GPS_Init$28)
	.dw	0,(Sgps$GPS_Init$29)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$27)
	.dw	0,(Sgps$GPS_Init$28)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$25)
	.dw	0,(Sgps$GPS_Init$27)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$24)
	.dw	0,(Sgps$GPS_Init$25)
	.dw	2
	.db	120
	.sleb128	40
	.dw	0,(Sgps$GPS_Init$23)
	.dw	0,(Sgps$GPS_Init$24)
	.dw	2
	.db	120
	.sleb128	38
	.dw	0,(Sgps$GPS_Init$22)
	.dw	0,(Sgps$GPS_Init$23)
	.dw	2
	.db	120
	.sleb128	37
	.dw	0,(Sgps$GPS_Init$21)
	.dw	0,(Sgps$GPS_Init$22)
	.dw	2
	.db	120
	.sleb128	36
	.dw	0,(Sgps$GPS_Init$20)
	.dw	0,(Sgps$GPS_Init$21)
	.dw	2
	.db	120
	.sleb128	35
	.dw	0,(Sgps$GPS_Init$19)
	.dw	0,(Sgps$GPS_Init$20)
	.dw	2
	.db	120
	.sleb128	34
	.dw	0,(Sgps$GPS_Init$18)
	.dw	0,(Sgps$GPS_Init$19)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$17)
	.dw	0,(Sgps$GPS_Init$18)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$14)
	.dw	0,(Sgps$GPS_Init$17)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$13)
	.dw	0,(Sgps$GPS_Init$14)
	.dw	2
	.db	120
	.sleb128	35
	.dw	0,(Sgps$GPS_Init$12)
	.dw	0,(Sgps$GPS_Init$13)
	.dw	2
	.db	120
	.sleb128	34
	.dw	0,(Sgps$GPS_Init$11)
	.dw	0,(Sgps$GPS_Init$12)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$10)
	.dw	0,(Sgps$GPS_Init$11)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$8)
	.dw	0,(Sgps$GPS_Init$10)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$7)
	.dw	0,(Sgps$GPS_Init$8)
	.dw	2
	.db	120
	.sleb128	35
	.dw	0,(Sgps$GPS_Init$6)
	.dw	0,(Sgps$GPS_Init$7)
	.dw	2
	.db	120
	.sleb128	34
	.dw	0,(Sgps$GPS_Init$5)
	.dw	0,(Sgps$GPS_Init$6)
	.dw	2
	.db	120
	.sleb128	33
	.dw	0,(Sgps$GPS_Init$4)
	.dw	0,(Sgps$GPS_Init$5)
	.dw	2
	.db	120
	.sleb128	32
	.dw	0,(Sgps$GPS_Init$2)
	.dw	0,(Sgps$GPS_Init$4)
	.dw	2
	.db	120
	.sleb128	31
	.dw	0,(Sgps$GPS_Init$1)
	.dw	0,(Sgps$GPS_Init$2)
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
	.uleb128	7
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
	.uleb128	12
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
	.uleb128	11
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
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
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
	.uleb128	10
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	15
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
	.uleb128	4
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
	.uleb128	8
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	14
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
	.uleb128	9
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
	.ascii "Source/Device/Src/gps.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.dw	0,241
	.ascii "GPS_Init"
	.db	0
	.dw	0,(_GPS_Init)
	.dw	0,(XG$GPS_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	3
	.dw	0,(Sgps$GPS_Init$39)
	.uleb128	4
	.dw	0,132
	.dw	0,(Sgps$GPS_Init$43)
	.dw	0,(Sgps$GPS_Init$57)
	.uleb128	5
	.dw	0,(Sgps$GPS_Init$44)
	.dw	0,(Sgps$GPS_Init$55)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,241
	.uleb128	0
	.uleb128	4
	.dw	0,165
	.dw	0,(Sgps$GPS_Init$59)
	.dw	0,(Sgps$GPS_Init$73)
	.uleb128	5
	.dw	0,(Sgps$GPS_Init$60)
	.dw	0,(Sgps$GPS_Init$71)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,241
	.uleb128	0
	.uleb128	7
	.dw	0,178
	.db	14
	.dw	0,241
	.uleb128	8
	.db	13
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-30
	.ascii "open_nav_timeutc"
	.db	0
	.dw	0,165
	.uleb128	7
	.dw	0,216
	.db	15
	.dw	0,241
	.uleb128	8
	.db	14
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-16
	.ascii "close_all_nmea"
	.db	0
	.dw	0,203
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,313
	.ascii "GPS_GetTime"
	.db	0
	.dw	0,(_GPS_GetTime)
	.dw	0,(XG$GPS_GetTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+256)
	.uleb128	10
	.dw	0,(Sgps$GPS_GetTime$81)
	.dw	0,(Sgps$GPS_GetTime$83)
	.uleb128	6
	.db	6
	.db	84
	.db	147
	.uleb128	1
	.db	83
	.db	147
	.uleb128	1
	.ascii "i"
	.db	0
	.dw	0,313
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	11
	.dw	0,398
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,(_UART1_RX_IRQHandler)
	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+104)
	.uleb128	4
	.dw	0,382
	.dw	0,(Sgps$UART1_RX_IRQHandler$103)
	.dw	0,(Sgps$UART1_RX_IRQHandler$112)
	.uleb128	5
	.dw	0,(Sgps$UART1_RX_IRQHandler$105)
	.dw	0,(Sgps$UART1_RX_IRQHandler$110)
	.uleb128	0
	.uleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$118)
	.uleb128	5
	.dw	0,(Sgps$UART1_RX_IRQHandler$123)
	.dw	0,(Sgps$UART1_RX_IRQHandler$126)
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.dw	0,468
	.ascii "checksum"
	.db	0
	.dw	0,(_checksum)
	.dw	0,(XFgps$checksum$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start)
	.dw	0,241
	.uleb128	4
	.dw	0,453
	.dw	0,(Sgps$checksum$134)
	.dw	0,(Sgps$checksum$136)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-2
	.ascii "i"
	.db	0
	.dw	0,485
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-14
	.ascii "ckSum"
	.db	0
	.dw	0,468
	.uleb128	0
	.uleb128	9
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	9
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	7
	.dw	0,514
	.db	34
	.dw	0,241
	.uleb128	8
	.db	33
	.uleb128	0
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_GPS_RxBuf)
	.ascii "GPS_RxBuf"
	.db	0
	.db	1
	.dw	0,501
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_gps_first_send)
	.ascii "gps_first_send"
	.db	0
	.db	1
	.dw	0,241
	.uleb128	6
	.db	5
	.db	3
	.dw	0,(_num)
	.ascii "num"
	.db	0
	.dw	0,241
	.uleb128	9
	.ascii "float"
	.db	0
	.db	4
	.db	4
	.uleb128	14
	.dw	0,783
	.ascii "__00000009"
	.db	0
	.db	24
	.uleb128	15
	.ascii "runTime"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,468
	.uleb128	15
	.ascii "tAcc"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,578
	.uleb128	15
	.ascii "msErr"
	.db	0
	.db	2
	.db	35
	.uleb128	8
	.dw	0,578
	.uleb128	15
	.ascii "ms"
	.db	0
	.db	2
	.db	35
	.uleb128	12
	.dw	0,485
	.uleb128	15
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	14
	.dw	0,485
	.uleb128	15
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	16
	.dw	0,241
	.uleb128	15
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	17
	.dw	0,241
	.uleb128	15
	.ascii "hour"
	.db	0
	.db	2
	.db	35
	.uleb128	18
	.dw	0,241
	.uleb128	15
	.ascii "min"
	.db	0
	.db	2
	.db	35
	.uleb128	19
	.dw	0,241
	.uleb128	15
	.ascii "sec"
	.db	0
	.db	2
	.db	35
	.uleb128	20
	.dw	0,241
	.uleb128	15
	.ascii "valid"
	.db	0
	.db	2
	.db	35
	.uleb128	21
	.dw	0,241
	.uleb128	15
	.ascii "timeSrc"
	.db	0
	.db	2
	.db	35
	.uleb128	22
	.dw	0,241
	.uleb128	15
	.ascii "dateValid"
	.db	0
	.db	2
	.db	35
	.uleb128	23
	.dw	0,241
	.uleb128	0
	.uleb128	13
	.db	5
	.db	3
	.dw	0,(_GPS_TimeDataSturcture)
	.ascii "GPS_TimeDataSturcture"
	.db	0
	.db	1
	.dw	0,587
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
	.dw	0,67
	.ascii "GPS_Init"
	.db	0
	.dw	0,258
	.ascii "GPS_GetTime"
	.db	0
	.dw	0,320
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,514
	.ascii "GPS_RxBuf"
	.db	0
	.dw	0,536
	.ascii "gps_first_send"
	.db	0
	.dw	0,783
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
	.dw	0,68
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sgps$checksum$131)	;initial loc
	.dw	0,Sgps$checksum$152-Sgps$checksum$131
	.db	1
	.dw	0,(Sgps$checksum$131)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$checksum$132)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$137)
	.db	14
	.uleb128	17
	.db	1
	.dw	0,(Sgps$checksum$138)
	.db	14
	.uleb128	18
	.db	1
	.dw	0,(Sgps$checksum$139)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sgps$checksum$140)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$146)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$150)
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
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,96
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sgps$UART1_RX_IRQHandler$97)	;initial loc
	.dw	0,Sgps$UART1_RX_IRQHandler$129-Sgps$UART1_RX_IRQHandler$97
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
	.db	14
	.uleb128	9

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
	.dw	0,33
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Sgps$GPS_GetTime$79)	;initial loc
	.dw	0,Sgps$GPS_GetTime$95-Sgps$GPS_GetTime$79
	.db	1
	.dw	0,(Sgps$GPS_GetTime$79)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_GetTime$80)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sgps$GPS_GetTime$93)
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
	.dw	0,348
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sgps$GPS_Init$1)	;initial loc
	.dw	0,Sgps$GPS_Init$77-Sgps$GPS_Init$1
	.db	1
	.dw	0,(Sgps$GPS_Init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_Init$2)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$4)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$5)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$6)
	.db	14
	.uleb128	35
	.db	1
	.dw	0,(Sgps$GPS_Init$7)
	.db	14
	.uleb128	36
	.db	1
	.dw	0,(Sgps$GPS_Init$8)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$10)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$11)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$12)
	.db	14
	.uleb128	35
	.db	1
	.dw	0,(Sgps$GPS_Init$13)
	.db	14
	.uleb128	36
	.db	1
	.dw	0,(Sgps$GPS_Init$14)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$17)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$18)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$19)
	.db	14
	.uleb128	35
	.db	1
	.dw	0,(Sgps$GPS_Init$20)
	.db	14
	.uleb128	36
	.db	1
	.dw	0,(Sgps$GPS_Init$21)
	.db	14
	.uleb128	37
	.db	1
	.dw	0,(Sgps$GPS_Init$22)
	.db	14
	.uleb128	38
	.db	1
	.dw	0,(Sgps$GPS_Init$23)
	.db	14
	.uleb128	39
	.db	1
	.dw	0,(Sgps$GPS_Init$24)
	.db	14
	.uleb128	41
	.db	1
	.dw	0,(Sgps$GPS_Init$25)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$27)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$28)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$29)
	.db	14
	.uleb128	35
	.db	1
	.dw	0,(Sgps$GPS_Init$30)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$32)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$33)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$34)
	.db	14
	.uleb128	35
	.db	1
	.dw	0,(Sgps$GPS_Init$35)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$37)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$38)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$46)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$47)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$48)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$49)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$51)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$52)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$53)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$54)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$62)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$63)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$64)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$65)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$67)
	.db	14
	.uleb128	34
	.db	1
	.dw	0,(Sgps$GPS_Init$68)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$69)
	.db	14
	.uleb128	33
	.db	1
	.dw	0,(Sgps$GPS_Init$70)
	.db	14
	.uleb128	32
	.db	1
	.dw	0,(Sgps$GPS_Init$75)
	.db	14
	.uleb128	2
