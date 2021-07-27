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
	.globl _GPS_RxBuf
	.globl _GPS_TimeDataSturcture
	.globl _GPS_Init
	.globl _GPS_GetTime
	.globl _UART1_RX_IRQHandler
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_GPS_TimeDataSturcture::
	.ds 24
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_GPS_RxBuf::
	.ds 34
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
;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
;	-----------------------------------------
;	 function GPS_Init
;	-----------------------------------------
_GPS_Init:
	sub	sp, #30
;	Source/Device/Src/gps.c: 34: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
	push	#0xf0
	push	#0x20
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
	push	#0x00
	push	#0x40
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/gps.c: 36: UART1_DeInit();
	call	_UART1_DeInit
;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)9600,
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x25
	clrw	x
	pushw	x
	call	_UART1_Init
	addw	sp, #9
;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
	push	#0x01
	push	#0x05
	push	#0x02
	call	_UART1_ITConfig
	addw	sp, #3
;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
	push	#0x01
	push	#0x44
	push	#0x02
	call	_UART1_ITConfig
	addw	sp, #3
;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
	push	#0x01
	call	_UART1_Cmd
	pop	a
;	Source/Device/Src/gps.c: 48: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
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
;	Source/Device/Src/gps.c: 49: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
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
;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
	clr	(0x1e, sp)
00110$:
	ld	a, (0x1e, sp)
	cp	a, #0x0f
	jrnc	00104$
;	Source/Device/Src/gps.c: 54: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
00101$:
	push	#0x80
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	dec	a
	jrne	00101$
;	Source/Device/Src/gps.c: 55: UART1_SendData8(close_all_nmea[i]);
	clrw	x
	ld	a, (0x1e, sp)
	ld	xl, a
	pushw	x
	ldw	x, sp
	addw	x, #17
	addw	x, (1, sp)
	addw	sp, #2
	ld	a, (x)
	push	a
	call	_UART1_SendData8
	pop	a
;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
	inc	(0x1e, sp)
	jra	00110$
00104$:
;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
	clr	(0x1e, sp)
00113$:
	ld	a, (0x1e, sp)
	cp	a, #0x0e
	jrnc	00115$
;	Source/Device/Src/gps.c: 66: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
00105$:
	push	#0x80
	push	#0x00
	call	_UART1_GetFlagStatus
	popw	x
	dec	a
	jrne	00105$
;	Source/Device/Src/gps.c: 67: UART1_SendData8(open_nav_timeutc[i]);
	clrw	x
	ld	a, (0x1e, sp)
	ld	xl, a
	pushw	x
	ldw	x, sp
	addw	x, #3
	addw	x, (1, sp)
	addw	sp, #2
	ld	a, (x)
	push	a
	call	_UART1_SendData8
	pop	a
;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
	inc	(0x1e, sp)
	jra	00113$
00115$:
;	Source/Device/Src/gps.c: 69: }
	addw	sp, #30
	ret
;	Source/Device/Src/gps.c: 74: void GPS_GetTime(void)
;	-----------------------------------------
;	 function GPS_GetTime
;	-----------------------------------------
_GPS_GetTime:
	sub	sp, #4
;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
	clrw	y
00106$:
	cpw	y, #0x0008
	jrsge	00101$
;	Source/Device/Src/gps.c: 79: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
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
;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
	incw	y
	jra	00106$
00101$:
;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
	ld	a, (y)
	clrw	x
	ld	xl, a
	addw	x, #0x0008
;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
	cpw	x, #0x0018
	jrsle	00103$
;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
	add	a, #0xf0
	ld	(y), a
	jra	00104$
00103$:
;	Source/Device/Src/gps.c: 83: GPS_TimeDataSturcture.hour+=8;
	add	a, #0x08
	ld	(y), a
00104$:
;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
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
;	Source/Device/Src/gps.c: 85: }
	addw	sp, #4
	ret
;	Source/Device/Src/gps.c: 93: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
_UART1_RX_IRQHandler:
	div	x, a
;	Source/Device/Src/gps.c: 95: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
	push	#0x55
	push	#0x02
	call	_UART1_GetITStatus
	popw	x
	dec	a
	jrne	00109$
;	Source/Device/Src/gps.c: 97: if(num<34)
	ld	a, _num+0
	cp	a, #0x22
	jrnc	00102$
;	Source/Device/Src/gps.c: 99: GPS_RxBuf[num]=UART1_ReceiveData8();
	clrw	x
	ld	a, _num+0
	ld	xl, a
	addw	x, #(_GPS_RxBuf + 0)
	pushw	x
	call	_UART1_ReceiveData8
	popw	x
	ld	(x), a
;	Source/Device/Src/gps.c: 100: ++num;
	inc	_num+0
	jra	00111$
00102$:
;	Source/Device/Src/gps.c: 103: num=0;
	clr	_num+0
	jra	00111$
00109$:
;	Source/Device/Src/gps.c: 105: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
	push	#0x44
	push	#0x02
	call	_UART1_GetITStatus
	popw	x
	dec	a
	jrne	00111$
;	Source/Device/Src/gps.c: 107: UART1_ReceiveData8();
	call	_UART1_ReceiveData8
;	Source/Device/Src/gps.c: 108: num=0;
	clr	_num+0
;	Source/Device/Src/gps.c: 109: if(checksum()==SUCCESS)
	call	_checksum
	dec	a
	jrne	00111$
;	Source/Device/Src/gps.c: 111: GPS_GetTime();
	call	_GPS_GetTime
00111$:
;	Source/Device/Src/gps.c: 114: }
	iret
;	Source/Device/Src/gps.c: 122: static ErrorStatus checksum(void)
;	-----------------------------------------
;	 function checksum
;	-----------------------------------------
_checksum:
	sub	sp, #14
;	Source/Device/Src/gps.c: 125: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
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
;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ld	a, (0x0e, sp)
	ld	(0x05, sp), a
	ldw	(0x06, sp), y
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
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
	ldw	y, (0x0d, sp)
	ldw	(0x0b, sp), x
	ldw	x, y
	cpw	x, (0x0b, sp)
	jrc	00236$
	jp	00101$
00236$:
;	Source/Device/Src/gps.c: 129: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
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
;	Source/Device/Src/gps.c: 130: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
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
;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ldw	x, (0x0d, sp)
	incw	x
	ldw	(0x0d, sp), x
	jp	00106$
00101$:
;	Source/Device/Src/gps.c: 132: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
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
;	Source/Device/Src/gps.c: 133: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
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
;	Source/Device/Src/gps.c: 134: return SUCCESS;
	ld	a, #0x01
;	Source/Device/Src/gps.c: 136: return ERROR;
	.byte 0x21
00103$:
	clr	a
00108$:
;	Source/Device/Src/gps.c: 137: }
	addw	sp, #14
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
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
__xinit__num:
	.db #0x00	; 0
	.area CABS (ABS)
