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
      008A7D                         65 _I2C_Init:
                           000000    66 	Ssoft_i2c$I2C_Init$1 ==.
                           000000    67 	Ssoft_i2c$I2C_Init$2 ==.
                                     68 ;	Source/Driver/Src/soft_i2c.c: 29: GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A7D 4B 90            [ 1]   69 	push	#0x90
                           000002    70 	Ssoft_i2c$I2C_Init$3 ==.
      008A7F 4B 10            [ 1]   71 	push	#0x10
                           000004    72 	Ssoft_i2c$I2C_Init$4 ==.
      008A81 4B 05            [ 1]   73 	push	#0x05
                           000006    74 	Ssoft_i2c$I2C_Init$5 ==.
      008A83 4B 50            [ 1]   75 	push	#0x50
                           000008    76 	Ssoft_i2c$I2C_Init$6 ==.
      008A85 CD 82 1E         [ 4]   77 	call	_GPIO_Init
      008A88 5B 04            [ 2]   78 	addw	sp, #4
                           00000D    79 	Ssoft_i2c$I2C_Init$7 ==.
                           00000D    80 	Ssoft_i2c$I2C_Init$8 ==.
                                     81 ;	Source/Driver/Src/soft_i2c.c: 30: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_SLOW );
      008A8A 4B 90            [ 1]   82 	push	#0x90
                           00000F    83 	Ssoft_i2c$I2C_Init$9 ==.
      008A8C 4B 20            [ 1]   84 	push	#0x20
                           000011    85 	Ssoft_i2c$I2C_Init$10 ==.
      008A8E 4B 05            [ 1]   86 	push	#0x05
                           000013    87 	Ssoft_i2c$I2C_Init$11 ==.
      008A90 4B 50            [ 1]   88 	push	#0x50
                           000015    89 	Ssoft_i2c$I2C_Init$12 ==.
      008A92 CD 82 1E         [ 4]   90 	call	_GPIO_Init
      008A95 5B 04            [ 2]   91 	addw	sp, #4
                           00001A    92 	Ssoft_i2c$I2C_Init$13 ==.
                           00001A    93 	Ssoft_i2c$I2C_Init$14 ==.
                                     94 ;	Source/Driver/Src/soft_i2c.c: 31: I2C_SCL_H;
      008A97 72 18 50 05      [ 1]   95 	bset	20485, #4
                           00001E    96 	Ssoft_i2c$I2C_Init$15 ==.
                                     97 ;	Source/Driver/Src/soft_i2c.c: 32: I2C_SDA_H;
      008A9B 72 1A 50 05      [ 1]   98 	bset	20485, #5
                           000022    99 	Ssoft_i2c$I2C_Init$16 ==.
                                    100 ;	Source/Driver/Src/soft_i2c.c: 33: }
                           000022   101 	Ssoft_i2c$I2C_Init$17 ==.
                           000022   102 	XG$I2C_Init$0$0 ==.
      008A9F 81               [ 4]  103 	ret
                           000023   104 	Ssoft_i2c$I2C_Init$18 ==.
                           000023   105 	Ssoft_i2c$I2C_Start$19 ==.
                                    106 ;	Source/Driver/Src/soft_i2c.c: 36: void I2C_Start(void)
                                    107 ;	-----------------------------------------
                                    108 ;	 function I2C_Start
                                    109 ;	-----------------------------------------
      008AA0                        110 _I2C_Start:
                           000023   111 	Ssoft_i2c$I2C_Start$20 ==.
                           000023   112 	Ssoft_i2c$I2C_Start$21 ==.
                                    113 ;	Source/Driver/Src/soft_i2c.c: 38: I2C_SDA_H;                    
      008AA0 72 1A 50 05      [ 1]  114 	bset	20485, #5
                           000027   115 	Ssoft_i2c$I2C_Start$22 ==.
                                    116 ;	Source/Driver/Src/soft_i2c.c: 39: I2C_SCL_H;
      008AA4 72 18 50 05      [ 1]  117 	bset	20485, #4
                           00002B   118 	Ssoft_i2c$I2C_Start$23 ==.
                                    119 ;	Source/Driver/Src/soft_i2c.c: 40: delay_us();
      008AA8 CD 8C 8B         [ 4]  120 	call	_delay_us
                           00002E   121 	Ssoft_i2c$I2C_Start$24 ==.
                                    122 ;	Source/Driver/Src/soft_i2c.c: 41: I2C_SDA_L; //START:when CLK is high,DATA change form high to low
      008AAB 72 1B 50 05      [ 1]  123 	bres	20485, #5
                           000032   124 	Ssoft_i2c$I2C_Start$25 ==.
                                    125 ;	Source/Driver/Src/soft_i2c.c: 42: delay_us();
      008AAF CD 8C 8B         [ 4]  126 	call	_delay_us
                           000035   127 	Ssoft_i2c$I2C_Start$26 ==.
                                    128 ;	Source/Driver/Src/soft_i2c.c: 43: I2C_SCL_L; //??????I2C????????????????????????????????????
      008AB2 72 19 50 05      [ 1]  129 	bres	20485, #4
                           000039   130 	Ssoft_i2c$I2C_Start$27 ==.
                                    131 ;	Source/Driver/Src/soft_i2c.c: 44: }
                           000039   132 	Ssoft_i2c$I2C_Start$28 ==.
                           000039   133 	XG$I2C_Start$0$0 ==.
      008AB6 81               [ 4]  134 	ret
                           00003A   135 	Ssoft_i2c$I2C_Start$29 ==.
                           00003A   136 	Ssoft_i2c$I2C_Stop$30 ==.
                                    137 ;	Source/Driver/Src/soft_i2c.c: 47: void I2C_Stop(void)
                                    138 ;	-----------------------------------------
                                    139 ;	 function I2C_Stop
                                    140 ;	-----------------------------------------
      008AB7                        141 _I2C_Stop:
                           00003A   142 	Ssoft_i2c$I2C_Stop$31 ==.
                           00003A   143 	Ssoft_i2c$I2C_Stop$32 ==.
                                    144 ;	Source/Driver/Src/soft_i2c.c: 49: I2C_SCL_L;
      008AB7 72 19 50 05      [ 1]  145 	bres	20485, #4
                           00003E   146 	Ssoft_i2c$I2C_Stop$33 ==.
                                    147 ;	Source/Driver/Src/soft_i2c.c: 51: I2C_SDA_L;//STOP:when CLK is high DATA change form low to high
      008ABB 72 1B 50 05      [ 1]  148 	bres	20485, #5
                           000042   149 	Ssoft_i2c$I2C_Stop$34 ==.
                                    150 ;	Source/Driver/Src/soft_i2c.c: 52: delay_us();
      008ABF CD 8C 8B         [ 4]  151 	call	_delay_us
                           000045   152 	Ssoft_i2c$I2C_Stop$35 ==.
                                    153 ;	Source/Driver/Src/soft_i2c.c: 53: I2C_SCL_H;
      008AC2 72 18 50 05      [ 1]  154 	bset	20485, #4
                           000049   155 	Ssoft_i2c$I2C_Stop$36 ==.
                                    156 ;	Source/Driver/Src/soft_i2c.c: 54: I2C_SDA_H;//??????I2C??????????????????
      008AC6 C6 50 05         [ 1]  157 	ld	a, 0x5005
      008AC9 AA 20            [ 1]  158 	or	a, #0x20
      008ACB C7 50 05         [ 1]  159 	ld	0x5005, a
                           000051   160 	Ssoft_i2c$I2C_Stop$37 ==.
                                    161 ;	Source/Driver/Src/soft_i2c.c: 55: delay_us();                                                                  
      008ACE CC 8C 8B         [ 2]  162 	jp	_delay_us
                           000054   163 	Ssoft_i2c$I2C_Stop$38 ==.
                                    164 ;	Source/Driver/Src/soft_i2c.c: 56: }
                           000054   165 	Ssoft_i2c$I2C_Stop$39 ==.
                           000054   166 	XG$I2C_Stop$0$0 ==.
      008AD1 81               [ 4]  167 	ret
                           000055   168 	Ssoft_i2c$I2C_Stop$40 ==.
                           000055   169 	Ssoft_i2c$I2C_Wait_Ack$41 ==.
                                    170 ;	Source/Driver/Src/soft_i2c.c: 61: uint8_t I2C_Wait_Ack(void)
                                    171 ;	-----------------------------------------
                                    172 ;	 function I2C_Wait_Ack
                                    173 ;	-----------------------------------------
      008AD2                        174 _I2C_Wait_Ack:
                           000055   175 	Ssoft_i2c$I2C_Wait_Ack$42 ==.
                           000055   176 	Ssoft_i2c$I2C_Wait_Ack$43 ==.
                                    177 ;	Source/Driver/Src/soft_i2c.c: 65: I2C_SDA_H;nop();          
      008AD2 C6 50 05         [ 1]  178 	ld	a, 0x5005
      008AD5 AA 20            [ 1]  179 	or	a, #0x20
      008AD7 C7 50 05         [ 1]  180 	ld	0x5005, a
      008ADA 9D               [ 1]  181 	nop
                           00005E   182 	Ssoft_i2c$I2C_Wait_Ack$44 ==.
                                    183 ;	Source/Driver/Src/soft_i2c.c: 66: I2C_SCL_H;nop();
      008ADB C6 50 05         [ 1]  184 	ld	a, 0x5005
      008ADE AA 10            [ 1]  185 	or	a, #0x10
      008AE0 C7 50 05         [ 1]  186 	ld	0x5005, a
      008AE3 9D               [ 1]  187 	nop
                           000067   188 	Ssoft_i2c$I2C_Wait_Ack$45 ==.
                                    189 ;	Source/Driver/Src/soft_i2c.c: 67: while(I2C_SDA_R)
      008AE4 5F               [ 1]  190 	clrw	x
      008AE5                        191 00103$:
      008AE5 C6 50 06         [ 1]  192 	ld	a, 0x5006
      008AE8 A4 20            [ 1]  193 	and	a, #0x20
      008AEA 4E               [ 1]  194 	swap	a
      008AEB A4 0F            [ 1]  195 	and	a, #0x0f
      008AED 44               [ 1]  196 	srl	a
      008AEE 4D               [ 1]  197 	tnz	a
      008AEF 27 0D            [ 1]  198 	jreq	00105$
                           000074   199 	Ssoft_i2c$I2C_Wait_Ack$46 ==.
                           000074   200 	Ssoft_i2c$I2C_Wait_Ack$47 ==.
                                    201 ;	Source/Driver/Src/soft_i2c.c: 69: ucErrTime++;
      008AF1 5C               [ 1]  202 	incw	x
                           000075   203 	Ssoft_i2c$I2C_Wait_Ack$48 ==.
                                    204 ;	Source/Driver/Src/soft_i2c.c: 70: if(ucErrTime>250)
      008AF2 9F               [ 1]  205 	ld	a, xl
      008AF3 A1 FA            [ 1]  206 	cp	a, #0xfa
      008AF5 23 EE            [ 2]  207 	jrule	00103$
                           00007A   208 	Ssoft_i2c$I2C_Wait_Ack$49 ==.
                           00007A   209 	Ssoft_i2c$I2C_Wait_Ack$50 ==.
                                    210 ;	Source/Driver/Src/soft_i2c.c: 72: I2C_Stop();
      008AF7 CD 8A B7         [ 4]  211 	call	_I2C_Stop
                           00007D   212 	Ssoft_i2c$I2C_Wait_Ack$51 ==.
                                    213 ;	Source/Driver/Src/soft_i2c.c: 73: return 1;
      008AFA A6 01            [ 1]  214 	ld	a, #0x01
      008AFC 20 05            [ 2]  215 	jra	00106$
                           000081   216 	Ssoft_i2c$I2C_Wait_Ack$52 ==.
      008AFE                        217 00105$:
                           000081   218 	Ssoft_i2c$I2C_Wait_Ack$53 ==.
                                    219 ;	Source/Driver/Src/soft_i2c.c: 76: I2C_SCL_L;//????????????0           
      008AFE 72 19 50 05      [ 1]  220 	bres	20485, #4
                           000085   221 	Ssoft_i2c$I2C_Wait_Ack$54 ==.
                                    222 ;	Source/Driver/Src/soft_i2c.c: 77: return 0;  
      008B02 4F               [ 1]  223 	clr	a
      008B03                        224 00106$:
                           000086   225 	Ssoft_i2c$I2C_Wait_Ack$55 ==.
                                    226 ;	Source/Driver/Src/soft_i2c.c: 78: }
                           000086   227 	Ssoft_i2c$I2C_Wait_Ack$56 ==.
                           000086   228 	XG$I2C_Wait_Ack$0$0 ==.
      008B03 81               [ 4]  229 	ret
                           000087   230 	Ssoft_i2c$I2C_Wait_Ack$57 ==.
                           000087   231 	Ssoft_i2c$I2C_Ack$58 ==.
                                    232 ;	Source/Driver/Src/soft_i2c.c: 81: void I2C_Ack(void)
                                    233 ;	-----------------------------------------
                                    234 ;	 function I2C_Ack
                                    235 ;	-----------------------------------------
      008B04                        236 _I2C_Ack:
                           000087   237 	Ssoft_i2c$I2C_Ack$59 ==.
                           000087   238 	Ssoft_i2c$I2C_Ack$60 ==.
                                    239 ;	Source/Driver/Src/soft_i2c.c: 83: I2C_SCL_L;
      008B04 72 19 50 05      [ 1]  240 	bres	20485, #4
                           00008B   241 	Ssoft_i2c$I2C_Ack$61 ==.
                                    242 ;	Source/Driver/Src/soft_i2c.c: 84: I2C_SDA_L;
      008B08 72 1B 50 05      [ 1]  243 	bres	20485, #5
                           00008F   244 	Ssoft_i2c$I2C_Ack$62 ==.
                                    245 ;	Source/Driver/Src/soft_i2c.c: 85: delay_us();
      008B0C CD 8C 8B         [ 4]  246 	call	_delay_us
                           000092   247 	Ssoft_i2c$I2C_Ack$63 ==.
                                    248 ;	Source/Driver/Src/soft_i2c.c: 86: I2C_SCL_H;
      008B0F 72 18 50 05      [ 1]  249 	bset	20485, #4
                           000096   250 	Ssoft_i2c$I2C_Ack$64 ==.
                                    251 ;	Source/Driver/Src/soft_i2c.c: 87: delay_us();
      008B13 CD 8C 8B         [ 4]  252 	call	_delay_us
                           000099   253 	Ssoft_i2c$I2C_Ack$65 ==.
                                    254 ;	Source/Driver/Src/soft_i2c.c: 88: I2C_SCL_L;
      008B16 72 19 50 05      [ 1]  255 	bres	20485, #4
                           00009D   256 	Ssoft_i2c$I2C_Ack$66 ==.
                                    257 ;	Source/Driver/Src/soft_i2c.c: 89: }
                           00009D   258 	Ssoft_i2c$I2C_Ack$67 ==.
                           00009D   259 	XG$I2C_Ack$0$0 ==.
      008B1A 81               [ 4]  260 	ret
                           00009E   261 	Ssoft_i2c$I2C_Ack$68 ==.
                           00009E   262 	Ssoft_i2c$I2C_NAck$69 ==.
                                    263 ;	Source/Driver/Src/soft_i2c.c: 92: void I2C_NAck(void)
                                    264 ;	-----------------------------------------
                                    265 ;	 function I2C_NAck
                                    266 ;	-----------------------------------------
      008B1B                        267 _I2C_NAck:
                           00009E   268 	Ssoft_i2c$I2C_NAck$70 ==.
                           00009E   269 	Ssoft_i2c$I2C_NAck$71 ==.
                                    270 ;	Source/Driver/Src/soft_i2c.c: 94: I2C_SCL_L;
      008B1B 72 19 50 05      [ 1]  271 	bres	20485, #4
                           0000A2   272 	Ssoft_i2c$I2C_NAck$72 ==.
                                    273 ;	Source/Driver/Src/soft_i2c.c: 95: I2C_SDA_H;
      008B1F 72 1A 50 05      [ 1]  274 	bset	20485, #5
                           0000A6   275 	Ssoft_i2c$I2C_NAck$73 ==.
                                    276 ;	Source/Driver/Src/soft_i2c.c: 96: delay_us();
      008B23 CD 8C 8B         [ 4]  277 	call	_delay_us
                           0000A9   278 	Ssoft_i2c$I2C_NAck$74 ==.
                                    279 ;	Source/Driver/Src/soft_i2c.c: 97: I2C_SCL_H;
      008B26 72 18 50 05      [ 1]  280 	bset	20485, #4
                           0000AD   281 	Ssoft_i2c$I2C_NAck$75 ==.
                                    282 ;	Source/Driver/Src/soft_i2c.c: 98: delay_us();
      008B2A CD 8C 8B         [ 4]  283 	call	_delay_us
                           0000B0   284 	Ssoft_i2c$I2C_NAck$76 ==.
                                    285 ;	Source/Driver/Src/soft_i2c.c: 99: I2C_SCL_L;
      008B2D 72 19 50 05      [ 1]  286 	bres	20485, #4
                           0000B4   287 	Ssoft_i2c$I2C_NAck$77 ==.
                                    288 ;	Source/Driver/Src/soft_i2c.c: 100: }
                           0000B4   289 	Ssoft_i2c$I2C_NAck$78 ==.
                           0000B4   290 	XG$I2C_NAck$0$0 ==.
      008B31 81               [ 4]  291 	ret
                           0000B5   292 	Ssoft_i2c$I2C_NAck$79 ==.
                           0000B5   293 	Ssoft_i2c$I2C_Send_Byte$80 ==.
                                    294 ;	Source/Driver/Src/soft_i2c.c: 106: void I2C_Send_Byte(uint8_t txd)
                                    295 ;	-----------------------------------------
                                    296 ;	 function I2C_Send_Byte
                                    297 ;	-----------------------------------------
      008B32                        298 _I2C_Send_Byte:
                           0000B5   299 	Ssoft_i2c$I2C_Send_Byte$81 ==.
      008B32 88               [ 1]  300 	push	a
                           0000B6   301 	Ssoft_i2c$I2C_Send_Byte$82 ==.
                           0000B6   302 	Ssoft_i2c$I2C_Send_Byte$83 ==.
                                    303 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//??????????????????????????????
      008B33 72 19 50 05      [ 1]  304 	bres	20485, #4
                           0000BA   305 	Ssoft_i2c$I2C_Send_Byte$84 ==.
                                    306 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B37 0F 01            [ 1]  307 	clr	(0x01, sp)
      008B39                        308 00105$:
                           0000BC   309 	Ssoft_i2c$I2C_Send_Byte$85 ==.
                           0000BC   310 	Ssoft_i2c$I2C_Send_Byte$86 ==.
                                    311 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B39 7B 04            [ 1]  312 	ld	a, (0x04, sp)
      008B3B A4 80            [ 1]  313 	and	a, #0x80
      008B3D 97               [ 1]  314 	ld	xl, a
      008B3E 4F               [ 1]  315 	clr	a
      008B3F 95               [ 1]  316 	ld	xh, a
      008B40 4F               [ 1]  317 	clr	a
      008B41 5D               [ 2]  318 	tnzw	x
      008B42 2A 01            [ 1]  319 	jrpl	00120$
      008B44 4A               [ 1]  320 	dec	a
      008B45                        321 00120$:
      008B45 01               [ 1]  322 	rrwa	x
      008B46 48               [ 1]  323 	sll	a
      008B47 59               [ 2]  324 	rlcw	x
                           0000CB   325 	Ssoft_i2c$I2C_Send_Byte$87 ==.
                           0000CB   326 	Ssoft_i2c$I2C_Send_Byte$88 ==.
                                    327 ;	Source/Driver/Src/soft_i2c.c: 109: I2C_SCL_L;//??????????????????????????????
      008B48 C6 50 05         [ 1]  328 	ld	a, 0x5005
                           0000CE   329 	Ssoft_i2c$I2C_Send_Byte$89 ==.
                                    330 ;	Source/Driver/Src/soft_i2c.c: 112: if((txd&0x80)>>7)
      008B4B 5D               [ 2]  331 	tnzw	x
      008B4C 27 07            [ 1]  332 	jreq	00102$
                           0000D1   333 	Ssoft_i2c$I2C_Send_Byte$90 ==.
                                    334 ;	Source/Driver/Src/soft_i2c.c: 113: I2C_SDA_H;
      008B4E AA 20            [ 1]  335 	or	a, #0x20
      008B50 C7 50 05         [ 1]  336 	ld	0x5005, a
      008B53 20 05            [ 2]  337 	jra	00103$
      008B55                        338 00102$:
                           0000D8   339 	Ssoft_i2c$I2C_Send_Byte$91 ==.
                                    340 ;	Source/Driver/Src/soft_i2c.c: 115: I2C_SDA_L;
      008B55 A4 DF            [ 1]  341 	and	a, #0xdf
      008B57 C7 50 05         [ 1]  342 	ld	0x5005, a
      008B5A                        343 00103$:
                           0000DD   344 	Ssoft_i2c$I2C_Send_Byte$92 ==.
                                    345 ;	Source/Driver/Src/soft_i2c.c: 116: txd<<=1;           
      008B5A 08 04            [ 1]  346 	sll	(0x04, sp)
                           0000DF   347 	Ssoft_i2c$I2C_Send_Byte$93 ==.
                                    348 ;	Source/Driver/Src/soft_i2c.c: 117: delay_us();   //???TEA5767??????????????????????????????
      008B5C CD 8C 8B         [ 4]  349 	call	_delay_us
                           0000E2   350 	Ssoft_i2c$I2C_Send_Byte$94 ==.
                                    351 ;	Source/Driver/Src/soft_i2c.c: 118: I2C_SCL_H;
      008B5F 72 18 50 05      [ 1]  352 	bset	20485, #4
                           0000E6   353 	Ssoft_i2c$I2C_Send_Byte$95 ==.
                                    354 ;	Source/Driver/Src/soft_i2c.c: 119: delay_us();
      008B63 CD 8C 8B         [ 4]  355 	call	_delay_us
                           0000E9   356 	Ssoft_i2c$I2C_Send_Byte$96 ==.
                                    357 ;	Source/Driver/Src/soft_i2c.c: 120: I2C_SCL_L;       
      008B66 72 19 50 05      [ 1]  358 	bres	20485, #4
                           0000ED   359 	Ssoft_i2c$I2C_Send_Byte$97 ==.
                                    360 ;	Source/Driver/Src/soft_i2c.c: 121: delay_us();
      008B6A CD 8C 8B         [ 4]  361 	call	_delay_us
                           0000F0   362 	Ssoft_i2c$I2C_Send_Byte$98 ==.
                                    363 ;	Source/Driver/Src/soft_i2c.c: 110: for(t=0;t<8;t++)
      008B6D 0C 01            [ 1]  364 	inc	(0x01, sp)
      008B6F 7B 01            [ 1]  365 	ld	a, (0x01, sp)
      008B71 A1 08            [ 1]  366 	cp	a, #0x08
      008B73 24 03            [ 1]  367 	jrnc	00122$
      008B75 CC 8B 39         [ 2]  368 	jp	00105$
      008B78                        369 00122$:
                           0000FB   370 	Ssoft_i2c$I2C_Send_Byte$99 ==.
                                    371 ;	Source/Driver/Src/soft_i2c.c: 123: }
      008B78 84               [ 1]  372 	pop	a
                           0000FC   373 	Ssoft_i2c$I2C_Send_Byte$100 ==.
                           0000FC   374 	Ssoft_i2c$I2C_Send_Byte$101 ==.
                           0000FC   375 	XG$I2C_Send_Byte$0$0 ==.
      008B79 81               [ 4]  376 	ret
                           0000FD   377 	Ssoft_i2c$I2C_Send_Byte$102 ==.
                           0000FD   378 	Ssoft_i2c$I2C_Read_Byte$103 ==.
                                    379 ;	Source/Driver/Src/soft_i2c.c: 126: uint8_t I2C_Read_Byte(unsigned char ack)
                                    380 ;	-----------------------------------------
                                    381 ;	 function I2C_Read_Byte
                                    382 ;	-----------------------------------------
      008B7A                        383 _I2C_Read_Byte:
                           0000FD   384 	Ssoft_i2c$I2C_Read_Byte$104 ==.
      008B7A 89               [ 2]  385 	pushw	x
                           0000FE   386 	Ssoft_i2c$I2C_Read_Byte$105 ==.
                           0000FE   387 	Ssoft_i2c$I2C_Read_Byte$106 ==.
                                    388 ;	Source/Driver/Src/soft_i2c.c: 128: unsigned char i,receive=0;
      008B7B 0F 01            [ 1]  389 	clr	(0x01, sp)
                           000100   390 	Ssoft_i2c$I2C_Read_Byte$107 ==.
                                    391 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B7D 0F 02            [ 1]  392 	clr	(0x02, sp)
      008B7F                        393 00107$:
                           000102   394 	Ssoft_i2c$I2C_Read_Byte$108 ==.
                           000102   395 	Ssoft_i2c$I2C_Read_Byte$109 ==.
                                    396 ;	Source/Driver/Src/soft_i2c.c: 132: I2C_SCL_L;
      008B7F 72 19 50 05      [ 1]  397 	bres	20485, #4
                           000106   398 	Ssoft_i2c$I2C_Read_Byte$110 ==.
                                    399 ;	Source/Driver/Src/soft_i2c.c: 133: delay_us();
      008B83 CD 8C 8B         [ 4]  400 	call	_delay_us
                           000109   401 	Ssoft_i2c$I2C_Read_Byte$111 ==.
                                    402 ;	Source/Driver/Src/soft_i2c.c: 134: I2C_SCL_H;
      008B86 72 18 50 05      [ 1]  403 	bset	20485, #4
                           00010D   404 	Ssoft_i2c$I2C_Read_Byte$112 ==.
                                    405 ;	Source/Driver/Src/soft_i2c.c: 135: receive<<=1;
      008B8A 08 01            [ 1]  406 	sll	(0x01, sp)
                           00010F   407 	Ssoft_i2c$I2C_Read_Byte$113 ==.
                                    408 ;	Source/Driver/Src/soft_i2c.c: 136: if(I2C_SDA_R)receive++;   
      008B8C C6 50 06         [ 1]  409 	ld	a, 0x5006
      008B8F A4 20            [ 1]  410 	and	a, #0x20
      008B91 4E               [ 1]  411 	swap	a
      008B92 A4 0F            [ 1]  412 	and	a, #0x0f
      008B94 44               [ 1]  413 	srl	a
      008B95 4D               [ 1]  414 	tnz	a
      008B96 27 02            [ 1]  415 	jreq	00102$
      008B98 0C 01            [ 1]  416 	inc	(0x01, sp)
      008B9A                        417 00102$:
                           00011D   418 	Ssoft_i2c$I2C_Read_Byte$114 ==.
                                    419 ;	Source/Driver/Src/soft_i2c.c: 137: nop();
      008B9A 9D               [ 1]  420 	nop
                           00011E   421 	Ssoft_i2c$I2C_Read_Byte$115 ==.
                           00011E   422 	Ssoft_i2c$I2C_Read_Byte$116 ==.
                                    423 ;	Source/Driver/Src/soft_i2c.c: 129: for(i=0;i<8;i++ )
      008B9B 0C 02            [ 1]  424 	inc	(0x02, sp)
      008B9D 7B 02            [ 1]  425 	ld	a, (0x02, sp)
      008B9F A1 08            [ 1]  426 	cp	a, #0x08
      008BA1 25 DC            [ 1]  427 	jrc	00107$
                           000126   428 	Ssoft_i2c$I2C_Read_Byte$117 ==.
                                    429 ;	Source/Driver/Src/soft_i2c.c: 139: if (!ack)
      008BA3 0D 05            [ 1]  430 	tnz	(0x05, sp)
      008BA5 26 05            [ 1]  431 	jrne	00105$
                           00012A   432 	Ssoft_i2c$I2C_Read_Byte$118 ==.
                                    433 ;	Source/Driver/Src/soft_i2c.c: 140: I2C_NAck();//??????nACK
      008BA7 CD 8B 1B         [ 4]  434 	call	_I2C_NAck
      008BAA 20 03            [ 2]  435 	jra	00106$
      008BAC                        436 00105$:
                           00012F   437 	Ssoft_i2c$I2C_Read_Byte$119 ==.
                                    438 ;	Source/Driver/Src/soft_i2c.c: 142: I2C_Ack(); //??????ACK   
      008BAC CD 8B 04         [ 4]  439 	call	_I2C_Ack
      008BAF                        440 00106$:
                           000132   441 	Ssoft_i2c$I2C_Read_Byte$120 ==.
                                    442 ;	Source/Driver/Src/soft_i2c.c: 143: return receive;
      008BAF 7B 01            [ 1]  443 	ld	a, (0x01, sp)
                           000134   444 	Ssoft_i2c$I2C_Read_Byte$121 ==.
                                    445 ;	Source/Driver/Src/soft_i2c.c: 144: }
      008BB1 85               [ 2]  446 	popw	x
                           000135   447 	Ssoft_i2c$I2C_Read_Byte$122 ==.
                           000135   448 	Ssoft_i2c$I2C_Read_Byte$123 ==.
                           000135   449 	XG$I2C_Read_Byte$0$0 ==.
      008BB2 81               [ 4]  450 	ret
                           000136   451 	Ssoft_i2c$I2C_Read_Byte$124 ==.
                           000136   452 	Ssoft_i2c$I2C_MasterReceiveData$125 ==.
                                    453 ;	Source/Driver/Src/soft_i2c.c: 192: ErrorStatus I2C_MasterReceiveData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    454 ;	-----------------------------------------
                                    455 ;	 function I2C_MasterReceiveData
                                    456 ;	-----------------------------------------
      008BB3                        457 _I2C_MasterReceiveData:
                           000136   458 	Ssoft_i2c$I2C_MasterReceiveData$126 ==.
      008BB3 52 03            [ 2]  459 	sub	sp, #3
                           000138   460 	Ssoft_i2c$I2C_MasterReceiveData$127 ==.
                           000138   461 	Ssoft_i2c$I2C_MasterReceiveData$128 ==.
                                    462 ;	Source/Driver/Src/soft_i2c.c: 194: I2C_Start();
      008BB5 CD 8A A0         [ 4]  463 	call	_I2C_Start
                           00013B   464 	Ssoft_i2c$I2C_MasterReceiveData$129 ==.
                                    465 ;	Source/Driver/Src/soft_i2c.c: 195: I2C_Send_Byte(devAddr<<1|0);//??????????????????
      008BB8 7B 06            [ 1]  466 	ld	a, (0x06, sp)
      008BBA 48               [ 1]  467 	sll	a
      008BBB 6B 03            [ 1]  468 	ld	(0x03, sp), a
      008BBD 88               [ 1]  469 	push	a
                           000141   470 	Ssoft_i2c$I2C_MasterReceiveData$130 ==.
      008BBE CD 8B 32         [ 4]  471 	call	_I2C_Send_Byte
      008BC1 84               [ 1]  472 	pop	a
                           000145   473 	Ssoft_i2c$I2C_MasterReceiveData$131 ==.
                           000145   474 	Ssoft_i2c$I2C_MasterReceiveData$132 ==.
                                    475 ;	Source/Driver/Src/soft_i2c.c: 196: if(I2C_Wait_Ack())
      008BC2 CD 8A D2         [ 4]  476 	call	_I2C_Wait_Ack
      008BC5 4D               [ 1]  477 	tnz	a
      008BC6 27 04            [ 1]  478 	jreq	00102$
                           00014B   479 	Ssoft_i2c$I2C_MasterReceiveData$133 ==.
                                    480 ;	Source/Driver/Src/soft_i2c.c: 197: return ERROR;
      008BC8 4F               [ 1]  481 	clr	a
      008BC9 CC 8C 38         [ 2]  482 	jp	00114$
      008BCC                        483 00102$:
                           00014F   484 	Ssoft_i2c$I2C_MasterReceiveData$134 ==.
                                    485 ;	Source/Driver/Src/soft_i2c.c: 198: I2C_Send_Byte(regAddr);
      008BCC 7B 07            [ 1]  486 	ld	a, (0x07, sp)
      008BCE 88               [ 1]  487 	push	a
                           000152   488 	Ssoft_i2c$I2C_MasterReceiveData$135 ==.
      008BCF CD 8B 32         [ 4]  489 	call	_I2C_Send_Byte
      008BD2 84               [ 1]  490 	pop	a
                           000156   491 	Ssoft_i2c$I2C_MasterReceiveData$136 ==.
                           000156   492 	Ssoft_i2c$I2C_MasterReceiveData$137 ==.
                                    493 ;	Source/Driver/Src/soft_i2c.c: 199: if(I2C_Wait_Ack())
      008BD3 CD 8A D2         [ 4]  494 	call	_I2C_Wait_Ack
      008BD6 4D               [ 1]  495 	tnz	a
      008BD7 27 04            [ 1]  496 	jreq	00104$
                           00015C   497 	Ssoft_i2c$I2C_MasterReceiveData$138 ==.
                                    498 ;	Source/Driver/Src/soft_i2c.c: 200: return ERROR;
      008BD9 4F               [ 1]  499 	clr	a
      008BDA CC 8C 38         [ 2]  500 	jp	00114$
      008BDD                        501 00104$:
                           000160   502 	Ssoft_i2c$I2C_MasterReceiveData$139 ==.
                                    503 ;	Source/Driver/Src/soft_i2c.c: 202: I2C_Start();
      008BDD CD 8A A0         [ 4]  504 	call	_I2C_Start
                           000163   505 	Ssoft_i2c$I2C_MasterReceiveData$140 ==.
                                    506 ;	Source/Driver/Src/soft_i2c.c: 203: I2C_Send_Byte(devAddr<<1|1);//????????????
      008BE0 7B 03            [ 1]  507 	ld	a, (0x03, sp)
      008BE2 AA 01            [ 1]  508 	or	a, #0x01
      008BE4 88               [ 1]  509 	push	a
                           000168   510 	Ssoft_i2c$I2C_MasterReceiveData$141 ==.
      008BE5 CD 8B 32         [ 4]  511 	call	_I2C_Send_Byte
      008BE8 84               [ 1]  512 	pop	a
                           00016C   513 	Ssoft_i2c$I2C_MasterReceiveData$142 ==.
                           00016C   514 	Ssoft_i2c$I2C_MasterReceiveData$143 ==.
                                    515 ;	Source/Driver/Src/soft_i2c.c: 204: if(I2C_Wait_Ack())
      008BE9 CD 8A D2         [ 4]  516 	call	_I2C_Wait_Ack
      008BEC 4D               [ 1]  517 	tnz	a
      008BED 27 04            [ 1]  518 	jreq	00121$
                           000172   519 	Ssoft_i2c$I2C_MasterReceiveData$144 ==.
                                    520 ;	Source/Driver/Src/soft_i2c.c: 205: return ERROR;
      008BEF 4F               [ 1]  521 	clr	a
      008BF0 CC 8C 38         [ 2]  522 	jp	00114$
                           000176   523 	Ssoft_i2c$I2C_MasterReceiveData$145 ==.
                                    524 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008BF3                        525 00121$:
      008BF3 0F 03            [ 1]  526 	clr	(0x03, sp)
                           000178   527 	Ssoft_i2c$I2C_MasterReceiveData$146 ==.
      008BF5                        528 00112$:
      008BF5 7B 03            [ 1]  529 	ld	a, (0x03, sp)
      008BF7 11 0A            [ 1]  530 	cp	a, (0x0a, sp)
      008BF9 25 03            [ 1]  531 	jrc	00150$
      008BFB CC 8C 33         [ 2]  532 	jp	00110$
      008BFE                        533 00150$:
                           000181   534 	Ssoft_i2c$I2C_MasterReceiveData$147 ==.
                           000181   535 	Ssoft_i2c$I2C_MasterReceiveData$148 ==.
                                    536 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008BFE 5F               [ 1]  537 	clrw	x
      008BFF 7B 0A            [ 1]  538 	ld	a, (0x0a, sp)
      008C01 97               [ 1]  539 	ld	xl, a
      008C02 5A               [ 2]  540 	decw	x
      008C03 1F 01            [ 2]  541 	ldw	(0x01, sp), x
      008C05 90 5F            [ 1]  542 	clrw	y
      008C07 7B 03            [ 1]  543 	ld	a, (0x03, sp)
      008C09 90 97            [ 1]  544 	ld	yl, a
                           00018E   545 	Ssoft_i2c$I2C_MasterReceiveData$149 ==.
                           00018E   546 	Ssoft_i2c$I2C_MasterReceiveData$150 ==.
                                    547 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008C0B 5F               [ 1]  548 	clrw	x
      008C0C 7B 03            [ 1]  549 	ld	a, (0x03, sp)
      008C0E 97               [ 1]  550 	ld	xl, a
      008C0F 72 FB 08         [ 2]  551 	addw	x, (0x08, sp)
                           000195   552 	Ssoft_i2c$I2C_MasterReceiveData$151 ==.
                                    553 ;	Source/Driver/Src/soft_i2c.c: 209: if(i==dataLen-1)
      008C12 51               [ 1]  554 	exgw	x, y
      008C13 13 01            [ 2]  555 	cpw	x, (0x01, sp)
      008C15 51               [ 1]  556 	exgw	x, y
      008C16 26 0C            [ 1]  557 	jrne	00108$
                           00019B   558 	Ssoft_i2c$I2C_MasterReceiveData$152 ==.
                           00019B   559 	Ssoft_i2c$I2C_MasterReceiveData$153 ==.
                                    560 ;	Source/Driver/Src/soft_i2c.c: 210: bufAddr[i]=I2C_Read_Byte(0);
      008C18 89               [ 2]  561 	pushw	x
                           00019C   562 	Ssoft_i2c$I2C_MasterReceiveData$154 ==.
      008C19 4B 00            [ 1]  563 	push	#0x00
                           00019E   564 	Ssoft_i2c$I2C_MasterReceiveData$155 ==.
      008C1B CD 8B 7A         [ 4]  565 	call	_I2C_Read_Byte
      008C1E 5B 01            [ 2]  566 	addw	sp, #1
                           0001A3   567 	Ssoft_i2c$I2C_MasterReceiveData$156 ==.
      008C20 85               [ 2]  568 	popw	x
                           0001A4   569 	Ssoft_i2c$I2C_MasterReceiveData$157 ==.
      008C21 F7               [ 1]  570 	ld	(x), a
      008C22 20 0A            [ 2]  571 	jra	00113$
      008C24                        572 00108$:
                           0001A7   573 	Ssoft_i2c$I2C_MasterReceiveData$158 ==.
                                    574 ;	Source/Driver/Src/soft_i2c.c: 212: bufAddr[i]=I2C_Read_Byte(1);
      008C24 89               [ 2]  575 	pushw	x
                           0001A8   576 	Ssoft_i2c$I2C_MasterReceiveData$159 ==.
      008C25 4B 01            [ 1]  577 	push	#0x01
                           0001AA   578 	Ssoft_i2c$I2C_MasterReceiveData$160 ==.
      008C27 CD 8B 7A         [ 4]  579 	call	_I2C_Read_Byte
      008C2A 5B 01            [ 2]  580 	addw	sp, #1
                           0001AF   581 	Ssoft_i2c$I2C_MasterReceiveData$161 ==.
      008C2C 85               [ 2]  582 	popw	x
                           0001B0   583 	Ssoft_i2c$I2C_MasterReceiveData$162 ==.
      008C2D F7               [ 1]  584 	ld	(x), a
      008C2E                        585 00113$:
                           0001B1   586 	Ssoft_i2c$I2C_MasterReceiveData$163 ==.
                                    587 ;	Source/Driver/Src/soft_i2c.c: 207: for(uint8_t i=0;i<dataLen;++i)
      008C2E 0C 03            [ 1]  588 	inc	(0x03, sp)
      008C30 CC 8B F5         [ 2]  589 	jp	00112$
      008C33                        590 00110$:
                           0001B6   591 	Ssoft_i2c$I2C_MasterReceiveData$164 ==.
                                    592 ;	Source/Driver/Src/soft_i2c.c: 215: I2C_Stop();
      008C33 CD 8A B7         [ 4]  593 	call	_I2C_Stop
                           0001B9   594 	Ssoft_i2c$I2C_MasterReceiveData$165 ==.
                                    595 ;	Source/Driver/Src/soft_i2c.c: 217: return SUCCESS;
      008C36 A6 01            [ 1]  596 	ld	a, #0x01
      008C38                        597 00114$:
                           0001BB   598 	Ssoft_i2c$I2C_MasterReceiveData$166 ==.
                                    599 ;	Source/Driver/Src/soft_i2c.c: 218: }
      008C38 5B 03            [ 2]  600 	addw	sp, #3
                           0001BD   601 	Ssoft_i2c$I2C_MasterReceiveData$167 ==.
                           0001BD   602 	Ssoft_i2c$I2C_MasterReceiveData$168 ==.
                           0001BD   603 	XG$I2C_MasterReceiveData$0$0 ==.
      008C3A 81               [ 4]  604 	ret
                           0001BE   605 	Ssoft_i2c$I2C_MasterReceiveData$169 ==.
                           0001BE   606 	Ssoft_i2c$I2C_MasterSendData$170 ==.
                                    607 ;	Source/Driver/Src/soft_i2c.c: 228: ErrorStatus I2C_MasterSendData(uint8_t devAddr,uint8_t regAddr,uint8_t* bufAddr,uint8_t dataLen)
                                    608 ;	-----------------------------------------
                                    609 ;	 function I2C_MasterSendData
                                    610 ;	-----------------------------------------
      008C3B                        611 _I2C_MasterSendData:
                           0001BE   612 	Ssoft_i2c$I2C_MasterSendData$171 ==.
      008C3B 88               [ 1]  613 	push	a
                           0001BF   614 	Ssoft_i2c$I2C_MasterSendData$172 ==.
                           0001BF   615 	Ssoft_i2c$I2C_MasterSendData$173 ==.
                                    616 ;	Source/Driver/Src/soft_i2c.c: 230: I2C_Start();
      008C3C CD 8A A0         [ 4]  617 	call	_I2C_Start
                           0001C2   618 	Ssoft_i2c$I2C_MasterSendData$174 ==.
                                    619 ;	Source/Driver/Src/soft_i2c.c: 231: I2C_Send_Byte(devAddr<<1|0);//??????????????????
      008C3F 7B 04            [ 1]  620 	ld	a, (0x04, sp)
      008C41 48               [ 1]  621 	sll	a
      008C42 88               [ 1]  622 	push	a
                           0001C6   623 	Ssoft_i2c$I2C_MasterSendData$175 ==.
      008C43 CD 8B 32         [ 4]  624 	call	_I2C_Send_Byte
      008C46 84               [ 1]  625 	pop	a
                           0001CA   626 	Ssoft_i2c$I2C_MasterSendData$176 ==.
                           0001CA   627 	Ssoft_i2c$I2C_MasterSendData$177 ==.
                                    628 ;	Source/Driver/Src/soft_i2c.c: 232: if(I2C_Wait_Ack())
      008C47 CD 8A D2         [ 4]  629 	call	_I2C_Wait_Ack
      008C4A 4D               [ 1]  630 	tnz	a
      008C4B 27 04            [ 1]  631 	jreq	00102$
                           0001D0   632 	Ssoft_i2c$I2C_MasterSendData$178 ==.
                                    633 ;	Source/Driver/Src/soft_i2c.c: 233: return ERROR;
      008C4D 4F               [ 1]  634 	clr	a
      008C4E CC 8C 88         [ 2]  635 	jp	00111$
      008C51                        636 00102$:
                           0001D4   637 	Ssoft_i2c$I2C_MasterSendData$179 ==.
                                    638 ;	Source/Driver/Src/soft_i2c.c: 234: I2C_Send_Byte(regAddr);
      008C51 7B 05            [ 1]  639 	ld	a, (0x05, sp)
      008C53 88               [ 1]  640 	push	a
                           0001D7   641 	Ssoft_i2c$I2C_MasterSendData$180 ==.
      008C54 CD 8B 32         [ 4]  642 	call	_I2C_Send_Byte
      008C57 84               [ 1]  643 	pop	a
                           0001DB   644 	Ssoft_i2c$I2C_MasterSendData$181 ==.
                           0001DB   645 	Ssoft_i2c$I2C_MasterSendData$182 ==.
                                    646 ;	Source/Driver/Src/soft_i2c.c: 235: if(I2C_Wait_Ack())
      008C58 CD 8A D2         [ 4]  647 	call	_I2C_Wait_Ack
      008C5B 4D               [ 1]  648 	tnz	a
      008C5C 27 03            [ 1]  649 	jreq	00117$
                           0001E1   650 	Ssoft_i2c$I2C_MasterSendData$183 ==.
                                    651 ;	Source/Driver/Src/soft_i2c.c: 236: return ERROR;
      008C5E 4F               [ 1]  652 	clr	a
      008C5F 20 27            [ 2]  653 	jra	00111$
                           0001E4   654 	Ssoft_i2c$I2C_MasterSendData$184 ==.
                                    655 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C61                        656 00117$:
      008C61 0F 01            [ 1]  657 	clr	(0x01, sp)
                           0001E6   658 	Ssoft_i2c$I2C_MasterSendData$185 ==.
      008C63                        659 00109$:
      008C63 7B 01            [ 1]  660 	ld	a, (0x01, sp)
      008C65 11 08            [ 1]  661 	cp	a, (0x08, sp)
      008C67 24 1A            [ 1]  662 	jrnc	00107$
                           0001EC   663 	Ssoft_i2c$I2C_MasterSendData$186 ==.
                           0001EC   664 	Ssoft_i2c$I2C_MasterSendData$187 ==.
                                    665 ;	Source/Driver/Src/soft_i2c.c: 240: I2C_Send_Byte(bufAddr[i]);
      008C69 5F               [ 1]  666 	clrw	x
      008C6A 7B 01            [ 1]  667 	ld	a, (0x01, sp)
      008C6C 97               [ 1]  668 	ld	xl, a
      008C6D 72 FB 06         [ 2]  669 	addw	x, (0x06, sp)
      008C70 F6               [ 1]  670 	ld	a, (x)
      008C71 88               [ 1]  671 	push	a
                           0001F5   672 	Ssoft_i2c$I2C_MasterSendData$188 ==.
      008C72 CD 8B 32         [ 4]  673 	call	_I2C_Send_Byte
      008C75 84               [ 1]  674 	pop	a
                           0001F9   675 	Ssoft_i2c$I2C_MasterSendData$189 ==.
                           0001F9   676 	Ssoft_i2c$I2C_MasterSendData$190 ==.
                                    677 ;	Source/Driver/Src/soft_i2c.c: 241: if(I2C_Wait_Ack())
      008C76 CD 8A D2         [ 4]  678 	call	_I2C_Wait_Ack
      008C79 4D               [ 1]  679 	tnz	a
      008C7A 27 03            [ 1]  680 	jreq	00110$
                           0001FF   681 	Ssoft_i2c$I2C_MasterSendData$191 ==.
                                    682 ;	Source/Driver/Src/soft_i2c.c: 242: return ERROR;
      008C7C 4F               [ 1]  683 	clr	a
      008C7D 20 09            [ 2]  684 	jra	00111$
      008C7F                        685 00110$:
                           000202   686 	Ssoft_i2c$I2C_MasterSendData$192 ==.
                           000202   687 	Ssoft_i2c$I2C_MasterSendData$193 ==.
                                    688 ;	Source/Driver/Src/soft_i2c.c: 238: for(uint8_t i=0;i<dataLen;++i)
      008C7F 0C 01            [ 1]  689 	inc	(0x01, sp)
      008C81 20 E0            [ 2]  690 	jra	00109$
      008C83                        691 00107$:
                           000206   692 	Ssoft_i2c$I2C_MasterSendData$194 ==.
                           000206   693 	Ssoft_i2c$I2C_MasterSendData$195 ==.
                                    694 ;	Source/Driver/Src/soft_i2c.c: 244: I2C_Stop();
      008C83 CD 8A B7         [ 4]  695 	call	_I2C_Stop
                           000209   696 	Ssoft_i2c$I2C_MasterSendData$196 ==.
                                    697 ;	Source/Driver/Src/soft_i2c.c: 246: return SUCCESS;
      008C86 A6 01            [ 1]  698 	ld	a, #0x01
      008C88                        699 00111$:
                           00020B   700 	Ssoft_i2c$I2C_MasterSendData$197 ==.
                                    701 ;	Source/Driver/Src/soft_i2c.c: 247: }
      008C88 5B 01            [ 2]  702 	addw	sp, #1
                           00020D   703 	Ssoft_i2c$I2C_MasterSendData$198 ==.
                           00020D   704 	Ssoft_i2c$I2C_MasterSendData$199 ==.
                           00020D   705 	XG$I2C_MasterSendData$0$0 ==.
      008C8A 81               [ 4]  706 	ret
                           00020E   707 	Ssoft_i2c$I2C_MasterSendData$200 ==.
                           00020E   708 	Ssoft_i2c$delay_us$201 ==.
                                    709 ;	Source/Driver/Src/soft_i2c.c: 251: void delay_us(void)
                                    710 ;	-----------------------------------------
                                    711 ;	 function delay_us
                                    712 ;	-----------------------------------------
      008C8B                        713 _delay_us:
                           00020E   714 	Ssoft_i2c$delay_us$202 ==.
                           00020E   715 	Ssoft_i2c$delay_us$203 ==.
                                    716 ;	Source/Driver/Src/soft_i2c.c: 253: nop();    nop();    nop();    nop();
      008C8B 9D               [ 1]  717 	nop
      008C8C 9D               [ 1]  718 	nop
      008C8D 9D               [ 1]  719 	nop
      008C8E 9D               [ 1]  720 	nop
                           000212   721 	Ssoft_i2c$delay_us$204 ==.
                                    722 ;	Source/Driver/Src/soft_i2c.c: 254: }
                           000212   723 	Ssoft_i2c$delay_us$205 ==.
                           000212   724 	XG$delay_us$0$0 ==.
      008C8F 81               [ 4]  725 	ret
                           000213   726 	Ssoft_i2c$delay_us$206 ==.
                                    727 	.area CODE
                                    728 	.area CONST
                                    729 	.area INITIALIZER
                                    730 	.area CABS (ABS)
                                    731 
                                    732 	.area .debug_line (NOLOAD)
      0010EF 00 00 03 CE            733 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0010F3                        734 Ldebug_line_start:
      0010F3 00 02                  735 	.dw	2
      0010F5 00 00 00 7D            736 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0010F9 01                     737 	.db	1
      0010FA 01                     738 	.db	1
      0010FB FB                     739 	.db	-5
      0010FC 0F                     740 	.db	15
      0010FD 0A                     741 	.db	10
      0010FE 00                     742 	.db	0
      0010FF 01                     743 	.db	1
      001100 01                     744 	.db	1
      001101 01                     745 	.db	1
      001102 01                     746 	.db	1
      001103 00                     747 	.db	0
      001104 00                     748 	.db	0
      001105 00                     749 	.db	0
      001106 01                     750 	.db	1
      001107 43 3A 5C 50 72 6F 67   751 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00112F 00                     752 	.db	0
      001130 43 3A 5C 50 72 6F 67   753 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001153 00                     754 	.db	0
      001154 00                     755 	.db	0
      001155 53 6F 75 72 63 65 2F   756 	.ascii "Source/Driver/Src/soft_i2c.c"
             44 72 69 76 65 72 2F
             53 72 63 2F 73 6F 66
             74 5F 69 32 63 2E 63
      001171 00                     757 	.db	0
      001172 00                     758 	.uleb128	0
      001173 00                     759 	.uleb128	0
      001174 00                     760 	.uleb128	0
      001175 00                     761 	.db	0
      001176                        762 Ldebug_line_stmt:
      001176 00                     763 	.db	0
      001177 05                     764 	.uleb128	5
      001178 02                     765 	.db	2
      001179 00 00 8A 7D            766 	.dw	0,(Ssoft_i2c$I2C_Init$0)
      00117D 03                     767 	.db	3
      00117E 19                     768 	.sleb128	25
      00117F 01                     769 	.db	1
      001180 09                     770 	.db	9
      001181 00 00                  771 	.dw	Ssoft_i2c$I2C_Init$2-Ssoft_i2c$I2C_Init$0
      001183 03                     772 	.db	3
      001184 03                     773 	.sleb128	3
      001185 01                     774 	.db	1
      001186 09                     775 	.db	9
      001187 00 0D                  776 	.dw	Ssoft_i2c$I2C_Init$8-Ssoft_i2c$I2C_Init$2
      001189 03                     777 	.db	3
      00118A 01                     778 	.sleb128	1
      00118B 01                     779 	.db	1
      00118C 09                     780 	.db	9
      00118D 00 0D                  781 	.dw	Ssoft_i2c$I2C_Init$14-Ssoft_i2c$I2C_Init$8
      00118F 03                     782 	.db	3
      001190 01                     783 	.sleb128	1
      001191 01                     784 	.db	1
      001192 09                     785 	.db	9
      001193 00 04                  786 	.dw	Ssoft_i2c$I2C_Init$15-Ssoft_i2c$I2C_Init$14
      001195 03                     787 	.db	3
      001196 01                     788 	.sleb128	1
      001197 01                     789 	.db	1
      001198 09                     790 	.db	9
      001199 00 04                  791 	.dw	Ssoft_i2c$I2C_Init$16-Ssoft_i2c$I2C_Init$15
      00119B 03                     792 	.db	3
      00119C 01                     793 	.sleb128	1
      00119D 01                     794 	.db	1
      00119E 09                     795 	.db	9
      00119F 00 01                  796 	.dw	1+Ssoft_i2c$I2C_Init$17-Ssoft_i2c$I2C_Init$16
      0011A1 00                     797 	.db	0
      0011A2 01                     798 	.uleb128	1
      0011A3 01                     799 	.db	1
      0011A4 00                     800 	.db	0
      0011A5 05                     801 	.uleb128	5
      0011A6 02                     802 	.db	2
      0011A7 00 00 8A A0            803 	.dw	0,(Ssoft_i2c$I2C_Start$19)
      0011AB 03                     804 	.db	3
      0011AC 23                     805 	.sleb128	35
      0011AD 01                     806 	.db	1
      0011AE 09                     807 	.db	9
      0011AF 00 00                  808 	.dw	Ssoft_i2c$I2C_Start$21-Ssoft_i2c$I2C_Start$19
      0011B1 03                     809 	.db	3
      0011B2 02                     810 	.sleb128	2
      0011B3 01                     811 	.db	1
      0011B4 09                     812 	.db	9
      0011B5 00 04                  813 	.dw	Ssoft_i2c$I2C_Start$22-Ssoft_i2c$I2C_Start$21
      0011B7 03                     814 	.db	3
      0011B8 01                     815 	.sleb128	1
      0011B9 01                     816 	.db	1
      0011BA 09                     817 	.db	9
      0011BB 00 04                  818 	.dw	Ssoft_i2c$I2C_Start$23-Ssoft_i2c$I2C_Start$22
      0011BD 03                     819 	.db	3
      0011BE 01                     820 	.sleb128	1
      0011BF 01                     821 	.db	1
      0011C0 09                     822 	.db	9
      0011C1 00 03                  823 	.dw	Ssoft_i2c$I2C_Start$24-Ssoft_i2c$I2C_Start$23
      0011C3 03                     824 	.db	3
      0011C4 01                     825 	.sleb128	1
      0011C5 01                     826 	.db	1
      0011C6 09                     827 	.db	9
      0011C7 00 04                  828 	.dw	Ssoft_i2c$I2C_Start$25-Ssoft_i2c$I2C_Start$24
      0011C9 03                     829 	.db	3
      0011CA 01                     830 	.sleb128	1
      0011CB 01                     831 	.db	1
      0011CC 09                     832 	.db	9
      0011CD 00 03                  833 	.dw	Ssoft_i2c$I2C_Start$26-Ssoft_i2c$I2C_Start$25
      0011CF 03                     834 	.db	3
      0011D0 01                     835 	.sleb128	1
      0011D1 01                     836 	.db	1
      0011D2 09                     837 	.db	9
      0011D3 00 04                  838 	.dw	Ssoft_i2c$I2C_Start$27-Ssoft_i2c$I2C_Start$26
      0011D5 03                     839 	.db	3
      0011D6 01                     840 	.sleb128	1
      0011D7 01                     841 	.db	1
      0011D8 09                     842 	.db	9
      0011D9 00 01                  843 	.dw	1+Ssoft_i2c$I2C_Start$28-Ssoft_i2c$I2C_Start$27
      0011DB 00                     844 	.db	0
      0011DC 01                     845 	.uleb128	1
      0011DD 01                     846 	.db	1
      0011DE 00                     847 	.db	0
      0011DF 05                     848 	.uleb128	5
      0011E0 02                     849 	.db	2
      0011E1 00 00 8A B7            850 	.dw	0,(Ssoft_i2c$I2C_Stop$30)
      0011E5 03                     851 	.db	3
      0011E6 2E                     852 	.sleb128	46
      0011E7 01                     853 	.db	1
      0011E8 09                     854 	.db	9
      0011E9 00 00                  855 	.dw	Ssoft_i2c$I2C_Stop$32-Ssoft_i2c$I2C_Stop$30
      0011EB 03                     856 	.db	3
      0011EC 02                     857 	.sleb128	2
      0011ED 01                     858 	.db	1
      0011EE 09                     859 	.db	9
      0011EF 00 04                  860 	.dw	Ssoft_i2c$I2C_Stop$33-Ssoft_i2c$I2C_Stop$32
      0011F1 03                     861 	.db	3
      0011F2 02                     862 	.sleb128	2
      0011F3 01                     863 	.db	1
      0011F4 09                     864 	.db	9
      0011F5 00 04                  865 	.dw	Ssoft_i2c$I2C_Stop$34-Ssoft_i2c$I2C_Stop$33
      0011F7 03                     866 	.db	3
      0011F8 01                     867 	.sleb128	1
      0011F9 01                     868 	.db	1
      0011FA 09                     869 	.db	9
      0011FB 00 03                  870 	.dw	Ssoft_i2c$I2C_Stop$35-Ssoft_i2c$I2C_Stop$34
      0011FD 03                     871 	.db	3
      0011FE 01                     872 	.sleb128	1
      0011FF 01                     873 	.db	1
      001200 09                     874 	.db	9
      001201 00 04                  875 	.dw	Ssoft_i2c$I2C_Stop$36-Ssoft_i2c$I2C_Stop$35
      001203 03                     876 	.db	3
      001204 01                     877 	.sleb128	1
      001205 01                     878 	.db	1
      001206 09                     879 	.db	9
      001207 00 08                  880 	.dw	Ssoft_i2c$I2C_Stop$37-Ssoft_i2c$I2C_Stop$36
      001209 03                     881 	.db	3
      00120A 01                     882 	.sleb128	1
      00120B 01                     883 	.db	1
      00120C 09                     884 	.db	9
      00120D 00 03                  885 	.dw	Ssoft_i2c$I2C_Stop$38-Ssoft_i2c$I2C_Stop$37
      00120F 03                     886 	.db	3
      001210 01                     887 	.sleb128	1
      001211 01                     888 	.db	1
      001212 09                     889 	.db	9
      001213 00 01                  890 	.dw	1+Ssoft_i2c$I2C_Stop$39-Ssoft_i2c$I2C_Stop$38
      001215 00                     891 	.db	0
      001216 01                     892 	.uleb128	1
      001217 01                     893 	.db	1
      001218 00                     894 	.db	0
      001219 05                     895 	.uleb128	5
      00121A 02                     896 	.db	2
      00121B 00 00 8A D2            897 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$41)
      00121F 03                     898 	.db	3
      001220 3C                     899 	.sleb128	60
      001221 01                     900 	.db	1
      001222 09                     901 	.db	9
      001223 00 00                  902 	.dw	Ssoft_i2c$I2C_Wait_Ack$43-Ssoft_i2c$I2C_Wait_Ack$41
      001225 03                     903 	.db	3
      001226 04                     904 	.sleb128	4
      001227 01                     905 	.db	1
      001228 09                     906 	.db	9
      001229 00 09                  907 	.dw	Ssoft_i2c$I2C_Wait_Ack$44-Ssoft_i2c$I2C_Wait_Ack$43
      00122B 03                     908 	.db	3
      00122C 01                     909 	.sleb128	1
      00122D 01                     910 	.db	1
      00122E 09                     911 	.db	9
      00122F 00 09                  912 	.dw	Ssoft_i2c$I2C_Wait_Ack$45-Ssoft_i2c$I2C_Wait_Ack$44
      001231 03                     913 	.db	3
      001232 01                     914 	.sleb128	1
      001233 01                     915 	.db	1
      001234 09                     916 	.db	9
      001235 00 0D                  917 	.dw	Ssoft_i2c$I2C_Wait_Ack$47-Ssoft_i2c$I2C_Wait_Ack$45
      001237 03                     918 	.db	3
      001238 02                     919 	.sleb128	2
      001239 01                     920 	.db	1
      00123A 09                     921 	.db	9
      00123B 00 01                  922 	.dw	Ssoft_i2c$I2C_Wait_Ack$48-Ssoft_i2c$I2C_Wait_Ack$47
      00123D 03                     923 	.db	3
      00123E 01                     924 	.sleb128	1
      00123F 01                     925 	.db	1
      001240 09                     926 	.db	9
      001241 00 05                  927 	.dw	Ssoft_i2c$I2C_Wait_Ack$50-Ssoft_i2c$I2C_Wait_Ack$48
      001243 03                     928 	.db	3
      001244 02                     929 	.sleb128	2
      001245 01                     930 	.db	1
      001246 09                     931 	.db	9
      001247 00 03                  932 	.dw	Ssoft_i2c$I2C_Wait_Ack$51-Ssoft_i2c$I2C_Wait_Ack$50
      001249 03                     933 	.db	3
      00124A 01                     934 	.sleb128	1
      00124B 01                     935 	.db	1
      00124C 09                     936 	.db	9
      00124D 00 04                  937 	.dw	Ssoft_i2c$I2C_Wait_Ack$53-Ssoft_i2c$I2C_Wait_Ack$51
      00124F 03                     938 	.db	3
      001250 03                     939 	.sleb128	3
      001251 01                     940 	.db	1
      001252 09                     941 	.db	9
      001253 00 04                  942 	.dw	Ssoft_i2c$I2C_Wait_Ack$54-Ssoft_i2c$I2C_Wait_Ack$53
      001255 03                     943 	.db	3
      001256 01                     944 	.sleb128	1
      001257 01                     945 	.db	1
      001258 09                     946 	.db	9
      001259 00 01                  947 	.dw	Ssoft_i2c$I2C_Wait_Ack$55-Ssoft_i2c$I2C_Wait_Ack$54
      00125B 03                     948 	.db	3
      00125C 01                     949 	.sleb128	1
      00125D 01                     950 	.db	1
      00125E 09                     951 	.db	9
      00125F 00 01                  952 	.dw	1+Ssoft_i2c$I2C_Wait_Ack$56-Ssoft_i2c$I2C_Wait_Ack$55
      001261 00                     953 	.db	0
      001262 01                     954 	.uleb128	1
      001263 01                     955 	.db	1
      001264 00                     956 	.db	0
      001265 05                     957 	.uleb128	5
      001266 02                     958 	.db	2
      001267 00 00 8B 04            959 	.dw	0,(Ssoft_i2c$I2C_Ack$58)
      00126B 03                     960 	.db	3
      00126C D0 00                  961 	.sleb128	80
      00126E 01                     962 	.db	1
      00126F 09                     963 	.db	9
      001270 00 00                  964 	.dw	Ssoft_i2c$I2C_Ack$60-Ssoft_i2c$I2C_Ack$58
      001272 03                     965 	.db	3
      001273 02                     966 	.sleb128	2
      001274 01                     967 	.db	1
      001275 09                     968 	.db	9
      001276 00 04                  969 	.dw	Ssoft_i2c$I2C_Ack$61-Ssoft_i2c$I2C_Ack$60
      001278 03                     970 	.db	3
      001279 01                     971 	.sleb128	1
      00127A 01                     972 	.db	1
      00127B 09                     973 	.db	9
      00127C 00 04                  974 	.dw	Ssoft_i2c$I2C_Ack$62-Ssoft_i2c$I2C_Ack$61
      00127E 03                     975 	.db	3
      00127F 01                     976 	.sleb128	1
      001280 01                     977 	.db	1
      001281 09                     978 	.db	9
      001282 00 03                  979 	.dw	Ssoft_i2c$I2C_Ack$63-Ssoft_i2c$I2C_Ack$62
      001284 03                     980 	.db	3
      001285 01                     981 	.sleb128	1
      001286 01                     982 	.db	1
      001287 09                     983 	.db	9
      001288 00 04                  984 	.dw	Ssoft_i2c$I2C_Ack$64-Ssoft_i2c$I2C_Ack$63
      00128A 03                     985 	.db	3
      00128B 01                     986 	.sleb128	1
      00128C 01                     987 	.db	1
      00128D 09                     988 	.db	9
      00128E 00 03                  989 	.dw	Ssoft_i2c$I2C_Ack$65-Ssoft_i2c$I2C_Ack$64
      001290 03                     990 	.db	3
      001291 01                     991 	.sleb128	1
      001292 01                     992 	.db	1
      001293 09                     993 	.db	9
      001294 00 04                  994 	.dw	Ssoft_i2c$I2C_Ack$66-Ssoft_i2c$I2C_Ack$65
      001296 03                     995 	.db	3
      001297 01                     996 	.sleb128	1
      001298 01                     997 	.db	1
      001299 09                     998 	.db	9
      00129A 00 01                  999 	.dw	1+Ssoft_i2c$I2C_Ack$67-Ssoft_i2c$I2C_Ack$66
      00129C 00                    1000 	.db	0
      00129D 01                    1001 	.uleb128	1
      00129E 01                    1002 	.db	1
      00129F 00                    1003 	.db	0
      0012A0 05                    1004 	.uleb128	5
      0012A1 02                    1005 	.db	2
      0012A2 00 00 8B 1B           1006 	.dw	0,(Ssoft_i2c$I2C_NAck$69)
      0012A6 03                    1007 	.db	3
      0012A7 DB 00                 1008 	.sleb128	91
      0012A9 01                    1009 	.db	1
      0012AA 09                    1010 	.db	9
      0012AB 00 00                 1011 	.dw	Ssoft_i2c$I2C_NAck$71-Ssoft_i2c$I2C_NAck$69
      0012AD 03                    1012 	.db	3
      0012AE 02                    1013 	.sleb128	2
      0012AF 01                    1014 	.db	1
      0012B0 09                    1015 	.db	9
      0012B1 00 04                 1016 	.dw	Ssoft_i2c$I2C_NAck$72-Ssoft_i2c$I2C_NAck$71
      0012B3 03                    1017 	.db	3
      0012B4 01                    1018 	.sleb128	1
      0012B5 01                    1019 	.db	1
      0012B6 09                    1020 	.db	9
      0012B7 00 04                 1021 	.dw	Ssoft_i2c$I2C_NAck$73-Ssoft_i2c$I2C_NAck$72
      0012B9 03                    1022 	.db	3
      0012BA 01                    1023 	.sleb128	1
      0012BB 01                    1024 	.db	1
      0012BC 09                    1025 	.db	9
      0012BD 00 03                 1026 	.dw	Ssoft_i2c$I2C_NAck$74-Ssoft_i2c$I2C_NAck$73
      0012BF 03                    1027 	.db	3
      0012C0 01                    1028 	.sleb128	1
      0012C1 01                    1029 	.db	1
      0012C2 09                    1030 	.db	9
      0012C3 00 04                 1031 	.dw	Ssoft_i2c$I2C_NAck$75-Ssoft_i2c$I2C_NAck$74
      0012C5 03                    1032 	.db	3
      0012C6 01                    1033 	.sleb128	1
      0012C7 01                    1034 	.db	1
      0012C8 09                    1035 	.db	9
      0012C9 00 03                 1036 	.dw	Ssoft_i2c$I2C_NAck$76-Ssoft_i2c$I2C_NAck$75
      0012CB 03                    1037 	.db	3
      0012CC 01                    1038 	.sleb128	1
      0012CD 01                    1039 	.db	1
      0012CE 09                    1040 	.db	9
      0012CF 00 04                 1041 	.dw	Ssoft_i2c$I2C_NAck$77-Ssoft_i2c$I2C_NAck$76
      0012D1 03                    1042 	.db	3
      0012D2 01                    1043 	.sleb128	1
      0012D3 01                    1044 	.db	1
      0012D4 09                    1045 	.db	9
      0012D5 00 01                 1046 	.dw	1+Ssoft_i2c$I2C_NAck$78-Ssoft_i2c$I2C_NAck$77
      0012D7 00                    1047 	.db	0
      0012D8 01                    1048 	.uleb128	1
      0012D9 01                    1049 	.db	1
      0012DA 00                    1050 	.db	0
      0012DB 05                    1051 	.uleb128	5
      0012DC 02                    1052 	.db	2
      0012DD 00 00 8B 32           1053 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$80)
      0012E1 03                    1054 	.db	3
      0012E2 E9 00                 1055 	.sleb128	105
      0012E4 01                    1056 	.db	1
      0012E5 09                    1057 	.db	9
      0012E6 00 01                 1058 	.dw	Ssoft_i2c$I2C_Send_Byte$83-Ssoft_i2c$I2C_Send_Byte$80
      0012E8 03                    1059 	.db	3
      0012E9 03                    1060 	.sleb128	3
      0012EA 01                    1061 	.db	1
      0012EB 09                    1062 	.db	9
      0012EC 00 04                 1063 	.dw	Ssoft_i2c$I2C_Send_Byte$84-Ssoft_i2c$I2C_Send_Byte$83
      0012EE 03                    1064 	.db	3
      0012EF 01                    1065 	.sleb128	1
      0012F0 01                    1066 	.db	1
      0012F1 09                    1067 	.db	9
      0012F2 00 02                 1068 	.dw	Ssoft_i2c$I2C_Send_Byte$86-Ssoft_i2c$I2C_Send_Byte$84
      0012F4 03                    1069 	.db	3
      0012F5 02                    1070 	.sleb128	2
      0012F6 01                    1071 	.db	1
      0012F7 09                    1072 	.db	9
      0012F8 00 0F                 1073 	.dw	Ssoft_i2c$I2C_Send_Byte$88-Ssoft_i2c$I2C_Send_Byte$86
      0012FA 03                    1074 	.db	3
      0012FB 7D                    1075 	.sleb128	-3
      0012FC 01                    1076 	.db	1
      0012FD 09                    1077 	.db	9
      0012FE 00 03                 1078 	.dw	Ssoft_i2c$I2C_Send_Byte$89-Ssoft_i2c$I2C_Send_Byte$88
      001300 03                    1079 	.db	3
      001301 03                    1080 	.sleb128	3
      001302 01                    1081 	.db	1
      001303 09                    1082 	.db	9
      001304 00 03                 1083 	.dw	Ssoft_i2c$I2C_Send_Byte$90-Ssoft_i2c$I2C_Send_Byte$89
      001306 03                    1084 	.db	3
      001307 01                    1085 	.sleb128	1
      001308 01                    1086 	.db	1
      001309 09                    1087 	.db	9
      00130A 00 07                 1088 	.dw	Ssoft_i2c$I2C_Send_Byte$91-Ssoft_i2c$I2C_Send_Byte$90
      00130C 03                    1089 	.db	3
      00130D 02                    1090 	.sleb128	2
      00130E 01                    1091 	.db	1
      00130F 09                    1092 	.db	9
      001310 00 05                 1093 	.dw	Ssoft_i2c$I2C_Send_Byte$92-Ssoft_i2c$I2C_Send_Byte$91
      001312 03                    1094 	.db	3
      001313 01                    1095 	.sleb128	1
      001314 01                    1096 	.db	1
      001315 09                    1097 	.db	9
      001316 00 02                 1098 	.dw	Ssoft_i2c$I2C_Send_Byte$93-Ssoft_i2c$I2C_Send_Byte$92
      001318 03                    1099 	.db	3
      001319 01                    1100 	.sleb128	1
      00131A 01                    1101 	.db	1
      00131B 09                    1102 	.db	9
      00131C 00 03                 1103 	.dw	Ssoft_i2c$I2C_Send_Byte$94-Ssoft_i2c$I2C_Send_Byte$93
      00131E 03                    1104 	.db	3
      00131F 01                    1105 	.sleb128	1
      001320 01                    1106 	.db	1
      001321 09                    1107 	.db	9
      001322 00 04                 1108 	.dw	Ssoft_i2c$I2C_Send_Byte$95-Ssoft_i2c$I2C_Send_Byte$94
      001324 03                    1109 	.db	3
      001325 01                    1110 	.sleb128	1
      001326 01                    1111 	.db	1
      001327 09                    1112 	.db	9
      001328 00 03                 1113 	.dw	Ssoft_i2c$I2C_Send_Byte$96-Ssoft_i2c$I2C_Send_Byte$95
      00132A 03                    1114 	.db	3
      00132B 01                    1115 	.sleb128	1
      00132C 01                    1116 	.db	1
      00132D 09                    1117 	.db	9
      00132E 00 04                 1118 	.dw	Ssoft_i2c$I2C_Send_Byte$97-Ssoft_i2c$I2C_Send_Byte$96
      001330 03                    1119 	.db	3
      001331 01                    1120 	.sleb128	1
      001332 01                    1121 	.db	1
      001333 09                    1122 	.db	9
      001334 00 03                 1123 	.dw	Ssoft_i2c$I2C_Send_Byte$98-Ssoft_i2c$I2C_Send_Byte$97
      001336 03                    1124 	.db	3
      001337 75                    1125 	.sleb128	-11
      001338 01                    1126 	.db	1
      001339 09                    1127 	.db	9
      00133A 00 0B                 1128 	.dw	Ssoft_i2c$I2C_Send_Byte$99-Ssoft_i2c$I2C_Send_Byte$98
      00133C 03                    1129 	.db	3
      00133D 0D                    1130 	.sleb128	13
      00133E 01                    1131 	.db	1
      00133F 09                    1132 	.db	9
      001340 00 02                 1133 	.dw	1+Ssoft_i2c$I2C_Send_Byte$101-Ssoft_i2c$I2C_Send_Byte$99
      001342 00                    1134 	.db	0
      001343 01                    1135 	.uleb128	1
      001344 01                    1136 	.db	1
      001345 00                    1137 	.db	0
      001346 05                    1138 	.uleb128	5
      001347 02                    1139 	.db	2
      001348 00 00 8B 7A           1140 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$103)
      00134C 03                    1141 	.db	3
      00134D FD 00                 1142 	.sleb128	125
      00134F 01                    1143 	.db	1
      001350 09                    1144 	.db	9
      001351 00 01                 1145 	.dw	Ssoft_i2c$I2C_Read_Byte$106-Ssoft_i2c$I2C_Read_Byte$103
      001353 03                    1146 	.db	3
      001354 02                    1147 	.sleb128	2
      001355 01                    1148 	.db	1
      001356 09                    1149 	.db	9
      001357 00 02                 1150 	.dw	Ssoft_i2c$I2C_Read_Byte$107-Ssoft_i2c$I2C_Read_Byte$106
      001359 03                    1151 	.db	3
      00135A 01                    1152 	.sleb128	1
      00135B 01                    1153 	.db	1
      00135C 09                    1154 	.db	9
      00135D 00 02                 1155 	.dw	Ssoft_i2c$I2C_Read_Byte$109-Ssoft_i2c$I2C_Read_Byte$107
      00135F 03                    1156 	.db	3
      001360 03                    1157 	.sleb128	3
      001361 01                    1158 	.db	1
      001362 09                    1159 	.db	9
      001363 00 04                 1160 	.dw	Ssoft_i2c$I2C_Read_Byte$110-Ssoft_i2c$I2C_Read_Byte$109
      001365 03                    1161 	.db	3
      001366 01                    1162 	.sleb128	1
      001367 01                    1163 	.db	1
      001368 09                    1164 	.db	9
      001369 00 03                 1165 	.dw	Ssoft_i2c$I2C_Read_Byte$111-Ssoft_i2c$I2C_Read_Byte$110
      00136B 03                    1166 	.db	3
      00136C 01                    1167 	.sleb128	1
      00136D 01                    1168 	.db	1
      00136E 09                    1169 	.db	9
      00136F 00 04                 1170 	.dw	Ssoft_i2c$I2C_Read_Byte$112-Ssoft_i2c$I2C_Read_Byte$111
      001371 03                    1171 	.db	3
      001372 01                    1172 	.sleb128	1
      001373 01                    1173 	.db	1
      001374 09                    1174 	.db	9
      001375 00 02                 1175 	.dw	Ssoft_i2c$I2C_Read_Byte$113-Ssoft_i2c$I2C_Read_Byte$112
      001377 03                    1176 	.db	3
      001378 01                    1177 	.sleb128	1
      001379 01                    1178 	.db	1
      00137A 09                    1179 	.db	9
      00137B 00 0E                 1180 	.dw	Ssoft_i2c$I2C_Read_Byte$114-Ssoft_i2c$I2C_Read_Byte$113
      00137D 03                    1181 	.db	3
      00137E 01                    1182 	.sleb128	1
      00137F 01                    1183 	.db	1
      001380 09                    1184 	.db	9
      001381 00 01                 1185 	.dw	Ssoft_i2c$I2C_Read_Byte$116-Ssoft_i2c$I2C_Read_Byte$114
      001383 03                    1186 	.db	3
      001384 78                    1187 	.sleb128	-8
      001385 01                    1188 	.db	1
      001386 09                    1189 	.db	9
      001387 00 08                 1190 	.dw	Ssoft_i2c$I2C_Read_Byte$117-Ssoft_i2c$I2C_Read_Byte$116
      001389 03                    1191 	.db	3
      00138A 0A                    1192 	.sleb128	10
      00138B 01                    1193 	.db	1
      00138C 09                    1194 	.db	9
      00138D 00 04                 1195 	.dw	Ssoft_i2c$I2C_Read_Byte$118-Ssoft_i2c$I2C_Read_Byte$117
      00138F 03                    1196 	.db	3
      001390 01                    1197 	.sleb128	1
      001391 01                    1198 	.db	1
      001392 09                    1199 	.db	9
      001393 00 05                 1200 	.dw	Ssoft_i2c$I2C_Read_Byte$119-Ssoft_i2c$I2C_Read_Byte$118
      001395 03                    1201 	.db	3
      001396 02                    1202 	.sleb128	2
      001397 01                    1203 	.db	1
      001398 09                    1204 	.db	9
      001399 00 03                 1205 	.dw	Ssoft_i2c$I2C_Read_Byte$120-Ssoft_i2c$I2C_Read_Byte$119
      00139B 03                    1206 	.db	3
      00139C 01                    1207 	.sleb128	1
      00139D 01                    1208 	.db	1
      00139E 09                    1209 	.db	9
      00139F 00 02                 1210 	.dw	Ssoft_i2c$I2C_Read_Byte$121-Ssoft_i2c$I2C_Read_Byte$120
      0013A1 03                    1211 	.db	3
      0013A2 01                    1212 	.sleb128	1
      0013A3 01                    1213 	.db	1
      0013A4 09                    1214 	.db	9
      0013A5 00 02                 1215 	.dw	1+Ssoft_i2c$I2C_Read_Byte$123-Ssoft_i2c$I2C_Read_Byte$121
      0013A7 00                    1216 	.db	0
      0013A8 01                    1217 	.uleb128	1
      0013A9 01                    1218 	.db	1
      0013AA 00                    1219 	.db	0
      0013AB 05                    1220 	.uleb128	5
      0013AC 02                    1221 	.db	2
      0013AD 00 00 8B B3           1222 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$125)
      0013B1 03                    1223 	.db	3
      0013B2 BF 01                 1224 	.sleb128	191
      0013B4 01                    1225 	.db	1
      0013B5 09                    1226 	.db	9
      0013B6 00 02                 1227 	.dw	Ssoft_i2c$I2C_MasterReceiveData$128-Ssoft_i2c$I2C_MasterReceiveData$125
      0013B8 03                    1228 	.db	3
      0013B9 02                    1229 	.sleb128	2
      0013BA 01                    1230 	.db	1
      0013BB 09                    1231 	.db	9
      0013BC 00 03                 1232 	.dw	Ssoft_i2c$I2C_MasterReceiveData$129-Ssoft_i2c$I2C_MasterReceiveData$128
      0013BE 03                    1233 	.db	3
      0013BF 01                    1234 	.sleb128	1
      0013C0 01                    1235 	.db	1
      0013C1 09                    1236 	.db	9
      0013C2 00 0A                 1237 	.dw	Ssoft_i2c$I2C_MasterReceiveData$132-Ssoft_i2c$I2C_MasterReceiveData$129
      0013C4 03                    1238 	.db	3
      0013C5 01                    1239 	.sleb128	1
      0013C6 01                    1240 	.db	1
      0013C7 09                    1241 	.db	9
      0013C8 00 06                 1242 	.dw	Ssoft_i2c$I2C_MasterReceiveData$133-Ssoft_i2c$I2C_MasterReceiveData$132
      0013CA 03                    1243 	.db	3
      0013CB 01                    1244 	.sleb128	1
      0013CC 01                    1245 	.db	1
      0013CD 09                    1246 	.db	9
      0013CE 00 04                 1247 	.dw	Ssoft_i2c$I2C_MasterReceiveData$134-Ssoft_i2c$I2C_MasterReceiveData$133
      0013D0 03                    1248 	.db	3
      0013D1 01                    1249 	.sleb128	1
      0013D2 01                    1250 	.db	1
      0013D3 09                    1251 	.db	9
      0013D4 00 07                 1252 	.dw	Ssoft_i2c$I2C_MasterReceiveData$137-Ssoft_i2c$I2C_MasterReceiveData$134
      0013D6 03                    1253 	.db	3
      0013D7 01                    1254 	.sleb128	1
      0013D8 01                    1255 	.db	1
      0013D9 09                    1256 	.db	9
      0013DA 00 06                 1257 	.dw	Ssoft_i2c$I2C_MasterReceiveData$138-Ssoft_i2c$I2C_MasterReceiveData$137
      0013DC 03                    1258 	.db	3
      0013DD 01                    1259 	.sleb128	1
      0013DE 01                    1260 	.db	1
      0013DF 09                    1261 	.db	9
      0013E0 00 04                 1262 	.dw	Ssoft_i2c$I2C_MasterReceiveData$139-Ssoft_i2c$I2C_MasterReceiveData$138
      0013E2 03                    1263 	.db	3
      0013E3 02                    1264 	.sleb128	2
      0013E4 01                    1265 	.db	1
      0013E5 09                    1266 	.db	9
      0013E6 00 03                 1267 	.dw	Ssoft_i2c$I2C_MasterReceiveData$140-Ssoft_i2c$I2C_MasterReceiveData$139
      0013E8 03                    1268 	.db	3
      0013E9 01                    1269 	.sleb128	1
      0013EA 01                    1270 	.db	1
      0013EB 09                    1271 	.db	9
      0013EC 00 09                 1272 	.dw	Ssoft_i2c$I2C_MasterReceiveData$143-Ssoft_i2c$I2C_MasterReceiveData$140
      0013EE 03                    1273 	.db	3
      0013EF 01                    1274 	.sleb128	1
      0013F0 01                    1275 	.db	1
      0013F1 09                    1276 	.db	9
      0013F2 00 06                 1277 	.dw	Ssoft_i2c$I2C_MasterReceiveData$144-Ssoft_i2c$I2C_MasterReceiveData$143
      0013F4 03                    1278 	.db	3
      0013F5 01                    1279 	.sleb128	1
      0013F6 01                    1280 	.db	1
      0013F7 09                    1281 	.db	9
      0013F8 00 04                 1282 	.dw	Ssoft_i2c$I2C_MasterReceiveData$145-Ssoft_i2c$I2C_MasterReceiveData$144
      0013FA 03                    1283 	.db	3
      0013FB 02                    1284 	.sleb128	2
      0013FC 01                    1285 	.db	1
      0013FD 09                    1286 	.db	9
      0013FE 00 0B                 1287 	.dw	Ssoft_i2c$I2C_MasterReceiveData$148-Ssoft_i2c$I2C_MasterReceiveData$145
      001400 03                    1288 	.db	3
      001401 02                    1289 	.sleb128	2
      001402 01                    1290 	.db	1
      001403 09                    1291 	.db	9
      001404 00 0D                 1292 	.dw	Ssoft_i2c$I2C_MasterReceiveData$150-Ssoft_i2c$I2C_MasterReceiveData$148
      001406 03                    1293 	.db	3
      001407 01                    1294 	.sleb128	1
      001408 01                    1295 	.db	1
      001409 09                    1296 	.db	9
      00140A 00 07                 1297 	.dw	Ssoft_i2c$I2C_MasterReceiveData$151-Ssoft_i2c$I2C_MasterReceiveData$150
      00140C 03                    1298 	.db	3
      00140D 7F                    1299 	.sleb128	-1
      00140E 01                    1300 	.db	1
      00140F 09                    1301 	.db	9
      001410 00 06                 1302 	.dw	Ssoft_i2c$I2C_MasterReceiveData$153-Ssoft_i2c$I2C_MasterReceiveData$151
      001412 03                    1303 	.db	3
      001413 01                    1304 	.sleb128	1
      001414 01                    1305 	.db	1
      001415 09                    1306 	.db	9
      001416 00 0C                 1307 	.dw	Ssoft_i2c$I2C_MasterReceiveData$158-Ssoft_i2c$I2C_MasterReceiveData$153
      001418 03                    1308 	.db	3
      001419 02                    1309 	.sleb128	2
      00141A 01                    1310 	.db	1
      00141B 09                    1311 	.db	9
      00141C 00 0A                 1312 	.dw	Ssoft_i2c$I2C_MasterReceiveData$163-Ssoft_i2c$I2C_MasterReceiveData$158
      00141E 03                    1313 	.db	3
      00141F 7B                    1314 	.sleb128	-5
      001420 01                    1315 	.db	1
      001421 09                    1316 	.db	9
      001422 00 05                 1317 	.dw	Ssoft_i2c$I2C_MasterReceiveData$164-Ssoft_i2c$I2C_MasterReceiveData$163
      001424 03                    1318 	.db	3
      001425 08                    1319 	.sleb128	8
      001426 01                    1320 	.db	1
      001427 09                    1321 	.db	9
      001428 00 03                 1322 	.dw	Ssoft_i2c$I2C_MasterReceiveData$165-Ssoft_i2c$I2C_MasterReceiveData$164
      00142A 03                    1323 	.db	3
      00142B 02                    1324 	.sleb128	2
      00142C 01                    1325 	.db	1
      00142D 09                    1326 	.db	9
      00142E 00 02                 1327 	.dw	Ssoft_i2c$I2C_MasterReceiveData$166-Ssoft_i2c$I2C_MasterReceiveData$165
      001430 03                    1328 	.db	3
      001431 01                    1329 	.sleb128	1
      001432 01                    1330 	.db	1
      001433 09                    1331 	.db	9
      001434 00 03                 1332 	.dw	1+Ssoft_i2c$I2C_MasterReceiveData$168-Ssoft_i2c$I2C_MasterReceiveData$166
      001436 00                    1333 	.db	0
      001437 01                    1334 	.uleb128	1
      001438 01                    1335 	.db	1
      001439 00                    1336 	.db	0
      00143A 05                    1337 	.uleb128	5
      00143B 02                    1338 	.db	2
      00143C 00 00 8C 3B           1339 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$170)
      001440 03                    1340 	.db	3
      001441 E3 01                 1341 	.sleb128	227
      001443 01                    1342 	.db	1
      001444 09                    1343 	.db	9
      001445 00 01                 1344 	.dw	Ssoft_i2c$I2C_MasterSendData$173-Ssoft_i2c$I2C_MasterSendData$170
      001447 03                    1345 	.db	3
      001448 02                    1346 	.sleb128	2
      001449 01                    1347 	.db	1
      00144A 09                    1348 	.db	9
      00144B 00 03                 1349 	.dw	Ssoft_i2c$I2C_MasterSendData$174-Ssoft_i2c$I2C_MasterSendData$173
      00144D 03                    1350 	.db	3
      00144E 01                    1351 	.sleb128	1
      00144F 01                    1352 	.db	1
      001450 09                    1353 	.db	9
      001451 00 08                 1354 	.dw	Ssoft_i2c$I2C_MasterSendData$177-Ssoft_i2c$I2C_MasterSendData$174
      001453 03                    1355 	.db	3
      001454 01                    1356 	.sleb128	1
      001455 01                    1357 	.db	1
      001456 09                    1358 	.db	9
      001457 00 06                 1359 	.dw	Ssoft_i2c$I2C_MasterSendData$178-Ssoft_i2c$I2C_MasterSendData$177
      001459 03                    1360 	.db	3
      00145A 01                    1361 	.sleb128	1
      00145B 01                    1362 	.db	1
      00145C 09                    1363 	.db	9
      00145D 00 04                 1364 	.dw	Ssoft_i2c$I2C_MasterSendData$179-Ssoft_i2c$I2C_MasterSendData$178
      00145F 03                    1365 	.db	3
      001460 01                    1366 	.sleb128	1
      001461 01                    1367 	.db	1
      001462 09                    1368 	.db	9
      001463 00 07                 1369 	.dw	Ssoft_i2c$I2C_MasterSendData$182-Ssoft_i2c$I2C_MasterSendData$179
      001465 03                    1370 	.db	3
      001466 01                    1371 	.sleb128	1
      001467 01                    1372 	.db	1
      001468 09                    1373 	.db	9
      001469 00 06                 1374 	.dw	Ssoft_i2c$I2C_MasterSendData$183-Ssoft_i2c$I2C_MasterSendData$182
      00146B 03                    1375 	.db	3
      00146C 01                    1376 	.sleb128	1
      00146D 01                    1377 	.db	1
      00146E 09                    1378 	.db	9
      00146F 00 03                 1379 	.dw	Ssoft_i2c$I2C_MasterSendData$184-Ssoft_i2c$I2C_MasterSendData$183
      001471 03                    1380 	.db	3
      001472 02                    1381 	.sleb128	2
      001473 01                    1382 	.db	1
      001474 09                    1383 	.db	9
      001475 00 08                 1384 	.dw	Ssoft_i2c$I2C_MasterSendData$187-Ssoft_i2c$I2C_MasterSendData$184
      001477 03                    1385 	.db	3
      001478 02                    1386 	.sleb128	2
      001479 01                    1387 	.db	1
      00147A 09                    1388 	.db	9
      00147B 00 0D                 1389 	.dw	Ssoft_i2c$I2C_MasterSendData$190-Ssoft_i2c$I2C_MasterSendData$187
      00147D 03                    1390 	.db	3
      00147E 01                    1391 	.sleb128	1
      00147F 01                    1392 	.db	1
      001480 09                    1393 	.db	9
      001481 00 06                 1394 	.dw	Ssoft_i2c$I2C_MasterSendData$191-Ssoft_i2c$I2C_MasterSendData$190
      001483 03                    1395 	.db	3
      001484 01                    1396 	.sleb128	1
      001485 01                    1397 	.db	1
      001486 09                    1398 	.db	9
      001487 00 03                 1399 	.dw	Ssoft_i2c$I2C_MasterSendData$193-Ssoft_i2c$I2C_MasterSendData$191
      001489 03                    1400 	.db	3
      00148A 7C                    1401 	.sleb128	-4
      00148B 01                    1402 	.db	1
      00148C 09                    1403 	.db	9
      00148D 00 04                 1404 	.dw	Ssoft_i2c$I2C_MasterSendData$195-Ssoft_i2c$I2C_MasterSendData$193
      00148F 03                    1405 	.db	3
      001490 06                    1406 	.sleb128	6
      001491 01                    1407 	.db	1
      001492 09                    1408 	.db	9
      001493 00 03                 1409 	.dw	Ssoft_i2c$I2C_MasterSendData$196-Ssoft_i2c$I2C_MasterSendData$195
      001495 03                    1410 	.db	3
      001496 02                    1411 	.sleb128	2
      001497 01                    1412 	.db	1
      001498 09                    1413 	.db	9
      001499 00 02                 1414 	.dw	Ssoft_i2c$I2C_MasterSendData$197-Ssoft_i2c$I2C_MasterSendData$196
      00149B 03                    1415 	.db	3
      00149C 01                    1416 	.sleb128	1
      00149D 01                    1417 	.db	1
      00149E 09                    1418 	.db	9
      00149F 00 03                 1419 	.dw	1+Ssoft_i2c$I2C_MasterSendData$199-Ssoft_i2c$I2C_MasterSendData$197
      0014A1 00                    1420 	.db	0
      0014A2 01                    1421 	.uleb128	1
      0014A3 01                    1422 	.db	1
      0014A4 00                    1423 	.db	0
      0014A5 05                    1424 	.uleb128	5
      0014A6 02                    1425 	.db	2
      0014A7 00 00 8C 8B           1426 	.dw	0,(Ssoft_i2c$delay_us$201)
      0014AB 03                    1427 	.db	3
      0014AC FA 01                 1428 	.sleb128	250
      0014AE 01                    1429 	.db	1
      0014AF 09                    1430 	.db	9
      0014B0 00 00                 1431 	.dw	Ssoft_i2c$delay_us$203-Ssoft_i2c$delay_us$201
      0014B2 03                    1432 	.db	3
      0014B3 02                    1433 	.sleb128	2
      0014B4 01                    1434 	.db	1
      0014B5 09                    1435 	.db	9
      0014B6 00 04                 1436 	.dw	Ssoft_i2c$delay_us$204-Ssoft_i2c$delay_us$203
      0014B8 03                    1437 	.db	3
      0014B9 01                    1438 	.sleb128	1
      0014BA 01                    1439 	.db	1
      0014BB 09                    1440 	.db	9
      0014BC 00 01                 1441 	.dw	1+Ssoft_i2c$delay_us$205-Ssoft_i2c$delay_us$204
      0014BE 00                    1442 	.db	0
      0014BF 01                    1443 	.uleb128	1
      0014C0 01                    1444 	.db	1
      0014C1                       1445 Ldebug_line_end:
                                   1446 
                                   1447 	.area .debug_loc (NOLOAD)
      000BC0                       1448 Ldebug_loc_start:
      000BC0 00 00 8C 8B           1449 	.dw	0,(Ssoft_i2c$delay_us$202)
      000BC4 00 00 8C 90           1450 	.dw	0,(Ssoft_i2c$delay_us$206)
      000BC8 00 02                 1451 	.dw	2
      000BCA 78                    1452 	.db	120
      000BCB 01                    1453 	.sleb128	1
      000BCC 00 00 00 00           1454 	.dw	0,0
      000BD0 00 00 00 00           1455 	.dw	0,0
      000BD4 00 00 8C 8A           1456 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      000BD8 00 00 8C 8B           1457 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$200)
      000BDC 00 02                 1458 	.dw	2
      000BDE 78                    1459 	.db	120
      000BDF 01                    1460 	.sleb128	1
      000BE0 00 00 8C 76           1461 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      000BE4 00 00 8C 8A           1462 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      000BE8 00 02                 1463 	.dw	2
      000BEA 78                    1464 	.db	120
      000BEB 02                    1465 	.sleb128	2
      000BEC 00 00 8C 72           1466 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      000BF0 00 00 8C 76           1467 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      000BF4 00 02                 1468 	.dw	2
      000BF6 78                    1469 	.db	120
      000BF7 03                    1470 	.sleb128	3
      000BF8 00 00 8C 58           1471 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      000BFC 00 00 8C 72           1472 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      000C00 00 02                 1473 	.dw	2
      000C02 78                    1474 	.db	120
      000C03 02                    1475 	.sleb128	2
      000C04 00 00 8C 54           1476 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      000C08 00 00 8C 58           1477 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      000C0C 00 02                 1478 	.dw	2
      000C0E 78                    1479 	.db	120
      000C0F 03                    1480 	.sleb128	3
      000C10 00 00 8C 47           1481 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      000C14 00 00 8C 54           1482 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      000C18 00 02                 1483 	.dw	2
      000C1A 78                    1484 	.db	120
      000C1B 02                    1485 	.sleb128	2
      000C1C 00 00 8C 43           1486 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      000C20 00 00 8C 47           1487 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      000C24 00 02                 1488 	.dw	2
      000C26 78                    1489 	.db	120
      000C27 03                    1490 	.sleb128	3
      000C28 00 00 8C 3C           1491 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      000C2C 00 00 8C 43           1492 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      000C30 00 02                 1493 	.dw	2
      000C32 78                    1494 	.db	120
      000C33 02                    1495 	.sleb128	2
      000C34 00 00 8C 3B           1496 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
      000C38 00 00 8C 3C           1497 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      000C3C 00 02                 1498 	.dw	2
      000C3E 78                    1499 	.db	120
      000C3F 01                    1500 	.sleb128	1
      000C40 00 00 00 00           1501 	.dw	0,0
      000C44 00 00 00 00           1502 	.dw	0,0
      000C48 00 00 8C 3A           1503 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      000C4C 00 00 8C 3B           1504 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$169)
      000C50 00 02                 1505 	.dw	2
      000C52 78                    1506 	.db	120
      000C53 01                    1507 	.sleb128	1
      000C54 00 00 8C 2D           1508 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      000C58 00 00 8C 3A           1509 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      000C5C 00 02                 1510 	.dw	2
      000C5E 78                    1511 	.db	120
      000C5F 04                    1512 	.sleb128	4
      000C60 00 00 8C 2C           1513 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      000C64 00 00 8C 2D           1514 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      000C68 00 02                 1515 	.dw	2
      000C6A 78                    1516 	.db	120
      000C6B 06                    1517 	.sleb128	6
      000C6C 00 00 8C 27           1518 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      000C70 00 00 8C 2C           1519 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      000C74 00 02                 1520 	.dw	2
      000C76 78                    1521 	.db	120
      000C77 07                    1522 	.sleb128	7
      000C78 00 00 8C 25           1523 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      000C7C 00 00 8C 27           1524 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      000C80 00 02                 1525 	.dw	2
      000C82 78                    1526 	.db	120
      000C83 06                    1527 	.sleb128	6
      000C84 00 00 8C 21           1528 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      000C88 00 00 8C 25           1529 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      000C8C 00 02                 1530 	.dw	2
      000C8E 78                    1531 	.db	120
      000C8F 04                    1532 	.sleb128	4
      000C90 00 00 8C 20           1533 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      000C94 00 00 8C 21           1534 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      000C98 00 02                 1535 	.dw	2
      000C9A 78                    1536 	.db	120
      000C9B 06                    1537 	.sleb128	6
      000C9C 00 00 8C 1B           1538 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      000CA0 00 00 8C 20           1539 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      000CA4 00 02                 1540 	.dw	2
      000CA6 78                    1541 	.db	120
      000CA7 07                    1542 	.sleb128	7
      000CA8 00 00 8C 19           1543 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      000CAC 00 00 8C 1B           1544 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      000CB0 00 02                 1545 	.dw	2
      000CB2 78                    1546 	.db	120
      000CB3 06                    1547 	.sleb128	6
      000CB4 00 00 8C 18           1548 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      000CB8 00 00 8C 19           1549 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      000CBC 00 02                 1550 	.dw	2
      000CBE 78                    1551 	.db	120
      000CBF 04                    1552 	.sleb128	4
      000CC0 00 00 8B E9           1553 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000CC4 00 00 8C 18           1554 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      000CC8 00 02                 1555 	.dw	2
      000CCA 78                    1556 	.db	120
      000CCB 04                    1557 	.sleb128	4
      000CCC 00 00 8B E5           1558 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      000CD0 00 00 8B E9           1559 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000CD4 00 02                 1560 	.dw	2
      000CD6 78                    1561 	.db	120
      000CD7 05                    1562 	.sleb128	5
      000CD8 00 00 8B D3           1563 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      000CDC 00 00 8B E5           1564 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      000CE0 00 02                 1565 	.dw	2
      000CE2 78                    1566 	.db	120
      000CE3 04                    1567 	.sleb128	4
      000CE4 00 00 8B CF           1568 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      000CE8 00 00 8B D3           1569 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      000CEC 00 02                 1570 	.dw	2
      000CEE 78                    1571 	.db	120
      000CEF 05                    1572 	.sleb128	5
      000CF0 00 00 8B C2           1573 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000CF4 00 00 8B CF           1574 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      000CF8 00 02                 1575 	.dw	2
      000CFA 78                    1576 	.db	120
      000CFB 04                    1577 	.sleb128	4
      000CFC 00 00 8B BE           1578 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      000D00 00 00 8B C2           1579 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000D04 00 02                 1580 	.dw	2
      000D06 78                    1581 	.db	120
      000D07 05                    1582 	.sleb128	5
      000D08 00 00 8B B5           1583 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      000D0C 00 00 8B BE           1584 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      000D10 00 02                 1585 	.dw	2
      000D12 78                    1586 	.db	120
      000D13 04                    1587 	.sleb128	4
      000D14 00 00 8B B3           1588 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
      000D18 00 00 8B B5           1589 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      000D1C 00 02                 1590 	.dw	2
      000D1E 78                    1591 	.db	120
      000D1F 01                    1592 	.sleb128	1
      000D20 00 00 00 00           1593 	.dw	0,0
      000D24 00 00 00 00           1594 	.dw	0,0
      000D28 00 00 8B B2           1595 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      000D2C 00 00 8B B3           1596 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$124)
      000D30 00 02                 1597 	.dw	2
      000D32 78                    1598 	.db	120
      000D33 01                    1599 	.sleb128	1
      000D34 00 00 8B 7B           1600 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000D38 00 00 8B B2           1601 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      000D3C 00 02                 1602 	.dw	2
      000D3E 78                    1603 	.db	120
      000D3F 03                    1604 	.sleb128	3
      000D40 00 00 8B 7A           1605 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
      000D44 00 00 8B 7B           1606 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000D48 00 02                 1607 	.dw	2
      000D4A 78                    1608 	.db	120
      000D4B 01                    1609 	.sleb128	1
      000D4C 00 00 00 00           1610 	.dw	0,0
      000D50 00 00 00 00           1611 	.dw	0,0
      000D54 00 00 8B 79           1612 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      000D58 00 00 8B 7A           1613 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$102)
      000D5C 00 02                 1614 	.dw	2
      000D5E 78                    1615 	.db	120
      000D5F 01                    1616 	.sleb128	1
      000D60 00 00 8B 33           1617 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      000D64 00 00 8B 79           1618 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      000D68 00 02                 1619 	.dw	2
      000D6A 78                    1620 	.db	120
      000D6B 02                    1621 	.sleb128	2
      000D6C 00 00 8B 32           1622 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
      000D70 00 00 8B 33           1623 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      000D74 00 02                 1624 	.dw	2
      000D76 78                    1625 	.db	120
      000D77 01                    1626 	.sleb128	1
      000D78 00 00 00 00           1627 	.dw	0,0
      000D7C 00 00 00 00           1628 	.dw	0,0
      000D80 00 00 8B 1B           1629 	.dw	0,(Ssoft_i2c$I2C_NAck$70)
      000D84 00 00 8B 32           1630 	.dw	0,(Ssoft_i2c$I2C_NAck$79)
      000D88 00 02                 1631 	.dw	2
      000D8A 78                    1632 	.db	120
      000D8B 01                    1633 	.sleb128	1
      000D8C 00 00 00 00           1634 	.dw	0,0
      000D90 00 00 00 00           1635 	.dw	0,0
      000D94 00 00 8B 04           1636 	.dw	0,(Ssoft_i2c$I2C_Ack$59)
      000D98 00 00 8B 1B           1637 	.dw	0,(Ssoft_i2c$I2C_Ack$68)
      000D9C 00 02                 1638 	.dw	2
      000D9E 78                    1639 	.db	120
      000D9F 01                    1640 	.sleb128	1
      000DA0 00 00 00 00           1641 	.dw	0,0
      000DA4 00 00 00 00           1642 	.dw	0,0
      000DA8 00 00 8A D2           1643 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
      000DAC 00 00 8B 04           1644 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$57)
      000DB0 00 02                 1645 	.dw	2
      000DB2 78                    1646 	.db	120
      000DB3 01                    1647 	.sleb128	1
      000DB4 00 00 00 00           1648 	.dw	0,0
      000DB8 00 00 00 00           1649 	.dw	0,0
      000DBC 00 00 8A B7           1650 	.dw	0,(Ssoft_i2c$I2C_Stop$31)
      000DC0 00 00 8A D2           1651 	.dw	0,(Ssoft_i2c$I2C_Stop$40)
      000DC4 00 02                 1652 	.dw	2
      000DC6 78                    1653 	.db	120
      000DC7 01                    1654 	.sleb128	1
      000DC8 00 00 00 00           1655 	.dw	0,0
      000DCC 00 00 00 00           1656 	.dw	0,0
      000DD0 00 00 8A A0           1657 	.dw	0,(Ssoft_i2c$I2C_Start$20)
      000DD4 00 00 8A B7           1658 	.dw	0,(Ssoft_i2c$I2C_Start$29)
      000DD8 00 02                 1659 	.dw	2
      000DDA 78                    1660 	.db	120
      000DDB 01                    1661 	.sleb128	1
      000DDC 00 00 00 00           1662 	.dw	0,0
      000DE0 00 00 00 00           1663 	.dw	0,0
      000DE4 00 00 8A 97           1664 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000DE8 00 00 8A A0           1665 	.dw	0,(Ssoft_i2c$I2C_Init$18)
      000DEC 00 02                 1666 	.dw	2
      000DEE 78                    1667 	.db	120
      000DEF 01                    1668 	.sleb128	1
      000DF0 00 00 8A 92           1669 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      000DF4 00 00 8A 97           1670 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000DF8 00 02                 1671 	.dw	2
      000DFA 78                    1672 	.db	120
      000DFB 05                    1673 	.sleb128	5
      000DFC 00 00 8A 90           1674 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000E00 00 00 8A 92           1675 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      000E04 00 02                 1676 	.dw	2
      000E06 78                    1677 	.db	120
      000E07 04                    1678 	.sleb128	4
      000E08 00 00 8A 8E           1679 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      000E0C 00 00 8A 90           1680 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000E10 00 02                 1681 	.dw	2
      000E12 78                    1682 	.db	120
      000E13 03                    1683 	.sleb128	3
      000E14 00 00 8A 8C           1684 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      000E18 00 00 8A 8E           1685 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      000E1C 00 02                 1686 	.dw	2
      000E1E 78                    1687 	.db	120
      000E1F 02                    1688 	.sleb128	2
      000E20 00 00 8A 8A           1689 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      000E24 00 00 8A 8C           1690 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      000E28 00 02                 1691 	.dw	2
      000E2A 78                    1692 	.db	120
      000E2B 01                    1693 	.sleb128	1
      000E2C 00 00 8A 85           1694 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      000E30 00 00 8A 8A           1695 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      000E34 00 02                 1696 	.dw	2
      000E36 78                    1697 	.db	120
      000E37 05                    1698 	.sleb128	5
      000E38 00 00 8A 83           1699 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      000E3C 00 00 8A 85           1700 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      000E40 00 02                 1701 	.dw	2
      000E42 78                    1702 	.db	120
      000E43 04                    1703 	.sleb128	4
      000E44 00 00 8A 81           1704 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      000E48 00 00 8A 83           1705 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      000E4C 00 02                 1706 	.dw	2
      000E4E 78                    1707 	.db	120
      000E4F 03                    1708 	.sleb128	3
      000E50 00 00 8A 7F           1709 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      000E54 00 00 8A 81           1710 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      000E58 00 02                 1711 	.dw	2
      000E5A 78                    1712 	.db	120
      000E5B 02                    1713 	.sleb128	2
      000E5C 00 00 8A 7D           1714 	.dw	0,(Ssoft_i2c$I2C_Init$1)
      000E60 00 00 8A 7F           1715 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      000E64 00 02                 1716 	.dw	2
      000E66 78                    1717 	.db	120
      000E67 01                    1718 	.sleb128	1
      000E68 00 00 00 00           1719 	.dw	0,0
      000E6C 00 00 00 00           1720 	.dw	0,0
                                   1721 
                                   1722 	.area .debug_abbrev (NOLOAD)
      000446                       1723 Ldebug_abbrev:
      000446 0A                    1724 	.uleb128	10
      000447 0F                    1725 	.uleb128	15
      000448 00                    1726 	.db	0
      000449 0B                    1727 	.uleb128	11
      00044A 0B                    1728 	.uleb128	11
      00044B 49                    1729 	.uleb128	73
      00044C 13                    1730 	.uleb128	19
      00044D 00                    1731 	.uleb128	0
      00044E 00                    1732 	.uleb128	0
      00044F 09                    1733 	.uleb128	9
      000450 05                    1734 	.uleb128	5
      000451 00                    1735 	.db	0
      000452 02                    1736 	.uleb128	2
      000453 0A                    1737 	.uleb128	10
      000454 03                    1738 	.uleb128	3
      000455 08                    1739 	.uleb128	8
      000456 49                    1740 	.uleb128	73
      000457 13                    1741 	.uleb128	19
      000458 00                    1742 	.uleb128	0
      000459 00                    1743 	.uleb128	0
      00045A 08                    1744 	.uleb128	8
      00045B 2E                    1745 	.uleb128	46
      00045C 01                    1746 	.db	1
      00045D 01                    1747 	.uleb128	1
      00045E 13                    1748 	.uleb128	19
      00045F 03                    1749 	.uleb128	3
      000460 08                    1750 	.uleb128	8
      000461 11                    1751 	.uleb128	17
      000462 01                    1752 	.uleb128	1
      000463 12                    1753 	.uleb128	18
      000464 01                    1754 	.uleb128	1
      000465 3F                    1755 	.uleb128	63
      000466 0C                    1756 	.uleb128	12
      000467 40                    1757 	.uleb128	64
      000468 06                    1758 	.uleb128	6
      000469 00                    1759 	.uleb128	0
      00046A 00                    1760 	.uleb128	0
      00046B 07                    1761 	.uleb128	7
      00046C 34                    1762 	.uleb128	52
      00046D 00                    1763 	.db	0
      00046E 02                    1764 	.uleb128	2
      00046F 0A                    1765 	.uleb128	10
      000470 03                    1766 	.uleb128	3
      000471 08                    1767 	.uleb128	8
      000472 49                    1768 	.uleb128	73
      000473 13                    1769 	.uleb128	19
      000474 00                    1770 	.uleb128	0
      000475 00                    1771 	.uleb128	0
      000476 04                    1772 	.uleb128	4
      000477 2E                    1773 	.uleb128	46
      000478 01                    1774 	.db	1
      000479 01                    1775 	.uleb128	1
      00047A 13                    1776 	.uleb128	19
      00047B 03                    1777 	.uleb128	3
      00047C 08                    1778 	.uleb128	8
      00047D 11                    1779 	.uleb128	17
      00047E 01                    1780 	.uleb128	1
      00047F 12                    1781 	.uleb128	18
      000480 01                    1782 	.uleb128	1
      000481 3F                    1783 	.uleb128	63
      000482 0C                    1784 	.uleb128	12
      000483 40                    1785 	.uleb128	64
      000484 06                    1786 	.uleb128	6
      000485 49                    1787 	.uleb128	73
      000486 13                    1788 	.uleb128	19
      000487 00                    1789 	.uleb128	0
      000488 00                    1790 	.uleb128	0
      000489 0B                    1791 	.uleb128	11
      00048A 0B                    1792 	.uleb128	11
      00048B 01                    1793 	.db	1
      00048C 11                    1794 	.uleb128	17
      00048D 01                    1795 	.uleb128	1
      00048E 00                    1796 	.uleb128	0
      00048F 00                    1797 	.uleb128	0
      000490 01                    1798 	.uleb128	1
      000491 11                    1799 	.uleb128	17
      000492 01                    1800 	.db	1
      000493 03                    1801 	.uleb128	3
      000494 08                    1802 	.uleb128	8
      000495 10                    1803 	.uleb128	16
      000496 06                    1804 	.uleb128	6
      000497 13                    1805 	.uleb128	19
      000498 0B                    1806 	.uleb128	11
      000499 25                    1807 	.uleb128	37
      00049A 08                    1808 	.uleb128	8
      00049B 00                    1809 	.uleb128	0
      00049C 00                    1810 	.uleb128	0
      00049D 06                    1811 	.uleb128	6
      00049E 0B                    1812 	.uleb128	11
      00049F 00                    1813 	.db	0
      0004A0 11                    1814 	.uleb128	17
      0004A1 01                    1815 	.uleb128	1
      0004A2 12                    1816 	.uleb128	18
      0004A3 01                    1817 	.uleb128	1
      0004A4 00                    1818 	.uleb128	0
      0004A5 00                    1819 	.uleb128	0
      0004A6 0C                    1820 	.uleb128	12
      0004A7 0B                    1821 	.uleb128	11
      0004A8 01                    1822 	.db	1
      0004A9 11                    1823 	.uleb128	17
      0004AA 01                    1824 	.uleb128	1
      0004AB 12                    1825 	.uleb128	18
      0004AC 01                    1826 	.uleb128	1
      0004AD 00                    1827 	.uleb128	0
      0004AE 00                    1828 	.uleb128	0
      0004AF 05                    1829 	.uleb128	5
      0004B0 0B                    1830 	.uleb128	11
      0004B1 01                    1831 	.db	1
      0004B2 01                    1832 	.uleb128	1
      0004B3 13                    1833 	.uleb128	19
      0004B4 11                    1834 	.uleb128	17
      0004B5 01                    1835 	.uleb128	1
      0004B6 00                    1836 	.uleb128	0
      0004B7 00                    1837 	.uleb128	0
      0004B8 02                    1838 	.uleb128	2
      0004B9 2E                    1839 	.uleb128	46
      0004BA 00                    1840 	.db	0
      0004BB 03                    1841 	.uleb128	3
      0004BC 08                    1842 	.uleb128	8
      0004BD 11                    1843 	.uleb128	17
      0004BE 01                    1844 	.uleb128	1
      0004BF 12                    1845 	.uleb128	18
      0004C0 01                    1846 	.uleb128	1
      0004C1 3F                    1847 	.uleb128	63
      0004C2 0C                    1848 	.uleb128	12
      0004C3 40                    1849 	.uleb128	64
      0004C4 06                    1850 	.uleb128	6
      0004C5 00                    1851 	.uleb128	0
      0004C6 00                    1852 	.uleb128	0
      0004C7 03                    1853 	.uleb128	3
      0004C8 24                    1854 	.uleb128	36
      0004C9 00                    1855 	.db	0
      0004CA 03                    1856 	.uleb128	3
      0004CB 08                    1857 	.uleb128	8
      0004CC 0B                    1858 	.uleb128	11
      0004CD 0B                    1859 	.uleb128	11
      0004CE 3E                    1860 	.uleb128	62
      0004CF 0B                    1861 	.uleb128	11
      0004D0 00                    1862 	.uleb128	0
      0004D1 00                    1863 	.uleb128	0
      0004D2 00                    1864 	.uleb128	0
                                   1865 
                                   1866 	.area .debug_info (NOLOAD)
      00145F 00 00 02 D1           1867 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001463                       1868 Ldebug_info_start:
      001463 00 02                 1869 	.dw	2
      001465 00 00 04 46           1870 	.dw	0,(Ldebug_abbrev)
      001469 04                    1871 	.db	4
      00146A 01                    1872 	.uleb128	1
      00146B 53 6F 75 72 63 65 2F  1873 	.ascii "Source/Driver/Src/soft_i2c.c"
             44 72 69 76 65 72 2F
             53 72 63 2F 73 6F 66
             74 5F 69 32 63 2E 63
      001487 00                    1874 	.db	0
      001488 00 00 10 EF           1875 	.dw	0,(Ldebug_line_start+-4)
      00148C 01                    1876 	.db	1
      00148D 53 44 43 43 20 76 65  1877 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      0014A6 00                    1878 	.db	0
      0014A7 02                    1879 	.uleb128	2
      0014A8 49 32 43 5F 49 6E 69  1880 	.ascii "I2C_Init"
             74
      0014B0 00                    1881 	.db	0
      0014B1 00 00 8A 7D           1882 	.dw	0,(_I2C_Init)
      0014B5 00 00 8A A0           1883 	.dw	0,(XG$I2C_Init$0$0+1)
      0014B9 01                    1884 	.db	1
      0014BA 00 00 0D E4           1885 	.dw	0,(Ldebug_loc_start+548)
      0014BE 02                    1886 	.uleb128	2
      0014BF 49 32 43 5F 53 74 61  1887 	.ascii "I2C_Start"
             72 74
      0014C8 00                    1888 	.db	0
      0014C9 00 00 8A A0           1889 	.dw	0,(_I2C_Start)
      0014CD 00 00 8A B7           1890 	.dw	0,(XG$I2C_Start$0$0+1)
      0014D1 01                    1891 	.db	1
      0014D2 00 00 0D D0           1892 	.dw	0,(Ldebug_loc_start+528)
      0014D6 02                    1893 	.uleb128	2
      0014D7 49 32 43 5F 53 74 6F  1894 	.ascii "I2C_Stop"
             70
      0014DF 00                    1895 	.db	0
      0014E0 00 00 8A B7           1896 	.dw	0,(_I2C_Stop)
      0014E4 00 00 8A D2           1897 	.dw	0,(XG$I2C_Stop$0$0+1)
      0014E8 01                    1898 	.db	1
      0014E9 00 00 0D BC           1899 	.dw	0,(Ldebug_loc_start+508)
      0014ED 03                    1900 	.uleb128	3
      0014EE 75 6E 73 69 67 6E 65  1901 	.ascii "unsigned char"
             64 20 63 68 61 72
      0014FB 00                    1902 	.db	0
      0014FC 01                    1903 	.db	1
      0014FD 08                    1904 	.db	8
      0014FE 04                    1905 	.uleb128	4
      0014FF 00 00 00 E7           1906 	.dw	0,231
      001503 49 32 43 5F 57 61 69  1907 	.ascii "I2C_Wait_Ack"
             74 5F 41 63 6B
      00150F 00                    1908 	.db	0
      001510 00 00 8A D2           1909 	.dw	0,(_I2C_Wait_Ack)
      001514 00 00 8B 04           1910 	.dw	0,(XG$I2C_Wait_Ack$0$0+1)
      001518 01                    1911 	.db	1
      001519 00 00 0D A8           1912 	.dw	0,(Ldebug_loc_start+488)
      00151D 00 00 00 8E           1913 	.dw	0,142
      001521 05                    1914 	.uleb128	5
      001522 00 00 00 D5           1915 	.dw	0,213
      001526 00 00 8A F1           1916 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$46)
      00152A 06                    1917 	.uleb128	6
      00152B 00 00 8A F7           1918 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$49)
      00152F 00 00 8A FE           1919 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$52)
      001533 00                    1920 	.uleb128	0
      001534 07                    1921 	.uleb128	7
      001535 01                    1922 	.db	1
      001536 51                    1923 	.db	81
      001537 75 63 45 72 72 54 69  1924 	.ascii "ucErrTime"
             6D 65
      001540 00                    1925 	.db	0
      001541 00 00 00 8E           1926 	.dw	0,142
      001545 00                    1927 	.uleb128	0
      001546 02                    1928 	.uleb128	2
      001547 49 32 43 5F 41 63 6B  1929 	.ascii "I2C_Ack"
      00154E 00                    1930 	.db	0
      00154F 00 00 8B 04           1931 	.dw	0,(_I2C_Ack)
      001553 00 00 8B 1B           1932 	.dw	0,(XG$I2C_Ack$0$0+1)
      001557 01                    1933 	.db	1
      001558 00 00 0D 94           1934 	.dw	0,(Ldebug_loc_start+468)
      00155C 02                    1935 	.uleb128	2
      00155D 49 32 43 5F 4E 41 63  1936 	.ascii "I2C_NAck"
             6B
      001565 00                    1937 	.db	0
      001566 00 00 8B 1B           1938 	.dw	0,(_I2C_NAck)
      00156A 00 00 8B 32           1939 	.dw	0,(XG$I2C_NAck$0$0+1)
      00156E 01                    1940 	.db	1
      00156F 00 00 0D 80           1941 	.dw	0,(Ldebug_loc_start+448)
      001573 08                    1942 	.uleb128	8
      001574 00 00 01 54           1943 	.dw	0,340
      001578 49 32 43 5F 53 65 6E  1944 	.ascii "I2C_Send_Byte"
             64 5F 42 79 74 65
      001585 00                    1945 	.db	0
      001586 00 00 8B 32           1946 	.dw	0,(_I2C_Send_Byte)
      00158A 00 00 8B 7A           1947 	.dw	0,(XG$I2C_Send_Byte$0$0+1)
      00158E 01                    1948 	.db	1
      00158F 00 00 0D 54           1949 	.dw	0,(Ldebug_loc_start+404)
      001593 09                    1950 	.uleb128	9
      001594 02                    1951 	.db	2
      001595 91                    1952 	.db	145
      001596 02                    1953 	.sleb128	2
      001597 74 78 64              1954 	.ascii "txd"
      00159A 00                    1955 	.db	0
      00159B 00 00 00 8E           1956 	.dw	0,142
      00159F 06                    1957 	.uleb128	6
      0015A0 00 00 8B 39           1958 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$85)
      0015A4 00 00 8B 48           1959 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$87)
      0015A8 07                    1960 	.uleb128	7
      0015A9 02                    1961 	.db	2
      0015AA 91                    1962 	.db	145
      0015AB 7F                    1963 	.sleb128	-1
      0015AC 74                    1964 	.ascii "t"
      0015AD 00                    1965 	.db	0
      0015AE 00 00 00 8E           1966 	.dw	0,142
      0015B2 00                    1967 	.uleb128	0
      0015B3 04                    1968 	.uleb128	4
      0015B4 00 00 01 A8           1969 	.dw	0,424
      0015B8 49 32 43 5F 52 65 61  1970 	.ascii "I2C_Read_Byte"
             64 5F 42 79 74 65
      0015C5 00                    1971 	.db	0
      0015C6 00 00 8B 7A           1972 	.dw	0,(_I2C_Read_Byte)
      0015CA 00 00 8B B3           1973 	.dw	0,(XG$I2C_Read_Byte$0$0+1)
      0015CE 01                    1974 	.db	1
      0015CF 00 00 0D 28           1975 	.dw	0,(Ldebug_loc_start+360)
      0015D3 00 00 00 8E           1976 	.dw	0,142
      0015D7 09                    1977 	.uleb128	9
      0015D8 02                    1978 	.db	2
      0015D9 91                    1979 	.db	145
      0015DA 02                    1980 	.sleb128	2
      0015DB 61 63 6B              1981 	.ascii "ack"
      0015DE 00                    1982 	.db	0
      0015DF 00 00 00 8E           1983 	.dw	0,142
      0015E3 06                    1984 	.uleb128	6
      0015E4 00 00 8B 7F           1985 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$108)
      0015E8 00 00 8B 9B           1986 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$115)
      0015EC 07                    1987 	.uleb128	7
      0015ED 02                    1988 	.db	2
      0015EE 91                    1989 	.db	145
      0015EF 7F                    1990 	.sleb128	-1
      0015F0 69                    1991 	.ascii "i"
      0015F1 00                    1992 	.db	0
      0015F2 00 00 00 8E           1993 	.dw	0,142
      0015F6 07                    1994 	.uleb128	7
      0015F7 02                    1995 	.db	2
      0015F8 91                    1996 	.db	145
      0015F9 7E                    1997 	.sleb128	-2
      0015FA 72 65 63 65 69 76 65  1998 	.ascii "receive"
      001601 00                    1999 	.db	0
      001602 00 00 00 8E           2000 	.dw	0,142
      001606 00                    2001 	.uleb128	0
      001607 04                    2002 	.uleb128	4
      001608 00 00 02 34           2003 	.dw	0,564
      00160C 49 32 43 5F 4D 61 73  2004 	.ascii "I2C_MasterReceiveData"
             74 65 72 52 65 63 65
             69 76 65 44 61 74 61
      001621 00                    2005 	.db	0
      001622 00 00 8B B3           2006 	.dw	0,(_I2C_MasterReceiveData)
      001626 00 00 8C 3B           2007 	.dw	0,(XG$I2C_MasterReceiveData$0$0+1)
      00162A 01                    2008 	.db	1
      00162B 00 00 0C 48           2009 	.dw	0,(Ldebug_loc_start+136)
      00162F 00 00 00 8E           2010 	.dw	0,142
      001633 09                    2011 	.uleb128	9
      001634 02                    2012 	.db	2
      001635 91                    2013 	.db	145
      001636 02                    2014 	.sleb128	2
      001637 64 65 76 41 64 64 72  2015 	.ascii "devAddr"
      00163E 00                    2016 	.db	0
      00163F 00 00 00 8E           2017 	.dw	0,142
      001643 09                    2018 	.uleb128	9
      001644 02                    2019 	.db	2
      001645 91                    2020 	.db	145
      001646 03                    2021 	.sleb128	3
      001647 72 65 67 41 64 64 72  2022 	.ascii "regAddr"
      00164E 00                    2023 	.db	0
      00164F 00 00 00 8E           2024 	.dw	0,142
      001653 0A                    2025 	.uleb128	10
      001654 02                    2026 	.db	2
      001655 00 00 00 8E           2027 	.dw	0,142
      001659 09                    2028 	.uleb128	9
      00165A 02                    2029 	.db	2
      00165B 91                    2030 	.db	145
      00165C 04                    2031 	.sleb128	4
      00165D 62 75 66 41 64 64 72  2032 	.ascii "bufAddr"
      001664 00                    2033 	.db	0
      001665 00 00 01 F4           2034 	.dw	0,500
      001669 09                    2035 	.uleb128	9
      00166A 02                    2036 	.db	2
      00166B 91                    2037 	.db	145
      00166C 06                    2038 	.sleb128	6
      00166D 64 61 74 61 4C 65 6E  2039 	.ascii "dataLen"
      001674 00                    2040 	.db	0
      001675 00 00 00 8E           2041 	.dw	0,142
      001679 0B                    2042 	.uleb128	11
      00167A 00 00 8B F5           2043 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$146)
      00167E 06                    2044 	.uleb128	6
      00167F 00 00 8B FE           2045 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$147)
      001683 00 00 8C 0B           2046 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$149)
      001687 07                    2047 	.uleb128	7
      001688 02                    2048 	.db	2
      001689 91                    2049 	.db	145
      00168A 7F                    2050 	.sleb128	-1
      00168B 69                    2051 	.ascii "i"
      00168C 00                    2052 	.db	0
      00168D 00 00 00 8E           2053 	.dw	0,142
      001691 00                    2054 	.uleb128	0
      001692 00                    2055 	.uleb128	0
      001693 04                    2056 	.uleb128	4
      001694 00 00 02 BB           2057 	.dw	0,699
      001698 49 32 43 5F 4D 61 73  2058 	.ascii "I2C_MasterSendData"
             74 65 72 53 65 6E 64
             44 61 74 61
      0016AA 00                    2059 	.db	0
      0016AB 00 00 8C 3B           2060 	.dw	0,(_I2C_MasterSendData)
      0016AF 00 00 8C 8B           2061 	.dw	0,(XG$I2C_MasterSendData$0$0+1)
      0016B3 01                    2062 	.db	1
      0016B4 00 00 0B D4           2063 	.dw	0,(Ldebug_loc_start+20)
      0016B8 00 00 00 8E           2064 	.dw	0,142
      0016BC 09                    2065 	.uleb128	9
      0016BD 02                    2066 	.db	2
      0016BE 91                    2067 	.db	145
      0016BF 02                    2068 	.sleb128	2
      0016C0 64 65 76 41 64 64 72  2069 	.ascii "devAddr"
      0016C7 00                    2070 	.db	0
      0016C8 00 00 00 8E           2071 	.dw	0,142
      0016CC 09                    2072 	.uleb128	9
      0016CD 02                    2073 	.db	2
      0016CE 91                    2074 	.db	145
      0016CF 03                    2075 	.sleb128	3
      0016D0 72 65 67 41 64 64 72  2076 	.ascii "regAddr"
      0016D7 00                    2077 	.db	0
      0016D8 00 00 00 8E           2078 	.dw	0,142
      0016DC 09                    2079 	.uleb128	9
      0016DD 02                    2080 	.db	2
      0016DE 91                    2081 	.db	145
      0016DF 04                    2082 	.sleb128	4
      0016E0 62 75 66 41 64 64 72  2083 	.ascii "bufAddr"
      0016E7 00                    2084 	.db	0
      0016E8 00 00 01 F4           2085 	.dw	0,500
      0016EC 09                    2086 	.uleb128	9
      0016ED 02                    2087 	.db	2
      0016EE 91                    2088 	.db	145
      0016EF 06                    2089 	.sleb128	6
      0016F0 64 61 74 61 4C 65 6E  2090 	.ascii "dataLen"
      0016F7 00                    2091 	.db	0
      0016F8 00 00 00 8E           2092 	.dw	0,142
      0016FC 0C                    2093 	.uleb128	12
      0016FD 00 00 8C 63           2094 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$185)
      001701 00 00 8C 83           2095 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$194)
      001705 06                    2096 	.uleb128	6
      001706 00 00 8C 69           2097 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$186)
      00170A 00 00 8C 7F           2098 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$192)
      00170E 07                    2099 	.uleb128	7
      00170F 02                    2100 	.db	2
      001710 91                    2101 	.db	145
      001711 7F                    2102 	.sleb128	-1
      001712 69                    2103 	.ascii "i"
      001713 00                    2104 	.db	0
      001714 00 00 00 8E           2105 	.dw	0,142
      001718 00                    2106 	.uleb128	0
      001719 00                    2107 	.uleb128	0
      00171A 02                    2108 	.uleb128	2
      00171B 64 65 6C 61 79 5F 75  2109 	.ascii "delay_us"
             73
      001723 00                    2110 	.db	0
      001724 00 00 8C 8B           2111 	.dw	0,(_delay_us)
      001728 00 00 8C 90           2112 	.dw	0,(XG$delay_us$0$0+1)
      00172C 01                    2113 	.db	1
      00172D 00 00 0B C0           2114 	.dw	0,(Ldebug_loc_start)
      001731 00                    2115 	.uleb128	0
      001732 00                    2116 	.uleb128	0
      001733 00                    2117 	.uleb128	0
      001734                       2118 Ldebug_info_end:
                                   2119 
                                   2120 	.area .debug_pubnames (NOLOAD)
      0004B0 00 00 00 C2           2121 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0004B4                       2122 Ldebug_pubnames_start:
      0004B4 00 02                 2123 	.dw	2
      0004B6 00 00 14 5F           2124 	.dw	0,(Ldebug_info_start-4)
      0004BA 00 00 02 D5           2125 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004BE 00 00 00 48           2126 	.dw	0,72
      0004C2 49 32 43 5F 49 6E 69  2127 	.ascii "I2C_Init"
             74
      0004CA 00                    2128 	.db	0
      0004CB 00 00 00 5F           2129 	.dw	0,95
      0004CF 49 32 43 5F 53 74 61  2130 	.ascii "I2C_Start"
             72 74
      0004D8 00                    2131 	.db	0
      0004D9 00 00 00 77           2132 	.dw	0,119
      0004DD 49 32 43 5F 53 74 6F  2133 	.ascii "I2C_Stop"
             70
      0004E5 00                    2134 	.db	0
      0004E6 00 00 00 9F           2135 	.dw	0,159
      0004EA 49 32 43 5F 57 61 69  2136 	.ascii "I2C_Wait_Ack"
             74 5F 41 63 6B
      0004F6 00                    2137 	.db	0
      0004F7 00 00 00 E7           2138 	.dw	0,231
      0004FB 49 32 43 5F 41 63 6B  2139 	.ascii "I2C_Ack"
      000502 00                    2140 	.db	0
      000503 00 00 00 FD           2141 	.dw	0,253
      000507 49 32 43 5F 4E 41 63  2142 	.ascii "I2C_NAck"
             6B
      00050F 00                    2143 	.db	0
      000510 00 00 01 14           2144 	.dw	0,276
      000514 49 32 43 5F 53 65 6E  2145 	.ascii "I2C_Send_Byte"
             64 5F 42 79 74 65
      000521 00                    2146 	.db	0
      000522 00 00 01 54           2147 	.dw	0,340
      000526 49 32 43 5F 52 65 61  2148 	.ascii "I2C_Read_Byte"
             64 5F 42 79 74 65
      000533 00                    2149 	.db	0
      000534 00 00 01 A8           2150 	.dw	0,424
      000538 49 32 43 5F 4D 61 73  2151 	.ascii "I2C_MasterReceiveData"
             74 65 72 52 65 63 65
             69 76 65 44 61 74 61
      00054D 00                    2152 	.db	0
      00054E 00 00 02 34           2153 	.dw	0,564
      000552 49 32 43 5F 4D 61 73  2154 	.ascii "I2C_MasterSendData"
             74 65 72 53 65 6E 64
             44 61 74 61
      000564 00                    2155 	.db	0
      000565 00 00 02 BB           2156 	.dw	0,699
      000569 64 65 6C 61 79 5F 75  2157 	.ascii "delay_us"
             73
      000571 00                    2158 	.db	0
      000572 00 00 00 00           2159 	.dw	0,0
      000576                       2160 Ldebug_pubnames_end:
                                   2161 
                                   2162 	.area .debug_frame (NOLOAD)
      000BC8 00 00                 2163 	.dw	0
      000BCA 00 0E                 2164 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000BCC                       2165 Ldebug_CIE0_start:
      000BCC FF FF                 2166 	.dw	0xffff
      000BCE FF FF                 2167 	.dw	0xffff
      000BD0 01                    2168 	.db	1
      000BD1 00                    2169 	.db	0
      000BD2 01                    2170 	.uleb128	1
      000BD3 7F                    2171 	.sleb128	-1
      000BD4 09                    2172 	.db	9
      000BD5 0C                    2173 	.db	12
      000BD6 08                    2174 	.uleb128	8
      000BD7 02                    2175 	.uleb128	2
      000BD8 89                    2176 	.db	137
      000BD9 01                    2177 	.uleb128	1
      000BDA                       2178 Ldebug_CIE0_end:
      000BDA 00 00 00 13           2179 	.dw	0,19
      000BDE 00 00 0B C8           2180 	.dw	0,(Ldebug_CIE0_start-4)
      000BE2 00 00 8C 8B           2181 	.dw	0,(Ssoft_i2c$delay_us$202)	;initial loc
      000BE6 00 00 00 05           2182 	.dw	0,Ssoft_i2c$delay_us$206-Ssoft_i2c$delay_us$202
      000BEA 01                    2183 	.db	1
      000BEB 00 00 8C 8B           2184 	.dw	0,(Ssoft_i2c$delay_us$202)
      000BEF 0E                    2185 	.db	14
      000BF0 02                    2186 	.uleb128	2
                                   2187 
                                   2188 	.area .debug_frame (NOLOAD)
      000BF1 00 00                 2189 	.dw	0
      000BF3 00 0E                 2190 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000BF5                       2191 Ldebug_CIE1_start:
      000BF5 FF FF                 2192 	.dw	0xffff
      000BF7 FF FF                 2193 	.dw	0xffff
      000BF9 01                    2194 	.db	1
      000BFA 00                    2195 	.db	0
      000BFB 01                    2196 	.uleb128	1
      000BFC 7F                    2197 	.sleb128	-1
      000BFD 09                    2198 	.db	9
      000BFE 0C                    2199 	.db	12
      000BFF 08                    2200 	.uleb128	8
      000C00 02                    2201 	.uleb128	2
      000C01 89                    2202 	.db	137
      000C02 01                    2203 	.uleb128	1
      000C03                       2204 Ldebug_CIE1_end:
      000C03 00 00 00 4B           2205 	.dw	0,75
      000C07 00 00 0B F1           2206 	.dw	0,(Ldebug_CIE1_start-4)
      000C0B 00 00 8C 3B           2207 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)	;initial loc
      000C0F 00 00 00 50           2208 	.dw	0,Ssoft_i2c$I2C_MasterSendData$200-Ssoft_i2c$I2C_MasterSendData$171
      000C13 01                    2209 	.db	1
      000C14 00 00 8C 3B           2210 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$171)
      000C18 0E                    2211 	.db	14
      000C19 02                    2212 	.uleb128	2
      000C1A 01                    2213 	.db	1
      000C1B 00 00 8C 3C           2214 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$172)
      000C1F 0E                    2215 	.db	14
      000C20 03                    2216 	.uleb128	3
      000C21 01                    2217 	.db	1
      000C22 00 00 8C 43           2218 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$175)
      000C26 0E                    2219 	.db	14
      000C27 04                    2220 	.uleb128	4
      000C28 01                    2221 	.db	1
      000C29 00 00 8C 47           2222 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$176)
      000C2D 0E                    2223 	.db	14
      000C2E 03                    2224 	.uleb128	3
      000C2F 01                    2225 	.db	1
      000C30 00 00 8C 54           2226 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$180)
      000C34 0E                    2227 	.db	14
      000C35 04                    2228 	.uleb128	4
      000C36 01                    2229 	.db	1
      000C37 00 00 8C 58           2230 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$181)
      000C3B 0E                    2231 	.db	14
      000C3C 03                    2232 	.uleb128	3
      000C3D 01                    2233 	.db	1
      000C3E 00 00 8C 72           2234 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$188)
      000C42 0E                    2235 	.db	14
      000C43 04                    2236 	.uleb128	4
      000C44 01                    2237 	.db	1
      000C45 00 00 8C 76           2238 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$189)
      000C49 0E                    2239 	.db	14
      000C4A 03                    2240 	.uleb128	3
      000C4B 01                    2241 	.db	1
      000C4C 00 00 8C 8A           2242 	.dw	0,(Ssoft_i2c$I2C_MasterSendData$198)
      000C50 0E                    2243 	.db	14
      000C51 02                    2244 	.uleb128	2
                                   2245 
                                   2246 	.area .debug_frame (NOLOAD)
      000C52 00 00                 2247 	.dw	0
      000C54 00 0E                 2248 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000C56                       2249 Ldebug_CIE2_start:
      000C56 FF FF                 2250 	.dw	0xffff
      000C58 FF FF                 2251 	.dw	0xffff
      000C5A 01                    2252 	.db	1
      000C5B 00                    2253 	.db	0
      000C5C 01                    2254 	.uleb128	1
      000C5D 7F                    2255 	.sleb128	-1
      000C5E 09                    2256 	.db	9
      000C5F 0C                    2257 	.db	12
      000C60 08                    2258 	.uleb128	8
      000C61 02                    2259 	.uleb128	2
      000C62 89                    2260 	.db	137
      000C63 01                    2261 	.uleb128	1
      000C64                       2262 Ldebug_CIE2_end:
      000C64 00 00 00 8A           2263 	.dw	0,138
      000C68 00 00 0C 52           2264 	.dw	0,(Ldebug_CIE2_start-4)
      000C6C 00 00 8B B3           2265 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)	;initial loc
      000C70 00 00 00 88           2266 	.dw	0,Ssoft_i2c$I2C_MasterReceiveData$169-Ssoft_i2c$I2C_MasterReceiveData$126
      000C74 01                    2267 	.db	1
      000C75 00 00 8B B3           2268 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$126)
      000C79 0E                    2269 	.db	14
      000C7A 02                    2270 	.uleb128	2
      000C7B 01                    2271 	.db	1
      000C7C 00 00 8B B5           2272 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$127)
      000C80 0E                    2273 	.db	14
      000C81 05                    2274 	.uleb128	5
      000C82 01                    2275 	.db	1
      000C83 00 00 8B BE           2276 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$130)
      000C87 0E                    2277 	.db	14
      000C88 06                    2278 	.uleb128	6
      000C89 01                    2279 	.db	1
      000C8A 00 00 8B C2           2280 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$131)
      000C8E 0E                    2281 	.db	14
      000C8F 05                    2282 	.uleb128	5
      000C90 01                    2283 	.db	1
      000C91 00 00 8B CF           2284 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$135)
      000C95 0E                    2285 	.db	14
      000C96 06                    2286 	.uleb128	6
      000C97 01                    2287 	.db	1
      000C98 00 00 8B D3           2288 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$136)
      000C9C 0E                    2289 	.db	14
      000C9D 05                    2290 	.uleb128	5
      000C9E 01                    2291 	.db	1
      000C9F 00 00 8B E5           2292 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$141)
      000CA3 0E                    2293 	.db	14
      000CA4 06                    2294 	.uleb128	6
      000CA5 01                    2295 	.db	1
      000CA6 00 00 8B E9           2296 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$142)
      000CAA 0E                    2297 	.db	14
      000CAB 05                    2298 	.uleb128	5
      000CAC 01                    2299 	.db	1
      000CAD 00 00 8C 18           2300 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$152)
      000CB1 0E                    2301 	.db	14
      000CB2 05                    2302 	.uleb128	5
      000CB3 01                    2303 	.db	1
      000CB4 00 00 8C 19           2304 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$154)
      000CB8 0E                    2305 	.db	14
      000CB9 07                    2306 	.uleb128	7
      000CBA 01                    2307 	.db	1
      000CBB 00 00 8C 1B           2308 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$155)
      000CBF 0E                    2309 	.db	14
      000CC0 08                    2310 	.uleb128	8
      000CC1 01                    2311 	.db	1
      000CC2 00 00 8C 20           2312 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$156)
      000CC6 0E                    2313 	.db	14
      000CC7 07                    2314 	.uleb128	7
      000CC8 01                    2315 	.db	1
      000CC9 00 00 8C 21           2316 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$157)
      000CCD 0E                    2317 	.db	14
      000CCE 05                    2318 	.uleb128	5
      000CCF 01                    2319 	.db	1
      000CD0 00 00 8C 25           2320 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$159)
      000CD4 0E                    2321 	.db	14
      000CD5 07                    2322 	.uleb128	7
      000CD6 01                    2323 	.db	1
      000CD7 00 00 8C 27           2324 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$160)
      000CDB 0E                    2325 	.db	14
      000CDC 08                    2326 	.uleb128	8
      000CDD 01                    2327 	.db	1
      000CDE 00 00 8C 2C           2328 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$161)
      000CE2 0E                    2329 	.db	14
      000CE3 07                    2330 	.uleb128	7
      000CE4 01                    2331 	.db	1
      000CE5 00 00 8C 2D           2332 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$162)
      000CE9 0E                    2333 	.db	14
      000CEA 05                    2334 	.uleb128	5
      000CEB 01                    2335 	.db	1
      000CEC 00 00 8C 3A           2336 	.dw	0,(Ssoft_i2c$I2C_MasterReceiveData$167)
      000CF0 0E                    2337 	.db	14
      000CF1 02                    2338 	.uleb128	2
                                   2339 
                                   2340 	.area .debug_frame (NOLOAD)
      000CF2 00 00                 2341 	.dw	0
      000CF4 00 0E                 2342 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000CF6                       2343 Ldebug_CIE3_start:
      000CF6 FF FF                 2344 	.dw	0xffff
      000CF8 FF FF                 2345 	.dw	0xffff
      000CFA 01                    2346 	.db	1
      000CFB 00                    2347 	.db	0
      000CFC 01                    2348 	.uleb128	1
      000CFD 7F                    2349 	.sleb128	-1
      000CFE 09                    2350 	.db	9
      000CFF 0C                    2351 	.db	12
      000D00 08                    2352 	.uleb128	8
      000D01 02                    2353 	.uleb128	2
      000D02 89                    2354 	.db	137
      000D03 01                    2355 	.uleb128	1
      000D04                       2356 Ldebug_CIE3_end:
      000D04 00 00 00 21           2357 	.dw	0,33
      000D08 00 00 0C F2           2358 	.dw	0,(Ldebug_CIE3_start-4)
      000D0C 00 00 8B 7A           2359 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)	;initial loc
      000D10 00 00 00 39           2360 	.dw	0,Ssoft_i2c$I2C_Read_Byte$124-Ssoft_i2c$I2C_Read_Byte$104
      000D14 01                    2361 	.db	1
      000D15 00 00 8B 7A           2362 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$104)
      000D19 0E                    2363 	.db	14
      000D1A 02                    2364 	.uleb128	2
      000D1B 01                    2365 	.db	1
      000D1C 00 00 8B 7B           2366 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$105)
      000D20 0E                    2367 	.db	14
      000D21 04                    2368 	.uleb128	4
      000D22 01                    2369 	.db	1
      000D23 00 00 8B B2           2370 	.dw	0,(Ssoft_i2c$I2C_Read_Byte$122)
      000D27 0E                    2371 	.db	14
      000D28 02                    2372 	.uleb128	2
                                   2373 
                                   2374 	.area .debug_frame (NOLOAD)
      000D29 00 00                 2375 	.dw	0
      000D2B 00 0E                 2376 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000D2D                       2377 Ldebug_CIE4_start:
      000D2D FF FF                 2378 	.dw	0xffff
      000D2F FF FF                 2379 	.dw	0xffff
      000D31 01                    2380 	.db	1
      000D32 00                    2381 	.db	0
      000D33 01                    2382 	.uleb128	1
      000D34 7F                    2383 	.sleb128	-1
      000D35 09                    2384 	.db	9
      000D36 0C                    2385 	.db	12
      000D37 08                    2386 	.uleb128	8
      000D38 02                    2387 	.uleb128	2
      000D39 89                    2388 	.db	137
      000D3A 01                    2389 	.uleb128	1
      000D3B                       2390 Ldebug_CIE4_end:
      000D3B 00 00 00 21           2391 	.dw	0,33
      000D3F 00 00 0D 29           2392 	.dw	0,(Ldebug_CIE4_start-4)
      000D43 00 00 8B 32           2393 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)	;initial loc
      000D47 00 00 00 48           2394 	.dw	0,Ssoft_i2c$I2C_Send_Byte$102-Ssoft_i2c$I2C_Send_Byte$81
      000D4B 01                    2395 	.db	1
      000D4C 00 00 8B 32           2396 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$81)
      000D50 0E                    2397 	.db	14
      000D51 02                    2398 	.uleb128	2
      000D52 01                    2399 	.db	1
      000D53 00 00 8B 33           2400 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$82)
      000D57 0E                    2401 	.db	14
      000D58 03                    2402 	.uleb128	3
      000D59 01                    2403 	.db	1
      000D5A 00 00 8B 79           2404 	.dw	0,(Ssoft_i2c$I2C_Send_Byte$100)
      000D5E 0E                    2405 	.db	14
      000D5F 02                    2406 	.uleb128	2
                                   2407 
                                   2408 	.area .debug_frame (NOLOAD)
      000D60 00 00                 2409 	.dw	0
      000D62 00 0E                 2410 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000D64                       2411 Ldebug_CIE5_start:
      000D64 FF FF                 2412 	.dw	0xffff
      000D66 FF FF                 2413 	.dw	0xffff
      000D68 01                    2414 	.db	1
      000D69 00                    2415 	.db	0
      000D6A 01                    2416 	.uleb128	1
      000D6B 7F                    2417 	.sleb128	-1
      000D6C 09                    2418 	.db	9
      000D6D 0C                    2419 	.db	12
      000D6E 08                    2420 	.uleb128	8
      000D6F 02                    2421 	.uleb128	2
      000D70 89                    2422 	.db	137
      000D71 01                    2423 	.uleb128	1
      000D72                       2424 Ldebug_CIE5_end:
      000D72 00 00 00 13           2425 	.dw	0,19
      000D76 00 00 0D 60           2426 	.dw	0,(Ldebug_CIE5_start-4)
      000D7A 00 00 8B 1B           2427 	.dw	0,(Ssoft_i2c$I2C_NAck$70)	;initial loc
      000D7E 00 00 00 17           2428 	.dw	0,Ssoft_i2c$I2C_NAck$79-Ssoft_i2c$I2C_NAck$70
      000D82 01                    2429 	.db	1
      000D83 00 00 8B 1B           2430 	.dw	0,(Ssoft_i2c$I2C_NAck$70)
      000D87 0E                    2431 	.db	14
      000D88 02                    2432 	.uleb128	2
                                   2433 
                                   2434 	.area .debug_frame (NOLOAD)
      000D89 00 00                 2435 	.dw	0
      000D8B 00 0E                 2436 	.dw	Ldebug_CIE6_end-Ldebug_CIE6_start
      000D8D                       2437 Ldebug_CIE6_start:
      000D8D FF FF                 2438 	.dw	0xffff
      000D8F FF FF                 2439 	.dw	0xffff
      000D91 01                    2440 	.db	1
      000D92 00                    2441 	.db	0
      000D93 01                    2442 	.uleb128	1
      000D94 7F                    2443 	.sleb128	-1
      000D95 09                    2444 	.db	9
      000D96 0C                    2445 	.db	12
      000D97 08                    2446 	.uleb128	8
      000D98 02                    2447 	.uleb128	2
      000D99 89                    2448 	.db	137
      000D9A 01                    2449 	.uleb128	1
      000D9B                       2450 Ldebug_CIE6_end:
      000D9B 00 00 00 13           2451 	.dw	0,19
      000D9F 00 00 0D 89           2452 	.dw	0,(Ldebug_CIE6_start-4)
      000DA3 00 00 8B 04           2453 	.dw	0,(Ssoft_i2c$I2C_Ack$59)	;initial loc
      000DA7 00 00 00 17           2454 	.dw	0,Ssoft_i2c$I2C_Ack$68-Ssoft_i2c$I2C_Ack$59
      000DAB 01                    2455 	.db	1
      000DAC 00 00 8B 04           2456 	.dw	0,(Ssoft_i2c$I2C_Ack$59)
      000DB0 0E                    2457 	.db	14
      000DB1 02                    2458 	.uleb128	2
                                   2459 
                                   2460 	.area .debug_frame (NOLOAD)
      000DB2 00 00                 2461 	.dw	0
      000DB4 00 0E                 2462 	.dw	Ldebug_CIE7_end-Ldebug_CIE7_start
      000DB6                       2463 Ldebug_CIE7_start:
      000DB6 FF FF                 2464 	.dw	0xffff
      000DB8 FF FF                 2465 	.dw	0xffff
      000DBA 01                    2466 	.db	1
      000DBB 00                    2467 	.db	0
      000DBC 01                    2468 	.uleb128	1
      000DBD 7F                    2469 	.sleb128	-1
      000DBE 09                    2470 	.db	9
      000DBF 0C                    2471 	.db	12
      000DC0 08                    2472 	.uleb128	8
      000DC1 02                    2473 	.uleb128	2
      000DC2 89                    2474 	.db	137
      000DC3 01                    2475 	.uleb128	1
      000DC4                       2476 Ldebug_CIE7_end:
      000DC4 00 00 00 13           2477 	.dw	0,19
      000DC8 00 00 0D B2           2478 	.dw	0,(Ldebug_CIE7_start-4)
      000DCC 00 00 8A D2           2479 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)	;initial loc
      000DD0 00 00 00 32           2480 	.dw	0,Ssoft_i2c$I2C_Wait_Ack$57-Ssoft_i2c$I2C_Wait_Ack$42
      000DD4 01                    2481 	.db	1
      000DD5 00 00 8A D2           2482 	.dw	0,(Ssoft_i2c$I2C_Wait_Ack$42)
      000DD9 0E                    2483 	.db	14
      000DDA 02                    2484 	.uleb128	2
                                   2485 
                                   2486 	.area .debug_frame (NOLOAD)
      000DDB 00 00                 2487 	.dw	0
      000DDD 00 0E                 2488 	.dw	Ldebug_CIE8_end-Ldebug_CIE8_start
      000DDF                       2489 Ldebug_CIE8_start:
      000DDF FF FF                 2490 	.dw	0xffff
      000DE1 FF FF                 2491 	.dw	0xffff
      000DE3 01                    2492 	.db	1
      000DE4 00                    2493 	.db	0
      000DE5 01                    2494 	.uleb128	1
      000DE6 7F                    2495 	.sleb128	-1
      000DE7 09                    2496 	.db	9
      000DE8 0C                    2497 	.db	12
      000DE9 08                    2498 	.uleb128	8
      000DEA 02                    2499 	.uleb128	2
      000DEB 89                    2500 	.db	137
      000DEC 01                    2501 	.uleb128	1
      000DED                       2502 Ldebug_CIE8_end:
      000DED 00 00 00 13           2503 	.dw	0,19
      000DF1 00 00 0D DB           2504 	.dw	0,(Ldebug_CIE8_start-4)
      000DF5 00 00 8A B7           2505 	.dw	0,(Ssoft_i2c$I2C_Stop$31)	;initial loc
      000DF9 00 00 00 1B           2506 	.dw	0,Ssoft_i2c$I2C_Stop$40-Ssoft_i2c$I2C_Stop$31
      000DFD 01                    2507 	.db	1
      000DFE 00 00 8A B7           2508 	.dw	0,(Ssoft_i2c$I2C_Stop$31)
      000E02 0E                    2509 	.db	14
      000E03 02                    2510 	.uleb128	2
                                   2511 
                                   2512 	.area .debug_frame (NOLOAD)
      000E04 00 00                 2513 	.dw	0
      000E06 00 0E                 2514 	.dw	Ldebug_CIE9_end-Ldebug_CIE9_start
      000E08                       2515 Ldebug_CIE9_start:
      000E08 FF FF                 2516 	.dw	0xffff
      000E0A FF FF                 2517 	.dw	0xffff
      000E0C 01                    2518 	.db	1
      000E0D 00                    2519 	.db	0
      000E0E 01                    2520 	.uleb128	1
      000E0F 7F                    2521 	.sleb128	-1
      000E10 09                    2522 	.db	9
      000E11 0C                    2523 	.db	12
      000E12 08                    2524 	.uleb128	8
      000E13 02                    2525 	.uleb128	2
      000E14 89                    2526 	.db	137
      000E15 01                    2527 	.uleb128	1
      000E16                       2528 Ldebug_CIE9_end:
      000E16 00 00 00 13           2529 	.dw	0,19
      000E1A 00 00 0E 04           2530 	.dw	0,(Ldebug_CIE9_start-4)
      000E1E 00 00 8A A0           2531 	.dw	0,(Ssoft_i2c$I2C_Start$20)	;initial loc
      000E22 00 00 00 17           2532 	.dw	0,Ssoft_i2c$I2C_Start$29-Ssoft_i2c$I2C_Start$20
      000E26 01                    2533 	.db	1
      000E27 00 00 8A A0           2534 	.dw	0,(Ssoft_i2c$I2C_Start$20)
      000E2B 0E                    2535 	.db	14
      000E2C 02                    2536 	.uleb128	2
                                   2537 
                                   2538 	.area .debug_frame (NOLOAD)
      000E2D 00 00                 2539 	.dw	0
      000E2F 00 0E                 2540 	.dw	Ldebug_CIE10_end-Ldebug_CIE10_start
      000E31                       2541 Ldebug_CIE10_start:
      000E31 FF FF                 2542 	.dw	0xffff
      000E33 FF FF                 2543 	.dw	0xffff
      000E35 01                    2544 	.db	1
      000E36 00                    2545 	.db	0
      000E37 01                    2546 	.uleb128	1
      000E38 7F                    2547 	.sleb128	-1
      000E39 09                    2548 	.db	9
      000E3A 0C                    2549 	.db	12
      000E3B 08                    2550 	.uleb128	8
      000E3C 02                    2551 	.uleb128	2
      000E3D 89                    2552 	.db	137
      000E3E 01                    2553 	.uleb128	1
      000E3F                       2554 Ldebug_CIE10_end:
      000E3F 00 00 00 59           2555 	.dw	0,89
      000E43 00 00 0E 2D           2556 	.dw	0,(Ldebug_CIE10_start-4)
      000E47 00 00 8A 7D           2557 	.dw	0,(Ssoft_i2c$I2C_Init$1)	;initial loc
      000E4B 00 00 00 23           2558 	.dw	0,Ssoft_i2c$I2C_Init$18-Ssoft_i2c$I2C_Init$1
      000E4F 01                    2559 	.db	1
      000E50 00 00 8A 7D           2560 	.dw	0,(Ssoft_i2c$I2C_Init$1)
      000E54 0E                    2561 	.db	14
      000E55 02                    2562 	.uleb128	2
      000E56 01                    2563 	.db	1
      000E57 00 00 8A 7F           2564 	.dw	0,(Ssoft_i2c$I2C_Init$3)
      000E5B 0E                    2565 	.db	14
      000E5C 03                    2566 	.uleb128	3
      000E5D 01                    2567 	.db	1
      000E5E 00 00 8A 81           2568 	.dw	0,(Ssoft_i2c$I2C_Init$4)
      000E62 0E                    2569 	.db	14
      000E63 04                    2570 	.uleb128	4
      000E64 01                    2571 	.db	1
      000E65 00 00 8A 83           2572 	.dw	0,(Ssoft_i2c$I2C_Init$5)
      000E69 0E                    2573 	.db	14
      000E6A 05                    2574 	.uleb128	5
      000E6B 01                    2575 	.db	1
      000E6C 00 00 8A 85           2576 	.dw	0,(Ssoft_i2c$I2C_Init$6)
      000E70 0E                    2577 	.db	14
      000E71 06                    2578 	.uleb128	6
      000E72 01                    2579 	.db	1
      000E73 00 00 8A 8A           2580 	.dw	0,(Ssoft_i2c$I2C_Init$7)
      000E77 0E                    2581 	.db	14
      000E78 02                    2582 	.uleb128	2
      000E79 01                    2583 	.db	1
      000E7A 00 00 8A 8C           2584 	.dw	0,(Ssoft_i2c$I2C_Init$9)
      000E7E 0E                    2585 	.db	14
      000E7F 03                    2586 	.uleb128	3
      000E80 01                    2587 	.db	1
      000E81 00 00 8A 8E           2588 	.dw	0,(Ssoft_i2c$I2C_Init$10)
      000E85 0E                    2589 	.db	14
      000E86 04                    2590 	.uleb128	4
      000E87 01                    2591 	.db	1
      000E88 00 00 8A 90           2592 	.dw	0,(Ssoft_i2c$I2C_Init$11)
      000E8C 0E                    2593 	.db	14
      000E8D 05                    2594 	.uleb128	5
      000E8E 01                    2595 	.db	1
      000E8F 00 00 8A 92           2596 	.dw	0,(Ssoft_i2c$I2C_Init$12)
      000E93 0E                    2597 	.db	14
      000E94 06                    2598 	.uleb128	6
      000E95 01                    2599 	.db	1
      000E96 00 00 8A 97           2600 	.dw	0,(Ssoft_i2c$I2C_Init$13)
      000E9A 0E                    2601 	.db	14
      000E9B 02                    2602 	.uleb128	2
