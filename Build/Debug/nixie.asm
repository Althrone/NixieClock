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
G$tube_state$0_0$0==.
_tube_state::
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
	Snixie$delay$0 ==.
	Snixie$delay$1 ==.
;	Source/Device/Src/nixie.c: 51: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	Snixie$delay$2 ==.
	Snixie$delay$3 ==.
;	Source/Device/Src/nixie.c: 60: for (int i = 0; i < 300; i++);//这个比较合适
	clrw	x
00103$:
	cpw	x, #0x012c
	jrsge	00105$
	incw	x
	jra	00103$
00105$:
	Snixie$delay$4 ==.
;	Source/Device/Src/nixie.c: 61: }
	Snixie$delay$5 ==.
	XG$delay$0$0 ==.
	ret
	Snixie$delay$6 ==.
	Snixie$NIXIE_Init$7 ==.
;	Source/Device/Src/nixie.c: 66: void NIXIE_Init(void)
;	-----------------------------------------
;	 function NIXIE_Init
;	-----------------------------------------
_NIXIE_Init:
	Snixie$NIXIE_Init$8 ==.
	Snixie$NIXIE_Init$9 ==.
;	Source/Device/Src/nixie.c: 68: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
	push	#0xe0
	Snixie$NIXIE_Init$10 ==.
	push	#0x20
	Snixie$NIXIE_Init$11 ==.
	push	#0x0a
	Snixie$NIXIE_Init$12 ==.
	push	#0x50
	Snixie$NIXIE_Init$13 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$14 ==.
	Snixie$NIXIE_Init$15 ==.
;	Source/Device/Src/nixie.c: 69: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
	push	#0xe0
	Snixie$NIXIE_Init$16 ==.
	push	#0x40
	Snixie$NIXIE_Init$17 ==.
	push	#0x0a
	Snixie$NIXIE_Init$18 ==.
	push	#0x50
	Snixie$NIXIE_Init$19 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$20 ==.
	Snixie$NIXIE_Init$21 ==.
;	Source/Device/Src/nixie.c: 70: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
	push	#0xe0
	Snixie$NIXIE_Init$22 ==.
	push	#0x80
	Snixie$NIXIE_Init$23 ==.
	push	#0x0a
	Snixie$NIXIE_Init$24 ==.
	push	#0x50
	Snixie$NIXIE_Init$25 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$26 ==.
	Snixie$NIXIE_Init$27 ==.
;	Source/Device/Src/nixie.c: 71: SPI_DeInit();
	call	_SPI_DeInit
	Snixie$NIXIE_Init$28 ==.
;	Source/Device/Src/nixie.c: 73: SPI_Init(SPI_FIRSTBIT_LSB,
	push	#0x07
	Snixie$NIXIE_Init$29 ==.
	push	#0x02
	Snixie$NIXIE_Init$30 ==.
	push	#0xc0
	Snixie$NIXIE_Init$31 ==.
	push	#0x00
	Snixie$NIXIE_Init$32 ==.
	push	#0x00
	Snixie$NIXIE_Init$33 ==.
	push	#0x04
	Snixie$NIXIE_Init$34 ==.
	push	#0x00
	Snixie$NIXIE_Init$35 ==.
	push	#0x80
	Snixie$NIXIE_Init$36 ==.
	call	_SPI_Init
	addw	sp, #8
	Snixie$NIXIE_Init$37 ==.
	Snixie$NIXIE_Init$38 ==.
;	Source/Device/Src/nixie.c: 81: SPI_Cmd(ENABLE);
	push	#0x01
	Snixie$NIXIE_Init$39 ==.
	call	_SPI_Cmd
	pop	a
	Snixie$NIXIE_Init$40 ==.
	Snixie$NIXIE_Init$41 ==.
;	Source/Device/Src/nixie.c: 82: }
	Snixie$NIXIE_Init$42 ==.
	XG$NIXIE_Init$0$0 ==.
	ret
	Snixie$NIXIE_Init$43 ==.
	Snixie$NIXIE_DisplayChar$44 ==.
;	Source/Device/Src/nixie.c: 92: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
;	-----------------------------------------
;	 function NIXIE_DisplayChar
;	-----------------------------------------
_NIXIE_DisplayChar:
	Snixie$NIXIE_DisplayChar$45 ==.
	sub	sp, #5
	Snixie$NIXIE_DisplayChar$46 ==.
	Snixie$NIXIE_DisplayChar$47 ==.
;	Source/Device/Src/nixie.c: 94: uint16_t tmp=0;
	clrw	x
	ldw	(0x03, sp), x
	Snixie$NIXIE_DisplayChar$48 ==.
;	Source/Device/Src/nixie.c: 97: if(strchr(character,'.')!=NULL)
	push	#0x2e
	Snixie$NIXIE_DisplayChar$49 ==.
	push	#0x00
	Snixie$NIXIE_DisplayChar$50 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$51 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$52 ==.
	tnzw	x
	jreq	00118$
	Snixie$NIXIE_DisplayChar$53 ==.
;	Source/Device/Src/nixie.c: 98: tmp|=1<<11;
	ldw	x, #0x0800
	ldw	(0x03, sp), x
	Snixie$NIXIE_DisplayChar$54 ==.
;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
00118$:
	clr	(0x05, sp)
	Snixie$NIXIE_DisplayChar$55 ==.
00111$:
	ld	a, (0x05, sp)
	cp	a, #0x09
	jrnc	00105$
	Snixie$NIXIE_DisplayChar$56 ==.
	Snixie$NIXIE_DisplayChar$57 ==.
;	Source/Device/Src/nixie.c: 101: if(strchr(character,'1'+i)!=NULL)
	ld	a, (0x05, sp)
	clrw	x
	ld	xl, a
	addw	x, #0x0031
	pushw	x
	Snixie$NIXIE_DisplayChar$58 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$59 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$60 ==.
	ldw	(0x01, sp), x
	jreq	00112$
	Snixie$NIXIE_DisplayChar$61 ==.
;	Source/Device/Src/nixie.c: 102: tmp|=1<<10-i;
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
	Snixie$NIXIE_DisplayChar$62 ==.
	Snixie$NIXIE_DisplayChar$63 ==.
;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
	inc	(0x05, sp)
	jra	00111$
00105$:
	Snixie$NIXIE_DisplayChar$64 ==.
	Snixie$NIXIE_DisplayChar$65 ==.
;	Source/Device/Src/nixie.c: 104: if(strchr(character,'0')!=NULL)
	push	#0x30
	Snixie$NIXIE_DisplayChar$66 ==.
	push	#0x00
	Snixie$NIXIE_DisplayChar$67 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$68 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$69 ==.
	tnzw	x
	jreq	00107$
	Snixie$NIXIE_DisplayChar$70 ==.
;	Source/Device/Src/nixie.c: 105: tmp|=1<<1;
	ld	a, (0x04, sp)
	or	a, #0x02
	ld	xl, a
	ld	a, (0x03, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00107$:
	Snixie$NIXIE_DisplayChar$71 ==.
;	Source/Device/Src/nixie.c: 106: if(tubeState==ENABLE)
	ld	a, (0x0b, sp)
	dec	a
	jrne	00109$
	Snixie$NIXIE_DisplayChar$72 ==.
	Snixie$NIXIE_DisplayChar$73 ==.
;	Source/Device/Src/nixie.c: 107: tmp|=1<<0;
	ldw	x, (0x03, sp)
	srlw	x
	scf
	rlcw	x
	ldw	(0x03, sp), x
00109$:
	Snixie$NIXIE_DisplayChar$74 ==.
;	Source/Device/Src/nixie.c: 109: output=(tmp&0xAAA)>>1;
	ldw	x, (0x03, sp)
	ld	a, xl
	and	a, #0xaa
	ld	yl, a
	ld	a, xh
	and	a, #0x0a
	ld	yh, a
	srlw	y
	Snixie$NIXIE_DisplayChar$75 ==.
;	Source/Device/Src/nixie.c: 110: output|=(tmp&0x555)<<1;
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
	Snixie$NIXIE_DisplayChar$76 ==.
;	Source/Device/Src/nixie.c: 112: return output;
	ld	xh, a
	Snixie$NIXIE_DisplayChar$77 ==.
;	Source/Device/Src/nixie.c: 113: }
	addw	sp, #5
	Snixie$NIXIE_DisplayChar$78 ==.
	Snixie$NIXIE_DisplayChar$79 ==.
	XG$NIXIE_DisplayChar$0$0 ==.
	ret
	Snixie$NIXIE_DisplayChar$80 ==.
	Snixie$NIXIE_DisplayTime$81 ==.
;	Source/Device/Src/nixie.c: 121: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
;	-----------------------------------------
;	 function NIXIE_DisplayTime
;	-----------------------------------------
_NIXIE_DisplayTime:
	Snixie$NIXIE_DisplayTime$82 ==.
	sub	sp, #18
	Snixie$NIXIE_DisplayTime$83 ==.
	Snixie$NIXIE_DisplayTime$84 ==.
;	Source/Device/Src/nixie.c: 125: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
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
	Snixie$NIXIE_DisplayTime$85 ==.
;	Source/Device/Src/nixie.c: 127: uint8_t tmp=hour/10;
	ld	a, (0x15, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	push	#0x0a
	Snixie$NIXIE_DisplayTime$86 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$87 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$88 ==.
	call	__divsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$89 ==.
	Snixie$NIXIE_DisplayTime$90 ==.
;	Source/Device/Src/nixie.c: 128: tube1s[0]+=tmp;
	ld	a, (0x01, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$91 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$92 ==.
	ld	(0x01, sp), a
	Snixie$NIXIE_DisplayTime$93 ==.
;	Source/Device/Src/nixie.c: 130: tmp=hour%10;
	push	#0x0a
	Snixie$NIXIE_DisplayTime$94 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$95 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$96 ==.
	call	__modsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$97 ==.
	Snixie$NIXIE_DisplayTime$98 ==.
;	Source/Device/Src/nixie.c: 131: tube2s[0]+=tmp;
	ld	a, (0x03, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$99 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$100 ==.
	ld	(0x03, sp), a
	Snixie$NIXIE_DisplayTime$101 ==.
;	Source/Device/Src/nixie.c: 133: tmp=min/10;
	ld	a, (0x16, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	push	#0x0a
	Snixie$NIXIE_DisplayTime$102 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$103 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$104 ==.
	call	__divsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$105 ==.
	Snixie$NIXIE_DisplayTime$106 ==.
;	Source/Device/Src/nixie.c: 134: tube3s[0]+=tmp;
	ld	a, (0x05, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$107 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$108 ==.
	ld	(0x05, sp), a
	Snixie$NIXIE_DisplayTime$109 ==.
;	Source/Device/Src/nixie.c: 136: tmp=min%10;
	push	#0x0a
	Snixie$NIXIE_DisplayTime$110 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$111 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$112 ==.
	call	__modsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$113 ==.
	Snixie$NIXIE_DisplayTime$114 ==.
;	Source/Device/Src/nixie.c: 137: tube4s[0]+=tmp;
	ld	a, (0x08, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$115 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$116 ==.
	ld	(0x08, sp), a
	Snixie$NIXIE_DisplayTime$117 ==.
;	Source/Device/Src/nixie.c: 139: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$118 ==.
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	Snixie$NIXIE_DisplayTime$119 ==.
	push	#0x01
	Snixie$NIXIE_DisplayTime$120 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$121 ==.
	ldw	(0x0a, sp), x
	Snixie$NIXIE_DisplayTime$122 ==.
;	Source/Device/Src/nixie.c: 140: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$123 ==.
	ldw	x, sp
	addw	x, #4
	pushw	x
	Snixie$NIXIE_DisplayTime$124 ==.
	push	#0x02
	Snixie$NIXIE_DisplayTime$125 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$126 ==.
	ldw	(0x0c, sp), x
	Snixie$NIXIE_DisplayTime$127 ==.
;	Source/Device/Src/nixie.c: 141: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$128 ==.
	ldw	x, sp
	addw	x, #6
	pushw	x
	Snixie$NIXIE_DisplayTime$129 ==.
	push	#0x03
	Snixie$NIXIE_DisplayTime$130 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$131 ==.
	ldw	(0x0e, sp), x
	Snixie$NIXIE_DisplayTime$132 ==.
;	Source/Device/Src/nixie.c: 142: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$133 ==.
	ldw	x, sp
	addw	x, #9
	pushw	x
	Snixie$NIXIE_DisplayTime$134 ==.
	push	#0x04
	Snixie$NIXIE_DisplayTime$135 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$136 ==.
	ldw	(0x10, sp), x
	Snixie$NIXIE_DisplayTime$137 ==.
;	Source/Device/Src/nixie.c: 146: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
	push	#0x80
	Snixie$NIXIE_DisplayTime$138 ==.
	push	#0x0a
	Snixie$NIXIE_DisplayTime$139 ==.
	push	#0x50
	Snixie$NIXIE_DisplayTime$140 ==.
	call	_GPIO_WriteLow
	addw	sp, #3
	Snixie$NIXIE_DisplayTime$141 ==.
	Snixie$NIXIE_DisplayTime$142 ==.
	Snixie$NIXIE_DisplayTime$143 ==.
;	Source/Device/Src/nixie.c: 151: tmp1=(uint8_t)((tube4&0b11111110)>>1);
	ldw	x, (0x10, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
	Snixie$NIXIE_DisplayTime$144 ==.
;	Source/Device/Src/nixie.c: 152: tmp2=(uint8_t)((tube4&0b00000001)<<7);
	ld	a, (0x11, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	Snixie$NIXIE_DisplayTime$145 ==.
;	Source/Device/Src/nixie.c: 153: tmp1=tmp1|tmp2;
	pushw	x
	Snixie$NIXIE_DisplayTime$146 ==.
	or	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$147 ==.
	Snixie$NIXIE_DisplayTime$148 ==.
;	Source/Device/Src/nixie.c: 154: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$149 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$150 ==.
	Snixie$NIXIE_DisplayTime$151 ==.
;	Source/Device/Src/nixie.c: 156: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00101$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$152 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$153 ==.
	tnz	a
	jreq	00101$
	Snixie$NIXIE_DisplayTime$154 ==.
;	Source/Device/Src/nixie.c: 158: tmp1=(uint8_t)((tube3&0b1111)<<4);
	ld	a, (0x0f, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$155 ==.
;	Source/Device/Src/nixie.c: 159: tmp2=(uint8_t)(tube4>>8);
	ld	a, (0x10, sp)
	clrw	x
	Snixie$NIXIE_DisplayTime$156 ==.
;	Source/Device/Src/nixie.c: 160: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	ld	xl, a
	Snixie$NIXIE_DisplayTime$157 ==.
;	Source/Device/Src/nixie.c: 161: tmp2=(tmp1&0b00000001)<<7;
	ld	a, xl
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$158 ==.
;	Source/Device/Src/nixie.c: 162: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$159 ==.
;	Source/Device/Src/nixie.c: 163: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$160 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$161 ==.
	Snixie$NIXIE_DisplayTime$162 ==.
;	Source/Device/Src/nixie.c: 165: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00104$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$163 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$164 ==.
	tnz	a
	jreq	00104$
	Snixie$NIXIE_DisplayTime$165 ==.
;	Source/Device/Src/nixie.c: 167: tmp1=(uint8_t)(tube3>>5);
	ldw	x, (0x0e, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
	Snixie$NIXIE_DisplayTime$166 ==.
;	Source/Device/Src/nixie.c: 168: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
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
	Snixie$NIXIE_DisplayTime$167 ==.
;	Source/Device/Src/nixie.c: 169: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$168 ==.
;	Source/Device/Src/nixie.c: 170: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$169 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$170 ==.
	Snixie$NIXIE_DisplayTime$171 ==.
;	Source/Device/Src/nixie.c: 172: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00107$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$172 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$173 ==.
	tnz	a
	jreq	00107$
	Snixie$NIXIE_DisplayTime$174 ==.
;	Source/Device/Src/nixie.c: 175: tmp1=(uint8_t)((tube2&0b11111110)>>1);
	ldw	x, (0x0c, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
	Snixie$NIXIE_DisplayTime$175 ==.
;	Source/Device/Src/nixie.c: 176: tmp2=(uint8_t)((tube2&0b00000001)<<7);
	ld	a, (0x0d, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	Snixie$NIXIE_DisplayTime$176 ==.
;	Source/Device/Src/nixie.c: 177: tmp1=tmp1|tmp2;
	pushw	x
	Snixie$NIXIE_DisplayTime$177 ==.
	or	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$178 ==.
	Snixie$NIXIE_DisplayTime$179 ==.
;	Source/Device/Src/nixie.c: 178: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$180 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$181 ==.
	Snixie$NIXIE_DisplayTime$182 ==.
;	Source/Device/Src/nixie.c: 180: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00110$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$183 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$184 ==.
	tnz	a
	jreq	00110$
	Snixie$NIXIE_DisplayTime$185 ==.
;	Source/Device/Src/nixie.c: 182: tmp1=(uint8_t)((tube1&0b1111)<<4);
	ld	a, (0x0b, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$186 ==.
;	Source/Device/Src/nixie.c: 183: tmp2=(uint8_t)(tube2>>8);
	ld	a, (0x0c, sp)
	clrw	x
	Snixie$NIXIE_DisplayTime$187 ==.
;	Source/Device/Src/nixie.c: 184: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	ld	xl, a
	Snixie$NIXIE_DisplayTime$188 ==.
;	Source/Device/Src/nixie.c: 185: tmp2=(tmp1&0b00000001)<<7;
	ld	a, xl
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$189 ==.
;	Source/Device/Src/nixie.c: 186: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$190 ==.
;	Source/Device/Src/nixie.c: 187: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$191 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$192 ==.
	Snixie$NIXIE_DisplayTime$193 ==.
;	Source/Device/Src/nixie.c: 189: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00113$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$194 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$195 ==.
	tnz	a
	jreq	00113$
	Snixie$NIXIE_DisplayTime$196 ==.
;	Source/Device/Src/nixie.c: 191: tmp1=(uint8_t)(tube1>>5);
	ldw	x, (0x0a, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
	Snixie$NIXIE_DisplayTime$197 ==.
;	Source/Device/Src/nixie.c: 192: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
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
	Snixie$NIXIE_DisplayTime$198 ==.
;	Source/Device/Src/nixie.c: 193: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$199 ==.
;	Source/Device/Src/nixie.c: 194: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$200 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$201 ==.
	Snixie$NIXIE_DisplayTime$202 ==.
;	Source/Device/Src/nixie.c: 196: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00116$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$203 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$204 ==.
	tnz	a
	jreq	00116$
	Snixie$NIXIE_DisplayTime$205 ==.
;	Source/Device/Src/nixie.c: 198: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
	push	#0x80
	Snixie$NIXIE_DisplayTime$206 ==.
	push	#0x0a
	Snixie$NIXIE_DisplayTime$207 ==.
	push	#0x50
	Snixie$NIXIE_DisplayTime$208 ==.
	call	_GPIO_WriteHigh
	addw	sp, #3
	Snixie$NIXIE_DisplayTime$209 ==.
	Snixie$NIXIE_DisplayTime$210 ==.
	Snixie$NIXIE_DisplayTime$211 ==.
;	Source/Device/Src/nixie.c: 199: }
	addw	sp, #18
	Snixie$NIXIE_DisplayTime$212 ==.
	Snixie$NIXIE_DisplayTime$213 ==.
	XG$NIXIE_DisplayTime$0$0 ==.
	ret
	Snixie$NIXIE_DisplayTime$214 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fnixie$__xinit_tube_state$0_0$0 == .
__xinit__tube_state:
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
	.ascii "Source/Device/Src/nixie.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$delay$1)
	.db	3
	.sleb128	50
	.db	1
	.db	9
	.dw	Snixie$delay$3-Snixie$delay$1
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	Snixie$delay$4-Snixie$delay$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$delay$5-Snixie$delay$4
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$NIXIE_Init$7)
	.db	3
	.sleb128	65
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$9-Snixie$NIXIE_Init$7
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$15-Snixie$NIXIE_Init$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$21-Snixie$NIXIE_Init$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$27-Snixie$NIXIE_Init$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$28-Snixie$NIXIE_Init$27
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$38-Snixie$NIXIE_Init$28
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$41-Snixie$NIXIE_Init$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_Init$42-Snixie$NIXIE_Init$41
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$NIXIE_DisplayChar$44)
	.db	3
	.sleb128	91
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$47-Snixie$NIXIE_DisplayChar$44
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$48-Snixie$NIXIE_DisplayChar$47
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$53-Snixie$NIXIE_DisplayChar$48
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$54-Snixie$NIXIE_DisplayChar$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$57-Snixie$NIXIE_DisplayChar$54
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$61-Snixie$NIXIE_DisplayChar$57
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$63-Snixie$NIXIE_DisplayChar$61
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$65-Snixie$NIXIE_DisplayChar$63
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$70-Snixie$NIXIE_DisplayChar$65
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$71-Snixie$NIXIE_DisplayChar$70
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$73-Snixie$NIXIE_DisplayChar$71
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$74-Snixie$NIXIE_DisplayChar$73
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$75-Snixie$NIXIE_DisplayChar$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$76-Snixie$NIXIE_DisplayChar$75
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$77-Snixie$NIXIE_DisplayChar$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_DisplayChar$79-Snixie$NIXIE_DisplayChar$77
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$NIXIE_DisplayTime$81)
	.db	3
	.sleb128	120
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$84-Snixie$NIXIE_DisplayTime$81
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$85-Snixie$NIXIE_DisplayTime$84
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$90-Snixie$NIXIE_DisplayTime$85
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$93-Snixie$NIXIE_DisplayTime$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$98-Snixie$NIXIE_DisplayTime$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$101-Snixie$NIXIE_DisplayTime$98
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$106-Snixie$NIXIE_DisplayTime$101
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$109-Snixie$NIXIE_DisplayTime$106
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$114-Snixie$NIXIE_DisplayTime$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$117-Snixie$NIXIE_DisplayTime$114
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$122-Snixie$NIXIE_DisplayTime$117
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$127-Snixie$NIXIE_DisplayTime$122
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$132-Snixie$NIXIE_DisplayTime$127
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$137-Snixie$NIXIE_DisplayTime$132
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$143-Snixie$NIXIE_DisplayTime$137
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$144-Snixie$NIXIE_DisplayTime$143
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$145-Snixie$NIXIE_DisplayTime$144
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$148-Snixie$NIXIE_DisplayTime$145
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$151-Snixie$NIXIE_DisplayTime$148
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$154-Snixie$NIXIE_DisplayTime$151
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$155-Snixie$NIXIE_DisplayTime$154
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$156-Snixie$NIXIE_DisplayTime$155
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$157-Snixie$NIXIE_DisplayTime$156
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$158-Snixie$NIXIE_DisplayTime$157
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$159-Snixie$NIXIE_DisplayTime$158
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$162-Snixie$NIXIE_DisplayTime$159
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$165-Snixie$NIXIE_DisplayTime$162
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$166-Snixie$NIXIE_DisplayTime$165
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$167-Snixie$NIXIE_DisplayTime$166
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$168-Snixie$NIXIE_DisplayTime$167
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$171-Snixie$NIXIE_DisplayTime$168
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$174-Snixie$NIXIE_DisplayTime$171
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$175-Snixie$NIXIE_DisplayTime$174
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$176-Snixie$NIXIE_DisplayTime$175
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$179-Snixie$NIXIE_DisplayTime$176
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$182-Snixie$NIXIE_DisplayTime$179
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$185-Snixie$NIXIE_DisplayTime$182
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$186-Snixie$NIXIE_DisplayTime$185
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$187-Snixie$NIXIE_DisplayTime$186
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$188-Snixie$NIXIE_DisplayTime$187
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$189-Snixie$NIXIE_DisplayTime$188
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$190-Snixie$NIXIE_DisplayTime$189
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$193-Snixie$NIXIE_DisplayTime$190
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$196-Snixie$NIXIE_DisplayTime$193
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$197-Snixie$NIXIE_DisplayTime$196
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$198-Snixie$NIXIE_DisplayTime$197
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$199-Snixie$NIXIE_DisplayTime$198
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$202-Snixie$NIXIE_DisplayTime$199
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$205-Snixie$NIXIE_DisplayTime$202
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$211-Snixie$NIXIE_DisplayTime$205
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_DisplayTime$213-Snixie$NIXIE_DisplayTime$211
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Snixie$NIXIE_DisplayTime$212)
	.dw	0,(Snixie$NIXIE_DisplayTime$214)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_DisplayTime$209)
	.dw	0,(Snixie$NIXIE_DisplayTime$212)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.dw	0,(Snixie$NIXIE_DisplayTime$209)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$206)
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$204)
	.dw	0,(Snixie$NIXIE_DisplayTime$206)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$203)
	.dw	0,(Snixie$NIXIE_DisplayTime$204)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$201)
	.dw	0,(Snixie$NIXIE_DisplayTime$203)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.dw	0,(Snixie$NIXIE_DisplayTime$201)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$195)
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.dw	0,(Snixie$NIXIE_DisplayTime$195)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$192)
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$191)
	.dw	0,(Snixie$NIXIE_DisplayTime$192)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$184)
	.dw	0,(Snixie$NIXIE_DisplayTime$191)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$183)
	.dw	0,(Snixie$NIXIE_DisplayTime$184)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$181)
	.dw	0,(Snixie$NIXIE_DisplayTime$183)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.dw	0,(Snixie$NIXIE_DisplayTime$181)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$178)
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.dw	0,(Snixie$NIXIE_DisplayTime$178)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$173)
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$172)
	.dw	0,(Snixie$NIXIE_DisplayTime$173)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$170)
	.dw	0,(Snixie$NIXIE_DisplayTime$172)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.dw	0,(Snixie$NIXIE_DisplayTime$170)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$164)
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.dw	0,(Snixie$NIXIE_DisplayTime$164)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$161)
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$160)
	.dw	0,(Snixie$NIXIE_DisplayTime$161)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$153)
	.dw	0,(Snixie$NIXIE_DisplayTime$160)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.dw	0,(Snixie$NIXIE_DisplayTime$153)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$150)
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$149)
	.dw	0,(Snixie$NIXIE_DisplayTime$150)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$147)
	.dw	0,(Snixie$NIXIE_DisplayTime$149)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$146)
	.dw	0,(Snixie$NIXIE_DisplayTime$147)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.dw	0,(Snixie$NIXIE_DisplayTime$146)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$138)
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.dw	0,(Snixie$NIXIE_DisplayTime$138)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$133)
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.dw	0,(Snixie$NIXIE_DisplayTime$133)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$130)
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.dw	0,(Snixie$NIXIE_DisplayTime$130)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$125)
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.dw	0,(Snixie$NIXIE_DisplayTime$125)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$123)
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$121)
	.dw	0,(Snixie$NIXIE_DisplayTime$123)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$120)
	.dw	0,(Snixie$NIXIE_DisplayTime$121)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$119)
	.dw	0,(Snixie$NIXIE_DisplayTime$120)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$118)
	.dw	0,(Snixie$NIXIE_DisplayTime$119)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$116)
	.dw	0,(Snixie$NIXIE_DisplayTime$118)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$115)
	.dw	0,(Snixie$NIXIE_DisplayTime$116)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$113)
	.dw	0,(Snixie$NIXIE_DisplayTime$115)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$112)
	.dw	0,(Snixie$NIXIE_DisplayTime$113)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$111)
	.dw	0,(Snixie$NIXIE_DisplayTime$112)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$110)
	.dw	0,(Snixie$NIXIE_DisplayTime$111)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$108)
	.dw	0,(Snixie$NIXIE_DisplayTime$110)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$107)
	.dw	0,(Snixie$NIXIE_DisplayTime$108)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$105)
	.dw	0,(Snixie$NIXIE_DisplayTime$107)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$104)
	.dw	0,(Snixie$NIXIE_DisplayTime$105)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$103)
	.dw	0,(Snixie$NIXIE_DisplayTime$104)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$102)
	.dw	0,(Snixie$NIXIE_DisplayTime$103)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$100)
	.dw	0,(Snixie$NIXIE_DisplayTime$102)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
	.dw	0,(Snixie$NIXIE_DisplayTime$100)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$97)
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$96)
	.dw	0,(Snixie$NIXIE_DisplayTime$97)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$95)
	.dw	0,(Snixie$NIXIE_DisplayTime$96)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$94)
	.dw	0,(Snixie$NIXIE_DisplayTime$95)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$92)
	.dw	0,(Snixie$NIXIE_DisplayTime$94)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$91)
	.dw	0,(Snixie$NIXIE_DisplayTime$92)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$89)
	.dw	0,(Snixie$NIXIE_DisplayTime$91)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$88)
	.dw	0,(Snixie$NIXIE_DisplayTime$89)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$87)
	.dw	0,(Snixie$NIXIE_DisplayTime$88)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$86)
	.dw	0,(Snixie$NIXIE_DisplayTime$87)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$83)
	.dw	0,(Snixie$NIXIE_DisplayTime$86)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$82)
	.dw	0,(Snixie$NIXIE_DisplayTime$83)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Snixie$NIXIE_DisplayChar$78)
	.dw	0,(Snixie$NIXIE_DisplayChar$80)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_DisplayChar$72)
	.dw	0,(Snixie$NIXIE_DisplayChar$78)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$69)
	.dw	0,(Snixie$NIXIE_DisplayChar$72)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.dw	0,(Snixie$NIXIE_DisplayChar$69)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_DisplayChar$60)
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$59)
	.dw	0,(Snixie$NIXIE_DisplayChar$60)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$58)
	.dw	0,(Snixie$NIXIE_DisplayChar$59)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$52)
	.dw	0,(Snixie$NIXIE_DisplayChar$58)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$51)
	.dw	0,(Snixie$NIXIE_DisplayChar$52)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$50)
	.dw	0,(Snixie$NIXIE_DisplayChar$51)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$49)
	.dw	0,(Snixie$NIXIE_DisplayChar$50)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_DisplayChar$46)
	.dw	0,(Snixie$NIXIE_DisplayChar$49)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$45)
	.dw	0,(Snixie$NIXIE_DisplayChar$46)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Snixie$NIXIE_Init$40)
	.dw	0,(Snixie$NIXIE_Init$43)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$39)
	.dw	0,(Snixie$NIXIE_Init$40)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Snixie$NIXIE_Init$37)
	.dw	0,(Snixie$NIXIE_Init$39)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$36)
	.dw	0,(Snixie$NIXIE_Init$37)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Snixie$NIXIE_Init$35)
	.dw	0,(Snixie$NIXIE_Init$36)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_Init$34)
	.dw	0,(Snixie$NIXIE_Init$35)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_Init$33)
	.dw	0,(Snixie$NIXIE_Init$34)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$32)
	.dw	0,(Snixie$NIXIE_Init$33)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$31)
	.dw	0,(Snixie$NIXIE_Init$32)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$30)
	.dw	0,(Snixie$NIXIE_Init$31)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Snixie$NIXIE_Init$29)
	.dw	0,(Snixie$NIXIE_Init$30)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Snixie$NIXIE_Init$26)
	.dw	0,(Snixie$NIXIE_Init$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$25)
	.dw	0,(Snixie$NIXIE_Init$26)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$24)
	.dw	0,(Snixie$NIXIE_Init$25)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$23)
	.dw	0,(Snixie$NIXIE_Init$24)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Snixie$NIXIE_Init$22)
	.dw	0,(Snixie$NIXIE_Init$23)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Snixie$NIXIE_Init$20)
	.dw	0,(Snixie$NIXIE_Init$22)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$19)
	.dw	0,(Snixie$NIXIE_Init$20)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$18)
	.dw	0,(Snixie$NIXIE_Init$19)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$17)
	.dw	0,(Snixie$NIXIE_Init$18)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Snixie$NIXIE_Init$16)
	.dw	0,(Snixie$NIXIE_Init$17)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Snixie$NIXIE_Init$14)
	.dw	0,(Snixie$NIXIE_Init$16)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$13)
	.dw	0,(Snixie$NIXIE_Init$14)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$12)
	.dw	0,(Snixie$NIXIE_Init$13)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$11)
	.dw	0,(Snixie$NIXIE_Init$12)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Snixie$NIXIE_Init$10)
	.dw	0,(Snixie$NIXIE_Init$11)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Snixie$NIXIE_Init$8)
	.dw	0,(Snixie$NIXIE_Init$10)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Snixie$delay$2)
	.dw	0,(Snixie$delay$6)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
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
	.uleb128	8
	.uleb128	5
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
	.uleb128	4
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
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
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
	.uleb128	11
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	6
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
	.uleb128	10
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
	.uleb128	5
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
	.ascii "Source/Device/Src/nixie.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.dw	0,114
	.ascii "delay"
	.db	0
	.dw	0,(_delay)
	.dw	0,(XG$delay$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1476)
	.uleb128	3
	.dw	0,(Snixie$delay$0)
	.uleb128	4
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "i"
	.db	0
	.dw	0,114
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	6
	.ascii "NIXIE_Init"
	.db	0
	.dw	0,(_NIXIE_Init)
	.dw	0,(XG$NIXIE_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1144)
	.uleb128	5
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	7
	.dw	0,325
	.ascii "NIXIE_DisplayChar"
	.db	0
	.dw	0,(_NIXIE_DisplayChar)
	.dw	0,(XG$NIXIE_DisplayChar$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+956)
	.dw	0,146
	.uleb128	8
	.db	2
	.db	145
	.sleb128	2
	.ascii "tubeNum"
	.db	0
	.dw	0,325
	.uleb128	9
	.db	2
	.dw	0,325
	.uleb128	8
	.db	2
	.db	145
	.sleb128	3
	.ascii "character"
	.db	0
	.dw	0,218
	.uleb128	8
	.db	2
	.db	145
	.sleb128	5
	.ascii "tubeState"
	.db	0
	.dw	0,325
	.uleb128	10
	.dw	0,293
	.dw	0,(Snixie$NIXIE_DisplayChar$55)
	.dw	0,(Snixie$NIXIE_DisplayChar$64)
	.uleb128	11
	.dw	0,(Snixie$NIXIE_DisplayChar$56)
	.dw	0,(Snixie$NIXIE_DisplayChar$62)
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,325
	.uleb128	0
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-3
	.ascii "tmp"
	.db	0
	.dw	0,146
	.uleb128	4
	.db	6
	.db	80
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "output"
	.db	0
	.dw	0,146
	.uleb128	0
	.uleb128	5
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,595
	.ascii "NIXIE_DisplayTime"
	.db	0
	.dw	0,(_NIXIE_DisplayTime)
	.dw	0,(XG$NIXIE_DisplayTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	8
	.db	2
	.db	145
	.sleb128	2
	.ascii "hour"
	.db	0
	.dw	0,325
	.uleb128	8
	.db	2
	.db	145
	.sleb128	3
	.ascii "min"
	.db	0
	.dw	0,325
	.uleb128	10
	.dw	0,441
	.dw	0,(Snixie$NIXIE_DisplayTime$142)
	.dw	0,(Snixie$NIXIE_DisplayTime$210)
	.uleb128	4
	.db	1
	.db	81
	.ascii "tmp1"
	.db	0
	.dw	0,325
	.uleb128	4
	.db	1
	.db	80
	.ascii "tmp2"
	.db	0
	.dw	0,325
	.uleb128	0
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-9
	.ascii "tube1"
	.db	0
	.dw	0,146
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-7
	.ascii "tube2"
	.db	0
	.dw	0,146
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-5
	.ascii "tube3"
	.db	0
	.dw	0,146
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-3
	.ascii "tube4"
	.db	0
	.dw	0,146
	.uleb128	12
	.dw	0,510
	.db	2
	.dw	0,325
	.uleb128	13
	.db	1
	.uleb128	0
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-18
	.ascii "tube1s"
	.db	0
	.dw	0,497
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-16
	.ascii "tube2s"
	.db	0
	.dw	0,497
	.uleb128	12
	.dw	0,553
	.db	3
	.dw	0,325
	.uleb128	13
	.db	2
	.uleb128	0
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-14
	.ascii "tube3s"
	.db	0
	.dw	0,540
	.uleb128	4
	.db	2
	.db	145
	.sleb128	-11
	.ascii "tube4s"
	.db	0
	.dw	0,497
	.uleb128	4
	.db	1
	.db	81
	.ascii "tmp"
	.db	0
	.dw	0,325
	.uleb128	0
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_tube_state)
	.ascii "tube_state"
	.db	0
	.db	1
	.dw	0,325
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
	.ascii "delay"
	.db	0
	.dw	0,121
	.ascii "NIXIE_Init"
	.db	0
	.dw	0,162
	.ascii "NIXIE_DisplayChar"
	.db	0
	.dw	0,342
	.ascii "NIXIE_DisplayTime"
	.db	0
	.dw	0,595
	.ascii "tube_state"
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
	.dw	0,565
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Snixie$NIXIE_DisplayTime$82)	;initial loc
	.dw	0,Snixie$NIXIE_DisplayTime$214-Snixie$NIXIE_DisplayTime$82
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$82)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$83)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$86)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$87)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$88)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$89)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$91)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$92)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$94)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$95)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$96)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$97)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$100)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$102)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$103)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$104)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$105)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$107)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$108)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$110)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$111)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$112)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$113)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$115)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$116)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$118)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$119)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$120)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$121)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$123)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$125)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$130)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$133)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$138)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$146)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$147)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$149)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$150)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$153)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$160)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$161)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$164)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$170)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$172)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$173)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$178)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$181)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$183)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$184)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$191)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$192)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$195)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$201)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$203)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$204)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$206)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$209)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$212)
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
	.dw	0,117
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Snixie$NIXIE_DisplayChar$45)	;initial loc
	.dw	0,Snixie$NIXIE_DisplayChar$80-Snixie$NIXIE_DisplayChar$45
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$45)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$46)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$49)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$50)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$51)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$52)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$58)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$59)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$60)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$69)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$72)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$78)
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
	.dw	0,201
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Snixie$NIXIE_Init$8)	;initial loc
	.dw	0,Snixie$NIXIE_Init$43-Snixie$NIXIE_Init$8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$8)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$10)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Snixie$NIXIE_Init$11)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Snixie$NIXIE_Init$12)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$13)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$14)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$16)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Snixie$NIXIE_Init$17)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Snixie$NIXIE_Init$18)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$19)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$20)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$22)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Snixie$NIXIE_Init$23)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Snixie$NIXIE_Init$24)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$25)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$26)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$29)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Snixie$NIXIE_Init$30)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Snixie$NIXIE_Init$31)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$32)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$33)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$34)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$35)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_Init$36)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Snixie$NIXIE_Init$37)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$39)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Snixie$NIXIE_Init$40)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Snixie$delay$2)	;initial loc
	.dw	0,Snixie$delay$6-Snixie$delay$2
	.db	1
	.dw	0,(Snixie$delay$2)
	.db	14
	.uleb128	2
