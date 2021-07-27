                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module soft_i2c
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_Init
                                     12 	.globl _I2C_Init
                                     13 	.globl _I2C_Start
                                     14 	.globl _I2C_Stop
                                     15 	.globl _I2C_Wait_Ack
                                     16 	.globl _I2C_Ack
                                     17 	.globl _I2C_NAck
                                     18 	.globl _I2C_Send_Byte
                                     19 	.globl _I2C_Read_Byte
                                     20 	.globl _I2C_MasterReceiveData
                                     21 	.globl _I2C_MasterSendData
                                     22 	.globl _delay_us
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
                                     48 	.area GSINIT
                                     49 	.area GSFINAL
                                     50 	.area GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area HOME
                                     55 	.area HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area CODE
                                     60 ;	Source/Driver/Src/soft_i2c.c: 26: void I2C_Init(void)
                                     61 ;	-----------------------------------------
                                     62 ;	 function I2C_Init
                                     63 ;	-----------------------------------------
      008A6A                         64 _I2C_Init:
                                     65 ;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A6A 4B 90            [ 1]   66 	push	#0x90
      008A6C 4B 10            [ 1]   67 	push	#0x10
      008A6E 4B 05            [ 1]   68 	push	#0x05
      008A70 4B 50            [ 1]   69 	push	#0x50
      008A72 CD 82 2F         [ 4]   70 	call	_GPIO_Init
      008A75 5B 04            [ 2]   71 	addw	sp, #4
                                     72 ;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A77 4B 90            [ 1]   73 	push	#0x90
      008A79 4B 20            [ 1]   74 	push	#0x20
      008A7B 4B 05            [ 1]   75 	push	#0x05
      008A7D 4B 50            [ 1]   76 	push	#0x50
      008A7F CD 82 2F         [ 4]   77 	call	_GPIO_Init
      008A82 5B 04            [ 2]   78 	addw	sp, #4
                                     79 ;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
      008A84 72 18 50 05      [ 1]   80 	bset	20485, #4
                                     81 ;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
      008A88 72 1A 50 05      [ 1]   82 	bset	20485, #5
                                     83 ;	Source/Driver/Src/soft_i2c.c: 33: }
      008A8C 81               [ 4]   84 	ret
                                     85 ;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
                                     86 ;	-----------------------------------------
                                     87 ;	 function I2C_Start
                                     88 ;	-----------------------------------------
      008A8D                         89 _I2C_Start:
                                     90 ;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
      008A8D 72 1A 50 05      [ 1]   91 	bset	20485, #5
                                     92 ;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
      008A91 72 18 50 05      [ 1]   93 	bset	20485, #4
                                     94 ;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
      008A95 CD 8C 6B         [ 4]   95 	call	_delay_us
                                     96 ;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
      008A98 72 1B 50 05      [ 1]   97 	bres	20485, #5
                                     98 ;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
      008A9C CD 8C 6B         [ 4]   99 	call	_delay_us
                                    100 ;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
      008A9F 72 19 50 05      [ 1]  101 	bres	20485, #4
                                    102 ;	Source/Driver/Src/soft_i2c.c: 44: }
      008AA3 81               [ 4]  103 	ret
                                    104 ;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
                                    105 ;	-----------------------------------------
                                    106 ;	 function I2C_Stop
                                    107 ;	-----------------------------------------
      008AA4                        108 _I2C_Stop:
                                    109 ;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
      008AA4 72 19 50 05      [ 1]  110 	bres	20485, #4
                                    111 ;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
      008AA8 72 1B 50 05      [ 1]  112 	bres	20485, #5
                                    113 ;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
      008AAC CD 8C 6B         [ 4]  114 	call	_delay_us
                                    115 ;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
      008AAF 72 18 50 05      [ 1]  116 	bset	20485, #4
                                    117 ;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
      008AB3 C6 50 05         [ 1]  118 	ld	a, 0x5005
      008AB6 AA 20            [ 1]  119 	or	a, #0x20
      008AB8 C7 50 05         [ 1]  120 	ld	0x5005, a
                                    121 ;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
                                    122 ;	Source/Driver/Src/soft_i2c.c: 56: }
      008ABB CC 8C 6B         [ 2]  123 	jp	_delay_us
                                    124 ;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function I2C_Wait_Ack
                                    127 ;	-----------------------------------------
      008ABE                        128 _I2C_Wait_Ack:
                                    129 ;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
      008ABE C6 50 05         [ 1]  130 	ld	a, 0x5005
      008AC1 AA 20            [ 1]  131 	or	a, #0x20
      008AC3 C7 50 05         [ 1]  132 	ld	0x5005, a
      008AC6 9D               [ 1]  133 	nop
                                    134 ;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
      008AC7 C6 50 05         [ 1]  135 	ld	a, 0x5005
      008ACA AA 10            [ 1]  136 	or	a, #0x10
      008ACC C7 50 05         [ 1]  137 	ld	0x5005, a
      008ACF 9D               [ 1]  138 	nop
                                    139 ;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
      008AD0 5F               [ 1]  140 	clrw	x
      008AD1                        141 00103$:
      008AD1 C6 50 06         [ 1]  142 	ld	a, 0x5006
      008AD4 A4 20            [ 1]  143 	and	a, #0x20
      008AD6 4E               [ 1]  144 	swap	a
      008AD7 A4 0F            [ 1]  145 	and	a, #0x0f
      008AD9 44               [ 1]  146 	srl	a
      008ADA 4D               [ 1]  147 	tnz	a
      008ADB 27 0C            [ 1]  148 	jreq	00105$
                                    149 ;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
      008ADD 5C               [ 1]  150 	incw	x
                                    151 ;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
      008ADE 9F               [ 1]  152 	ld	a, xl
      008ADF A1 FA            [ 1]  153 	cp	a, #0xfa
      008AE1 23 EE            [ 2]  154 	jrule	00103$
                                    155 ;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
      008AE3 CD 8A A4         [ 4]  156 	call	_I2C_Stop
                                    157 ;	Source/Driver/Src/soft_i2c.c: 73: return 1;
      008AE6 A6 01            [ 1]  158 	ld	a, #0x01
      008AE8 81               [ 4]  159 	ret
      008AE9                        160 00105$:
                                    161 ;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
      008AE9 72 19 50 05      [ 1]  162 	bres	20485, #4
                                    163 ;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
      008AED 4F               [ 1]  164 	clr	a
                                    165 ;	Source/Driver/Src/soft_i2c.c: 78: }
      008AEE 81               [ 4]  166 	ret
                                    167 ;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
                                    168 ;	-----------------------------------------
                                    169 ;	 function I2C_Ack
                                    170 ;	-----------------------------------------
      008AEF                        171 _I2C_Ack:
                                    172 ;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
      008AEF 72 19 50 05      [ 1]  173 	bres	20485, #4
                                    174 ;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
      008AF3 72 1B 50 05      [ 1]  175 	bres	20485, #5
                                    176 ;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
      008AF7 CD 8C 6B         [ 4]  177 	call	_delay_us
                                    178 ;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
      008AFA 72 18 50 05      [ 1]  179 	bset	20485, #4
                                    180 ;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
      008AFE CD 8C 6B         [ 4]  181 	call	_delay_us
                                    182 ;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
      008B01 72 19 50 05      [ 1]  183 	bres	20485, #4
                                    184 ;	Source/Driver/Src/soft_i2c.c: 89: }
      008B05 81               [ 4]  185 	ret
                                    186 ;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
                                    187 ;	-----------------------------------------
                                    188 ;	 function I2C_NAck
                                    189 ;	-----------------------------------------
      008B06                        190 _I2C_NAck:
                                    191 ;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
      008B06 72 19 50 05      [ 1]  192 	bres	20485, #4
                                    193 ;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
      008B0A 72 1A 50 05      [ 1]  194 	bset	20485, #5
                                    195 ;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
      008B0E CD 8C 6B         [ 4]  196 	call	_delay_us
                                    197 ;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
      008B11 72 18 50 05      [ 1]  198 	bset	20485, #4
                                    199 ;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
      008B15 CD 8C 6B         [ 4]  200 	call	_delay_us
                                    201 ;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
      008B18 72 19 50 05      [ 1]  202 	bres	20485, #4
                                    203 ;	Source/Driver/Src/soft_i2c.c: 100: }
      008B1C 81               [ 4]  204 	ret
                                    205 ;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
                                    206 ;	-----------------------------------------
                                    207 ;	 function I2C_Send_Byte
                                    208 ;	-----------------------------------------
      008B1D                        209 _I2C_Send_Byte:
      008B1D 88               [ 1]  210 	push	a
                                    211 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008B1E 72 19 50 05      [ 1]  212 	bres	20485, #4
                                    213 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B22 0F 01            [ 1]  214 	clr	(0x01, sp)
      008B24                        215 00105$:
                                    216 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B24 7B 04            [ 1]  217 	ld	a, (0x04, sp)
      008B26 A4 80            [ 1]  218 	and	a, #0x80
      008B28 97               [ 1]  219 	ld	xl, a
      008B29 4F               [ 1]  220 	clr	a
      008B2A 95               [ 1]  221 	ld	xh, a
      008B2B 4F               [ 1]  222 	clr	a
      008B2C 5D               [ 2]  223 	tnzw	x
      008B2D 2A 01            [ 1]  224 	jrpl	00120$
      008B2F 4A               [ 1]  225 	dec	a
      008B30                        226 00120$:
      008B30 01               [ 1]  227 	rrwa	x
      008B31 48               [ 1]  228 	sll	a
      008B32 59               [ 2]  229 	rlcw	x
                                    230 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008B33 C6 50 05         [ 1]  231 	ld	a, 0x5005
                                    232 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B36 5D               [ 2]  233 	tnzw	x
      008B37 27 07            [ 1]  234 	jreq	00102$
                                    235 ;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
      008B39 AA 20            [ 1]  236 	or	a, #0x20
      008B3B C7 50 05         [ 1]  237 	ld	0x5005, a
      008B3E 20 05            [ 2]  238 	jra	00103$
      008B40                        239 00102$:
                                    240 ;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
      008B40 A4 DF            [ 1]  241 	and	a, #0xdf
      008B42 C7 50 05         [ 1]  242 	ld	0x5005, a
      008B45                        243 00103$:
                                    244 ;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
      008B45 08 04            [ 1]  245 	sll	(0x04, sp)
                                    246 ;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
      008B47 CD 8C 6B         [ 4]  247 	call	_delay_us
                                    248 ;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
      008B4A 72 18 50 05      [ 1]  249 	bset	20485, #4
                                    250 ;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
      008B4E CD 8C 6B         [ 4]  251 	call	_delay_us
                                    252 ;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
      008B51 72 19 50 05      [ 1]  253 	bres	20485, #4
                                    254 ;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
      008B55 CD 8C 6B         [ 4]  255 	call	_delay_us
                                    256 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B58 0C 01            [ 1]  257 	inc	(0x01, sp)
      008B5A 7B 01            [ 1]  258 	ld	a, (0x01, sp)
      008B5C A1 08            [ 1]  259 	cp	a, #0x08
      008B5E 25 C4            [ 1]  260 	jrc	00105$
                                    261 ;	Source/Driver/Src/soft_i2c.c: 123: }
      008B60 84               [ 1]  262 	pop	a
      008B61 81               [ 4]  263 	ret
                                    264 ;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
                                    265 ;	-----------------------------------------
                                    266 ;	 function I2C_Read_Byte
                                    267 ;	-----------------------------------------
      008B62                        268 _I2C_Read_Byte:
      008B62 89               [ 2]  269 	pushw	x
                                    270 ;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
      008B63 0F 01            [ 1]  271 	clr	(0x01, sp)
                                    272 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B65 0F 02            [ 1]  273 	clr	(0x02, sp)
      008B67                        274 00107$:
                                    275 ;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
      008B67 72 19 50 05      [ 1]  276 	bres	20485, #4
                                    277 ;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
      008B6B CD 8C 6B         [ 4]  278 	call	_delay_us
                                    279 ;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
      008B6E 72 18 50 05      [ 1]  280 	bset	20485, #4
                                    281 ;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
      008B72 08 01            [ 1]  282 	sll	(0x01, sp)
                                    283 ;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
      008B74 C6 50 06         [ 1]  284 	ld	a, 0x5006
      008B77 A4 20            [ 1]  285 	and	a, #0x20
      008B79 4E               [ 1]  286 	swap	a
      008B7A A4 0F            [ 1]  287 	and	a, #0x0f
      008B7C 44               [ 1]  288 	srl	a
      008B7D 4D               [ 1]  289 	tnz	a
      008B7E 27 02            [ 1]  290 	jreq	00102$
      008B80 0C 01            [ 1]  291 	inc	(0x01, sp)
      008B82                        292 00102$:
                                    293 ;	Source/Driver/Src/soft_i2c.c: 137: nop();
      008B82 9D               [ 1]  294 	nop
                                    295 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B83 0C 02            [ 1]  296 	inc	(0x02, sp)
      008B85 7B 02            [ 1]  297 	ld	a, (0x02, sp)
      008B87 A1 08            [ 1]  298 	cp	a, #0x08
      008B89 25 DC            [ 1]  299 	jrc	00107$
                                    300 ;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
      008B8B 0D 05            [ 1]  301 	tnz	(0x05, sp)
      008B8D 26 05            [ 1]  302 	jrne	00105$
                                    303 ;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
      008B8F CD 8B 06         [ 4]  304 	call	_I2C_NAck
      008B92 20 03            [ 2]  305 	jra	00106$
      008B94                        306 00105$:
                                    307 ;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
      008B94 CD 8A EF         [ 4]  308 	call	_I2C_Ack
      008B97                        309 00106$:
                                    310 ;	Source/Driver/Src/soft_i2c.c: 143: return receive;
      008B97 7B 01            [ 1]  311 	ld	a, (0x01, sp)
                                    312 ;	Source/Driver/Src/soft_i2c.c: 144: }
      008B99 85               [ 2]  313 	popw	x
      008B9A 81               [ 4]  314 	ret
                                    315 ;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    316 ;	-----------------------------------------
                                    317 ;	 function I2C_MasterReceiveData
                                    318 ;	-----------------------------------------
      008B9B                        319 _I2C_MasterReceiveData:
      008B9B 52 03            [ 2]  320 	sub	sp, #3
                                    321 ;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
      008B9D CD 8A 8D         [ 4]  322 	call	_I2C_Start
                                    323 ;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      008BA0 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      008BA2 48               [ 1]  325 	sll	a
      008BA3 6B 03            [ 1]  326 	ld	(0x03, sp), a
      008BA5 88               [ 1]  327 	push	a
      008BA6 CD 8B 1D         [ 4]  328 	call	_I2C_Send_Byte
      008BA9 84               [ 1]  329 	pop	a
                                    330 ;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
      008BAA CD 8A BE         [ 4]  331 	call	_I2C_Wait_Ack
      008BAD 4D               [ 1]  332 	tnz	a
      008BAE 27 03            [ 1]  333 	jreq	00102$
                                    334 ;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
      008BB0 4F               [ 1]  335 	clr	a
      008BB1 20 66            [ 2]  336 	jra	00114$
      008BB3                        337 00102$:
                                    338 ;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
      008BB3 7B 07            [ 1]  339 	ld	a, (0x07, sp)
      008BB5 88               [ 1]  340 	push	a
      008BB6 CD 8B 1D         [ 4]  341 	call	_I2C_Send_Byte
      008BB9 84               [ 1]  342 	pop	a
                                    343 ;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
      008BBA CD 8A BE         [ 4]  344 	call	_I2C_Wait_Ack
      008BBD 4D               [ 1]  345 	tnz	a
      008BBE 27 03            [ 1]  346 	jreq	00104$
                                    347 ;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
      008BC0 4F               [ 1]  348 	clr	a
      008BC1 20 56            [ 2]  349 	jra	00114$
      008BC3                        350 00104$:
                                    351 ;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
      008BC3 CD 8A 8D         [ 4]  352 	call	_I2C_Start
                                    353 ;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
      008BC6 7B 03            [ 1]  354 	ld	a, (0x03, sp)
      008BC8 AA 01            [ 1]  355 	or	a, #0x01
      008BCA 88               [ 1]  356 	push	a
      008BCB CD 8B 1D         [ 4]  357 	call	_I2C_Send_Byte
      008BCE 84               [ 1]  358 	pop	a
                                    359 ;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
      008BCF CD 8A BE         [ 4]  360 	call	_I2C_Wait_Ack
      008BD2 4D               [ 1]  361 	tnz	a
      008BD3 27 03            [ 1]  362 	jreq	00121$
                                    363 ;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
      008BD5 4F               [ 1]  364 	clr	a
      008BD6 20 41            [ 2]  365 	jra	00114$
                                    366 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008BD8                        367 00121$:
      008BD8 0F 03            [ 1]  368 	clr	(0x03, sp)
      008BDA                        369 00112$:
      008BDA 7B 03            [ 1]  370 	ld	a, (0x03, sp)
      008BDC 11 0A            [ 1]  371 	cp	a, (0x0a, sp)
      008BDE 24 34            [ 1]  372 	jrnc	00110$
                                    373 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008BE0 5F               [ 1]  374 	clrw	x
      008BE1 7B 0A            [ 1]  375 	ld	a, (0x0a, sp)
      008BE3 97               [ 1]  376 	ld	xl, a
      008BE4 5A               [ 2]  377 	decw	x
      008BE5 1F 01            [ 2]  378 	ldw	(0x01, sp), x
      008BE7 90 5F            [ 1]  379 	clrw	y
      008BE9 7B 03            [ 1]  380 	ld	a, (0x03, sp)
      008BEB 90 97            [ 1]  381 	ld	yl, a
                                    382 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008BED 5F               [ 1]  383 	clrw	x
      008BEE 7B 03            [ 1]  384 	ld	a, (0x03, sp)
      008BF0 97               [ 1]  385 	ld	xl, a
      008BF1 72 FB 08         [ 2]  386 	addw	x, (0x08, sp)
                                    387 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008BF4 51               [ 1]  388 	exgw	x, y
      008BF5 13 01            [ 2]  389 	cpw	x, (0x01, sp)
      008BF7 51               [ 1]  390 	exgw	x, y
      008BF8 26 0C            [ 1]  391 	jrne	00108$
                                    392 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008BFA 89               [ 2]  393 	pushw	x
      008BFB 4B 00            [ 1]  394 	push	#0x00
      008BFD CD 8B 62         [ 4]  395 	call	_I2C_Read_Byte
      008C00 5B 01            [ 2]  396 	addw	sp, #1
      008C02 85               [ 2]  397 	popw	x
      008C03 F7               [ 1]  398 	ld	(x), a
      008C04 20 0A            [ 2]  399 	jra	00113$
      008C06                        400 00108$:
                                    401 ;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
      008C06 89               [ 2]  402 	pushw	x
      008C07 4B 01            [ 1]  403 	push	#0x01
      008C09 CD 8B 62         [ 4]  404 	call	_I2C_Read_Byte
      008C0C 5B 01            [ 2]  405 	addw	sp, #1
      008C0E 85               [ 2]  406 	popw	x
      008C0F F7               [ 1]  407 	ld	(x), a
      008C10                        408 00113$:
                                    409 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008C10 0C 03            [ 1]  410 	inc	(0x03, sp)
      008C12 20 C6            [ 2]  411 	jra	00112$
      008C14                        412 00110$:
                                    413 ;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
      008C14 CD 8A A4         [ 4]  414 	call	_I2C_Stop
                                    415 ;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
      008C17 A6 01            [ 1]  416 	ld	a, #0x01
      008C19                        417 00114$:
                                    418 ;	Source/Driver/Src/soft_i2c.c: 218: }
      008C19 5B 03            [ 2]  419 	addw	sp, #3
      008C1B 81               [ 4]  420 	ret
                                    421 ;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    422 ;	-----------------------------------------
                                    423 ;	 function I2C_MasterSendData
                                    424 ;	-----------------------------------------
      008C1C                        425 _I2C_MasterSendData:
      008C1C 88               [ 1]  426 	push	a
                                    427 ;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
      008C1D CD 8A 8D         [ 4]  428 	call	_I2C_Start
                                    429 ;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      008C20 7B 04            [ 1]  430 	ld	a, (0x04, sp)
      008C22 48               [ 1]  431 	sll	a
      008C23 88               [ 1]  432 	push	a
      008C24 CD 8B 1D         [ 4]  433 	call	_I2C_Send_Byte
      008C27 84               [ 1]  434 	pop	a
                                    435 ;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
      008C28 CD 8A BE         [ 4]  436 	call	_I2C_Wait_Ack
      008C2B 4D               [ 1]  437 	tnz	a
      008C2C 27 03            [ 1]  438 	jreq	00102$
                                    439 ;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
      008C2E 4F               [ 1]  440 	clr	a
      008C2F 20 37            [ 2]  441 	jra	00111$
      008C31                        442 00102$:
                                    443 ;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
      008C31 7B 05            [ 1]  444 	ld	a, (0x05, sp)
      008C33 88               [ 1]  445 	push	a
      008C34 CD 8B 1D         [ 4]  446 	call	_I2C_Send_Byte
      008C37 84               [ 1]  447 	pop	a
                                    448 ;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
      008C38 CD 8A BE         [ 4]  449 	call	_I2C_Wait_Ack
      008C3B 4D               [ 1]  450 	tnz	a
      008C3C 27 03            [ 1]  451 	jreq	00117$
                                    452 ;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
      008C3E 4F               [ 1]  453 	clr	a
      008C3F 20 27            [ 2]  454 	jra	00111$
                                    455 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C41                        456 00117$:
      008C41 0F 01            [ 1]  457 	clr	(0x01, sp)
      008C43                        458 00109$:
      008C43 7B 01            [ 1]  459 	ld	a, (0x01, sp)
      008C45 11 08            [ 1]  460 	cp	a, (0x08, sp)
      008C47 24 1A            [ 1]  461 	jrnc	00107$
                                    462 ;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
      008C49 5F               [ 1]  463 	clrw	x
      008C4A 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      008C4C 97               [ 1]  465 	ld	xl, a
      008C4D 72 FB 06         [ 2]  466 	addw	x, (0x06, sp)
      008C50 F6               [ 1]  467 	ld	a, (x)
      008C51 88               [ 1]  468 	push	a
      008C52 CD 8B 1D         [ 4]  469 	call	_I2C_Send_Byte
      008C55 84               [ 1]  470 	pop	a
                                    471 ;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
      008C56 CD 8A BE         [ 4]  472 	call	_I2C_Wait_Ack
      008C59 4D               [ 1]  473 	tnz	a
      008C5A 27 03            [ 1]  474 	jreq	00110$
                                    475 ;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
      008C5C 4F               [ 1]  476 	clr	a
      008C5D 20 09            [ 2]  477 	jra	00111$
      008C5F                        478 00110$:
                                    479 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C5F 0C 01            [ 1]  480 	inc	(0x01, sp)
      008C61 20 E0            [ 2]  481 	jra	00109$
      008C63                        482 00107$:
                                    483 ;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
      008C63 CD 8A A4         [ 4]  484 	call	_I2C_Stop
                                    485 ;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
      008C66 A6 01            [ 1]  486 	ld	a, #0x01
      008C68                        487 00111$:
                                    488 ;	Source/Driver/Src/soft_i2c.c: 247: }
      008C68 5B 01            [ 2]  489 	addw	sp, #1
      008C6A 81               [ 4]  490 	ret
                                    491 ;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
                                    492 ;	-----------------------------------------
                                    493 ;	 function delay_us
                                    494 ;	-----------------------------------------
      008C6B                        495 _delay_us:
                                    496 ;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
      008C6B 9D               [ 1]  497 	nop
      008C6C 9D               [ 1]  498 	nop
      008C6D 9D               [ 1]  499 	nop
      008C6E 9D               [ 1]  500 	nop
                                    501 ;	Source/Driver/Src/soft_i2c.c: 254: }
      008C6F 81               [ 4]  502 	ret
                                    503 	.area CODE
                                    504 	.area CONST
                                    505 	.area INITIALIZER
                                    506 	.area CABS (ABS)
