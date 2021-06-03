;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module nixie
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _strchr
	.globl _SPI_GetFlagStatus
	.globl _SPI_SendData
	.globl _SPI_Cmd
	.globl _SPI_Init
	.globl _SPI_DeInit
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _aaaa
	.globl _NIXIE_Init
	.globl _NIXIE_DisplayChar
	.globl _NIXIE_DisplayTime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_aaaa::
	.ds 2
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
;	Source/Device/Src/nixie.c: 48: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	Source/Device/Src/nixie.c: 57: for (int i = 0; i < 300; i++);//这个比较合适
	clrw	x
00103$:
	cpw	x, #0x012c
	jrslt	00118$
	ret
00118$:
	incw	x
	jra	00103$
;	Source/Device/Src/nixie.c: 58: }
	ret
;	Source/Device/Src/nixie.c: 63: void NIXIE_Init(void)
;	-----------------------------------------
;	 function NIXIE_Init
;	-----------------------------------------
_NIXIE_Init:
;	Source/Device/Src/nixie.c: 65: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
	push	#0xe0
	push	#0x20
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 66: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
	push	#0xe0
	push	#0x40
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 67: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
	push	#0xe0
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 68: SPI_DeInit();
	call	_SPI_DeInit
;	Source/Device/Src/nixie.c: 70: SPI_Init(SPI_FIRSTBIT_LSB,
	push	#0x07
	push	#0x02
	push	#0xc0
	push	#0x00
	push	#0x00
	push	#0x04
	push	#0x00
	push	#0x80
	call	_SPI_Init
	addw	sp, #8
;	Source/Device/Src/nixie.c: 78: SPI_Cmd(ENABLE);
	push	#0x01
	call	_SPI_Cmd
	pop	a
;	Source/Device/Src/nixie.c: 79: }
	ret
;	Source/Device/Src/nixie.c: 89: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
;	-----------------------------------------
;	 function NIXIE_DisplayChar
;	-----------------------------------------
_NIXIE_DisplayChar:
	sub	sp, #5
;	Source/Device/Src/nixie.c: 91: uint16_t tmp=0;
	clrw	x
	ldw	(0x03, sp), x
;	Source/Device/Src/nixie.c: 94: if(strchr(character,'.')!=NULL)
	push	#0x2e
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00118$
;	Source/Device/Src/nixie.c: 95: tmp|=1<<11;
	ldw	x, #0x0800
	ldw	(0x03, sp), x
;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
00118$:
	clr	(0x05, sp)
00111$:
	ld	a, (0x05, sp)
	cp	a, #0x09
	jrnc	00105$
;	Source/Device/Src/nixie.c: 98: if(strchr(character,'1'+i)!=NULL)
	ld	a, (0x05, sp)
	clrw	x
	ld	xl, a
	addw	x, #0x0031
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	ldw	(0x01, sp), x
	jreq	00112$
;	Source/Device/Src/nixie.c: 99: tmp|=1<<10-i;
	ld	a, #0x0a
	sub	a, (0x05, sp)
	clrw	x
	incw	x
	tnz	a
	jreq	00150$
00149$:
	sllw	x
	dec	a
	jrne	00149$
00150$:
	ld	a, xl
	or	a, (0x04, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00112$:
;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
	inc	(0x05, sp)
	jra	00111$
00105$:
;	Source/Device/Src/nixie.c: 101: if(strchr(character,'0')!=NULL)
	push	#0x30
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00107$
;	Source/Device/Src/nixie.c: 102: tmp|=1<<1;
	ld	a, (0x04, sp)
	or	a, #0x02
	ld	xl, a
	ld	a, (0x03, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00107$:
;	Source/Device/Src/nixie.c: 103: if(tubeState==ENABLE)
	ld	a, (0x0b, sp)
	dec	a
	jrne	00109$
;	Source/Device/Src/nixie.c: 104: tmp|=1<<0;
	ldw	x, (0x03, sp)
	srlw	x
	scf
	rlcw	x
	ldw	(0x03, sp), x
00109$:
;	Source/Device/Src/nixie.c: 106: output=(tmp&0xAAA)>>1;
	ldw	x, (0x03, sp)
	ld	a, xl
	and	a, #0xaa
	ld	yl, a
	ld	a, xh
	and	a, #0x0a
	ld	yh, a
	srlw	y
;	Source/Device/Src/nixie.c: 107: output|=(tmp&0x555)<<1;
	ld	a, xl
	and	a, #0x55
	rlwa	x
	and	a, #0x05
	ld	xh, a
	sllw	x
	ldw	(0x04, sp), y
	ld	a, xl
	or	a, (0x05, sp)
	rlwa	x
	or	a, (0x04, sp)
;	Source/Device/Src/nixie.c: 109: return output;
	ld	xh, a
;	Source/Device/Src/nixie.c: 110: }
	addw	sp, #5
	ret
;	Source/Device/Src/nixie.c: 120: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
;	-----------------------------------------
;	 function NIXIE_DisplayTime
;	-----------------------------------------
_NIXIE_DisplayTime:
	sub	sp, #17
;	Source/Device/Src/nixie.c: 124: char tube1s[]="0",tube2s[]="0",tube3s[]="0",tube4s[]="0";
	ld	a, #0x30
	ld	(0x01, sp), a
	ldw	x, sp
	clr	(2, x)
	ld	a, #0x30
	ld	(0x03, sp), a
	ldw	x, sp
	clr	(4, x)
	ld	a, #0x30
	ld	(0x05, sp), a
	ldw	x, sp
	clr	(6, x)
	ld	a, #0x30
	ld	(0x07, sp), a
	ldw	x, sp
	clr	(8, x)
;	Source/Device/Src/nixie.c: 126: uint8_t tmp=aaaa/1000;
	push	#0xe8
	push	#0x03
	ldw	x, _aaaa+0
	pushw	x
	call	__divsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 127: tube1s[0]+=tmp;
	ld	a, (0x01, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x01, sp), a
;	Source/Device/Src/nixie.c: 129: tmp=aaaa%1000/100;
	push	#0xe8
	push	#0x03
	ldw	x, _aaaa+0
	pushw	x
	call	__modsint
	addw	sp, #4
	push	#0x64
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 130: tube2s[0]+=tmp;
	ld	a, (0x03, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x03, sp), a
;	Source/Device/Src/nixie.c: 132: tmp=aaaa%100/10;
	push	#0x64
	push	#0x00
	ldw	x, _aaaa+0
	pushw	x
	call	__modsint
	addw	sp, #4
	push	#0x0a
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 133: tube3s[0]+=tmp;
	ld	a, (0x05, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x05, sp), a
;	Source/Device/Src/nixie.c: 135: tmp=aaaa%10;
	push	#0x0a
	push	#0x00
	ldw	x, _aaaa+0
	pushw	x
	call	__modsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 136: tube4s[0]+=tmp;
	ld	a, (0x07, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x07, sp), a
;	Source/Device/Src/nixie.c: 138: tube1=NIXIE_DisplayChar(1,tube1s,ENABLE);
	push	#0x01
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	push	#0x01
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x09, sp), x
;	Source/Device/Src/nixie.c: 139: tube2=NIXIE_DisplayChar(2,tube2s,ENABLE);
	push	#0x01
	ldw	x, sp
	addw	x, #4
	pushw	x
	push	#0x02
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0b, sp), x
;	Source/Device/Src/nixie.c: 140: tube3=NIXIE_DisplayChar(3,tube3s,ENABLE);
	push	#0x01
	ldw	x, sp
	addw	x, #6
	pushw	x
	push	#0x03
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0d, sp), x
;	Source/Device/Src/nixie.c: 141: tube4=NIXIE_DisplayChar(4,tube4s,ENABLE);
	push	#0x01
	ldw	x, sp
	addw	x, #8
	pushw	x
	push	#0x04
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0f, sp), x
;	Source/Device/Src/nixie.c: 144: ++aaaa;
	ldw	x, _aaaa+0
	incw	x
;	Source/Device/Src/nixie.c: 145: if(aaaa==9999)
	ldw	_aaaa+0, x
	cpw	x, #0x270f
	jrne	00102$
;	Source/Device/Src/nixie.c: 146: aaaa=0;
	clrw	x
	ldw	_aaaa+0, x
00102$:
;	Source/Device/Src/nixie.c: 157: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	Source/Device/Src/nixie.c: 162: tmp1=(uint8_t)((tube4&0b11111110)>>1);
	ldw	x, (0x0f, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
;	Source/Device/Src/nixie.c: 163: tmp2=(uint8_t)((tube4&0b00000001)<<7);
	ld	a, (0x10, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 164: tmp1=tmp1|tmp2;
	pushw	x
	or	a, (2, sp)
	popw	x
;	Source/Device/Src/nixie.c: 165: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 167: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00103$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00103$
;	Source/Device/Src/nixie.c: 169: tmp1=(uint8_t)((tube3&0b1111)<<4);
	ld	a, (0x0e, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x11, sp), a
;	Source/Device/Src/nixie.c: 170: tmp2=(uint8_t)(tube4>>8);
	ld	a, (0x0f, sp)
	clrw	x
;	Source/Device/Src/nixie.c: 171: tmp1=tmp1|tmp2;
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 172: tmp2=(tmp1&0b00000001)<<7;
	ld	xl, a
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x11, sp), a
;	Source/Device/Src/nixie.c: 173: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 174: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 176: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00106$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00106$
;	Source/Device/Src/nixie.c: 178: tmp1=(uint8_t)(tube3>>5);
	ldw	x, (0x0d, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x11, sp), a
	exg	a, xl
;	Source/Device/Src/nixie.c: 179: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
	ldw	y, (0x0d, sp)
	clrw	x
	ld	a, yl
	and	a, #0x10
	ld	xl, a
	ld	a, #0x10
	div	x, a
	ld	a, xl
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 180: tmp1=tmp1|tmp2;
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 181: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 183: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00109$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00109$
;	Source/Device/Src/nixie.c: 186: tmp1=(uint8_t)((tube2&0b11111110)>>1);
	ldw	x, (0x0b, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
;	Source/Device/Src/nixie.c: 187: tmp2=(uint8_t)((tube2&0b00000001)<<7);
	ld	a, (0x0c, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 188: tmp1=tmp1|tmp2;
	pushw	x
	or	a, (2, sp)
	popw	x
;	Source/Device/Src/nixie.c: 189: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 191: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00112$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00112$
;	Source/Device/Src/nixie.c: 193: tmp1=(uint8_t)((tube1&0b1111)<<4);
	ld	a, (0x0a, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x11, sp), a
;	Source/Device/Src/nixie.c: 194: tmp2=(uint8_t)(tube2>>8);
	ld	a, (0x0b, sp)
	clrw	x
;	Source/Device/Src/nixie.c: 195: tmp1=tmp1|tmp2;
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 196: tmp2=(tmp1&0b00000001)<<7;
	ld	xl, a
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x11, sp), a
;	Source/Device/Src/nixie.c: 197: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 198: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 200: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00115$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00115$
;	Source/Device/Src/nixie.c: 202: tmp1=(uint8_t)(tube1>>5);
	ldw	x, (0x09, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x11, sp), a
	exg	a, xl
;	Source/Device/Src/nixie.c: 203: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
	ldw	y, (0x09, sp)
	clrw	x
	ld	a, yl
	and	a, #0x10
	ld	xl, a
	ld	a, #0x10
	div	x, a
	ld	a, xl
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 204: tmp1=tmp1|tmp2;
	or	a, (0x11, sp)
;	Source/Device/Src/nixie.c: 205: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 207: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00118$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00118$
;	Source/Device/Src/nixie.c: 209: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteHigh
;	Source/Device/Src/nixie.c: 210: }
	addw	sp, #20
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__aaaa:
	.dw #0x0000
	.area CABS (ABS)
