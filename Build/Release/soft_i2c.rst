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
      0085AC                         64 _I2C_Init:
                                     65 ;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
      0085AC 4B 90            [ 1]   66 	push	#0x90
      0085AE 4B 10            [ 1]   67 	push	#0x10
      0085B0 4B 05            [ 1]   68 	push	#0x05
      0085B2 4B 50            [ 1]   69 	push	#0x50
      0085B4 CD 80 C8         [ 4]   70 	call	_GPIO_Init
      0085B7 5B 04            [ 2]   71 	addw	sp, #4
                                     72 ;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
      0085B9 4B 90            [ 1]   73 	push	#0x90
      0085BB 4B 20            [ 1]   74 	push	#0x20
      0085BD 4B 05            [ 1]   75 	push	#0x05
      0085BF 4B 50            [ 1]   76 	push	#0x50
      0085C1 CD 80 C8         [ 4]   77 	call	_GPIO_Init
      0085C4 5B 04            [ 2]   78 	addw	sp, #4
                                     79 ;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
      0085C6 72 18 50 05      [ 1]   80 	bset	20485, #4
                                     81 ;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
      0085CA 72 1A 50 05      [ 1]   82 	bset	20485, #5
                                     83 ;	Source/Driver/Src/soft_i2c.c: 33: }
      0085CE 81               [ 4]   84 	ret
                                     85 ;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
                                     86 ;	-----------------------------------------
                                     87 ;	 function I2C_Start
                                     88 ;	-----------------------------------------
      0085CF                         89 _I2C_Start:
                                     90 ;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
      0085CF 72 1A 50 05      [ 1]   91 	bset	20485, #5
                                     92 ;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
      0085D3 72 18 50 05      [ 1]   93 	bset	20485, #4
                                     94 ;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
      0085D7 CD 87 AD         [ 4]   95 	call	_delay_us
                                     96 ;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
      0085DA 72 1B 50 05      [ 1]   97 	bres	20485, #5
                                     98 ;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
      0085DE CD 87 AD         [ 4]   99 	call	_delay_us
                                    100 ;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
      0085E1 72 19 50 05      [ 1]  101 	bres	20485, #4
                                    102 ;	Source/Driver/Src/soft_i2c.c: 44: }
      0085E5 81               [ 4]  103 	ret
                                    104 ;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
                                    105 ;	-----------------------------------------
                                    106 ;	 function I2C_Stop
                                    107 ;	-----------------------------------------
      0085E6                        108 _I2C_Stop:
                                    109 ;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
      0085E6 72 19 50 05      [ 1]  110 	bres	20485, #4
                                    111 ;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
      0085EA 72 1B 50 05      [ 1]  112 	bres	20485, #5
                                    113 ;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
      0085EE CD 87 AD         [ 4]  114 	call	_delay_us
                                    115 ;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
      0085F1 72 18 50 05      [ 1]  116 	bset	20485, #4
                                    117 ;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
      0085F5 C6 50 05         [ 1]  118 	ld	a, 0x5005
      0085F8 AA 20            [ 1]  119 	or	a, #0x20
      0085FA C7 50 05         [ 1]  120 	ld	0x5005, a
                                    121 ;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
                                    122 ;	Source/Driver/Src/soft_i2c.c: 56: }
      0085FD CC 87 AD         [ 2]  123 	jp	_delay_us
                                    124 ;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
                                    125 ;	-----------------------------------------
                                    126 ;	 function I2C_Wait_Ack
                                    127 ;	-----------------------------------------
      008600                        128 _I2C_Wait_Ack:
                                    129 ;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
      008600 C6 50 05         [ 1]  130 	ld	a, 0x5005
      008603 AA 20            [ 1]  131 	or	a, #0x20
      008605 C7 50 05         [ 1]  132 	ld	0x5005, a
      008608 9D               [ 1]  133 	nop
                                    134 ;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
      008609 C6 50 05         [ 1]  135 	ld	a, 0x5005
      00860C AA 10            [ 1]  136 	or	a, #0x10
      00860E C7 50 05         [ 1]  137 	ld	0x5005, a
      008611 9D               [ 1]  138 	nop
                                    139 ;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
      008612 5F               [ 1]  140 	clrw	x
      008613                        141 00103$:
      008613 C6 50 06         [ 1]  142 	ld	a, 0x5006
      008616 A4 20            [ 1]  143 	and	a, #0x20
      008618 4E               [ 1]  144 	swap	a
      008619 A4 0F            [ 1]  145 	and	a, #0x0f
      00861B 44               [ 1]  146 	srl	a
      00861C 4D               [ 1]  147 	tnz	a
      00861D 27 0C            [ 1]  148 	jreq	00105$
                                    149 ;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
      00861F 5C               [ 1]  150 	incw	x
                                    151 ;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
      008620 9F               [ 1]  152 	ld	a, xl
      008621 A1 FA            [ 1]  153 	cp	a, #0xfa
      008623 23 EE            [ 2]  154 	jrule	00103$
                                    155 ;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
      008625 CD 85 E6         [ 4]  156 	call	_I2C_Stop
                                    157 ;	Source/Driver/Src/soft_i2c.c: 73: return 1;
      008628 A6 01            [ 1]  158 	ld	a, #0x01
      00862A 81               [ 4]  159 	ret
      00862B                        160 00105$:
                                    161 ;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
      00862B 72 19 50 05      [ 1]  162 	bres	20485, #4
                                    163 ;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
      00862F 4F               [ 1]  164 	clr	a
                                    165 ;	Source/Driver/Src/soft_i2c.c: 78: }
      008630 81               [ 4]  166 	ret
                                    167 ;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
                                    168 ;	-----------------------------------------
                                    169 ;	 function I2C_Ack
                                    170 ;	-----------------------------------------
      008631                        171 _I2C_Ack:
                                    172 ;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
      008631 72 19 50 05      [ 1]  173 	bres	20485, #4
                                    174 ;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
      008635 72 1B 50 05      [ 1]  175 	bres	20485, #5
                                    176 ;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
      008639 CD 87 AD         [ 4]  177 	call	_delay_us
                                    178 ;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
      00863C 72 18 50 05      [ 1]  179 	bset	20485, #4
                                    180 ;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
      008640 CD 87 AD         [ 4]  181 	call	_delay_us
                                    182 ;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
      008643 72 19 50 05      [ 1]  183 	bres	20485, #4
                                    184 ;	Source/Driver/Src/soft_i2c.c: 89: }
      008647 81               [ 4]  185 	ret
                                    186 ;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
                                    187 ;	-----------------------------------------
                                    188 ;	 function I2C_NAck
                                    189 ;	-----------------------------------------
      008648                        190 _I2C_NAck:
                                    191 ;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
      008648 72 19 50 05      [ 1]  192 	bres	20485, #4
                                    193 ;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
      00864C 72 1A 50 05      [ 1]  194 	bset	20485, #5
                                    195 ;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
      008650 CD 87 AD         [ 4]  196 	call	_delay_us
                                    197 ;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
      008653 72 18 50 05      [ 1]  198 	bset	20485, #4
                                    199 ;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
      008657 CD 87 AD         [ 4]  200 	call	_delay_us
                                    201 ;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
      00865A 72 19 50 05      [ 1]  202 	bres	20485, #4
                                    203 ;	Source/Driver/Src/soft_i2c.c: 100: }
      00865E 81               [ 4]  204 	ret
                                    205 ;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
                                    206 ;	-----------------------------------------
                                    207 ;	 function I2C_Send_Byte
                                    208 ;	-----------------------------------------
      00865F                        209 _I2C_Send_Byte:
      00865F 88               [ 1]  210 	push	a
                                    211 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008660 72 19 50 05      [ 1]  212 	bres	20485, #4
                                    213 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008664 0F 01            [ 1]  214 	clr	(0x01, sp)
      008666                        215 00105$:
                                    216 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008666 7B 04            [ 1]  217 	ld	a, (0x04, sp)
      008668 A4 80            [ 1]  218 	and	a, #0x80
      00866A 97               [ 1]  219 	ld	xl, a
      00866B 4F               [ 1]  220 	clr	a
      00866C 95               [ 1]  221 	ld	xh, a
      00866D 4F               [ 1]  222 	clr	a
      00866E 5D               [ 2]  223 	tnzw	x
      00866F 2A 01            [ 1]  224 	jrpl	00120$
      008671 4A               [ 1]  225 	dec	a
      008672                        226 00120$:
      008672 01               [ 1]  227 	rrwa	x
      008673 48               [ 1]  228 	sll	a
      008674 59               [ 2]  229 	rlcw	x
                                    230 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008675 C6 50 05         [ 1]  231 	ld	a, 0x5005
                                    232 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008678 5D               [ 2]  233 	tnzw	x
      008679 27 07            [ 1]  234 	jreq	00102$
                                    235 ;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
      00867B AA 20            [ 1]  236 	or	a, #0x20
      00867D C7 50 05         [ 1]  237 	ld	0x5005, a
      008680 20 05            [ 2]  238 	jra	00103$
      008682                        239 00102$:
                                    240 ;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
      008682 A4 DF            [ 1]  241 	and	a, #0xdf
      008684 C7 50 05         [ 1]  242 	ld	0x5005, a
      008687                        243 00103$:
                                    244 ;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
      008687 08 04            [ 1]  245 	sll	(0x04, sp)
                                    246 ;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
      008689 CD 87 AD         [ 4]  247 	call	_delay_us
                                    248 ;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
      00868C 72 18 50 05      [ 1]  249 	bset	20485, #4
                                    250 ;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
      008690 CD 87 AD         [ 4]  251 	call	_delay_us
                                    252 ;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
      008693 72 19 50 05      [ 1]  253 	bres	20485, #4
                                    254 ;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
      008697 CD 87 AD         [ 4]  255 	call	_delay_us
                                    256 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      00869A 0C 01            [ 1]  257 	inc	(0x01, sp)
      00869C 7B 01            [ 1]  258 	ld	a, (0x01, sp)
      00869E A1 08            [ 1]  259 	cp	a, #0x08
      0086A0 25 C4            [ 1]  260 	jrc	00105$
                                    261 ;	Source/Driver/Src/soft_i2c.c: 123: }
      0086A2 84               [ 1]  262 	pop	a
      0086A3 81               [ 4]  263 	ret
                                    264 ;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
                                    265 ;	-----------------------------------------
                                    266 ;	 function I2C_Read_Byte
                                    267 ;	-----------------------------------------
      0086A4                        268 _I2C_Read_Byte:
      0086A4 89               [ 2]  269 	pushw	x
                                    270 ;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
      0086A5 0F 01            [ 1]  271 	clr	(0x01, sp)
                                    272 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      0086A7 0F 02            [ 1]  273 	clr	(0x02, sp)
      0086A9                        274 00107$:
                                    275 ;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
      0086A9 72 19 50 05      [ 1]  276 	bres	20485, #4
                                    277 ;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
      0086AD CD 87 AD         [ 4]  278 	call	_delay_us
                                    279 ;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
      0086B0 72 18 50 05      [ 1]  280 	bset	20485, #4
                                    281 ;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
      0086B4 08 01            [ 1]  282 	sll	(0x01, sp)
                                    283 ;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
      0086B6 C6 50 06         [ 1]  284 	ld	a, 0x5006
      0086B9 A4 20            [ 1]  285 	and	a, #0x20
      0086BB 4E               [ 1]  286 	swap	a
      0086BC A4 0F            [ 1]  287 	and	a, #0x0f
      0086BE 44               [ 1]  288 	srl	a
      0086BF 4D               [ 1]  289 	tnz	a
      0086C0 27 02            [ 1]  290 	jreq	00102$
      0086C2 0C 01            [ 1]  291 	inc	(0x01, sp)
      0086C4                        292 00102$:
                                    293 ;	Source/Driver/Src/soft_i2c.c: 137: nop();
      0086C4 9D               [ 1]  294 	nop
                                    295 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      0086C5 0C 02            [ 1]  296 	inc	(0x02, sp)
      0086C7 7B 02            [ 1]  297 	ld	a, (0x02, sp)
      0086C9 A1 08            [ 1]  298 	cp	a, #0x08
      0086CB 25 DC            [ 1]  299 	jrc	00107$
                                    300 ;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
      0086CD 0D 05            [ 1]  301 	tnz	(0x05, sp)
      0086CF 26 05            [ 1]  302 	jrne	00105$
                                    303 ;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
      0086D1 CD 86 48         [ 4]  304 	call	_I2C_NAck
      0086D4 20 03            [ 2]  305 	jra	00106$
      0086D6                        306 00105$:
                                    307 ;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
      0086D6 CD 86 31         [ 4]  308 	call	_I2C_Ack
      0086D9                        309 00106$:
                                    310 ;	Source/Driver/Src/soft_i2c.c: 143: return receive;
      0086D9 7B 01            [ 1]  311 	ld	a, (0x01, sp)
                                    312 ;	Source/Driver/Src/soft_i2c.c: 144: }
      0086DB 85               [ 2]  313 	popw	x
      0086DC 81               [ 4]  314 	ret
                                    315 ;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    316 ;	-----------------------------------------
                                    317 ;	 function I2C_MasterReceiveData
                                    318 ;	-----------------------------------------
      0086DD                        319 _I2C_MasterReceiveData:
      0086DD 52 03            [ 2]  320 	sub	sp, #3
                                    321 ;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
      0086DF CD 85 CF         [ 4]  322 	call	_I2C_Start
                                    323 ;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      0086E2 7B 06            [ 1]  324 	ld	a, (0x06, sp)
      0086E4 48               [ 1]  325 	sll	a
      0086E5 6B 03            [ 1]  326 	ld	(0x03, sp), a
      0086E7 88               [ 1]  327 	push	a
      0086E8 CD 86 5F         [ 4]  328 	call	_I2C_Send_Byte
      0086EB 84               [ 1]  329 	pop	a
                                    330 ;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
      0086EC CD 86 00         [ 4]  331 	call	_I2C_Wait_Ack
      0086EF 4D               [ 1]  332 	tnz	a
      0086F0 27 03            [ 1]  333 	jreq	00102$
                                    334 ;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
      0086F2 4F               [ 1]  335 	clr	a
      0086F3 20 66            [ 2]  336 	jra	00114$
      0086F5                        337 00102$:
                                    338 ;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
      0086F5 7B 07            [ 1]  339 	ld	a, (0x07, sp)
      0086F7 88               [ 1]  340 	push	a
      0086F8 CD 86 5F         [ 4]  341 	call	_I2C_Send_Byte
      0086FB 84               [ 1]  342 	pop	a
                                    343 ;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
      0086FC CD 86 00         [ 4]  344 	call	_I2C_Wait_Ack
      0086FF 4D               [ 1]  345 	tnz	a
      008700 27 03            [ 1]  346 	jreq	00104$
                                    347 ;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
      008702 4F               [ 1]  348 	clr	a
      008703 20 56            [ 2]  349 	jra	00114$
      008705                        350 00104$:
                                    351 ;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
      008705 CD 85 CF         [ 4]  352 	call	_I2C_Start
                                    353 ;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
      008708 7B 03            [ 1]  354 	ld	a, (0x03, sp)
      00870A AA 01            [ 1]  355 	or	a, #0x01
      00870C 88               [ 1]  356 	push	a
      00870D CD 86 5F         [ 4]  357 	call	_I2C_Send_Byte
      008710 84               [ 1]  358 	pop	a
                                    359 ;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
      008711 CD 86 00         [ 4]  360 	call	_I2C_Wait_Ack
      008714 4D               [ 1]  361 	tnz	a
      008715 27 03            [ 1]  362 	jreq	00121$
                                    363 ;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
      008717 4F               [ 1]  364 	clr	a
      008718 20 41            [ 2]  365 	jra	00114$
                                    366 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      00871A                        367 00121$:
      00871A 0F 03            [ 1]  368 	clr	(0x03, sp)
      00871C                        369 00112$:
      00871C 7B 03            [ 1]  370 	ld	a, (0x03, sp)
      00871E 11 0A            [ 1]  371 	cp	a, (0x0a, sp)
      008720 24 34            [ 1]  372 	jrnc	00110$
                                    373 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008722 5F               [ 1]  374 	clrw	x
      008723 7B 0A            [ 1]  375 	ld	a, (0x0a, sp)
      008725 97               [ 1]  376 	ld	xl, a
      008726 5A               [ 2]  377 	decw	x
      008727 1F 01            [ 2]  378 	ldw	(0x01, sp), x
      008729 90 5F            [ 1]  379 	clrw	y
      00872B 7B 03            [ 1]  380 	ld	a, (0x03, sp)
      00872D 90 97            [ 1]  381 	ld	yl, a
                                    382 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      00872F 5F               [ 1]  383 	clrw	x
      008730 7B 03            [ 1]  384 	ld	a, (0x03, sp)
      008732 97               [ 1]  385 	ld	xl, a
      008733 72 FB 08         [ 2]  386 	addw	x, (0x08, sp)
                                    387 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008736 51               [ 1]  388 	exgw	x, y
      008737 13 01            [ 2]  389 	cpw	x, (0x01, sp)
      008739 51               [ 1]  390 	exgw	x, y
      00873A 26 0C            [ 1]  391 	jrne	00108$
                                    392 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      00873C 89               [ 2]  393 	pushw	x
      00873D 4B 00            [ 1]  394 	push	#0x00
      00873F CD 86 A4         [ 4]  395 	call	_I2C_Read_Byte
      008742 5B 01            [ 2]  396 	addw	sp, #1
      008744 85               [ 2]  397 	popw	x
      008745 F7               [ 1]  398 	ld	(x), a
      008746 20 0A            [ 2]  399 	jra	00113$
      008748                        400 00108$:
                                    401 ;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
      008748 89               [ 2]  402 	pushw	x
      008749 4B 01            [ 1]  403 	push	#0x01
      00874B CD 86 A4         [ 4]  404 	call	_I2C_Read_Byte
      00874E 5B 01            [ 2]  405 	addw	sp, #1
      008750 85               [ 2]  406 	popw	x
      008751 F7               [ 1]  407 	ld	(x), a
      008752                        408 00113$:
                                    409 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008752 0C 03            [ 1]  410 	inc	(0x03, sp)
      008754 20 C6            [ 2]  411 	jra	00112$
      008756                        412 00110$:
                                    413 ;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
      008756 CD 85 E6         [ 4]  414 	call	_I2C_Stop
                                    415 ;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
      008759 A6 01            [ 1]  416 	ld	a, #0x01
      00875B                        417 00114$:
                                    418 ;	Source/Driver/Src/soft_i2c.c: 218: }
      00875B 5B 03            [ 2]  419 	addw	sp, #3
      00875D 81               [ 4]  420 	ret
                                    421 ;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    422 ;	-----------------------------------------
                                    423 ;	 function I2C_MasterSendData
                                    424 ;	-----------------------------------------
      00875E                        425 _I2C_MasterSendData:
      00875E 88               [ 1]  426 	push	a
                                    427 ;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
      00875F CD 85 CF         [ 4]  428 	call	_I2C_Start
                                    429 ;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      008762 7B 04            [ 1]  430 	ld	a, (0x04, sp)
      008764 48               [ 1]  431 	sll	a
      008765 88               [ 1]  432 	push	a
      008766 CD 86 5F         [ 4]  433 	call	_I2C_Send_Byte
      008769 84               [ 1]  434 	pop	a
                                    435 ;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
      00876A CD 86 00         [ 4]  436 	call	_I2C_Wait_Ack
      00876D 4D               [ 1]  437 	tnz	a
      00876E 27 03            [ 1]  438 	jreq	00102$
                                    439 ;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
      008770 4F               [ 1]  440 	clr	a
      008771 20 37            [ 2]  441 	jra	00111$
      008773                        442 00102$:
                                    443 ;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
      008773 7B 05            [ 1]  444 	ld	a, (0x05, sp)
      008775 88               [ 1]  445 	push	a
      008776 CD 86 5F         [ 4]  446 	call	_I2C_Send_Byte
      008779 84               [ 1]  447 	pop	a
                                    448 ;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
      00877A CD 86 00         [ 4]  449 	call	_I2C_Wait_Ack
      00877D 4D               [ 1]  450 	tnz	a
      00877E 27 03            [ 1]  451 	jreq	00117$
                                    452 ;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
      008780 4F               [ 1]  453 	clr	a
      008781 20 27            [ 2]  454 	jra	00111$
                                    455 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008783                        456 00117$:
      008783 0F 01            [ 1]  457 	clr	(0x01, sp)
      008785                        458 00109$:
      008785 7B 01            [ 1]  459 	ld	a, (0x01, sp)
      008787 11 08            [ 1]  460 	cp	a, (0x08, sp)
      008789 24 1A            [ 1]  461 	jrnc	00107$
                                    462 ;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
      00878B 5F               [ 1]  463 	clrw	x
      00878C 7B 01            [ 1]  464 	ld	a, (0x01, sp)
      00878E 97               [ 1]  465 	ld	xl, a
      00878F 72 FB 06         [ 2]  466 	addw	x, (0x06, sp)
      008792 F6               [ 1]  467 	ld	a, (x)
      008793 88               [ 1]  468 	push	a
      008794 CD 86 5F         [ 4]  469 	call	_I2C_Send_Byte
      008797 84               [ 1]  470 	pop	a
                                    471 ;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
      008798 CD 86 00         [ 4]  472 	call	_I2C_Wait_Ack
      00879B 4D               [ 1]  473 	tnz	a
      00879C 27 03            [ 1]  474 	jreq	00110$
                                    475 ;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
      00879E 4F               [ 1]  476 	clr	a
      00879F 20 09            [ 2]  477 	jra	00111$
      0087A1                        478 00110$:
                                    479 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      0087A1 0C 01            [ 1]  480 	inc	(0x01, sp)
      0087A3 20 E0            [ 2]  481 	jra	00109$
      0087A5                        482 00107$:
                                    483 ;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
      0087A5 CD 85 E6         [ 4]  484 	call	_I2C_Stop
                                    485 ;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
      0087A8 A6 01            [ 1]  486 	ld	a, #0x01
      0087AA                        487 00111$:
                                    488 ;	Source/Driver/Src/soft_i2c.c: 247: }
      0087AA 5B 01            [ 2]  489 	addw	sp, #1
      0087AC 81               [ 4]  490 	ret
                                    491 ;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
                                    492 ;	-----------------------------------------
                                    493 ;	 function delay_us
                                    494 ;	-----------------------------------------
      0087AD                        495 _delay_us:
                                    496 ;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
      0087AD 9D               [ 1]  497 	nop
      0087AE 9D               [ 1]  498 	nop
      0087AF 9D               [ 1]  499 	nop
      0087B0 9D               [ 1]  500 	nop
                                    501 ;	Source/Driver/Src/soft_i2c.c: 254: }
      0087B1 81               [ 4]  502 	ret
                                    503 	.area CODE
                                    504 	.area CONST
                                    505 	.area INITIALIZER
                                    506 	.area CABS (ABS)
