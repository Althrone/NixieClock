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
;	Source/Driver/Src/soft_i2c.c: 26: void I2C_Init(void)
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
	push	#0x90
	push	#0x10
	push	#0x05
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
	push	#0x90
	push	#0x20
	push	#0x05
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
	bset	20485, #5
;	Source/Driver/Src/soft_i2c.c: 33: }
	ret
;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
	bset	20485, #5
;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
	bres	20485, #5
;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 44: }
	ret
;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
	bres	20485, #5
;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
	ld	a, 0x5005
	or	a, #0x20
	ld	0x5005, a
;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
;	Source/Driver/Src/soft_i2c.c: 56: }
	jp	_delay_us
;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
;	-----------------------------------------
;	 function I2C_Wait_Ack
;	-----------------------------------------
_I2C_Wait_Ack:
;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
	ld	a, 0x5005
	or	a, #0x20
	ld	0x5005, a
	nop
;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
	ld	a, 0x5005
	or	a, #0x10
	ld	0x5005, a
	nop
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
;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
	incw	x
;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
	ld	a, xl
	cp	a, #0xfa
	jrule	00103$
;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
	call	_I2C_Stop
;	Source/Driver/Src/soft_i2c.c: 73: return 1;
	ld	a, #0x01
	ret
00105$:
;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
	clr	a
;	Source/Driver/Src/soft_i2c.c: 78: }
	ret
;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
;	-----------------------------------------
;	 function I2C_Ack
;	-----------------------------------------
_I2C_Ack:
;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
	bres	20485, #5
;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 89: }
	ret
;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
;	-----------------------------------------
;	 function I2C_NAck
;	-----------------------------------------
_I2C_NAck:
;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
	bset	20485, #5
;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 100: }
	ret
;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
;	-----------------------------------------
;	 function I2C_Send_Byte
;	-----------------------------------------
_I2C_Send_Byte:
	push	a
;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
	clr	(0x01, sp)
00105$:
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
;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
	ld	a, 0x5005
;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
	tnzw	x
	jreq	00102$
;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
	or	a, #0x20
	ld	0x5005, a
	jra	00103$
00102$:
;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
	and	a, #0xdf
	ld	0x5005, a
00103$:
;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
	sll	(0x04, sp)
;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	cp	a, #0x08
	jrc	00105$
;	Source/Driver/Src/soft_i2c.c: 123: }
	pop	a
	ret
;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
;	-----------------------------------------
;	 function I2C_Read_Byte
;	-----------------------------------------
_I2C_Read_Byte:
	pushw	x
;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
	clr	(0x01, sp)
;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
	clr	(0x02, sp)
00107$:
;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
	bres	20485, #4
;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
	call	_delay_us
;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
	bset	20485, #4
;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
	sll	(0x01, sp)
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
;	Source/Driver/Src/soft_i2c.c: 137: nop();
	nop
;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
	inc	(0x02, sp)
	ld	a, (0x02, sp)
	cp	a, #0x08
	jrc	00107$
;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
	tnz	(0x05, sp)
	jrne	00105$
;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
	call	_I2C_NAck
	jra	00106$
00105$:
;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
	call	_I2C_Ack
00106$:
;	Source/Driver/Src/soft_i2c.c: 143: return receive;
	ld	a, (0x01, sp)
;	Source/Driver/Src/soft_i2c.c: 144: }
	popw	x
	ret
;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
;	-----------------------------------------
;	 function I2C_MasterReceiveData
;	-----------------------------------------
_I2C_MasterReceiveData:
	sub	sp, #3
;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
	call	_I2C_Start
;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
	ld	a, (0x06, sp)
	sll	a
	ld	(0x03, sp), a
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00102$
;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
	clr	a
	jra	00114$
00102$:
;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
	ld	a, (0x07, sp)
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00104$
;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
	clr	a
	jra	00114$
00104$:
;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
	call	_I2C_Start
;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
	ld	a, (0x03, sp)
	or	a, #0x01
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00121$
;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
	clr	a
	jra	00114$
;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
00121$:
	clr	(0x03, sp)
00112$:
	ld	a, (0x03, sp)
	cp	a, (0x0a, sp)
	jrnc	00110$
;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
	clrw	x
	ld	a, (0x0a, sp)
	ld	xl, a
	decw	x
	ldw	(0x01, sp), x
	clrw	y
	ld	a, (0x03, sp)
	ld	yl, a
;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
	clrw	x
	ld	a, (0x03, sp)
	ld	xl, a
	addw	x, (0x08, sp)
;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
	exgw	x, y
	cpw	x, (0x01, sp)
	exgw	x, y
	jrne	00108$
;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
	pushw	x
	push	#0x00
	call	_I2C_Read_Byte
	addw	sp, #1
	popw	x
	ld	(x), a
	jra	00113$
00108$:
;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
	pushw	x
	push	#0x01
	call	_I2C_Read_Byte
	addw	sp, #1
	popw	x
	ld	(x), a
00113$:
;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
	inc	(0x03, sp)
	jra	00112$
00110$:
;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
	call	_I2C_Stop
;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
	ld	a, #0x01
00114$:
;	Source/Driver/Src/soft_i2c.c: 218: }
	addw	sp, #3
	ret
;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
;	-----------------------------------------
;	 function I2C_MasterSendData
;	-----------------------------------------
_I2C_MasterSendData:
	push	a
;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
	call	_I2C_Start
;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
	ld	a, (0x04, sp)
	sll	a
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00102$
;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
	clr	a
	jra	00111$
00102$:
;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
	ld	a, (0x05, sp)
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00117$
;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
	clr	a
	jra	00111$
;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
00117$:
	clr	(0x01, sp)
00109$:
	ld	a, (0x01, sp)
	cp	a, (0x08, sp)
	jrnc	00107$
;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
	addw	x, (0x06, sp)
	ld	a, (x)
	push	a
	call	_I2C_Send_Byte
	pop	a
;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
	call	_I2C_Wait_Ack
	tnz	a
	jreq	00110$
;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
	clr	a
	jra	00111$
00110$:
;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
	inc	(0x01, sp)
	jra	00109$
00107$:
;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
	call	_I2C_Stop
;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
	ld	a, #0x01
00111$:
;	Source/Driver/Src/soft_i2c.c: 247: }
	addw	sp, #1
	ret
;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
	nop
	nop
	nop
	nop
;	Source/Driver/Src/soft_i2c.c: 254: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
