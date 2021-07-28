;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module nixie
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _SPI_GetFlagStatus
	.globl _SPI_SendData
	.globl _SPI_Cmd
	.globl _SPI_Init
	.globl _SPI_DeInit
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _nixie_tube4
	.globl _nixie_tube3
	.globl _nixie_tube2
	.globl _nixie_tube1
	.globl _tube_state
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
_tube_state::
	.ds 1
_nixie_tube1::
	.ds 1
_nixie_tube2::
	.ds 1
_nixie_tube3::
	.ds 1
_nixie_tube4::
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
;	Source/Device/Src/nixie.c: 58: void NIXIE_Init(void)
;	-----------------------------------------
;	 function NIXIE_Init
;	-----------------------------------------
_NIXIE_Init:
	sub	sp, #3
;	Source/Device/Src/nixie.c: 60: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
	push	#0xe0
	push	#0x20
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 61: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
	push	#0xe0
	push	#0x40
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 62: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
	push	#0xe0
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Device/Src/nixie.c: 63: SPI_DeInit();
	call	_SPI_DeInit
;	Source/Device/Src/nixie.c: 65: SPI_Init(SPI_FIRSTBIT_LSB,
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
;	Source/Device/Src/nixie.c: 73: SPI_Cmd(ENABLE);
	push	#0x01
	call	_SPI_Cmd
	pop	a
;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
	clr	(0x01, sp)
00111$:
	ld	a, (0x01, sp)
	cp	a, #0x0a
	jrnc	00113$
;	Source/Device/Src/nixie.c: 78: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
;	Source/Device/Src/nixie.c: 79: NIXIE_DisplayTime(i*10+i,i*10+i);
	ld	a, (0x01, sp)
	ld	xl, a
	ld	a, #0x0a
	mul	x, a
	ld	a, (0x01, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	push	a
	push	a
	call	_NIXIE_DisplayTime
	popw	x
;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
	clrw	x
	ldw	(0x02, sp), x
00108$:
	ldw	x, (0x02, sp)
	cpw	x, #0x0064
	jrnc	00112$
;	Source/Device/Src/nixie.c: 82: for(uint16_t j=0;j<1000;++j);
	clrw	x
00105$:
	ldw	y, x
	cpw	y, #0x03e8
	jrnc	00109$
	incw	x
	jra	00105$
00109$:
;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
	ldw	x, (0x02, sp)
	incw	x
	ldw	(0x02, sp), x
	jra	00108$
00112$:
;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
	inc	(0x01, sp)
	jra	00111$
00113$:
;	Source/Device/Src/nixie.c: 85: }
	addw	sp, #3
	ret
;	Source/Device/Src/nixie.c: 96: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
;	-----------------------------------------
;	 function NIXIE_DisplayChar
;	-----------------------------------------
_NIXIE_DisplayChar:
	sub	sp, #5
;	Source/Device/Src/nixie.c: 98: uint16_t tmp=0;
	clrw	x
	ldw	(0x03, sp), x
;	Source/Device/Src/nixie.c: 101: if(strchr(character,'.')!=NULL)
	push	#0x2e
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00118$
;	Source/Device/Src/nixie.c: 102: tmp|=1<<11;
	ldw	x, #0x0800
	ldw	(0x03, sp), x
;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
00118$:
	clr	(0x05, sp)
00111$:
	ld	a, (0x05, sp)
	cp	a, #0x09
	jrnc	00105$
;	Source/Device/Src/nixie.c: 105: if(strchr(character,'1'+i)!=NULL)
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
;	Source/Device/Src/nixie.c: 106: tmp|=1<<10-i;
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
;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
	inc	(0x05, sp)
	jra	00111$
00105$:
;	Source/Device/Src/nixie.c: 108: if(strchr(character,'0')!=NULL)
	push	#0x30
	push	#0x00
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00107$
;	Source/Device/Src/nixie.c: 109: tmp|=1<<1;
	ld	a, (0x04, sp)
	or	a, #0x02
	ld	xl, a
	ld	a, (0x03, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00107$:
;	Source/Device/Src/nixie.c: 110: if(tubeState==ENABLE)
	ld	a, (0x0b, sp)
	dec	a
	jrne	00109$
;	Source/Device/Src/nixie.c: 111: tmp|=1<<0;
	ldw	x, (0x03, sp)
	srlw	x
	scf
	rlcw	x
	ldw	(0x03, sp), x
00109$:
;	Source/Device/Src/nixie.c: 113: output=(tmp&0xAAA)>>1;
	ldw	x, (0x03, sp)
	ld	a, xl
	and	a, #0xaa
	ld	yl, a
	ld	a, xh
	and	a, #0x0a
	ld	yh, a
	srlw	y
;	Source/Device/Src/nixie.c: 114: output|=(tmp&0x555)<<1;
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
;	Source/Device/Src/nixie.c: 116: return output;
	ld	xh, a
;	Source/Device/Src/nixie.c: 117: }
	addw	sp, #5
	ret
;	Source/Device/Src/nixie.c: 135: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
;	-----------------------------------------
;	 function NIXIE_DisplayTime
;	-----------------------------------------
_NIXIE_DisplayTime:
	sub	sp, #18
;	Source/Device/Src/nixie.c: 139: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
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
	ld	a, #0x2e
	ld	(6, x), a
	ldw	x, sp
	clr	(7, x)
	ld	a, #0x30
	ld	(0x08, sp), a
	ldw	x, sp
	clr	(9, x)
;	Source/Device/Src/nixie.c: 141: uint8_t tmp=hour/10;
	ld	a, (0x15, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	push	#0x0a
	push	#0x00
	ldw	x, (0x13, sp)
	pushw	x
	call	__divsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 142: tube1s[0]+=tmp;
	ld	a, (0x01, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x01, sp), a
;	Source/Device/Src/nixie.c: 144: tmp=hour%10;
	push	#0x0a
	push	#0x00
	ldw	x, (0x13, sp)
	pushw	x
	call	__modsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 145: tube2s[0]+=tmp;
	ld	a, (0x03, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x03, sp), a
;	Source/Device/Src/nixie.c: 147: tmp=min/10;
	ld	a, (0x16, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	push	#0x0a
	push	#0x00
	ldw	x, (0x13, sp)
	pushw	x
	call	__divsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 148: tube3s[0]+=tmp;
	ld	a, (0x05, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x05, sp), a
;	Source/Device/Src/nixie.c: 150: tmp=min%10;
	push	#0x0a
	push	#0x00
	ldw	x, (0x13, sp)
	pushw	x
	call	__modsint
	addw	sp, #4
;	Source/Device/Src/nixie.c: 151: tube4s[0]+=tmp;
	ld	a, (0x08, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	ld	(0x08, sp), a
;	Source/Device/Src/nixie.c: 153: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
	push	_tube_state+0
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	push	#0x01
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0a, sp), x
;	Source/Device/Src/nixie.c: 154: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
	push	_tube_state+0
	ldw	x, sp
	addw	x, #4
	pushw	x
	push	#0x02
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0c, sp), x
;	Source/Device/Src/nixie.c: 155: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
	push	_tube_state+0
	ldw	x, sp
	addw	x, #6
	pushw	x
	push	#0x03
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x0e, sp), x
;	Source/Device/Src/nixie.c: 156: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
	push	_tube_state+0
	ldw	x, sp
	addw	x, #9
	pushw	x
	push	#0x04
	call	_NIXIE_DisplayChar
	addw	sp, #4
	ldw	(0x10, sp), x
;	Source/Device/Src/nixie.c: 160: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	Source/Device/Src/nixie.c: 165: tmp1=(uint8_t)((tube4&0b11111110)>>1);
	ldw	x, (0x10, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
;	Source/Device/Src/nixie.c: 166: tmp2=(uint8_t)((tube4&0b00000001)<<7);
	ld	a, (0x11, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 167: tmp1=tmp1|tmp2;
	pushw	x
	or	a, (2, sp)
	popw	x
;	Source/Device/Src/nixie.c: 168: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 170: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00101$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00101$
;	Source/Device/Src/nixie.c: 172: tmp1=(uint8_t)((tube3&0b1111)<<4);
	ld	a, (0x0f, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
;	Source/Device/Src/nixie.c: 173: tmp2=(uint8_t)(tube4>>8);
	ld	a, (0x10, sp)
	clrw	x
;	Source/Device/Src/nixie.c: 174: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 175: tmp2=(tmp1&0b00000001)<<7;
	ld	xl, a
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
;	Source/Device/Src/nixie.c: 176: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 177: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 179: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00104$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00104$
;	Source/Device/Src/nixie.c: 181: tmp1=(uint8_t)(tube3>>5);
	ldw	x, (0x0e, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
;	Source/Device/Src/nixie.c: 182: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
	ldw	y, (0x0e, sp)
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
;	Source/Device/Src/nixie.c: 183: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 184: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 186: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00107$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00107$
;	Source/Device/Src/nixie.c: 189: tmp1=(uint8_t)((tube2&0b11111110)>>1);
	ldw	x, (0x0c, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
;	Source/Device/Src/nixie.c: 190: tmp2=(uint8_t)((tube2&0b00000001)<<7);
	ld	a, (0x0d, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
;	Source/Device/Src/nixie.c: 191: tmp1=tmp1|tmp2;
	pushw	x
	or	a, (2, sp)
	popw	x
;	Source/Device/Src/nixie.c: 192: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 194: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00110$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00110$
;	Source/Device/Src/nixie.c: 196: tmp1=(uint8_t)((tube1&0b1111)<<4);
	ld	a, (0x0b, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
;	Source/Device/Src/nixie.c: 197: tmp2=(uint8_t)(tube2>>8);
	ld	a, (0x0c, sp)
	clrw	x
;	Source/Device/Src/nixie.c: 198: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 199: tmp2=(tmp1&0b00000001)<<7;
	ld	xl, a
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
;	Source/Device/Src/nixie.c: 200: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 201: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 203: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00113$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00113$
;	Source/Device/Src/nixie.c: 205: tmp1=(uint8_t)(tube1>>5);
	ldw	x, (0x0a, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
;	Source/Device/Src/nixie.c: 206: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
	ldw	y, (0x0a, sp)
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
;	Source/Device/Src/nixie.c: 207: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
;	Source/Device/Src/nixie.c: 208: SPI_SendData(tmp1);
	push	a
	call	_SPI_SendData
	pop	a
;	Source/Device/Src/nixie.c: 210: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00116$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00116$
;	Source/Device/Src/nixie.c: 212: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
	push	#0x80
	push	#0x0a
	push	#0x50
	call	_GPIO_WriteHigh
;	Source/Device/Src/nixie.c: 213: }
	addw	sp, #21
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__tube_state:
	.db #0x00	; 0
__xinit__nixie_tube1:
	.db #0x00	; 0
__xinit__nixie_tube2:
	.db #0x00	; 0
__xinit__nixie_tube3:
	.db #0x00	; 0
__xinit__nixie_tube4:
	.db #0x00	; 0
	.area CABS (ABS)
