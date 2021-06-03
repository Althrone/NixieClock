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
                           000000    60 	Ssoft_i2c$I2C_Init$0 ==.
                                     61 ;	Source/Driver/Src/soft_i2c.c: 26: void I2C_Init(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function I2C_Init
                                     64 ;	-----------------------------------------
      0085BA                         65 _I2C_Init:
                           000000    66 	Ssoft_i2c$I2C_Init$1 ==.
                           000000    67 	Ssoft_i2c$I2C_Init$2 ==.
                                     68 ;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
      0085BA 4B 90            [ 1]   69 	push	#0x90
                           000002    70 	Ssoft_i2c$I2C_Init$3 ==.
      0085BC 4B 10            [ 1]   71 	push	#0x10
                           000004    72 	Ssoft_i2c$I2C_Init$4 ==.
      0085BE 4B 05            [ 1]   73 	push	#0x05
                           000006    74 	Ssoft_i2c$I2C_Init$5 ==.
      0085C0 4B 50            [ 1]   75 	push	#0x50
                           000008    76 	Ssoft_i2c$I2C_Init$6 ==.
      0085C2 CD 80 C8         [ 4]   77 	call	_GPIO_Init
      0085C5 5B 04            [ 2]   78 	addw	sp, #4
                           00000D    79 	Ssoft_i2c$I2C_Init$7 ==.
                           00000D    80 	Ssoft_i2c$I2C_Init$8 ==.
                                     81 ;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
      0085C7 4B 90            [ 1]   82 	push	#0x90
                           00000F    83 	Ssoft_i2c$I2C_Init$9 ==.
      0085C9 4B 20            [ 1]   84 	push	#0x20
                           000011    85 	Ssoft_i2c$I2C_Init$10 ==.
      0085CB 4B 05            [ 1]   86 	push	#0x05
                           000013    87 	Ssoft_i2c$I2C_Init$11 ==.
      0085CD 4B 50            [ 1]   88 	push	#0x50
                           000015    89 	Ssoft_i2c$I2C_Init$12 ==.
      0085CF CD 80 C8         [ 4]   90 	call	_GPIO_Init
      0085D2 5B 04            [ 2]   91 	addw	sp, #4
                           00001A    92 	Ssoft_i2c$I2C_Init$13 ==.
                           00001A    93 	Ssoft_i2c$I2C_Init$14 ==.
                                     94 ;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
      0085D4 72 18 50 05      [ 1]   95 	bset	20485, #4
                           00001E    96 	Ssoft_i2c$I2C_Init$15 ==.
                                     97 ;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
      0085D8 72 1A 50 05      [ 1]   98 	bset	20485, #5
                           000022    99 	Ssoft_i2c$I2C_Init$16 ==.
                                    100 ;	Source/Driver/Src/soft_i2c.c: 33: }
                           000022   101 	Ssoft_i2c$I2C_Init$17 ==.
                           000022   102 	XG$I2C_Init$0$0 ==.
      0085DC 81               [ 4]  103 	ret
                           000023   104 	Ssoft_i2c$I2C_Init$18 ==.
                           000023   105 	Ssoft_i2c$I2C_Start$19 ==.
                                    106 ;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
                                    107 ;	-----------------------------------------
                                    108 ;	 function I2C_Start
                                    109 ;	-----------------------------------------
      0085DD                        110 _I2C_Start:
                           000023   111 	Ssoft_i2c$I2C_Start$20 ==.
                           000023   112 	Ssoft_i2c$I2C_Start$21 ==.
                                    113 ;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
      0085DD 72 1A 50 05      [ 1]  114 	bset	20485, #5
                           000027   115 	Ssoft_i2c$I2C_Start$22 ==.
                                    116 ;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
      0085E1 72 18 50 05      [ 1]  117 	bset	20485, #4
                           00002B   118 	Ssoft_i2c$I2C_Start$23 ==.
                                    119 ;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
      0085E5 CD 87 C8         [ 4]  120 	call	_delay_us
                           00002E   121 	Ssoft_i2c$I2C_Start$24 ==.
                                    122 ;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
      0085E8 72 1B 50 05      [ 1]  123 	bres	20485, #5
                           000032   124 	Ssoft_i2c$I2C_Start$25 ==.
                                    125 ;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
      0085EC CD 87 C8         [ 4]  126 	call	_delay_us
                           000035   127 	Ssoft_i2c$I2C_Start$26 ==.
                                    128 ;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //钳住I2C总线，准备发送或接收数据
      0085EF 72 19 50 05      [ 1]  129 	bres	20485, #4
                           000039   130 	Ssoft_i2c$I2C_Start$27 ==.
                                    131 ;	Source/Driver/Src/soft_i2c.c: 44: }
                           000039   132 	Ssoft_i2c$I2C_Start$28 ==.
                           000039   133 	XG$I2C_Start$0$0 ==.
      0085F3 81               [ 4]  134 	ret
                           00003A   135 	Ssoft_i2c$I2C_Start$29 ==.
                           00003A   136 	Ssoft_i2c$I2C_Stop$30 ==.
                                    137 ;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
                                    138 ;	-----------------------------------------
                                    139 ;	 function I2C_Stop
                                    140 ;	-----------------------------------------
      0085F4                        141 _I2C_Stop:
                           00003A   142 	Ssoft_i2c$I2C_Stop$31 ==.
                           00003A   143 	Ssoft_i2c$I2C_Stop$32 ==.
                                    144 ;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
      0085F4 72 19 50 05      [ 1]  145 	bres	20485, #4
                           00003E   146 	Ssoft_i2c$I2C_Stop$33 ==.
                                    147 ;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
      0085F8 72 1B 50 05      [ 1]  148 	bres	20485, #5
                           000042   149 	Ssoft_i2c$I2C_Stop$34 ==.
                                    150 ;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
      0085FC CD 87 C8         [ 4]  151 	call	_delay_us
                           000045   152 	Ssoft_i2c$I2C_Stop$35 ==.
                                    153 ;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
      0085FF 72 18 50 05      [ 1]  154 	bset	20485, #4
                           000049   155 	Ssoft_i2c$I2C_Stop$36 ==.
                                    156 ;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//发送I2C总线结束信号
      008603 C6 50 05         [ 1]  157 	ld	a, 0x5005
      008606 AA 20            [ 1]  158 	or	a, #0x20
      008608 C7 50 05         [ 1]  159 	ld	0x5005, a
                           000051   160 	Ssoft_i2c$I2C_Stop$37 ==.
                                    161 ;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
      00860B CC 87 C8         [ 2]  162 	jp	_delay_us
                           000054   163 	Ssoft_i2c$I2C_Stop$38 ==.
                                    164 ;	Source/Driver/Src/soft_i2c.c: 56: }
                           000054   165 	Ssoft_i2c$I2C_Stop$39 ==.
                           000054   166 	XG$I2C_Stop$0$0 ==.
      00860E 81               [ 4]  167 	ret
                           000055   168 	Ssoft_i2c$I2C_Stop$40 ==.
                           000055   169 	Ssoft_i2c$I2C_Wait_Ack$41 ==.
                                    170 ;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
                                    171 ;	-----------------------------------------
                                    172 ;	 function I2C_Wait_Ack
                                    173 ;	-----------------------------------------
      00860F                        174 _I2C_Wait_Ack:
                           000055   175 	Ssoft_i2c$I2C_Wait_Ack$42 ==.
                           000055   176 	Ssoft_i2c$I2C_Wait_Ack$43 ==.
                                    177 ;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
      00860F C6 50 05         [ 1]  178 	ld	a, 0x5005
      008612 AA 20            [ 1]  179 	or	a, #0x20
      008614 C7 50 05         [ 1]  180 	ld	0x5005, a
      008617 9D               [ 1]  181 	nop
                           00005E   182 	Ssoft_i2c$I2C_Wait_Ack$44 ==.
                                    183 ;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
      008618 C6 50 05         [ 1]  184 	ld	a, 0x5005
      00861B AA 10            [ 1]  185 	or	a, #0x10
      00861D C7 50 05         [ 1]  186 	ld	0x5005, a
      008620 9D               [ 1]  187 	nop
                           000067   188 	Ssoft_i2c$I2C_Wait_Ack$45 ==.
                                    189 ;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
      008621 5F               [ 1]  190 	clrw	x
      008622                        191 00103$:
      008622 C6 50 06         [ 1]  192 	ld	a, 0x5006
      008625 A4 20            [ 1]  193 	and	a, #0x20
      008627 4E               [ 1]  194 	swap	a
      008628 A4 0F            [ 1]  195 	and	a, #0x0f
      00862A 44               [ 1]  196 	srl	a
      00862B 4D               [ 1]  197 	tnz	a
      00862C 27 0D            [ 1]  198 	jreq	00105$
                           000074   199 	Ssoft_i2c$I2C_Wait_Ack$46 ==.
                           000074   200 	Ssoft_i2c$I2C_Wait_Ack$47 ==.
                                    201 ;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
      00862E 5C               [ 1]  202 	incw	x
                           000075   203 	Ssoft_i2c$I2C_Wait_Ack$48 ==.
                                    204 ;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
      00862F 9F               [ 1]  205 	ld	a, xl
      008630 A1 FA            [ 1]  206 	cp	a, #0xfa
      008632 23 EE            [ 2]  207 	jrule	00103$
                           00007A   208 	Ssoft_i2c$I2C_Wait_Ack$49 ==.
                           00007A   209 	Ssoft_i2c$I2C_Wait_Ack$50 ==.
                                    210 ;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
      008634 CD 85 F4         [ 4]  211 	call	_I2C_Stop
                           00007D   212 	Ssoft_i2c$I2C_Wait_Ack$51 ==.
                                    213 ;	Source/Driver/Src/soft_i2c.c: 73: return 1;
      008637 A6 01            [ 1]  214 	ld	a, #0x01
      008639 20 05            [ 2]  215 	jra	00106$
                           000081   216 	Ssoft_i2c$I2C_Wait_Ack$52 ==.
      00863B                        217 00105$:
                           000081   218 	Ssoft_i2c$I2C_Wait_Ack$53 ==.
                                    219 ;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//时钟输出0           
      00863B 72 19 50 05      [ 1]  220 	bres	20485, #4
                           000085   221 	Ssoft_i2c$I2C_Wait_Ack$54 ==.
                                    222 ;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
      00863F 4F               [ 1]  223 	clr	a
      008640                        224 00106$:
                           000086   225 	Ssoft_i2c$I2C_Wait_Ack$55 ==.
                                    226 ;	Source/Driver/Src/soft_i2c.c: 78: }
                           000086   227 	Ssoft_i2c$I2C_Wait_Ack$56 ==.
                           000086   228 	XG$I2C_Wait_Ack$0$0 ==.
      008640 81               [ 4]  229 	ret
                           000087   230 	Ssoft_i2c$I2C_Wait_Ack$57 ==.
                           000087   231 	Ssoft_i2c$I2C_Ack$58 ==.
                                    232 ;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
                                    233 ;	-----------------------------------------
                                    234 ;	 function I2C_Ack
                                    235 ;	-----------------------------------------
      008641                        236 _I2C_Ack:
                           000087   237 	Ssoft_i2c$I2C_Ack$59 ==.
                           000087   238 	Ssoft_i2c$I2C_Ack$60 ==.
                                    239 ;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
      008641 72 19 50 05      [ 1]  240 	bres	20485, #4
                           00008B   241 	Ssoft_i2c$I2C_Ack$61 ==.
                                    242 ;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
      008645 72 1B 50 05      [ 1]  243 	bres	20485, #5
                           00008F   244 	Ssoft_i2c$I2C_Ack$62 ==.
                                    245 ;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
      008649 CD 87 C8         [ 4]  246 	call	_delay_us
                           000092   247 	Ssoft_i2c$I2C_Ack$63 ==.
                                    248 ;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
      00864C 72 18 50 05      [ 1]  249 	bset	20485, #4
                           000096   250 	Ssoft_i2c$I2C_Ack$64 ==.
                                    251 ;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
      008650 CD 87 C8         [ 4]  252 	call	_delay_us
                           000099   253 	Ssoft_i2c$I2C_Ack$65 ==.
                                    254 ;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
      008653 72 19 50 05      [ 1]  255 	bres	20485, #4
                           00009D   256 	Ssoft_i2c$I2C_Ack$66 ==.
                                    257 ;	Source/Driver/Src/soft_i2c.c: 89: }
                           00009D   258 	Ssoft_i2c$I2C_Ack$67 ==.
                           00009D   259 	XG$I2C_Ack$0$0 ==.
      008657 81               [ 4]  260 	ret
                           00009E   261 	Ssoft_i2c$I2C_Ack$68 ==.
                           00009E   262 	Ssoft_i2c$I2C_NAck$69 ==.
                                    263 ;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
                                    264 ;	-----------------------------------------
                                    265 ;	 function I2C_NAck
                                    266 ;	-----------------------------------------
      008658                        267 _I2C_NAck:
                           00009E   268 	Ssoft_i2c$I2C_NAck$70 ==.
                           00009E   269 	Ssoft_i2c$I2C_NAck$71 ==.
                                    270 ;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
      008658 72 19 50 05      [ 1]  271 	bres	20485, #4
                           0000A2   272 	Ssoft_i2c$I2C_NAck$72 ==.
                                    273 ;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
      00865C 72 1A 50 05      [ 1]  274 	bset	20485, #5
                           0000A6   275 	Ssoft_i2c$I2C_NAck$73 ==.
                                    276 ;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
      008660 CD 87 C8         [ 4]  277 	call	_delay_us
                           0000A9   278 	Ssoft_i2c$I2C_NAck$74 ==.
                                    279 ;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
      008663 72 18 50 05      [ 1]  280 	bset	20485, #4
                           0000AD   281 	Ssoft_i2c$I2C_NAck$75 ==.
                                    282 ;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
      008667 CD 87 C8         [ 4]  283 	call	_delay_us
                           0000B0   284 	Ssoft_i2c$I2C_NAck$76 ==.
                                    285 ;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
      00866A 72 19 50 05      [ 1]  286 	bres	20485, #4
                           0000B4   287 	Ssoft_i2c$I2C_NAck$77 ==.
                                    288 ;	Source/Driver/Src/soft_i2c.c: 100: }
                           0000B4   289 	Ssoft_i2c$I2C_NAck$78 ==.
                           0000B4   290 	XG$I2C_NAck$0$0 ==.
      00866E 81               [ 4]  291 	ret
                           0000B5   292 	Ssoft_i2c$I2C_NAck$79 ==.
                           0000B5   293 	Ssoft_i2c$I2C_Send_Byte$80 ==.
                                    294 ;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
                                    295 ;	-----------------------------------------
                                    296 ;	 function I2C_Send_Byte
                                    297 ;	-----------------------------------------
      00866F                        298 _I2C_Send_Byte:
                           0000B5   299 	Ssoft_i2c$I2C_Send_Byte$81 ==.
      00866F 88               [ 1]  300 	push	a
                           0000B6   301 	Ssoft_i2c$I2C_Send_Byte$82 ==.
                           0000B6   302 	Ssoft_i2c$I2C_Send_Byte$83 ==.
                                    303 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008670 72 19 50 05      [ 1]  304 	bres	20485, #4
                           0000BA   305 	Ssoft_i2c$I2C_Send_Byte$84 ==.
                                    306 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008674 0F 01            [ 1]  307 	clr	(0x01, sp)
      008676                        308 00105$:
                           0000BC   309 	Ssoft_i2c$I2C_Send_Byte$85 ==.
                           0000BC   310 	Ssoft_i2c$I2C_Send_Byte$86 ==.
                                    311 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008676 7B 04            [ 1]  312 	ld	a, (0x04, sp)
      008678 A4 80            [ 1]  313 	and	a, #0x80
      00867A 97               [ 1]  314 	ld	xl, a
      00867B 4F               [ 1]  315 	clr	a
      00867C 95               [ 1]  316 	ld	xh, a
      00867D 4F               [ 1]  317 	clr	a
      00867E 5D               [ 2]  318 	tnzw	x
      00867F 2A 01            [ 1]  319 	jrpl	00120$
      008681 4A               [ 1]  320 	dec	a
      008682                        321 00120$:
      008682 01               [ 1]  322 	rrwa	x
      008683 48               [ 1]  323 	sll	a
      008684 59               [ 2]  324 	rlcw	x
                           0000CB   325 	Ssoft_i2c$I2C_Send_Byte$87 ==.
                           0000CB   326 	Ssoft_i2c$I2C_Send_Byte$88 ==.
                                    327 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//拉低时钟开始数据传输
      008685 C6 50 05         [ 1]  328 	ld	a, 0x5005
                           0000CE   329 	Ssoft_i2c$I2C_Send_Byte$89 ==.
                                    330 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008688 5D               [ 2]  331 	tnzw	x
      008689 27 07            [ 1]  332 	jreq	00102$
                           0000D1   333 	Ssoft_i2c$I2C_Send_Byte$90 ==.
                                    334 ;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
      00868B AA 20            [ 1]  335 	or	a, #0x20
      00868D C7 50 05         [ 1]  336 	ld	0x5005, a
      008690 20 05            [ 2]  337 	jra	00103$
      008692                        338 00102$:
                           0000D8   339 	Ssoft_i2c$I2C_Send_Byte$91 ==.
                                    340 ;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
      008692 A4 DF            [ 1]  341 	and	a, #0xdf
      008694 C7 50 05         [ 1]  342 	ld	0x5005, a
      008697                        343 00103$:
                           0000DD   344 	Ssoft_i2c$I2C_Send_Byte$92 ==.
                                    345 ;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
      008697 08 04            [ 1]  346 	sll	(0x04, sp)
                           0000DF   347 	Ssoft_i2c$I2C_Send_Byte$93 ==.
                                    348 ;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //对TEA5767这三个延时都是必须的
      008699 CD 87 C8         [ 4]  349 	call	_delay_us
                           0000E2   350 	Ssoft_i2c$I2C_Send_Byte$94 ==.
                                    351 ;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
      00869C 72 18 50 05      [ 1]  352 	bset	20485, #4
                           0000E6   353 	Ssoft_i2c$I2C_Send_Byte$95 ==.
                                    354 ;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
      0086A0 CD 87 C8         [ 4]  355 	call	_delay_us
                           0000E9   356 	Ssoft_i2c$I2C_Send_Byte$96 ==.
                                    357 ;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
      0086A3 72 19 50 05      [ 1]  358 	bres	20485, #4
                           0000ED   359 	Ssoft_i2c$I2C_Send_Byte$97 ==.
                                    360 ;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
      0086A7 CD 87 C8         [ 4]  361 	call	_delay_us
                           0000F0   362 	Ssoft_i2c$I2C_Send_Byte$98 ==.
                                    363 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      0086AA 0C 01            [ 1]  364 	inc	(0x01, sp)
      0086AC 7B 01            [ 1]  365 	ld	a, (0x01, sp)
      0086AE A1 08            [ 1]  366 	cp	a, #0x08
      0086B0 24 03            [ 1]  367 	jrnc	00122$
      0086B2 CC 86 76         [ 2]  368 	jp	00105$
      0086B5                        369 00122$:
                           0000FB   370 	Ssoft_i2c$I2C_Send_Byte$99 ==.
                                    371 ;	Source/Driver/Src/soft_i2c.c: 123: }
      0086B5 84               [ 1]  372 	pop	a
                           0000FC   373 	Ssoft_i2c$I2C_Send_Byte$100 ==.
                           0000FC   374 	Ssoft_i2c$I2C_Send_Byte$101 ==.
                           0000FC   375 	XG$I2C_Send_Byte$0$0 ==.
      0086B6 81               [ 4]  376 	ret
                           0000FD   377 	Ssoft_i2c$I2C_Send_Byte$102 ==.
                           0000FD   378 	Ssoft_i2c$I2C_Read_Byte$103 ==.
                                    379 ;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
                                    380 ;	-----------------------------------------
                                    381 ;	 function I2C_Read_Byte
                                    382 ;	-----------------------------------------
      0086B7                        383 _I2C_Read_Byte:
                           0000FD   384 	Ssoft_i2c$I2C_Read_Byte$104 ==.
      0086B7 89               [ 2]  385 	pushw	x
                           0000FE   386 	Ssoft_i2c$I2C_Read_Byte$105 ==.
                           0000FE   387 	Ssoft_i2c$I2C_Read_Byte$106 ==.
                                    388 ;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
      0086B8 0F 01            [ 1]  389 	clr	(0x01, sp)
                           000100   390 	Ssoft_i2c$I2C_Read_Byte$107 ==.
                                    391 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      0086BA 0F 02            [ 1]  392 	clr	(0x02, sp)
      0086BC                        393 00107$:
                           000102   394 	Ssoft_i2c$I2C_Read_Byte$108 ==.
                           000102   395 	Ssoft_i2c$I2C_Read_Byte$109 ==.
                                    396 ;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
      0086BC 72 19 50 05      [ 1]  397 	bres	20485, #4
                           000106   398 	Ssoft_i2c$I2C_Read_Byte$110 ==.
                                    399 ;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
      0086C0 CD 87 C8         [ 4]  400 	call	_delay_us
                           000109   401 	Ssoft_i2c$I2C_Read_Byte$111 ==.
                                    402 ;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
      0086C3 72 18 50 05      [ 1]  403 	bset	20485, #4
                           00010D   404 	Ssoft_i2c$I2C_Read_Byte$112 ==.
                                    405 ;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
      0086C7 08 01            [ 1]  406 	sll	(0x01, sp)
                           00010F   407 	Ssoft_i2c$I2C_Read_Byte$113 ==.
                                    408 ;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
      0086C9 C6 50 06         [ 1]  409 	ld	a, 0x5006
      0086CC A4 20            [ 1]  410 	and	a, #0x20
      0086CE 4E               [ 1]  411 	swap	a
      0086CF A4 0F            [ 1]  412 	and	a, #0x0f
      0086D1 44               [ 1]  413 	srl	a
      0086D2 4D               [ 1]  414 	tnz	a
      0086D3 27 02            [ 1]  415 	jreq	00102$
      0086D5 0C 01            [ 1]  416 	inc	(0x01, sp)
      0086D7                        417 00102$:
                           00011D   418 	Ssoft_i2c$I2C_Read_Byte$114 ==.
                                    419 ;	Source/Driver/Src/soft_i2c.c: 137: nop();
      0086D7 9D               [ 1]  420 	nop
                           00011E   421 	Ssoft_i2c$I2C_Read_Byte$115 ==.
                           00011E   422 	Ssoft_i2c$I2C_Read_Byte$116 ==.
                                    423 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      0086D8 0C 02            [ 1]  424 	inc	(0x02, sp)
      0086DA 7B 02            [ 1]  425 	ld	a, (0x02, sp)
      0086DC A1 08            [ 1]  426 	cp	a, #0x08
      0086DE 25 DC            [ 1]  427 	jrc	00107$
                           000126   428 	Ssoft_i2c$I2C_Read_Byte$117 ==.
                                    429 ;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
      0086E0 0D 05            [ 1]  430 	tnz	(0x05, sp)
      0086E2 26 05            [ 1]  431 	jrne	00105$
                           00012A   432 	Ssoft_i2c$I2C_Read_Byte$118 ==.
                                    433 ;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//发送nACK
      0086E4 CD 86 58         [ 4]  434 	call	_I2C_NAck
      0086E7 20 03            [ 2]  435 	jra	00106$
      0086E9                        436 00105$:
                           00012F   437 	Ssoft_i2c$I2C_Read_Byte$119 ==.
                                    438 ;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //发送ACK   
      0086E9 CD 86 41         [ 4]  439 	call	_I2C_Ack
      0086EC                        440 00106$:
                           000132   441 	Ssoft_i2c$I2C_Read_Byte$120 ==.
                                    442 ;	Source/Driver/Src/soft_i2c.c: 143: return receive;
      0086EC 7B 01            [ 1]  443 	ld	a, (0x01, sp)
                           000134   444 	Ssoft_i2c$I2C_Read_Byte$121 ==.
                                    445 ;	Source/Driver/Src/soft_i2c.c: 144: }
      0086EE 85               [ 2]  446 	popw	x
                           000135   447 	Ssoft_i2c$I2C_Read_Byte$122 ==.
                           000135   448 	Ssoft_i2c$I2C_Read_Byte$123 ==.
                           000135   449 	XG$I2C_Read_Byte$0$0 ==.
      0086EF 81               [ 4]  450 	ret
                           000136   451 	Ssoft_i2c$I2C_Read_Byte$124 ==.
                           000136   452 	Ssoft_i2c$I2C_MasterReceiveData$125 ==.
                                    453 ;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    454 ;	-----------------------------------------
                                    455 ;	 function I2C_MasterReceiveData
                                    456 ;	-----------------------------------------
      0086F0                        457 _I2C_MasterReceiveData:
                           000136   458 	Ssoft_i2c$I2C_MasterReceiveData$126 ==.
      0086F0 52 03            [ 2]  459 	sub	sp, #3
                           000138   460 	Ssoft_i2c$I2C_MasterReceiveData$127 ==.
                           000138   461 	Ssoft_i2c$I2C_MasterReceiveData$128 ==.
                                    462 ;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
      0086F2 CD 85 DD         [ 4]  463 	call	_I2C_Start
                           00013B   464 	Ssoft_i2c$I2C_MasterReceiveData$129 ==.
                                    465 ;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      0086F5 7B 06            [ 1]  466 	ld	a, (0x06, sp)
      0086F7 48               [ 1]  467 	sll	a
      0086F8 6B 03            [ 1]  468 	ld	(0x03, sp), a
      0086FA 88               [ 1]  469 	push	a
                           000141   470 	Ssoft_i2c$I2C_MasterReceiveData$130 ==.
      0086FB CD 86 6F         [ 4]  471 	call	_I2C_Send_Byte
      0086FE 84               [ 1]  472 	pop	a
                           000145   473 	Ssoft_i2c$I2C_MasterReceiveData$131 ==.
                           000145   474 	Ssoft_i2c$I2C_MasterReceiveData$132 ==.
                                    475 ;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
      0086FF CD 86 0F         [ 4]  476 	call	_I2C_Wait_Ack
      008702 4D               [ 1]  477 	tnz	a
      008703 27 04            [ 1]  478 	jreq	00102$
                           00014B   479 	Ssoft_i2c$I2C_MasterReceiveData$133 ==.
                                    480 ;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
      008705 4F               [ 1]  481 	clr	a
      008706 CC 87 75         [ 2]  482 	jp	00114$
      008709                        483 00102$:
                           00014F   484 	Ssoft_i2c$I2C_MasterReceiveData$134 ==.
                                    485 ;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
      008709 7B 07            [ 1]  486 	ld	a, (0x07, sp)
      00870B 88               [ 1]  487 	push	a
                           000152   488 	Ssoft_i2c$I2C_MasterReceiveData$135 ==.
      00870C CD 86 6F         [ 4]  489 	call	_I2C_Send_Byte
      00870F 84               [ 1]  490 	pop	a
                           000156   491 	Ssoft_i2c$I2C_MasterReceiveData$136 ==.
                           000156   492 	Ssoft_i2c$I2C_MasterReceiveData$137 ==.
                                    493 ;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
      008710 CD 86 0F         [ 4]  494 	call	_I2C_Wait_Ack
      008713 4D               [ 1]  495 	tnz	a
      008714 27 04            [ 1]  496 	jreq	00104$
                           00015C   497 	Ssoft_i2c$I2C_MasterReceiveData$138 ==.
                                    498 ;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
      008716 4F               [ 1]  499 	clr	a
      008717 CC 87 75         [ 2]  500 	jp	00114$
      00871A                        501 00104$:
                           000160   502 	Ssoft_i2c$I2C_MasterReceiveData$139 ==.
                                    503 ;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
      00871A CD 85 DD         [ 4]  504 	call	_I2C_Start
                           000163   505 	Ssoft_i2c$I2C_MasterReceiveData$140 ==.
                                    506 ;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//准备接收
      00871D 7B 03            [ 1]  507 	ld	a, (0x03, sp)
      00871F AA 01            [ 1]  508 	or	a, #0x01
      008721 88               [ 1]  509 	push	a
                           000168   510 	Ssoft_i2c$I2C_MasterReceiveData$141 ==.
      008722 CD 86 6F         [ 4]  511 	call	_I2C_Send_Byte
      008725 84               [ 1]  512 	pop	a
                           00016C   513 	Ssoft_i2c$I2C_MasterReceiveData$142 ==.
                           00016C   514 	Ssoft_i2c$I2C_MasterReceiveData$143 ==.
                                    515 ;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
      008726 CD 86 0F         [ 4]  516 	call	_I2C_Wait_Ack
      008729 4D               [ 1]  517 	tnz	a
      00872A 27 04            [ 1]  518 	jreq	00121$
                           000172   519 	Ssoft_i2c$I2C_MasterReceiveData$144 ==.
                                    520 ;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
      00872C 4F               [ 1]  521 	clr	a
      00872D CC 87 75         [ 2]  522 	jp	00114$
                           000176   523 	Ssoft_i2c$I2C_MasterReceiveData$145 ==.
                                    524 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008730                        525 00121$:
      008730 0F 03            [ 1]  526 	clr	(0x03, sp)
                           000178   527 	Ssoft_i2c$I2C_MasterReceiveData$146 ==.
      008732                        528 00112$:
      008732 7B 03            [ 1]  529 	ld	a, (0x03, sp)
      008734 11 0A            [ 1]  530 	cp	a, (0x0a, sp)
      008736 25 03            [ 1]  531 	jrc	00150$
      008738 CC 87 70         [ 2]  532 	jp	00110$
      00873B                        533 00150$:
                           000181   534 	Ssoft_i2c$I2C_MasterReceiveData$147 ==.
                           000181   535 	Ssoft_i2c$I2C_MasterReceiveData$148 ==.
                                    536 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      00873B 5F               [ 1]  537 	clrw	x
      00873C 7B 0A            [ 1]  538 	ld	a, (0x0a, sp)
      00873E 97               [ 1]  539 	ld	xl, a
      00873F 5A               [ 2]  540 	decw	x
      008740 1F 01            [ 2]  541 	ldw	(0x01, sp), x
      008742 90 5F            [ 1]  542 	clrw	y
      008744 7B 03            [ 1]  543 	ld	a, (0x03, sp)
      008746 90 97            [ 1]  544 	ld	yl, a
                           00018E   545 	Ssoft_i2c$I2C_MasterReceiveData$149 ==.
                           00018E   546 	Ssoft_i2c$I2C_MasterReceiveData$150 ==.
                                    547 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008748 5F               [ 1]  548 	clrw	x
      008749 7B 03            [ 1]  549 	ld	a, (0x03, sp)
      00874B 97               [ 1]  550 	ld	xl, a
      00874C 72 FB 08         [ 2]  551 	addw	x, (0x08, sp)
                           000195   552 	Ssoft_i2c$I2C_MasterReceiveData$151 ==.
                                    553 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      00874F 51               [ 1]  554 	exgw	x, y
      008750 13 01            [ 2]  555 	cpw	x, (0x01, sp)
      008752 51               [ 1]  556 	exgw	x, y
      008753 26 0C            [ 1]  557 	jrne	00108$
                           00019B   558 	Ssoft_i2c$I2C_MasterReceiveData$152 ==.
                           00019B   559 	Ssoft_i2c$I2C_MasterReceiveData$153 ==.
                                    560 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008755 89               [ 2]  561 	pushw	x
                           00019C   562 	Ssoft_i2c$I2C_MasterReceiveData$154 ==.
      008756 4B 00            [ 1]  563 	push	#0x00
                           00019E   564 	Ssoft_i2c$I2C_MasterReceiveData$155 ==.
      008758 CD 86 B7         [ 4]  565 	call	_I2C_Read_Byte
      00875B 5B 01            [ 2]  566 	addw	sp, #1
                           0001A3   567 	Ssoft_i2c$I2C_MasterReceiveData$156 ==.
      00875D 85               [ 2]  568 	popw	x
                           0001A4   569 	Ssoft_i2c$I2C_MasterReceiveData$157 ==.
      00875E F7               [ 1]  570 	ld	(x), a
      00875F 20 0A            [ 2]  571 	jra	00113$
      008761                        572 00108$:
                           0001A7   573 	Ssoft_i2c$I2C_MasterReceiveData$158 ==.
                                    574 ;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
      008761 89               [ 2]  575 	pushw	x
                           0001A8   576 	Ssoft_i2c$I2C_MasterReceiveData$159 ==.
      008762 4B 01            [ 1]  577 	push	#0x01
                           0001AA   578 	Ssoft_i2c$I2C_MasterReceiveData$160 ==.
      008764 CD 86 B7         [ 4]  579 	call	_I2C_Read_Byte
      008767 5B 01            [ 2]  580 	addw	sp, #1
                           0001AF   581 	Ssoft_i2c$I2C_MasterReceiveData$161 ==.
      008769 85               [ 2]  582 	popw	x
                           0001B0   583 	Ssoft_i2c$I2C_MasterReceiveData$162 ==.
      00876A F7               [ 1]  584 	ld	(x), a
      00876B                        585 00113$:
                           0001B1   586 	Ssoft_i2c$I2C_MasterReceiveData$163 ==.
                                    587 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      00876B 0C 03            [ 1]  588 	inc	(0x03, sp)
      00876D CC 87 32         [ 2]  589 	jp	00112$
      008770                        590 00110$:
                           0001B6   591 	Ssoft_i2c$I2C_MasterReceiveData$164 ==.
                                    592 ;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
      008770 CD 85 F4         [ 4]  593 	call	_I2C_Stop
                           0001B9   594 	Ssoft_i2c$I2C_MasterReceiveData$165 ==.
                                    595 ;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
      008773 A6 01            [ 1]  596 	ld	a, #0x01
      008775                        597 00114$:
                           0001BB   598 	Ssoft_i2c$I2C_MasterReceiveData$166 ==.
                                    599 ;	Source/Driver/Src/soft_i2c.c: 218: }
      008775 5B 03            [ 2]  600 	addw	sp, #3
                           0001BD   601 	Ssoft_i2c$I2C_MasterReceiveData$167 ==.
                           0001BD   602 	Ssoft_i2c$I2C_MasterReceiveData$168 ==.
                           0001BD   603 	XG$I2C_MasterReceiveData$0$0 ==.
      008777 81               [ 4]  604 	ret
                           0001BE   605 	Ssoft_i2c$I2C_MasterReceiveData$169 ==.
                           0001BE   606 	Ssoft_i2c$I2C_MasterSendData$170 ==.
                                    607 ;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    608 ;	-----------------------------------------
                                    609 ;	 function I2C_MasterSendData
                                    610 ;	-----------------------------------------
      008778                        611 _I2C_MasterSendData:
                           0001BE   612 	Ssoft_i2c$I2C_MasterSendData$171 ==.
      008778 88               [ 1]  613 	push	a
                           0001BF   614 	Ssoft_i2c$I2C_MasterSendData$172 ==.
                           0001BF   615 	Ssoft_i2c$I2C_MasterSendData$173 ==.
                                    616 ;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
      008779 CD 85 DD         [ 4]  617 	call	_I2C_Start
                           0001C2   618 	Ssoft_i2c$I2C_MasterSendData$174 ==.
                                    619 ;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//发送从机地址
      00877C 7B 04            [ 1]  620 	ld	a, (0x04, sp)
      00877E 48               [ 1]  621 	sll	a
      00877F 88               [ 1]  622 	push	a
                           0001C6   623 	Ssoft_i2c$I2C_MasterSendData$175 ==.
      008780 CD 86 6F         [ 4]  624 	call	_I2C_Send_Byte
      008783 84               [ 1]  625 	pop	a
                           0001CA   626 	Ssoft_i2c$I2C_MasterSendData$176 ==.
                           0001CA   627 	Ssoft_i2c$I2C_MasterSendData$177 ==.
                                    628 ;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
      008784 CD 86 0F         [ 4]  629 	call	_I2C_Wait_Ack
      008787 4D               [ 1]  630 	tnz	a
      008788 27 04            [ 1]  631 	jreq	00102$
                           0001D0   632 	Ssoft_i2c$I2C_MasterSendData$178 ==.
                                    633 ;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
      00878A 4F               [ 1]  634 	clr	a
      00878B CC 87 C5         [ 2]  635 	jp	00111$
      00878E                        636 00102$:
                           0001D4   637 	Ssoft_i2c$I2C_MasterSendData$179 ==.
                                    638 ;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
      00878E 7B 05            [ 1]  639 	ld	a, (0x05, sp)
      008790 88               [ 1]  640 	push	a
                           0001D7   641 	Ssoft_i2c$I2C_MasterSendData$180 ==.
      008791 CD 86 6F         [ 4]  642 	call	_I2C_Send_Byte
      008794 84               [ 1]  643 	pop	a
                           0001DB   644 	Ssoft_i2c$I2C_MasterSendData$181 ==.
                           0001DB   645 	Ssoft_i2c$I2C_MasterSendData$182 ==.
                                    646 ;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
      008795 CD 86 0F         [ 4]  647 	call	_I2C_Wait_Ack
      008798 4D               [ 1]  648 	tnz	a
      008799 27 03            [ 1]  649 	jreq	00117$
                           0001E1   650 	Ssoft_i2c$I2C_MasterSendData$183 ==.
                                    651 ;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
      00879B 4F               [ 1]  652 	clr	a
      00879C 20 27            [ 2]  653 	jra	00111$
                           0001E4   654 	Ssoft_i2c$I2C_MasterSendData$184 ==.
                                    655 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      00879E                        656 00117$:
      00879E 0F 01            [ 1]  657 	clr	(0x01, sp)
                           0001E6   658 	Ssoft_i2c$I2C_MasterSendData$185 ==.
      0087A0                        659 00109$:
      0087A0 7B 01            [ 1]  660 	ld	a, (0x01, sp)
      0087A2 11 08            [ 1]  661 	cp	a, (0x08, sp)
      0087A4 24 1A            [ 1]  662 	jrnc	00107$
                           0001EC   663 	Ssoft_i2c$I2C_MasterSendData$186 ==.
                           0001EC   664 	Ssoft_i2c$I2C_MasterSendData$187 ==.
                                    665 ;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
      0087A6 5F               [ 1]  666 	clrw	x
      0087A7 7B 01            [ 1]  667 	ld	a, (0x01, sp)
      0087A9 97               [ 1]  668 	ld	xl, a
      0087AA 72 FB 06         [ 2]  669 	addw	x, (0x06, sp)
      0087AD F6               [ 1]  670 	ld	a, (x)
      0087AE 88               [ 1]  671 	push	a
                           0001F5   672 	Ssoft_i2c$I2C_MasterSendData$188 ==.
      0087AF CD 86 6F         [ 4]  673 	call	_I2C_Send_Byte
      0087B2 84               [ 1]  674 	pop	a
                           0001F9   675 	Ssoft_i2c$I2C_MasterSendData$189 ==.
                           0001F9   676 	Ssoft_i2c$I2C_MasterSendData$190 ==.
                                    677 ;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
      0087B3 CD 86 0F         [ 4]  678 	call	_I2C_Wait_Ack
      0087B6 4D               [ 1]  679 	tnz	a
      0087B7 27 03            [ 1]  680 	jreq	00110$
                           0001FF   681 	Ssoft_i2c$I2C_MasterSendData$191 ==.
                                    682 ;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
      0087B9 4F               [ 1]  683 	clr	a
      0087BA 20 09            [ 2]  684 	jra	00111$
      0087BC                        685 00110$:
                           000202   686 	Ssoft_i2c$I2C_MasterSendData$192 ==.
                           000202   687 	Ssoft_i2c$I2C_MasterSendData$193 ==.
                                    688 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      0087BC 0C 01            [ 1]  689 	inc	(0x01, sp)
      0087BE 20 E0            [ 2]  690 	jra	00109$
      0087C0                        691 00107$:
                           000206   692 	Ssoft_i2c$I2C_MasterSendData$194 ==.
                           000206   693 	Ssoft_i2c$I2C_MasterSendData$195 ==.
                                    694 ;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
      0087C0 CD 85 F4         [ 4]  695 	call	_I2C_Stop
                           000209   696 	Ssoft_i2c$I2C_MasterSendData$196 ==.
                                    697 ;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
      0087C3 A6 01            [ 1]  698 	ld	a, #0x01
      0087C5                        699 00111$:
                           00020B   700 	Ssoft_i2c$I2C_MasterSendData$197 ==.
                                    701 ;	Source/Driver/Src/soft_i2c.c: 247: }
      0087C5 5B 01            [ 2]  702 	addw	sp, #1
                           00020D   703 	Ssoft_i2c$I2C_MasterSendData$198 ==.
                           00020D   704 	Ssoft_i2c$I2C_MasterSendData$199 ==.
                           00020D   705 	XG$I2C_MasterSendData$0$0 ==.
      0087C7 81               [ 4]  706 	ret
                           00020E   707 	Ssoft_i2c$I2C_MasterSendData$200 ==.
                           00020E   708 	Ssoft_i2c$delay_us$201 ==.
                                    709 ;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
                                    710 ;	-----------------------------------------
                                    711 ;	 function delay_us
                                    712 ;	-----------------------------------------
      0087C8                        713 _delay_us:
                           00020E   714 	Ssoft_i2c$delay_us$202 ==.
                           00020E   715 	Ssoft_i2c$delay_us$203 ==.
                                    716 ;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
      0087C8 9D               [ 1]  717 	nop
      0087C9 9D               [ 1]  718 	nop
      0087CA 9D               [ 1]  719 	nop
      0087CB 9D               [ 1]  720 	nop
                           000212   721 	Ssoft_i2c$delay_us$204 ==.
                                    722 ;	Source/Driver/Src/soft_i2c.c: 254: }
                           000212   723 	Ssoft_i2c$delay_us$205 ==.
                           000212   724 	XG$delay_us$0$0 ==.
      0087CC 81               [ 4]  725 	ret
                           000213   726 	Ssoft_i2c$delay_us$206 ==.
                                    727 	.area CODE
                                    728 	.area CONST
                                    729 	.area INITIALIZER
                                    730 	.area CABS (ABS)
                                    731 
                                    732 	.area .debug_line (NOLOAD)
      000990 00 00 03 CE            733 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000994                        734 Ldebug_line_start:
      000994 00 02                  735 	.dw	2
      000996 00 00 00 7D            736 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00099A 01                     737 	.db	1
      00099B 01                     738 	.db	1
      00099C FB                     739 	.db	-5
      00099D 0F                     740 	.db	15
      00099E 0A                     741 	.db	10
      00099F 00                     742 	.db	0
      0009A0 01                     743 	.db	1
      0009A1 01                     744 	.db	1
      0009A2 01                     745 	.db	1
      0009A3 01                     746 	.db	1
      0009A4 00                     747 	.db	0
      0009A5 00                     748 	.db	0
      0009A6 00                     749 	.db	0
      0009A7 01                     750 	.db	1
      0009A8 43 3A 5C 50 72 6F 67   751 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0009D0 00                     752 	.db	0
      0009D1 43 3A 5C 50 72 6F 67   753 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0009F4 00                     754 	.db	0
      0009F5 00                     755 	.db	0
      0009F6 53 6F 75 72 63 65 2F   756 	.ascii "Source/Driver/Src/soft_i2c.c"
             44 72 69 76 65 72 2F
             53 72 63 2F 73 6F 66
             74 5F 69 32 63 2E 63
      000A12 00                     757 	.db	0
      000A13 00                     758 	.uleb128	0
      000A14 00                     759 	.uleb128	0
      000A15 00                     760 	.uleb128	0
      000A16 00                     761 	.db	0
      000A17                        762 Ldebug_line_stmt:
      000A17 00                     763 	.db	0
      000A18 05                     764 	.uleb128	5
      000A19 02                     765 	.db	2
      000A1A 00 00 85 BA            766 	.dw	0,(Ssoft_i2c$I2C_Init$0)
      000A1E 03                     767 	.db	3
      000A1F 19                     768 	.sleb128	25
      000A20 01                     769 	.db	1
      000A21 09                     770 	.db	9
      000A22 00 00                  771 	.dw	Ssoft_i2c$I2C_Init$2-Ssoft_i2c$I2C_Init$0
      000A24 03                     772 	.db	3
      000A25 03                     773 	.sleb128	3
      000A26 01                     774 	.db	1
      000A27 09                     775 	.db	9
      000A28 00 0D                  776 	.dw	Ssoft_i2c$I2C_Init$8-Ssoft_i2c$I2C_Init$2
      000A2A 03                     777 	.db	3
      000A2B 01                     778 	.sleb128	1
      000A2C 01                     779 	.db	1
      000A2D 09                     780 	.db	9
      000A2E 00 0D                  781 	.dw	Ssoft_i2c$I2C_Init$14-Ssoft_i2c$I2C_Init$8
      000A30 03                     782 	.db	3
      000A31 01                     783 	.sleb128	1
      000A32 01                     784 	.db	1
      000A33 09                     785 	.db	9
      000A34 00 04                  786 	.dw	Ssoft_i2c$I2C_Init$15-Ssoft_i2c$I2C_Init$14
      000A36 03                     787 	.db	3
      000A37 01                     788 	.sleb128	1
      000A38 01                     789 	.db	1
      000A39 09                     790 	.db	9
      000A3A 00 04                  791 	.dw	Ssoft_i2c$I2C_Init$16-Ssoft_i2c$I2C_Init$15
      000A3C 03                     792 	.db	3
      000A3D 01                     793 	.sleb128	1
      000A3E 01                     794 	.db	1
      000A3F 09                     795 	.db	9
      000A40 00 01                  796 	.dw	1+Ssoft_i2c$I2C_Init$17-Ssoft_i2c$I2C_Init$16
      000A42 00                     797 	.db	0
      000A43 01                     798 	.uleb128	1
      000A44 01                     799 	.db	1
      000A45 00                     800 	.db	0
      000A46 05                     801 	.uleb128	5
      000A47 02                     802 	.db	2
      000A48 00 00 85 DD            803 	.dw	0,(Ssoft_i2c$I2C_Start$19)
      000A4C 03                     804 	.db	3
      000A4D 23                     805 	.sleb128	35
      000A4E 01                     806 	.db	1
      000A4F 09                     807 	.db	9
      000A50 00 00                  808 	.dw	Ssoft_i2c$I2C_Start$21-Ssoft_i2c$I2C_Start$19
      000A52 03                     809 	.db	3
      000A53 02                     810 	.sleb128	2
      000A54 01                     811 	.db	1
      000A55 09                     812 	.db	9
      000A56 00 04                  813 	.dw	Ssoft_i2c$I2C_Start$22-Ssoft_i2c$I2C_Start$21
      000A58 03                     814 	.db	3
      000A59 01                     815 	.sleb128	1
      000A5A 01                     816 	.db	1
      000A5B 09                     817 	.db	9
      000A5C 00 04                  818 	.dw	Ssoft_i2c$I2C_Start$23-Ssoft_i2c$I2C_Start$22
      000A5E 03                     819 	.db	3
      000A5F 01                     820 	.sleb128	1
      000A60 01                     821 	.db	1
      000A61 09                     822 	.db	9
      000A62 00 03                  823 	.dw	Ssoft_i2c$I2C_Start$24-Ssoft_i2c$I2C_Start$23
      000A64 03                     824 	.db	3
      000A65 01                     825 	.sleb128	1
      000A66 01                     826 	.db	1
      000A67 09                     827 	.db	9
      000A68 00 04                  828 	.dw	Ssoft_i2c$I2C_Start$25-Ssoft_i2c$I2C_Start$24
      000A6A 03                     829 	.db	3
      000A6B 01                     830 	.sleb128	1
      000A6C 01                     831 	.db	1
      000A6D 09                     832 	.db	9
      000A6E 00 03                  833 	.dw	Ssoft_i2c$I2C_Start$26-Ssoft_i2c$I2C_Start$25
      000A70 03                     834 	.db	3
      000A71 01                     835 	.sleb128	1
      000A72 01                     836 	.db	1
      000A73 09                     837 	.db	9
      000A74 00 04                  838 	.dw	Ssoft_i2c$I2C_Start$27-Ssoft_i2c$I2C_Start$26
      000A76 03                     839 	.db	3
      000A77 01                     840 	.sleb128	1
      000A78 01                     841 	.db	1
      000A79 09                     842 	.db	9
      000A7A 00 01                  843 	.dw	1+Ssoft_i2c$I2C_Start$28-Ssoft_i2c$I2C_Start$27
      000A7C 00                     844 	.db	0
      000A7D 01                     845 	.uleb128	1
      000A7E 01                     846 	.db	1
      000A7F 00                     847 	.db	0
      000A80 05                     848 	.uleb128	5
      000A81 02                     849 	.db	2
      000A82 00 00 85 F4            850 	.dw	0,(Ssoft_i2c$I2C_Stop$30)
      000A86 03                     851 	.db	3
      000A87 2E                     852 	.sleb128	46
      000A88 01                     853 	.db	1
      000A89 09                     854 	.db	9
      000A8A 00 00                  855 	.dw	Ssoft_i2c$I2C_Stop$32-Ssoft_i2c$I2C_Stop$30
      000A8C 03                     856 	.db	3
      000A8D 02                     857 	.sleb128	2
      000A8E 01                     858 	.db	1
      000A8F 09                     859 	.db	9
      000A90 00 04                  860 	.dw	Ssoft_i2c$I2C_Stop$33-Ssoft_i2c$I2C_Stop$32
      000A92 03                     861 	.db	3
      000A93 02                     862 	.sleb128	2
      000A94 01                     863 	.db	1
      000A95 09                     864 	.db	9
      000A96 00 04                  865 	.dw	Ssoft_i2c$I2C_Stop$34-Ssoft_i2c$I2C_Stop$33
      000A98 03                     866 	.db	3
      000A99 01                     867 	.sleb128	1
      000A9A 01                     868 	.db	1
      000A9B 09                     869 	.db	9
      000A9C 00 03                  870 	.dw	Ssoft_i2c$I2C_Stop$35-Ssoft_i2c$I2C_Stop$34
      000A9E 03                     871 	.db	3
      000A9F 01                     872 	.sleb128	1
      000AA0 01                     873 	.db	1
      000AA1 09                     874 	.db	9
      000AA2 00 04                  875 	.dw	Ssoft_i2c$I2C_Stop$36-Ssoft_i2c$I2C_Stop$35
      000AA4 03                     876 	.db	3
      000AA5 01                     877 	.sleb128	1
      000AA6 01                     878 	.db	1
      000AA7 09                     879 	.db	9
      000AA8 00 08                  880 	.dw	Ssoft_i2c$I2C_Stop$37-Ssoft_i2c$I2C_Stop$36
      000AAA 03                     881 	.db	3
      000AAB 01                     882 	.sleb128	1
      000AAC 01                     883 	.db	1
      000AAD 09                     884 	.db	9
      000AAE 00 03                  885 	.dw	Ssoft_i2c$I2C_Stop$38-Ssoft_i2c$I2C_Stop$37
      000AB0 03                     886 	.db	3
      000AB1 01                     887 	.sleb128	1
      000AB2 01                     888 	.db	1
      000AB3 09                     889 	.db	9
      000AB4 00 01                  890 	.dw	1+Ssoft_i2c$I2C_Stop$39-Ssoft_i2c$I2C_Stop$38
      000AB6 00                     891 	.db	0
      000AB7 01                     892 	.uleb128	1
      000AB8 01                     893 	.db	1
      000AB9 00                     894 	.db	0
      000ABA 05                     895 	.uleb128	5
      000ABB 02                     896 	.db	2
      000ABC 00 00 86 0F            897 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$41)
      000AC0 03                     898 	.db	3
      000AC1 3C                     899 	.sleb128	60
      000AC2 01                     900 	.db	1
      000AC3 09                     901 	.db	9
      000AC4 00 00                  902 	.dw	Ssoft_i2c$I2C_Wait_Ack$43-Ssoft_i2c$I2C_Wait_Ack$41
      000AC6 03                     903 	.db	3
      000AC7 04                     904 	.sleb128	4
      000AC8 01                     905 	.db	1
      000AC9 09                     906 	.db	9
      000ACA 00 09                  907 	.dw	Ssoft_i2c$I2C_Wait_Ack$44-Ssoft_i2c$I2C_Wait_Ack$43
      000ACC 03                     908 	.db	3
      000ACD 01                     909 	.sleb128	1
      000ACE 01                     910 	.db	1
      000ACF 09                     911 	.db	9
      000AD0 00 09                  912 	.dw	Ssoft_i2c$I2C_Wait_Ack$45-Ssoft_i2c$I2C_Wait_Ack$44
      000AD2 03                     913 	.db	3
      000AD3 01                     914 	.sleb128	1
      000AD4 01                     915 	.db	1
      000AD5 09                     916 	.db	9
      000AD6 00 0D                  917 	.dw	Ssoft_i2c$I2C_Wait_Ack$47-Ssoft_i2c$I2C_Wait_Ack$45
      000AD8 03                     918 	.db	3
      000AD9 02                     919 	.sleb128	2
      000ADA 01                     920 	.db	1
      000ADB 09                     921 	.db	9
      000ADC 00 01                  922 	.dw	Ssoft_i2c$I2C_Wait_Ack$48-Ssoft_i2c$I2C_Wait_Ack$47
      000ADE 03                     923 	.db	3
      000ADF 01                     924 	.sleb128	1
      000AE0 01                     925 	.db	1
      000AE1 09                     926 	.db	9
      000AE2 00 05                  927 	.dw	Ssoft_i2c$I2C_Wait_Ack$50-Ssoft_i2c$I2C_Wait_Ack$48
      000AE4 03                     928 	.db	3
      000AE5 02                     929 	.sleb128	2
      000AE6 01                     930 	.db	1
      000AE7 09                     931 	.db	9
      000AE8 00 03                  932 	.dw	Ssoft_i2c$I2C_Wait_Ack$51-Ssoft_i2c$I2C_Wait_Ack$50
      000AEA 03                     933 	.db	3
      000AEB 01                     934 	.sleb128	1
      000AEC 01                     935 	.db	1
      000AED 09                     936 	.db	9
      000AEE 00 04                  937 	.dw	Ssoft_i2c$I2C_Wait_Ack$53-Ssoft_i2c$I2C_Wait_Ack$51
      000AF0 03                     938 	.db	3
      000AF1 03                     939 	.sleb128	3
      000AF2 01                     940 	.db	1
      000AF3 09                     941 	.db	9
      000AF4 00 04                  942 	.dw	Ssoft_i2c$I2C_Wait_Ack$54-Ssoft_i2c$I2C_Wait_Ack$53
      000AF6 03                     943 	.db	3
      000AF7 01                     944 	.sleb128	1
      000AF8 01                     945 	.db	1
      000AF9 09                     946 	.db	9
      000AFA 00 01                  947 	.dw	Ssoft_i2c$I2C_Wait_Ack$55-Ssoft_i2c$I2C_Wait_Ack$54
      000AFC 03                     948 	.db	3
      000AFD 01                     949 	.sleb128	1
      000AFE 01                     950 	.db	1
      000AFF 09                     951 	.db	9
      000B00 00 01                  952 	.dw	1+Ssoft_i2c$I2C_Wait_Ack$56-Ssoft_i2c$I2C_Wait_Ack$55
      000B02 00                     953 	.db	0
      000B03 01                     954 	.uleb128	1
      000B04 01                     955 	.db	1
      000B05 00                     956 	.db	0
      000B06 05                     957 	.uleb128	5
      000B07 02                     958 	.db	2
      000B08 00 00 86 41            959 	.dw	0,(Ssoft_i2c$I2C_Ack$58)
      000B0C 03                     960 	.db	3
      000B0D D0 00                  961 	.sleb128	80
      000B0F 01                     962 	.db	1
      000B10 09                     963 	.db	9
      000B11 00 00                  964 	.dw	Ssoft_i2c$I2C_Ack$60-Ssoft_i2c$I2C_Ack$58
      000B13 03                     965 	.db	3
      000B14 02                     966 	.sleb128	2
      000B15 01                     967 	.db	1
      000B16 09                     968 	.db	9
      000B17 00 04                  969 	.dw	Ssoft_i2c$I2C_Ack$61-Ssoft_i2c$I2C_Ack$60
      000B19 03                     970 	.db	3
      000B1A 01                     971 	.sleb128	1
      000B1B 01                     972 	.db	1
      000B1C 09                     973 	.db	9
      000B1D 00 04                  974 	.dw	Ssoft_i2c$I2C_Ack$62-Ssoft_i2c$I2C_Ack$61
      000B1F 03                     975 	.db	3
      000B20 01                     976 	.sleb128	1
      000B21 01                     977 	.db	1
      000B22 09                     978 	.db	9
      000B23 00 03                  979 	.dw	Ssoft_i2c$I2C_Ack$63-Ssoft_i2c$I2C_Ack$62
      000B25 03                     980 	.db	3
      000B26 01                     981 	.sleb128	1
      000B27 01                     982 	.db	1
      000B28 09                     983 	.db	9
      000B29 00 04                  984 	.dw	Ssoft_i2c$I2C_Ack$64-Ssoft_i2c$I2C_Ack$63
      000B2B 03                     985 	.db	3
      000B2C 01                     986 	.sleb128	1
      000B2D 01                     987 	.db	1
      000B2E 09                     988 	.db	9
      000B2F 00 03                  989 	.dw	Ssoft_i2c$I2C_Ack$65-Ssoft_i2c$I2C_Ack$64
      000B31 03                     990 	.db	3
      000B32 01                     991 	.sleb128	1
      000B33 01                     992 	.db	1
      000B34 09                     993 	.db	9
      000B35 00 04                  994 	.dw	Ssoft_i2c$I2C_Ack$66-Ssoft_i2c$I2C_Ack$65
      000B37 03                     995 	.db	3
      000B38 01                     996 	.sleb128	1
      000B39 01                     997 	.db	1
      000B3A 09                     998 	.db	9
      000B3B 00 01                  999 	.dw	1+Ssoft_i2c$I2C_Ack$67-Ssoft_i2c$I2C_Ack$66
      000B3D 00                    1000 	.db	0
      000B3E 01                    1001 	.uleb128	1
      000B3F 01                    1002 	.db	1
      000B40 00                    1003 	.db	0
      000B41 05                    1004 	.uleb128	5
      000B42 02                    1005 	.db	2
      000B43 00 00 86 58           1006 	.dw	0,(Ssoft_i2c$I2C_NAck$69)
      000B47 03                    1007 	.db	3
      000B48 DB 00                 1008 	.sleb128	91
      000B4A 01                    1009 	.db	1
      000B4B 09                    1010 	.db	9
      000B4C 00 00                 1011 	.dw	Ssoft_i2c$I2C_NAck$71-Ssoft_i2c$I2C_NAck$69
      000B4E 03                    1012 	.db	3
      000B4F 02                    1013 	.sleb128	2
      000B50 01                    1014 	.db	1
      000B51 09                    1015 	.db	9
      000B52 00 04                 1016 	.dw	Ssoft_i2c$I2C_NAck$72-Ssoft_i2c$I2C_NAck$71
      000B54 03                    1017 	.db	3
      000B55 01                    1018 	.sleb128	1
      000B56 01                    1019 	.db	1
      000B57 09                    1020 	.db	9
      000B58 00 04                 1021 	.dw	Ssoft_i2c$I2C_NAck$73-Ssoft_i2c$I2C_NAck$72
      000B5A 03                    1022 	.db	3
      000B5B 01                    1023 	.sleb128	1
      000B5C 01                    1024 	.db	1
      000B5D 09                    1025 	.db	9
      000B5E 00 03                 1026 	.dw	Ssoft_i2c$I2C_NAck$74-Ssoft_i2c$I2C_NAck$73
      000B60 03                    1027 	.db	3
      000B61 01                    1028 	.sleb128	1
      000B62 01                    1029 	.db	1
      000B63 09                    1030 	.db	9
      000B64 00 04                 1031 	.dw	Ssoft_i2c$I2C_NAck$75-Ssoft_i2c$I2C_NAck$74
      000B66 03                    1032 	.db	3
      000B67 01                    1033 	.sleb128	1
      000B68 01                    1034 	.db	1
      000B69 09                    1035 	.db	9
      000B6A 00 03                 1036 	.dw	Ssoft_i2c$I2C_NAck$76-Ssoft_i2c$I2C_NAck$75
      000B6C 03                    1037 	.db	3
      000B6D 01                    1038 	.sleb128	1
      000B6E 01                    1039 	.db	1
      000B6F 09                    1040 	.db	9
      000B70 00 04                 1041 	.dw	Ssoft_i2c$I2C_NAck$77-Ssoft_i2c$I2C_NAck$76
      000B72 03                    1042 	.db	3
      000B73 01                    1043 	.sleb128	1
      000B74 01                    1044 	.db	1
      000B75 09                    1045 	.db	9
      000B76 00 01                 1046 	.dw	1+Ssoft_i2c$I2C_NAck$78-Ssoft_i2c$I2C_NAck$77
      000B78 00                    1047 	.db	0
      000B79 01                    1048 	.uleb128	1
      000B7A 01                    1049 	.db	1
      000B7B 00                    1050 	.db	0
      000B7C 05                    1051 	.uleb128	5
      000B7D 02                    1052 	.db	2
      000B7E 00 00 86 6F           1053 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$80)
      000B82 03                    1054 	.db	3
      000B83 E9 00                 1055 	.sleb128	105
      000B85 01                    1056 	.db	1
      000B86 09                    1057 	.db	9
      000B87 00 01                 1058 	.dw	Ssoft_i2c$I2C_Send_Byte$83-Ssoft_i2c$I2C_Send_Byte$80
      000B89 03                    1059 	.db	3
      000B8A 03                    1060 	.sleb128	3
      000B8B 01                    1061 	.db	1
      000B8C 09                    1062 	.db	9
      000B8D 00 04                 1063 	.dw	Ssoft_i2c$I2C_Send_Byte$84-Ssoft_i2c$I2C_Send_Byte$83
      000B8F 03                    1064 	.db	3
      000B90 01                    1065 	.sleb128	1
      000B91 01                    1066 	.db	1
      000B92 09                    1067 	.db	9
      000B93 00 02                 1068 	.dw	Ssoft_i2c$I2C_Send_Byte$86-Ssoft_i2c$I2C_Send_Byte$84
      000B95 03                    1069 	.db	3
      000B96 02                    1070 	.sleb128	2
      000B97 01                    1071 	.db	1
      000B98 09                    1072 	.db	9
      000B99 00 0F                 1073 	.dw	Ssoft_i2c$I2C_Send_Byte$88-Ssoft_i2c$I2C_Send_Byte$86
      000B9B 03                    1074 	.db	3
      000B9C 7D                    1075 	.sleb128	-3
      000B9D 01                    1076 	.db	1
      000B9E 09                    1077 	.db	9
      000B9F 00 03                 1078 	.dw	Ssoft_i2c$I2C_Send_Byte$89-Ssoft_i2c$I2C_Send_Byte$88
      000BA1 03                    1079 	.db	3
      000BA2 03                    1080 	.sleb128	3
      000BA3 01                    1081 	.db	1
      000BA4 09                    1082 	.db	9
      000BA5 00 03                 1083 	.dw	Ssoft_i2c$I2C_Send_Byte$90-Ssoft_i2c$I2C_Send_Byte$89
      000BA7 03                    1084 	.db	3
      000BA8 01                    1085 	.sleb128	1
      000BA9 01                    1086 	.db	1
      000BAA 09                    1087 	.db	9
      000BAB 00 07                 1088 	.dw	Ssoft_i2c$I2C_Send_Byte$91-Ssoft_i2c$I2C_Send_Byte$90
      000BAD 03                    1089 	.db	3
      000BAE 02                    1090 	.sleb128	2
      000BAF 01                    1091 	.db	1
      000BB0 09                    1092 	.db	9
      000BB1 00 05                 1093 	.dw	Ssoft_i2c$I2C_Send_Byte$92-Ssoft_i2c$I2C_Send_Byte$91
      000BB3 03                    1094 	.db	3
      000BB4 01                    1095 	.sleb128	1
      000BB5 01                    1096 	.db	1
      000BB6 09                    1097 	.db	9
      000BB7 00 02                 1098 	.dw	Ssoft_i2c$I2C_Send_Byte$93-Ssoft_i2c$I2C_Send_Byte$92
      000BB9 03                    1099 	.db	3
      000BBA 01                    1100 	.sleb128	1
      000BBB 01                    1101 	.db	1
      000BBC 09                    1102 	.db	9
      000BBD 00 03                 1103 	.dw	Ssoft_i2c$I2C_Send_Byte$94-Ssoft_i2c$I2C_Send_Byte$93
      000BBF 03                    1104 	.db	3
      000BC0 01                    1105 	.sleb128	1
      000BC1 01                    1106 	.db	1
      000BC2 09                    1107 	.db	9
      000BC3 00 04                 1108 	.dw	Ssoft_i2c$I2C_Send_Byte$95-Ssoft_i2c$I2C_Send_Byte$94
      000BC5 03                    1109 	.db	3
      000BC6 01                    1110 	.sleb128	1
      000BC7 01                    1111 	.db	1
      000BC8 09                    1112 	.db	9
      000BC9 00 03                 1113 	.dw	Ssoft_i2c$I2C_Send_Byte$96-Ssoft_i2c$I2C_Send_Byte$95
      000BCB 03                    1114 	.db	3
      000BCC 01                    1115 	.sleb128	1
      000BCD 01                    1116 	.db	1
      000BCE 09                    1117 	.db	9
      000BCF 00 04                 1118 	.dw	Ssoft_i2c$I2C_Send_Byte$97-Ssoft_i2c$I2C_Send_Byte$96
      000BD1 03                    1119 	.db	3
      000BD2 01                    1120 	.sleb128	1
      000BD3 01                    1121 	.db	1
      000BD4 09                    1122 	.db	9
      000BD5 00 03                 1123 	.dw	Ssoft_i2c$I2C_Send_Byte$98-Ssoft_i2c$I2C_Send_Byte$97
      000BD7 03                    1124 	.db	3
      000BD8 75                    1125 	.sleb128	-11
      000BD9 01                    1126 	.db	1
      000BDA 09                    1127 	.db	9
      000BDB 00 0B                 1128 	.dw	Ssoft_i2c$I2C_Send_Byte$99-Ssoft_i2c$I2C_Send_Byte$98
      000BDD 03                    1129 	.db	3
      000BDE 0D                    1130 	.sleb128	13
      000BDF 01                    1131 	.db	1
      000BE0 09                    1132 	.db	9
      000BE1 00 02                 1133 	.dw	1+Ssoft_i2c$I2C_Send_Byte$101-Ssoft_i2c$I2C_Send_Byte$99
      000BE3 00                    1134 	.db	0
      000BE4 01                    1135 	.uleb128	1
      000BE5 01                    1136 	.db	1
      000BE6 00                    1137 	.db	0
      000BE7 05                    1138 	.uleb128	5
      000BE8 02                    1139 	.db	2
      000BE9 00 00 86 B7           1140 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$103)
      000BED 03                    1141 	.db	3
      000BEE FD 00                 1142 	.sleb128	125
      000BF0 01                    1143 	.db	1
      000BF1 09                    1144 	.db	9
      000BF2 00 01                 1145 	.dw	Ssoft_i2c$I2C_Read_Byte$106-Ssoft_i2c$I2C_Read_Byte$103
      000BF4 03                    1146 	.db	3
      000BF5 02                    1147 	.sleb128	2
      000BF6 01                    1148 	.db	1
      000BF7 09                    1149 	.db	9
      000BF8 00 02                 1150 	.dw	Ssoft_i2c$I2C_Read_Byte$107-Ssoft_i2c$I2C_Read_Byte$106
      000BFA 03                    1151 	.db	3
      000BFB 01                    1152 	.sleb128	1
      000BFC 01                    1153 	.db	1
      000BFD 09                    1154 	.db	9
      000BFE 00 02                 1155 	.dw	Ssoft_i2c$I2C_Read_Byte$109-Ssoft_i2c$I2C_Read_Byte$107
      000C00 03                    1156 	.db	3
      000C01 03                    1157 	.sleb128	3
      000C02 01                    1158 	.db	1
      000C03 09                    1159 	.db	9
      000C04 00 04                 1160 	.dw	Ssoft_i2c$I2C_Read_Byte$110-Ssoft_i2c$I2C_Read_Byte$109
      000C06 03                    1161 	.db	3
      000C07 01                    1162 	.sleb128	1
      000C08 01                    1163 	.db	1
      000C09 09                    1164 	.db	9
      000C0A 00 03                 1165 	.dw	Ssoft_i2c$I2C_Read_Byte$111-Ssoft_i2c$I2C_Read_Byte$110
      000C0C 03                    1166 	.db	3
      000C0D 01                    1167 	.sleb128	1
      000C0E 01                    1168 	.db	1
      000C0F 09                    1169 	.db	9
      000C10 00 04                 1170 	.dw	Ssoft_i2c$I2C_Read_Byte$112-Ssoft_i2c$I2C_Read_Byte$111
      000C12 03                    1171 	.db	3
      000C13 01                    1172 	.sleb128	1
      000C14 01                    1173 	.db	1
      000C15 09                    1174 	.db	9
      000C16 00 02                 1175 	.dw	Ssoft_i2c$I2C_Read_Byte$113-Ssoft_i2c$I2C_Read_Byte$112
      000C18 03                    1176 	.db	3
      000C19 01                    1177 	.sleb128	1
      000C1A 01                    1178 	.db	1
      000C1B 09                    1179 	.db	9
      000C1C 00 0E                 1180 	.dw	Ssoft_i2c$I2C_Read_Byte$114-Ssoft_i2c$I2C_Read_Byte$113
      000C1E 03                    1181 	.db	3
      000C1F 01                    1182 	.sleb128	1
      000C20 01                    1183 	.db	1
      000C21 09                    1184 	.db	9
      000C22 00 01                 1185 	.dw	Ssoft_i2c$I2C_Read_Byte$116-Ssoft_i2c$I2C_Read_Byte$114
      000C24 03                    1186 	.db	3
      000C25 78                    1187 	.sleb128	-8
      000C26 01                    1188 	.db	1
      000C27 09                    1189 	.db	9
      000C28 00 08                 1190 	.dw	Ssoft_i2c$I2C_Read_Byte$117-Ssoft_i2c$I2C_Read_Byte$116
      000C2A 03                    1191 	.db	3
      000C2B 0A                    1192 	.sleb128	10
      000C2C 01                    1193 	.db	1
      000C2D 09                    1194 	.db	9
      000C2E 00 04                 1195 	.dw	Ssoft_i2c$I2C_Read_Byte$118-Ssoft_i2c$I2C_Read_Byte$117
      000C30 03                    1196 	.db	3
      000C31 01                    1197 	.sleb128	1
      000C32 01                    1198 	.db	1
      000C33 09                    1199 	.db	9
      000C34 00 05                 1200 	.dw	Ssoft_i2c$I2C_Read_Byte$119-Ssoft_i2c$I2C_Read_Byte$118
      000C36 03                    1201 	.db	3
      000C37 02                    1202 	.sleb128	2
      000C38 01                    1203 	.db	1
      000C39 09                    1204 	.db	9
      000C3A 00 03                 1205 	.dw	Ssoft_i2c$I2C_Read_Byte$120-Ssoft_i2c$I2C_Read_Byte$119
      000C3C 03                    1206 	.db	3
      000C3D 01                    1207 	.sleb128	1
      000C3E 01                    1208 	.db	1
      000C3F 09                    1209 	.db	9
      000C40 00 02                 1210 	.dw	Ssoft_i2c$I2C_Read_Byte$121-Ssoft_i2c$I2C_Read_Byte$120
      000C42 03                    1211 	.db	3
      000C43 01                    1212 	.sleb128	1
      000C44 01                    1213 	.db	1
      000C45 09                    1214 	.db	9
      000C46 00 02                 1215 	.dw	1+Ssoft_i2c$I2C_Read_Byte$123-Ssoft_i2c$I2C_Read_Byte$121
      000C48 00                    1216 	.db	0
      000C49 01                    1217 	.uleb128	1
      000C4A 01                    1218 	.db	1
      000C4B 00                    1219 	.db	0
      000C4C 05                    1220 	.uleb128	5
      000C4D 02                    1221 	.db	2
      000C4E 00 00 86 F0           1222 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$125)
      000C52 03                    1223 	.db	3
      000C53 BF 01                 1224 	.sleb128	191
      000C55 01                    1225 	.db	1
      000C56 09                    1226 	.db	9
      000C57 00 02                 1227 	.dw	Ssoft_i2c$I2C_MasterReceiveData$128-Ssoft_i2c$I2C_MasterReceiveData$125
      000C59 03                    1228 	.db	3
      000C5A 02                    1229 	.sleb128	2
      000C5B 01                    1230 	.db	1
      000C5C 09                    1231 	.db	9
      000C5D 00 03                 1232 	.dw	Ssoft_i2c$I2C_MasterReceiveData$129-Ssoft_i2c$I2C_MasterReceiveData$128
      000C5F 03                    1233 	.db	3
      000C60 01                    1234 	.sleb128	1
      000C61 01                    1235 	.db	1
      000C62 09                    1236 	.db	9
      000C63 00 0A                 1237 	.dw	Ssoft_i2c$I2C_MasterReceiveData$132-Ssoft_i2c$I2C_MasterReceiveData$129
      000C65 03                    1238 	.db	3
      000C66 01                    1239 	.sleb128	1
      000C67 01                    1240 	.db	1
      000C68 09                    1241 	.db	9
      000C69 00 06                 1242 	.dw	Ssoft_i2c$I2C_MasterReceiveData$133-Ssoft_i2c$I2C_MasterReceiveData$132
      000C6B 03                    1243 	.db	3
      000C6C 01                    1244 	.sleb128	1
      000C6D 01                    1245 	.db	1
      000C6E 09                    1246 	.db	9
      000C6F 00 04                 1247 	.dw	Ssoft_i2c$I2C_MasterReceiveData$134-Ssoft_i2c$I2C_MasterReceiveData$133
      000C71 03                    1248 	.db	3
      000C72 01                    1249 	.sleb128	1
      000C73 01                    1250 	.db	1
      000C74 09                    1251 	.db	9
      000C75 00 07                 1252 	.dw	Ssoft_i2c$I2C_MasterReceiveData$137-Ssoft_i2c$I2C_MasterReceiveData$134
      000C77 03                    1253 	.db	3
      000C78 01                    1254 	.sleb128	1
      000C79 01                    1255 	.db	1
      000C7A 09                    1256 	.db	9
      000C7B 00 06                 1257 	.dw	Ssoft_i2c$I2C_MasterReceiveData$138-Ssoft_i2c$I2C_MasterReceiveData$137
      000C7D 03                    1258 	.db	3
      000C7E 01                    1259 	.sleb128	1
      000C7F 01                    1260 	.db	1
      000C80 09                    1261 	.db	9
      000C81 00 04                 1262 	.dw	Ssoft_i2c$I2C_MasterReceiveData$139-Ssoft_i2c$I2C_MasterReceiveData$138
      000C83 03                    1263 	.db	3
      000C84 02                    1264 	.sleb128	2
      000C85 01                    1265 	.db	1
      000C86 09                    1266 	.db	9
      000C87 00 03                 1267 	.dw	Ssoft_i2c$I2C_MasterReceiveData$140-Ssoft_i2c$I2C_MasterReceiveData$139
      000C89 03                    1268 	.db	3
      000C8A 01                    1269 	.sleb128	1
      000C8B 01                    1270 	.db	1
      000C8C 09                    1271 	.db	9
      000C8D 00 09                 1272 	.dw	Ssoft_i2c$I2C_MasterReceiveData$143-Ssoft_i2c$I2C_MasterReceiveData$140
      000C8F 03                    1273 	.db	3
      000C90 01                    1274 	.sleb128	1
      000C91 01                    1275 	.db	1
      000C92 09                    1276 	.db	9
      000C93 00 06                 1277 	.dw	Ssoft_i2c$I2C_MasterReceiveData$144-Ssoft_i2c$I2C_MasterReceiveData$143
      000C95 03                    1278 	.db	3
      000C96 01                    1279 	.sleb128	1
      000C97 01                    1280 	.db	1
      000C98 09                    1281 	.db	9
      000C99 00 04                 1282 	.dw	Ssoft_i2c$I2C_MasterReceiveData$145-Ssoft_i2c$I2C_MasterReceiveData$144
      000C9B 03                    1283 	.db	3
      000C9C 02                    1284 	.sleb128	2
      000C9D 01                    1285 	.db	1
      000C9E 09                    1286 	.db	9
      000C9F 00 0B                 1287 	.dw	Ssoft_i2c$I2C_MasterReceiveData$148-Ssoft_i2c$I2C_MasterReceiveData$145
      000CA1 03                    1288 	.db	3
      000CA2 02                    1289 	.sleb128	2
      000CA3 01                    1290 	.db	1
      000CA4 09                    1291 	.db	9
      000CA5 00 0D                 1292 	.dw	Ssoft_i2c$I2C_MasterReceiveData$150-Ssoft_i2c$I2C_MasterReceiveData$148
      000CA7 03                    1293 	.db	3
      000CA8 01                    1294 	.sleb128	1
      000CA9 01                    1295 	.db	1
      000CAA 09                    1296 	.db	9
      000CAB 00 07                 1297 	.dw	Ssoft_i2c$I2C_MasterReceiveData$151-Ssoft_i2c$I2C_MasterReceiveData$150
      000CAD 03                    1298 	.db	3
      000CAE 7F                    1299 	.sleb128	-1
      000CAF 01                    1300 	.db	1
      000CB0 09                    1301 	.db	9
      000CB1 00 06                 1302 	.dw	Ssoft_i2c$I2C_MasterReceiveData$153-Ssoft_i2c$I2C_MasterReceiveData$151
      000CB3 03                    1303 	.db	3
      000CB4 01                    1304 	.sleb128	1
      000CB5 01                    1305 	.db	1
      000CB6 09                    1306 	.db	9
      000CB7 00 0C                 1307 	.dw	Ssoft_i2c$I2C_MasterReceiveData$158-Ssoft_i2c$I2C_MasterReceiveData$153
      000CB9 03                    1308 	.db	3
      000CBA 02                    1309 	.sleb128	2
      000CBB 01                    1310 	.db	1
      000CBC 09                    1311 	.db	9
      000CBD 00 0A                 1312 	.dw	Ssoft_i2c$I2C_MasterReceiveData$163-Ssoft_i2c$I2C_MasterReceiveData$158
      000CBF 03                    1313 	.db	3
      000CC0 7B                    1314 	.sleb128	-5
      000CC1 01                    1315 	.db	1
      000CC2 09                    1316 	.db	9
      000CC3 00 05                 1317 	.dw	Ssoft_i2c$I2C_MasterReceiveData$164-Ssoft_i2c$I2C_MasterReceiveData$163
      000CC5 03                    1318 	.db	3
      000CC6 08                    1319 	.sleb128	8
      000CC7 01                    1320 	.db	1
      000CC8 09                    1321 	.db	9
      000CC9 00 03                 1322 	.dw	Ssoft_i2c$I2C_MasterReceiveData$165-Ssoft_i2c$I2C_MasterReceiveData$164
      000CCB 03                    1323 	.db	3
      000CCC 02                    1324 	.sleb128	2
      000CCD 01                    1325 	.db	1
      000CCE 09                    1326 	.db	9
      000CCF 00 02                 1327 	.dw	Ssoft_i2c$I2C_MasterReceiveData$166-Ssoft_i2c$I2C_MasterReceiveData$165
      000CD1 03                    1328 	.db	3
      000CD2 01                    1329 	.sleb128	1
      000CD3 01                    1330 	.db	1
      000CD4 09                    1331 	.db	9
      000CD5 00 03                 1332 	.dw	1+Ssoft_i2c$I2C_MasterReceiveData$168-Ssoft_i2c$I2C_MasterReceiveData$166
      000CD7 00                    1333 	.db	0
      000CD8 01                    1334 	.uleb128	1
      000CD9 01                    1335 	.db	1
      000CDA 00                    1336 	.db	0
      000CDB 05                    1337 	.uleb128	5
      000CDC 02                    1338 	.db	2
      000CDD 00 00 87 78           1339 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$170)
      000CE1 03                    1340 	.db	3
      000CE2 E3 01                 1341 	.sleb128	227
      000CE4 01                    1342 	.db	1
      000CE5 09                    1343 	.db	9
      000CE6 00 01                 1344 	.dw	Ssoft_i2c$I2C_MasterSendData$173-Ssoft_i2c$I2C_MasterSendData$170
      000CE8 03                    1345 	.db	3
      000CE9 02                    1346 	.sleb128	2
      000CEA 01                    1347 	.db	1
      000CEB 09                    1348 	.db	9
      000CEC 00 03                 1349 	.dw	Ssoft_i2c$I2C_MasterSendData$174-Ssoft_i2c$I2C_MasterSendData$173
      000CEE 03                    1350 	.db	3
      000CEF 01                    1351 	.sleb128	1
      000CF0 01                    1352 	.db	1
      000CF1 09                    1353 	.db	9
      000CF2 00 08                 1354 	.dw	Ssoft_i2c$I2C_MasterSendData$177-Ssoft_i2c$I2C_MasterSendData$174
      000CF4 03                    1355 	.db	3
      000CF5 01                    1356 	.sleb128	1
      000CF6 01                    1357 	.db	1
      000CF7 09                    1358 	.db	9
      000CF8 00 06                 1359 	.dw	Ssoft_i2c$I2C_MasterSendData$178-Ssoft_i2c$I2C_MasterSendData$177
      000CFA 03                    1360 	.db	3
      000CFB 01                    1361 	.sleb128	1
      000CFC 01                    1362 	.db	1
      000CFD 09                    1363 	.db	9
      000CFE 00 04                 1364 	.dw	Ssoft_i2c$I2C_MasterSendData$179-Ssoft_i2c$I2C_MasterSendData$178
      000D00 03                    1365 	.db	3
      000D01 01                    1366 	.sleb128	1
      000D02 01                    1367 	.db	1
      000D03 09                    1368 	.db	9
      000D04 00 07                 1369 	.dw	Ssoft_i2c$I2C_MasterSendData$182-Ssoft_i2c$I2C_MasterSendData$179
      000D06 03                    1370 	.db	3
      000D07 01                    1371 	.sleb128	1
      000D08 01                    1372 	.db	1
      000D09 09                    1373 	.db	9
      000D0A 00 06                 1374 	.dw	Ssoft_i2c$I2C_MasterSendData$183-Ssoft_i2c$I2C_MasterSendData$182
      000D0C 03                    1375 	.db	3
      000D0D 01                    1376 	.sleb128	1
      000D0E 01                    1377 	.db	1
      000D0F 09                    1378 	.db	9
      000D10 00 03                 1379 	.dw	Ssoft_i2c$I2C_MasterSendData$184-Ssoft_i2c$I2C_MasterSendData$183
      000D12 03                    1380 	.db	3
      000D13 02                    1381 	.sleb128	2
      000D14 01                    1382 	.db	1
      000D15 09                    1383 	.db	9
      000D16 00 08                 1384 	.dw	Ssoft_i2c$I2C_MasterSendData$187-Ssoft_i2c$I2C_MasterSendData$184
      000D18 03                    1385 	.db	3
      000D19 02                    1386 	.sleb128	2
      000D1A 01                    1387 	.db	1
      000D1B 09                    1388 	.db	9
      000D1C 00 0D                 1389 	.dw	Ssoft_i2c$I2C_MasterSendData$190-Ssoft_i2c$I2C_MasterSendData$187
      000D1E 03                    1390 	.db	3
      000D1F 01                    1391 	.sleb128	1
      000D20 01                    1392 	.db	1
      000D21 09                    1393 	.db	9
      000D22 00 06                 1394 	.dw	Ssoft_i2c$I2C_MasterSendData$191-Ssoft_i2c$I2C_MasterSendData$190
      000D24 03                    1395 	.db	3
      000D25 01                    1396 	.sleb128	1
      000D26 01                    1397 	.db	1
      000D27 09                    1398 	.db	9
      000D28 00 03                 1399 	.dw	Ssoft_i2c$I2C_MasterSendData$193-Ssoft_i2c$I2C_MasterSendData$191
      000D2A 03                    1400 	.db	3
      000D2B 7C                    1401 	.sleb128	-4
      000D2C 01                    1402 	.db	1
      000D2D 09                    1403 	.db	9
      000D2E 00 04                 1404 	.dw	Ssoft_i2c$I2C_MasterSendData$195-Ssoft_i2c$I2C_MasterSendData$193
      000D30 03                    1405 	.db	3
      000D31 06                    1406 	.sleb128	6
      000D32 01                    1407 	.db	1
      000D33 09                    1408 	.db	9
      000D34 00 03                 1409 	.dw	Ssoft_i2c$I2C_MasterSendData$196-Ssoft_i2c$I2C_MasterSendData$195
      000D36 03                    1410 	.db	3
      000D37 02                    1411 	.sleb128	2
      000D38 01                    1412 	.db	1
      000D39 09                    1413 	.db	9
      000D3A 00 02                 1414 	.dw	Ssoft_i2c$I2C_MasterSendData$197-Ssoft_i2c$I2C_MasterSendData$196
      000D3C 03                    1415 	.db	3
      000D3D 01                    1416 	.sleb128	1
      000D3E 01                    1417 	.db	1
      000D3F 09                    1418 	.db	9
      000D40 00 03                 1419 	.dw	1+Ssoft_i2c$I2C_MasterSendData$199-Ssoft_i2c$I2C_MasterSendData$197
      000D42 00                    1420 	.db	0
      000D43 01                    1421 	.uleb128	1
      000D44 01                    1422 	.db	1
      000D45 00                    1423 	.db	0
      000D46 05                    1424 	.uleb128	5
      000D47 02                    1425 	.db	2
      000D48 00 00 87 C8           1426 	.dw	0,(Ssoft_i2c$delay_us$201)
      000D4C 03                    1427 	.db	3
      000D4D FA 01                 1428 	.sleb128	250
      000D4F 01                    1429 	.db	1
      000D50 09                    1430 	.db	9
      000D51 00 00                 1431 	.dw	Ssoft_i2c$delay_us$203-Ssoft_i2c$delay_us$201
      000D53 03                    1432 	.db	3
      000D54 02                    1433 	.sleb128	2
      000D55 01                    1434 	.db	1
      000D56 09                    1435 	.db	9
      000D57 00 04                 1436 	.dw	Ssoft_i2c$delay_us$204-Ssoft_i2c$delay_us$203
      000D59 03                    1437 	.db	3
      000D5A 01                    1438 	.sleb128	1
      000D5B 01                    1439 	.db	1
      000D5C 09                    1440 	.db	9
      000D5D 00 01                 1441 	.dw	1+Ssoft_i2c$delay_us$205-Ssoft_i2c$delay_us$204
      000D5F 00                    1442 	.db	0
      000D60 01                    1443 	.uleb128	1
      000D61 01                    1444 	.db	1
      000D62                       1445 Ldebug_line_end:
                                   1446 
                                   1447 	.area .debug_loc (NOLOAD)
      000600                       1448 Ldebug_loc_start:
      000600 00 00 87 C8           1449 	.dw	0,(Ssoft_i2c$delay_us$202)
      000604 00 00 87 CD           1450 	.dw	0,(Ssoft_i2c$delay_us$206)
      000608 00 02                 1451 	.dw	2
      00060A 78                    1452 	.db	120
      00060B 01                    1453 	.sleb128	1
      00060C 00 00 00 00           1454 	.dw	0,0
      000610 00 00 00 00           1455 	.dw	0,0
      000614 00 00 87 C7           1456 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      000618 00 00 87 C8           1457 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$200)
      00061C 00 02                 1458 	.dw	2
      00061E 78                    1459 	.db	120
      00061F 01                    1460 	.sleb128	1
      000620 00 00 87 B3           1461 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      000624 00 00 87 C7           1462 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      000628 00 02                 1463 	.dw	2
      00062A 78                    1464 	.db	120
      00062B 02                    1465 	.sleb128	2
      00062C 00 00 87 AF           1466 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      000630 00 00 87 B3           1467 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      000634 00 02                 1468 	.dw	2
      000636 78                    1469 	.db	120
      000637 03                    1470 	.sleb128	3
      000638 00 00 87 95           1471 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      00063C 00 00 87 AF           1472 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      000640 00 02                 1473 	.dw	2
      000642 78                    1474 	.db	120
      000643 02                    1475 	.sleb128	2
      000644 00 00 87 91           1476 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      000648 00 00 87 95           1477 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      00064C 00 02                 1478 	.dw	2
      00064E 78                    1479 	.db	120
      00064F 03                    1480 	.sleb128	3
      000650 00 00 87 84           1481 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      000654 00 00 87 91           1482 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      000658 00 02                 1483 	.dw	2
      00065A 78                    1484 	.db	120
      00065B 02                    1485 	.sleb128	2
      00065C 00 00 87 80           1486 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      000660 00 00 87 84           1487 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      000664 00 02                 1488 	.dw	2
      000666 78                    1489 	.db	120
      000667 03                    1490 	.sleb128	3
      000668 00 00 87 79           1491 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      00066C 00 00 87 80           1492 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      000670 00 02                 1493 	.dw	2
      000672 78                    1494 	.db	120
      000673 02                    1495 	.sleb128	2
      000674 00 00 87 78           1496 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
      000678 00 00 87 79           1497 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      00067C 00 02                 1498 	.dw	2
      00067E 78                    1499 	.db	120
      00067F 01                    1500 	.sleb128	1
      000680 00 00 00 00           1501 	.dw	0,0
      000684 00 00 00 00           1502 	.dw	0,0
      000688 00 00 87 77           1503 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      00068C 00 00 87 78           1504 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$169)
      000690 00 02                 1505 	.dw	2
      000692 78                    1506 	.db	120
      000693 01                    1507 	.sleb128	1
      000694 00 00 87 6A           1508 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      000698 00 00 87 77           1509 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      00069C 00 02                 1510 	.dw	2
      00069E 78                    1511 	.db	120
      00069F 04                    1512 	.sleb128	4
      0006A0 00 00 87 69           1513 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      0006A4 00 00 87 6A           1514 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      0006A8 00 02                 1515 	.dw	2
      0006AA 78                    1516 	.db	120
      0006AB 06                    1517 	.sleb128	6
      0006AC 00 00 87 64           1518 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      0006B0 00 00 87 69           1519 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      0006B4 00 02                 1520 	.dw	2
      0006B6 78                    1521 	.db	120
      0006B7 07                    1522 	.sleb128	7
      0006B8 00 00 87 62           1523 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      0006BC 00 00 87 64           1524 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      0006C0 00 02                 1525 	.dw	2
      0006C2 78                    1526 	.db	120
      0006C3 06                    1527 	.sleb128	6
      0006C4 00 00 87 5E           1528 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      0006C8 00 00 87 62           1529 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      0006CC 00 02                 1530 	.dw	2
      0006CE 78                    1531 	.db	120
      0006CF 04                    1532 	.sleb128	4
      0006D0 00 00 87 5D           1533 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      0006D4 00 00 87 5E           1534 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      0006D8 00 02                 1535 	.dw	2
      0006DA 78                    1536 	.db	120
      0006DB 06                    1537 	.sleb128	6
      0006DC 00 00 87 58           1538 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      0006E0 00 00 87 5D           1539 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      0006E4 00 02                 1540 	.dw	2
      0006E6 78                    1541 	.db	120
      0006E7 07                    1542 	.sleb128	7
      0006E8 00 00 87 56           1543 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      0006EC 00 00 87 58           1544 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      0006F0 00 02                 1545 	.dw	2
      0006F2 78                    1546 	.db	120
      0006F3 06                    1547 	.sleb128	6
      0006F4 00 00 87 55           1548 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      0006F8 00 00 87 56           1549 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      0006FC 00 02                 1550 	.dw	2
      0006FE 78                    1551 	.db	120
      0006FF 04                    1552 	.sleb128	4
      000700 00 00 87 26           1553 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000704 00 00 87 55           1554 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      000708 00 02                 1555 	.dw	2
      00070A 78                    1556 	.db	120
      00070B 04                    1557 	.sleb128	4
      00070C 00 00 87 22           1558 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      000710 00 00 87 26           1559 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000714 00 02                 1560 	.dw	2
      000716 78                    1561 	.db	120
      000717 05                    1562 	.sleb128	5
      000718 00 00 87 10           1563 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      00071C 00 00 87 22           1564 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      000720 00 02                 1565 	.dw	2
      000722 78                    1566 	.db	120
      000723 04                    1567 	.sleb128	4
      000724 00 00 87 0C           1568 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      000728 00 00 87 10           1569 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      00072C 00 02                 1570 	.dw	2
      00072E 78                    1571 	.db	120
      00072F 05                    1572 	.sleb128	5
      000730 00 00 86 FF           1573 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000734 00 00 87 0C           1574 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      000738 00 02                 1575 	.dw	2
      00073A 78                    1576 	.db	120
      00073B 04                    1577 	.sleb128	4
      00073C 00 00 86 FB           1578 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      000740 00 00 86 FF           1579 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000744 00 02                 1580 	.dw	2
      000746 78                    1581 	.db	120
      000747 05                    1582 	.sleb128	5
      000748 00 00 86 F2           1583 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      00074C 00 00 86 FB           1584 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      000750 00 02                 1585 	.dw	2
      000752 78                    1586 	.db	120
      000753 04                    1587 	.sleb128	4
      000754 00 00 86 F0           1588 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
      000758 00 00 86 F2           1589 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      00075C 00 02                 1590 	.dw	2
      00075E 78                    1591 	.db	120
      00075F 01                    1592 	.sleb128	1
      000760 00 00 00 00           1593 	.dw	0,0
      000764 00 00 00 00           1594 	.dw	0,0
      000768 00 00 86 EF           1595 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      00076C 00 00 86 F0           1596 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$124)
      000770 00 02                 1597 	.dw	2
      000772 78                    1598 	.db	120
      000773 01                    1599 	.sleb128	1
      000774 00 00 86 B8           1600 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000778 00 00 86 EF           1601 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      00077C 00 02                 1602 	.dw	2
      00077E 78                    1603 	.db	120
      00077F 03                    1604 	.sleb128	3
      000780 00 00 86 B7           1605 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
      000784 00 00 86 B8           1606 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000788 00 02                 1607 	.dw	2
      00078A 78                    1608 	.db	120
      00078B 01                    1609 	.sleb128	1
      00078C 00 00 00 00           1610 	.dw	0,0
      000790 00 00 00 00           1611 	.dw	0,0
      000794 00 00 86 B6           1612 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      000798 00 00 86 B7           1613 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$102)
      00079C 00 02                 1614 	.dw	2
      00079E 78                    1615 	.db	120
      00079F 01                    1616 	.sleb128	1
      0007A0 00 00 86 70           1617 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      0007A4 00 00 86 B6           1618 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      0007A8 00 02                 1619 	.dw	2
      0007AA 78                    1620 	.db	120
      0007AB 02                    1621 	.sleb128	2
      0007AC 00 00 86 6F           1622 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
      0007B0 00 00 86 70           1623 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      0007B4 00 02                 1624 	.dw	2
      0007B6 78                    1625 	.db	120
      0007B7 01                    1626 	.sleb128	1
      0007B8 00 00 00 00           1627 	.dw	0,0
      0007BC 00 00 00 00           1628 	.dw	0,0
      0007C0 00 00 86 58           1629 	.dw	0,(Ssoft_i2c$I2C_NAck$70)
      0007C4 00 00 86 6F           1630 	.dw	0,(Ssoft_i2c$I2C_NAck$79)
      0007C8 00 02                 1631 	.dw	2
      0007CA 78                    1632 	.db	120
      0007CB 01                    1633 	.sleb128	1
      0007CC 00 00 00 00           1634 	.dw	0,0
      0007D0 00 00 00 00           1635 	.dw	0,0
      0007D4 00 00 86 41           1636 	.dw	0,(Ssoft_i2c$I2C_Ack$59)
      0007D8 00 00 86 58           1637 	.dw	0,(Ssoft_i2c$I2C_Ack$68)
      0007DC 00 02                 1638 	.dw	2
      0007DE 78                    1639 	.db	120
      0007DF 01                    1640 	.sleb128	1
      0007E0 00 00 00 00           1641 	.dw	0,0
      0007E4 00 00 00 00           1642 	.dw	0,0
      0007E8 00 00 86 0F           1643 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
      0007EC 00 00 86 41           1644 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$57)
      0007F0 00 02                 1645 	.dw	2
      0007F2 78                    1646 	.db	120
      0007F3 01                    1647 	.sleb128	1
      0007F4 00 00 00 00           1648 	.dw	0,0
      0007F8 00 00 00 00           1649 	.dw	0,0
      0007FC 00 00 85 F4           1650 	.dw	0,(Ssoft_i2c$I2C_Stop$31)
      000800 00 00 86 0F           1651 	.dw	0,(Ssoft_i2c$I2C_Stop$40)
      000804 00 02                 1652 	.dw	2
      000806 78                    1653 	.db	120
      000807 01                    1654 	.sleb128	1
      000808 00 00 00 00           1655 	.dw	0,0
      00080C 00 00 00 00           1656 	.dw	0,0
      000810 00 00 85 DD           1657 	.dw	0,(Ssoft_i2c$I2C_Start$20)
      000814 00 00 85 F4           1658 	.dw	0,(Ssoft_i2c$I2C_Start$29)
      000818 00 02                 1659 	.dw	2
      00081A 78                    1660 	.db	120
      00081B 01                    1661 	.sleb128	1
      00081C 00 00 00 00           1662 	.dw	0,0
      000820 00 00 00 00           1663 	.dw	0,0
      000824 00 00 85 D4           1664 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000828 00 00 85 DD           1665 	.dw	0,(Ssoft_i2c$I2C_Init$18)
      00082C 00 02                 1666 	.dw	2
      00082E 78                    1667 	.db	120
      00082F 01                    1668 	.sleb128	1
      000830 00 00 85 CF           1669 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      000834 00 00 85 D4           1670 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000838 00 02                 1671 	.dw	2
      00083A 78                    1672 	.db	120
      00083B 05                    1673 	.sleb128	5
      00083C 00 00 85 CD           1674 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000840 00 00 85 CF           1675 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      000844 00 02                 1676 	.dw	2
      000846 78                    1677 	.db	120
      000847 04                    1678 	.sleb128	4
      000848 00 00 85 CB           1679 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      00084C 00 00 85 CD           1680 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000850 00 02                 1681 	.dw	2
      000852 78                    1682 	.db	120
      000853 03                    1683 	.sleb128	3
      000854 00 00 85 C9           1684 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      000858 00 00 85 CB           1685 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      00085C 00 02                 1686 	.dw	2
      00085E 78                    1687 	.db	120
      00085F 02                    1688 	.sleb128	2
      000860 00 00 85 C7           1689 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      000864 00 00 85 C9           1690 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      000868 00 02                 1691 	.dw	2
      00086A 78                    1692 	.db	120
      00086B 01                    1693 	.sleb128	1
      00086C 00 00 85 C2           1694 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      000870 00 00 85 C7           1695 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      000874 00 02                 1696 	.dw	2
      000876 78                    1697 	.db	120
      000877 05                    1698 	.sleb128	5
      000878 00 00 85 C0           1699 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      00087C 00 00 85 C2           1700 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      000880 00 02                 1701 	.dw	2
      000882 78                    1702 	.db	120
      000883 04                    1703 	.sleb128	4
      000884 00 00 85 BE           1704 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      000888 00 00 85 C0           1705 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      00088C 00 02                 1706 	.dw	2
      00088E 78                    1707 	.db	120
      00088F 03                    1708 	.sleb128	3
      000890 00 00 85 BC           1709 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      000894 00 00 85 BE           1710 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      000898 00 02                 1711 	.dw	2
      00089A 78                    1712 	.db	120
      00089B 02                    1713 	.sleb128	2
      00089C 00 00 85 BA           1714 	.dw	0,(Ssoft_i2c$I2C_Init$1)
      0008A0 00 00 85 BC           1715 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      0008A4 00 02                 1716 	.dw	2
      0008A6 78                    1717 	.db	120
      0008A7 01                    1718 	.sleb128	1
      0008A8 00 00 00 00           1719 	.dw	0,0
      0008AC 00 00 00 00           1720 	.dw	0,0
                                   1721 
                                   1722 	.area .debug_abbrev (NOLOAD)
      000290                       1723 Ldebug_abbrev:
      000290 0A                    1724 	.uleb128	10
      000291 0F                    1725 	.uleb128	15
      000292 00                    1726 	.db	0
      000293 0B                    1727 	.uleb128	11
      000294 0B                    1728 	.uleb128	11
      000295 49                    1729 	.uleb128	73
      000296 13                    1730 	.uleb128	19
      000297 00                    1731 	.uleb128	0
      000298 00                    1732 	.uleb128	0
      000299 09                    1733 	.uleb128	9
      00029A 05                    1734 	.uleb128	5
      00029B 00                    1735 	.db	0
      00029C 02                    1736 	.uleb128	2
      00029D 0A                    1737 	.uleb128	10
      00029E 03                    1738 	.uleb128	3
      00029F 08                    1739 	.uleb128	8
      0002A0 49                    1740 	.uleb128	73
      0002A1 13                    1741 	.uleb128	19
      0002A2 00                    1742 	.uleb128	0
      0002A3 00                    1743 	.uleb128	0
      0002A4 08                    1744 	.uleb128	8
      0002A5 2E                    1745 	.uleb128	46
      0002A6 01                    1746 	.db	1
      0002A7 01                    1747 	.uleb128	1
      0002A8 13                    1748 	.uleb128	19
      0002A9 03                    1749 	.uleb128	3
      0002AA 08                    1750 	.uleb128	8
      0002AB 11                    1751 	.uleb128	17
      0002AC 01                    1752 	.uleb128	1
      0002AD 12                    1753 	.uleb128	18
      0002AE 01                    1754 	.uleb128	1
      0002AF 3F                    1755 	.uleb128	63
      0002B0 0C                    1756 	.uleb128	12
      0002B1 40                    1757 	.uleb128	64
      0002B2 06                    1758 	.uleb128	6
      0002B3 00                    1759 	.uleb128	0
      0002B4 00                    1760 	.uleb128	0
      0002B5 07                    1761 	.uleb128	7
      0002B6 34                    1762 	.uleb128	52
      0002B7 00                    1763 	.db	0
      0002B8 02                    1764 	.uleb128	2
      0002B9 0A                    1765 	.uleb128	10
      0002BA 03                    1766 	.uleb128	3
      0002BB 08                    1767 	.uleb128	8
      0002BC 49                    1768 	.uleb128	73
      0002BD 13                    1769 	.uleb128	19
      0002BE 00                    1770 	.uleb128	0
      0002BF 00                    1771 	.uleb128	0
      0002C0 04                    1772 	.uleb128	4
      0002C1 2E                    1773 	.uleb128	46
      0002C2 01                    1774 	.db	1
      0002C3 01                    1775 	.uleb128	1
      0002C4 13                    1776 	.uleb128	19
      0002C5 03                    1777 	.uleb128	3
      0002C6 08                    1778 	.uleb128	8
      0002C7 11                    1779 	.uleb128	17
      0002C8 01                    1780 	.uleb128	1
      0002C9 12                    1781 	.uleb128	18
      0002CA 01                    1782 	.uleb128	1
      0002CB 3F                    1783 	.uleb128	63
      0002CC 0C                    1784 	.uleb128	12
      0002CD 40                    1785 	.uleb128	64
      0002CE 06                    1786 	.uleb128	6
      0002CF 49                    1787 	.uleb128	73
      0002D0 13                    1788 	.uleb128	19
      0002D1 00                    1789 	.uleb128	0
      0002D2 00                    1790 	.uleb128	0
      0002D3 0B                    1791 	.uleb128	11
      0002D4 0B                    1792 	.uleb128	11
      0002D5 01                    1793 	.db	1
      0002D6 11                    1794 	.uleb128	17
      0002D7 01                    1795 	.uleb128	1
      0002D8 00                    1796 	.uleb128	0
      0002D9 00                    1797 	.uleb128	0
      0002DA 01                    1798 	.uleb128	1
      0002DB 11                    1799 	.uleb128	17
      0002DC 01                    1800 	.db	1
      0002DD 03                    1801 	.uleb128	3
      0002DE 08                    1802 	.uleb128	8
      0002DF 10                    1803 	.uleb128	16
      0002E0 06                    1804 	.uleb128	6
      0002E1 13                    1805 	.uleb128	19
      0002E2 0B                    1806 	.uleb128	11
      0002E3 25                    1807 	.uleb128	37
      0002E4 08                    1808 	.uleb128	8
      0002E5 00                    1809 	.uleb128	0
      0002E6 00                    1810 	.uleb128	0
      0002E7 06                    1811 	.uleb128	6
      0002E8 0B                    1812 	.uleb128	11
      0002E9 00                    1813 	.db	0
      0002EA 11                    1814 	.uleb128	17
      0002EB 01                    1815 	.uleb128	1
      0002EC 12                    1816 	.uleb128	18
      0002ED 01                    1817 	.uleb128	1
      0002EE 00                    1818 	.uleb128	0
      0002EF 00                    1819 	.uleb128	0
      0002F0 0C                    1820 	.uleb128	12
      0002F1 0B                    1821 	.uleb128	11
      0002F2 01                    1822 	.db	1
      0002F3 11                    1823 	.uleb128	17
      0002F4 01                    1824 	.uleb128	1
      0002F5 12                    1825 	.uleb128	18
      0002F6 01                    1826 	.uleb128	1
      0002F7 00                    1827 	.uleb128	0
      0002F8 00                    1828 	.uleb128	0
      0002F9 05                    1829 	.uleb128	5
      0002FA 0B                    1830 	.uleb128	11
      0002FB 01                    1831 	.db	1
      0002FC 01                    1832 	.uleb128	1
      0002FD 13                    1833 	.uleb128	19
      0002FE 11                    1834 	.uleb128	17
      0002FF 01                    1835 	.uleb128	1
      000300 00                    1836 	.uleb128	0
      000301 00                    1837 	.uleb128	0
      000302 02                    1838 	.uleb128	2
      000303 2E                    1839 	.uleb128	46
      000304 00                    1840 	.db	0
      000305 03                    1841 	.uleb128	3
      000306 08                    1842 	.uleb128	8
      000307 11                    1843 	.uleb128	17
      000308 01                    1844 	.uleb128	1
      000309 12                    1845 	.uleb128	18
      00030A 01                    1846 	.uleb128	1
      00030B 3F                    1847 	.uleb128	63
      00030C 0C                    1848 	.uleb128	12
      00030D 40                    1849 	.uleb128	64
      00030E 06                    1850 	.uleb128	6
      00030F 00                    1851 	.uleb128	0
      000310 00                    1852 	.uleb128	0
      000311 03                    1853 	.uleb128	3
      000312 24                    1854 	.uleb128	36
      000313 00                    1855 	.db	0
      000314 03                    1856 	.uleb128	3
      000315 08                    1857 	.uleb128	8
      000316 0B                    1858 	.uleb128	11
      000317 0B                    1859 	.uleb128	11
      000318 3E                    1860 	.uleb128	62
      000319 0B                    1861 	.uleb128	11
      00031A 00                    1862 	.uleb128	0
      00031B 00                    1863 	.uleb128	0
      00031C 00                    1864 	.uleb128	0
                                   1865 
                                   1866 	.area .debug_info (NOLOAD)
      000B81 00 00 02 D1           1867 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000B85                       1868 Ldebug_info_start:
      000B85 00 02                 1869 	.dw	2
      000B87 00 00 02 90           1870 	.dw	0,(Ldebug_abbrev)
      000B8B 04                    1871 	.db	4
      000B8C 01                    1872 	.uleb128	1
      000B8D 53 6F 75 72 63 65 2F  1873 	.ascii "Source/Driver/Src/soft_i2c.c"
             44 72 69 76 65 72 2F
             53 72 63 2F 73 6F 66
             74 5F 69 32 63 2E 63
      000BA9 00                    1874 	.db	0
      000BAA 00 00 09 90           1875 	.dw	0,(Ldebug_line_start+-4)
      000BAE 01                    1876 	.db	1
      000BAF 53 44 43 43 20 76 65  1877 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000BC8 00                    1878 	.db	0
      000BC9 02                    1879 	.uleb128	2
      000BCA 49 32 43 5F 49 6E 69  1880 	.ascii "I2C_Init"
             74
      000BD2 00                    1881 	.db	0
      000BD3 00 00 85 BA           1882 	.dw	0,(_I2C_Init)
      000BD7 00 00 85 DD           1883 	.dw	0,(XG$I2C_Init$0$0+1)
      000BDB 01                    1884 	.db	1
      000BDC 00 00 08 24           1885 	.dw	0,(Ldebug_loc_start+548)
      000BE0 02                    1886 	.uleb128	2
      000BE1 49 32 43 5F 53 74 61  1887 	.ascii "I2C_Start"
             72 74
      000BEA 00                    1888 	.db	0
      000BEB 00 00 85 DD           1889 	.dw	0,(_I2C_Start)
      000BEF 00 00 85 F4           1890 	.dw	0,(XG$I2C_Start$0$0+1)
      000BF3 01                    1891 	.db	1
      000BF4 00 00 08 10           1892 	.dw	0,(Ldebug_loc_start+528)
      000BF8 02                    1893 	.uleb128	2
      000BF9 49 32 43 5F 53 74 6F  1894 	.ascii "I2C_Stop"
             70
      000C01 00                    1895 	.db	0
      000C02 00 00 85 F4           1896 	.dw	0,(_I2C_Stop)
      000C06 00 00 86 0F           1897 	.dw	0,(XG$I2C_Stop$0$0+1)
      000C0A 01                    1898 	.db	1
      000C0B 00 00 07 FC           1899 	.dw	0,(Ldebug_loc_start+508)
      000C0F 03                    1900 	.uleb128	3
      000C10 75 6E 73 69 67 6E 65  1901 	.ascii "unsigned char"
             64 20 63 68 61 72
      000C1D 00                    1902 	.db	0
      000C1E 01                    1903 	.db	1
      000C1F 08                    1904 	.db	8
      000C20 04                    1905 	.uleb128	4
      000C21 00 00 00 E7           1906 	.dw	0,231
      000C25 49 32 43 5F 57 61 69  1907 	.ascii "I2C_Wait_Ack"
             74 5F 41 63 6B
      000C31 00                    1908 	.db	0
      000C32 00 00 86 0F           1909 	.dw	0,(_I2C_Wait_Ack)
      000C36 00 00 86 41           1910 	.dw	0,(XG$I2C_Wait_Ack$0$0+1)
      000C3A 01                    1911 	.db	1
      000C3B 00 00 07 E8           1912 	.dw	0,(Ldebug_loc_start+488)
      000C3F 00 00 00 8E           1913 	.dw	0,142
      000C43 05                    1914 	.uleb128	5
      000C44 00 00 00 D5           1915 	.dw	0,213
      000C48 00 00 86 2E           1916 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$46)
      000C4C 06                    1917 	.uleb128	6
      000C4D 00 00 86 34           1918 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$49)
      000C51 00 00 86 3B           1919 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$52)
      000C55 00                    1920 	.uleb128	0
      000C56 07                    1921 	.uleb128	7
      000C57 01                    1922 	.db	1
      000C58 51                    1923 	.db	81
      000C59 75 63 45 72 72 54 69  1924 	.ascii "ucErrTime"
             6D 65
      000C62 00                    1925 	.db	0
      000C63 00 00 00 8E           1926 	.dw	0,142
      000C67 00                    1927 	.uleb128	0
      000C68 02                    1928 	.uleb128	2
      000C69 49 32 43 5F 41 63 6B  1929 	.ascii "I2C_Ack"
      000C70 00                    1930 	.db	0
      000C71 00 00 86 41           1931 	.dw	0,(_I2C_Ack)
      000C75 00 00 86 58           1932 	.dw	0,(XG$I2C_Ack$0$0+1)
      000C79 01                    1933 	.db	1
      000C7A 00 00 07 D4           1934 	.dw	0,(Ldebug_loc_start+468)
      000C7E 02                    1935 	.uleb128	2
      000C7F 49 32 43 5F 4E 41 63  1936 	.ascii "I2C_NAck"
             6B
      000C87 00                    1937 	.db	0
      000C88 00 00 86 58           1938 	.dw	0,(_I2C_NAck)
      000C8C 00 00 86 6F           1939 	.dw	0,(XG$I2C_NAck$0$0+1)
      000C90 01                    1940 	.db	1
      000C91 00 00 07 C0           1941 	.dw	0,(Ldebug_loc_start+448)
      000C95 08                    1942 	.uleb128	8
      000C96 00 00 01 54           1943 	.dw	0,340
      000C9A 49 32 43 5F 53 65 6E  1944 	.ascii "I2C_Send_Byte"
             64 5F 42 79 74 65
      000CA7 00                    1945 	.db	0
      000CA8 00 00 86 6F           1946 	.dw	0,(_I2C_Send_Byte)
      000CAC 00 00 86 B7           1947 	.dw	0,(XG$I2C_Send_Byte$0$0+1)
      000CB0 01                    1948 	.db	1
      000CB1 00 00 07 94           1949 	.dw	0,(Ldebug_loc_start+404)
      000CB5 09                    1950 	.uleb128	9
      000CB6 02                    1951 	.db	2
      000CB7 91                    1952 	.db	145
      000CB8 02                    1953 	.sleb128	2
      000CB9 74 78 64              1954 	.ascii "txd"
      000CBC 00                    1955 	.db	0
      000CBD 00 00 00 8E           1956 	.dw	0,142
      000CC1 06                    1957 	.uleb128	6
      000CC2 00 00 86 76           1958 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$85)
      000CC6 00 00 86 85           1959 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$87)
      000CCA 07                    1960 	.uleb128	7
      000CCB 02                    1961 	.db	2
      000CCC 91                    1962 	.db	145
      000CCD 7F                    1963 	.sleb128	-1
      000CCE 74                    1964 	.ascii "t"
      000CCF 00                    1965 	.db	0
      000CD0 00 00 00 8E           1966 	.dw	0,142
      000CD4 00                    1967 	.uleb128	0
      000CD5 04                    1968 	.uleb128	4
      000CD6 00 00 01 A8           1969 	.dw	0,424
      000CDA 49 32 43 5F 52 65 61  1970 	.ascii "I2C_Read_Byte"
             64 5F 42 79 74 65
      000CE7 00                    1971 	.db	0
      000CE8 00 00 86 B7           1972 	.dw	0,(_I2C_Read_Byte)
      000CEC 00 00 86 F0           1973 	.dw	0,(XG$I2C_Read_Byte$0$0+1)
      000CF0 01                    1974 	.db	1
      000CF1 00 00 07 68           1975 	.dw	0,(Ldebug_loc_start+360)
      000CF5 00 00 00 8E           1976 	.dw	0,142
      000CF9 09                    1977 	.uleb128	9
      000CFA 02                    1978 	.db	2
      000CFB 91                    1979 	.db	145
      000CFC 02                    1980 	.sleb128	2
      000CFD 61 63 6B              1981 	.ascii "ack"
      000D00 00                    1982 	.db	0
      000D01 00 00 00 8E           1983 	.dw	0,142
      000D05 06                    1984 	.uleb128	6
      000D06 00 00 86 BC           1985 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$108)
      000D0A 00 00 86 D8           1986 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$115)
      000D0E 07                    1987 	.uleb128	7
      000D0F 02                    1988 	.db	2
      000D10 91                    1989 	.db	145
      000D11 7F                    1990 	.sleb128	-1
      000D12 69                    1991 	.ascii "i"
      000D13 00                    1992 	.db	0
      000D14 00 00 00 8E           1993 	.dw	0,142
      000D18 07                    1994 	.uleb128	7
      000D19 02                    1995 	.db	2
      000D1A 91                    1996 	.db	145
      000D1B 7E                    1997 	.sleb128	-2
      000D1C 72 65 63 65 69 76 65  1998 	.ascii "receive"
      000D23 00                    1999 	.db	0
      000D24 00 00 00 8E           2000 	.dw	0,142
      000D28 00                    2001 	.uleb128	0
      000D29 04                    2002 	.uleb128	4
      000D2A 00 00 02 34           2003 	.dw	0,564
      000D2E 49 32 43 5F 4D 61 73  2004 	.ascii "I2C_MasterReceiveData"
             74 65 72 52 65 63 65
             69 76 65 44 61 74 61
      000D43 00                    2005 	.db	0
      000D44 00 00 86 F0           2006 	.dw	0,(_I2C_MasterReceiveData)
      000D48 00 00 87 78           2007 	.dw	0,(XG$I2C_MasterReceiveData$0$0+1)
      000D4C 01                    2008 	.db	1
      000D4D 00 00 06 88           2009 	.dw	0,(Ldebug_loc_start+136)
      000D51 00 00 00 8E           2010 	.dw	0,142
      000D55 09                    2011 	.uleb128	9
      000D56 02                    2012 	.db	2
      000D57 91                    2013 	.db	145
      000D58 02                    2014 	.sleb128	2
      000D59 64 65 76 41 64 64 72  2015 	.ascii "devAddr"
      000D60 00                    2016 	.db	0
      000D61 00 00 00 8E           2017 	.dw	0,142
      000D65 09                    2018 	.uleb128	9
      000D66 02                    2019 	.db	2
      000D67 91                    2020 	.db	145
      000D68 03                    2021 	.sleb128	3
      000D69 72 65 67 41 64 64 72  2022 	.ascii "regAddr"
      000D70 00                    2023 	.db	0
      000D71 00 00 00 8E           2024 	.dw	0,142
      000D75 0A                    2025 	.uleb128	10
      000D76 02                    2026 	.db	2
      000D77 00 00 00 8E           2027 	.dw	0,142
      000D7B 09                    2028 	.uleb128	9
      000D7C 02                    2029 	.db	2
      000D7D 91                    2030 	.db	145
      000D7E 04                    2031 	.sleb128	4
      000D7F 62 75 66 41 64 64 72  2032 	.ascii "bufAddr"
      000D86 00                    2033 	.db	0
      000D87 00 00 01 F4           2034 	.dw	0,500
      000D8B 09                    2035 	.uleb128	9
      000D8C 02                    2036 	.db	2
      000D8D 91                    2037 	.db	145
      000D8E 06                    2038 	.sleb128	6
      000D8F 64 61 74 61 4C 65 6E  2039 	.ascii "dataLen"
      000D96 00                    2040 	.db	0
      000D97 00 00 00 8E           2041 	.dw	0,142
      000D9B 0B                    2042 	.uleb128	11
      000D9C 00 00 87 32           2043 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$146)
      000DA0 06                    2044 	.uleb128	6
      000DA1 00 00 87 3B           2045 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$147)
      000DA5 00 00 87 48           2046 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$149)
      000DA9 07                    2047 	.uleb128	7
      000DAA 02                    2048 	.db	2
      000DAB 91                    2049 	.db	145
      000DAC 7F                    2050 	.sleb128	-1
      000DAD 69                    2051 	.ascii "i"
      000DAE 00                    2052 	.db	0
      000DAF 00 00 00 8E           2053 	.dw	0,142
      000DB3 00                    2054 	.uleb128	0
      000DB4 00                    2055 	.uleb128	0
      000DB5 04                    2056 	.uleb128	4
      000DB6 00 00 02 BB           2057 	.dw	0,699
      000DBA 49 32 43 5F 4D 61 73  2058 	.ascii "I2C_MasterSendData"
             74 65 72 53 65 6E 64
             44 61 74 61
      000DCC 00                    2059 	.db	0
      000DCD 00 00 87 78           2060 	.dw	0,(_I2C_MasterSendData)
      000DD1 00 00 87 C8           2061 	.dw	0,(XG$I2C_MasterSendData$0$0+1)
      000DD5 01                    2062 	.db	1
      000DD6 00 00 06 14           2063 	.dw	0,(Ldebug_loc_start+20)
      000DDA 00 00 00 8E           2064 	.dw	0,142
      000DDE 09                    2065 	.uleb128	9
      000DDF 02                    2066 	.db	2
      000DE0 91                    2067 	.db	145
      000DE1 02                    2068 	.sleb128	2
      000DE2 64 65 76 41 64 64 72  2069 	.ascii "devAddr"
      000DE9 00                    2070 	.db	0
      000DEA 00 00 00 8E           2071 	.dw	0,142
      000DEE 09                    2072 	.uleb128	9
      000DEF 02                    2073 	.db	2
      000DF0 91                    2074 	.db	145
      000DF1 03                    2075 	.sleb128	3
      000DF2 72 65 67 41 64 64 72  2076 	.ascii "regAddr"
      000DF9 00                    2077 	.db	0
      000DFA 00 00 00 8E           2078 	.dw	0,142
      000DFE 09                    2079 	.uleb128	9
      000DFF 02                    2080 	.db	2
      000E00 91                    2081 	.db	145
      000E01 04                    2082 	.sleb128	4
      000E02 62 75 66 41 64 64 72  2083 	.ascii "bufAddr"
      000E09 00                    2084 	.db	0
      000E0A 00 00 01 F4           2085 	.dw	0,500
      000E0E 09                    2086 	.uleb128	9
      000E0F 02                    2087 	.db	2
      000E10 91                    2088 	.db	145
      000E11 06                    2089 	.sleb128	6
      000E12 64 61 74 61 4C 65 6E  2090 	.ascii "dataLen"
      000E19 00                    2091 	.db	0
      000E1A 00 00 00 8E           2092 	.dw	0,142
      000E1E 0C                    2093 	.uleb128	12
      000E1F 00 00 87 A0           2094 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$185)
      000E23 00 00 87 C0           2095 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$194)
      000E27 06                    2096 	.uleb128	6
      000E28 00 00 87 A6           2097 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$186)
      000E2C 00 00 87 BC           2098 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$192)
      000E30 07                    2099 	.uleb128	7
      000E31 02                    2100 	.db	2
      000E32 91                    2101 	.db	145
      000E33 7F                    2102 	.sleb128	-1
      000E34 69                    2103 	.ascii "i"
      000E35 00                    2104 	.db	0
      000E36 00 00 00 8E           2105 	.dw	0,142
      000E3A 00                    2106 	.uleb128	0
      000E3B 00                    2107 	.uleb128	0
      000E3C 02                    2108 	.uleb128	2
      000E3D 64 65 6C 61 79 5F 75  2109 	.ascii "delay_us"
             73
      000E45 00                    2110 	.db	0
      000E46 00 00 87 C8           2111 	.dw	0,(_delay_us)
      000E4A 00 00 87 CD           2112 	.dw	0,(XG$delay_us$0$0+1)
      000E4E 01                    2113 	.db	1
      000E4F 00 00 06 00           2114 	.dw	0,(Ldebug_loc_start)
      000E53 00                    2115 	.uleb128	0
      000E54 00                    2116 	.uleb128	0
      000E55 00                    2117 	.uleb128	0
      000E56                       2118 Ldebug_info_end:
                                   2119 
                                   2120 	.area .debug_pubnames (NOLOAD)
      000231 00 00 00 C2           2121 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000235                       2122 Ldebug_pubnames_start:
      000235 00 02                 2123 	.dw	2
      000237 00 00 0B 81           2124 	.dw	0,(Ldebug_info_start-4)
      00023B 00 00 02 D5           2125 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00023F 00 00 00 48           2126 	.dw	0,72
      000243 49 32 43 5F 49 6E 69  2127 	.ascii "I2C_Init"
             74
      00024B 00                    2128 	.db	0
      00024C 00 00 00 5F           2129 	.dw	0,95
      000250 49 32 43 5F 53 74 61  2130 	.ascii "I2C_Start"
             72 74
      000259 00                    2131 	.db	0
      00025A 00 00 00 77           2132 	.dw	0,119
      00025E 49 32 43 5F 53 74 6F  2133 	.ascii "I2C_Stop"
             70
      000266 00                    2134 	.db	0
      000267 00 00 00 9F           2135 	.dw	0,159
      00026B 49 32 43 5F 57 61 69  2136 	.ascii "I2C_Wait_Ack"
             74 5F 41 63 6B
      000277 00                    2137 	.db	0
      000278 00 00 00 E7           2138 	.dw	0,231
      00027C 49 32 43 5F 41 63 6B  2139 	.ascii "I2C_Ack"
      000283 00                    2140 	.db	0
      000284 00 00 00 FD           2141 	.dw	0,253
      000288 49 32 43 5F 4E 41 63  2142 	.ascii "I2C_NAck"
             6B
      000290 00                    2143 	.db	0
      000291 00 00 01 14           2144 	.dw	0,276
      000295 49 32 43 5F 53 65 6E  2145 	.ascii "I2C_Send_Byte"
             64 5F 42 79 74 65
      0002A2 00                    2146 	.db	0
      0002A3 00 00 01 54           2147 	.dw	0,340
      0002A7 49 32 43 5F 52 65 61  2148 	.ascii "I2C_Read_Byte"
             64 5F 42 79 74 65
      0002B4 00                    2149 	.db	0
      0002B5 00 00 01 A8           2150 	.dw	0,424
      0002B9 49 32 43 5F 4D 61 73  2151 	.ascii "I2C_MasterReceiveData"
             74 65 72 52 65 63 65
             69 76 65 44 61 74 61
      0002CE 00                    2152 	.db	0
      0002CF 00 00 02 34           2153 	.dw	0,564
      0002D3 49 32 43 5F 4D 61 73  2154 	.ascii "I2C_MasterSendData"
             74 65 72 53 65 6E 64
             44 61 74 61
      0002E5 00                    2155 	.db	0
      0002E6 00 00 02 BB           2156 	.dw	0,699
      0002EA 64 65 6C 61 79 5F 75  2157 	.ascii "delay_us"
             73
      0002F2 00                    2158 	.db	0
      0002F3 00 00 00 00           2159 	.dw	0,0
      0002F7                       2160 Ldebug_pubnames_end:
                                   2161 
                                   2162 	.area .debug_frame (NOLOAD)
      000640 00 00                 2163 	.dw	0
      000642 00 0E                 2164 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000644                       2165 Ldebug_CIE0_start:
      000644 FF FF                 2166 	.dw	0xffff
      000646 FF FF                 2167 	.dw	0xffff
      000648 01                    2168 	.db	1
      000649 00                    2169 	.db	0
      00064A 01                    2170 	.uleb128	1
      00064B 7F                    2171 	.sleb128	-1
      00064C 09                    2172 	.db	9
      00064D 0C                    2173 	.db	12
      00064E 08                    2174 	.uleb128	8
      00064F 02                    2175 	.uleb128	2
      000650 89                    2176 	.db	137
      000651 01                    2177 	.uleb128	1
      000652                       2178 Ldebug_CIE0_end:
      000652 00 00 00 13           2179 	.dw	0,19
      000656 00 00 06 40           2180 	.dw	0,(Ldebug_CIE0_start-4)
      00065A 00 00 87 C8           2181 	.dw	0,(Ssoft_i2c$delay_us$202)	;initial loc
      00065E 00 00 00 05           2182 	.dw	0,Ssoft_i2c$delay_us$206-Ssoft_i2c$delay_us$202
      000662 01                    2183 	.db	1
      000663 00 00 87 C8           2184 	.dw	0,(Ssoft_i2c$delay_us$202)
      000667 0E                    2185 	.db	14
      000668 02                    2186 	.uleb128	2
                                   2187 
                                   2188 	.area .debug_frame (NOLOAD)
      000669 00 00                 2189 	.dw	0
      00066B 00 0E                 2190 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00066D                       2191 Ldebug_CIE1_start:
      00066D FF FF                 2192 	.dw	0xffff
      00066F FF FF                 2193 	.dw	0xffff
      000671 01                    2194 	.db	1
      000672 00                    2195 	.db	0
      000673 01                    2196 	.uleb128	1
      000674 7F                    2197 	.sleb128	-1
      000675 09                    2198 	.db	9
      000676 0C                    2199 	.db	12
      000677 08                    2200 	.uleb128	8
      000678 02                    2201 	.uleb128	2
      000679 89                    2202 	.db	137
      00067A 01                    2203 	.uleb128	1
      00067B                       2204 Ldebug_CIE1_end:
      00067B 00 00 00 4B           2205 	.dw	0,75
      00067F 00 00 06 69           2206 	.dw	0,(Ldebug_CIE1_start-4)
      000683 00 00 87 78           2207 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)	;initial loc
      000687 00 00 00 50           2208 	.dw	0,Ssoft_i2c$I2C_MasterSendData$200-Ssoft_i2c$I2C_MasterSendData$171
      00068B 01                    2209 	.db	1
      00068C 00 00 87 78           2210 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
      000690 0E                    2211 	.db	14
      000691 02                    2212 	.uleb128	2
      000692 01                    2213 	.db	1
      000693 00 00 87 79           2214 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      000697 0E                    2215 	.db	14
      000698 03                    2216 	.uleb128	3
      000699 01                    2217 	.db	1
      00069A 00 00 87 80           2218 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      00069E 0E                    2219 	.db	14
      00069F 04                    2220 	.uleb128	4
      0006A0 01                    2221 	.db	1
      0006A1 00 00 87 84           2222 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      0006A5 0E                    2223 	.db	14
      0006A6 03                    2224 	.uleb128	3
      0006A7 01                    2225 	.db	1
      0006A8 00 00 87 91           2226 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      0006AC 0E                    2227 	.db	14
      0006AD 04                    2228 	.uleb128	4
      0006AE 01                    2229 	.db	1
      0006AF 00 00 87 95           2230 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      0006B3 0E                    2231 	.db	14
      0006B4 03                    2232 	.uleb128	3
      0006B5 01                    2233 	.db	1
      0006B6 00 00 87 AF           2234 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      0006BA 0E                    2235 	.db	14
      0006BB 04                    2236 	.uleb128	4
      0006BC 01                    2237 	.db	1
      0006BD 00 00 87 B3           2238 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      0006C1 0E                    2239 	.db	14
      0006C2 03                    2240 	.uleb128	3
      0006C3 01                    2241 	.db	1
      0006C4 00 00 87 C7           2242 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      0006C8 0E                    2243 	.db	14
      0006C9 02                    2244 	.uleb128	2
                                   2245 
                                   2246 	.area .debug_frame (NOLOAD)
      0006CA 00 00                 2247 	.dw	0
      0006CC 00 0E                 2248 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0006CE                       2249 Ldebug_CIE2_start:
      0006CE FF FF                 2250 	.dw	0xffff
      0006D0 FF FF                 2251 	.dw	0xffff
      0006D2 01                    2252 	.db	1
      0006D3 00                    2253 	.db	0
      0006D4 01                    2254 	.uleb128	1
      0006D5 7F                    2255 	.sleb128	-1
      0006D6 09                    2256 	.db	9
      0006D7 0C                    2257 	.db	12
      0006D8 08                    2258 	.uleb128	8
      0006D9 02                    2259 	.uleb128	2
      0006DA 89                    2260 	.db	137
      0006DB 01                    2261 	.uleb128	1
      0006DC                       2262 Ldebug_CIE2_end:
      0006DC 00 00 00 8A           2263 	.dw	0,138
      0006E0 00 00 06 CA           2264 	.dw	0,(Ldebug_CIE2_start-4)
      0006E4 00 00 86 F0           2265 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)	;initial loc
      0006E8 00 00 00 88           2266 	.dw	0,Ssoft_i2c$I2C_MasterReceiveData$169-Ssoft_i2c$I2C_MasterReceiveData$126
      0006EC 01                    2267 	.db	1
      0006ED 00 00 86 F0           2268 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
      0006F1 0E                    2269 	.db	14
      0006F2 02                    2270 	.uleb128	2
      0006F3 01                    2271 	.db	1
      0006F4 00 00 86 F2           2272 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      0006F8 0E                    2273 	.db	14
      0006F9 05                    2274 	.uleb128	5
      0006FA 01                    2275 	.db	1
      0006FB 00 00 86 FB           2276 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      0006FF 0E                    2277 	.db	14
      000700 06                    2278 	.uleb128	6
      000701 01                    2279 	.db	1
      000702 00 00 86 FF           2280 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000706 0E                    2281 	.db	14
      000707 05                    2282 	.uleb128	5
      000708 01                    2283 	.db	1
      000709 00 00 87 0C           2284 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      00070D 0E                    2285 	.db	14
      00070E 06                    2286 	.uleb128	6
      00070F 01                    2287 	.db	1
      000710 00 00 87 10           2288 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      000714 0E                    2289 	.db	14
      000715 05                    2290 	.uleb128	5
      000716 01                    2291 	.db	1
      000717 00 00 87 22           2292 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      00071B 0E                    2293 	.db	14
      00071C 06                    2294 	.uleb128	6
      00071D 01                    2295 	.db	1
      00071E 00 00 87 26           2296 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000722 0E                    2297 	.db	14
      000723 05                    2298 	.uleb128	5
      000724 01                    2299 	.db	1
      000725 00 00 87 55           2300 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      000729 0E                    2301 	.db	14
      00072A 05                    2302 	.uleb128	5
      00072B 01                    2303 	.db	1
      00072C 00 00 87 56           2304 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      000730 0E                    2305 	.db	14
      000731 07                    2306 	.uleb128	7
      000732 01                    2307 	.db	1
      000733 00 00 87 58           2308 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      000737 0E                    2309 	.db	14
      000738 08                    2310 	.uleb128	8
      000739 01                    2311 	.db	1
      00073A 00 00 87 5D           2312 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      00073E 0E                    2313 	.db	14
      00073F 07                    2314 	.uleb128	7
      000740 01                    2315 	.db	1
      000741 00 00 87 5E           2316 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      000745 0E                    2317 	.db	14
      000746 05                    2318 	.uleb128	5
      000747 01                    2319 	.db	1
      000748 00 00 87 62           2320 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      00074C 0E                    2321 	.db	14
      00074D 07                    2322 	.uleb128	7
      00074E 01                    2323 	.db	1
      00074F 00 00 87 64           2324 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      000753 0E                    2325 	.db	14
      000754 08                    2326 	.uleb128	8
      000755 01                    2327 	.db	1
      000756 00 00 87 69           2328 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      00075A 0E                    2329 	.db	14
      00075B 07                    2330 	.uleb128	7
      00075C 01                    2331 	.db	1
      00075D 00 00 87 6A           2332 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      000761 0E                    2333 	.db	14
      000762 05                    2334 	.uleb128	5
      000763 01                    2335 	.db	1
      000764 00 00 87 77           2336 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      000768 0E                    2337 	.db	14
      000769 02                    2338 	.uleb128	2
                                   2339 
                                   2340 	.area .debug_frame (NOLOAD)
      00076A 00 00                 2341 	.dw	0
      00076C 00 0E                 2342 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00076E                       2343 Ldebug_CIE3_start:
      00076E FF FF                 2344 	.dw	0xffff
      000770 FF FF                 2345 	.dw	0xffff
      000772 01                    2346 	.db	1
      000773 00                    2347 	.db	0
      000774 01                    2348 	.uleb128	1
      000775 7F                    2349 	.sleb128	-1
      000776 09                    2350 	.db	9
      000777 0C                    2351 	.db	12
      000778 08                    2352 	.uleb128	8
      000779 02                    2353 	.uleb128	2
      00077A 89                    2354 	.db	137
      00077B 01                    2355 	.uleb128	1
      00077C                       2356 Ldebug_CIE3_end:
      00077C 00 00 00 21           2357 	.dw	0,33
      000780 00 00 07 6A           2358 	.dw	0,(Ldebug_CIE3_start-4)
      000784 00 00 86 B7           2359 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)	;initial loc
      000788 00 00 00 39           2360 	.dw	0,Ssoft_i2c$I2C_Read_Byte$124-Ssoft_i2c$I2C_Read_Byte$104
      00078C 01                    2361 	.db	1
      00078D 00 00 86 B7           2362 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
      000791 0E                    2363 	.db	14
      000792 02                    2364 	.uleb128	2
      000793 01                    2365 	.db	1
      000794 00 00 86 B8           2366 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000798 0E                    2367 	.db	14
      000799 04                    2368 	.uleb128	4
      00079A 01                    2369 	.db	1
      00079B 00 00 86 EF           2370 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      00079F 0E                    2371 	.db	14
      0007A0 02                    2372 	.uleb128	2
                                   2373 
                                   2374 	.area .debug_frame (NOLOAD)
      0007A1 00 00                 2375 	.dw	0
      0007A3 00 0E                 2376 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      0007A5                       2377 Ldebug_CIE4_start:
      0007A5 FF FF                 2378 	.dw	0xffff
      0007A7 FF FF                 2379 	.dw	0xffff
      0007A9 01                    2380 	.db	1
      0007AA 00                    2381 	.db	0
      0007AB 01                    2382 	.uleb128	1
      0007AC 7F                    2383 	.sleb128	-1
      0007AD 09                    2384 	.db	9
      0007AE 0C                    2385 	.db	12
      0007AF 08                    2386 	.uleb128	8
      0007B0 02                    2387 	.uleb128	2
      0007B1 89                    2388 	.db	137
      0007B2 01                    2389 	.uleb128	1
      0007B3                       2390 Ldebug_CIE4_end:
      0007B3 00 00 00 21           2391 	.dw	0,33
      0007B7 00 00 07 A1           2392 	.dw	0,(Ldebug_CIE4_start-4)
      0007BB 00 00 86 6F           2393 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)	;initial loc
      0007BF 00 00 00 48           2394 	.dw	0,Ssoft_i2c$I2C_Send_Byte$102-Ssoft_i2c$I2C_Send_Byte$81
      0007C3 01                    2395 	.db	1
      0007C4 00 00 86 6F           2396 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
      0007C8 0E                    2397 	.db	14
      0007C9 02                    2398 	.uleb128	2
      0007CA 01                    2399 	.db	1
      0007CB 00 00 86 70           2400 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      0007CF 0E                    2401 	.db	14
      0007D0 03                    2402 	.uleb128	3
      0007D1 01                    2403 	.db	1
      0007D2 00 00 86 B6           2404 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      0007D6 0E                    2405 	.db	14
      0007D7 02                    2406 	.uleb128	2
                                   2407 
                                   2408 	.area .debug_frame (NOLOAD)
      0007D8 00 00                 2409 	.dw	0
      0007DA 00 0E                 2410 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0007DC                       2411 Ldebug_CIE5_start:
      0007DC FF FF                 2412 	.dw	0xffff
      0007DE FF FF                 2413 	.dw	0xffff
      0007E0 01                    2414 	.db	1
      0007E1 00                    2415 	.db	0
      0007E2 01                    2416 	.uleb128	1
      0007E3 7F                    2417 	.sleb128	-1
      0007E4 09                    2418 	.db	9
      0007E5 0C                    2419 	.db	12
      0007E6 08                    2420 	.uleb128	8
      0007E7 02                    2421 	.uleb128	2
      0007E8 89                    2422 	.db	137
      0007E9 01                    2423 	.uleb128	1
      0007EA                       2424 Ldebug_CIE5_end:
      0007EA 00 00 00 13           2425 	.dw	0,19
      0007EE 00 00 07 D8           2426 	.dw	0,(Ldebug_CIE5_start-4)
      0007F2 00 00 86 58           2427 	.dw	0,(Ssoft_i2c$I2C_NAck$70)	;initial loc
      0007F6 00 00 00 17           2428 	.dw	0,Ssoft_i2c$I2C_NAck$79-Ssoft_i2c$I2C_NAck$70
      0007FA 01                    2429 	.db	1
      0007FB 00 00 86 58           2430 	.dw	0,(Ssoft_i2c$I2C_NAck$70)
      0007FF 0E                    2431 	.db	14
      000800 02                    2432 	.uleb128	2
                                   2433 
                                   2434 	.area .debug_frame (NOLOAD)
      000801 00 00                 2435 	.dw	0
      000803 00 0E                 2436 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      000805                       2437 Ldebug_CIE6_start:
      000805 FF FF                 2438 	.dw	0xffff
      000807 FF FF                 2439 	.dw	0xffff
      000809 01                    2440 	.db	1
      00080A 00                    2441 	.db	0
      00080B 01                    2442 	.uleb128	1
      00080C 7F                    2443 	.sleb128	-1
      00080D 09                    2444 	.db	9
      00080E 0C                    2445 	.db	12
      00080F 08                    2446 	.uleb128	8
      000810 02                    2447 	.uleb128	2
      000811 89                    2448 	.db	137
      000812 01                    2449 	.uleb128	1
      000813                       2450 Ldebug_CIE6_end:
      000813 00 00 00 13           2451 	.dw	0,19
      000817 00 00 08 01           2452 	.dw	0,(Ldebug_CIE6_start-4)
      00081B 00 00 86 41           2453 	.dw	0,(Ssoft_i2c$I2C_Ack$59)	;initial loc
      00081F 00 00 00 17           2454 	.dw	0,Ssoft_i2c$I2C_Ack$68-Ssoft_i2c$I2C_Ack$59
      000823 01                    2455 	.db	1
      000824 00 00 86 41           2456 	.dw	0,(Ssoft_i2c$I2C_Ack$59)
      000828 0E                    2457 	.db	14
      000829 02                    2458 	.uleb128	2
                                   2459 
                                   2460 	.area .debug_frame (NOLOAD)
      00082A 00 00                 2461 	.dw	0
      00082C 00 0E                 2462 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      00082E                       2463 Ldebug_CIE7_start:
      00082E FF FF                 2464 	.dw	0xffff
      000830 FF FF                 2465 	.dw	0xffff
      000832 01                    2466 	.db	1
      000833 00                    2467 	.db	0
      000834 01                    2468 	.uleb128	1
      000835 7F                    2469 	.sleb128	-1
      000836 09                    2470 	.db	9
      000837 0C                    2471 	.db	12
      000838 08                    2472 	.uleb128	8
      000839 02                    2473 	.uleb128	2
      00083A 89                    2474 	.db	137
      00083B 01                    2475 	.uleb128	1
      00083C                       2476 Ldebug_CIE7_end:
      00083C 00 00 00 13           2477 	.dw	0,19
      000840 00 00 08 2A           2478 	.dw	0,(Ldebug_CIE7_start-4)
      000844 00 00 86 0F           2479 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)	;initial loc
      000848 00 00 00 32           2480 	.dw	0,Ssoft_i2c$I2C_Wait_Ack$57-Ssoft_i2c$I2C_Wait_Ack$42
      00084C 01                    2481 	.db	1
      00084D 00 00 86 0F           2482 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
      000851 0E                    2483 	.db	14
      000852 02                    2484 	.uleb128	2
                                   2485 
                                   2486 	.area .debug_frame (NOLOAD)
      000853 00 00                 2487 	.dw	0
      000855 00 0E                 2488 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      000857                       2489 Ldebug_CIE8_start:
      000857 FF FF                 2490 	.dw	0xffff
      000859 FF FF                 2491 	.dw	0xffff
      00085B 01                    2492 	.db	1
      00085C 00                    2493 	.db	0
      00085D 01                    2494 	.uleb128	1
      00085E 7F                    2495 	.sleb128	-1
      00085F 09                    2496 	.db	9
      000860 0C                    2497 	.db	12
      000861 08                    2498 	.uleb128	8
      000862 02                    2499 	.uleb128	2
      000863 89                    2500 	.db	137
      000864 01                    2501 	.uleb128	1
      000865                       2502 Ldebug_CIE8_end:
      000865 00 00 00 13           2503 	.dw	0,19
      000869 00 00 08 53           2504 	.dw	0,(Ldebug_CIE8_start-4)
      00086D 00 00 85 F4           2505 	.dw	0,(Ssoft_i2c$I2C_Stop$31)	;initial loc
      000871 00 00 00 1B           2506 	.dw	0,Ssoft_i2c$I2C_Stop$40-Ssoft_i2c$I2C_Stop$31
      000875 01                    2507 	.db	1
      000876 00 00 85 F4           2508 	.dw	0,(Ssoft_i2c$I2C_Stop$31)
      00087A 0E                    2509 	.db	14
      00087B 02                    2510 	.uleb128	2
                                   2511 
                                   2512 	.area .debug_frame (NOLOAD)
      00087C 00 00                 2513 	.dw	0
      00087E 00 0E                 2514 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      000880                       2515 Ldebug_CIE9_start:
      000880 FF FF                 2516 	.dw	0xffff
      000882 FF FF                 2517 	.dw	0xffff
      000884 01                    2518 	.db	1
      000885 00                    2519 	.db	0
      000886 01                    2520 	.uleb128	1
      000887 7F                    2521 	.sleb128	-1
      000888 09                    2522 	.db	9
      000889 0C                    2523 	.db	12
      00088A 08                    2524 	.uleb128	8
      00088B 02                    2525 	.uleb128	2
      00088C 89                    2526 	.db	137
      00088D 01                    2527 	.uleb128	1
      00088E                       2528 Ldebug_CIE9_end:
      00088E 00 00 00 13           2529 	.dw	0,19
      000892 00 00 08 7C           2530 	.dw	0,(Ldebug_CIE9_start-4)
      000896 00 00 85 DD           2531 	.dw	0,(Ssoft_i2c$I2C_Start$20)	;initial loc
      00089A 00 00 00 17           2532 	.dw	0,Ssoft_i2c$I2C_Start$29-Ssoft_i2c$I2C_Start$20
      00089E 01                    2533 	.db	1
      00089F 00 00 85 DD           2534 	.dw	0,(Ssoft_i2c$I2C_Start$20)
      0008A3 0E                    2535 	.db	14
      0008A4 02                    2536 	.uleb128	2
                                   2537 
                                   2538 	.area .debug_frame (NOLOAD)
      0008A5 00 00                 2539 	.dw	0
      0008A7 00 0E                 2540 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      0008A9                       2541 Ldebug_CIE10_start:
      0008A9 FF FF                 2542 	.dw	0xffff
      0008AB FF FF                 2543 	.dw	0xffff
      0008AD 01                    2544 	.db	1
      0008AE 00                    2545 	.db	0
      0008AF 01                    2546 	.uleb128	1
      0008B0 7F                    2547 	.sleb128	-1
      0008B1 09                    2548 	.db	9
      0008B2 0C                    2549 	.db	12
      0008B3 08                    2550 	.uleb128	8
      0008B4 02                    2551 	.uleb128	2
      0008B5 89                    2552 	.db	137
      0008B6 01                    2553 	.uleb128	1
      0008B7                       2554 Ldebug_CIE10_end:
      0008B7 00 00 00 59           2555 	.dw	0,89
      0008BB 00 00 08 A5           2556 	.dw	0,(Ldebug_CIE10_start-4)
      0008BF 00 00 85 BA           2557 	.dw	0,(Ssoft_i2c$I2C_Init$1)	;initial loc
      0008C3 00 00 00 23           2558 	.dw	0,Ssoft_i2c$I2C_Init$18-Ssoft_i2c$I2C_Init$1
      0008C7 01                    2559 	.db	1
      0008C8 00 00 85 BA           2560 	.dw	0,(Ssoft_i2c$I2C_Init$1)
      0008CC 0E                    2561 	.db	14
      0008CD 02                    2562 	.uleb128	2
      0008CE 01                    2563 	.db	1
      0008CF 00 00 85 BC           2564 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      0008D3 0E                    2565 	.db	14
      0008D4 03                    2566 	.uleb128	3
      0008D5 01                    2567 	.db	1
      0008D6 00 00 85 BE           2568 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      0008DA 0E                    2569 	.db	14
      0008DB 04                    2570 	.uleb128	4
      0008DC 01                    2571 	.db	1
      0008DD 00 00 85 C0           2572 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      0008E1 0E                    2573 	.db	14
      0008E2 05                    2574 	.uleb128	5
      0008E3 01                    2575 	.db	1
      0008E4 00 00 85 C2           2576 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      0008E8 0E                    2577 	.db	14
      0008E9 06                    2578 	.uleb128	6
      0008EA 01                    2579 	.db	1
      0008EB 00 00 85 C7           2580 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      0008EF 0E                    2581 	.db	14
      0008F0 02                    2582 	.uleb128	2
      0008F1 01                    2583 	.db	1
      0008F2 00 00 85 C9           2584 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      0008F6 0E                    2585 	.db	14
      0008F7 03                    2586 	.uleb128	3
      0008F8 01                    2587 	.db	1
      0008F9 00 00 85 CB           2588 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      0008FD 0E                    2589 	.db	14
      0008FE 04                    2590 	.uleb128	4
      0008FF 01                    2591 	.db	1
      000900 00 00 85 CD           2592 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000904 0E                    2593 	.db	14
      000905 05                    2594 	.uleb128	5
      000906 01                    2595 	.db	1
      000907 00 00 85 CF           2596 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      00090B 0E                    2597 	.db	14
      00090C 06                    2598 	.uleb128	6
      00090D 01                    2599 	.db	1
      00090E 00 00 85 D4           2600 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000912 0E                    2601 	.db	14
      000913 02                    2602 	.uleb128	2
