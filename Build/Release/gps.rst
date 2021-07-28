                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module gps
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART1_GetITStatus
                                     12 	.globl _UART1_GetFlagStatus
                                     13 	.globl _UART1_SendData8
                                     14 	.globl _UART1_ReceiveData8
                                     15 	.globl _UART1_ITConfig
                                     16 	.globl _UART1_Cmd
                                     17 	.globl _UART1_Init
                                     18 	.globl _UART1_DeInit
                                     19 	.globl _GPIO_Init
                                     20 	.globl _gps_first_send
                                     21 	.globl _GPS_RxBuf
                                     22 	.globl _GPS_TimeDataSturcture
                                     23 	.globl _GPS_Init
                                     24 	.globl _GPS_GetTime
                                     25 	.globl _UART1_RX_IRQHandler
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area DATA
      00000E                         30 _GPS_TimeDataSturcture::
      00000E                         31 	.ds 24
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
      000035                         36 _GPS_RxBuf::
      000035                         37 	.ds 34
      000057                         38 _gps_first_send::
      000057                         39 	.ds 1
      000058                         40 _num:
      000058                         41 	.ds 1
                                     42 ;--------------------------------------------------------
                                     43 ; absolute external ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area DABS (ABS)
                                     46 
                                     47 ; default segment ordering for linker
                                     48 	.area HOME
                                     49 	.area GSINIT
                                     50 	.area GSFINAL
                                     51 	.area CONST
                                     52 	.area INITIALIZER
                                     53 	.area CODE
                                     54 
                                     55 ;--------------------------------------------------------
                                     56 ; global & static initialisations
                                     57 ;--------------------------------------------------------
                                     58 	.area HOME
                                     59 	.area GSINIT
                                     60 	.area GSFINAL
                                     61 	.area GSINIT
                                     62 ;--------------------------------------------------------
                                     63 ; Home
                                     64 ;--------------------------------------------------------
                                     65 	.area HOME
                                     66 	.area HOME
                                     67 ;--------------------------------------------------------
                                     68 ; code
                                     69 ;--------------------------------------------------------
                                     70 	.area CODE
                                     71 ;	Source/Device/Src/gps.c: 33: void GPS_Init(void)
                                     72 ;	-----------------------------------------
                                     73 ;	 function GPS_Init
                                     74 ;	-----------------------------------------
      009191                         75 _GPS_Init:
      009191 52 1E            [ 2]   76 	sub	sp, #30
                                     77 ;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
      009193 4B F0            [ 1]   78 	push	#0xf0
      009195 4B 20            [ 1]   79 	push	#0x20
      009197 4B 0F            [ 1]   80 	push	#0x0f
      009199 4B 50            [ 1]   81 	push	#0x50
      00919B CD 82 18         [ 4]   82 	call	_GPIO_Init
      00919E 5B 04            [ 2]   83 	addw	sp, #4
                                     84 ;	Source/Device/Src/gps.c: 36: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
      0091A0 4B 00            [ 1]   85 	push	#0x00
      0091A2 4B 40            [ 1]   86 	push	#0x40
      0091A4 4B 0F            [ 1]   87 	push	#0x0f
      0091A6 4B 50            [ 1]   88 	push	#0x50
      0091A8 CD 82 18         [ 4]   89 	call	_GPIO_Init
      0091AB 5B 04            [ 2]   90 	addw	sp, #4
                                     91 ;	Source/Device/Src/gps.c: 37: UART1_DeInit();
      0091AD CD 84 37         [ 4]   92 	call	_UART1_DeInit
                                     93 ;	Source/Device/Src/gps.c: 38: UART1_Init((uint32_t)9600,
      0091B0 4B 0C            [ 1]   94 	push	#0x0c
      0091B2 4B 80            [ 1]   95 	push	#0x80
      0091B4 4B 00            [ 1]   96 	push	#0x00
      0091B6 4B 00            [ 1]   97 	push	#0x00
      0091B8 4B 00            [ 1]   98 	push	#0x00
      0091BA 4B 80            [ 1]   99 	push	#0x80
      0091BC 4B 25            [ 1]  100 	push	#0x25
      0091BE 5F               [ 1]  101 	clrw	x
      0091BF 89               [ 2]  102 	pushw	x
      0091C0 CD 84 62         [ 4]  103 	call	_UART1_Init
      0091C3 5B 09            [ 2]  104 	addw	sp, #9
                                    105 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      0091C5 4B 01            [ 1]  106 	push	#0x01
      0091C7 4B 05            [ 1]  107 	push	#0x05
      0091C9 4B 02            [ 1]  108 	push	#0x02
      0091CB CD 85 F2         [ 4]  109 	call	_UART1_ITConfig
      0091CE 5B 03            [ 2]  110 	addw	sp, #3
                                    111 ;	Source/Device/Src/gps.c: 45: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      0091D0 4B 01            [ 1]  112 	push	#0x01
      0091D2 4B 44            [ 1]  113 	push	#0x44
      0091D4 4B 02            [ 1]  114 	push	#0x02
      0091D6 CD 85 F2         [ 4]  115 	call	_UART1_ITConfig
      0091D9 5B 03            [ 2]  116 	addw	sp, #3
                                    117 ;	Source/Device/Src/gps.c: 46: UART1_Cmd(ENABLE);
      0091DB 4B 01            [ 1]  118 	push	#0x01
      0091DD CD 85 DF         [ 4]  119 	call	_UART1_Cmd
      0091E0 84               [ 1]  120 	pop	a
                                    121 ;	Source/Device/Src/gps.c: 49: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
      0091E1 A6 BA            [ 1]  122 	ld	a, #0xba
      0091E3 6B 01            [ 1]  123 	ld	(0x01, sp), a
      0091E5 96               [ 1]  124 	ldw	x, sp
      0091E6 A6 CE            [ 1]  125 	ld	a, #0xce
      0091E8 E7 02            [ 1]  126 	ld	(2, x), a
      0091EA 96               [ 1]  127 	ldw	x, sp
      0091EB A6 04            [ 1]  128 	ld	a, #0x04
      0091ED E7 03            [ 1]  129 	ld	(3, x), a
      0091EF 96               [ 1]  130 	ldw	x, sp
      0091F0 6F 04            [ 1]  131 	clr	(4, x)
      0091F2 96               [ 1]  132 	ldw	x, sp
      0091F3 A6 06            [ 1]  133 	ld	a, #0x06
      0091F5 E7 05            [ 1]  134 	ld	(5, x), a
      0091F7 96               [ 1]  135 	ldw	x, sp
      0091F8 A6 01            [ 1]  136 	ld	a, #0x01
      0091FA E7 06            [ 1]  137 	ld	(6, x), a
      0091FC 96               [ 1]  138 	ldw	x, sp
      0091FD A6 01            [ 1]  139 	ld	a, #0x01
      0091FF E7 07            [ 1]  140 	ld	(7, x), a
      009201 96               [ 1]  141 	ldw	x, sp
      009202 A6 10            [ 1]  142 	ld	a, #0x10
      009204 E7 08            [ 1]  143 	ld	(8, x), a
      009206 96               [ 1]  144 	ldw	x, sp
      009207 A6 01            [ 1]  145 	ld	a, #0x01
      009209 E7 09            [ 1]  146 	ld	(9, x), a
      00920B 96               [ 1]  147 	ldw	x, sp
      00920C 6F 0A            [ 1]  148 	clr	(10, x)
      00920E 96               [ 1]  149 	ldw	x, sp
      00920F A6 05            [ 1]  150 	ld	a, #0x05
      009211 E7 0B            [ 1]  151 	ld	(11, x), a
      009213 96               [ 1]  152 	ldw	x, sp
      009214 A6 10            [ 1]  153 	ld	a, #0x10
      009216 E7 0C            [ 1]  154 	ld	(12, x), a
      009218 96               [ 1]  155 	ldw	x, sp
      009219 A6 07            [ 1]  156 	ld	a, #0x07
      00921B E7 0D            [ 1]  157 	ld	(13, x), a
      00921D 96               [ 1]  158 	ldw	x, sp
      00921E A6 01            [ 1]  159 	ld	a, #0x01
      009220 E7 0E            [ 1]  160 	ld	(14, x), a
                                    161 ;	Source/Device/Src/gps.c: 50: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
      009222 A6 24            [ 1]  162 	ld	a, #0x24
      009224 6B 0F            [ 1]  163 	ld	(0x0f, sp), a
      009226 96               [ 1]  164 	ldw	x, sp
      009227 A6 43            [ 1]  165 	ld	a, #0x43
      009229 E7 10            [ 1]  166 	ld	(16, x), a
      00922B 96               [ 1]  167 	ldw	x, sp
      00922C A6 43            [ 1]  168 	ld	a, #0x43
      00922E E7 11            [ 1]  169 	ld	(17, x), a
      009230 96               [ 1]  170 	ldw	x, sp
      009231 A6 52            [ 1]  171 	ld	a, #0x52
      009233 E7 12            [ 1]  172 	ld	(18, x), a
      009235 96               [ 1]  173 	ldw	x, sp
      009236 A6 4D            [ 1]  174 	ld	a, #0x4d
      009238 E7 13            [ 1]  175 	ld	(19, x), a
      00923A 96               [ 1]  176 	ldw	x, sp
      00923B A6 4F            [ 1]  177 	ld	a, #0x4f
      00923D E7 14            [ 1]  178 	ld	(20, x), a
      00923F 96               [ 1]  179 	ldw	x, sp
      009240 A6 2C            [ 1]  180 	ld	a, #0x2c
      009242 E7 15            [ 1]  181 	ld	(21, x), a
      009244 96               [ 1]  182 	ldw	x, sp
      009245 A6 2C            [ 1]  183 	ld	a, #0x2c
      009247 E7 16            [ 1]  184 	ld	(22, x), a
      009249 96               [ 1]  185 	ldw	x, sp
      00924A A6 33            [ 1]  186 	ld	a, #0x33
      00924C E7 17            [ 1]  187 	ld	(23, x), a
      00924E 96               [ 1]  188 	ldw	x, sp
      00924F A6 2C            [ 1]  189 	ld	a, #0x2c
      009251 E7 18            [ 1]  190 	ld	(24, x), a
      009253 96               [ 1]  191 	ldw	x, sp
      009254 A6 2A            [ 1]  192 	ld	a, #0x2a
      009256 E7 19            [ 1]  193 	ld	(25, x), a
      009258 96               [ 1]  194 	ldw	x, sp
      009259 A6 34            [ 1]  195 	ld	a, #0x34
      00925B E7 1A            [ 1]  196 	ld	(26, x), a
      00925D 96               [ 1]  197 	ldw	x, sp
      00925E A6 46            [ 1]  198 	ld	a, #0x46
      009260 E7 1B            [ 1]  199 	ld	(27, x), a
      009262 96               [ 1]  200 	ldw	x, sp
      009263 A6 0D            [ 1]  201 	ld	a, #0x0d
      009265 E7 1C            [ 1]  202 	ld	(28, x), a
      009267 96               [ 1]  203 	ldw	x, sp
      009268 A6 0A            [ 1]  204 	ld	a, #0x0a
      00926A E7 1D            [ 1]  205 	ld	(29, x), a
                                    206 ;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      00926C 0F 1E            [ 1]  207 	clr	(0x1e, sp)
      00926E                        208 00110$:
      00926E 7B 1E            [ 1]  209 	ld	a, (0x1e, sp)
      009270 A1 0F            [ 1]  210 	cp	a, #0x0f
      009272 24 23            [ 1]  211 	jrnc	00104$
                                    212 ;	Source/Device/Src/gps.c: 55: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      009274                        213 00101$:
      009274 4B 80            [ 1]  214 	push	#0x80
      009276 4B 00            [ 1]  215 	push	#0x00
      009278 CD 86 75         [ 4]  216 	call	_UART1_GetFlagStatus
      00927B 85               [ 2]  217 	popw	x
      00927C 4A               [ 1]  218 	dec	a
      00927D 26 F5            [ 1]  219 	jrne	00101$
                                    220 ;	Source/Device/Src/gps.c: 56: UART1_SendData8(close_all_nmea[i]);
      00927F 5F               [ 1]  221 	clrw	x
      009280 7B 1E            [ 1]  222 	ld	a, (0x1e, sp)
      009282 97               [ 1]  223 	ld	xl, a
      009283 89               [ 2]  224 	pushw	x
      009284 96               [ 1]  225 	ldw	x, sp
      009285 1C 00 11         [ 2]  226 	addw	x, #17
      009288 72 FB 01         [ 2]  227 	addw	x, (1, sp)
      00928B 5B 02            [ 2]  228 	addw	sp, #2
      00928D F6               [ 1]  229 	ld	a, (x)
      00928E 88               [ 1]  230 	push	a
      00928F CD 86 6E         [ 4]  231 	call	_UART1_SendData8
      009292 84               [ 1]  232 	pop	a
                                    233 ;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      009293 0C 1E            [ 1]  234 	inc	(0x1e, sp)
      009295 20 D7            [ 2]  235 	jra	00110$
      009297                        236 00104$:
                                    237 ;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      009297 0F 1E            [ 1]  238 	clr	(0x1e, sp)
      009299                        239 00113$:
      009299 7B 1E            [ 1]  240 	ld	a, (0x1e, sp)
      00929B A1 0E            [ 1]  241 	cp	a, #0x0e
      00929D 24 23            [ 1]  242 	jrnc	00115$
                                    243 ;	Source/Device/Src/gps.c: 67: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      00929F                        244 00105$:
      00929F 4B 80            [ 1]  245 	push	#0x80
      0092A1 4B 00            [ 1]  246 	push	#0x00
      0092A3 CD 86 75         [ 4]  247 	call	_UART1_GetFlagStatus
      0092A6 85               [ 2]  248 	popw	x
      0092A7 4A               [ 1]  249 	dec	a
      0092A8 26 F5            [ 1]  250 	jrne	00105$
                                    251 ;	Source/Device/Src/gps.c: 68: UART1_SendData8(open_nav_timeutc[i]);
      0092AA 5F               [ 1]  252 	clrw	x
      0092AB 7B 1E            [ 1]  253 	ld	a, (0x1e, sp)
      0092AD 97               [ 1]  254 	ld	xl, a
      0092AE 89               [ 2]  255 	pushw	x
      0092AF 96               [ 1]  256 	ldw	x, sp
      0092B0 1C 00 03         [ 2]  257 	addw	x, #3
      0092B3 72 FB 01         [ 2]  258 	addw	x, (1, sp)
      0092B6 5B 02            [ 2]  259 	addw	sp, #2
      0092B8 F6               [ 1]  260 	ld	a, (x)
      0092B9 88               [ 1]  261 	push	a
      0092BA CD 86 6E         [ 4]  262 	call	_UART1_SendData8
      0092BD 84               [ 1]  263 	pop	a
                                    264 ;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      0092BE 0C 1E            [ 1]  265 	inc	(0x1e, sp)
      0092C0 20 D7            [ 2]  266 	jra	00113$
      0092C2                        267 00115$:
                                    268 ;	Source/Device/Src/gps.c: 70: }
      0092C2 5B 1E            [ 2]  269 	addw	sp, #30
      0092C4 81               [ 4]  270 	ret
                                    271 ;	Source/Device/Src/gps.c: 75: void GPS_GetTime(void)
                                    272 ;	-----------------------------------------
                                    273 ;	 function GPS_GetTime
                                    274 ;	-----------------------------------------
      0092C5                        275 _GPS_GetTime:
      0092C5 52 04            [ 2]  276 	sub	sp, #4
                                    277 ;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
      0092C7 90 5F            [ 1]  278 	clrw	y
      0092C9                        279 00106$:
      0092C9 90 A3 00 08      [ 2]  280 	cpw	y, #0x0008
      0092CD 2E 23            [ 1]  281 	jrsge	00101$
                                    282 ;	Source/Device/Src/gps.c: 80: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      0092CF AE 00 0E         [ 2]  283 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      0092D2 1F 01            [ 2]  284 	ldw	(0x01, sp), x
      0092D4 93               [ 1]  285 	ldw	x, y
      0092D5 1C 00 10         [ 2]  286 	addw	x, #0x0010
      0092D8 72 FB 01         [ 2]  287 	addw	x, (0x01, sp)
      0092DB 1F 03            [ 2]  288 	ldw	(0x03, sp), x
      0092DD 93               [ 1]  289 	ldw	x, y
      0092DE 1C 00 16         [ 2]  290 	addw	x, #22
      0092E1 9F               [ 1]  291 	ld	a, xl
      0092E2 49               [ 1]  292 	rlc	a
      0092E3 4F               [ 1]  293 	clr	a
      0092E4 A2 00            [ 1]  294 	sbc	a, #0x00
      0092E6 95               [ 1]  295 	ld	xh, a
      0092E7 1C 00 35         [ 2]  296 	addw	x, #(_GPS_RxBuf + 0)
      0092EA F6               [ 1]  297 	ld	a, (x)
      0092EB 1E 03            [ 2]  298 	ldw	x, (0x03, sp)
      0092ED F7               [ 1]  299 	ld	(x), a
                                    300 ;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
      0092EE 90 5C            [ 1]  301 	incw	y
      0092F0 20 D7            [ 2]  302 	jra	00106$
      0092F2                        303 00101$:
                                    304 ;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
      0092F2 90 AE 00 20      [ 2]  305 	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
      0092F6 90 F6            [ 1]  306 	ld	a, (y)
      0092F8 5F               [ 1]  307 	clrw	x
      0092F9 97               [ 1]  308 	ld	xl, a
      0092FA 1C 00 08         [ 2]  309 	addw	x, #0x0008
                                    310 ;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
                                    311 ;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
      0092FD A3 00 18         [ 2]  312 	cpw	x, #0x0018
      009300 2D 06            [ 1]  313 	jrsle	00103$
                                    314 ;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
      009302 AB F0            [ 1]  315 	add	a, #0xf0
      009304 90 F7            [ 1]  316 	ld	(y), a
      009306 20 04            [ 2]  317 	jra	00104$
      009308                        318 00103$:
                                    319 ;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.hour+=8;
      009308 AB 08            [ 1]  320 	add	a, #0x08
      00930A 90 F7            [ 1]  321 	ld	(y), a
      00930C                        322 00104$:
                                    323 ;	Source/Device/Src/gps.c: 85: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      00930C 90 AE 00 1C      [ 2]  324 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      009310 C6 00 4A         [ 1]  325 	ld	a, _GPS_RxBuf+21
      009313 95               [ 1]  326 	ld	xh, a
      009314 0F 02            [ 1]  327 	clr	(0x02, sp)
      009316 C6 00 49         [ 1]  328 	ld	a, _GPS_RxBuf+20
      009319 0F 03            [ 1]  329 	clr	(0x03, sp)
      00931B 1A 02            [ 1]  330 	or	a, (0x02, sp)
      00931D 02               [ 1]  331 	rlwa	x
      00931E 1A 03            [ 1]  332 	or	a, (0x03, sp)
      009320 95               [ 1]  333 	ld	xh, a
      009321 90 FF            [ 2]  334 	ldw	(y), x
                                    335 ;	Source/Device/Src/gps.c: 86: }
      009323 5B 04            [ 2]  336 	addw	sp, #4
      009325 81               [ 4]  337 	ret
                                    338 ;	Source/Device/Src/gps.c: 94: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    339 ;	-----------------------------------------
                                    340 ;	 function UART1_RX_IRQHandler
                                    341 ;	-----------------------------------------
      009326                        342 _UART1_RX_IRQHandler:
      009326 62               [ 2]  343 	div	x, a
                                    344 ;	Source/Device/Src/gps.c: 96: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      009327 4B 55            [ 1]  345 	push	#0x55
      009329 4B 02            [ 1]  346 	push	#0x02
      00932B CD 86 B7         [ 4]  347 	call	_UART1_GetITStatus
      00932E 85               [ 2]  348 	popw	x
      00932F 4A               [ 1]  349 	dec	a
      009330 26 21            [ 1]  350 	jrne	00109$
                                    351 ;	Source/Device/Src/gps.c: 98: if(num<34)
      009332 C6 00 58         [ 1]  352 	ld	a, _num+0
      009335 A1 22            [ 1]  353 	cp	a, #0x22
      009337 24 14            [ 1]  354 	jrnc	00102$
                                    355 ;	Source/Device/Src/gps.c: 100: GPS_RxBuf[num]=UART1_ReceiveData8();
      009339 5F               [ 1]  356 	clrw	x
      00933A C6 00 58         [ 1]  357 	ld	a, _num+0
      00933D 97               [ 1]  358 	ld	xl, a
      00933E 1C 00 35         [ 2]  359 	addw	x, #(_GPS_RxBuf + 0)
      009341 89               [ 2]  360 	pushw	x
      009342 CD 86 6A         [ 4]  361 	call	_UART1_ReceiveData8
      009345 85               [ 2]  362 	popw	x
      009346 F7               [ 1]  363 	ld	(x), a
                                    364 ;	Source/Device/Src/gps.c: 101: ++num;
      009347 72 5C 00 58      [ 1]  365 	inc	_num+0
      00934B 20 25            [ 2]  366 	jra	00111$
      00934D                        367 00102$:
                                    368 ;	Source/Device/Src/gps.c: 104: num=0;
      00934D 72 5F 00 58      [ 1]  369 	clr	_num+0
      009351 20 1F            [ 2]  370 	jra	00111$
      009353                        371 00109$:
                                    372 ;	Source/Device/Src/gps.c: 106: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      009353 4B 44            [ 1]  373 	push	#0x44
      009355 4B 02            [ 1]  374 	push	#0x02
      009357 CD 86 B7         [ 4]  375 	call	_UART1_GetITStatus
      00935A 85               [ 2]  376 	popw	x
      00935B 4A               [ 1]  377 	dec	a
      00935C 26 14            [ 1]  378 	jrne	00111$
                                    379 ;	Source/Device/Src/gps.c: 108: UART1_ReceiveData8();
      00935E CD 86 6A         [ 4]  380 	call	_UART1_ReceiveData8
                                    381 ;	Source/Device/Src/gps.c: 109: num=0;
      009361 72 5F 00 58      [ 1]  382 	clr	_num+0
                                    383 ;	Source/Device/Src/gps.c: 110: if(checksum()==SUCCESS)
      009365 CD 93 73         [ 4]  384 	call	_checksum
      009368 4A               [ 1]  385 	dec	a
      009369 26 07            [ 1]  386 	jrne	00111$
                                    387 ;	Source/Device/Src/gps.c: 112: GPS_GetTime();
      00936B CD 92 C5         [ 4]  388 	call	_GPS_GetTime
                                    389 ;	Source/Device/Src/gps.c: 113: gps_first_send=SET;
      00936E 35 01 00 57      [ 1]  390 	mov	_gps_first_send+0, #0x01
      009372                        391 00111$:
                                    392 ;	Source/Device/Src/gps.c: 116: }
      009372 80               [11]  393 	iret
                                    394 ;	Source/Device/Src/gps.c: 124: static ErrorStatus checksum(void)
                                    395 ;	-----------------------------------------
                                    396 ;	 function checksum
                                    397 ;	-----------------------------------------
      009373                        398 _checksum:
      009373 52 0E            [ 2]  399 	sub	sp, #14
                                    400 ;	Source/Device/Src/gps.c: 127: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      009375 C6 00 3A         [ 1]  401 	ld	a, _GPS_RxBuf+5
      009378 0F 05            [ 1]  402 	clr	(0x05, sp)
      00937A 6B 0A            [ 1]  403 	ld	(0x0a, sp), a
      00937C 5F               [ 1]  404 	clrw	x
      00937D 0F 0B            [ 1]  405 	clr	(0x0b, sp)
      00937F 90 AE 00 37      [ 2]  406 	ldw	y, #(_GPS_RxBuf + 0)+2
      009383 C6 00 38         [ 1]  407 	ld	a, _GPS_RxBuf+3
      009386 6B 0E            [ 1]  408 	ld	(0x0e, sp), a
      009388 5D               [ 2]  409 	tnzw	x
      009389 26 3D            [ 1]  410 	jrne	00111$
      00938B 1E 0A            [ 2]  411 	ldw	x, (0x0a, sp)
      00938D 26 39            [ 1]  412 	jrne	00111$
      00938F C6 00 39         [ 1]  413 	ld	a, _GPS_RxBuf+4
      009392 5F               [ 1]  414 	clrw	x
      009393 0F 0A            [ 1]  415 	clr	(0x0a, sp)
      009395 6B 0B            [ 1]  416 	ld	(0x0b, sp), a
      009397 9F               [ 1]  417 	ld	a, xl
      009398 5F               [ 1]  418 	clrw	x
      009399 5D               [ 2]  419 	tnzw	x
      00939A 26 2C            [ 1]  420 	jrne	00111$
      00939C 0D 0B            [ 1]  421 	tnz	(0x0b, sp)
      00939E 26 28            [ 1]  422 	jrne	00111$
      0093A0 4D               [ 1]  423 	tnz	a
      0093A1 26 25            [ 1]  424 	jrne	00111$
      0093A3 90 F6            [ 1]  425 	ld	a, (y)
      0093A5 5F               [ 1]  426 	clrw	x
      0093A6 0F 0A            [ 1]  427 	clr	(0x0a, sp)
      0093A8 0F 0D            [ 1]  428 	clr	(0x0d, sp)
      0093AA 0D 0D            [ 1]  429 	tnz	(0x0d, sp)
      0093AC 26 1A            [ 1]  430 	jrne	00111$
      0093AE 4D               [ 1]  431 	tnz	a
      0093AF 26 17            [ 1]  432 	jrne	00111$
      0093B1 5D               [ 2]  433 	tnzw	x
      0093B2 26 14            [ 1]  434 	jrne	00111$
      0093B4 7B 0E            [ 1]  435 	ld	a, (0x0e, sp)
      0093B6 0F 0C            [ 1]  436 	clr	(0x0c, sp)
      0093B8 5F               [ 1]  437 	clrw	x
      0093B9 1F 0A            [ 2]  438 	ldw	(0x0a, sp), x
      0093BB 97               [ 1]  439 	ld	xl, a
      0093BC 7B 0C            [ 1]  440 	ld	a, (0x0c, sp)
      0093BE 95               [ 1]  441 	ld	xh, a
      0093BF 5D               [ 2]  442 	tnzw	x
      0093C0 26 06            [ 1]  443 	jrne	00111$
      0093C2 1E 0A            [ 2]  444 	ldw	x, (0x0a, sp)
      0093C4 26 02            [ 1]  445 	jrne	00111$
      0093C6 4F               [ 1]  446 	clr	a
      0093C7 C5                     447 	.byte 0xc5
      0093C8                        448 00111$:
      0093C8 A6 01            [ 1]  449 	ld	a, #0x01
      0093CA                        450 00112$:
      0093CA 5F               [ 1]  451 	clrw	x
      0093CB 0F 0A            [ 1]  452 	clr	(0x0a, sp)
      0093CD 6B 04            [ 1]  453 	ld	(0x04, sp), a
      0093CF 1F 02            [ 2]  454 	ldw	(0x02, sp), x
      0093D1 7B 0A            [ 1]  455 	ld	a, (0x0a, sp)
      0093D3 6B 01            [ 1]  456 	ld	(0x01, sp), a
                                    457 ;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      0093D5 7B 0E            [ 1]  458 	ld	a, (0x0e, sp)
      0093D7 6B 05            [ 1]  459 	ld	(0x05, sp), a
      0093D9 17 06            [ 2]  460 	ldw	(0x06, sp), y
      0093DB 5F               [ 1]  461 	clrw	x
      0093DC 1F 0D            [ 2]  462 	ldw	(0x0d, sp), x
      0093DE                        463 00106$:
      0093DE 1E 06            [ 2]  464 	ldw	x, (0x06, sp)
      0093E0 F6               [ 1]  465 	ld	a, (x)
      0093E1 95               [ 1]  466 	ld	xh, a
      0093E2 4F               [ 1]  467 	clr	a
      0093E3 97               [ 1]  468 	ld	xl, a
      0093E4 5D               [ 2]  469 	tnzw	x
      0093E5 26 09            [ 1]  470 	jrne	00120$
      0093E7 7B 05            [ 1]  471 	ld	a, (0x05, sp)
      0093E9 5F               [ 1]  472 	clrw	x
      0093EA 97               [ 1]  473 	ld	xl, a
      0093EB 5D               [ 2]  474 	tnzw	x
      0093EC 26 02            [ 1]  475 	jrne	00120$
      0093EE 4F               [ 1]  476 	clr	a
      0093EF C5                     477 	.byte 0xc5
      0093F0                        478 00120$:
      0093F0 A6 01            [ 1]  479 	ld	a, #0x01
      0093F2                        480 00121$:
      0093F2 5F               [ 1]  481 	clrw	x
      0093F3 97               [ 1]  482 	ld	xl, a
      0093F4 4B 04            [ 1]  483 	push	#0x04
      0093F6 4B 00            [ 1]  484 	push	#0x00
      0093F8 89               [ 2]  485 	pushw	x
      0093F9 CD 96 04         [ 4]  486 	call	__divsint
      0093FC 5B 04            [ 2]  487 	addw	sp, #4
      0093FE 16 0D            [ 2]  488 	ldw	y, (0x0d, sp)
      009400 1F 0B            [ 2]  489 	ldw	(0x0b, sp), x
      009402 93               [ 1]  490 	ldw	x, y
      009403 13 0B            [ 2]  491 	cpw	x, (0x0b, sp)
      009405 25 03            [ 1]  492 	jrc	00236$
      009407 CC 94 9B         [ 2]  493 	jp	00101$
      00940A                        494 00236$:
                                    495 ;	Source/Device/Src/gps.c: 131: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      00940A 7B 0E            [ 1]  496 	ld	a, (0x0e, sp)
      00940C 48               [ 1]  497 	sll	a
      00940D 48               [ 1]  498 	sll	a
      00940E 6B 08            [ 1]  499 	ld	(0x08, sp), a
      009410 AB 06            [ 1]  500 	add	a, #0x06
      009412 97               [ 1]  501 	ld	xl, a
      009413 49               [ 1]  502 	rlc	a
      009414 4F               [ 1]  503 	clr	a
      009415 A2 00            [ 1]  504 	sbc	a, #0x00
      009417 95               [ 1]  505 	ld	xh, a
      009418 1C 00 35         [ 2]  506 	addw	x, #(_GPS_RxBuf + 0)
      00941B F6               [ 1]  507 	ld	a, (x)
      00941C 0F 09            [ 1]  508 	clr	(0x09, sp)
      00941E 6B 09            [ 1]  509 	ld	(0x09, sp), a
      009420 5F               [ 1]  510 	clrw	x
      009421 1F 0B            [ 2]  511 	ldw	(0x0b, sp), x
      009423 0F 0A            [ 1]  512 	clr	(0x0a, sp)
      009425 1E 0B            [ 2]  513 	ldw	x, (0x0b, sp)
      009427 26 50            [ 1]  514 	jrne	00123$
      009429 1E 09            [ 2]  515 	ldw	x, (0x09, sp)
      00942B 26 4C            [ 1]  516 	jrne	00123$
      00942D 7B 08            [ 1]  517 	ld	a, (0x08, sp)
      00942F AB 07            [ 1]  518 	add	a, #0x07
      009431 97               [ 1]  519 	ld	xl, a
      009432 49               [ 1]  520 	rlc	a
      009433 4F               [ 1]  521 	clr	a
      009434 A2 00            [ 1]  522 	sbc	a, #0x00
      009436 95               [ 1]  523 	ld	xh, a
      009437 1C 00 35         [ 2]  524 	addw	x, #(_GPS_RxBuf + 0)
      00943A F6               [ 1]  525 	ld	a, (x)
      00943B 5F               [ 1]  526 	clrw	x
      00943C 97               [ 1]  527 	ld	xl, a
      00943D 90 5F            [ 1]  528 	clrw	y
      00943F 90 5D            [ 2]  529 	tnzw	y
      009441 26 36            [ 1]  530 	jrne	00123$
      009443 5D               [ 2]  531 	tnzw	x
      009444 26 33            [ 1]  532 	jrne	00123$
                                    533 ;	Source/Device/Src/gps.c: 132: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      009446 7B 08            [ 1]  534 	ld	a, (0x08, sp)
      009448 AB 08            [ 1]  535 	add	a, #0x08
      00944A 97               [ 1]  536 	ld	xl, a
      00944B 49               [ 1]  537 	rlc	a
      00944C 4F               [ 1]  538 	clr	a
      00944D A2 00            [ 1]  539 	sbc	a, #0x00
      00944F 95               [ 1]  540 	ld	xh, a
      009450 1C 00 35         [ 2]  541 	addw	x, #(_GPS_RxBuf + 0)
      009453 F6               [ 1]  542 	ld	a, (x)
      009454 90 5F            [ 1]  543 	clrw	y
      009456 95               [ 1]  544 	ld	xh, a
      009457 4F               [ 1]  545 	clr	a
      009458 97               [ 1]  546 	ld	xl, a
      009459 5D               [ 2]  547 	tnzw	x
      00945A 26 1D            [ 1]  548 	jrne	00123$
      00945C 90 5D            [ 2]  549 	tnzw	y
      00945E 26 19            [ 1]  550 	jrne	00123$
      009460 7B 08            [ 1]  551 	ld	a, (0x08, sp)
      009462 AB 09            [ 1]  552 	add	a, #0x09
      009464 97               [ 1]  553 	ld	xl, a
      009465 49               [ 1]  554 	rlc	a
      009466 4F               [ 1]  555 	clr	a
      009467 A2 00            [ 1]  556 	sbc	a, #0x00
      009469 95               [ 1]  557 	ld	xh, a
      00946A 1C 00 35         [ 2]  558 	addw	x, #(_GPS_RxBuf + 0)
      00946D F6               [ 1]  559 	ld	a, (x)
      00946E 5F               [ 1]  560 	clrw	x
      00946F 97               [ 1]  561 	ld	xl, a
      009470 90 5F            [ 1]  562 	clrw	y
      009472 5D               [ 2]  563 	tnzw	x
      009473 26 04            [ 1]  564 	jrne	00123$
      009475 90 5D            [ 2]  565 	tnzw	y
      009477 27 04            [ 1]  566 	jreq	00124$
      009479                        567 00123$:
      009479 A6 01            [ 1]  568 	ld	a, #0x01
      00947B 90 97            [ 1]  569 	ld	yl, a
      00947D                        570 00124$:
      00947D 4F               [ 1]  571 	clr	a
      00947E 5F               [ 1]  572 	clrw	x
      00947F 4D               [ 1]  573 	tnz	a
      009480 2A 01            [ 1]  574 	jrpl	00245$
      009482 5A               [ 2]  575 	decw	x
      009483                        576 00245$:
      009483 90 95            [ 1]  577 	ld	yh, a
      009485 72 F9 03         [ 2]  578 	addw	y, (0x03, sp)
      009488 9F               [ 1]  579 	ld	a, xl
      009489 19 02            [ 1]  580 	adc	a, (0x02, sp)
      00948B 02               [ 1]  581 	rlwa	x
      00948C 19 01            [ 1]  582 	adc	a, (0x01, sp)
      00948E 95               [ 1]  583 	ld	xh, a
      00948F 17 03            [ 2]  584 	ldw	(0x03, sp), y
      009491 1F 01            [ 2]  585 	ldw	(0x01, sp), x
                                    586 ;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      009493 1E 0D            [ 2]  587 	ldw	x, (0x0d, sp)
      009495 5C               [ 1]  588 	incw	x
      009496 1F 0D            [ 2]  589 	ldw	(0x0d, sp), x
      009498 CC 93 DE         [ 2]  590 	jp	00106$
      00949B                        591 00101$:
                                    592 ;	Source/Device/Src/gps.c: 134: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      00949B C6 00 53         [ 1]  593 	ld	a, _GPS_RxBuf+30
      00949E 0F 0B            [ 1]  594 	clr	(0x0b, sp)
      0094A0 6B 0B            [ 1]  595 	ld	(0x0b, sp), a
      0094A2 5F               [ 1]  596 	clrw	x
      0094A3 0F 0C            [ 1]  597 	clr	(0x0c, sp)
      0094A5 5D               [ 2]  598 	tnzw	x
      0094A6 26 34            [ 1]  599 	jrne	00132$
      0094A8 1E 0B            [ 2]  600 	ldw	x, (0x0b, sp)
      0094AA 26 30            [ 1]  601 	jrne	00132$
      0094AC C6 00 54         [ 1]  602 	ld	a, _GPS_RxBuf+31
      0094AF 5F               [ 1]  603 	clrw	x
      0094B0 97               [ 1]  604 	ld	xl, a
      0094B1 90 5F            [ 1]  605 	clrw	y
      0094B3 90 5D            [ 2]  606 	tnzw	y
      0094B5 26 25            [ 1]  607 	jrne	00132$
      0094B7 5D               [ 2]  608 	tnzw	x
      0094B8 26 22            [ 1]  609 	jrne	00132$
                                    610 ;	Source/Device/Src/gps.c: 135: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      0094BA C6 00 55         [ 1]  611 	ld	a, _GPS_RxBuf+32
      0094BD 5F               [ 1]  612 	clrw	x
      0094BE 0F 0B            [ 1]  613 	clr	(0x0b, sp)
      0094C0 6B 0D            [ 1]  614 	ld	(0x0d, sp), a
      0094C2 5E               [ 1]  615 	swapw	x
      0094C3 0F 0E            [ 1]  616 	clr	(0x0e, sp)
      0094C5 16 0D            [ 2]  617 	ldw	y, (0x0d, sp)
      0094C7 26 13            [ 1]  618 	jrne	00132$
      0094C9 5D               [ 2]  619 	tnzw	x
      0094CA 26 10            [ 1]  620 	jrne	00132$
      0094CC C6 00 56         [ 1]  621 	ld	a, _GPS_RxBuf+33
      0094CF 5F               [ 1]  622 	clrw	x
      0094D0 90 5F            [ 1]  623 	clrw	y
      0094D2 97               [ 1]  624 	ld	xl, a
      0094D3 5D               [ 2]  625 	tnzw	x
      0094D4 26 06            [ 1]  626 	jrne	00132$
      0094D6 90 5D            [ 2]  627 	tnzw	y
      0094D8 26 02            [ 1]  628 	jrne	00132$
      0094DA 4F               [ 1]  629 	clr	a
      0094DB C5                     630 	.byte 0xc5
      0094DC                        631 00132$:
      0094DC A6 01            [ 1]  632 	ld	a, #0x01
      0094DE                        633 00133$:
      0094DE 5F               [ 1]  634 	clrw	x
      0094DF 90 5F            [ 1]  635 	clrw	y
      0094E1 97               [ 1]  636 	ld	xl, a
      0094E2 13 03            [ 2]  637 	cpw	x, (0x03, sp)
      0094E4 26 08            [ 1]  638 	jrne	00103$
      0094E6 93               [ 1]  639 	ldw	x, y
      0094E7 13 01            [ 2]  640 	cpw	x, (0x01, sp)
      0094E9 26 03            [ 1]  641 	jrne	00103$
                                    642 ;	Source/Device/Src/gps.c: 136: return SUCCESS;
      0094EB A6 01            [ 1]  643 	ld	a, #0x01
                                    644 ;	Source/Device/Src/gps.c: 138: return ERROR;
      0094ED 21                     645 	.byte 0x21
      0094EE                        646 00103$:
      0094EE 4F               [ 1]  647 	clr	a
      0094EF                        648 00108$:
                                    649 ;	Source/Device/Src/gps.c: 139: }
      0094EF 5B 0E            [ 2]  650 	addw	sp, #14
      0094F1 81               [ 4]  651 	ret
                                    652 	.area CODE
                                    653 	.area CONST
                                    654 	.area INITIALIZER
      0080A3                        655 __xinit__GPS_RxBuf:
      0080A3 00                     656 	.db #0x00	; 0
      0080A4 00                     657 	.db 0x00
      0080A5 00                     658 	.db 0x00
      0080A6 00                     659 	.db 0x00
      0080A7 00                     660 	.db 0x00
      0080A8 00                     661 	.db 0x00
      0080A9 00                     662 	.db 0x00
      0080AA 00                     663 	.db 0x00
      0080AB 00                     664 	.db 0x00
      0080AC 00                     665 	.db 0x00
      0080AD 00                     666 	.db 0x00
      0080AE 00                     667 	.db 0x00
      0080AF 00                     668 	.db 0x00
      0080B0 00                     669 	.db 0x00
      0080B1 00                     670 	.db 0x00
      0080B2 00                     671 	.db 0x00
      0080B3 00                     672 	.db 0x00
      0080B4 00                     673 	.db 0x00
      0080B5 00                     674 	.db 0x00
      0080B6 00                     675 	.db 0x00
      0080B7 00                     676 	.db 0x00
      0080B8 00                     677 	.db 0x00
      0080B9 00                     678 	.db 0x00
      0080BA 00                     679 	.db 0x00
      0080BB 00                     680 	.db 0x00
      0080BC 00                     681 	.db 0x00
      0080BD 00                     682 	.db 0x00
      0080BE 00                     683 	.db 0x00
      0080BF 00                     684 	.db 0x00
      0080C0 00                     685 	.db 0x00
      0080C1 00                     686 	.db 0x00
      0080C2 00                     687 	.db 0x00
      0080C3 00                     688 	.db 0x00
      0080C4 00                     689 	.db 0x00
      0080C5                        690 __xinit__gps_first_send:
      0080C5 00                     691 	.db #0x00	; 0
      0080C6                        692 __xinit__num:
      0080C6 00                     693 	.db #0x00	; 0
                                    694 	.area CABS (ABS)
