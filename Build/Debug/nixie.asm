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
G$tube_state$0_0$0==.
_tube_state::
	.ds 1
G$nixie_tube1$0_0$0==.
_nixie_tube1::
	.ds 1
G$nixie_tube2$0_0$0==.
_nixie_tube2::
	.ds 1
G$nixie_tube3$0_0$0==.
_nixie_tube3::
	.ds 1
G$nixie_tube4$0_0$0==.
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
	Snixie$NIXIE_Init$0 ==.
;	Source/Device/Src/nixie.c: 58: void NIXIE_Init(void)
;	-----------------------------------------
;	 function NIXIE_Init
;	-----------------------------------------
_NIXIE_Init:
	Snixie$NIXIE_Init$1 ==.
	sub	sp, #3
	Snixie$NIXIE_Init$2 ==.
	Snixie$NIXIE_Init$3 ==.
;	Source/Device/Src/nixie.c: 60: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
	push	#0xe0
	Snixie$NIXIE_Init$4 ==.
	push	#0x20
	Snixie$NIXIE_Init$5 ==.
	push	#0x0a
	Snixie$NIXIE_Init$6 ==.
	push	#0x50
	Snixie$NIXIE_Init$7 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$8 ==.
	Snixie$NIXIE_Init$9 ==.
;	Source/Device/Src/nixie.c: 61: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
	push	#0xe0
	Snixie$NIXIE_Init$10 ==.
	push	#0x40
	Snixie$NIXIE_Init$11 ==.
	push	#0x0a
	Snixie$NIXIE_Init$12 ==.
	push	#0x50
	Snixie$NIXIE_Init$13 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$14 ==.
	Snixie$NIXIE_Init$15 ==.
;	Source/Device/Src/nixie.c: 62: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
	push	#0xe0
	Snixie$NIXIE_Init$16 ==.
	push	#0x80
	Snixie$NIXIE_Init$17 ==.
	push	#0x0a
	Snixie$NIXIE_Init$18 ==.
	push	#0x50
	Snixie$NIXIE_Init$19 ==.
	call	_GPIO_Init
	addw	sp, #4
	Snixie$NIXIE_Init$20 ==.
	Snixie$NIXIE_Init$21 ==.
;	Source/Device/Src/nixie.c: 63: SPI_DeInit();
	call	_SPI_DeInit
	Snixie$NIXIE_Init$22 ==.
;	Source/Device/Src/nixie.c: 65: SPI_Init(SPI_FIRSTBIT_LSB,
	push	#0x07
	Snixie$NIXIE_Init$23 ==.
	push	#0x02
	Snixie$NIXIE_Init$24 ==.
	push	#0xc0
	Snixie$NIXIE_Init$25 ==.
	push	#0x00
	Snixie$NIXIE_Init$26 ==.
	push	#0x00
	Snixie$NIXIE_Init$27 ==.
	push	#0x04
	Snixie$NIXIE_Init$28 ==.
	push	#0x00
	Snixie$NIXIE_Init$29 ==.
	push	#0x80
	Snixie$NIXIE_Init$30 ==.
	call	_SPI_Init
	addw	sp, #8
	Snixie$NIXIE_Init$31 ==.
	Snixie$NIXIE_Init$32 ==.
;	Source/Device/Src/nixie.c: 73: SPI_Cmd(ENABLE);
	push	#0x01
	Snixie$NIXIE_Init$33 ==.
	call	_SPI_Cmd
	pop	a
	Snixie$NIXIE_Init$34 ==.
	Snixie$NIXIE_Init$35 ==.
;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
	clr	(0x01, sp)
	Snixie$NIXIE_Init$36 ==.
00111$:
	ld	a, (0x01, sp)
	cp	a, #0x0a
	jrc	00148$
	jp	00113$
00148$:
	Snixie$NIXIE_Init$37 ==.
	Snixie$NIXIE_Init$38 ==.
;	Source/Device/Src/nixie.c: 78: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
	Snixie$NIXIE_Init$39 ==.
;	Source/Device/Src/nixie.c: 79: NIXIE_DisplayTime(i*10+i,i*10+i);
	ld	a, (0x01, sp)
	ld	xl, a
	ld	a, #0x0a
	mul	x, a
	ld	a, (0x01, sp)
	pushw	x
	Snixie$NIXIE_Init$40 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_Init$41 ==.
	push	a
	Snixie$NIXIE_Init$42 ==.
	push	a
	Snixie$NIXIE_Init$43 ==.
	call	_NIXIE_DisplayTime
	popw	x
	Snixie$NIXIE_Init$44 ==.
	Snixie$NIXIE_Init$45 ==.
	Snixie$NIXIE_Init$46 ==.
;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
	clrw	x
	ldw	(0x02, sp), x
	Snixie$NIXIE_Init$47 ==.
00108$:
	ldw	x, (0x02, sp)
	cpw	x, #0x0064
	jrnc	00112$
	Snixie$NIXIE_Init$48 ==.
	Snixie$NIXIE_Init$49 ==.
;	Source/Device/Src/nixie.c: 82: for(uint16_t j=0;j<1000;++j);
	clrw	x
	Snixie$NIXIE_Init$50 ==.
00105$:
	ldw	y, x
	cpw	y, #0x03e8
	jrnc	00109$
	incw	x
	jra	00105$
00109$:
	Snixie$NIXIE_Init$51 ==.
	Snixie$NIXIE_Init$52 ==.
;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
	ldw	x, (0x02, sp)
	incw	x
	ldw	(0x02, sp), x
	jra	00108$
00112$:
	Snixie$NIXIE_Init$53 ==.
	Snixie$NIXIE_Init$54 ==.
;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
	inc	(0x01, sp)
	jp	00111$
	Snixie$NIXIE_Init$55 ==.
00113$:
	Snixie$NIXIE_Init$56 ==.
;	Source/Device/Src/nixie.c: 85: }
	addw	sp, #3
	Snixie$NIXIE_Init$57 ==.
	Snixie$NIXIE_Init$58 ==.
	XG$NIXIE_Init$0$0 ==.
	ret
	Snixie$NIXIE_Init$59 ==.
	Snixie$NIXIE_DisplayChar$60 ==.
;	Source/Device/Src/nixie.c: 96: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
;	-----------------------------------------
;	 function NIXIE_DisplayChar
;	-----------------------------------------
_NIXIE_DisplayChar:
	Snixie$NIXIE_DisplayChar$61 ==.
	sub	sp, #5
	Snixie$NIXIE_DisplayChar$62 ==.
	Snixie$NIXIE_DisplayChar$63 ==.
;	Source/Device/Src/nixie.c: 98: uint16_t tmp=0;
	clrw	x
	ldw	(0x03, sp), x
	Snixie$NIXIE_DisplayChar$64 ==.
;	Source/Device/Src/nixie.c: 101: if(strchr(character,'.')!=NULL)
	push	#0x2e
	Snixie$NIXIE_DisplayChar$65 ==.
	push	#0x00
	Snixie$NIXIE_DisplayChar$66 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$67 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$68 ==.
	tnzw	x
	jreq	00118$
	Snixie$NIXIE_DisplayChar$69 ==.
;	Source/Device/Src/nixie.c: 102: tmp|=1<<11;
	ldw	x, #0x0800
	ldw	(0x03, sp), x
	Snixie$NIXIE_DisplayChar$70 ==.
;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
00118$:
	clr	(0x05, sp)
	Snixie$NIXIE_DisplayChar$71 ==.
00111$:
	ld	a, (0x05, sp)
	cp	a, #0x09
	jrnc	00105$
	Snixie$NIXIE_DisplayChar$72 ==.
	Snixie$NIXIE_DisplayChar$73 ==.
;	Source/Device/Src/nixie.c: 105: if(strchr(character,'1'+i)!=NULL)
	ld	a, (0x05, sp)
	clrw	x
	ld	xl, a
	addw	x, #0x0031
	pushw	x
	Snixie$NIXIE_DisplayChar$74 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$75 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$76 ==.
	ldw	(0x01, sp), x
	jreq	00112$
	Snixie$NIXIE_DisplayChar$77 ==.
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
	Snixie$NIXIE_DisplayChar$78 ==.
	Snixie$NIXIE_DisplayChar$79 ==.
;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
	inc	(0x05, sp)
	jra	00111$
00105$:
	Snixie$NIXIE_DisplayChar$80 ==.
	Snixie$NIXIE_DisplayChar$81 ==.
;	Source/Device/Src/nixie.c: 108: if(strchr(character,'0')!=NULL)
	push	#0x30
	Snixie$NIXIE_DisplayChar$82 ==.
	push	#0x00
	Snixie$NIXIE_DisplayChar$83 ==.
	ldw	x, (0x0b, sp)
	pushw	x
	Snixie$NIXIE_DisplayChar$84 ==.
	call	_strchr
	addw	sp, #4
	Snixie$NIXIE_DisplayChar$85 ==.
	tnzw	x
	jreq	00107$
	Snixie$NIXIE_DisplayChar$86 ==.
;	Source/Device/Src/nixie.c: 109: tmp|=1<<1;
	ld	a, (0x04, sp)
	or	a, #0x02
	ld	xl, a
	ld	a, (0x03, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00107$:
	Snixie$NIXIE_DisplayChar$87 ==.
;	Source/Device/Src/nixie.c: 110: if(tubeState==ENABLE)
	ld	a, (0x0b, sp)
	dec	a
	jrne	00109$
	Snixie$NIXIE_DisplayChar$88 ==.
	Snixie$NIXIE_DisplayChar$89 ==.
;	Source/Device/Src/nixie.c: 111: tmp|=1<<0;
	ldw	x, (0x03, sp)
	srlw	x
	scf
	rlcw	x
	ldw	(0x03, sp), x
00109$:
	Snixie$NIXIE_DisplayChar$90 ==.
;	Source/Device/Src/nixie.c: 113: output=(tmp&0xAAA)>>1;
	ldw	x, (0x03, sp)
	ld	a, xl
	and	a, #0xaa
	ld	yl, a
	ld	a, xh
	and	a, #0x0a
	ld	yh, a
	srlw	y
	Snixie$NIXIE_DisplayChar$91 ==.
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
	Snixie$NIXIE_DisplayChar$92 ==.
;	Source/Device/Src/nixie.c: 116: return output;
	ld	xh, a
	Snixie$NIXIE_DisplayChar$93 ==.
;	Source/Device/Src/nixie.c: 117: }
	addw	sp, #5
	Snixie$NIXIE_DisplayChar$94 ==.
	Snixie$NIXIE_DisplayChar$95 ==.
	XG$NIXIE_DisplayChar$0$0 ==.
	ret
	Snixie$NIXIE_DisplayChar$96 ==.
	Snixie$NIXIE_DisplayTime$97 ==.
;	Source/Device/Src/nixie.c: 135: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
;	-----------------------------------------
;	 function NIXIE_DisplayTime
;	-----------------------------------------
_NIXIE_DisplayTime:
	Snixie$NIXIE_DisplayTime$98 ==.
	sub	sp, #18
	Snixie$NIXIE_DisplayTime$99 ==.
	Snixie$NIXIE_DisplayTime$100 ==.
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
	Snixie$NIXIE_DisplayTime$101 ==.
;	Source/Device/Src/nixie.c: 141: uint8_t tmp=hour/10;
	ld	a, (0x15, sp)
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
;	Source/Device/Src/nixie.c: 142: tube1s[0]+=tmp;
	ld	a, (0x01, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$107 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$108 ==.
	ld	(0x01, sp), a
	Snixie$NIXIE_DisplayTime$109 ==.
;	Source/Device/Src/nixie.c: 144: tmp=hour%10;
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
;	Source/Device/Src/nixie.c: 145: tube2s[0]+=tmp;
	ld	a, (0x03, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$115 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$116 ==.
	ld	(0x03, sp), a
	Snixie$NIXIE_DisplayTime$117 ==.
;	Source/Device/Src/nixie.c: 147: tmp=min/10;
	ld	a, (0x16, sp)
	ld	(0x12, sp), a
	clr	(0x11, sp)
	push	#0x0a
	Snixie$NIXIE_DisplayTime$118 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$119 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$120 ==.
	call	__divsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$121 ==.
	Snixie$NIXIE_DisplayTime$122 ==.
;	Source/Device/Src/nixie.c: 148: tube3s[0]+=tmp;
	ld	a, (0x05, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$123 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$124 ==.
	ld	(0x05, sp), a
	Snixie$NIXIE_DisplayTime$125 ==.
;	Source/Device/Src/nixie.c: 150: tmp=min%10;
	push	#0x0a
	Snixie$NIXIE_DisplayTime$126 ==.
	push	#0x00
	Snixie$NIXIE_DisplayTime$127 ==.
	ldw	x, (0x13, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$128 ==.
	call	__modsint
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$129 ==.
	Snixie$NIXIE_DisplayTime$130 ==.
;	Source/Device/Src/nixie.c: 151: tube4s[0]+=tmp;
	ld	a, (0x08, sp)
	pushw	x
	Snixie$NIXIE_DisplayTime$131 ==.
	add	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$132 ==.
	ld	(0x08, sp), a
	Snixie$NIXIE_DisplayTime$133 ==.
;	Source/Device/Src/nixie.c: 153: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$134 ==.
	ldw	x, sp
	incw	x
	incw	x
	pushw	x
	Snixie$NIXIE_DisplayTime$135 ==.
	push	#0x01
	Snixie$NIXIE_DisplayTime$136 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$137 ==.
	ldw	(0x0a, sp), x
	Snixie$NIXIE_DisplayTime$138 ==.
;	Source/Device/Src/nixie.c: 154: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$139 ==.
	ldw	x, sp
	addw	x, #4
	pushw	x
	Snixie$NIXIE_DisplayTime$140 ==.
	push	#0x02
	Snixie$NIXIE_DisplayTime$141 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$142 ==.
	ldw	(0x0c, sp), x
	Snixie$NIXIE_DisplayTime$143 ==.
;	Source/Device/Src/nixie.c: 155: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$144 ==.
	ldw	x, sp
	addw	x, #6
	pushw	x
	Snixie$NIXIE_DisplayTime$145 ==.
	push	#0x03
	Snixie$NIXIE_DisplayTime$146 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$147 ==.
	ldw	(0x0e, sp), x
	Snixie$NIXIE_DisplayTime$148 ==.
;	Source/Device/Src/nixie.c: 156: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
	push	_tube_state+0
	Snixie$NIXIE_DisplayTime$149 ==.
	ldw	x, sp
	addw	x, #9
	pushw	x
	Snixie$NIXIE_DisplayTime$150 ==.
	push	#0x04
	Snixie$NIXIE_DisplayTime$151 ==.
	call	_NIXIE_DisplayChar
	addw	sp, #4
	Snixie$NIXIE_DisplayTime$152 ==.
	ldw	(0x10, sp), x
	Snixie$NIXIE_DisplayTime$153 ==.
;	Source/Device/Src/nixie.c: 160: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
	push	#0x80
	Snixie$NIXIE_DisplayTime$154 ==.
	push	#0x0a
	Snixie$NIXIE_DisplayTime$155 ==.
	push	#0x50
	Snixie$NIXIE_DisplayTime$156 ==.
	call	_GPIO_WriteLow
	addw	sp, #3
	Snixie$NIXIE_DisplayTime$157 ==.
	Snixie$NIXIE_DisplayTime$158 ==.
	Snixie$NIXIE_DisplayTime$159 ==.
;	Source/Device/Src/nixie.c: 165: tmp1=(uint8_t)((tube4&0b11111110)>>1);
	ldw	x, (0x10, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
	Snixie$NIXIE_DisplayTime$160 ==.
;	Source/Device/Src/nixie.c: 166: tmp2=(uint8_t)((tube4&0b00000001)<<7);
	ld	a, (0x11, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	Snixie$NIXIE_DisplayTime$161 ==.
;	Source/Device/Src/nixie.c: 167: tmp1=tmp1|tmp2;
	pushw	x
	Snixie$NIXIE_DisplayTime$162 ==.
	or	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$163 ==.
	Snixie$NIXIE_DisplayTime$164 ==.
;	Source/Device/Src/nixie.c: 168: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$165 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$166 ==.
	Snixie$NIXIE_DisplayTime$167 ==.
;	Source/Device/Src/nixie.c: 170: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00101$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$168 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$169 ==.
	tnz	a
	jreq	00101$
	Snixie$NIXIE_DisplayTime$170 ==.
;	Source/Device/Src/nixie.c: 172: tmp1=(uint8_t)((tube3&0b1111)<<4);
	ld	a, (0x0f, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$171 ==.
;	Source/Device/Src/nixie.c: 173: tmp2=(uint8_t)(tube4>>8);
	ld	a, (0x10, sp)
	clrw	x
	Snixie$NIXIE_DisplayTime$172 ==.
;	Source/Device/Src/nixie.c: 174: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	ld	xl, a
	Snixie$NIXIE_DisplayTime$173 ==.
;	Source/Device/Src/nixie.c: 175: tmp2=(tmp1&0b00000001)<<7;
	ld	a, xl
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$174 ==.
;	Source/Device/Src/nixie.c: 176: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$175 ==.
;	Source/Device/Src/nixie.c: 177: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$176 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$177 ==.
	Snixie$NIXIE_DisplayTime$178 ==.
;	Source/Device/Src/nixie.c: 179: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00104$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$179 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$180 ==.
	tnz	a
	jreq	00104$
	Snixie$NIXIE_DisplayTime$181 ==.
;	Source/Device/Src/nixie.c: 181: tmp1=(uint8_t)(tube3>>5);
	ldw	x, (0x0e, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
	Snixie$NIXIE_DisplayTime$182 ==.
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
	Snixie$NIXIE_DisplayTime$183 ==.
;	Source/Device/Src/nixie.c: 183: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$184 ==.
;	Source/Device/Src/nixie.c: 184: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$185 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$186 ==.
	Snixie$NIXIE_DisplayTime$187 ==.
;	Source/Device/Src/nixie.c: 186: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00107$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$188 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$189 ==.
	tnz	a
	jreq	00107$
	Snixie$NIXIE_DisplayTime$190 ==.
;	Source/Device/Src/nixie.c: 189: tmp1=(uint8_t)((tube2&0b11111110)>>1);
	ldw	x, (0x0c, sp)
	srlw	x
	sllw	x
	clr	a
	ld	xh, a
	srlw	x
	Snixie$NIXIE_DisplayTime$191 ==.
;	Source/Device/Src/nixie.c: 190: tmp2=(uint8_t)((tube2&0b00000001)<<7);
	ld	a, (0x0d, sp)
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	Snixie$NIXIE_DisplayTime$192 ==.
;	Source/Device/Src/nixie.c: 191: tmp1=tmp1|tmp2;
	pushw	x
	Snixie$NIXIE_DisplayTime$193 ==.
	or	a, (2, sp)
	popw	x
	Snixie$NIXIE_DisplayTime$194 ==.
	Snixie$NIXIE_DisplayTime$195 ==.
;	Source/Device/Src/nixie.c: 192: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$196 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$197 ==.
	Snixie$NIXIE_DisplayTime$198 ==.
;	Source/Device/Src/nixie.c: 194: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00110$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$199 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$200 ==.
	tnz	a
	jreq	00110$
	Snixie$NIXIE_DisplayTime$201 ==.
;	Source/Device/Src/nixie.c: 196: tmp1=(uint8_t)((tube1&0b1111)<<4);
	ld	a, (0x0b, sp)
	and	a, #0x0f
	swap	a
	and	a, #0xf0
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$202 ==.
;	Source/Device/Src/nixie.c: 197: tmp2=(uint8_t)(tube2>>8);
	ld	a, (0x0c, sp)
	clrw	x
	Snixie$NIXIE_DisplayTime$203 ==.
;	Source/Device/Src/nixie.c: 198: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	ld	xl, a
	Snixie$NIXIE_DisplayTime$204 ==.
;	Source/Device/Src/nixie.c: 199: tmp2=(tmp1&0b00000001)<<7;
	ld	a, xl
	and	a, #0x01
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	sll	a
	ld	(0x12, sp), a
	Snixie$NIXIE_DisplayTime$205 ==.
;	Source/Device/Src/nixie.c: 200: tmp1=(tmp1>>1)|tmp2;
	ld	a, xl
	srl	a
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$206 ==.
;	Source/Device/Src/nixie.c: 201: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$207 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$208 ==.
	Snixie$NIXIE_DisplayTime$209 ==.
;	Source/Device/Src/nixie.c: 203: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00113$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$210 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$211 ==.
	tnz	a
	jreq	00113$
	Snixie$NIXIE_DisplayTime$212 ==.
;	Source/Device/Src/nixie.c: 205: tmp1=(uint8_t)(tube1>>5);
	ldw	x, (0x0a, sp)
	ld	a, #0x20
	div	x, a
	exg	a, xl
	ld	(0x12, sp), a
	exg	a, xl
	Snixie$NIXIE_DisplayTime$213 ==.
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
	Snixie$NIXIE_DisplayTime$214 ==.
;	Source/Device/Src/nixie.c: 207: tmp1=tmp1|tmp2;
	or	a, (0x12, sp)
	Snixie$NIXIE_DisplayTime$215 ==.
;	Source/Device/Src/nixie.c: 208: SPI_SendData(tmp1);
	push	a
	Snixie$NIXIE_DisplayTime$216 ==.
	call	_SPI_SendData
	pop	a
	Snixie$NIXIE_DisplayTime$217 ==.
	Snixie$NIXIE_DisplayTime$218 ==.
;	Source/Device/Src/nixie.c: 210: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
00116$:
	push	#0x02
	Snixie$NIXIE_DisplayTime$219 ==.
	call	_SPI_GetFlagStatus
	addw	sp, #1
	Snixie$NIXIE_DisplayTime$220 ==.
	tnz	a
	jreq	00116$
	Snixie$NIXIE_DisplayTime$221 ==.
;	Source/Device/Src/nixie.c: 212: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
	push	#0x80
	Snixie$NIXIE_DisplayTime$222 ==.
	push	#0x0a
	Snixie$NIXIE_DisplayTime$223 ==.
	push	#0x50
	Snixie$NIXIE_DisplayTime$224 ==.
	call	_GPIO_WriteHigh
	addw	sp, #3
	Snixie$NIXIE_DisplayTime$225 ==.
	Snixie$NIXIE_DisplayTime$226 ==.
	Snixie$NIXIE_DisplayTime$227 ==.
;	Source/Device/Src/nixie.c: 213: }
	addw	sp, #18
	Snixie$NIXIE_DisplayTime$228 ==.
	Snixie$NIXIE_DisplayTime$229 ==.
	XG$NIXIE_DisplayTime$0$0 ==.
	ret
	Snixie$NIXIE_DisplayTime$230 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fnixie$__xinit_tube_state$0_0$0 == .
__xinit__tube_state:
	.db #0x00	; 0
Fnixie$__xinit_nixie_tube1$0_0$0 == .
__xinit__nixie_tube1:
	.db #0x00	; 0
Fnixie$__xinit_nixie_tube2$0_0$0 == .
__xinit__nixie_tube2:
	.db #0x00	; 0
Fnixie$__xinit_nixie_tube3$0_0$0 == .
__xinit__nixie_tube3:
	.db #0x00	; 0
Fnixie$__xinit_nixie_tube4$0_0$0 == .
__xinit__nixie_tube4:
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
	.dw	0,(Snixie$NIXIE_Init$0)
	.db	3
	.sleb128	57
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$3-Snixie$NIXIE_Init$0
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$9-Snixie$NIXIE_Init$3
	.db	3
	.sleb128	1
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
	.dw	Snixie$NIXIE_Init$22-Snixie$NIXIE_Init$21
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$32-Snixie$NIXIE_Init$22
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$35-Snixie$NIXIE_Init$32
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$38-Snixie$NIXIE_Init$35
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$39-Snixie$NIXIE_Init$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$46-Snixie$NIXIE_Init$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$49-Snixie$NIXIE_Init$46
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$52-Snixie$NIXIE_Init$49
	.db	3
	.sleb128	-2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$54-Snixie$NIXIE_Init$52
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Snixie$NIXIE_Init$56-Snixie$NIXIE_Init$54
	.db	3
	.sleb128	9
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_Init$58-Snixie$NIXIE_Init$56
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$NIXIE_DisplayChar$60)
	.db	3
	.sleb128	95
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$63-Snixie$NIXIE_DisplayChar$60
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$64-Snixie$NIXIE_DisplayChar$63
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$69-Snixie$NIXIE_DisplayChar$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$70-Snixie$NIXIE_DisplayChar$69
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$73-Snixie$NIXIE_DisplayChar$70
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$77-Snixie$NIXIE_DisplayChar$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$79-Snixie$NIXIE_DisplayChar$77
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$81-Snixie$NIXIE_DisplayChar$79
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$86-Snixie$NIXIE_DisplayChar$81
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$87-Snixie$NIXIE_DisplayChar$86
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$89-Snixie$NIXIE_DisplayChar$87
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$90-Snixie$NIXIE_DisplayChar$89
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$91-Snixie$NIXIE_DisplayChar$90
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$92-Snixie$NIXIE_DisplayChar$91
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayChar$93-Snixie$NIXIE_DisplayChar$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_DisplayChar$95-Snixie$NIXIE_DisplayChar$93
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Snixie$NIXIE_DisplayTime$97)
	.db	3
	.sleb128	134
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$100-Snixie$NIXIE_DisplayTime$97
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$101-Snixie$NIXIE_DisplayTime$100
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
	.dw	Snixie$NIXIE_DisplayTime$125-Snixie$NIXIE_DisplayTime$122
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$130-Snixie$NIXIE_DisplayTime$125
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$133-Snixie$NIXIE_DisplayTime$130
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$138-Snixie$NIXIE_DisplayTime$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$143-Snixie$NIXIE_DisplayTime$138
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$148-Snixie$NIXIE_DisplayTime$143
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$153-Snixie$NIXIE_DisplayTime$148
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$159-Snixie$NIXIE_DisplayTime$153
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$160-Snixie$NIXIE_DisplayTime$159
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$161-Snixie$NIXIE_DisplayTime$160
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$164-Snixie$NIXIE_DisplayTime$161
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$167-Snixie$NIXIE_DisplayTime$164
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$170-Snixie$NIXIE_DisplayTime$167
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$171-Snixie$NIXIE_DisplayTime$170
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$172-Snixie$NIXIE_DisplayTime$171
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$173-Snixie$NIXIE_DisplayTime$172
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$174-Snixie$NIXIE_DisplayTime$173
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$175-Snixie$NIXIE_DisplayTime$174
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$178-Snixie$NIXIE_DisplayTime$175
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$181-Snixie$NIXIE_DisplayTime$178
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$182-Snixie$NIXIE_DisplayTime$181
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$183-Snixie$NIXIE_DisplayTime$182
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$184-Snixie$NIXIE_DisplayTime$183
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$187-Snixie$NIXIE_DisplayTime$184
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$190-Snixie$NIXIE_DisplayTime$187
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$191-Snixie$NIXIE_DisplayTime$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$192-Snixie$NIXIE_DisplayTime$191
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$195-Snixie$NIXIE_DisplayTime$192
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$198-Snixie$NIXIE_DisplayTime$195
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$201-Snixie$NIXIE_DisplayTime$198
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$202-Snixie$NIXIE_DisplayTime$201
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$203-Snixie$NIXIE_DisplayTime$202
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$204-Snixie$NIXIE_DisplayTime$203
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$205-Snixie$NIXIE_DisplayTime$204
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$206-Snixie$NIXIE_DisplayTime$205
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$209-Snixie$NIXIE_DisplayTime$206
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$212-Snixie$NIXIE_DisplayTime$209
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$213-Snixie$NIXIE_DisplayTime$212
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$214-Snixie$NIXIE_DisplayTime$213
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$215-Snixie$NIXIE_DisplayTime$214
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$218-Snixie$NIXIE_DisplayTime$215
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$221-Snixie$NIXIE_DisplayTime$218
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Snixie$NIXIE_DisplayTime$227-Snixie$NIXIE_DisplayTime$221
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Snixie$NIXIE_DisplayTime$229-Snixie$NIXIE_DisplayTime$227
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Snixie$NIXIE_DisplayTime$228)
	.dw	0,(Snixie$NIXIE_DisplayTime$230)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_DisplayTime$225)
	.dw	0,(Snixie$NIXIE_DisplayTime$228)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$224)
	.dw	0,(Snixie$NIXIE_DisplayTime$225)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$223)
	.dw	0,(Snixie$NIXIE_DisplayTime$224)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$222)
	.dw	0,(Snixie$NIXIE_DisplayTime$223)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$220)
	.dw	0,(Snixie$NIXIE_DisplayTime$222)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$219)
	.dw	0,(Snixie$NIXIE_DisplayTime$220)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$217)
	.dw	0,(Snixie$NIXIE_DisplayTime$219)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$216)
	.dw	0,(Snixie$NIXIE_DisplayTime$217)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$211)
	.dw	0,(Snixie$NIXIE_DisplayTime$216)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$210)
	.dw	0,(Snixie$NIXIE_DisplayTime$211)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.dw	0,(Snixie$NIXIE_DisplayTime$210)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$199)
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$197)
	.dw	0,(Snixie$NIXIE_DisplayTime$199)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$196)
	.dw	0,(Snixie$NIXIE_DisplayTime$197)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.dw	0,(Snixie$NIXIE_DisplayTime$196)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$193)
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$189)
	.dw	0,(Snixie$NIXIE_DisplayTime$193)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$188)
	.dw	0,(Snixie$NIXIE_DisplayTime$189)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$186)
	.dw	0,(Snixie$NIXIE_DisplayTime$188)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$185)
	.dw	0,(Snixie$NIXIE_DisplayTime$186)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.dw	0,(Snixie$NIXIE_DisplayTime$185)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$179)
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.dw	0,(Snixie$NIXIE_DisplayTime$179)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$176)
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.dw	0,(Snixie$NIXIE_DisplayTime$176)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$168)
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$166)
	.dw	0,(Snixie$NIXIE_DisplayTime$168)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$165)
	.dw	0,(Snixie$NIXIE_DisplayTime$166)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.dw	0,(Snixie$NIXIE_DisplayTime$165)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$162)
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$157)
	.dw	0,(Snixie$NIXIE_DisplayTime$162)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$156)
	.dw	0,(Snixie$NIXIE_DisplayTime$157)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$155)
	.dw	0,(Snixie$NIXIE_DisplayTime$156)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$154)
	.dw	0,(Snixie$NIXIE_DisplayTime$155)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.dw	0,(Snixie$NIXIE_DisplayTime$154)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$151)
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$150)
	.dw	0,(Snixie$NIXIE_DisplayTime$151)
	.dw	2
	.db	120
	.sleb128	22
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
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$145)
	.dw	0,(Snixie$NIXIE_DisplayTime$146)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$144)
	.dw	0,(Snixie$NIXIE_DisplayTime$145)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$142)
	.dw	0,(Snixie$NIXIE_DisplayTime$144)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.dw	0,(Snixie$NIXIE_DisplayTime$142)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$137)
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.dw	0,(Snixie$NIXIE_DisplayTime$137)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.dw	2
	.db	120
	.sleb128	22
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$132)
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.dw	0,(Snixie$NIXIE_DisplayTime$132)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.dw	2
	.db	120
	.sleb128	23
	.dw	0,(Snixie$NIXIE_DisplayTime$127)
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.dw	2
	.db	120
	.sleb128	21
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.dw	0,(Snixie$NIXIE_DisplayTime$127)
	.dw	2
	.db	120
	.sleb128	20
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$123)
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.dw	2
	.db	120
	.sleb128	21
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
	.sleb128	21
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
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
	.dw	0,(Snixie$NIXIE_DisplayTime$102)
	.dw	2
	.db	120
	.sleb128	19
	.dw	0,(Snixie$NIXIE_DisplayTime$98)
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Snixie$NIXIE_DisplayChar$94)
	.dw	0,(Snixie$NIXIE_DisplayChar$96)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_DisplayChar$88)
	.dw	0,(Snixie$NIXIE_DisplayChar$94)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$85)
	.dw	0,(Snixie$NIXIE_DisplayChar$88)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$84)
	.dw	0,(Snixie$NIXIE_DisplayChar$85)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$83)
	.dw	0,(Snixie$NIXIE_DisplayChar$84)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$82)
	.dw	0,(Snixie$NIXIE_DisplayChar$83)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_DisplayChar$76)
	.dw	0,(Snixie$NIXIE_DisplayChar$82)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$75)
	.dw	0,(Snixie$NIXIE_DisplayChar$76)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$74)
	.dw	0,(Snixie$NIXIE_DisplayChar$75)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.dw	0,(Snixie$NIXIE_DisplayChar$74)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_DisplayChar$65)
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_DisplayChar$62)
	.dw	0,(Snixie$NIXIE_DisplayChar$65)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_DisplayChar$61)
	.dw	0,(Snixie$NIXIE_DisplayChar$62)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Snixie$NIXIE_Init$57)
	.dw	0,(Snixie$NIXIE_Init$59)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Snixie$NIXIE_Init$44)
	.dw	0,(Snixie$NIXIE_Init$57)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$43)
	.dw	0,(Snixie$NIXIE_Init$44)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$42)
	.dw	0,(Snixie$NIXIE_Init$43)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$41)
	.dw	0,(Snixie$NIXIE_Init$42)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$40)
	.dw	0,(Snixie$NIXIE_Init$41)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$34)
	.dw	0,(Snixie$NIXIE_Init$40)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$33)
	.dw	0,(Snixie$NIXIE_Init$34)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$31)
	.dw	0,(Snixie$NIXIE_Init$33)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$30)
	.dw	0,(Snixie$NIXIE_Init$31)
	.dw	2
	.db	120
	.sleb128	12
	.dw	0,(Snixie$NIXIE_Init$29)
	.dw	0,(Snixie$NIXIE_Init$30)
	.dw	2
	.db	120
	.sleb128	11
	.dw	0,(Snixie$NIXIE_Init$28)
	.dw	0,(Snixie$NIXIE_Init$29)
	.dw	2
	.db	120
	.sleb128	10
	.dw	0,(Snixie$NIXIE_Init$27)
	.dw	0,(Snixie$NIXIE_Init$28)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Snixie$NIXIE_Init$26)
	.dw	0,(Snixie$NIXIE_Init$27)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_Init$25)
	.dw	0,(Snixie$NIXIE_Init$26)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_Init$24)
	.dw	0,(Snixie$NIXIE_Init$25)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$23)
	.dw	0,(Snixie$NIXIE_Init$24)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$20)
	.dw	0,(Snixie$NIXIE_Init$23)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$19)
	.dw	0,(Snixie$NIXIE_Init$20)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_Init$18)
	.dw	0,(Snixie$NIXIE_Init$19)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_Init$17)
	.dw	0,(Snixie$NIXIE_Init$18)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$16)
	.dw	0,(Snixie$NIXIE_Init$17)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$14)
	.dw	0,(Snixie$NIXIE_Init$16)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$13)
	.dw	0,(Snixie$NIXIE_Init$14)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_Init$12)
	.dw	0,(Snixie$NIXIE_Init$13)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_Init$11)
	.dw	0,(Snixie$NIXIE_Init$12)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$10)
	.dw	0,(Snixie$NIXIE_Init$11)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$8)
	.dw	0,(Snixie$NIXIE_Init$10)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$7)
	.dw	0,(Snixie$NIXIE_Init$8)
	.dw	2
	.db	120
	.sleb128	8
	.dw	0,(Snixie$NIXIE_Init$6)
	.dw	0,(Snixie$NIXIE_Init$7)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Snixie$NIXIE_Init$5)
	.dw	0,(Snixie$NIXIE_Init$6)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Snixie$NIXIE_Init$4)
	.dw	0,(Snixie$NIXIE_Init$5)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Snixie$NIXIE_Init$2)
	.dw	0,(Snixie$NIXIE_Init$4)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Snixie$NIXIE_Init$1)
	.dw	0,(Snixie$NIXIE_Init$2)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	10
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
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
	.uleb128	9
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
	.uleb128	8
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
	.uleb128	3
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	13
	.uleb128	33
	.db	0
	.uleb128	47
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
	.ascii "Source/Device/Src/nixie.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.dw	0,182
	.ascii "NIXIE_Init"
	.db	0
	.dw	0,(_NIXIE_Init)
	.dw	0,(XG$NIXIE_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+1144)
	.uleb128	3
	.dw	0,(Snixie$NIXIE_Init$36)
	.dw	0,(Snixie$NIXIE_Init$55)
	.uleb128	4
	.dw	0,170
	.dw	0,(Snixie$NIXIE_Init$37)
	.dw	0,(Snixie$NIXIE_Init$45)
	.uleb128	3
	.dw	0,(Snixie$NIXIE_Init$47)
	.dw	0,(Snixie$NIXIE_Init$53)
	.uleb128	4
	.dw	0,158
	.dw	0,(Snixie$NIXIE_Init$50)
	.dw	0,(Snixie$NIXIE_Init$51)
	.uleb128	5
	.uleb128	6
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "j"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-2
	.ascii "k"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "i"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	7
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	8
	.dw	0,378
	.ascii "NIXIE_DisplayChar"
	.db	0
	.dw	0,(_NIXIE_DisplayChar)
	.dw	0,(XG$NIXIE_DisplayChar$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+956)
	.dw	0,199
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "tubeNum"
	.db	0
	.dw	0,182
	.uleb128	10
	.db	2
	.dw	0,182
	.uleb128	9
	.db	2
	.db	145
	.sleb128	3
	.ascii "character"
	.db	0
	.dw	0,271
	.uleb128	9
	.db	2
	.db	145
	.sleb128	5
	.ascii "tubeState"
	.db	0
	.dw	0,182
	.uleb128	4
	.dw	0,346
	.dw	0,(Snixie$NIXIE_DisplayChar$71)
	.dw	0,(Snixie$NIXIE_DisplayChar$80)
	.uleb128	11
	.dw	0,(Snixie$NIXIE_DisplayChar$72)
	.dw	0,(Snixie$NIXIE_DisplayChar$78)
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "tmp"
	.db	0
	.dw	0,199
	.uleb128	6
	.db	6
	.db	80
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "output"
	.db	0
	.dw	0,199
	.uleb128	0
	.uleb128	2
	.dw	0,631
	.ascii "NIXIE_DisplayTime"
	.db	0
	.dw	0,(_NIXIE_DisplayTime)
	.dw	0,(XG$NIXIE_DisplayTime$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "hour"
	.db	0
	.dw	0,182
	.uleb128	9
	.db	2
	.db	145
	.sleb128	3
	.ascii "min"
	.db	0
	.dw	0,182
	.uleb128	4
	.dw	0,477
	.dw	0,(Snixie$NIXIE_DisplayTime$158)
	.dw	0,(Snixie$NIXIE_DisplayTime$226)
	.uleb128	6
	.db	1
	.db	81
	.ascii "tmp1"
	.db	0
	.dw	0,182
	.uleb128	6
	.db	1
	.db	80
	.ascii "tmp2"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-9
	.ascii "tube1"
	.db	0
	.dw	0,199
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-7
	.ascii "tube2"
	.db	0
	.dw	0,199
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-5
	.ascii "tube3"
	.db	0
	.dw	0,199
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-3
	.ascii "tube4"
	.db	0
	.dw	0,199
	.uleb128	12
	.dw	0,546
	.db	2
	.dw	0,182
	.uleb128	13
	.db	1
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-18
	.ascii "tube1s"
	.db	0
	.dw	0,533
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-16
	.ascii "tube2s"
	.db	0
	.dw	0,533
	.uleb128	12
	.dw	0,589
	.db	3
	.dw	0,182
	.uleb128	13
	.db	2
	.uleb128	0
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-14
	.ascii "tube3s"
	.db	0
	.dw	0,576
	.uleb128	6
	.db	2
	.db	145
	.sleb128	-11
	.ascii "tube4s"
	.db	0
	.dw	0,533
	.uleb128	6
	.db	1
	.db	81
	.ascii "tmp"
	.db	0
	.dw	0,182
	.uleb128	0
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_tube_state)
	.ascii "tube_state"
	.db	0
	.db	1
	.dw	0,182
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_nixie_tube1)
	.ascii "nixie_tube1"
	.db	0
	.db	1
	.dw	0,182
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_nixie_tube2)
	.ascii "nixie_tube2"
	.db	0
	.db	1
	.dw	0,182
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_nixie_tube3)
	.ascii "nixie_tube3"
	.db	0
	.db	1
	.dw	0,182
	.uleb128	14
	.db	5
	.db	3
	.dw	0,(_nixie_tube4)
	.ascii "nixie_tube4"
	.db	0
	.db	1
	.dw	0,182
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
	.ascii "NIXIE_Init"
	.db	0
	.dw	0,215
	.ascii "NIXIE_DisplayChar"
	.db	0
	.dw	0,378
	.ascii "NIXIE_DisplayTime"
	.db	0
	.dw	0,631
	.ascii "tube_state"
	.db	0
	.dw	0,654
	.ascii "nixie_tube1"
	.db	0
	.dw	0,678
	.ascii "nixie_tube2"
	.db	0
	.dw	0,702
	.ascii "nixie_tube3"
	.db	0
	.dw	0,726
	.ascii "nixie_tube4"
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
	.dw	0,(Snixie$NIXIE_DisplayTime$98)	;initial loc
	.dw	0,Snixie$NIXIE_DisplayTime$230-Snixie$NIXIE_DisplayTime$98
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$98)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$99)
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
	.uleb128	22
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
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$124)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$126)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$127)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$128)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$129)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$131)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$132)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$134)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$135)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$136)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$137)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$139)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$140)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$141)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$142)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$144)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$145)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$146)
	.db	14
	.uleb128	24
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
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$151)
	.db	14
	.uleb128	24
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$152)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$154)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$155)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$156)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$157)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$162)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$163)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$165)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$166)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$168)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$169)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$176)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$177)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$179)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$180)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$185)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$186)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$188)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$189)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$193)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$194)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$196)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$197)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$199)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$200)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$207)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$208)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$210)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$211)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$216)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$217)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$219)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$220)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$222)
	.db	14
	.uleb128	21
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$223)
	.db	14
	.uleb128	22
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$224)
	.db	14
	.uleb128	23
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$225)
	.db	14
	.uleb128	20
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayTime$228)
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
	.dw	0,(Snixie$NIXIE_DisplayChar$61)	;initial loc
	.dw	0,Snixie$NIXIE_DisplayChar$96-Snixie$NIXIE_DisplayChar$61
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$61)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$62)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$65)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$66)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$67)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$68)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$74)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$75)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$76)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$82)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$83)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$84)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$85)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$88)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_DisplayChar$94)
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
	.dw	0,250
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Snixie$NIXIE_Init$1)	;initial loc
	.dw	0,Snixie$NIXIE_Init$59-Snixie$NIXIE_Init$1
	.db	1
	.dw	0,(Snixie$NIXIE_Init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Snixie$NIXIE_Init$2)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$4)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$5)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$6)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$7)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_Init$8)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$10)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$11)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$12)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$13)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_Init$14)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$16)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$17)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$18)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$19)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_Init$20)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$23)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$24)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$25)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Snixie$NIXIE_Init$26)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Snixie$NIXIE_Init$27)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Snixie$NIXIE_Init$28)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Snixie$NIXIE_Init$29)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Snixie$NIXIE_Init$30)
	.db	14
	.uleb128	13
	.db	1
	.dw	0,(Snixie$NIXIE_Init$31)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$33)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$34)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$40)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$41)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$42)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Snixie$NIXIE_Init$43)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Snixie$NIXIE_Init$44)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Snixie$NIXIE_Init$57)
	.db	14
	.uleb128	2
