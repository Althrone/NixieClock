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
	.globl _UART1_ReceiveData8
	.globl _UART1_ITConfig
	.globl _UART1_Cmd
	.globl _UART1_Init
	.globl _UART1_DeInit
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
;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
;	-----------------------------------------
;	 function GPS_Init
;	-----------------------------------------
_GPS_Init:
	Sgps$GPS_Init$1 ==.
	Sgps$GPS_Init$2 ==.
;	Source/Device/Src/gps.c: 36: UART1_DeInit();
	call	_UART1_DeInit
	Sgps$GPS_Init$3 ==.
;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)115200,
	push	#0x0c
	Sgps$GPS_Init$4 ==.
	push	#0x80
	Sgps$GPS_Init$5 ==.
	push	#0x00
	Sgps$GPS_Init$6 ==.
	push	#0x00
	Sgps$GPS_Init$7 ==.
	push	#0x00
	Sgps$GPS_Init$8 ==.
	push	#0x00
	Sgps$GPS_Init$9 ==.
	push	#0xc2
	Sgps$GPS_Init$10 ==.
	push	#0x01
	Sgps$GPS_Init$11 ==.
	push	#0x00
	Sgps$GPS_Init$12 ==.
	call	_UART1_Init
	addw	sp, #9
	Sgps$GPS_Init$13 ==.
	Sgps$GPS_Init$14 ==.
;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
	push	#0x01
	Sgps$GPS_Init$15 ==.
	push	#0x05
	Sgps$GPS_Init$16 ==.
	push	#0x02
	Sgps$GPS_Init$17 ==.
	call	_UART1_ITConfig
	addw	sp, #3
	Sgps$GPS_Init$18 ==.
	Sgps$GPS_Init$19 ==.
;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
	push	#0x01
	Sgps$GPS_Init$20 ==.
	push	#0x44
	Sgps$GPS_Init$21 ==.
	push	#0x02
	Sgps$GPS_Init$22 ==.
	call	_UART1_ITConfig
	addw	sp, #3
	Sgps$GPS_Init$23 ==.
	Sgps$GPS_Init$24 ==.
;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
	push	#0x01
	Sgps$GPS_Init$25 ==.
	call	_UART1_Cmd
	pop	a
	Sgps$GPS_Init$26 ==.
	Sgps$GPS_Init$27 ==.
;	Source/Device/Src/gps.c: 47: }
	Sgps$GPS_Init$28 ==.
	XG$GPS_Init$0$0 ==.
	ret
	Sgps$GPS_Init$29 ==.
	Sgps$GPS_GetTime$30 ==.
;	Source/Device/Src/gps.c: 52: void GPS_GetTime(void)
;	-----------------------------------------
;	 function GPS_GetTime
;	-----------------------------------------
_GPS_GetTime:
	Sgps$GPS_GetTime$31 ==.
	sub	sp, #4
	Sgps$GPS_GetTime$32 ==.
	Sgps$GPS_GetTime$33 ==.
	Sgps$GPS_GetTime$34 ==.
;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
	Sgps$GPS_GetTime$35 ==.
	clrw	y
00103$:
	cpw	y, #0x0008
	jrsge	00101$
	Sgps$GPS_GetTime$36 ==.
;	Source/Device/Src/gps.c: 57: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
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
	Sgps$GPS_GetTime$37 ==.
;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
	incw	y
	jra	00103$
00101$:
	Sgps$GPS_GetTime$38 ==.
;	Source/Device/Src/gps.c: 58: GPS_TimeDataSturcture.hour+=8;
	ldw	x, #(_GPS_TimeDataSturcture + 0)+18
	ld	a, (x)
	add	a, #0x08
	ld	(x), a
	Sgps$GPS_GetTime$39 ==.
;	Source/Device/Src/gps.c: 59: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
	ld	a, _GPS_RxBuf+21
	clrw	x
	ld	(0x03, sp), a
	clr	(0x04, sp)
	ld	a, _GPS_RxBuf+20
	clrw	x
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	ldw	(y), x
	Sgps$GPS_GetTime$40 ==.
;	Source/Device/Src/gps.c: 60: }
	addw	sp, #4
	Sgps$GPS_GetTime$41 ==.
	Sgps$GPS_GetTime$42 ==.
	XG$GPS_GetTime$0$0 ==.
	ret
	Sgps$GPS_GetTime$43 ==.
	Sgps$UART1_RX_IRQHandler$44 ==.
;	Source/Device/Src/gps.c: 68: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
;	-----------------------------------------
;	 function UART1_RX_IRQHandler
;	-----------------------------------------
_UART1_RX_IRQHandler:
	div	x, a
	Sgps$UART1_RX_IRQHandler$45 ==.
	Sgps$UART1_RX_IRQHandler$46 ==.
;	Source/Device/Src/gps.c: 70: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
	push	#0x55
	Sgps$UART1_RX_IRQHandler$47 ==.
	push	#0x02
	Sgps$UART1_RX_IRQHandler$48 ==.
	call	_UART1_GetITStatus
	popw	x
	Sgps$UART1_RX_IRQHandler$49 ==.
	dec	a
	jrne	00109$
	Sgps$UART1_RX_IRQHandler$50 ==.
	Sgps$UART1_RX_IRQHandler$51 ==.
	Sgps$UART1_RX_IRQHandler$52 ==.
;	Source/Device/Src/gps.c: 72: if(num<34)
	ld	a, _num+0
	cp	a, #0x22
	jrnc	00102$
	Sgps$UART1_RX_IRQHandler$53 ==.
	Sgps$UART1_RX_IRQHandler$54 ==.
;	Source/Device/Src/gps.c: 74: GPS_RxBuf[num]=UART1_ReceiveData8();
	clrw	x
	ld	a, _num+0
	ld	xl, a
	addw	x, #(_GPS_RxBuf + 0)
	pushw	x
	Sgps$UART1_RX_IRQHandler$55 ==.
	call	_UART1_ReceiveData8
	popw	x
	Sgps$UART1_RX_IRQHandler$56 ==.
	ld	(x), a
	Sgps$UART1_RX_IRQHandler$57 ==.
;	Source/Device/Src/gps.c: 75: ++num;
	inc	_num+0
	Sgps$UART1_RX_IRQHandler$58 ==.
	jra	00111$
00102$:
	Sgps$UART1_RX_IRQHandler$59 ==.
;	Source/Device/Src/gps.c: 78: num=0;
	clr	_num+0
	Sgps$UART1_RX_IRQHandler$60 ==.
	jra	00111$
00109$:
	Sgps$UART1_RX_IRQHandler$61 ==.
;	Source/Device/Src/gps.c: 80: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
	push	#0x44
	Sgps$UART1_RX_IRQHandler$62 ==.
	push	#0x02
	Sgps$UART1_RX_IRQHandler$63 ==.
	call	_UART1_GetITStatus
	popw	x
	Sgps$UART1_RX_IRQHandler$64 ==.
	dec	a
	jrne	00111$
	Sgps$UART1_RX_IRQHandler$65 ==.
	Sgps$UART1_RX_IRQHandler$66 ==.
	Sgps$UART1_RX_IRQHandler$67 ==.
;	Source/Device/Src/gps.c: 82: UART1_ReceiveData8();
	call	_UART1_ReceiveData8
	Sgps$UART1_RX_IRQHandler$68 ==.
;	Source/Device/Src/gps.c: 83: num=0;
	clr	_num+0
	Sgps$UART1_RX_IRQHandler$69 ==.
;	Source/Device/Src/gps.c: 84: if(checksum()==SUCCESS)
	call	_checksum
	dec	a
	jrne	00111$
	Sgps$UART1_RX_IRQHandler$70 ==.
	Sgps$UART1_RX_IRQHandler$71 ==.
	Sgps$UART1_RX_IRQHandler$72 ==.
;	Source/Device/Src/gps.c: 86: GPS_GetTime();
	call	_GPS_GetTime
	Sgps$UART1_RX_IRQHandler$73 ==.
00111$:
	Sgps$UART1_RX_IRQHandler$74 ==.
;	Source/Device/Src/gps.c: 89: }
	Sgps$UART1_RX_IRQHandler$75 ==.
	XG$UART1_RX_IRQHandler$0$0 ==.
	iret
	Sgps$UART1_RX_IRQHandler$76 ==.
	Sgps$checksum$77 ==.
;	Source/Device/Src/gps.c: 97: static ErrorStatus checksum(void)
;	-----------------------------------------
;	 function checksum
;	-----------------------------------------
_checksum:
	Sgps$checksum$78 ==.
	sub	sp, #14
	Sgps$checksum$79 ==.
	Sgps$checksum$80 ==.
;	Source/Device/Src/gps.c: 100: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
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
	Sgps$checksum$81 ==.
	Sgps$checksum$82 ==.
;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ld	a, (0x0e, sp)
	ld	(0x05, sp), a
	ldw	(0x06, sp), y
	Sgps$checksum$83 ==.
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
	Sgps$checksum$84 ==.
	push	#0x00
	Sgps$checksum$85 ==.
	pushw	x
	Sgps$checksum$86 ==.
	call	__divsint
	addw	sp, #4
	Sgps$checksum$87 ==.
	ldw	y, (0x0d, sp)
	ldw	(0x0b, sp), x
	ldw	x, y
	cpw	x, (0x0b, sp)
	jrc	00236$
	jp	00101$
00236$:
	Sgps$checksum$88 ==.
;	Source/Device/Src/gps.c: 104: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
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
	Sgps$checksum$89 ==.
;	Source/Device/Src/gps.c: 105: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
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
	Sgps$checksum$90 ==.
;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
	ldw	x, (0x0d, sp)
	incw	x
	ldw	(0x0d, sp), x
	jp	00106$
00101$:
	Sgps$checksum$91 ==.
;	Source/Device/Src/gps.c: 107: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
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
	Sgps$checksum$92 ==.
;	Source/Device/Src/gps.c: 108: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
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
	Sgps$checksum$93 ==.
	Sgps$checksum$94 ==.
;	Source/Device/Src/gps.c: 109: return SUCCESS;
	ld	a, #0x01
	jra	00108$
00103$:
	Sgps$checksum$95 ==.
;	Source/Device/Src/gps.c: 111: return ERROR;
	clr	a
00108$:
	Sgps$checksum$96 ==.
;	Source/Device/Src/gps.c: 112: }
	addw	sp, #14
	Sgps$checksum$97 ==.
	Sgps$checksum$98 ==.
	XFgps$checksum$0$0 ==.
	ret
	Sgps$checksum$99 ==.
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
	.sleb128	31
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$2-Sgps$GPS_Init$0
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$3-Sgps$GPS_Init$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$14-Sgps$GPS_Init$3
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$19-Sgps$GPS_Init$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$24-Sgps$GPS_Init$19
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_Init$27-Sgps$GPS_Init$24
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sgps$GPS_Init$28-Sgps$GPS_Init$27
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$GPS_GetTime$30)
	.db	3
	.sleb128	51
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$34-Sgps$GPS_GetTime$30
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$36-Sgps$GPS_GetTime$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$37-Sgps$GPS_GetTime$36
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$38-Sgps$GPS_GetTime$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$39-Sgps$GPS_GetTime$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$GPS_GetTime$40-Sgps$GPS_GetTime$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sgps$GPS_GetTime$42-Sgps$GPS_GetTime$40
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$44)
	.db	3
	.sleb128	67
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$46-Sgps$UART1_RX_IRQHandler$44
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$52-Sgps$UART1_RX_IRQHandler$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$54-Sgps$UART1_RX_IRQHandler$52
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$57-Sgps$UART1_RX_IRQHandler$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$59-Sgps$UART1_RX_IRQHandler$57
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$61-Sgps$UART1_RX_IRQHandler$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$67-Sgps$UART1_RX_IRQHandler$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$68-Sgps$UART1_RX_IRQHandler$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$69-Sgps$UART1_RX_IRQHandler$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$72-Sgps$UART1_RX_IRQHandler$69
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$UART1_RX_IRQHandler$74-Sgps$UART1_RX_IRQHandler$72
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Sgps$UART1_RX_IRQHandler$75-Sgps$UART1_RX_IRQHandler$74
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sgps$checksum$77)
	.db	3
	.sleb128	96
	.db	1
	.db	9
	.dw	Sgps$checksum$80-Sgps$checksum$77
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$checksum$82-Sgps$checksum$80
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Sgps$checksum$88-Sgps$checksum$82
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$89-Sgps$checksum$88
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$90-Sgps$checksum$89
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Sgps$checksum$91-Sgps$checksum$90
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Sgps$checksum$92-Sgps$checksum$91
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$94-Sgps$checksum$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sgps$checksum$95-Sgps$checksum$94
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sgps$checksum$96-Sgps$checksum$95
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sgps$checksum$98-Sgps$checksum$96
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sgps$checksum$97)
	.dw	0,(Sgps$checksum$99)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$checksum$93)
	.dw	0,(Sgps$checksum$97)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$87)
	.dw	0,(Sgps$checksum$93)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$86)
	.dw	0,(Sgps$checksum$87)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Sgps$checksum$85)
	.dw	0,(Sgps$checksum$86)
	.dw	2
	.db	120
	.sleb128	17
	.dw	0,(Sgps$checksum$84)
	.dw	0,(Sgps$checksum$85)
	.dw	2
	.db	120
	.sleb128	16
	.dw	0,(Sgps$checksum$79)
	.dw	0,(Sgps$checksum$84)
	.dw	2
	.db	120
	.sleb128	15
	.dw	0,(Sgps$checksum$78)
	.dw	0,(Sgps$checksum$79)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
	.dw	0,(Sgps$UART1_RX_IRQHandler$76)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$UART1_RX_IRQHandler$45)
	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$GPS_GetTime$41)
	.dw	0,(Sgps$GPS_GetTime$43)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_GetTime$32)
	.dw	0,(Sgps$GPS_GetTime$41)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sgps$GPS_GetTime$31)
	.dw	0,(Sgps$GPS_GetTime$32)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sgps$GPS_Init$26)
	.dw	0,(Sgps$GPS_Init$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_Init$25)
	.dw	0,(Sgps$GPS_Init$26)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$GPS_Init$23)
	.dw	0,(Sgps$GPS_Init$25)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_Init$22)
	.dw	0,(Sgps$GPS_Init$23)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sgps$GPS_Init$21)
	.dw	0,(Sgps$GPS_Init$22)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$GPS_Init$20)
	.dw	0,(Sgps$GPS_Init$21)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$GPS_Init$18)
	.dw	0,(Sgps$GPS_Init$20)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_Init$17)
	.dw	0,(Sgps$GPS_Init$18)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sgps$GPS_Init$16)
	.dw	0,(Sgps$GPS_Init$17)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$GPS_Init$15)
	.dw	0,(Sgps$GPS_Init$16)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$GPS_Init$13)
	.dw	0,(Sgps$GPS_Init$15)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sgps$GPS_Init$12)
	.dw	0,(Sgps$GPS_Init$13)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Sgps$GPS_Init$11)
	.dw	0,(Sgps$GPS_Init$12)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sgps$GPS_Init$10)
	.dw	0,(Sgps$GPS_Init$11)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Sgps$GPS_Init$9)
	.dw	0,(Sgps$GPS_Init$10)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Sgps$GPS_Init$8)
	.dw	0,(Sgps$GPS_Init$9)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sgps$GPS_Init$7)
	.dw	0,(Sgps$GPS_Init$8)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sgps$GPS_Init$6)
	.dw	0,(Sgps$GPS_Init$7)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sgps$GPS_Init$5)
	.dw	0,(Sgps$GPS_Init$6)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sgps$GPS_Init$4)
	.dw	0,(Sgps$GPS_Init$5)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Sgps$GPS_Init$1)
	.dw	0,(Sgps$GPS_Init$4)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	14
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
	.uleb128	12
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
	.uleb128	5
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
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	10
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
	.uleb128	4
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	16
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
	.uleb128	8
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
	.uleb128	13
	.uleb128	33
	.db	0
	.uleb128	47
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	15
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
	.ascii "Source/Device/Src/gps.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "GPS_Init"
	.db	0
	.dw	0,(_GPS_Init)
	.dw	0,(XG$GPS_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+300)
	.uleb128	3
	.dw	0,145
	.ascii "GPS_GetTime"
	.db	0
	.dw	0,(_GPS_GetTime)
	.dw	0,(XG$GPS_GetTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+256)
	.uleb128	4
	.dw	0,(Sgps$GPS_GetTime$33)
	.dw	0,(Sgps$GPS_GetTime$35)
	.uleb128	5
	.db	6
	.db	84
	.db	147
	.uleb128	1
	.db	83
	.db	147
	.uleb128	1
	.ascii "i"
	.db	0
	.dw	0,145
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	7
	.dw	0,230
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,(_UART1_RX_IRQHandler)
	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+104)
	.uleb128	8
	.dw	0,214
	.dw	0,(Sgps$UART1_RX_IRQHandler$51)
	.dw	0,(Sgps$UART1_RX_IRQHandler$60)
	.uleb128	9
	.dw	0,(Sgps$UART1_RX_IRQHandler$53)
	.dw	0,(Sgps$UART1_RX_IRQHandler$58)
	.uleb128	0
	.uleb128	10
	.dw	0,(Sgps$UART1_RX_IRQHandler$66)
	.uleb128	9
	.dw	0,(Sgps$UART1_RX_IRQHandler$71)
	.dw	0,(Sgps$UART1_RX_IRQHandler$73)
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	11
	.dw	0,317
	.ascii "checksum"
	.db	0
	.dw	0,(_checksum)
	.dw	0,(XFgps$checksum$0$0+1)
	.db	0
	.dw	0,(Ldebug_loc_start)
	.dw	0,230
	.uleb128	8
	.dw	0,302
	.dw	0,(Sgps$checksum$81)
	.dw	0,(Sgps$checksum$83)
	.uleb128	5
	.db	2
	.db	145
	.sleb128	-2
	.ascii "i"
	.db	0
	.dw	0,334
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	-14
	.ascii "ckSum"
	.db	0
	.dw	0,317
	.uleb128	0
	.uleb128	6
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	6
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	12
	.dw	0,363
	.db	34
	.dw	0,230
	.uleb128	13
	.db	33
	.uleb128	0
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_GPS_RxBuf)
	.ascii "GPS_RxBuf"
	.db	0
	.db	1
	.dw	0,350
	.uleb128	5
	.db	5
	.db	3
	.dw	0,(_num)
	.ascii "num"
	.db	0
	.dw	0,230
	.uleb128	6
	.ascii "float"
	.db	0
	.db	4
	.db	4
	.uleb128	15
	.dw	0,605
	.ascii "__00000009"
	.db	0
	.db	24
	.uleb128	16
	.ascii "runTime"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,317
	.uleb128	16
	.ascii "tAcc"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,400
	.uleb128	16
	.ascii "msErr"
	.db	0
	.db	2
	.db	35
	.uleb128	8
	.dw	0,400
	.uleb128	16
	.ascii "ms"
	.db	0
	.db	2
	.db	35
	.uleb128	12
	.dw	0,334
	.uleb128	16
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	14
	.dw	0,334
	.uleb128	16
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	16
	.dw	0,230
	.uleb128	16
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	17
	.dw	0,230
	.uleb128	16
	.ascii "hour"
	.db	0
	.db	2
	.db	35
	.uleb128	18
	.dw	0,230
	.uleb128	16
	.ascii "min"
	.db	0
	.db	2
	.db	35
	.uleb128	19
	.dw	0,230
	.uleb128	16
	.ascii "sec"
	.db	0
	.db	2
	.db	35
	.uleb128	20
	.dw	0,230
	.uleb128	16
	.ascii "valid"
	.db	0
	.db	2
	.db	35
	.uleb128	21
	.dw	0,230
	.uleb128	16
	.ascii "timeSrc"
	.db	0
	.db	2
	.db	35
	.uleb128	22
	.dw	0,230
	.uleb128	16
	.ascii "dateValid"
	.db	0
	.db	2
	.db	35
	.uleb128	23
	.dw	0,230
	.uleb128	0
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_GPS_TimeDataSturcture)
	.ascii "GPS_TimeDataSturcture"
	.db	0
	.db	1
	.dw	0,409
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
	.dw	0,90
	.ascii "GPS_GetTime"
	.db	0
	.dw	0,152
	.ascii "UART1_RX_IRQHandler"
	.db	0
	.dw	0,363
	.ascii "GPS_RxBuf"
	.db	0
	.dw	0,605
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
	.dw	0,(Sgps$checksum$78)	;initial loc
	.dw	0,Sgps$checksum$99-Sgps$checksum$78
	.db	1
	.dw	0,(Sgps$checksum$78)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$checksum$79)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$84)
	.db	14
	.uleb128	17
	.db	1
	.dw	0,(Sgps$checksum$85)
	.db	14
	.uleb128	18
	.db	1
	.dw	0,(Sgps$checksum$86)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Sgps$checksum$87)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$93)
	.db	14
	.uleb128	16
	.db	1
	.dw	0,(Sgps$checksum$97)
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
	.dw	0,(Sgps$UART1_RX_IRQHandler$45)	;initial loc
	.dw	0,Sgps$UART1_RX_IRQHandler$76-Sgps$UART1_RX_IRQHandler$45
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$45)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
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
	.dw	0,(Sgps$GPS_GetTime$31)	;initial loc
	.dw	0,Sgps$GPS_GetTime$43-Sgps$GPS_GetTime$31
	.db	1
	.dw	0,(Sgps$GPS_GetTime$31)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_GetTime$32)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sgps$GPS_GetTime$41)
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
	.dw	0,159
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sgps$GPS_Init$1)	;initial loc
	.dw	0,Sgps$GPS_Init$29-Sgps$GPS_Init$1
	.db	1
	.dw	0,(Sgps$GPS_Init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_Init$4)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sgps$GPS_Init$5)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sgps$GPS_Init$6)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sgps$GPS_Init$7)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sgps$GPS_Init$8)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sgps$GPS_Init$9)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Sgps$GPS_Init$10)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Sgps$GPS_Init$11)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sgps$GPS_Init$12)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Sgps$GPS_Init$13)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_Init$15)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sgps$GPS_Init$16)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sgps$GPS_Init$17)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sgps$GPS_Init$18)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_Init$20)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sgps$GPS_Init$21)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sgps$GPS_Init$22)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sgps$GPS_Init$23)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sgps$GPS_Init$25)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Sgps$GPS_Init$26)
	.db	14
	.uleb128	2
