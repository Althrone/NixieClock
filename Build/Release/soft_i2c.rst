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
      008A53                         64 _I2C_Init:
                                     65 ;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A53 4B 90            [ 1]   66 	push	#0x90
      008A55 4B 10            [ 1]   67 	push	#0x10
      008A57 4B 05            [ 1]   68 	push	#0x05
      008A59 4B 50            [ 1]   69 	push	#0x50
      008A5B CD 82 18         [ 4]   70 	call	_GPIO_Init
      008A5E 5B 04            [ 2]   71 	addw	sp, #4
                                     72 ;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A60 4B 90            [ 1]   73 	push	#0x90
      008A62 4B 20            [ 1]   74 	push	#0x20
      008A64 4B 05            [ 1]   75 	push	#0x05
      008A66 4B 50            [ 1]   76 	push	#0x50
      008A68 CD 82 18         [ 4]   77 	call	_GPIO_Init
      008A6B 5B 04            [ 2]   78 	addw	sp, #4
                                     79 ;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
      008A6D 72 18 50 05      [ 1]   80 	bset	20485, #4
                                     81 ;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
      008A71 72 1A 50 05      [ 1]   82 	bset	20485, #5
                                     83 ;	Source/Driver/Src/soft_i2c.c: 33: }
      008A75 81               [ 4]   84 	ret
                                     85 ;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
                                     86 ;	-----------------------------------------
                                     87 ;	 function I2C_Start
                                     88 ;	-----------------------------------------
      008A76                         89 _I2C_Start:
                                     90 ;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
      008A76 72 1A 50 05      [ 1]   91 	bset	20485, #5
                                     92 ;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
      008A7A 72 18 50 05      [ 1]   93 	bset	20485, #4
                                     94 ;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
      008A7E CD 8C 54         [ 4]   95 	call	_delay_us
                                     96 ;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
      008A81 72 1B 50 05      [ 1]   97 	bres	20485, #5
                                     98 ;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
      008A85 CD 8C 54         [ 4]   99 	call	_delay_us
                                    100 ;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
      008A88 72 19 50 05      [ 1]  101 	bres	20485, #4
                                    102 ;	Source/Driver/Src/soft_i2c.c: 44: }
      008A8C 81               [ 4]  103 	ret
                                    104 ;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
                                    105 ;	-----------------------------------------
                                    106 ;	 function I2C_Stop
                                    107 ;	-----------------------------------------
      008A8D                        108 _I2C_Stop:
                                    109 ;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
      008A8D 72 19 50 05      [ 1]  110 	bres	20485, #4
                                    111 ;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
      008A91 72 1B 50 05      [ 1]  112 	bres	20485, #5
                                    113 ;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
      008A95 CD 8C 54         [ 4]  114 	call	_delay_us
                                    115 ;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
      008A98 72 18 50 05      [ 1]  116 	bset	20485, #4
                                    117 ;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
      008A9C C6 50 05         [ 1]  118 	ld	a, 0x5005
      008A9F AA 20            [ 1]  119 	or	a, #0x20
      008AA1 C7 50 05         [ 1]  120 	ld	0x5005, a
                                    121 ;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
                                    122 ;	Source/Driver/Src/soft_i2c.c: 56: }
      008AA4 CC 8C 54         [ 2]  123 	jp	_delay_us
                                    124 ;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function I2C_Wait_Ack
                                    127 ;	-----------------------------------------
      008AA7                        128 _I2C_Wait_Ack:
                                    129 ;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
      008AA7 C6 50 05         [ 1]  130 	ld	a, 0x5005
      008AAA AA 20            [ 1]  131 	or	a, #0x20
      008AAC C7 50 05         [ 1]  132 	ld	0x5005, a
      008AAF 9D               [ 1]  133 	nop
                                    134 ;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
      008AB0 C6 50 05         [ 1]  135 	ld	a, 0x5005
      008AB3 AA 10            [ 1]  136 	or	a, #0x10
      008AB5 C7 50 05         [ 1]  137 	ld	0x5005, a
      008AB8 9D               [ 1]  138 	nop
                                    139 ;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
      008AB9 5F               [ 1]  140 	clrw	x
      008ABA                        141 00103$:
      008ABA C6 50 06         [ 1]  142 	ld	a, 0x5006
      008ABD A4 20            [ 1]  143 	and	a, #0x20
      008ABF 4E               [ 1]  144 	swap	a
      008AC0 A4 0F            [ 1]  145 	and	a, #0x0f
      008AC2 44               [ 1]  146 	srl	a
      008AC3 4D               [ 1]  147 	tnz	a
      008AC4 27 0C            [ 1]  148 	jreq	00105$
                                    149 ;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
      008AC6 5C               [ 1]  150 	incw	x
                                    151 ;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
      008AC7 9F               [ 1]  152 	ld	a, xl
      008AC8 A1 FA            [ 1]  153 	cp	a, #0xfa
      008ACA 23 EE            [ 2]  154 	jrule	00103$
                                    155 ;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
      008ACC CD 8A 8D         [ 4]  156 	call	_I2C_Stop
                                    157 ;	Source/Driver/Src/soft_i2c.c: 73: return 1;
      008ACF A6 01            [ 1]  158 	ld	a, #0x01
      008AD1 81               [ 4]  159 	ret
      008AD2                        160 00105$:
                                    161 ;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
      008AD2 72 19 50 05      [ 1]  162 	bres	20485, #4
                                    163 ;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
      008AD6 4F               [ 1]  164 	clr	a
                                    165 ;	Source/Driver/Src/soft_i2c.c: 78: }
      008AD7 81               [ 4]  166 	ret
                                    167 ;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
                                    168 ;	-----------------------------------------
                                    169 ;	 function I2C_Ack
                                    170 ;	-----------------------------------------
      008AD8                        171 _I2C_Ack:
                                    172 ;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
      008AD8 72 19 50 05      [ 1]  173 	bres	20485, #4
                                    174 ;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
      008ADC 72 1B 50 05      [ 1]  175 	bres	20485, #5
                                    176 ;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
      008AE0 CD 8C 54         [ 4]  177 	call	_delay_us
                                    178 ;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
      008AE3 72 18 50 05      [ 1]  179 	bset	20485, #4
                                    180 ;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
      008AE7 CD 8C 54         [ 4]  181 	call	_delay_us
                                    182 ;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
      008AEA 72 19 50 05      [ 1]  183 	bres	20485, #4
                                    184 ;	Source/Driver/Src/soft_i2c.c: 89: }
      008AEE 81               [ 4]  185 	ret
                                    186 ;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
                                    187 ;	-----------------------------------------
                                    188 ;	 function I2C_NAck
                                    189 ;	-----------------------------------------
      008AEF                        190 _I2C_NAck:
                                    191 ;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
      008AEF 72 19 50 05      [ 1]  192 	bres	20485, #4
                                    193 ;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
      008AF3 72 1A 50 05      [ 1]  194 	bset	20485, #5
                                    195 ;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
      008AF7 CD 8C 54         [ 4]  196 	call	_delay_us
                                    197 ;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
      008AFA 72 18 50 05      [ 1]  198 	bset	20485, #4
                                    199 ;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
      008AFE CD 8C 54         [ 4]  200 	call	_delay_us
                                    201 ;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
      008B01 72 19 50 05      [ 1]  202 	bres	20485, #4
                                    203 ;	Source/Driver/Src/soft_i2c.c: 100: }
      008B05 81               [ 4]  204 	ret
                                    205 ;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
                                    206 ;	-----------------------------------------
                                    207 ;	 function I2C_Send_Byte
                                    208 ;	-----------------------------------------
      008B06                        209 _I2C_Send_Byte:
      008B06 88               [ 1]  210 	push	a
                                    211 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008B07 72 19 50 05      [ 1]  212 	bres	20485, #4
                                    213 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B0B 0F 01            [ 1]  214 	clr	(0x01, sp)
      008B0D                        215 00105$:
                                    216 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B0D 7B 04            [ 1]  217 	ld	a, (0x04, sp)
      008B0F A4 80            [ 1]  218 	and	a, #0x80
      008B11 97               [ 1]  219 	ld	xl, a
      008B12 4F               [ 1]  220 	clr	a
      008B13 95               [ 1]  221 	ld	xh, a
      008B14 4F               [ 1]  222 	clr	a
      008B15 5D               [ 2]  223 	tnzw	x
      008B16 2A 01            [ 1]  224 	jrpl	00120$
      008B18 4A               [ 1]  225 	dec	a
      008B19                        226 00120$:
      008B19 01               [ 1]  227 	rrwa	x
      008B1A 48               [ 1]  228 	sll	a
      008B1B 59               [ 2]  229 	rlcw	x
                                    230 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008B1C C6 50 05         [ 1]  231 	ld	a, 0x5005
                                    232 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B1F 5D               [ 2]  233 	tnzw	x
      008B20 27 07            [ 1]  234 	jreq	00102$
                                    235 ;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
      008B22 AA 20            [ 1]  236 	or	a, #0x20
      008B24 C7 50 05         [ 1]  237 	ld	0x5005, a
      008B27 20 05            [ 2]  238 	jra	00103$
      008B29                        239 00102$:
                                    240 ;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
      008B29 A4 DF            [ 1]  241 	and	a, #0xdf
      008B2B C7 50 05         [ 1]  242 	ld	0x5005, a
      008B2E                        243 00103$:
                                    244 ;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
      008B2E 08 04            [ 1]  245 	sll	(0x04, sp)
                                    246 ;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
      008B30 CD 8C 54         [ 4]  247 	call	_delay_us
                                    248 ;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
      008B33 72 18 50 05      [ 1]  249 	bset	20485, #4
                                    250 ;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
      008B37 CD 8C 54         [ 4]  251 	call	_delay_us
                                    252 ;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
      008B3A 72 19 50 05      [ 1]  253 	bres	20485, #4
                                    254 ;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
      008B3E CD 8C 54         [ 4]  255 	call	_delay_us
                                    256 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B41 0C 01            [ 1]  257 	inc	(0x01, sp)
      008B43 7B 01            [ 1]  258 	ld	a, (0x01, sp)
      008B45 A1 08            [ 1]  259 	cp	a, #0x08
      008B47 25 C4            [ 1]  260 	jrc	00105$
                                    261 ;	Source/Driver/Src/soft_i2c.c: 123: }
      008B49 84               [ 1]  262 	pop	a
      008B4A 81               [ 4]  263 	ret
                                    264 ;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
                                    265 ;	-----------------------------------------
                                    266 ;	 function I2C_Read_Byte
                                    267 ;	-----------------------------------------
      008B4B                        268 _I2C_Read_Byte:
      008B4B 89               [ 2]  269 	pushw	x
                                    270 ;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
      008B4C 0F 01            [ 1]  271 	clr	(0x01, sp)
                                    272 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B4E 0F 02            [ 1]  273 	clr	(0x02, sp)
      008B50                        274 00107$:
                                    275 ;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
      008B50 72 19 50 05      [ 1]  276 	bres	20485, #4
                                    277 ;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
      008B54 CD 8C 54         [ 4]  278 	call	_delay_us
                                    279 ;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
      008B57 72 18 50 05      [ 1]  280 	bset	20485, #4
                                    281 ;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
      008B5B 08 01            [ 1]  282 	sll	(0x01, sp)
                                    283 ;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
      008B5D C6 50 06         [ 1]  284 	ld	a, 0x5006
      008B60 A4 20            [ 1]  285 	and	a, #0x20
      008B62 4E               [ 1]  286 	swap	a
      008B63 A4 0F            [ 1]  287 	and	a, #0x0f
      008B65 44               [ 1]  288 	srl	a
      008B66 4D               [ 1]  289 	tnz	a
      008B67 27 02            [ 1]  290 	jreq	00102$
      008B69 0C 01            [ 1]  291 	inc	(0x01, sp)
      008B6B                        292 00102$:
                                    293 ;	Source/Driver/Src/soft_i2c.c: 137: nop();
      008B6B 9D               [ 1]  294 	nop
                                    295 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B6C 0C 02            [ 1]  296 	inc	(0x02, sp)
      008B6E 7B 02            [ 1]  297 	ld	a, (0x02, sp)
      008B70 A1 08            [ 1]  298 	cp	a, #0x08
      008B72 25 DC            [ 1]  299 	jrc	00107$
                                    300 ;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
      008B74 0D 05            [ 1]  301 	tnz	(0x05, sp)
      008B76 26 05            [ 1]  302 	jrne	00105$
                                    303 ;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
      008B78 CD 8A EF         [ 4]  304 	call	_I2C_NAck
      008B7B 20 03            [ 2]  305 	jra	00106$
      008B7D                        306 00105$:
                                    307 ;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
      008B7D CD 8A D8         [ 4]  308 	call	_I2C_Ack
      008B80                        309 00106$:
                                    310 ;	Source/Driver/Src/soft_i2c.c: 143: return receive;
      008B80 7B 01            [ 1]  311 	ld	a, (0x01, sp)
                                    312 ;	Source/Driver/Src/soft_i2c.c: 144: }
      008B82 85               [ 2]  313 	popw	x
      008B83 81               [ 4]  314 	ret
                                    315 ;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    316 ;	-----------------------------------------
                                    317 ;	 function I2C_MasterReceiveData
                                    318 ;	-----------------------------------------
      008B84                        319 _I2C_MasterReceiveData:
      008B84 52 03            [ 2]  320 	sub	sp, #3
                                    321 ;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
      008B86 CD 8A 76         [ 4]  322 	call	_I2C_Start
                                    323 ;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      008B89 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      008B8B 48               [ 1]  325 	sll	a
      008B8C 6B 03            [ 1]  326 	ld	(0x03, sp), a
      008B8E 88               [ 1]  327 	push	a
      008B8F CD 8B 06         [ 4]  328 	call	_I2C_Send_Byte
      008B92 84               [ 1]  329 	pop	a
                                    330 ;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
      008B93 CD 8A A7         [ 4]  331 	call	_I2C_Wait_Ack
      008B96 4D               [ 1]  332 	tnz	a
      008B97 27 03            [ 1]  333 	jreq	00102$
                                    334 ;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
      008B99 4F               [ 1]  335 	clr	a
      008B9A 20 66            [ 2]  336 	jra	00114$
      008B9C                        337 00102$:
                                    338 ;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
      008B9C 7B 07            [ 1]  339 	ld	a, (0x07, sp)
      008B9E 88               [ 1]  340 	push	a
      008B9F CD 8B 06         [ 4]  341 	call	_I2C_Send_Byte
      008BA2 84               [ 1]  342 	pop	a
                                    343 ;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
      008BA3 CD 8A A7         [ 4]  344 	call	_I2C_Wait_Ack
      008BA6 4D               [ 1]  345 	tnz	a
      008BA7 27 03            [ 1]  346 	jreq	00104$
                                    347 ;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
      008BA9 4F               [ 1]  348 	clr	a
      008BAA 20 56            [ 2]  349 	jra	00114$
      008BAC                        350 00104$:
                                    351 ;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
      008BAC CD 8A 76         [ 4]  352 	call	_I2C_Start
                                    353 ;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
      008BAF 7B 03            [ 1]  354 	ld	a, (0x03, sp)
      008BB1 AA 01            [ 1]  355 	or	a, #0x01
      008BB3 88               [ 1]  356 	push	a
      008BB4 CD 8B 06         [ 4]  357 	call	_I2C_Send_Byte
      008BB7 84               [ 1]  358 	pop	a
                                    359 ;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
      008BB8 CD 8A A7         [ 4]  360 	call	_I2C_Wait_Ack
      008BBB 4D               [ 1]  361 	tnz	a
      008BBC 27 03            [ 1]  362 	jreq	00121$
                                    363 ;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
      008BBE 4F               [ 1]  364 	clr	a
      008BBF 20 41            [ 2]  365 	jra	00114$
                                    366 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008BC1                        367 00121$:
      008BC1 0F 03            [ 1]  368 	clr	(0x03, sp)
      008BC3                        369 00112$:
      008BC3 7B 03            [ 1]  370 	ld	a, (0x03, sp)
      008BC5 11 0A            [ 1]  371 	cp	a, (0x0a, sp)
      008BC7 24 34            [ 1]  372 	jrnc	00110$
                                    373 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008BC9 5F               [ 1]  374 	clrw	x
      008BCA 7B 0A            [ 1]  375 	ld	a, (0x0a, sp)
      008BCC 97               [ 1]  376 	ld	xl, a
      008BCD 5A               [ 2]  377 	decw	x
      008BCE 1F 01            [ 2]  378 	ldw	(0x01, sp), x
      008BD0 90 5F            [ 1]  379 	clrw	y
      008BD2 7B 03            [ 1]  380 	ld	a, (0x03, sp)
      008BD4 90 97            [ 1]  381 	ld	yl, a
                                    382 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008BD6 5F               [ 1]  383 	clrw	x
      008BD7 7B 03            [ 1]  384 	ld	a, (0x03, sp)
      008BD9 97               [ 1]  385 	ld	xl, a
      008BDA 72 FB 08         [ 2]  386 	addw	x, (0x08, sp)
                                    387 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008BDD 51               [ 1]  388 	exgw	x, y
      008BDE 13 01            [ 2]  389 	cpw	x, (0x01, sp)
      008BE0 51               [ 1]  390 	exgw	x, y
      008BE1 26 0C            [ 1]  391 	jrne	00108$
                                    392 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008BE3 89               [ 2]  393 	pushw	x
      008BE4 4B 00            [ 1]  394 	push	#0x00
      008BE6 CD 8B 4B         [ 4]  395 	call	_I2C_Read_Byte
      008BE9 5B 01            [ 2]  396 	addw	sp, #1
      008BEB 85               [ 2]  397 	popw	x
      008BEC F7               [ 1]  398 	ld	(x), a
      008BED 20 0A            [ 2]  399 	jra	00113$
      008BEF                        400 00108$:
                                    401 ;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
      008BEF 89               [ 2]  402 	pushw	x
      008BF0 4B 01            [ 1]  403 	push	#0x01
      008BF2 CD 8B 4B         [ 4]  404 	call	_I2C_Read_Byte
      008BF5 5B 01            [ 2]  405 	addw	sp, #1
      008BF7 85               [ 2]  406 	popw	x
      008BF8 F7               [ 1]  407 	ld	(x), a
      008BF9                        408 00113$:
                                    409 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008BF9 0C 03            [ 1]  410 	inc	(0x03, sp)
      008BFB 20 C6            [ 2]  411 	jra	00112$
      008BFD                        412 00110$:
                                    413 ;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
      008BFD CD 8A 8D         [ 4]  414 	call	_I2C_Stop
                                    415 ;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
      008C00 A6 01            [ 1]  416 	ld	a, #0x01
      008C02                        417 00114$:
                                    418 ;	Source/Driver/Src/soft_i2c.c: 218: }
      008C02 5B 03            [ 2]  419 	addw	sp, #3
      008C04 81               [ 4]  420 	ret
                                    421 ;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    422 ;	-----------------------------------------
                                    423 ;	 function I2C_MasterSendData
                                    424 ;	-----------------------------------------
      008C05                        425 _I2C_MasterSendData:
      008C05 88               [ 1]  426 	push	a
                                    427 ;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
      008C06 CD 8A 76         [ 4]  428 	call	_I2C_Start
                                    429 ;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      008C09 7B 04            [ 1]  430 	ld	a, (0x04, sp)
      008C0B 48               [ 1]  431 	sll	a
      008C0C 88               [ 1]  432 	push	a
      008C0D CD 8B 06         [ 4]  433 	call	_I2C_Send_Byte
      008C10 84               [ 1]  434 	pop	a
                                    435 ;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
      008C11 CD 8A A7         [ 4]  436 	call	_I2C_Wait_Ack
      008C14 4D               [ 1]  437 	tnz	a
      008C15 27 03            [ 1]  438 	jreq	00102$
                                    439 ;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
      008C17 4F               [ 1]  440 	clr	a
      008C18 20 37            [ 2]  441 	jra	00111$
      008C1A                        442 00102$:
                                    443 ;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
      008C1A 7B 05            [ 1]  444 	ld	a, (0x05, sp)
      008C1C 88               [ 1]  445 	push	a
      008C1D CD 8B 06         [ 4]  446 	call	_I2C_Send_Byte
      008C20 84               [ 1]  447 	pop	a
                                    448 ;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
      008C21 CD 8A A7         [ 4]  449 	call	_I2C_Wait_Ack
      008C24 4D               [ 1]  450 	tnz	a
      008C25 27 03            [ 1]  451 	jreq	00117$
                                    452 ;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
      008C27 4F               [ 1]  453 	clr	a
      008C28 20 27            [ 2]  454 	jra	00111$
                                    455 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C2A                        456 00117$:
      008C2A 0F 01            [ 1]  457 	clr	(0x01, sp)
      008C2C                        458 00109$:
      008C2C 7B 01            [ 1]  459 	ld	a, (0x01, sp)
      008C2E 11 08            [ 1]  460 	cp	a, (0x08, sp)
      008C30 24 1A            [ 1]  461 	jrnc	00107$
                                    462 ;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
      008C32 5F               [ 1]  463 	clrw	x
      008C33 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      008C35 97               [ 1]  465 	ld	xl, a
      008C36 72 FB 06         [ 2]  466 	addw	x, (0x06, sp)
      008C39 F6               [ 1]  467 	ld	a, (x)
      008C3A 88               [ 1]  468 	push	a
      008C3B CD 8B 06         [ 4]  469 	call	_I2C_Send_Byte
      008C3E 84               [ 1]  470 	pop	a
                                    471 ;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
      008C3F CD 8A A7         [ 4]  472 	call	_I2C_Wait_Ack
      008C42 4D               [ 1]  473 	tnz	a
      008C43 27 03            [ 1]  474 	jreq	00110$
                                    475 ;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
      008C45 4F               [ 1]  476 	clr	a
      008C46 20 09            [ 2]  477 	jra	00111$
      008C48                        478 00110$:
                                    479 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C48 0C 01            [ 1]  480 	inc	(0x01, sp)
      008C4A 20 E0            [ 2]  481 	jra	00109$
      008C4C                        482 00107$:
                                    483 ;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
      008C4C CD 8A 8D         [ 4]  484 	call	_I2C_Stop
                                    485 ;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
      008C4F A6 01            [ 1]  486 	ld	a, #0x01
      008C51                        487 00111$:
                                    488 ;	Source/Driver/Src/soft_i2c.c: 247: }
      008C51 5B 01            [ 2]  489 	addw	sp, #1
      008C53 81               [ 4]  490 	ret
                                    491 ;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
                                    492 ;	-----------------------------------------
                                    493 ;	 function delay_us
                                    494 ;	-----------------------------------------
      008C54                        495 _delay_us:
                                    496 ;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
      008C54 9D               [ 1]  497 	nop
      008C55 9D               [ 1]  498 	nop
      008C56 9D               [ 1]  499 	nop
      008C57 9D               [ 1]  500 	nop
                                    501 ;	Source/Driver/Src/soft_i2c.c: 254: }
      008C58 81               [ 4]  502 	ret
                                    503 	.area CODE
                                    504 	.area CONST
                                    505 	.area INITIALIZER
                                    506 	.area CABS (ABS)
