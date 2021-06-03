;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module soft_i2c
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_Init
	.globl _I2C_Init
	.globl _I2C_Start
	.globl _I2C_Stop
	.globl _I2C_Wait_Ack
	.globl _I2C_Ack
	.globl _I2C_NAck
	.globl _I2C_Send_Byte
	.globl _I2C_Read_Byte
	.globl _I2C_MasterReceiveData
	.globl _I2C_MasterSendData
	.globl _delay_us
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
	Ssoft_i2c$I2C_Init$0 ==.
;	Source/Driver/Src/soft_i2c.c: 26: void I2C_Init(void)
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
	Ssoft_i2c$I2C_Init$1 ==.
	Ssoft_i2c$I2C_Init$2 ==.
;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
	push	#0x90
	Ssoft_i2c$I2C_Init$3 ==.
	push	#0x10
	Ssoft_i2c$I2C_Init$4 ==.
	push	#0x05
	Ssoft_i2c$I2C_Init$5 ==.
	push	#0x50
	Ssoft_i2c$I2C_Init$6 ==.
	call	_GPIO_Init
	addw	sp, #4
	Ssoft_i2c$I2C_Init$7 ==.
	Ssoft_i2c$I2C_Init$8 ==.
;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
	push	#0x90
	Ssoft_i2c$I2C_Init$9 ==.
	push	#0x20
	Ssoft_i2c$I2C_Init$10 ==.
	push	#0x05
	Ssoft_i2c$I2C_Init$11 ==.
	push	#0x50
	Ssoft_i2c$I2C_Init$12 ==.
	call	_GPIO_Init
	addw	sp, #4
	Ssoft_i2c$I2C_Init$13 ==.
	Ssoft_i2c$I2C_Init$14 ==.
;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Init$15 ==.
;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
	bset	20485, #5
	Ssoft_i2c$I2C_Init$16 ==.
;	Source/Driver/Src/soft_i2c.c: 33: }
	Ssoft_i2c$I2C_Init$17 ==.
	XG$I2C_Init$0$0 ==.
	ret
	Ssoft_i2c$I2C_Init$18 ==.
	Ssoft_i2c$I2C_Start$19 ==.
;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
	Ssoft_i2c$I2C_Start$20 ==.
	Ssoft_i2c$I2C_Start$21 ==.
;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
	bset	20485, #5
	Ssoft_i2c$I2C_Start$22 ==.
;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Start$23 ==.
;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Start$24 ==.
;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
	bres	20485, #5
	Ssoft_i2c$I2C_Start$25 ==.
;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Start$26 ==.
;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
	bres	20485, #4
	Ssoft_i2c$I2C_Start$27 ==.
;	Source/Driver/Src/soft_i2c.c: 44: }
	Ssoft_i2c$I2C_Start$28 ==.
	XG$I2C_Start$0$0 ==.
	ret
	Ssoft_i2c$I2C_Start$29 ==.
	Ssoft_i2c$I2C_Stop$30 ==.
;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
	Ssoft_i2c$I2C_Stop$31 ==.
	Ssoft_i2c$I2C_Stop$32 ==.
;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_Stop$33 ==.
;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
	bres	20485, #5
	Ssoft_i2c$I2C_Stop$34 ==.
;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Stop$35 ==.
;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Stop$36 ==.
;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
	ld	a, 0x5005
	or	a, #0x20
	ld	0x5005, a
	Ssoft_i2c$I2C_Stop$37 ==.
;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
	jp	_delay_us
	Ssoft_i2c$I2C_Stop$38 ==.
;	Source/Driver/Src/soft_i2c.c: 56: }
	Ssoft_i2c$I2C_Stop$39 ==.
	XG$I2C_Stop$0$0 ==.
	ret
	Ssoft_i2c$I2C_Stop$40 ==.
	Ssoft_i2c$I2C_Wait_Ack$41 ==.
;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
;	-----------------------------------------
;	 function I2C_Wait_Ack
;	-----------------------------------------
_I2C_Wait_Ack:
	Ssoft_i2c$I2C_Wait_Ack$42 ==.
	Ssoft_i2c$I2C_Wait_Ack$43 ==.
;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
	ld	a, 0x5005
	or	a, #0x20
	ld	0x5005, a
	nop
	Ssoft_i2c$I2C_Wait_Ack$44 ==.
;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
	ld	a, 0x5005
	or	a, #0x10
	ld	0x5005, a
	nop
	Ssoft_i2c$I2C_Wait_Ack$45 ==.
;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
	clrw	x
00103$:
	ld	a, 0x5006
	and	a, #0x20
	swap	a
	and	a, #0x0f
	srl	a
	tnz	a
	jreq	00105$
	Ssoft_i2c$I2C_Wait_Ack$46 ==.
	Ssoft_i2c$I2C_Wait_Ack$47 ==.
;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
	incw	x
	Ssoft_i2c$I2C_Wait_Ack$48 ==.
;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
	ld	a, xl
	cp	a, #0xfa
	jrule	00103$
	Ssoft_i2c$I2C_Wait_Ack$49 ==.
	Ssoft_i2c$I2C_Wait_Ack$50 ==.
;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
	call	_I2C_Stop
	Ssoft_i2c$I2C_Wait_Ack$51 ==.
;	Source/Driver/Src/soft_i2c.c: 73: return 1;
	ld	a, #0x01
	jra	00106$
	Ssoft_i2c$I2C_Wait_Ack$52 ==.
00105$:
	Ssoft_i2c$I2C_Wait_Ack$53 ==.
;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
	bres	20485, #4
	Ssoft_i2c$I2C_Wait_Ack$54 ==.
;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
	clr	a
00106$:
	Ssoft_i2c$I2C_Wait_Ack$55 ==.
;	Source/Driver/Src/soft_i2c.c: 78: }
	Ssoft_i2c$I2C_Wait_Ack$56 ==.
	XG$I2C_Wait_Ack$0$0 ==.
	ret
	Ssoft_i2c$I2C_Wait_Ack$57 ==.
	Ssoft_i2c$I2C_Ack$58 ==.
;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
;	-----------------------------------------
;	 function I2C_Ack
;	-----------------------------------------
_I2C_Ack:
	Ssoft_i2c$I2C_Ack$59 ==.
	Ssoft_i2c$I2C_Ack$60 ==.
;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_Ack$61 ==.
;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
	bres	20485, #5
	Ssoft_i2c$I2C_Ack$62 ==.
;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Ack$63 ==.
;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Ack$64 ==.
;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Ack$65 ==.
;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_Ack$66 ==.
;	Source/Driver/Src/soft_i2c.c: 89: }
	Ssoft_i2c$I2C_Ack$67 ==.
	XG$I2C_Ack$0$0 ==.
	ret
	Ssoft_i2c$I2C_Ack$68 ==.
	Ssoft_i2c$I2C_NAck$69 ==.
;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
;	-----------------------------------------
;	 function I2C_NAck
;	-----------------------------------------
_I2C_NAck:
	Ssoft_i2c$I2C_NAck$70 ==.
	Ssoft_i2c$I2C_NAck$71 ==.
;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_NAck$72 ==.
;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
	bset	20485, #5
	Ssoft_i2c$I2C_NAck$73 ==.
;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_NAck$74 ==.
;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_NAck$75 ==.
;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_NAck$76 ==.
;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_NAck$77 ==.
;	Source/Driver/Src/soft_i2c.c: 100: }
	Ssoft_i2c$I2C_NAck$78 ==.
	XG$I2C_NAck$0$0 ==.
	ret
	Ssoft_i2c$I2C_NAck$79 ==.
	Ssoft_i2c$I2C_Send_Byte$80 ==.
;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
;	-----------------------------------------
;	 function I2C_Send_Byte
;	-----------------------------------------
_I2C_Send_Byte:
	Ssoft_i2c$I2C_Send_Byte$81 ==.
	push	a
	Ssoft_i2c$I2C_Send_Byte$82 ==.
	Ssoft_i2c$I2C_Send_Byte$83 ==.
;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
	bres	20485, #4
	Ssoft_i2c$I2C_Send_Byte$84 ==.
;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
	clr	(0x01, sp)
00105$:
	Ssoft_i2c$I2C_Send_Byte$85 ==.
	Ssoft_i2c$I2C_Send_Byte$86 ==.
;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
	ld	a, (0x04, sp)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	clr	a
	tnzw	x
	jrpl	00120$
	dec	a
00120$:
	rrwa	x
	sll	a
	rlcw	x
	Ssoft_i2c$I2C_Send_Byte$87 ==.
	Ssoft_i2c$I2C_Send_Byte$88 ==.
;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
	ld	a, 0x5005
	Ssoft_i2c$I2C_Send_Byte$89 ==.
;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
	tnzw	x
	jreq	00102$
	Ssoft_i2c$I2C_Send_Byte$90 ==.
;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
	or	a, #0x20
	ld	0x5005, a
	jra	00103$
00102$:
	Ssoft_i2c$I2C_Send_Byte$91 ==.
;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
	and	a, #0xdf
	ld	0x5005, a
00103$:
	Ssoft_i2c$I2C_Send_Byte$92 ==.
;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
	sll	(0x04, sp)
	Ssoft_i2c$I2C_Send_Byte$93 ==.
;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
	call	_delay_us
	Ssoft_i2c$I2C_Send_Byte$94 ==.
;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Send_Byte$95 ==.
;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Send_Byte$96 ==.
;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
	bres	20485, #4
	Ssoft_i2c$I2C_Send_Byte$97 ==.
;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Send_Byte$98 ==.
;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	cp	a, #0x08
	jrnc	00122$
	jp	00105$
00122$:
	Ssoft_i2c$I2C_Send_Byte$99 ==.
;	Source/Driver/Src/soft_i2c.c: 123: }
	pop	a
	Ssoft_i2c$I2C_Send_Byte$100 ==.
	Ssoft_i2c$I2C_Send_Byte$101 ==.
	XG$I2C_Send_Byte$0$0 ==.
	ret
	Ssoft_i2c$I2C_Send_Byte$102 ==.
	Ssoft_i2c$I2C_Read_Byte$103 ==.
;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
;	-----------------------------------------
;	 function I2C_Read_Byte
;	-----------------------------------------
_I2C_Read_Byte:
	Ssoft_i2c$I2C_Read_Byte$104 ==.
	pushw	x
	Ssoft_i2c$I2C_Read_Byte$105 ==.
	Ssoft_i2c$I2C_Read_Byte$106 ==.
;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
	clr	(0x01, sp)
	Ssoft_i2c$I2C_Read_Byte$107 ==.
;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
	clr	(0x02, sp)
00107$:
	Ssoft_i2c$I2C_Read_Byte$108 ==.
	Ssoft_i2c$I2C_Read_Byte$109 ==.
;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
	bres	20485, #4
	Ssoft_i2c$I2C_Read_Byte$110 ==.
;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
	call	_delay_us
	Ssoft_i2c$I2C_Read_Byte$111 ==.
;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
	bset	20485, #4
	Ssoft_i2c$I2C_Read_Byte$112 ==.
;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
	sll	(0x01, sp)
	Ssoft_i2c$I2C_Read_Byte$113 ==.
;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
	ld	a, 0x5006
	and	a, #0x20
	swap	a
	and	a, #0x0f
	srl	a
	tnz	a
	jreq	00102$
	inc	(0x01, sp)
00102$:
	Ssoft_i2c$I2C_Read_Byte$114 ==.
;	Source/Driver/Src/soft_i2c.c: 137: nop();
	nop
	Ssoft_i2c$I2C_Read_Byte$115 ==.
	Ssoft_i2c$I2C_Read_Byte$116 ==.
;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
	inc	(0x02, sp)
	ld	a, (0x02, sp)
	cp	a, #0x08
	jrc	00107$
	Ssoft_i2c$I2C_Read_Byte$117 ==.
;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
	tnz	(0x05, sp)
	jrne	00105$
	Ssoft_i2c$I2C_Read_Byte$118 ==.
;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
	call	_I2C_NAck
	jra	00106$
00105$:
	Ssoft_i2c$I2C_Read_Byte$119 ==.
;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
	call	_I2C_Ack
00106$:
	Ssoft_i2c$I2C_Read_Byte$120 ==.
;	Source/Driver/Src/soft_i2c.c: 143: return receive;
	ld	a, (0x01, sp)
	Ssoft_i2c$I2C_Read_Byte$121 ==.
;	Source/Driver/Src/soft_i2c.c: 144: }
	popw	x
	Ssoft_i2c$I2C_Read_Byte$122 ==.
	Ssoft_i2c$I2C_Read_Byte$123 ==.
	XG$I2C_Read_Byte$0$0 ==.
	ret
	Ssoft_i2c$I2C_Read_Byte$124 ==.
	Ssoft_i2c$I2C_MasterReceiveData$125 ==.
;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
;	-----------------------------------------
;	 function I2C_MasterReceiveData
;	-----------------------------------------
_I2C_MasterReceiveData:
	Ssoft_i2c$I2C_MasterReceiveData$126 ==.
	sub	sp, #3
	Ssoft_i2c$I2C_MasterReceiveData$127 ==.
	Ssoft_i2c$I2C_MasterReceiveData$128 ==.
;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
	call	_I2C_Start
	Ssoft_i2c$I2C_MasterReceiveData$129 ==.
;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
	ld	a, (0x06, sp)
	sll	a
	ld	(0x03, sp), a
	push	a
	Ssoft_i2c$I2C_MasterReceiveData$130 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterReceiveData$131 ==.
	Ssoft_i2c$I2C_MasterReceiveData$132 ==.
;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00102$
	Ssoft_i2c$I2C_MasterReceiveData$133 ==.
;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
	clr	a
	jp	00114$
00102$:
	Ssoft_i2c$I2C_MasterReceiveData$134 ==.
;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
	ld	a, (0x07, sp)
	push	a
	Ssoft_i2c$I2C_MasterReceiveData$135 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterReceiveData$136 ==.
	Ssoft_i2c$I2C_MasterReceiveData$137 ==.
;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00104$
	Ssoft_i2c$I2C_MasterReceiveData$138 ==.
;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
	clr	a
	jp	00114$
00104$:
	Ssoft_i2c$I2C_MasterReceiveData$139 ==.
;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
	call	_I2C_Start
	Ssoft_i2c$I2C_MasterReceiveData$140 ==.
;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
	ld	a, (0x03, sp)
	or	a, #0x01
	push	a
	Ssoft_i2c$I2C_MasterReceiveData$141 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterReceiveData$142 ==.
	Ssoft_i2c$I2C_MasterReceiveData$143 ==.
;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00121$
	Ssoft_i2c$I2C_MasterReceiveData$144 ==.
;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
	clr	a
	jp	00114$
	Ssoft_i2c$I2C_MasterReceiveData$145 ==.
;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
00121$:
	clr	(0x03, sp)
	Ssoft_i2c$I2C_MasterReceiveData$146 ==.
00112$:
	ld	a, (0x03, sp)
	cp	a, (0x0a, sp)
	jrc	00150$
	jp	00110$
00150$:
	Ssoft_i2c$I2C_MasterReceiveData$147 ==.
	Ssoft_i2c$I2C_MasterReceiveData$148 ==.
;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
	clrw	x
	ld	a, (0x0a, sp)
	ld	xl, a
	decw	x
	ldw	(0x01, sp), x
	clrw	y
	ld	a, (0x03, sp)
	ld	yl, a
	Ssoft_i2c$I2C_MasterReceiveData$149 ==.
	Ssoft_i2c$I2C_MasterReceiveData$150 ==.
;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	addw	x, (0x08, sp)
	Ssoft_i2c$I2C_MasterReceiveData$151 ==.
;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
	exgw	x, y
	cpw	x, (0x01, sp)
	exgw	x, y
	jrne	00108$
	Ssoft_i2c$I2C_MasterReceiveData$152 ==.
	Ssoft_i2c$I2C_MasterReceiveData$153 ==.
;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
	pushw	x
	Ssoft_i2c$I2C_MasterReceiveData$154 ==.
	push	#0x00
	Ssoft_i2c$I2C_MasterReceiveData$155 ==.
	call	_I2C_Read_Byte
	addw	sp, #1
	Ssoft_i2c$I2C_MasterReceiveData$156 ==.
	popw	x
	Ssoft_i2c$I2C_MasterReceiveData$157 ==.
	ld	(x), a
	jra	00113$
00108$:
	Ssoft_i2c$I2C_MasterReceiveData$158 ==.
;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
	pushw	x
	Ssoft_i2c$I2C_MasterReceiveData$159 ==.
	push	#0x01
	Ssoft_i2c$I2C_MasterReceiveData$160 ==.
	call	_I2C_Read_Byte
	addw	sp, #1
	Ssoft_i2c$I2C_MasterReceiveData$161 ==.
	popw	x
	Ssoft_i2c$I2C_MasterReceiveData$162 ==.
	ld	(x), a
00113$:
	Ssoft_i2c$I2C_MasterReceiveData$163 ==.
;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
	inc	(0x03, sp)
	jp	00112$
00110$:
	Ssoft_i2c$I2C_MasterReceiveData$164 ==.
;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
	call	_I2C_Stop
	Ssoft_i2c$I2C_MasterReceiveData$165 ==.
;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
	ld	a, #0x01
00114$:
	Ssoft_i2c$I2C_MasterReceiveData$166 ==.
;	Source/Driver/Src/soft_i2c.c: 218: }
	addw	sp, #3
	Ssoft_i2c$I2C_MasterReceiveData$167 ==.
	Ssoft_i2c$I2C_MasterReceiveData$168 ==.
	XG$I2C_MasterReceiveData$0$0 ==.
	ret
	Ssoft_i2c$I2C_MasterReceiveData$169 ==.
	Ssoft_i2c$I2C_MasterSendData$170 ==.
;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
;	-----------------------------------------
;	 function I2C_MasterSendData
;	-----------------------------------------
_I2C_MasterSendData:
	Ssoft_i2c$I2C_MasterSendData$171 ==.
	push	a
	Ssoft_i2c$I2C_MasterSendData$172 ==.
	Ssoft_i2c$I2C_MasterSendData$173 ==.
;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
	call	_I2C_Start
	Ssoft_i2c$I2C_MasterSendData$174 ==.
;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
	ld	a, (0x04, sp)
	sll	a
	push	a
	Ssoft_i2c$I2C_MasterSendData$175 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterSendData$176 ==.
	Ssoft_i2c$I2C_MasterSendData$177 ==.
;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00102$
	Ssoft_i2c$I2C_MasterSendData$178 ==.
;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
	clr	a
	jp	00111$
00102$:
	Ssoft_i2c$I2C_MasterSendData$179 ==.
;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
	ld	a, (0x05, sp)
	push	a
	Ssoft_i2c$I2C_MasterSendData$180 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterSendData$181 ==.
	Ssoft_i2c$I2C_MasterSendData$182 ==.
;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00117$
	Ssoft_i2c$I2C_MasterSendData$183 ==.
;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
	clr	a
	jra	00111$
	Ssoft_i2c$I2C_MasterSendData$184 ==.
;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
00117$:
	clr	(0x01, sp)
	Ssoft_i2c$I2C_MasterSendData$185 ==.
00109$:
	ld	a, (0x01, sp)
	cp	a, (0x08, sp)
	jrnc	00107$
	Ssoft_i2c$I2C_MasterSendData$186 ==.
	Ssoft_i2c$I2C_MasterSendData$187 ==.
;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	addw	x, (0x06, sp)
	ld	a, (x)
	push	a
	Ssoft_i2c$I2C_MasterSendData$188 ==.
	call	_I2C_Send_Byte
	pop	a
	Ssoft_i2c$I2C_MasterSendData$189 ==.
	Ssoft_i2c$I2C_MasterSendData$190 ==.
;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00110$
	Ssoft_i2c$I2C_MasterSendData$191 ==.
;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
	clr	a
	jra	00111$
00110$:
	Ssoft_i2c$I2C_MasterSendData$192 ==.
	Ssoft_i2c$I2C_MasterSendData$193 ==.
;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
	inc	(0x01, sp)
	jra	00109$
00107$:
	Ssoft_i2c$I2C_MasterSendData$194 ==.
	Ssoft_i2c$I2C_MasterSendData$195 ==.
;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
	call	_I2C_Stop
	Ssoft_i2c$I2C_MasterSendData$196 ==.
;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
	ld	a, #0x01
00111$:
	Ssoft_i2c$I2C_MasterSendData$197 ==.
;	Source/Driver/Src/soft_i2c.c: 247: }
	addw	sp, #1
	Ssoft_i2c$I2C_MasterSendData$198 ==.
	Ssoft_i2c$I2C_MasterSendData$199 ==.
	XG$I2C_MasterSendData$0$0 ==.
	ret
	Ssoft_i2c$I2C_MasterSendData$200 ==.
	Ssoft_i2c$delay_us$201 ==.
;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	Ssoft_i2c$delay_us$202 ==.
	Ssoft_i2c$delay_us$203 ==.
;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
	nop
	nop
	nop
	nop
	Ssoft_i2c$delay_us$204 ==.
;	Source/Driver/Src/soft_i2c.c: 254: }
	Ssoft_i2c$delay_us$205 ==.
	XG$delay_us$0$0 ==.
	ret
	Ssoft_i2c$delay_us$206 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
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
	.ascii "Source/Driver/Src/soft_i2c.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Init$0)
	.db	3
	.sleb128	25
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Init$2-Ssoft_i2c$I2C_Init$0
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Init$8-Ssoft_i2c$I2C_Init$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Init$14-Ssoft_i2c$I2C_Init$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Init$15-Ssoft_i2c$I2C_Init$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Init$16-Ssoft_i2c$I2C_Init$15
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Init$17-Ssoft_i2c$I2C_Init$16
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Start$19)
	.db	3
	.sleb128	35
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$21-Ssoft_i2c$I2C_Start$19
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$22-Ssoft_i2c$I2C_Start$21
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$23-Ssoft_i2c$I2C_Start$22
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$24-Ssoft_i2c$I2C_Start$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$25-Ssoft_i2c$I2C_Start$24
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$26-Ssoft_i2c$I2C_Start$25
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Start$27-Ssoft_i2c$I2C_Start$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Start$28-Ssoft_i2c$I2C_Start$27
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Stop$30)
	.db	3
	.sleb128	46
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$32-Ssoft_i2c$I2C_Stop$30
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$33-Ssoft_i2c$I2C_Stop$32
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$34-Ssoft_i2c$I2C_Stop$33
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$35-Ssoft_i2c$I2C_Stop$34
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$36-Ssoft_i2c$I2C_Stop$35
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$37-Ssoft_i2c$I2C_Stop$36
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Stop$38-Ssoft_i2c$I2C_Stop$37
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Stop$39-Ssoft_i2c$I2C_Stop$38
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$41)
	.db	3
	.sleb128	60
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$43-Ssoft_i2c$I2C_Wait_Ack$41
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$44-Ssoft_i2c$I2C_Wait_Ack$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$45-Ssoft_i2c$I2C_Wait_Ack$44
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$47-Ssoft_i2c$I2C_Wait_Ack$45
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$48-Ssoft_i2c$I2C_Wait_Ack$47
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$50-Ssoft_i2c$I2C_Wait_Ack$48
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$51-Ssoft_i2c$I2C_Wait_Ack$50
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$53-Ssoft_i2c$I2C_Wait_Ack$51
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$54-Ssoft_i2c$I2C_Wait_Ack$53
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Wait_Ack$55-Ssoft_i2c$I2C_Wait_Ack$54
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Wait_Ack$56-Ssoft_i2c$I2C_Wait_Ack$55
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Ack$58)
	.db	3
	.sleb128	80
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$60-Ssoft_i2c$I2C_Ack$58
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$61-Ssoft_i2c$I2C_Ack$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$62-Ssoft_i2c$I2C_Ack$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$63-Ssoft_i2c$I2C_Ack$62
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$64-Ssoft_i2c$I2C_Ack$63
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$65-Ssoft_i2c$I2C_Ack$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Ack$66-Ssoft_i2c$I2C_Ack$65
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Ack$67-Ssoft_i2c$I2C_Ack$66
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_NAck$69)
	.db	3
	.sleb128	91
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$71-Ssoft_i2c$I2C_NAck$69
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$72-Ssoft_i2c$I2C_NAck$71
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$73-Ssoft_i2c$I2C_NAck$72
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$74-Ssoft_i2c$I2C_NAck$73
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$75-Ssoft_i2c$I2C_NAck$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$76-Ssoft_i2c$I2C_NAck$75
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_NAck$77-Ssoft_i2c$I2C_NAck$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_NAck$78-Ssoft_i2c$I2C_NAck$77
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$80)
	.db	3
	.sleb128	105
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$83-Ssoft_i2c$I2C_Send_Byte$80
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$84-Ssoft_i2c$I2C_Send_Byte$83
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$86-Ssoft_i2c$I2C_Send_Byte$84
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$88-Ssoft_i2c$I2C_Send_Byte$86
	.db	3
	.sleb128	-3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$89-Ssoft_i2c$I2C_Send_Byte$88
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$90-Ssoft_i2c$I2C_Send_Byte$89
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$91-Ssoft_i2c$I2C_Send_Byte$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$92-Ssoft_i2c$I2C_Send_Byte$91
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$93-Ssoft_i2c$I2C_Send_Byte$92
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$94-Ssoft_i2c$I2C_Send_Byte$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$95-Ssoft_i2c$I2C_Send_Byte$94
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$96-Ssoft_i2c$I2C_Send_Byte$95
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$97-Ssoft_i2c$I2C_Send_Byte$96
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$98-Ssoft_i2c$I2C_Send_Byte$97
	.db	3
	.sleb128	-11
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Send_Byte$99-Ssoft_i2c$I2C_Send_Byte$98
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Send_Byte$101-Ssoft_i2c$I2C_Send_Byte$99
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$103)
	.db	3
	.sleb128	125
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$106-Ssoft_i2c$I2C_Read_Byte$103
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$107-Ssoft_i2c$I2C_Read_Byte$106
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$109-Ssoft_i2c$I2C_Read_Byte$107
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$110-Ssoft_i2c$I2C_Read_Byte$109
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$111-Ssoft_i2c$I2C_Read_Byte$110
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$112-Ssoft_i2c$I2C_Read_Byte$111
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$113-Ssoft_i2c$I2C_Read_Byte$112
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$114-Ssoft_i2c$I2C_Read_Byte$113
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$116-Ssoft_i2c$I2C_Read_Byte$114
	.db	3
	.sleb128	-8
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$117-Ssoft_i2c$I2C_Read_Byte$116
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$118-Ssoft_i2c$I2C_Read_Byte$117
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$119-Ssoft_i2c$I2C_Read_Byte$118
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$120-Ssoft_i2c$I2C_Read_Byte$119
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_Read_Byte$121-Ssoft_i2c$I2C_Read_Byte$120
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_Read_Byte$123-Ssoft_i2c$I2C_Read_Byte$121
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$125)
	.db	3
	.sleb128	191
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$128-Ssoft_i2c$I2C_MasterReceiveData$125
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$129-Ssoft_i2c$I2C_MasterReceiveData$128
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$132-Ssoft_i2c$I2C_MasterReceiveData$129
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$133-Ssoft_i2c$I2C_MasterReceiveData$132
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$134-Ssoft_i2c$I2C_MasterReceiveData$133
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$137-Ssoft_i2c$I2C_MasterReceiveData$134
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$138-Ssoft_i2c$I2C_MasterReceiveData$137
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$139-Ssoft_i2c$I2C_MasterReceiveData$138
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$140-Ssoft_i2c$I2C_MasterReceiveData$139
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$143-Ssoft_i2c$I2C_MasterReceiveData$140
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$144-Ssoft_i2c$I2C_MasterReceiveData$143
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$145-Ssoft_i2c$I2C_MasterReceiveData$144
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$148-Ssoft_i2c$I2C_MasterReceiveData$145
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$150-Ssoft_i2c$I2C_MasterReceiveData$148
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$151-Ssoft_i2c$I2C_MasterReceiveData$150
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$153-Ssoft_i2c$I2C_MasterReceiveData$151
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$158-Ssoft_i2c$I2C_MasterReceiveData$153
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$163-Ssoft_i2c$I2C_MasterReceiveData$158
	.db	3
	.sleb128	-5
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$164-Ssoft_i2c$I2C_MasterReceiveData$163
	.db	3
	.sleb128	8
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$165-Ssoft_i2c$I2C_MasterReceiveData$164
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterReceiveData$166-Ssoft_i2c$I2C_MasterReceiveData$165
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_MasterReceiveData$168-Ssoft_i2c$I2C_MasterReceiveData$166
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$170)
	.db	3
	.sleb128	227
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$173-Ssoft_i2c$I2C_MasterSendData$170
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$174-Ssoft_i2c$I2C_MasterSendData$173
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$177-Ssoft_i2c$I2C_MasterSendData$174
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$178-Ssoft_i2c$I2C_MasterSendData$177
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$179-Ssoft_i2c$I2C_MasterSendData$178
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$182-Ssoft_i2c$I2C_MasterSendData$179
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$183-Ssoft_i2c$I2C_MasterSendData$182
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$184-Ssoft_i2c$I2C_MasterSendData$183
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$187-Ssoft_i2c$I2C_MasterSendData$184
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$190-Ssoft_i2c$I2C_MasterSendData$187
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$191-Ssoft_i2c$I2C_MasterSendData$190
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$193-Ssoft_i2c$I2C_MasterSendData$191
	.db	3
	.sleb128	-4
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$195-Ssoft_i2c$I2C_MasterSendData$193
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$196-Ssoft_i2c$I2C_MasterSendData$195
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$I2C_MasterSendData$197-Ssoft_i2c$I2C_MasterSendData$196
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$I2C_MasterSendData$199-Ssoft_i2c$I2C_MasterSendData$197
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Ssoft_i2c$delay_us$201)
	.db	3
	.sleb128	250
	.db	1
	.db	9
	.dw	Ssoft_i2c$delay_us$203-Ssoft_i2c$delay_us$201
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Ssoft_i2c$delay_us$204-Ssoft_i2c$delay_us$203
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Ssoft_i2c$delay_us$205-Ssoft_i2c$delay_us$204
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Ssoft_i2c$delay_us$202)
	.dw	0,(Ssoft_i2c$delay_us$206)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$200)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$169)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$124)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$102)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_NAck$70)
	.dw	0,(Ssoft_i2c$I2C_NAck$79)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Ack$59)
	.dw	0,(Ssoft_i2c$I2C_Ack$68)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$57)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Stop$31)
	.dw	0,(Ssoft_i2c$I2C_Stop$40)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Start$20)
	.dw	0,(Ssoft_i2c$I2C_Start$29)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Ssoft_i2c$I2C_Init$13)
	.dw	0,(Ssoft_i2c$I2C_Init$18)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_Init$12)
	.dw	0,(Ssoft_i2c$I2C_Init$13)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Ssoft_i2c$I2C_Init$11)
	.dw	0,(Ssoft_i2c$I2C_Init$12)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_Init$10)
	.dw	0,(Ssoft_i2c$I2C_Init$11)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_Init$9)
	.dw	0,(Ssoft_i2c$I2C_Init$10)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_Init$7)
	.dw	0,(Ssoft_i2c$I2C_Init$9)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Ssoft_i2c$I2C_Init$6)
	.dw	0,(Ssoft_i2c$I2C_Init$7)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Ssoft_i2c$I2C_Init$5)
	.dw	0,(Ssoft_i2c$I2C_Init$6)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Ssoft_i2c$I2C_Init$4)
	.dw	0,(Ssoft_i2c$I2C_Init$5)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Ssoft_i2c$I2C_Init$3)
	.dw	0,(Ssoft_i2c$I2C_Init$4)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Ssoft_i2c$I2C_Init$1)
	.dw	0,(Ssoft_i2c$I2C_Init$3)
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
	.uleb128	0
	.uleb128	0
	.uleb128	7
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
	.uleb128	4
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
	.uleb128	6
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	12
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
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
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
	.uleb128	3
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
	.ascii "Source/Driver/Src/soft_i2c.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "I2C_Init"
	.db	0
	.dw	0,(_I2C_Init)
	.dw	0,(XG$I2C_Init$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+548)
	.uleb128	2
	.ascii "I2C_Start"
	.db	0
	.dw	0,(_I2C_Start)
	.dw	0,(XG$I2C_Start$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+528)
	.uleb128	2
	.ascii "I2C_Stop"
	.db	0
	.dw	0,(_I2C_Stop)
	.dw	0,(XG$I2C_Stop$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+508)
	.uleb128	3
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	4
	.dw	0,231
	.ascii "I2C_Wait_Ack"
	.db	0
	.dw	0,(_I2C_Wait_Ack)
	.dw	0,(XG$I2C_Wait_Ack$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+488)
	.dw	0,142
	.uleb128	5
	.dw	0,213
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$46)
	.uleb128	6
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$49)
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$52)
	.uleb128	0
	.uleb128	7
	.db	1
	.db	81
	.ascii "ucErrTime"
	.db	0
	.dw	0,142
	.uleb128	0
	.uleb128	2
	.ascii "I2C_Ack"
	.db	0
	.dw	0,(_I2C_Ack)
	.dw	0,(XG$I2C_Ack$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+468)
	.uleb128	2
	.ascii "I2C_NAck"
	.db	0
	.dw	0,(_I2C_NAck)
	.dw	0,(XG$I2C_NAck$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+448)
	.uleb128	8
	.dw	0,340
	.ascii "I2C_Send_Byte"
	.db	0
	.dw	0,(_I2C_Send_Byte)
	.dw	0,(XG$I2C_Send_Byte$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+404)
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "txd"
	.db	0
	.dw	0,142
	.uleb128	6
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$85)
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$87)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "t"
	.db	0
	.dw	0,142
	.uleb128	0
	.uleb128	4
	.dw	0,424
	.ascii "I2C_Read_Byte"
	.db	0
	.dw	0,(_I2C_Read_Byte)
	.dw	0,(XG$I2C_Read_Byte$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+360)
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "ack"
	.db	0
	.dw	0,142
	.uleb128	6
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$108)
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$115)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,142
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "receive"
	.db	0
	.dw	0,142
	.uleb128	0
	.uleb128	4
	.dw	0,564
	.ascii "I2C_MasterReceiveData"
	.db	0
	.dw	0,(_I2C_MasterReceiveData)
	.dw	0,(XG$I2C_MasterReceiveData$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+136)
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "devAddr"
	.db	0
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	3
	.ascii "regAddr"
	.db	0
	.dw	0,142
	.uleb128	10
	.db	2
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	4
	.ascii "bufAddr"
	.db	0
	.dw	0,500
	.uleb128	9
	.db	2
	.db	145
	.sleb128	6
	.ascii "dataLen"
	.db	0
	.dw	0,142
	.uleb128	11
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$146)
	.uleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$147)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$149)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,142
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.dw	0,699
	.ascii "I2C_MasterSendData"
	.db	0
	.dw	0,(_I2C_MasterSendData)
	.dw	0,(XG$I2C_MasterSendData$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	2
	.ascii "devAddr"
	.db	0
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	3
	.ascii "regAddr"
	.db	0
	.dw	0,142
	.uleb128	9
	.db	2
	.db	145
	.sleb128	4
	.ascii "bufAddr"
	.db	0
	.dw	0,500
	.uleb128	9
	.db	2
	.db	145
	.sleb128	6
	.ascii "dataLen"
	.db	0
	.dw	0,142
	.uleb128	12
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$185)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$194)
	.uleb128	6
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$186)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$192)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-1
	.ascii "i"
	.db	0
	.dw	0,142
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.ascii "delay_us"
	.db	0
	.dw	0,(_delay_us)
	.dw	0,(XG$delay_us$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
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
	.dw	0,72
	.ascii "I2C_Init"
	.db	0
	.dw	0,95
	.ascii "I2C_Start"
	.db	0
	.dw	0,119
	.ascii "I2C_Stop"
	.db	0
	.dw	0,159
	.ascii "I2C_Wait_Ack"
	.db	0
	.dw	0,231
	.ascii "I2C_Ack"
	.db	0
	.dw	0,253
	.ascii "I2C_NAck"
	.db	0
	.dw	0,276
	.ascii "I2C_Send_Byte"
	.db	0
	.dw	0,340
	.ascii "I2C_Read_Byte"
	.db	0
	.dw	0,424
	.ascii "I2C_MasterReceiveData"
	.db	0
	.dw	0,564
	.ascii "I2C_MasterSendData"
	.db	0
	.dw	0,699
	.ascii "delay_us"
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
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Ssoft_i2c$delay_us$202)	;initial loc
	.dw	0,Ssoft_i2c$delay_us$206-Ssoft_i2c$delay_us$202
	.db	1
	.dw	0,(Ssoft_i2c$delay_us$202)
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
	.dw	0,75
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)	;initial loc
	.dw	0,Ssoft_i2c$I2C_MasterSendData$200-Ssoft_i2c$I2C_MasterSendData$171
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
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
	.dw	0,138
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)	;initial loc
	.dw	0,Ssoft_i2c$I2C_MasterReceiveData$169-Ssoft_i2c$I2C_MasterReceiveData$126
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
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
	.dw	0,33
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Read_Byte$124-Ssoft_i2c$I2C_Read_Byte$104
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
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
Ldebug_CIE4_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Send_Byte$102-Ssoft_i2c$I2C_Send_Byte$81
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
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
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Ssoft_i2c$I2C_NAck$70)	;initial loc
	.dw	0,Ssoft_i2c$I2C_NAck$79-Ssoft_i2c$I2C_NAck$70
	.db	1
	.dw	0,(Ssoft_i2c$I2C_NAck$70)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
Ldebug_CIE6_start:
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
Ldebug_CIE6_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE6_start-4)
	.dw	0,(Ssoft_i2c$I2C_Ack$59)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Ack$68-Ssoft_i2c$I2C_Ack$59
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Ack$59)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
Ldebug_CIE7_start:
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
Ldebug_CIE7_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE7_start-4)
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Wait_Ack$57-Ssoft_i2c$I2C_Wait_Ack$42
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
Ldebug_CIE8_start:
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
Ldebug_CIE8_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE8_start-4)
	.dw	0,(Ssoft_i2c$I2C_Stop$31)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Stop$40-Ssoft_i2c$I2C_Stop$31
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Stop$31)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
Ldebug_CIE9_start:
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
Ldebug_CIE9_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE9_start-4)
	.dw	0,(Ssoft_i2c$I2C_Start$20)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Start$29-Ssoft_i2c$I2C_Start$20
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Start$20)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
Ldebug_CIE10_start:
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
Ldebug_CIE10_end:
	.dw	0,89
	.dw	0,(Ldebug_CIE10_start-4)
	.dw	0,(Ssoft_i2c$I2C_Init$1)	;initial loc
	.dw	0,Ssoft_i2c$I2C_Init$18-Ssoft_i2c$I2C_Init$1
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$3)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$4)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$5)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$6)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$7)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$9)
	.db	14
	.uleb128	3
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$10)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$11)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$12)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Ssoft_i2c$I2C_Init$13)
	.db	14
	.uleb128	2
