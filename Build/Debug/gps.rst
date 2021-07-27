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
                                     20 	.globl _GPS_RxBuf
                                     21 	.globl _GPS_TimeDataSturcture
                                     22 	.globl _GPS_Init
                                     23 	.globl _GPS_GetTime
                                     24 	.globl _UART1_RX_IRQHandler
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                           000000    29 G$GPS_TimeDataSturcture$0_0$0==.
      00000E                         30 _GPS_TimeDataSturcture::
      00000E                         31 	.ds 24
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
                           000000    36 G$GPS_RxBuf$0_0$0==.
      000031                         37 _GPS_RxBuf::
      000031                         38 	.ds 34
                           000022    39 Fgps$num$0_0$0==.
      000053                         40 _num:
      000053                         41 	.ds 1
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
                           000000    71 	Sgps$GPS_Init$0 ==.
                                     72 ;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
                                     73 ;	-----------------------------------------
                                     74 ;	 function GPS_Init
                                     75 ;	-----------------------------------------
      009057                         76 _GPS_Init:
                           000000    77 	Sgps$GPS_Init$1 ==.
      009057 52 1E            [ 2]   78 	sub	sp, #30
                           000002    79 	Sgps$GPS_Init$2 ==.
                           000002    80 	Sgps$GPS_Init$3 ==.
                                     81 ;	Source/Device/Src/gps.c: 34: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
      009059 4B F0            [ 1]   82 	push	#0xf0
                           000004    83 	Sgps$GPS_Init$4 ==.
      00905B 4B 20            [ 1]   84 	push	#0x20
                           000006    85 	Sgps$GPS_Init$5 ==.
      00905D 4B 0F            [ 1]   86 	push	#0x0f
                           000008    87 	Sgps$GPS_Init$6 ==.
      00905F 4B 50            [ 1]   88 	push	#0x50
                           00000A    89 	Sgps$GPS_Init$7 ==.
      009061 CD 82 36         [ 4]   90 	call	_GPIO_Init
      009064 5B 04            [ 2]   91 	addw	sp, #4
                           00000F    92 	Sgps$GPS_Init$8 ==.
                           00000F    93 	Sgps$GPS_Init$9 ==.
                                     94 ;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
      009066 4B 00            [ 1]   95 	push	#0x00
                           000011    96 	Sgps$GPS_Init$10 ==.
      009068 4B 40            [ 1]   97 	push	#0x40
                           000013    98 	Sgps$GPS_Init$11 ==.
      00906A 4B 0F            [ 1]   99 	push	#0x0f
                           000015   100 	Sgps$GPS_Init$12 ==.
      00906C 4B 50            [ 1]  101 	push	#0x50
                           000017   102 	Sgps$GPS_Init$13 ==.
      00906E CD 82 36         [ 4]  103 	call	_GPIO_Init
      009071 5B 04            [ 2]  104 	addw	sp, #4
                           00001C   105 	Sgps$GPS_Init$14 ==.
                           00001C   106 	Sgps$GPS_Init$15 ==.
                                    107 ;	Source/Device/Src/gps.c: 36: UART1_DeInit();
      009073 CD 84 63         [ 4]  108 	call	_UART1_DeInit
                           00001F   109 	Sgps$GPS_Init$16 ==.
                                    110 ;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)9600,
      009076 4B 0C            [ 1]  111 	push	#0x0c
                           000021   112 	Sgps$GPS_Init$17 ==.
      009078 4B 80            [ 1]  113 	push	#0x80
                           000023   114 	Sgps$GPS_Init$18 ==.
      00907A 4B 00            [ 1]  115 	push	#0x00
                           000025   116 	Sgps$GPS_Init$19 ==.
      00907C 4B 00            [ 1]  117 	push	#0x00
                           000027   118 	Sgps$GPS_Init$20 ==.
      00907E 4B 00            [ 1]  119 	push	#0x00
                           000029   120 	Sgps$GPS_Init$21 ==.
      009080 4B 80            [ 1]  121 	push	#0x80
                           00002B   122 	Sgps$GPS_Init$22 ==.
      009082 4B 25            [ 1]  123 	push	#0x25
                           00002D   124 	Sgps$GPS_Init$23 ==.
      009084 5F               [ 1]  125 	clrw	x
      009085 89               [ 2]  126 	pushw	x
                           00002F   127 	Sgps$GPS_Init$24 ==.
      009086 CD 84 8E         [ 4]  128 	call	_UART1_Init
      009089 5B 09            [ 2]  129 	addw	sp, #9
                           000034   130 	Sgps$GPS_Init$25 ==.
                           000034   131 	Sgps$GPS_Init$26 ==.
                                    132 ;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      00908B 4B 01            [ 1]  133 	push	#0x01
                           000036   134 	Sgps$GPS_Init$27 ==.
      00908D 4B 05            [ 1]  135 	push	#0x05
                           000038   136 	Sgps$GPS_Init$28 ==.
      00908F 4B 02            [ 1]  137 	push	#0x02
                           00003A   138 	Sgps$GPS_Init$29 ==.
      009091 CD 86 1F         [ 4]  139 	call	_UART1_ITConfig
      009094 5B 03            [ 2]  140 	addw	sp, #3
                           00003F   141 	Sgps$GPS_Init$30 ==.
                           00003F   142 	Sgps$GPS_Init$31 ==.
                                    143 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      009096 4B 01            [ 1]  144 	push	#0x01
                           000041   145 	Sgps$GPS_Init$32 ==.
      009098 4B 44            [ 1]  146 	push	#0x44
                           000043   147 	Sgps$GPS_Init$33 ==.
      00909A 4B 02            [ 1]  148 	push	#0x02
                           000045   149 	Sgps$GPS_Init$34 ==.
      00909C CD 86 1F         [ 4]  150 	call	_UART1_ITConfig
      00909F 5B 03            [ 2]  151 	addw	sp, #3
                           00004A   152 	Sgps$GPS_Init$35 ==.
                           00004A   153 	Sgps$GPS_Init$36 ==.
                                    154 ;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
      0090A1 4B 01            [ 1]  155 	push	#0x01
                           00004C   156 	Sgps$GPS_Init$37 ==.
      0090A3 CD 86 0B         [ 4]  157 	call	_UART1_Cmd
      0090A6 84               [ 1]  158 	pop	a
                           000050   159 	Sgps$GPS_Init$38 ==.
                           000050   160 	Sgps$GPS_Init$39 ==.
                           000050   161 	Sgps$GPS_Init$40 ==.
                                    162 ;	Source/Device/Src/gps.c: 48: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
      0090A7 A6 BA            [ 1]  163 	ld	a, #0xba
      0090A9 6B 01            [ 1]  164 	ld	(0x01, sp), a
      0090AB 96               [ 1]  165 	ldw	x, sp
      0090AC A6 CE            [ 1]  166 	ld	a, #0xce
      0090AE E7 02            [ 1]  167 	ld	(2, x), a
      0090B0 96               [ 1]  168 	ldw	x, sp
      0090B1 A6 04            [ 1]  169 	ld	a, #0x04
      0090B3 E7 03            [ 1]  170 	ld	(3, x), a
      0090B5 96               [ 1]  171 	ldw	x, sp
      0090B6 6F 04            [ 1]  172 	clr	(4, x)
      0090B8 96               [ 1]  173 	ldw	x, sp
      0090B9 A6 06            [ 1]  174 	ld	a, #0x06
      0090BB E7 05            [ 1]  175 	ld	(5, x), a
      0090BD 96               [ 1]  176 	ldw	x, sp
      0090BE A6 01            [ 1]  177 	ld	a, #0x01
      0090C0 E7 06            [ 1]  178 	ld	(6, x), a
      0090C2 96               [ 1]  179 	ldw	x, sp
      0090C3 A6 01            [ 1]  180 	ld	a, #0x01
      0090C5 E7 07            [ 1]  181 	ld	(7, x), a
      0090C7 96               [ 1]  182 	ldw	x, sp
      0090C8 A6 10            [ 1]  183 	ld	a, #0x10
      0090CA E7 08            [ 1]  184 	ld	(8, x), a
      0090CC 96               [ 1]  185 	ldw	x, sp
      0090CD A6 01            [ 1]  186 	ld	a, #0x01
      0090CF E7 09            [ 1]  187 	ld	(9, x), a
      0090D1 96               [ 1]  188 	ldw	x, sp
      0090D2 6F 0A            [ 1]  189 	clr	(10, x)
      0090D4 96               [ 1]  190 	ldw	x, sp
      0090D5 A6 05            [ 1]  191 	ld	a, #0x05
      0090D7 E7 0B            [ 1]  192 	ld	(11, x), a
      0090D9 96               [ 1]  193 	ldw	x, sp
      0090DA A6 10            [ 1]  194 	ld	a, #0x10
      0090DC E7 0C            [ 1]  195 	ld	(12, x), a
      0090DE 96               [ 1]  196 	ldw	x, sp
      0090DF A6 07            [ 1]  197 	ld	a, #0x07
      0090E1 E7 0D            [ 1]  198 	ld	(13, x), a
      0090E3 96               [ 1]  199 	ldw	x, sp
      0090E4 A6 01            [ 1]  200 	ld	a, #0x01
      0090E6 E7 0E            [ 1]  201 	ld	(14, x), a
                           000091   202 	Sgps$GPS_Init$41 ==.
                                    203 ;	Source/Device/Src/gps.c: 49: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
      0090E8 A6 24            [ 1]  204 	ld	a, #0x24
      0090EA 6B 0F            [ 1]  205 	ld	(0x0f, sp), a
      0090EC 96               [ 1]  206 	ldw	x, sp
      0090ED A6 43            [ 1]  207 	ld	a, #0x43
      0090EF E7 10            [ 1]  208 	ld	(16, x), a
      0090F1 96               [ 1]  209 	ldw	x, sp
      0090F2 A6 43            [ 1]  210 	ld	a, #0x43
      0090F4 E7 11            [ 1]  211 	ld	(17, x), a
      0090F6 96               [ 1]  212 	ldw	x, sp
      0090F7 A6 52            [ 1]  213 	ld	a, #0x52
      0090F9 E7 12            [ 1]  214 	ld	(18, x), a
      0090FB 96               [ 1]  215 	ldw	x, sp
      0090FC A6 4D            [ 1]  216 	ld	a, #0x4d
      0090FE E7 13            [ 1]  217 	ld	(19, x), a
      009100 96               [ 1]  218 	ldw	x, sp
      009101 A6 4F            [ 1]  219 	ld	a, #0x4f
      009103 E7 14            [ 1]  220 	ld	(20, x), a
      009105 96               [ 1]  221 	ldw	x, sp
      009106 A6 2C            [ 1]  222 	ld	a, #0x2c
      009108 E7 15            [ 1]  223 	ld	(21, x), a
      00910A 96               [ 1]  224 	ldw	x, sp
      00910B A6 2C            [ 1]  225 	ld	a, #0x2c
      00910D E7 16            [ 1]  226 	ld	(22, x), a
      00910F 96               [ 1]  227 	ldw	x, sp
      009110 A6 33            [ 1]  228 	ld	a, #0x33
      009112 E7 17            [ 1]  229 	ld	(23, x), a
      009114 96               [ 1]  230 	ldw	x, sp
      009115 A6 2C            [ 1]  231 	ld	a, #0x2c
      009117 E7 18            [ 1]  232 	ld	(24, x), a
      009119 96               [ 1]  233 	ldw	x, sp
      00911A A6 2A            [ 1]  234 	ld	a, #0x2a
      00911C E7 19            [ 1]  235 	ld	(25, x), a
      00911E 96               [ 1]  236 	ldw	x, sp
      00911F A6 34            [ 1]  237 	ld	a, #0x34
      009121 E7 1A            [ 1]  238 	ld	(26, x), a
      009123 96               [ 1]  239 	ldw	x, sp
      009124 A6 46            [ 1]  240 	ld	a, #0x46
      009126 E7 1B            [ 1]  241 	ld	(27, x), a
      009128 96               [ 1]  242 	ldw	x, sp
      009129 A6 0D            [ 1]  243 	ld	a, #0x0d
      00912B E7 1C            [ 1]  244 	ld	(28, x), a
      00912D 96               [ 1]  245 	ldw	x, sp
      00912E A6 0A            [ 1]  246 	ld	a, #0x0a
      009130 E7 1D            [ 1]  247 	ld	(29, x), a
                           0000DB   248 	Sgps$GPS_Init$42 ==.
                                    249 ;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      009132 0F 1E            [ 1]  250 	clr	(0x1e, sp)
                           0000DD   251 	Sgps$GPS_Init$43 ==.
      009134                        252 00110$:
      009134 7B 1E            [ 1]  253 	ld	a, (0x1e, sp)
      009136 A1 0F            [ 1]  254 	cp	a, #0x0f
      009138 24 23            [ 1]  255 	jrnc	00104$
                           0000E3   256 	Sgps$GPS_Init$44 ==.
                           0000E3   257 	Sgps$GPS_Init$45 ==.
                                    258 ;	Source/Device/Src/gps.c: 54: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      00913A                        259 00101$:
      00913A 4B 80            [ 1]  260 	push	#0x80
                           0000E5   261 	Sgps$GPS_Init$46 ==.
      00913C 4B 00            [ 1]  262 	push	#0x00
                           0000E7   263 	Sgps$GPS_Init$47 ==.
      00913E CD 86 A4         [ 4]  264 	call	_UART1_GetFlagStatus
      009141 85               [ 2]  265 	popw	x
                           0000EB   266 	Sgps$GPS_Init$48 ==.
      009142 4A               [ 1]  267 	dec	a
      009143 26 F5            [ 1]  268 	jrne	00101$
                           0000EE   269 	Sgps$GPS_Init$49 ==.
                           0000EE   270 	Sgps$GPS_Init$50 ==.
                                    271 ;	Source/Device/Src/gps.c: 55: UART1_SendData8(close_all_nmea[i]);
      009145 5F               [ 1]  272 	clrw	x
      009146 7B 1E            [ 1]  273 	ld	a, (0x1e, sp)
      009148 97               [ 1]  274 	ld	xl, a
      009149 89               [ 2]  275 	pushw	x
                           0000F3   276 	Sgps$GPS_Init$51 ==.
      00914A 96               [ 1]  277 	ldw	x, sp
      00914B 1C 00 11         [ 2]  278 	addw	x, #17
      00914E 72 FB 01         [ 2]  279 	addw	x, (1, sp)
      009151 5B 02            [ 2]  280 	addw	sp, #2
                           0000FC   281 	Sgps$GPS_Init$52 ==.
      009153 F6               [ 1]  282 	ld	a, (x)
      009154 88               [ 1]  283 	push	a
                           0000FE   284 	Sgps$GPS_Init$53 ==.
      009155 CD 86 9D         [ 4]  285 	call	_UART1_SendData8
      009158 84               [ 1]  286 	pop	a
                           000102   287 	Sgps$GPS_Init$54 ==.
                           000102   288 	Sgps$GPS_Init$55 ==.
                           000102   289 	Sgps$GPS_Init$56 ==.
                                    290 ;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      009159 0C 1E            [ 1]  291 	inc	(0x1e, sp)
      00915B 20 D7            [ 2]  292 	jra	00110$
      00915D                        293 00104$:
                           000106   294 	Sgps$GPS_Init$57 ==.
                           000106   295 	Sgps$GPS_Init$58 ==.
                                    296 ;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      00915D 0F 1E            [ 1]  297 	clr	(0x1e, sp)
                           000108   298 	Sgps$GPS_Init$59 ==.
      00915F                        299 00113$:
      00915F 7B 1E            [ 1]  300 	ld	a, (0x1e, sp)
      009161 A1 0E            [ 1]  301 	cp	a, #0x0e
      009163 24 23            [ 1]  302 	jrnc	00115$
                           00010E   303 	Sgps$GPS_Init$60 ==.
                           00010E   304 	Sgps$GPS_Init$61 ==.
                                    305 ;	Source/Device/Src/gps.c: 66: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      009165                        306 00105$:
      009165 4B 80            [ 1]  307 	push	#0x80
                           000110   308 	Sgps$GPS_Init$62 ==.
      009167 4B 00            [ 1]  309 	push	#0x00
                           000112   310 	Sgps$GPS_Init$63 ==.
      009169 CD 86 A4         [ 4]  311 	call	_UART1_GetFlagStatus
      00916C 85               [ 2]  312 	popw	x
                           000116   313 	Sgps$GPS_Init$64 ==.
      00916D 4A               [ 1]  314 	dec	a
      00916E 26 F5            [ 1]  315 	jrne	00105$
                           000119   316 	Sgps$GPS_Init$65 ==.
                           000119   317 	Sgps$GPS_Init$66 ==.
                                    318 ;	Source/Device/Src/gps.c: 67: UART1_SendData8(open_nav_timeutc[i]);
      009170 5F               [ 1]  319 	clrw	x
      009171 7B 1E            [ 1]  320 	ld	a, (0x1e, sp)
      009173 97               [ 1]  321 	ld	xl, a
      009174 89               [ 2]  322 	pushw	x
                           00011E   323 	Sgps$GPS_Init$67 ==.
      009175 96               [ 1]  324 	ldw	x, sp
      009176 1C 00 03         [ 2]  325 	addw	x, #3
      009179 72 FB 01         [ 2]  326 	addw	x, (1, sp)
      00917C 5B 02            [ 2]  327 	addw	sp, #2
                           000127   328 	Sgps$GPS_Init$68 ==.
      00917E F6               [ 1]  329 	ld	a, (x)
      00917F 88               [ 1]  330 	push	a
                           000129   331 	Sgps$GPS_Init$69 ==.
      009180 CD 86 9D         [ 4]  332 	call	_UART1_SendData8
      009183 84               [ 1]  333 	pop	a
                           00012D   334 	Sgps$GPS_Init$70 ==.
                           00012D   335 	Sgps$GPS_Init$71 ==.
                           00012D   336 	Sgps$GPS_Init$72 ==.
                                    337 ;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      009184 0C 1E            [ 1]  338 	inc	(0x1e, sp)
      009186 20 D7            [ 2]  339 	jra	00113$
                           000131   340 	Sgps$GPS_Init$73 ==.
      009188                        341 00115$:
                           000131   342 	Sgps$GPS_Init$74 ==.
                                    343 ;	Source/Device/Src/gps.c: 69: }
      009188 5B 1E            [ 2]  344 	addw	sp, #30
                           000133   345 	Sgps$GPS_Init$75 ==.
                           000133   346 	Sgps$GPS_Init$76 ==.
                           000133   347 	XG$GPS_Init$0$0 ==.
      00918A 81               [ 4]  348 	ret
                           000134   349 	Sgps$GPS_Init$77 ==.
                           000134   350 	Sgps$GPS_GetTime$78 ==.
                                    351 ;	Source/Device/Src/gps.c: 74: void GPS_GetTime(void)
                                    352 ;	-----------------------------------------
                                    353 ;	 function GPS_GetTime
                                    354 ;	-----------------------------------------
      00918B                        355 _GPS_GetTime:
                           000134   356 	Sgps$GPS_GetTime$79 ==.
      00918B 52 04            [ 2]  357 	sub	sp, #4
                           000136   358 	Sgps$GPS_GetTime$80 ==.
                           000136   359 	Sgps$GPS_GetTime$81 ==.
                           000136   360 	Sgps$GPS_GetTime$82 ==.
                                    361 ;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
                           000136   362 	Sgps$GPS_GetTime$83 ==.
      00918D 90 5F            [ 1]  363 	clrw	y
      00918F                        364 00106$:
      00918F 90 A3 00 08      [ 2]  365 	cpw	y, #0x0008
      009193 2E 23            [ 1]  366 	jrsge	00101$
                           00013E   367 	Sgps$GPS_GetTime$84 ==.
                                    368 ;	Source/Device/Src/gps.c: 79: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      009195 AE 00 0E         [ 2]  369 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      009198 1F 01            [ 2]  370 	ldw	(0x01, sp), x
      00919A 93               [ 1]  371 	ldw	x, y
      00919B 1C 00 10         [ 2]  372 	addw	x, #0x0010
      00919E 72 FB 01         [ 2]  373 	addw	x, (0x01, sp)
      0091A1 1F 03            [ 2]  374 	ldw	(0x03, sp), x
      0091A3 93               [ 1]  375 	ldw	x, y
      0091A4 1C 00 16         [ 2]  376 	addw	x, #22
      0091A7 9F               [ 1]  377 	ld	a, xl
      0091A8 49               [ 1]  378 	rlc	a
      0091A9 4F               [ 1]  379 	clr	a
      0091AA A2 00            [ 1]  380 	sbc	a, #0x00
      0091AC 95               [ 1]  381 	ld	xh, a
      0091AD 1C 00 31         [ 2]  382 	addw	x, #(_GPS_RxBuf + 0)
      0091B0 F6               [ 1]  383 	ld	a, (x)
      0091B1 1E 03            [ 2]  384 	ldw	x, (0x03, sp)
      0091B3 F7               [ 1]  385 	ld	(x), a
                           00015D   386 	Sgps$GPS_GetTime$85 ==.
                                    387 ;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
      0091B4 90 5C            [ 1]  388 	incw	y
      0091B6 20 D7            [ 2]  389 	jra	00106$
      0091B8                        390 00101$:
                           000161   391 	Sgps$GPS_GetTime$86 ==.
                                    392 ;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
      0091B8 90 AE 00 20      [ 2]  393 	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
      0091BC 90 F6            [ 1]  394 	ld	a, (y)
      0091BE 5F               [ 1]  395 	clrw	x
      0091BF 97               [ 1]  396 	ld	xl, a
      0091C0 1C 00 08         [ 2]  397 	addw	x, #0x0008
                           00016C   398 	Sgps$GPS_GetTime$87 ==.
                                    399 ;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
                           00016C   400 	Sgps$GPS_GetTime$88 ==.
                                    401 ;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
      0091C3 A3 00 18         [ 2]  402 	cpw	x, #0x0018
      0091C6 2D 06            [ 1]  403 	jrsle	00103$
                           000171   404 	Sgps$GPS_GetTime$89 ==.
                                    405 ;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
      0091C8 AB F0            [ 1]  406 	add	a, #0xf0
      0091CA 90 F7            [ 1]  407 	ld	(y), a
      0091CC 20 04            [ 2]  408 	jra	00104$
      0091CE                        409 00103$:
                           000177   410 	Sgps$GPS_GetTime$90 ==.
                                    411 ;	Source/Device/Src/gps.c: 83: GPS_TimeDataSturcture.hour+=8;
      0091CE AB 08            [ 1]  412 	add	a, #0x08
      0091D0 90 F7            [ 1]  413 	ld	(y), a
      0091D2                        414 00104$:
                           00017B   415 	Sgps$GPS_GetTime$91 ==.
                                    416 ;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      0091D2 90 AE 00 1C      [ 2]  417 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      0091D6 C6 00 46         [ 1]  418 	ld	a, _GPS_RxBuf+21
      0091D9 95               [ 1]  419 	ld	xh, a
      0091DA 0F 02            [ 1]  420 	clr	(0x02, sp)
      0091DC C6 00 45         [ 1]  421 	ld	a, _GPS_RxBuf+20
      0091DF 0F 03            [ 1]  422 	clr	(0x03, sp)
      0091E1 1A 02            [ 1]  423 	or	a, (0x02, sp)
      0091E3 02               [ 1]  424 	rlwa	x
      0091E4 1A 03            [ 1]  425 	or	a, (0x03, sp)
      0091E6 95               [ 1]  426 	ld	xh, a
      0091E7 90 FF            [ 2]  427 	ldw	(y), x
                           000192   428 	Sgps$GPS_GetTime$92 ==.
                                    429 ;	Source/Device/Src/gps.c: 85: }
      0091E9 5B 04            [ 2]  430 	addw	sp, #4
                           000194   431 	Sgps$GPS_GetTime$93 ==.
                           000194   432 	Sgps$GPS_GetTime$94 ==.
                           000194   433 	XG$GPS_GetTime$0$0 ==.
      0091EB 81               [ 4]  434 	ret
                           000195   435 	Sgps$GPS_GetTime$95 ==.
                           000195   436 	Sgps$UART1_RX_IRQHandler$96 ==.
                                    437 ;	Source/Device/Src/gps.c: 93: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    438 ;	-----------------------------------------
                                    439 ;	 function UART1_RX_IRQHandler
                                    440 ;	-----------------------------------------
      0091EC                        441 _UART1_RX_IRQHandler:
      0091EC 62               [ 2]  442 	div	x, a
                           000196   443 	Sgps$UART1_RX_IRQHandler$97 ==.
                           000196   444 	Sgps$UART1_RX_IRQHandler$98 ==.
                                    445 ;	Source/Device/Src/gps.c: 95: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      0091ED 4B 55            [ 1]  446 	push	#0x55
                           000198   447 	Sgps$UART1_RX_IRQHandler$99 ==.
      0091EF 4B 02            [ 1]  448 	push	#0x02
                           00019A   449 	Sgps$UART1_RX_IRQHandler$100 ==.
      0091F1 CD 86 E8         [ 4]  450 	call	_UART1_GetITStatus
      0091F4 85               [ 2]  451 	popw	x
                           00019E   452 	Sgps$UART1_RX_IRQHandler$101 ==.
      0091F5 4A               [ 1]  453 	dec	a
      0091F6 26 21            [ 1]  454 	jrne	00109$
                           0001A1   455 	Sgps$UART1_RX_IRQHandler$102 ==.
                           0001A1   456 	Sgps$UART1_RX_IRQHandler$103 ==.
                           0001A1   457 	Sgps$UART1_RX_IRQHandler$104 ==.
                                    458 ;	Source/Device/Src/gps.c: 97: if(num<34)
      0091F8 C6 00 53         [ 1]  459 	ld	a, _num+0
      0091FB A1 22            [ 1]  460 	cp	a, #0x22
      0091FD 24 14            [ 1]  461 	jrnc	00102$
                           0001A8   462 	Sgps$UART1_RX_IRQHandler$105 ==.
                           0001A8   463 	Sgps$UART1_RX_IRQHandler$106 ==.
                                    464 ;	Source/Device/Src/gps.c: 99: GPS_RxBuf[num]=UART1_ReceiveData8();
      0091FF 5F               [ 1]  465 	clrw	x
      009200 C6 00 53         [ 1]  466 	ld	a, _num+0
      009203 97               [ 1]  467 	ld	xl, a
      009204 1C 00 31         [ 2]  468 	addw	x, #(_GPS_RxBuf + 0)
      009207 89               [ 2]  469 	pushw	x
                           0001B1   470 	Sgps$UART1_RX_IRQHandler$107 ==.
      009208 CD 86 99         [ 4]  471 	call	_UART1_ReceiveData8
      00920B 85               [ 2]  472 	popw	x
                           0001B5   473 	Sgps$UART1_RX_IRQHandler$108 ==.
      00920C F7               [ 1]  474 	ld	(x), a
                           0001B6   475 	Sgps$UART1_RX_IRQHandler$109 ==.
                                    476 ;	Source/Device/Src/gps.c: 100: ++num;
      00920D 72 5C 00 53      [ 1]  477 	inc	_num+0
                           0001BA   478 	Sgps$UART1_RX_IRQHandler$110 ==.
      009211 20 21            [ 2]  479 	jra	00111$
      009213                        480 00102$:
                           0001BC   481 	Sgps$UART1_RX_IRQHandler$111 ==.
                                    482 ;	Source/Device/Src/gps.c: 103: num=0;
      009213 72 5F 00 53      [ 1]  483 	clr	_num+0
                           0001C0   484 	Sgps$UART1_RX_IRQHandler$112 ==.
      009217 20 1B            [ 2]  485 	jra	00111$
      009219                        486 00109$:
                           0001C2   487 	Sgps$UART1_RX_IRQHandler$113 ==.
                                    488 ;	Source/Device/Src/gps.c: 105: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      009219 4B 44            [ 1]  489 	push	#0x44
                           0001C4   490 	Sgps$UART1_RX_IRQHandler$114 ==.
      00921B 4B 02            [ 1]  491 	push	#0x02
                           0001C6   492 	Sgps$UART1_RX_IRQHandler$115 ==.
      00921D CD 86 E8         [ 4]  493 	call	_UART1_GetITStatus
      009220 85               [ 2]  494 	popw	x
                           0001CA   495 	Sgps$UART1_RX_IRQHandler$116 ==.
      009221 4A               [ 1]  496 	dec	a
      009222 26 10            [ 1]  497 	jrne	00111$
                           0001CD   498 	Sgps$UART1_RX_IRQHandler$117 ==.
                           0001CD   499 	Sgps$UART1_RX_IRQHandler$118 ==.
                           0001CD   500 	Sgps$UART1_RX_IRQHandler$119 ==.
                                    501 ;	Source/Device/Src/gps.c: 107: UART1_ReceiveData8();
      009224 CD 86 99         [ 4]  502 	call	_UART1_ReceiveData8
                           0001D0   503 	Sgps$UART1_RX_IRQHandler$120 ==.
                                    504 ;	Source/Device/Src/gps.c: 108: num=0;
      009227 72 5F 00 53      [ 1]  505 	clr	_num+0
                           0001D4   506 	Sgps$UART1_RX_IRQHandler$121 ==.
                                    507 ;	Source/Device/Src/gps.c: 109: if(checksum()==SUCCESS)
      00922B CD 92 35         [ 4]  508 	call	_checksum
      00922E 4A               [ 1]  509 	dec	a
      00922F 26 03            [ 1]  510 	jrne	00111$
                           0001DA   511 	Sgps$UART1_RX_IRQHandler$122 ==.
                           0001DA   512 	Sgps$UART1_RX_IRQHandler$123 ==.
                           0001DA   513 	Sgps$UART1_RX_IRQHandler$124 ==.
                                    514 ;	Source/Device/Src/gps.c: 111: GPS_GetTime();
      009231 CD 91 8B         [ 4]  515 	call	_GPS_GetTime
                           0001DD   516 	Sgps$UART1_RX_IRQHandler$125 ==.
      009234                        517 00111$:
                           0001DD   518 	Sgps$UART1_RX_IRQHandler$126 ==.
                                    519 ;	Source/Device/Src/gps.c: 114: }
                           0001DD   520 	Sgps$UART1_RX_IRQHandler$127 ==.
                           0001DD   521 	XG$UART1_RX_IRQHandler$0$0 ==.
      009234 80               [11]  522 	iret
                           0001DE   523 	Sgps$UART1_RX_IRQHandler$128 ==.
                           0001DE   524 	Sgps$checksum$129 ==.
                                    525 ;	Source/Device/Src/gps.c: 122: static ErrorStatus checksum(void)
                                    526 ;	-----------------------------------------
                                    527 ;	 function checksum
                                    528 ;	-----------------------------------------
      009235                        529 _checksum:
                           0001DE   530 	Sgps$checksum$130 ==.
      009235 52 0E            [ 2]  531 	sub	sp, #14
                           0001E0   532 	Sgps$checksum$131 ==.
                           0001E0   533 	Sgps$checksum$132 ==.
                                    534 ;	Source/Device/Src/gps.c: 125: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      009237 C6 00 36         [ 1]  535 	ld	a, _GPS_RxBuf+5
      00923A 0F 05            [ 1]  536 	clr	(0x05, sp)
      00923C 6B 0A            [ 1]  537 	ld	(0x0a, sp), a
      00923E 5F               [ 1]  538 	clrw	x
      00923F 0F 0B            [ 1]  539 	clr	(0x0b, sp)
      009241 90 AE 00 33      [ 2]  540 	ldw	y, #(_GPS_RxBuf + 0)+2
      009245 C6 00 34         [ 1]  541 	ld	a, _GPS_RxBuf+3
      009248 6B 0E            [ 1]  542 	ld	(0x0e, sp), a
      00924A 5D               [ 2]  543 	tnzw	x
      00924B 26 3D            [ 1]  544 	jrne	00111$
      00924D 1E 0A            [ 2]  545 	ldw	x, (0x0a, sp)
      00924F 26 39            [ 1]  546 	jrne	00111$
      009251 C6 00 35         [ 1]  547 	ld	a, _GPS_RxBuf+4
      009254 5F               [ 1]  548 	clrw	x
      009255 0F 0A            [ 1]  549 	clr	(0x0a, sp)
      009257 6B 0B            [ 1]  550 	ld	(0x0b, sp), a
      009259 9F               [ 1]  551 	ld	a, xl
      00925A 5F               [ 1]  552 	clrw	x
      00925B 5D               [ 2]  553 	tnzw	x
      00925C 26 2C            [ 1]  554 	jrne	00111$
      00925E 0D 0B            [ 1]  555 	tnz	(0x0b, sp)
      009260 26 28            [ 1]  556 	jrne	00111$
      009262 4D               [ 1]  557 	tnz	a
      009263 26 25            [ 1]  558 	jrne	00111$
      009265 90 F6            [ 1]  559 	ld	a, (y)
      009267 5F               [ 1]  560 	clrw	x
      009268 0F 0A            [ 1]  561 	clr	(0x0a, sp)
      00926A 0F 0D            [ 1]  562 	clr	(0x0d, sp)
      00926C 0D 0D            [ 1]  563 	tnz	(0x0d, sp)
      00926E 26 1A            [ 1]  564 	jrne	00111$
      009270 4D               [ 1]  565 	tnz	a
      009271 26 17            [ 1]  566 	jrne	00111$
      009273 5D               [ 2]  567 	tnzw	x
      009274 26 14            [ 1]  568 	jrne	00111$
      009276 7B 0E            [ 1]  569 	ld	a, (0x0e, sp)
      009278 0F 0C            [ 1]  570 	clr	(0x0c, sp)
      00927A 5F               [ 1]  571 	clrw	x
      00927B 1F 0A            [ 2]  572 	ldw	(0x0a, sp), x
      00927D 97               [ 1]  573 	ld	xl, a
      00927E 7B 0C            [ 1]  574 	ld	a, (0x0c, sp)
      009280 95               [ 1]  575 	ld	xh, a
      009281 5D               [ 2]  576 	tnzw	x
      009282 26 06            [ 1]  577 	jrne	00111$
      009284 1E 0A            [ 2]  578 	ldw	x, (0x0a, sp)
      009286 26 02            [ 1]  579 	jrne	00111$
      009288 4F               [ 1]  580 	clr	a
      009289 C5                     581 	.byte 0xc5
      00928A                        582 00111$:
      00928A A6 01            [ 1]  583 	ld	a, #0x01
      00928C                        584 00112$:
      00928C 5F               [ 1]  585 	clrw	x
      00928D 0F 0A            [ 1]  586 	clr	(0x0a, sp)
      00928F 6B 04            [ 1]  587 	ld	(0x04, sp), a
      009291 1F 02            [ 2]  588 	ldw	(0x02, sp), x
      009293 7B 0A            [ 1]  589 	ld	a, (0x0a, sp)
      009295 6B 01            [ 1]  590 	ld	(0x01, sp), a
                           000240   591 	Sgps$checksum$133 ==.
                           000240   592 	Sgps$checksum$134 ==.
                                    593 ;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      009297 7B 0E            [ 1]  594 	ld	a, (0x0e, sp)
      009299 6B 05            [ 1]  595 	ld	(0x05, sp), a
      00929B 17 06            [ 2]  596 	ldw	(0x06, sp), y
                           000246   597 	Sgps$checksum$135 ==.
      00929D 5F               [ 1]  598 	clrw	x
      00929E 1F 0D            [ 2]  599 	ldw	(0x0d, sp), x
      0092A0                        600 00106$:
      0092A0 1E 06            [ 2]  601 	ldw	x, (0x06, sp)
      0092A2 F6               [ 1]  602 	ld	a, (x)
      0092A3 95               [ 1]  603 	ld	xh, a
      0092A4 4F               [ 1]  604 	clr	a
      0092A5 97               [ 1]  605 	ld	xl, a
      0092A6 5D               [ 2]  606 	tnzw	x
      0092A7 26 09            [ 1]  607 	jrne	00120$
      0092A9 7B 05            [ 1]  608 	ld	a, (0x05, sp)
      0092AB 5F               [ 1]  609 	clrw	x
      0092AC 97               [ 1]  610 	ld	xl, a
      0092AD 5D               [ 2]  611 	tnzw	x
      0092AE 26 02            [ 1]  612 	jrne	00120$
      0092B0 4F               [ 1]  613 	clr	a
      0092B1 C5                     614 	.byte 0xc5
      0092B2                        615 00120$:
      0092B2 A6 01            [ 1]  616 	ld	a, #0x01
      0092B4                        617 00121$:
      0092B4 5F               [ 1]  618 	clrw	x
      0092B5 97               [ 1]  619 	ld	xl, a
      0092B6 4B 04            [ 1]  620 	push	#0x04
                           000261   621 	Sgps$checksum$136 ==.
      0092B8 4B 00            [ 1]  622 	push	#0x00
                           000263   623 	Sgps$checksum$137 ==.
      0092BA 89               [ 2]  624 	pushw	x
                           000264   625 	Sgps$checksum$138 ==.
      0092BB CD 94 C7         [ 4]  626 	call	__divsint
      0092BE 5B 04            [ 2]  627 	addw	sp, #4
                           000269   628 	Sgps$checksum$139 ==.
      0092C0 16 0D            [ 2]  629 	ldw	y, (0x0d, sp)
      0092C2 1F 0B            [ 2]  630 	ldw	(0x0b, sp), x
      0092C4 93               [ 1]  631 	ldw	x, y
      0092C5 13 0B            [ 2]  632 	cpw	x, (0x0b, sp)
      0092C7 25 03            [ 1]  633 	jrc	00236$
      0092C9 CC 93 5D         [ 2]  634 	jp	00101$
      0092CC                        635 00236$:
                           000275   636 	Sgps$checksum$140 ==.
                                    637 ;	Source/Device/Src/gps.c: 129: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      0092CC 7B 0E            [ 1]  638 	ld	a, (0x0e, sp)
      0092CE 48               [ 1]  639 	sll	a
      0092CF 48               [ 1]  640 	sll	a
      0092D0 6B 08            [ 1]  641 	ld	(0x08, sp), a
      0092D2 AB 06            [ 1]  642 	add	a, #0x06
      0092D4 97               [ 1]  643 	ld	xl, a
      0092D5 49               [ 1]  644 	rlc	a
      0092D6 4F               [ 1]  645 	clr	a
      0092D7 A2 00            [ 1]  646 	sbc	a, #0x00
      0092D9 95               [ 1]  647 	ld	xh, a
      0092DA 1C 00 31         [ 2]  648 	addw	x, #(_GPS_RxBuf + 0)
      0092DD F6               [ 1]  649 	ld	a, (x)
      0092DE 0F 09            [ 1]  650 	clr	(0x09, sp)
      0092E0 6B 09            [ 1]  651 	ld	(0x09, sp), a
      0092E2 5F               [ 1]  652 	clrw	x
      0092E3 1F 0B            [ 2]  653 	ldw	(0x0b, sp), x
      0092E5 0F 0A            [ 1]  654 	clr	(0x0a, sp)
      0092E7 1E 0B            [ 2]  655 	ldw	x, (0x0b, sp)
      0092E9 26 50            [ 1]  656 	jrne	00123$
      0092EB 1E 09            [ 2]  657 	ldw	x, (0x09, sp)
      0092ED 26 4C            [ 1]  658 	jrne	00123$
      0092EF 7B 08            [ 1]  659 	ld	a, (0x08, sp)
      0092F1 AB 07            [ 1]  660 	add	a, #0x07
      0092F3 97               [ 1]  661 	ld	xl, a
      0092F4 49               [ 1]  662 	rlc	a
      0092F5 4F               [ 1]  663 	clr	a
      0092F6 A2 00            [ 1]  664 	sbc	a, #0x00
      0092F8 95               [ 1]  665 	ld	xh, a
      0092F9 1C 00 31         [ 2]  666 	addw	x, #(_GPS_RxBuf + 0)
      0092FC F6               [ 1]  667 	ld	a, (x)
      0092FD 5F               [ 1]  668 	clrw	x
      0092FE 97               [ 1]  669 	ld	xl, a
      0092FF 90 5F            [ 1]  670 	clrw	y
      009301 90 5D            [ 2]  671 	tnzw	y
      009303 26 36            [ 1]  672 	jrne	00123$
      009305 5D               [ 2]  673 	tnzw	x
      009306 26 33            [ 1]  674 	jrne	00123$
                           0002B1   675 	Sgps$checksum$141 ==.
                                    676 ;	Source/Device/Src/gps.c: 130: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      009308 7B 08            [ 1]  677 	ld	a, (0x08, sp)
      00930A AB 08            [ 1]  678 	add	a, #0x08
      00930C 97               [ 1]  679 	ld	xl, a
      00930D 49               [ 1]  680 	rlc	a
      00930E 4F               [ 1]  681 	clr	a
      00930F A2 00            [ 1]  682 	sbc	a, #0x00
      009311 95               [ 1]  683 	ld	xh, a
      009312 1C 00 31         [ 2]  684 	addw	x, #(_GPS_RxBuf + 0)
      009315 F6               [ 1]  685 	ld	a, (x)
      009316 90 5F            [ 1]  686 	clrw	y
      009318 95               [ 1]  687 	ld	xh, a
      009319 4F               [ 1]  688 	clr	a
      00931A 97               [ 1]  689 	ld	xl, a
      00931B 5D               [ 2]  690 	tnzw	x
      00931C 26 1D            [ 1]  691 	jrne	00123$
      00931E 90 5D            [ 2]  692 	tnzw	y
      009320 26 19            [ 1]  693 	jrne	00123$
      009322 7B 08            [ 1]  694 	ld	a, (0x08, sp)
      009324 AB 09            [ 1]  695 	add	a, #0x09
      009326 97               [ 1]  696 	ld	xl, a
      009327 49               [ 1]  697 	rlc	a
      009328 4F               [ 1]  698 	clr	a
      009329 A2 00            [ 1]  699 	sbc	a, #0x00
      00932B 95               [ 1]  700 	ld	xh, a
      00932C 1C 00 31         [ 2]  701 	addw	x, #(_GPS_RxBuf + 0)
      00932F F6               [ 1]  702 	ld	a, (x)
      009330 5F               [ 1]  703 	clrw	x
      009331 97               [ 1]  704 	ld	xl, a
      009332 90 5F            [ 1]  705 	clrw	y
      009334 5D               [ 2]  706 	tnzw	x
      009335 26 04            [ 1]  707 	jrne	00123$
      009337 90 5D            [ 2]  708 	tnzw	y
      009339 27 04            [ 1]  709 	jreq	00124$
      00933B                        710 00123$:
      00933B A6 01            [ 1]  711 	ld	a, #0x01
      00933D 90 97            [ 1]  712 	ld	yl, a
      00933F                        713 00124$:
      00933F 4F               [ 1]  714 	clr	a
      009340 5F               [ 1]  715 	clrw	x
      009341 4D               [ 1]  716 	tnz	a
      009342 2A 01            [ 1]  717 	jrpl	00245$
      009344 5A               [ 2]  718 	decw	x
      009345                        719 00245$:
      009345 90 95            [ 1]  720 	ld	yh, a
      009347 72 F9 03         [ 2]  721 	addw	y, (0x03, sp)
      00934A 9F               [ 1]  722 	ld	a, xl
      00934B 19 02            [ 1]  723 	adc	a, (0x02, sp)
      00934D 02               [ 1]  724 	rlwa	x
      00934E 19 01            [ 1]  725 	adc	a, (0x01, sp)
      009350 95               [ 1]  726 	ld	xh, a
      009351 17 03            [ 2]  727 	ldw	(0x03, sp), y
      009353 1F 01            [ 2]  728 	ldw	(0x01, sp), x
                           0002FE   729 	Sgps$checksum$142 ==.
                                    730 ;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      009355 1E 0D            [ 2]  731 	ldw	x, (0x0d, sp)
      009357 5C               [ 1]  732 	incw	x
      009358 1F 0D            [ 2]  733 	ldw	(0x0d, sp), x
      00935A CC 92 A0         [ 2]  734 	jp	00106$
      00935D                        735 00101$:
                           000306   736 	Sgps$checksum$143 ==.
                                    737 ;	Source/Device/Src/gps.c: 132: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      00935D C6 00 4F         [ 1]  738 	ld	a, _GPS_RxBuf+30
      009360 0F 0B            [ 1]  739 	clr	(0x0b, sp)
      009362 6B 0B            [ 1]  740 	ld	(0x0b, sp), a
      009364 5F               [ 1]  741 	clrw	x
      009365 0F 0C            [ 1]  742 	clr	(0x0c, sp)
      009367 5D               [ 2]  743 	tnzw	x
      009368 26 34            [ 1]  744 	jrne	00132$
      00936A 1E 0B            [ 2]  745 	ldw	x, (0x0b, sp)
      00936C 26 30            [ 1]  746 	jrne	00132$
      00936E C6 00 50         [ 1]  747 	ld	a, _GPS_RxBuf+31
      009371 5F               [ 1]  748 	clrw	x
      009372 97               [ 1]  749 	ld	xl, a
      009373 90 5F            [ 1]  750 	clrw	y
      009375 90 5D            [ 2]  751 	tnzw	y
      009377 26 25            [ 1]  752 	jrne	00132$
      009379 5D               [ 2]  753 	tnzw	x
      00937A 26 22            [ 1]  754 	jrne	00132$
                           000325   755 	Sgps$checksum$144 ==.
                                    756 ;	Source/Device/Src/gps.c: 133: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      00937C C6 00 51         [ 1]  757 	ld	a, _GPS_RxBuf+32
      00937F 5F               [ 1]  758 	clrw	x
      009380 0F 0B            [ 1]  759 	clr	(0x0b, sp)
      009382 6B 0D            [ 1]  760 	ld	(0x0d, sp), a
      009384 5E               [ 1]  761 	swapw	x
      009385 0F 0E            [ 1]  762 	clr	(0x0e, sp)
      009387 16 0D            [ 2]  763 	ldw	y, (0x0d, sp)
      009389 26 13            [ 1]  764 	jrne	00132$
      00938B 5D               [ 2]  765 	tnzw	x
      00938C 26 10            [ 1]  766 	jrne	00132$
      00938E C6 00 52         [ 1]  767 	ld	a, _GPS_RxBuf+33
      009391 5F               [ 1]  768 	clrw	x
      009392 90 5F            [ 1]  769 	clrw	y
      009394 97               [ 1]  770 	ld	xl, a
      009395 5D               [ 2]  771 	tnzw	x
      009396 26 06            [ 1]  772 	jrne	00132$
      009398 90 5D            [ 2]  773 	tnzw	y
      00939A 26 02            [ 1]  774 	jrne	00132$
      00939C 4F               [ 1]  775 	clr	a
      00939D C5                     776 	.byte 0xc5
      00939E                        777 00132$:
      00939E A6 01            [ 1]  778 	ld	a, #0x01
      0093A0                        779 00133$:
      0093A0 5F               [ 1]  780 	clrw	x
      0093A1 90 5F            [ 1]  781 	clrw	y
      0093A3 97               [ 1]  782 	ld	xl, a
      0093A4 13 03            [ 2]  783 	cpw	x, (0x03, sp)
      0093A6 26 09            [ 1]  784 	jrne	00103$
      0093A8 93               [ 1]  785 	ldw	x, y
      0093A9 13 01            [ 2]  786 	cpw	x, (0x01, sp)
      0093AB 26 04            [ 1]  787 	jrne	00103$
                           000356   788 	Sgps$checksum$145 ==.
                           000356   789 	Sgps$checksum$146 ==.
                                    790 ;	Source/Device/Src/gps.c: 134: return SUCCESS;
      0093AD A6 01            [ 1]  791 	ld	a, #0x01
      0093AF 20 01            [ 2]  792 	jra	00108$
      0093B1                        793 00103$:
                           00035A   794 	Sgps$checksum$147 ==.
                                    795 ;	Source/Device/Src/gps.c: 136: return ERROR;
      0093B1 4F               [ 1]  796 	clr	a
      0093B2                        797 00108$:
                           00035B   798 	Sgps$checksum$148 ==.
                                    799 ;	Source/Device/Src/gps.c: 137: }
      0093B2 5B 0E            [ 2]  800 	addw	sp, #14
                           00035D   801 	Sgps$checksum$149 ==.
                           00035D   802 	Sgps$checksum$150 ==.
                           00035D   803 	XFgps$checksum$0$0 ==.
      0093B4 81               [ 4]  804 	ret
                           00035E   805 	Sgps$checksum$151 ==.
                                    806 	.area CODE
                                    807 	.area CONST
                                    808 	.area INITIALIZER
                           000000   809 Fgps$__xinit_GPS_RxBuf$0_0$0 == .
      00809F                        810 __xinit__GPS_RxBuf:
      00809F 00                     811 	.db #0x00	; 0
      0080A0 00                     812 	.db 0x00
      0080A1 00                     813 	.db 0x00
      0080A2 00                     814 	.db 0x00
      0080A3 00                     815 	.db 0x00
      0080A4 00                     816 	.db 0x00
      0080A5 00                     817 	.db 0x00
      0080A6 00                     818 	.db 0x00
      0080A7 00                     819 	.db 0x00
      0080A8 00                     820 	.db 0x00
      0080A9 00                     821 	.db 0x00
      0080AA 00                     822 	.db 0x00
      0080AB 00                     823 	.db 0x00
      0080AC 00                     824 	.db 0x00
      0080AD 00                     825 	.db 0x00
      0080AE 00                     826 	.db 0x00
      0080AF 00                     827 	.db 0x00
      0080B0 00                     828 	.db 0x00
      0080B1 00                     829 	.db 0x00
      0080B2 00                     830 	.db 0x00
      0080B3 00                     831 	.db 0x00
      0080B4 00                     832 	.db 0x00
      0080B5 00                     833 	.db 0x00
      0080B6 00                     834 	.db 0x00
      0080B7 00                     835 	.db 0x00
      0080B8 00                     836 	.db 0x00
      0080B9 00                     837 	.db 0x00
      0080BA 00                     838 	.db 0x00
      0080BB 00                     839 	.db 0x00
      0080BC 00                     840 	.db 0x00
      0080BD 00                     841 	.db 0x00
      0080BE 00                     842 	.db 0x00
      0080BF 00                     843 	.db 0x00
      0080C0 00                     844 	.db 0x00
                           000022   845 Fgps$__xinit_num$0_0$0 == .
      0080C1                        846 __xinit__num:
      0080C1 00                     847 	.db #0x00	; 0
                                    848 	.area CABS (ABS)
                                    849 
                                    850 	.area .debug_line (NOLOAD)
      001855 00 00 01 E7            851 	.dw	0,Ldebug_line_end-Ldebug_line_start
      001859                        852 Ldebug_line_start:
      001859 00 02                  853 	.dw	2
      00185B 00 00 00 78            854 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00185F 01                     855 	.db	1
      001860 01                     856 	.db	1
      001861 FB                     857 	.db	-5
      001862 0F                     858 	.db	15
      001863 0A                     859 	.db	10
      001864 00                     860 	.db	0
      001865 01                     861 	.db	1
      001866 01                     862 	.db	1
      001867 01                     863 	.db	1
      001868 01                     864 	.db	1
      001869 00                     865 	.db	0
      00186A 00                     866 	.db	0
      00186B 00                     867 	.db	0
      00186C 01                     868 	.db	1
      00186D 43 3A 5C 50 72 6F 67   869 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001895 00                     870 	.db	0
      001896 43 3A 5C 50 72 6F 67   871 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0018B9 00                     872 	.db	0
      0018BA 00                     873 	.db	0
      0018BB 53 6F 75 72 63 65 2F   874 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      0018D2 00                     875 	.db	0
      0018D3 00                     876 	.uleb128	0
      0018D4 00                     877 	.uleb128	0
      0018D5 00                     878 	.uleb128	0
      0018D6 00                     879 	.db	0
      0018D7                        880 Ldebug_line_stmt:
      0018D7 00                     881 	.db	0
      0018D8 05                     882 	.uleb128	5
      0018D9 02                     883 	.db	2
      0018DA 00 00 90 57            884 	.dw	0,(Sgps$GPS_Init$0)
      0018DE 03                     885 	.db	3
      0018DF 1F                     886 	.sleb128	31
      0018E0 01                     887 	.db	1
      0018E1 09                     888 	.db	9
      0018E2 00 02                  889 	.dw	Sgps$GPS_Init$3-Sgps$GPS_Init$0
      0018E4 03                     890 	.db	3
      0018E5 02                     891 	.sleb128	2
      0018E6 01                     892 	.db	1
      0018E7 09                     893 	.db	9
      0018E8 00 0D                  894 	.dw	Sgps$GPS_Init$9-Sgps$GPS_Init$3
      0018EA 03                     895 	.db	3
      0018EB 01                     896 	.sleb128	1
      0018EC 01                     897 	.db	1
      0018ED 09                     898 	.db	9
      0018EE 00 0D                  899 	.dw	Sgps$GPS_Init$15-Sgps$GPS_Init$9
      0018F0 03                     900 	.db	3
      0018F1 01                     901 	.sleb128	1
      0018F2 01                     902 	.db	1
      0018F3 09                     903 	.db	9
      0018F4 00 03                  904 	.dw	Sgps$GPS_Init$16-Sgps$GPS_Init$15
      0018F6 03                     905 	.db	3
      0018F7 01                     906 	.sleb128	1
      0018F8 01                     907 	.db	1
      0018F9 09                     908 	.db	9
      0018FA 00 15                  909 	.dw	Sgps$GPS_Init$26-Sgps$GPS_Init$16
      0018FC 03                     910 	.db	3
      0018FD 06                     911 	.sleb128	6
      0018FE 01                     912 	.db	1
      0018FF 09                     913 	.db	9
      001900 00 0B                  914 	.dw	Sgps$GPS_Init$31-Sgps$GPS_Init$26
      001902 03                     915 	.db	3
      001903 01                     916 	.sleb128	1
      001904 01                     917 	.db	1
      001905 09                     918 	.db	9
      001906 00 0B                  919 	.dw	Sgps$GPS_Init$36-Sgps$GPS_Init$31
      001908 03                     920 	.db	3
      001909 01                     921 	.sleb128	1
      00190A 01                     922 	.db	1
      00190B 09                     923 	.db	9
      00190C 00 06                  924 	.dw	Sgps$GPS_Init$40-Sgps$GPS_Init$36
      00190E 03                     925 	.db	3
      00190F 03                     926 	.sleb128	3
      001910 01                     927 	.db	1
      001911 09                     928 	.db	9
      001912 00 41                  929 	.dw	Sgps$GPS_Init$41-Sgps$GPS_Init$40
      001914 03                     930 	.db	3
      001915 01                     931 	.sleb128	1
      001916 01                     932 	.db	1
      001917 09                     933 	.db	9
      001918 00 4A                  934 	.dw	Sgps$GPS_Init$42-Sgps$GPS_Init$41
      00191A 03                     935 	.db	3
      00191B 03                     936 	.sleb128	3
      00191C 01                     937 	.db	1
      00191D 09                     938 	.db	9
      00191E 00 08                  939 	.dw	Sgps$GPS_Init$45-Sgps$GPS_Init$42
      001920 03                     940 	.db	3
      001921 02                     941 	.sleb128	2
      001922 01                     942 	.db	1
      001923 09                     943 	.db	9
      001924 00 0B                  944 	.dw	Sgps$GPS_Init$50-Sgps$GPS_Init$45
      001926 03                     945 	.db	3
      001927 01                     946 	.sleb128	1
      001928 01                     947 	.db	1
      001929 09                     948 	.db	9
      00192A 00 14                  949 	.dw	Sgps$GPS_Init$56-Sgps$GPS_Init$50
      00192C 03                     950 	.db	3
      00192D 7D                     951 	.sleb128	-3
      00192E 01                     952 	.db	1
      00192F 09                     953 	.db	9
      001930 00 04                  954 	.dw	Sgps$GPS_Init$58-Sgps$GPS_Init$56
      001932 03                     955 	.db	3
      001933 0C                     956 	.sleb128	12
      001934 01                     957 	.db	1
      001935 09                     958 	.db	9
      001936 00 08                  959 	.dw	Sgps$GPS_Init$61-Sgps$GPS_Init$58
      001938 03                     960 	.db	3
      001939 02                     961 	.sleb128	2
      00193A 01                     962 	.db	1
      00193B 09                     963 	.db	9
      00193C 00 0B                  964 	.dw	Sgps$GPS_Init$66-Sgps$GPS_Init$61
      00193E 03                     965 	.db	3
      00193F 01                     966 	.sleb128	1
      001940 01                     967 	.db	1
      001941 09                     968 	.db	9
      001942 00 14                  969 	.dw	Sgps$GPS_Init$72-Sgps$GPS_Init$66
      001944 03                     970 	.db	3
      001945 7D                     971 	.sleb128	-3
      001946 01                     972 	.db	1
      001947 09                     973 	.db	9
      001948 00 04                  974 	.dw	Sgps$GPS_Init$74-Sgps$GPS_Init$72
      00194A 03                     975 	.db	3
      00194B 05                     976 	.sleb128	5
      00194C 01                     977 	.db	1
      00194D 09                     978 	.db	9
      00194E 00 03                  979 	.dw	1+Sgps$GPS_Init$76-Sgps$GPS_Init$74
      001950 00                     980 	.db	0
      001951 01                     981 	.uleb128	1
      001952 01                     982 	.db	1
      001953 00                     983 	.db	0
      001954 05                     984 	.uleb128	5
      001955 02                     985 	.db	2
      001956 00 00 91 8B            986 	.dw	0,(Sgps$GPS_GetTime$78)
      00195A 03                     987 	.db	3
      00195B C9 00                  988 	.sleb128	73
      00195D 01                     989 	.db	1
      00195E 09                     990 	.db	9
      00195F 00 02                  991 	.dw	Sgps$GPS_GetTime$82-Sgps$GPS_GetTime$78
      001961 03                     992 	.db	3
      001962 04                     993 	.sleb128	4
      001963 01                     994 	.db	1
      001964 09                     995 	.db	9
      001965 00 08                  996 	.dw	Sgps$GPS_GetTime$84-Sgps$GPS_GetTime$82
      001967 03                     997 	.db	3
      001968 01                     998 	.sleb128	1
      001969 01                     999 	.db	1
      00196A 09                    1000 	.db	9
      00196B 00 1F                 1001 	.dw	Sgps$GPS_GetTime$85-Sgps$GPS_GetTime$84
      00196D 03                    1002 	.db	3
      00196E 7F                    1003 	.sleb128	-1
      00196F 01                    1004 	.db	1
      001970 09                    1005 	.db	9
      001971 00 04                 1006 	.dw	Sgps$GPS_GetTime$86-Sgps$GPS_GetTime$85
      001973 03                    1007 	.db	3
      001974 02                    1008 	.sleb128	2
      001975 01                    1009 	.db	1
      001976 09                    1010 	.db	9
      001977 00 0B                 1011 	.dw	Sgps$GPS_GetTime$87-Sgps$GPS_GetTime$86
      001979 03                    1012 	.db	3
      00197A 01                    1013 	.sleb128	1
      00197B 01                    1014 	.db	1
      00197C 09                    1015 	.db	9
      00197D 00 00                 1016 	.dw	Sgps$GPS_GetTime$88-Sgps$GPS_GetTime$87
      00197F 03                    1017 	.db	3
      001980 7F                    1018 	.sleb128	-1
      001981 01                    1019 	.db	1
      001982 09                    1020 	.db	9
      001983 00 05                 1021 	.dw	Sgps$GPS_GetTime$89-Sgps$GPS_GetTime$88
      001985 03                    1022 	.db	3
      001986 01                    1023 	.sleb128	1
      001987 01                    1024 	.db	1
      001988 09                    1025 	.db	9
      001989 00 06                 1026 	.dw	Sgps$GPS_GetTime$90-Sgps$GPS_GetTime$89
      00198B 03                    1027 	.db	3
      00198C 02                    1028 	.sleb128	2
      00198D 01                    1029 	.db	1
      00198E 09                    1030 	.db	9
      00198F 00 04                 1031 	.dw	Sgps$GPS_GetTime$91-Sgps$GPS_GetTime$90
      001991 03                    1032 	.db	3
      001992 01                    1033 	.sleb128	1
      001993 01                    1034 	.db	1
      001994 09                    1035 	.db	9
      001995 00 17                 1036 	.dw	Sgps$GPS_GetTime$92-Sgps$GPS_GetTime$91
      001997 03                    1037 	.db	3
      001998 01                    1038 	.sleb128	1
      001999 01                    1039 	.db	1
      00199A 09                    1040 	.db	9
      00199B 00 03                 1041 	.dw	1+Sgps$GPS_GetTime$94-Sgps$GPS_GetTime$92
      00199D 00                    1042 	.db	0
      00199E 01                    1043 	.uleb128	1
      00199F 01                    1044 	.db	1
      0019A0 00                    1045 	.db	0
      0019A1 05                    1046 	.uleb128	5
      0019A2 02                    1047 	.db	2
      0019A3 00 00 91 EC           1048 	.dw	0,(Sgps$UART1_RX_IRQHandler$96)
      0019A7 03                    1049 	.db	3
      0019A8 DC 00                 1050 	.sleb128	92
      0019AA 01                    1051 	.db	1
      0019AB 09                    1052 	.db	9
      0019AC 00 01                 1053 	.dw	Sgps$UART1_RX_IRQHandler$98-Sgps$UART1_RX_IRQHandler$96
      0019AE 03                    1054 	.db	3
      0019AF 02                    1055 	.sleb128	2
      0019B0 01                    1056 	.db	1
      0019B1 09                    1057 	.db	9
      0019B2 00 0B                 1058 	.dw	Sgps$UART1_RX_IRQHandler$104-Sgps$UART1_RX_IRQHandler$98
      0019B4 03                    1059 	.db	3
      0019B5 02                    1060 	.sleb128	2
      0019B6 01                    1061 	.db	1
      0019B7 09                    1062 	.db	9
      0019B8 00 07                 1063 	.dw	Sgps$UART1_RX_IRQHandler$106-Sgps$UART1_RX_IRQHandler$104
      0019BA 03                    1064 	.db	3
      0019BB 02                    1065 	.sleb128	2
      0019BC 01                    1066 	.db	1
      0019BD 09                    1067 	.db	9
      0019BE 00 0E                 1068 	.dw	Sgps$UART1_RX_IRQHandler$109-Sgps$UART1_RX_IRQHandler$106
      0019C0 03                    1069 	.db	3
      0019C1 01                    1070 	.sleb128	1
      0019C2 01                    1071 	.db	1
      0019C3 09                    1072 	.db	9
      0019C4 00 06                 1073 	.dw	Sgps$UART1_RX_IRQHandler$111-Sgps$UART1_RX_IRQHandler$109
      0019C6 03                    1074 	.db	3
      0019C7 03                    1075 	.sleb128	3
      0019C8 01                    1076 	.db	1
      0019C9 09                    1077 	.db	9
      0019CA 00 06                 1078 	.dw	Sgps$UART1_RX_IRQHandler$113-Sgps$UART1_RX_IRQHandler$111
      0019CC 03                    1079 	.db	3
      0019CD 02                    1080 	.sleb128	2
      0019CE 01                    1081 	.db	1
      0019CF 09                    1082 	.db	9
      0019D0 00 0B                 1083 	.dw	Sgps$UART1_RX_IRQHandler$119-Sgps$UART1_RX_IRQHandler$113
      0019D2 03                    1084 	.db	3
      0019D3 02                    1085 	.sleb128	2
      0019D4 01                    1086 	.db	1
      0019D5 09                    1087 	.db	9
      0019D6 00 03                 1088 	.dw	Sgps$UART1_RX_IRQHandler$120-Sgps$UART1_RX_IRQHandler$119
      0019D8 03                    1089 	.db	3
      0019D9 01                    1090 	.sleb128	1
      0019DA 01                    1091 	.db	1
      0019DB 09                    1092 	.db	9
      0019DC 00 04                 1093 	.dw	Sgps$UART1_RX_IRQHandler$121-Sgps$UART1_RX_IRQHandler$120
      0019DE 03                    1094 	.db	3
      0019DF 01                    1095 	.sleb128	1
      0019E0 01                    1096 	.db	1
      0019E1 09                    1097 	.db	9
      0019E2 00 06                 1098 	.dw	Sgps$UART1_RX_IRQHandler$124-Sgps$UART1_RX_IRQHandler$121
      0019E4 03                    1099 	.db	3
      0019E5 02                    1100 	.sleb128	2
      0019E6 01                    1101 	.db	1
      0019E7 09                    1102 	.db	9
      0019E8 00 03                 1103 	.dw	Sgps$UART1_RX_IRQHandler$126-Sgps$UART1_RX_IRQHandler$124
      0019EA 03                    1104 	.db	3
      0019EB 03                    1105 	.sleb128	3
      0019EC 01                    1106 	.db	1
      0019ED 09                    1107 	.db	9
      0019EE 00 01                 1108 	.dw	1+Sgps$UART1_RX_IRQHandler$127-Sgps$UART1_RX_IRQHandler$126
      0019F0 00                    1109 	.db	0
      0019F1 01                    1110 	.uleb128	1
      0019F2 01                    1111 	.db	1
      0019F3 00                    1112 	.db	0
      0019F4 05                    1113 	.uleb128	5
      0019F5 02                    1114 	.db	2
      0019F6 00 00 92 35           1115 	.dw	0,(Sgps$checksum$129)
      0019FA 03                    1116 	.db	3
      0019FB F9 00                 1117 	.sleb128	121
      0019FD 01                    1118 	.db	1
      0019FE 09                    1119 	.db	9
      0019FF 00 02                 1120 	.dw	Sgps$checksum$132-Sgps$checksum$129
      001A01 03                    1121 	.db	3
      001A02 03                    1122 	.sleb128	3
      001A03 01                    1123 	.db	1
      001A04 09                    1124 	.db	9
      001A05 00 60                 1125 	.dw	Sgps$checksum$134-Sgps$checksum$132
      001A07 03                    1126 	.db	3
      001A08 03                    1127 	.sleb128	3
      001A09 01                    1128 	.db	1
      001A0A 09                    1129 	.db	9
      001A0B 00 35                 1130 	.dw	Sgps$checksum$140-Sgps$checksum$134
      001A0D 03                    1131 	.db	3
      001A0E 01                    1132 	.sleb128	1
      001A0F 01                    1133 	.db	1
      001A10 09                    1134 	.db	9
      001A11 00 3C                 1135 	.dw	Sgps$checksum$141-Sgps$checksum$140
      001A13 03                    1136 	.db	3
      001A14 01                    1137 	.sleb128	1
      001A15 01                    1138 	.db	1
      001A16 09                    1139 	.db	9
      001A17 00 4D                 1140 	.dw	Sgps$checksum$142-Sgps$checksum$141
      001A19 03                    1141 	.db	3
      001A1A 7E                    1142 	.sleb128	-2
      001A1B 01                    1143 	.db	1
      001A1C 09                    1144 	.db	9
      001A1D 00 08                 1145 	.dw	Sgps$checksum$143-Sgps$checksum$142
      001A1F 03                    1146 	.db	3
      001A20 04                    1147 	.sleb128	4
      001A21 01                    1148 	.db	1
      001A22 09                    1149 	.db	9
      001A23 00 1F                 1150 	.dw	Sgps$checksum$144-Sgps$checksum$143
      001A25 03                    1151 	.db	3
      001A26 01                    1152 	.sleb128	1
      001A27 01                    1153 	.db	1
      001A28 09                    1154 	.db	9
      001A29 00 31                 1155 	.dw	Sgps$checksum$146-Sgps$checksum$144
      001A2B 03                    1156 	.db	3
      001A2C 01                    1157 	.sleb128	1
      001A2D 01                    1158 	.db	1
      001A2E 09                    1159 	.db	9
      001A2F 00 04                 1160 	.dw	Sgps$checksum$147-Sgps$checksum$146
      001A31 03                    1161 	.db	3
      001A32 02                    1162 	.sleb128	2
      001A33 01                    1163 	.db	1
      001A34 09                    1164 	.db	9
      001A35 00 01                 1165 	.dw	Sgps$checksum$148-Sgps$checksum$147
      001A37 03                    1166 	.db	3
      001A38 01                    1167 	.sleb128	1
      001A39 01                    1168 	.db	1
      001A3A 09                    1169 	.db	9
      001A3B 00 03                 1170 	.dw	1+Sgps$checksum$150-Sgps$checksum$148
      001A3D 00                    1171 	.db	0
      001A3E 01                    1172 	.uleb128	1
      001A3F 01                    1173 	.db	1
      001A40                       1174 Ldebug_line_end:
                                   1175 
                                   1176 	.area .debug_loc (NOLOAD)
      001500                       1177 Ldebug_loc_start:
      001500 00 00 93 B4           1178 	.dw	0,(Sgps$checksum$149)
      001504 00 00 93 B5           1179 	.dw	0,(Sgps$checksum$151)
      001508 00 02                 1180 	.dw	2
      00150A 78                    1181 	.db	120
      00150B 01                    1182 	.sleb128	1
      00150C 00 00 93 AD           1183 	.dw	0,(Sgps$checksum$145)
      001510 00 00 93 B4           1184 	.dw	0,(Sgps$checksum$149)
      001514 00 02                 1185 	.dw	2
      001516 78                    1186 	.db	120
      001517 0F                    1187 	.sleb128	15
      001518 00 00 92 C0           1188 	.dw	0,(Sgps$checksum$139)
      00151C 00 00 93 AD           1189 	.dw	0,(Sgps$checksum$145)
      001520 00 02                 1190 	.dw	2
      001522 78                    1191 	.db	120
      001523 0F                    1192 	.sleb128	15
      001524 00 00 92 BB           1193 	.dw	0,(Sgps$checksum$138)
      001528 00 00 92 C0           1194 	.dw	0,(Sgps$checksum$139)
      00152C 00 02                 1195 	.dw	2
      00152E 78                    1196 	.db	120
      00152F 13                    1197 	.sleb128	19
      001530 00 00 92 BA           1198 	.dw	0,(Sgps$checksum$137)
      001534 00 00 92 BB           1199 	.dw	0,(Sgps$checksum$138)
      001538 00 02                 1200 	.dw	2
      00153A 78                    1201 	.db	120
      00153B 11                    1202 	.sleb128	17
      00153C 00 00 92 B8           1203 	.dw	0,(Sgps$checksum$136)
      001540 00 00 92 BA           1204 	.dw	0,(Sgps$checksum$137)
      001544 00 02                 1205 	.dw	2
      001546 78                    1206 	.db	120
      001547 10                    1207 	.sleb128	16
      001548 00 00 92 37           1208 	.dw	0,(Sgps$checksum$131)
      00154C 00 00 92 B8           1209 	.dw	0,(Sgps$checksum$136)
      001550 00 02                 1210 	.dw	2
      001552 78                    1211 	.db	120
      001553 0F                    1212 	.sleb128	15
      001554 00 00 92 35           1213 	.dw	0,(Sgps$checksum$130)
      001558 00 00 92 37           1214 	.dw	0,(Sgps$checksum$131)
      00155C 00 02                 1215 	.dw	2
      00155E 78                    1216 	.db	120
      00155F 01                    1217 	.sleb128	1
      001560 00 00 00 00           1218 	.dw	0,0
      001564 00 00 00 00           1219 	.dw	0,0
      001568 00 00 92 31           1220 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      00156C 00 00 92 35           1221 	.dw	0,(Sgps$UART1_RX_IRQHandler$128)
      001570 00 02                 1222 	.dw	2
      001572 78                    1223 	.db	120
      001573 01                    1224 	.sleb128	1
      001574 00 00 92 24           1225 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      001578 00 00 92 31           1226 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      00157C 00 02                 1227 	.dw	2
      00157E 78                    1228 	.db	120
      00157F 01                    1229 	.sleb128	1
      001580 00 00 92 21           1230 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      001584 00 00 92 24           1231 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      001588 00 02                 1232 	.dw	2
      00158A 78                    1233 	.db	120
      00158B 01                    1234 	.sleb128	1
      00158C 00 00 92 1D           1235 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      001590 00 00 92 21           1236 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      001594 00 02                 1237 	.dw	2
      001596 78                    1238 	.db	120
      001597 03                    1239 	.sleb128	3
      001598 00 00 92 1B           1240 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      00159C 00 00 92 1D           1241 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      0015A0 00 02                 1242 	.dw	2
      0015A2 78                    1243 	.db	120
      0015A3 02                    1244 	.sleb128	2
      0015A4 00 00 92 0C           1245 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      0015A8 00 00 92 1B           1246 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      0015AC 00 02                 1247 	.dw	2
      0015AE 78                    1248 	.db	120
      0015AF 01                    1249 	.sleb128	1
      0015B0 00 00 92 08           1250 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      0015B4 00 00 92 0C           1251 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      0015B8 00 02                 1252 	.dw	2
      0015BA 78                    1253 	.db	120
      0015BB 03                    1254 	.sleb128	3
      0015BC 00 00 91 F8           1255 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      0015C0 00 00 92 08           1256 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      0015C4 00 02                 1257 	.dw	2
      0015C6 78                    1258 	.db	120
      0015C7 01                    1259 	.sleb128	1
      0015C8 00 00 91 F5           1260 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      0015CC 00 00 91 F8           1261 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      0015D0 00 02                 1262 	.dw	2
      0015D2 78                    1263 	.db	120
      0015D3 01                    1264 	.sleb128	1
      0015D4 00 00 91 F1           1265 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      0015D8 00 00 91 F5           1266 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      0015DC 00 02                 1267 	.dw	2
      0015DE 78                    1268 	.db	120
      0015DF 03                    1269 	.sleb128	3
      0015E0 00 00 91 EF           1270 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      0015E4 00 00 91 F1           1271 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      0015E8 00 02                 1272 	.dw	2
      0015EA 78                    1273 	.db	120
      0015EB 02                    1274 	.sleb128	2
      0015EC 00 00 91 ED           1275 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
      0015F0 00 00 91 EF           1276 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      0015F4 00 02                 1277 	.dw	2
      0015F6 78                    1278 	.db	120
      0015F7 01                    1279 	.sleb128	1
      0015F8 00 00 00 00           1280 	.dw	0,0
      0015FC 00 00 00 00           1281 	.dw	0,0
      001600 00 00 91 EB           1282 	.dw	0,(Sgps$GPS_GetTime$93)
      001604 00 00 91 EC           1283 	.dw	0,(Sgps$GPS_GetTime$95)
      001608 00 02                 1284 	.dw	2
      00160A 78                    1285 	.db	120
      00160B 01                    1286 	.sleb128	1
      00160C 00 00 91 8D           1287 	.dw	0,(Sgps$GPS_GetTime$80)
      001610 00 00 91 EB           1288 	.dw	0,(Sgps$GPS_GetTime$93)
      001614 00 02                 1289 	.dw	2
      001616 78                    1290 	.db	120
      001617 05                    1291 	.sleb128	5
      001618 00 00 91 8B           1292 	.dw	0,(Sgps$GPS_GetTime$79)
      00161C 00 00 91 8D           1293 	.dw	0,(Sgps$GPS_GetTime$80)
      001620 00 02                 1294 	.dw	2
      001622 78                    1295 	.db	120
      001623 01                    1296 	.sleb128	1
      001624 00 00 00 00           1297 	.dw	0,0
      001628 00 00 00 00           1298 	.dw	0,0
      00162C 00 00 91 8A           1299 	.dw	0,(Sgps$GPS_Init$75)
      001630 00 00 91 8B           1300 	.dw	0,(Sgps$GPS_Init$77)
      001634 00 02                 1301 	.dw	2
      001636 78                    1302 	.db	120
      001637 01                    1303 	.sleb128	1
      001638 00 00 91 84           1304 	.dw	0,(Sgps$GPS_Init$70)
      00163C 00 00 91 8A           1305 	.dw	0,(Sgps$GPS_Init$75)
      001640 00 02                 1306 	.dw	2
      001642 78                    1307 	.db	120
      001643 1F                    1308 	.sleb128	31
      001644 00 00 91 80           1309 	.dw	0,(Sgps$GPS_Init$69)
      001648 00 00 91 84           1310 	.dw	0,(Sgps$GPS_Init$70)
      00164C 00 02                 1311 	.dw	2
      00164E 78                    1312 	.db	120
      00164F 20                    1313 	.sleb128	32
      001650 00 00 91 7E           1314 	.dw	0,(Sgps$GPS_Init$68)
      001654 00 00 91 80           1315 	.dw	0,(Sgps$GPS_Init$69)
      001658 00 02                 1316 	.dw	2
      00165A 78                    1317 	.db	120
      00165B 1F                    1318 	.sleb128	31
      00165C 00 00 91 75           1319 	.dw	0,(Sgps$GPS_Init$67)
      001660 00 00 91 7E           1320 	.dw	0,(Sgps$GPS_Init$68)
      001664 00 02                 1321 	.dw	2
      001666 78                    1322 	.db	120
      001667 21                    1323 	.sleb128	33
      001668 00 00 91 70           1324 	.dw	0,(Sgps$GPS_Init$65)
      00166C 00 00 91 75           1325 	.dw	0,(Sgps$GPS_Init$67)
      001670 00 02                 1326 	.dw	2
      001672 78                    1327 	.db	120
      001673 1F                    1328 	.sleb128	31
      001674 00 00 91 6D           1329 	.dw	0,(Sgps$GPS_Init$64)
      001678 00 00 91 70           1330 	.dw	0,(Sgps$GPS_Init$65)
      00167C 00 02                 1331 	.dw	2
      00167E 78                    1332 	.db	120
      00167F 1F                    1333 	.sleb128	31
      001680 00 00 91 69           1334 	.dw	0,(Sgps$GPS_Init$63)
      001684 00 00 91 6D           1335 	.dw	0,(Sgps$GPS_Init$64)
      001688 00 02                 1336 	.dw	2
      00168A 78                    1337 	.db	120
      00168B 21                    1338 	.sleb128	33
      00168C 00 00 91 67           1339 	.dw	0,(Sgps$GPS_Init$62)
      001690 00 00 91 69           1340 	.dw	0,(Sgps$GPS_Init$63)
      001694 00 02                 1341 	.dw	2
      001696 78                    1342 	.db	120
      001697 20                    1343 	.sleb128	32
      001698 00 00 91 59           1344 	.dw	0,(Sgps$GPS_Init$54)
      00169C 00 00 91 67           1345 	.dw	0,(Sgps$GPS_Init$62)
      0016A0 00 02                 1346 	.dw	2
      0016A2 78                    1347 	.db	120
      0016A3 1F                    1348 	.sleb128	31
      0016A4 00 00 91 55           1349 	.dw	0,(Sgps$GPS_Init$53)
      0016A8 00 00 91 59           1350 	.dw	0,(Sgps$GPS_Init$54)
      0016AC 00 02                 1351 	.dw	2
      0016AE 78                    1352 	.db	120
      0016AF 20                    1353 	.sleb128	32
      0016B0 00 00 91 53           1354 	.dw	0,(Sgps$GPS_Init$52)
      0016B4 00 00 91 55           1355 	.dw	0,(Sgps$GPS_Init$53)
      0016B8 00 02                 1356 	.dw	2
      0016BA 78                    1357 	.db	120
      0016BB 1F                    1358 	.sleb128	31
      0016BC 00 00 91 4A           1359 	.dw	0,(Sgps$GPS_Init$51)
      0016C0 00 00 91 53           1360 	.dw	0,(Sgps$GPS_Init$52)
      0016C4 00 02                 1361 	.dw	2
      0016C6 78                    1362 	.db	120
      0016C7 21                    1363 	.sleb128	33
      0016C8 00 00 91 45           1364 	.dw	0,(Sgps$GPS_Init$49)
      0016CC 00 00 91 4A           1365 	.dw	0,(Sgps$GPS_Init$51)
      0016D0 00 02                 1366 	.dw	2
      0016D2 78                    1367 	.db	120
      0016D3 1F                    1368 	.sleb128	31
      0016D4 00 00 91 42           1369 	.dw	0,(Sgps$GPS_Init$48)
      0016D8 00 00 91 45           1370 	.dw	0,(Sgps$GPS_Init$49)
      0016DC 00 02                 1371 	.dw	2
      0016DE 78                    1372 	.db	120
      0016DF 1F                    1373 	.sleb128	31
      0016E0 00 00 91 3E           1374 	.dw	0,(Sgps$GPS_Init$47)
      0016E4 00 00 91 42           1375 	.dw	0,(Sgps$GPS_Init$48)
      0016E8 00 02                 1376 	.dw	2
      0016EA 78                    1377 	.db	120
      0016EB 21                    1378 	.sleb128	33
      0016EC 00 00 91 3C           1379 	.dw	0,(Sgps$GPS_Init$46)
      0016F0 00 00 91 3E           1380 	.dw	0,(Sgps$GPS_Init$47)
      0016F4 00 02                 1381 	.dw	2
      0016F6 78                    1382 	.db	120
      0016F7 20                    1383 	.sleb128	32
      0016F8 00 00 90 A7           1384 	.dw	0,(Sgps$GPS_Init$38)
      0016FC 00 00 91 3C           1385 	.dw	0,(Sgps$GPS_Init$46)
      001700 00 02                 1386 	.dw	2
      001702 78                    1387 	.db	120
      001703 1F                    1388 	.sleb128	31
      001704 00 00 90 A3           1389 	.dw	0,(Sgps$GPS_Init$37)
      001708 00 00 90 A7           1390 	.dw	0,(Sgps$GPS_Init$38)
      00170C 00 02                 1391 	.dw	2
      00170E 78                    1392 	.db	120
      00170F 20                    1393 	.sleb128	32
      001710 00 00 90 A1           1394 	.dw	0,(Sgps$GPS_Init$35)
      001714 00 00 90 A3           1395 	.dw	0,(Sgps$GPS_Init$37)
      001718 00 02                 1396 	.dw	2
      00171A 78                    1397 	.db	120
      00171B 1F                    1398 	.sleb128	31
      00171C 00 00 90 9C           1399 	.dw	0,(Sgps$GPS_Init$34)
      001720 00 00 90 A1           1400 	.dw	0,(Sgps$GPS_Init$35)
      001724 00 02                 1401 	.dw	2
      001726 78                    1402 	.db	120
      001727 22                    1403 	.sleb128	34
      001728 00 00 90 9A           1404 	.dw	0,(Sgps$GPS_Init$33)
      00172C 00 00 90 9C           1405 	.dw	0,(Sgps$GPS_Init$34)
      001730 00 02                 1406 	.dw	2
      001732 78                    1407 	.db	120
      001733 21                    1408 	.sleb128	33
      001734 00 00 90 98           1409 	.dw	0,(Sgps$GPS_Init$32)
      001738 00 00 90 9A           1410 	.dw	0,(Sgps$GPS_Init$33)
      00173C 00 02                 1411 	.dw	2
      00173E 78                    1412 	.db	120
      00173F 20                    1413 	.sleb128	32
      001740 00 00 90 96           1414 	.dw	0,(Sgps$GPS_Init$30)
      001744 00 00 90 98           1415 	.dw	0,(Sgps$GPS_Init$32)
      001748 00 02                 1416 	.dw	2
      00174A 78                    1417 	.db	120
      00174B 1F                    1418 	.sleb128	31
      00174C 00 00 90 91           1419 	.dw	0,(Sgps$GPS_Init$29)
      001750 00 00 90 96           1420 	.dw	0,(Sgps$GPS_Init$30)
      001754 00 02                 1421 	.dw	2
      001756 78                    1422 	.db	120
      001757 22                    1423 	.sleb128	34
      001758 00 00 90 8F           1424 	.dw	0,(Sgps$GPS_Init$28)
      00175C 00 00 90 91           1425 	.dw	0,(Sgps$GPS_Init$29)
      001760 00 02                 1426 	.dw	2
      001762 78                    1427 	.db	120
      001763 21                    1428 	.sleb128	33
      001764 00 00 90 8D           1429 	.dw	0,(Sgps$GPS_Init$27)
      001768 00 00 90 8F           1430 	.dw	0,(Sgps$GPS_Init$28)
      00176C 00 02                 1431 	.dw	2
      00176E 78                    1432 	.db	120
      00176F 20                    1433 	.sleb128	32
      001770 00 00 90 8B           1434 	.dw	0,(Sgps$GPS_Init$25)
      001774 00 00 90 8D           1435 	.dw	0,(Sgps$GPS_Init$27)
      001778 00 02                 1436 	.dw	2
      00177A 78                    1437 	.db	120
      00177B 1F                    1438 	.sleb128	31
      00177C 00 00 90 86           1439 	.dw	0,(Sgps$GPS_Init$24)
      001780 00 00 90 8B           1440 	.dw	0,(Sgps$GPS_Init$25)
      001784 00 02                 1441 	.dw	2
      001786 78                    1442 	.db	120
      001787 28                    1443 	.sleb128	40
      001788 00 00 90 84           1444 	.dw	0,(Sgps$GPS_Init$23)
      00178C 00 00 90 86           1445 	.dw	0,(Sgps$GPS_Init$24)
      001790 00 02                 1446 	.dw	2
      001792 78                    1447 	.db	120
      001793 26                    1448 	.sleb128	38
      001794 00 00 90 82           1449 	.dw	0,(Sgps$GPS_Init$22)
      001798 00 00 90 84           1450 	.dw	0,(Sgps$GPS_Init$23)
      00179C 00 02                 1451 	.dw	2
      00179E 78                    1452 	.db	120
      00179F 25                    1453 	.sleb128	37
      0017A0 00 00 90 80           1454 	.dw	0,(Sgps$GPS_Init$21)
      0017A4 00 00 90 82           1455 	.dw	0,(Sgps$GPS_Init$22)
      0017A8 00 02                 1456 	.dw	2
      0017AA 78                    1457 	.db	120
      0017AB 24                    1458 	.sleb128	36
      0017AC 00 00 90 7E           1459 	.dw	0,(Sgps$GPS_Init$20)
      0017B0 00 00 90 80           1460 	.dw	0,(Sgps$GPS_Init$21)
      0017B4 00 02                 1461 	.dw	2
      0017B6 78                    1462 	.db	120
      0017B7 23                    1463 	.sleb128	35
      0017B8 00 00 90 7C           1464 	.dw	0,(Sgps$GPS_Init$19)
      0017BC 00 00 90 7E           1465 	.dw	0,(Sgps$GPS_Init$20)
      0017C0 00 02                 1466 	.dw	2
      0017C2 78                    1467 	.db	120
      0017C3 22                    1468 	.sleb128	34
      0017C4 00 00 90 7A           1469 	.dw	0,(Sgps$GPS_Init$18)
      0017C8 00 00 90 7C           1470 	.dw	0,(Sgps$GPS_Init$19)
      0017CC 00 02                 1471 	.dw	2
      0017CE 78                    1472 	.db	120
      0017CF 21                    1473 	.sleb128	33
      0017D0 00 00 90 78           1474 	.dw	0,(Sgps$GPS_Init$17)
      0017D4 00 00 90 7A           1475 	.dw	0,(Sgps$GPS_Init$18)
      0017D8 00 02                 1476 	.dw	2
      0017DA 78                    1477 	.db	120
      0017DB 20                    1478 	.sleb128	32
      0017DC 00 00 90 73           1479 	.dw	0,(Sgps$GPS_Init$14)
      0017E0 00 00 90 78           1480 	.dw	0,(Sgps$GPS_Init$17)
      0017E4 00 02                 1481 	.dw	2
      0017E6 78                    1482 	.db	120
      0017E7 1F                    1483 	.sleb128	31
      0017E8 00 00 90 6E           1484 	.dw	0,(Sgps$GPS_Init$13)
      0017EC 00 00 90 73           1485 	.dw	0,(Sgps$GPS_Init$14)
      0017F0 00 02                 1486 	.dw	2
      0017F2 78                    1487 	.db	120
      0017F3 23                    1488 	.sleb128	35
      0017F4 00 00 90 6C           1489 	.dw	0,(Sgps$GPS_Init$12)
      0017F8 00 00 90 6E           1490 	.dw	0,(Sgps$GPS_Init$13)
      0017FC 00 02                 1491 	.dw	2
      0017FE 78                    1492 	.db	120
      0017FF 22                    1493 	.sleb128	34
      001800 00 00 90 6A           1494 	.dw	0,(Sgps$GPS_Init$11)
      001804 00 00 90 6C           1495 	.dw	0,(Sgps$GPS_Init$12)
      001808 00 02                 1496 	.dw	2
      00180A 78                    1497 	.db	120
      00180B 21                    1498 	.sleb128	33
      00180C 00 00 90 68           1499 	.dw	0,(Sgps$GPS_Init$10)
      001810 00 00 90 6A           1500 	.dw	0,(Sgps$GPS_Init$11)
      001814 00 02                 1501 	.dw	2
      001816 78                    1502 	.db	120
      001817 20                    1503 	.sleb128	32
      001818 00 00 90 66           1504 	.dw	0,(Sgps$GPS_Init$8)
      00181C 00 00 90 68           1505 	.dw	0,(Sgps$GPS_Init$10)
      001820 00 02                 1506 	.dw	2
      001822 78                    1507 	.db	120
      001823 1F                    1508 	.sleb128	31
      001824 00 00 90 61           1509 	.dw	0,(Sgps$GPS_Init$7)
      001828 00 00 90 66           1510 	.dw	0,(Sgps$GPS_Init$8)
      00182C 00 02                 1511 	.dw	2
      00182E 78                    1512 	.db	120
      00182F 23                    1513 	.sleb128	35
      001830 00 00 90 5F           1514 	.dw	0,(Sgps$GPS_Init$6)
      001834 00 00 90 61           1515 	.dw	0,(Sgps$GPS_Init$7)
      001838 00 02                 1516 	.dw	2
      00183A 78                    1517 	.db	120
      00183B 22                    1518 	.sleb128	34
      00183C 00 00 90 5D           1519 	.dw	0,(Sgps$GPS_Init$5)
      001840 00 00 90 5F           1520 	.dw	0,(Sgps$GPS_Init$6)
      001844 00 02                 1521 	.dw	2
      001846 78                    1522 	.db	120
      001847 21                    1523 	.sleb128	33
      001848 00 00 90 5B           1524 	.dw	0,(Sgps$GPS_Init$4)
      00184C 00 00 90 5D           1525 	.dw	0,(Sgps$GPS_Init$5)
      001850 00 02                 1526 	.dw	2
      001852 78                    1527 	.db	120
      001853 20                    1528 	.sleb128	32
      001854 00 00 90 59           1529 	.dw	0,(Sgps$GPS_Init$2)
      001858 00 00 90 5B           1530 	.dw	0,(Sgps$GPS_Init$4)
      00185C 00 02                 1531 	.dw	2
      00185E 78                    1532 	.db	120
      00185F 1F                    1533 	.sleb128	31
      001860 00 00 90 57           1534 	.dw	0,(Sgps$GPS_Init$1)
      001864 00 00 90 59           1535 	.dw	0,(Sgps$GPS_Init$2)
      001868 00 02                 1536 	.dw	2
      00186A 78                    1537 	.db	120
      00186B 01                    1538 	.sleb128	1
      00186C 00 00 00 00           1539 	.dw	0,0
      001870 00 00 00 00           1540 	.dw	0,0
                                   1541 
                                   1542 	.area .debug_abbrev (NOLOAD)
      00061E                       1543 Ldebug_abbrev:
      00061E 0D                    1544 	.uleb128	13
      00061F 34                    1545 	.uleb128	52
      000620 00                    1546 	.db	0
      000621 02                    1547 	.uleb128	2
      000622 0A                    1548 	.uleb128	10
      000623 03                    1549 	.uleb128	3
      000624 08                    1550 	.uleb128	8
      000625 3F                    1551 	.uleb128	63
      000626 0C                    1552 	.uleb128	12
      000627 49                    1553 	.uleb128	73
      000628 13                    1554 	.uleb128	19
      000629 00                    1555 	.uleb128	0
      00062A 00                    1556 	.uleb128	0
      00062B 07                    1557 	.uleb128	7
      00062C 01                    1558 	.uleb128	1
      00062D 01                    1559 	.db	1
      00062E 01                    1560 	.uleb128	1
      00062F 13                    1561 	.uleb128	19
      000630 0B                    1562 	.uleb128	11
      000631 0B                    1563 	.uleb128	11
      000632 49                    1564 	.uleb128	73
      000633 13                    1565 	.uleb128	19
      000634 00                    1566 	.uleb128	0
      000635 00                    1567 	.uleb128	0
      000636 02                    1568 	.uleb128	2
      000637 2E                    1569 	.uleb128	46
      000638 01                    1570 	.db	1
      000639 01                    1571 	.uleb128	1
      00063A 13                    1572 	.uleb128	19
      00063B 03                    1573 	.uleb128	3
      00063C 08                    1574 	.uleb128	8
      00063D 11                    1575 	.uleb128	17
      00063E 01                    1576 	.uleb128	1
      00063F 12                    1577 	.uleb128	18
      000640 01                    1578 	.uleb128	1
      000641 3F                    1579 	.uleb128	63
      000642 0C                    1580 	.uleb128	12
      000643 40                    1581 	.uleb128	64
      000644 06                    1582 	.uleb128	6
      000645 00                    1583 	.uleb128	0
      000646 00                    1584 	.uleb128	0
      000647 06                    1585 	.uleb128	6
      000648 34                    1586 	.uleb128	52
      000649 00                    1587 	.db	0
      00064A 02                    1588 	.uleb128	2
      00064B 0A                    1589 	.uleb128	10
      00064C 03                    1590 	.uleb128	3
      00064D 08                    1591 	.uleb128	8
      00064E 49                    1592 	.uleb128	73
      00064F 13                    1593 	.uleb128	19
      000650 00                    1594 	.uleb128	0
      000651 00                    1595 	.uleb128	0
      000652 0C                    1596 	.uleb128	12
      000653 2E                    1597 	.uleb128	46
      000654 01                    1598 	.db	1
      000655 01                    1599 	.uleb128	1
      000656 13                    1600 	.uleb128	19
      000657 03                    1601 	.uleb128	3
      000658 08                    1602 	.uleb128	8
      000659 11                    1603 	.uleb128	17
      00065A 01                    1604 	.uleb128	1
      00065B 12                    1605 	.uleb128	18
      00065C 01                    1606 	.uleb128	1
      00065D 3F                    1607 	.uleb128	63
      00065E 0C                    1608 	.uleb128	12
      00065F 40                    1609 	.uleb128	64
      000660 06                    1610 	.uleb128	6
      000661 49                    1611 	.uleb128	73
      000662 13                    1612 	.uleb128	19
      000663 00                    1613 	.uleb128	0
      000664 00                    1614 	.uleb128	0
      000665 0B                    1615 	.uleb128	11
      000666 2E                    1616 	.uleb128	46
      000667 01                    1617 	.db	1
      000668 01                    1618 	.uleb128	1
      000669 13                    1619 	.uleb128	19
      00066A 03                    1620 	.uleb128	3
      00066B 08                    1621 	.uleb128	8
      00066C 11                    1622 	.uleb128	17
      00066D 01                    1623 	.uleb128	1
      00066E 12                    1624 	.uleb128	18
      00066F 01                    1625 	.uleb128	1
      000670 36                    1626 	.uleb128	54
      000671 0B                    1627 	.uleb128	11
      000672 3F                    1628 	.uleb128	63
      000673 0C                    1629 	.uleb128	12
      000674 40                    1630 	.uleb128	64
      000675 06                    1631 	.uleb128	6
      000676 00                    1632 	.uleb128	0
      000677 00                    1633 	.uleb128	0
      000678 03                    1634 	.uleb128	3
      000679 0B                    1635 	.uleb128	11
      00067A 01                    1636 	.db	1
      00067B 11                    1637 	.uleb128	17
      00067C 01                    1638 	.uleb128	1
      00067D 00                    1639 	.uleb128	0
      00067E 00                    1640 	.uleb128	0
      00067F 01                    1641 	.uleb128	1
      000680 11                    1642 	.uleb128	17
      000681 01                    1643 	.db	1
      000682 03                    1644 	.uleb128	3
      000683 08                    1645 	.uleb128	8
      000684 10                    1646 	.uleb128	16
      000685 06                    1647 	.uleb128	6
      000686 13                    1648 	.uleb128	19
      000687 0B                    1649 	.uleb128	11
      000688 25                    1650 	.uleb128	37
      000689 08                    1651 	.uleb128	8
      00068A 00                    1652 	.uleb128	0
      00068B 00                    1653 	.uleb128	0
      00068C 05                    1654 	.uleb128	5
      00068D 0B                    1655 	.uleb128	11
      00068E 00                    1656 	.db	0
      00068F 11                    1657 	.uleb128	17
      000690 01                    1658 	.uleb128	1
      000691 12                    1659 	.uleb128	18
      000692 01                    1660 	.uleb128	1
      000693 00                    1661 	.uleb128	0
      000694 00                    1662 	.uleb128	0
      000695 0A                    1663 	.uleb128	10
      000696 0B                    1664 	.uleb128	11
      000697 01                    1665 	.db	1
      000698 11                    1666 	.uleb128	17
      000699 01                    1667 	.uleb128	1
      00069A 12                    1668 	.uleb128	18
      00069B 01                    1669 	.uleb128	1
      00069C 00                    1670 	.uleb128	0
      00069D 00                    1671 	.uleb128	0
      00069E 0F                    1672 	.uleb128	15
      00069F 0D                    1673 	.uleb128	13
      0006A0 00                    1674 	.db	0
      0006A1 03                    1675 	.uleb128	3
      0006A2 08                    1676 	.uleb128	8
      0006A3 38                    1677 	.uleb128	56
      0006A4 0A                    1678 	.uleb128	10
      0006A5 49                    1679 	.uleb128	73
      0006A6 13                    1680 	.uleb128	19
      0006A7 00                    1681 	.uleb128	0
      0006A8 00                    1682 	.uleb128	0
      0006A9 04                    1683 	.uleb128	4
      0006AA 0B                    1684 	.uleb128	11
      0006AB 01                    1685 	.db	1
      0006AC 01                    1686 	.uleb128	1
      0006AD 13                    1687 	.uleb128	19
      0006AE 11                    1688 	.uleb128	17
      0006AF 01                    1689 	.uleb128	1
      0006B0 12                    1690 	.uleb128	18
      0006B1 01                    1691 	.uleb128	1
      0006B2 00                    1692 	.uleb128	0
      0006B3 00                    1693 	.uleb128	0
      0006B4 08                    1694 	.uleb128	8
      0006B5 21                    1695 	.uleb128	33
      0006B6 00                    1696 	.db	0
      0006B7 2F                    1697 	.uleb128	47
      0006B8 0B                    1698 	.uleb128	11
      0006B9 00                    1699 	.uleb128	0
      0006BA 00                    1700 	.uleb128	0
      0006BB 0E                    1701 	.uleb128	14
      0006BC 13                    1702 	.uleb128	19
      0006BD 01                    1703 	.db	1
      0006BE 01                    1704 	.uleb128	1
      0006BF 13                    1705 	.uleb128	19
      0006C0 03                    1706 	.uleb128	3
      0006C1 08                    1707 	.uleb128	8
      0006C2 0B                    1708 	.uleb128	11
      0006C3 0B                    1709 	.uleb128	11
      0006C4 00                    1710 	.uleb128	0
      0006C5 00                    1711 	.uleb128	0
      0006C6 09                    1712 	.uleb128	9
      0006C7 24                    1713 	.uleb128	36
      0006C8 00                    1714 	.db	0
      0006C9 03                    1715 	.uleb128	3
      0006CA 08                    1716 	.uleb128	8
      0006CB 0B                    1717 	.uleb128	11
      0006CC 0B                    1718 	.uleb128	11
      0006CD 3E                    1719 	.uleb128	62
      0006CE 0B                    1720 	.uleb128	11
      0006CF 00                    1721 	.uleb128	0
      0006D0 00                    1722 	.uleb128	0
      0006D1 00                    1723 	.uleb128	0
                                   1724 
                                   1725 	.area .debug_info (NOLOAD)
      001BDA 00 00 03 15           1726 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001BDE                       1727 Ldebug_info_start:
      001BDE 00 02                 1728 	.dw	2
      001BE0 00 00 06 1E           1729 	.dw	0,(Ldebug_abbrev)
      001BE4 04                    1730 	.db	4
      001BE5 01                    1731 	.uleb128	1
      001BE6 53 6F 75 72 63 65 2F  1732 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      001BFD 00                    1733 	.db	0
      001BFE 00 00 18 55           1734 	.dw	0,(Ldebug_line_start+-4)
      001C02 01                    1735 	.db	1
      001C03 53 44 43 43 20 76 65  1736 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      001C1C 00                    1737 	.db	0
      001C1D 02                    1738 	.uleb128	2
      001C1E 00 00 00 F1           1739 	.dw	0,241
      001C22 47 50 53 5F 49 6E 69  1740 	.ascii "GPS_Init"
             74
      001C2A 00                    1741 	.db	0
      001C2B 00 00 90 57           1742 	.dw	0,(_GPS_Init)
      001C2F 00 00 91 8B           1743 	.dw	0,(XG$GPS_Init$0$0+1)
      001C33 01                    1744 	.db	1
      001C34 00 00 16 2C           1745 	.dw	0,(Ldebug_loc_start+300)
      001C38 03                    1746 	.uleb128	3
      001C39 00 00 90 A7           1747 	.dw	0,(Sgps$GPS_Init$39)
      001C3D 04                    1748 	.uleb128	4
      001C3E 00 00 00 84           1749 	.dw	0,132
      001C42 00 00 91 34           1750 	.dw	0,(Sgps$GPS_Init$43)
      001C46 00 00 91 5D           1751 	.dw	0,(Sgps$GPS_Init$57)
      001C4A 05                    1752 	.uleb128	5
      001C4B 00 00 91 3A           1753 	.dw	0,(Sgps$GPS_Init$44)
      001C4F 00 00 91 59           1754 	.dw	0,(Sgps$GPS_Init$55)
      001C53 06                    1755 	.uleb128	6
      001C54 02                    1756 	.db	2
      001C55 91                    1757 	.db	145
      001C56 7F                    1758 	.sleb128	-1
      001C57 69                    1759 	.ascii "i"
      001C58 00                    1760 	.db	0
      001C59 00 00 00 F1           1761 	.dw	0,241
      001C5D 00                    1762 	.uleb128	0
      001C5E 04                    1763 	.uleb128	4
      001C5F 00 00 00 A5           1764 	.dw	0,165
      001C63 00 00 91 5F           1765 	.dw	0,(Sgps$GPS_Init$59)
      001C67 00 00 91 88           1766 	.dw	0,(Sgps$GPS_Init$73)
      001C6B 05                    1767 	.uleb128	5
      001C6C 00 00 91 65           1768 	.dw	0,(Sgps$GPS_Init$60)
      001C70 00 00 91 84           1769 	.dw	0,(Sgps$GPS_Init$71)
      001C74 06                    1770 	.uleb128	6
      001C75 02                    1771 	.db	2
      001C76 91                    1772 	.db	145
      001C77 7F                    1773 	.sleb128	-1
      001C78 69                    1774 	.ascii "i"
      001C79 00                    1775 	.db	0
      001C7A 00 00 00 F1           1776 	.dw	0,241
      001C7E 00                    1777 	.uleb128	0
      001C7F 07                    1778 	.uleb128	7
      001C80 00 00 00 B2           1779 	.dw	0,178
      001C84 0E                    1780 	.db	14
      001C85 00 00 00 F1           1781 	.dw	0,241
      001C89 08                    1782 	.uleb128	8
      001C8A 0D                    1783 	.db	13
      001C8B 00                    1784 	.uleb128	0
      001C8C 06                    1785 	.uleb128	6
      001C8D 02                    1786 	.db	2
      001C8E 91                    1787 	.db	145
      001C8F 62                    1788 	.sleb128	-30
      001C90 6F 70 65 6E 5F 6E 61  1789 	.ascii "open_nav_timeutc"
             76 5F 74 69 6D 65 75
             74 63
      001CA0 00                    1790 	.db	0
      001CA1 00 00 00 A5           1791 	.dw	0,165
      001CA5 07                    1792 	.uleb128	7
      001CA6 00 00 00 D8           1793 	.dw	0,216
      001CAA 0F                    1794 	.db	15
      001CAB 00 00 00 F1           1795 	.dw	0,241
      001CAF 08                    1796 	.uleb128	8
      001CB0 0E                    1797 	.db	14
      001CB1 00                    1798 	.uleb128	0
      001CB2 06                    1799 	.uleb128	6
      001CB3 02                    1800 	.db	2
      001CB4 91                    1801 	.db	145
      001CB5 70                    1802 	.sleb128	-16
      001CB6 63 6C 6F 73 65 5F 61  1803 	.ascii "close_all_nmea"
             6C 6C 5F 6E 6D 65 61
      001CC4 00                    1804 	.db	0
      001CC5 00 00 00 CB           1805 	.dw	0,203
      001CC9 00                    1806 	.uleb128	0
      001CCA 00                    1807 	.uleb128	0
      001CCB 09                    1808 	.uleb128	9
      001CCC 75 6E 73 69 67 6E 65  1809 	.ascii "unsigned char"
             64 20 63 68 61 72
      001CD9 00                    1810 	.db	0
      001CDA 01                    1811 	.db	1
      001CDB 08                    1812 	.db	8
      001CDC 02                    1813 	.uleb128	2
      001CDD 00 00 01 39           1814 	.dw	0,313
      001CE1 47 50 53 5F 47 65 74  1815 	.ascii "GPS_GetTime"
             54 69 6D 65
      001CEC 00                    1816 	.db	0
      001CED 00 00 91 8B           1817 	.dw	0,(_GPS_GetTime)
      001CF1 00 00 91 EC           1818 	.dw	0,(XG$GPS_GetTime$0$0+1)
      001CF5 01                    1819 	.db	1
      001CF6 00 00 16 00           1820 	.dw	0,(Ldebug_loc_start+256)
      001CFA 0A                    1821 	.uleb128	10
      001CFB 00 00 91 8D           1822 	.dw	0,(Sgps$GPS_GetTime$81)
      001CFF 00 00 91 8D           1823 	.dw	0,(Sgps$GPS_GetTime$83)
      001D03 06                    1824 	.uleb128	6
      001D04 06                    1825 	.db	6
      001D05 54                    1826 	.db	84
      001D06 93                    1827 	.db	147
      001D07 01                    1828 	.uleb128	1
      001D08 53                    1829 	.db	83
      001D09 93                    1830 	.db	147
      001D0A 01                    1831 	.uleb128	1
      001D0B 69                    1832 	.ascii "i"
      001D0C 00                    1833 	.db	0
      001D0D 00 00 01 39           1834 	.dw	0,313
      001D11 00                    1835 	.uleb128	0
      001D12 00                    1836 	.uleb128	0
      001D13 09                    1837 	.uleb128	9
      001D14 69 6E 74              1838 	.ascii "int"
      001D17 00                    1839 	.db	0
      001D18 02                    1840 	.db	2
      001D19 05                    1841 	.db	5
      001D1A 0B                    1842 	.uleb128	11
      001D1B 00 00 01 8E           1843 	.dw	0,398
      001D1F 55 41 52 54 31 5F 52  1844 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001D32 00                    1845 	.db	0
      001D33 00 00 91 EC           1846 	.dw	0,(_UART1_RX_IRQHandler)
      001D37 00 00 92 35           1847 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      001D3B 03                    1848 	.db	3
      001D3C 01                    1849 	.db	1
      001D3D 00 00 15 68           1850 	.dw	0,(Ldebug_loc_start+104)
      001D41 04                    1851 	.uleb128	4
      001D42 00 00 01 7E           1852 	.dw	0,382
      001D46 00 00 91 F8           1853 	.dw	0,(Sgps$UART1_RX_IRQHandler$103)
      001D4A 00 00 92 17           1854 	.dw	0,(Sgps$UART1_RX_IRQHandler$112)
      001D4E 05                    1855 	.uleb128	5
      001D4F 00 00 91 FF           1856 	.dw	0,(Sgps$UART1_RX_IRQHandler$105)
      001D53 00 00 92 11           1857 	.dw	0,(Sgps$UART1_RX_IRQHandler$110)
      001D57 00                    1858 	.uleb128	0
      001D58 03                    1859 	.uleb128	3
      001D59 00 00 92 24           1860 	.dw	0,(Sgps$UART1_RX_IRQHandler$118)
      001D5D 05                    1861 	.uleb128	5
      001D5E 00 00 92 31           1862 	.dw	0,(Sgps$UART1_RX_IRQHandler$123)
      001D62 00 00 92 34           1863 	.dw	0,(Sgps$UART1_RX_IRQHandler$125)
      001D66 00                    1864 	.uleb128	0
      001D67 00                    1865 	.uleb128	0
      001D68 0C                    1866 	.uleb128	12
      001D69 00 00 01 D4           1867 	.dw	0,468
      001D6D 63 68 65 63 6B 73 75  1868 	.ascii "checksum"
             6D
      001D75 00                    1869 	.db	0
      001D76 00 00 92 35           1870 	.dw	0,(_checksum)
      001D7A 00 00 93 B5           1871 	.dw	0,(XFgps$checksum$0$0+1)
      001D7E 00                    1872 	.db	0
      001D7F 00 00 15 00           1873 	.dw	0,(Ldebug_loc_start)
      001D83 00 00 00 F1           1874 	.dw	0,241
      001D87 04                    1875 	.uleb128	4
      001D88 00 00 01 C5           1876 	.dw	0,453
      001D8C 00 00 92 97           1877 	.dw	0,(Sgps$checksum$133)
      001D90 00 00 92 9D           1878 	.dw	0,(Sgps$checksum$135)
      001D94 06                    1879 	.uleb128	6
      001D95 02                    1880 	.db	2
      001D96 91                    1881 	.db	145
      001D97 7E                    1882 	.sleb128	-2
      001D98 69                    1883 	.ascii "i"
      001D99 00                    1884 	.db	0
      001D9A 00 00 01 E5           1885 	.dw	0,485
      001D9E 00                    1886 	.uleb128	0
      001D9F 06                    1887 	.uleb128	6
      001DA0 02                    1888 	.db	2
      001DA1 91                    1889 	.db	145
      001DA2 72                    1890 	.sleb128	-14
      001DA3 63 6B 53 75 6D        1891 	.ascii "ckSum"
      001DA8 00                    1892 	.db	0
      001DA9 00 00 01 D4           1893 	.dw	0,468
      001DAD 00                    1894 	.uleb128	0
      001DAE 09                    1895 	.uleb128	9
      001DAF 75 6E 73 69 67 6E 65  1896 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      001DBC 00                    1897 	.db	0
      001DBD 04                    1898 	.db	4
      001DBE 07                    1899 	.db	7
      001DBF 09                    1900 	.uleb128	9
      001DC0 75 6E 73 69 67 6E 65  1901 	.ascii "unsigned int"
             64 20 69 6E 74
      001DCC 00                    1902 	.db	0
      001DCD 02                    1903 	.db	2
      001DCE 07                    1904 	.db	7
      001DCF 07                    1905 	.uleb128	7
      001DD0 00 00 02 02           1906 	.dw	0,514
      001DD4 22                    1907 	.db	34
      001DD5 00 00 00 F1           1908 	.dw	0,241
      001DD9 08                    1909 	.uleb128	8
      001DDA 21                    1910 	.db	33
      001DDB 00                    1911 	.uleb128	0
      001DDC 0D                    1912 	.uleb128	13
      001DDD 05                    1913 	.db	5
      001DDE 03                    1914 	.db	3
      001DDF 00 00 00 31           1915 	.dw	0,(_GPS_RxBuf)
      001DE3 47 50 53 5F 52 78 42  1916 	.ascii "GPS_RxBuf"
             75 66
      001DEC 00                    1917 	.db	0
      001DED 01                    1918 	.db	1
      001DEE 00 00 01 F5           1919 	.dw	0,501
      001DF2 06                    1920 	.uleb128	6
      001DF3 05                    1921 	.db	5
      001DF4 03                    1922 	.db	3
      001DF5 00 00 00 53           1923 	.dw	0,(_num)
      001DF9 6E 75 6D              1924 	.ascii "num"
      001DFC 00                    1925 	.db	0
      001DFD 00 00 00 F1           1926 	.dw	0,241
      001E01 09                    1927 	.uleb128	9
      001E02 66 6C 6F 61 74        1928 	.ascii "float"
      001E07 00                    1929 	.db	0
      001E08 04                    1930 	.db	4
      001E09 04                    1931 	.db	4
      001E0A 0E                    1932 	.uleb128	14
      001E0B 00 00 02 F4           1933 	.dw	0,756
      001E0F 5F 5F 30 30 30 30 30  1934 	.ascii "__00000009"
             30 30 39
      001E19 00                    1935 	.db	0
      001E1A 18                    1936 	.db	24
      001E1B 0F                    1937 	.uleb128	15
      001E1C 72 75 6E 54 69 6D 65  1938 	.ascii "runTime"
      001E23 00                    1939 	.db	0
      001E24 02                    1940 	.db	2
      001E25 23                    1941 	.db	35
      001E26 00                    1942 	.uleb128	0
      001E27 00 00 01 D4           1943 	.dw	0,468
      001E2B 0F                    1944 	.uleb128	15
      001E2C 74 41 63 63           1945 	.ascii "tAcc"
      001E30 00                    1946 	.db	0
      001E31 02                    1947 	.db	2
      001E32 23                    1948 	.db	35
      001E33 04                    1949 	.uleb128	4
      001E34 00 00 02 27           1950 	.dw	0,551
      001E38 0F                    1951 	.uleb128	15
      001E39 6D 73 45 72 72        1952 	.ascii "msErr"
      001E3E 00                    1953 	.db	0
      001E3F 02                    1954 	.db	2
      001E40 23                    1955 	.db	35
      001E41 08                    1956 	.uleb128	8
      001E42 00 00 02 27           1957 	.dw	0,551
      001E46 0F                    1958 	.uleb128	15
      001E47 6D 73                 1959 	.ascii "ms"
      001E49 00                    1960 	.db	0
      001E4A 02                    1961 	.db	2
      001E4B 23                    1962 	.db	35
      001E4C 0C                    1963 	.uleb128	12
      001E4D 00 00 01 E5           1964 	.dw	0,485
      001E51 0F                    1965 	.uleb128	15
      001E52 79 65 61 72           1966 	.ascii "year"
      001E56 00                    1967 	.db	0
      001E57 02                    1968 	.db	2
      001E58 23                    1969 	.db	35
      001E59 0E                    1970 	.uleb128	14
      001E5A 00 00 01 E5           1971 	.dw	0,485
      001E5E 0F                    1972 	.uleb128	15
      001E5F 6D 6F 6E 74 68        1973 	.ascii "month"
      001E64 00                    1974 	.db	0
      001E65 02                    1975 	.db	2
      001E66 23                    1976 	.db	35
      001E67 10                    1977 	.uleb128	16
      001E68 00 00 00 F1           1978 	.dw	0,241
      001E6C 0F                    1979 	.uleb128	15
      001E6D 64 61 79              1980 	.ascii "day"
      001E70 00                    1981 	.db	0
      001E71 02                    1982 	.db	2
      001E72 23                    1983 	.db	35
      001E73 11                    1984 	.uleb128	17
      001E74 00 00 00 F1           1985 	.dw	0,241
      001E78 0F                    1986 	.uleb128	15
      001E79 68 6F 75 72           1987 	.ascii "hour"
      001E7D 00                    1988 	.db	0
      001E7E 02                    1989 	.db	2
      001E7F 23                    1990 	.db	35
      001E80 12                    1991 	.uleb128	18
      001E81 00 00 00 F1           1992 	.dw	0,241
      001E85 0F                    1993 	.uleb128	15
      001E86 6D 69 6E              1994 	.ascii "min"
      001E89 00                    1995 	.db	0
      001E8A 02                    1996 	.db	2
      001E8B 23                    1997 	.db	35
      001E8C 13                    1998 	.uleb128	19
      001E8D 00 00 00 F1           1999 	.dw	0,241
      001E91 0F                    2000 	.uleb128	15
      001E92 73 65 63              2001 	.ascii "sec"
      001E95 00                    2002 	.db	0
      001E96 02                    2003 	.db	2
      001E97 23                    2004 	.db	35
      001E98 14                    2005 	.uleb128	20
      001E99 00 00 00 F1           2006 	.dw	0,241
      001E9D 0F                    2007 	.uleb128	15
      001E9E 76 61 6C 69 64        2008 	.ascii "valid"
      001EA3 00                    2009 	.db	0
      001EA4 02                    2010 	.db	2
      001EA5 23                    2011 	.db	35
      001EA6 15                    2012 	.uleb128	21
      001EA7 00 00 00 F1           2013 	.dw	0,241
      001EAB 0F                    2014 	.uleb128	15
      001EAC 74 69 6D 65 53 72 63  2015 	.ascii "timeSrc"
      001EB3 00                    2016 	.db	0
      001EB4 02                    2017 	.db	2
      001EB5 23                    2018 	.db	35
      001EB6 16                    2019 	.uleb128	22
      001EB7 00 00 00 F1           2020 	.dw	0,241
      001EBB 0F                    2021 	.uleb128	15
      001EBC 64 61 74 65 56 61 6C  2022 	.ascii "dateValid"
             69 64
      001EC5 00                    2023 	.db	0
      001EC6 02                    2024 	.db	2
      001EC7 23                    2025 	.db	35
      001EC8 17                    2026 	.uleb128	23
      001EC9 00 00 00 F1           2027 	.dw	0,241
      001ECD 00                    2028 	.uleb128	0
      001ECE 0D                    2029 	.uleb128	13
      001ECF 05                    2030 	.db	5
      001ED0 03                    2031 	.db	3
      001ED1 00 00 00 0E           2032 	.dw	0,(_GPS_TimeDataSturcture)
      001ED5 47 50 53 5F 54 69 6D  2033 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      001EEA 00                    2034 	.db	0
      001EEB 01                    2035 	.db	1
      001EEC 00 00 02 30           2036 	.dw	0,560
      001EF0 00                    2037 	.uleb128	0
      001EF1 00                    2038 	.uleb128	0
      001EF2 00                    2039 	.uleb128	0
      001EF3                       2040 Ldebug_info_end:
                                   2041 
                                   2042 	.area .debug_pubnames (NOLOAD)
      000637 00 00 00 6B           2043 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00063B                       2044 Ldebug_pubnames_start:
      00063B 00 02                 2045 	.dw	2
      00063D 00 00 1B DA           2046 	.dw	0,(Ldebug_info_start-4)
      000641 00 00 03 19           2047 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000645 00 00 00 43           2048 	.dw	0,67
      000649 47 50 53 5F 49 6E 69  2049 	.ascii "GPS_Init"
             74
      000651 00                    2050 	.db	0
      000652 00 00 01 02           2051 	.dw	0,258
      000656 47 50 53 5F 47 65 74  2052 	.ascii "GPS_GetTime"
             54 69 6D 65
      000661 00                    2053 	.db	0
      000662 00 00 01 40           2054 	.dw	0,320
      000666 55 41 52 54 31 5F 52  2055 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      000679 00                    2056 	.db	0
      00067A 00 00 02 02           2057 	.dw	0,514
      00067E 47 50 53 5F 52 78 42  2058 	.ascii "GPS_RxBuf"
             75 66
      000687 00                    2059 	.db	0
      000688 00 00 02 F4           2060 	.dw	0,756
      00068C 47 50 53 5F 54 69 6D  2061 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      0006A1 00                    2062 	.db	0
      0006A2 00 00 00 00           2063 	.dw	0,0
      0006A6                       2064 Ldebug_pubnames_end:
                                   2065 
                                   2066 	.area .debug_frame (NOLOAD)
      001320 00 00                 2067 	.dw	0
      001322 00 0E                 2068 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      001324                       2069 Ldebug_CIE0_start:
      001324 FF FF                 2070 	.dw	0xffff
      001326 FF FF                 2071 	.dw	0xffff
      001328 01                    2072 	.db	1
      001329 00                    2073 	.db	0
      00132A 01                    2074 	.uleb128	1
      00132B 7F                    2075 	.sleb128	-1
      00132C 09                    2076 	.db	9
      00132D 0C                    2077 	.db	12
      00132E 08                    2078 	.uleb128	8
      00132F 02                    2079 	.uleb128	2
      001330 89                    2080 	.db	137
      001331 01                    2081 	.uleb128	1
      001332                       2082 Ldebug_CIE0_end:
      001332 00 00 00 44           2083 	.dw	0,68
      001336 00 00 13 20           2084 	.dw	0,(Ldebug_CIE0_start-4)
      00133A 00 00 92 35           2085 	.dw	0,(Sgps$checksum$130)	;initial loc
      00133E 00 00 01 80           2086 	.dw	0,Sgps$checksum$151-Sgps$checksum$130
      001342 01                    2087 	.db	1
      001343 00 00 92 35           2088 	.dw	0,(Sgps$checksum$130)
      001347 0E                    2089 	.db	14
      001348 02                    2090 	.uleb128	2
      001349 01                    2091 	.db	1
      00134A 00 00 92 37           2092 	.dw	0,(Sgps$checksum$131)
      00134E 0E                    2093 	.db	14
      00134F 10                    2094 	.uleb128	16
      001350 01                    2095 	.db	1
      001351 00 00 92 B8           2096 	.dw	0,(Sgps$checksum$136)
      001355 0E                    2097 	.db	14
      001356 11                    2098 	.uleb128	17
      001357 01                    2099 	.db	1
      001358 00 00 92 BA           2100 	.dw	0,(Sgps$checksum$137)
      00135C 0E                    2101 	.db	14
      00135D 12                    2102 	.uleb128	18
      00135E 01                    2103 	.db	1
      00135F 00 00 92 BB           2104 	.dw	0,(Sgps$checksum$138)
      001363 0E                    2105 	.db	14
      001364 14                    2106 	.uleb128	20
      001365 01                    2107 	.db	1
      001366 00 00 92 C0           2108 	.dw	0,(Sgps$checksum$139)
      00136A 0E                    2109 	.db	14
      00136B 10                    2110 	.uleb128	16
      00136C 01                    2111 	.db	1
      00136D 00 00 93 AD           2112 	.dw	0,(Sgps$checksum$145)
      001371 0E                    2113 	.db	14
      001372 10                    2114 	.uleb128	16
      001373 01                    2115 	.db	1
      001374 00 00 93 B4           2116 	.dw	0,(Sgps$checksum$149)
      001378 0E                    2117 	.db	14
      001379 02                    2118 	.uleb128	2
                                   2119 
                                   2120 	.area .debug_frame (NOLOAD)
      00137A 00 00                 2121 	.dw	0
      00137C 00 0E                 2122 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00137E                       2123 Ldebug_CIE1_start:
      00137E FF FF                 2124 	.dw	0xffff
      001380 FF FF                 2125 	.dw	0xffff
      001382 01                    2126 	.db	1
      001383 00                    2127 	.db	0
      001384 01                    2128 	.uleb128	1
      001385 7F                    2129 	.sleb128	-1
      001386 09                    2130 	.db	9
      001387 0C                    2131 	.db	12
      001388 08                    2132 	.uleb128	8
      001389 09                    2133 	.uleb128	9
      00138A 89                    2134 	.db	137
      00138B 01                    2135 	.uleb128	1
      00138C                       2136 Ldebug_CIE1_end:
      00138C 00 00 00 60           2137 	.dw	0,96
      001390 00 00 13 7A           2138 	.dw	0,(Ldebug_CIE1_start-4)
      001394 00 00 91 ED           2139 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)	;initial loc
      001398 00 00 00 48           2140 	.dw	0,Sgps$UART1_RX_IRQHandler$128-Sgps$UART1_RX_IRQHandler$97
      00139C 01                    2141 	.db	1
      00139D 00 00 91 ED           2142 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
      0013A1 0E                    2143 	.db	14
      0013A2 09                    2144 	.uleb128	9
      0013A3 01                    2145 	.db	1
      0013A4 00 00 91 EF           2146 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      0013A8 0E                    2147 	.db	14
      0013A9 0A                    2148 	.uleb128	10
      0013AA 01                    2149 	.db	1
      0013AB 00 00 91 F1           2150 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      0013AF 0E                    2151 	.db	14
      0013B0 0B                    2152 	.uleb128	11
      0013B1 01                    2153 	.db	1
      0013B2 00 00 91 F5           2154 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      0013B6 0E                    2155 	.db	14
      0013B7 09                    2156 	.uleb128	9
      0013B8 01                    2157 	.db	1
      0013B9 00 00 91 F8           2158 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      0013BD 0E                    2159 	.db	14
      0013BE 09                    2160 	.uleb128	9
      0013BF 01                    2161 	.db	1
      0013C0 00 00 92 08           2162 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      0013C4 0E                    2163 	.db	14
      0013C5 0B                    2164 	.uleb128	11
      0013C6 01                    2165 	.db	1
      0013C7 00 00 92 0C           2166 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      0013CB 0E                    2167 	.db	14
      0013CC 09                    2168 	.uleb128	9
      0013CD 01                    2169 	.db	1
      0013CE 00 00 92 1B           2170 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      0013D2 0E                    2171 	.db	14
      0013D3 0A                    2172 	.uleb128	10
      0013D4 01                    2173 	.db	1
      0013D5 00 00 92 1D           2174 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      0013D9 0E                    2175 	.db	14
      0013DA 0B                    2176 	.uleb128	11
      0013DB 01                    2177 	.db	1
      0013DC 00 00 92 21           2178 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      0013E0 0E                    2179 	.db	14
      0013E1 09                    2180 	.uleb128	9
      0013E2 01                    2181 	.db	1
      0013E3 00 00 92 24           2182 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      0013E7 0E                    2183 	.db	14
      0013E8 09                    2184 	.uleb128	9
      0013E9 01                    2185 	.db	1
      0013EA 00 00 92 31           2186 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      0013EE 0E                    2187 	.db	14
      0013EF 09                    2188 	.uleb128	9
                                   2189 
                                   2190 	.area .debug_frame (NOLOAD)
      0013F0 00 00                 2191 	.dw	0
      0013F2 00 0E                 2192 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0013F4                       2193 Ldebug_CIE2_start:
      0013F4 FF FF                 2194 	.dw	0xffff
      0013F6 FF FF                 2195 	.dw	0xffff
      0013F8 01                    2196 	.db	1
      0013F9 00                    2197 	.db	0
      0013FA 01                    2198 	.uleb128	1
      0013FB 7F                    2199 	.sleb128	-1
      0013FC 09                    2200 	.db	9
      0013FD 0C                    2201 	.db	12
      0013FE 08                    2202 	.uleb128	8
      0013FF 02                    2203 	.uleb128	2
      001400 89                    2204 	.db	137
      001401 01                    2205 	.uleb128	1
      001402                       2206 Ldebug_CIE2_end:
      001402 00 00 00 21           2207 	.dw	0,33
      001406 00 00 13 F0           2208 	.dw	0,(Ldebug_CIE2_start-4)
      00140A 00 00 91 8B           2209 	.dw	0,(Sgps$GPS_GetTime$79)	;initial loc
      00140E 00 00 00 61           2210 	.dw	0,Sgps$GPS_GetTime$95-Sgps$GPS_GetTime$79
      001412 01                    2211 	.db	1
      001413 00 00 91 8B           2212 	.dw	0,(Sgps$GPS_GetTime$79)
      001417 0E                    2213 	.db	14
      001418 02                    2214 	.uleb128	2
      001419 01                    2215 	.db	1
      00141A 00 00 91 8D           2216 	.dw	0,(Sgps$GPS_GetTime$80)
      00141E 0E                    2217 	.db	14
      00141F 06                    2218 	.uleb128	6
      001420 01                    2219 	.db	1
      001421 00 00 91 EB           2220 	.dw	0,(Sgps$GPS_GetTime$93)
      001425 0E                    2221 	.db	14
      001426 02                    2222 	.uleb128	2
                                   2223 
                                   2224 	.area .debug_frame (NOLOAD)
      001427 00 00                 2225 	.dw	0
      001429 00 0E                 2226 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00142B                       2227 Ldebug_CIE3_start:
      00142B FF FF                 2228 	.dw	0xffff
      00142D FF FF                 2229 	.dw	0xffff
      00142F 01                    2230 	.db	1
      001430 00                    2231 	.db	0
      001431 01                    2232 	.uleb128	1
      001432 7F                    2233 	.sleb128	-1
      001433 09                    2234 	.db	9
      001434 0C                    2235 	.db	12
      001435 08                    2236 	.uleb128	8
      001436 02                    2237 	.uleb128	2
      001437 89                    2238 	.db	137
      001438 01                    2239 	.uleb128	1
      001439                       2240 Ldebug_CIE3_end:
      001439 00 00 01 5C           2241 	.dw	0,348
      00143D 00 00 14 27           2242 	.dw	0,(Ldebug_CIE3_start-4)
      001441 00 00 90 57           2243 	.dw	0,(Sgps$GPS_Init$1)	;initial loc
      001445 00 00 01 34           2244 	.dw	0,Sgps$GPS_Init$77-Sgps$GPS_Init$1
      001449 01                    2245 	.db	1
      00144A 00 00 90 57           2246 	.dw	0,(Sgps$GPS_Init$1)
      00144E 0E                    2247 	.db	14
      00144F 02                    2248 	.uleb128	2
      001450 01                    2249 	.db	1
      001451 00 00 90 59           2250 	.dw	0,(Sgps$GPS_Init$2)
      001455 0E                    2251 	.db	14
      001456 20                    2252 	.uleb128	32
      001457 01                    2253 	.db	1
      001458 00 00 90 5B           2254 	.dw	0,(Sgps$GPS_Init$4)
      00145C 0E                    2255 	.db	14
      00145D 21                    2256 	.uleb128	33
      00145E 01                    2257 	.db	1
      00145F 00 00 90 5D           2258 	.dw	0,(Sgps$GPS_Init$5)
      001463 0E                    2259 	.db	14
      001464 22                    2260 	.uleb128	34
      001465 01                    2261 	.db	1
      001466 00 00 90 5F           2262 	.dw	0,(Sgps$GPS_Init$6)
      00146A 0E                    2263 	.db	14
      00146B 23                    2264 	.uleb128	35
      00146C 01                    2265 	.db	1
      00146D 00 00 90 61           2266 	.dw	0,(Sgps$GPS_Init$7)
      001471 0E                    2267 	.db	14
      001472 24                    2268 	.uleb128	36
      001473 01                    2269 	.db	1
      001474 00 00 90 66           2270 	.dw	0,(Sgps$GPS_Init$8)
      001478 0E                    2271 	.db	14
      001479 20                    2272 	.uleb128	32
      00147A 01                    2273 	.db	1
      00147B 00 00 90 68           2274 	.dw	0,(Sgps$GPS_Init$10)
      00147F 0E                    2275 	.db	14
      001480 21                    2276 	.uleb128	33
      001481 01                    2277 	.db	1
      001482 00 00 90 6A           2278 	.dw	0,(Sgps$GPS_Init$11)
      001486 0E                    2279 	.db	14
      001487 22                    2280 	.uleb128	34
      001488 01                    2281 	.db	1
      001489 00 00 90 6C           2282 	.dw	0,(Sgps$GPS_Init$12)
      00148D 0E                    2283 	.db	14
      00148E 23                    2284 	.uleb128	35
      00148F 01                    2285 	.db	1
      001490 00 00 90 6E           2286 	.dw	0,(Sgps$GPS_Init$13)
      001494 0E                    2287 	.db	14
      001495 24                    2288 	.uleb128	36
      001496 01                    2289 	.db	1
      001497 00 00 90 73           2290 	.dw	0,(Sgps$GPS_Init$14)
      00149B 0E                    2291 	.db	14
      00149C 20                    2292 	.uleb128	32
      00149D 01                    2293 	.db	1
      00149E 00 00 90 78           2294 	.dw	0,(Sgps$GPS_Init$17)
      0014A2 0E                    2295 	.db	14
      0014A3 21                    2296 	.uleb128	33
      0014A4 01                    2297 	.db	1
      0014A5 00 00 90 7A           2298 	.dw	0,(Sgps$GPS_Init$18)
      0014A9 0E                    2299 	.db	14
      0014AA 22                    2300 	.uleb128	34
      0014AB 01                    2301 	.db	1
      0014AC 00 00 90 7C           2302 	.dw	0,(Sgps$GPS_Init$19)
      0014B0 0E                    2303 	.db	14
      0014B1 23                    2304 	.uleb128	35
      0014B2 01                    2305 	.db	1
      0014B3 00 00 90 7E           2306 	.dw	0,(Sgps$GPS_Init$20)
      0014B7 0E                    2307 	.db	14
      0014B8 24                    2308 	.uleb128	36
      0014B9 01                    2309 	.db	1
      0014BA 00 00 90 80           2310 	.dw	0,(Sgps$GPS_Init$21)
      0014BE 0E                    2311 	.db	14
      0014BF 25                    2312 	.uleb128	37
      0014C0 01                    2313 	.db	1
      0014C1 00 00 90 82           2314 	.dw	0,(Sgps$GPS_Init$22)
      0014C5 0E                    2315 	.db	14
      0014C6 26                    2316 	.uleb128	38
      0014C7 01                    2317 	.db	1
      0014C8 00 00 90 84           2318 	.dw	0,(Sgps$GPS_Init$23)
      0014CC 0E                    2319 	.db	14
      0014CD 27                    2320 	.uleb128	39
      0014CE 01                    2321 	.db	1
      0014CF 00 00 90 86           2322 	.dw	0,(Sgps$GPS_Init$24)
      0014D3 0E                    2323 	.db	14
      0014D4 29                    2324 	.uleb128	41
      0014D5 01                    2325 	.db	1
      0014D6 00 00 90 8B           2326 	.dw	0,(Sgps$GPS_Init$25)
      0014DA 0E                    2327 	.db	14
      0014DB 20                    2328 	.uleb128	32
      0014DC 01                    2329 	.db	1
      0014DD 00 00 90 8D           2330 	.dw	0,(Sgps$GPS_Init$27)
      0014E1 0E                    2331 	.db	14
      0014E2 21                    2332 	.uleb128	33
      0014E3 01                    2333 	.db	1
      0014E4 00 00 90 8F           2334 	.dw	0,(Sgps$GPS_Init$28)
      0014E8 0E                    2335 	.db	14
      0014E9 22                    2336 	.uleb128	34
      0014EA 01                    2337 	.db	1
      0014EB 00 00 90 91           2338 	.dw	0,(Sgps$GPS_Init$29)
      0014EF 0E                    2339 	.db	14
      0014F0 23                    2340 	.uleb128	35
      0014F1 01                    2341 	.db	1
      0014F2 00 00 90 96           2342 	.dw	0,(Sgps$GPS_Init$30)
      0014F6 0E                    2343 	.db	14
      0014F7 20                    2344 	.uleb128	32
      0014F8 01                    2345 	.db	1
      0014F9 00 00 90 98           2346 	.dw	0,(Sgps$GPS_Init$32)
      0014FD 0E                    2347 	.db	14
      0014FE 21                    2348 	.uleb128	33
      0014FF 01                    2349 	.db	1
      001500 00 00 90 9A           2350 	.dw	0,(Sgps$GPS_Init$33)
      001504 0E                    2351 	.db	14
      001505 22                    2352 	.uleb128	34
      001506 01                    2353 	.db	1
      001507 00 00 90 9C           2354 	.dw	0,(Sgps$GPS_Init$34)
      00150B 0E                    2355 	.db	14
      00150C 23                    2356 	.uleb128	35
      00150D 01                    2357 	.db	1
      00150E 00 00 90 A1           2358 	.dw	0,(Sgps$GPS_Init$35)
      001512 0E                    2359 	.db	14
      001513 20                    2360 	.uleb128	32
      001514 01                    2361 	.db	1
      001515 00 00 90 A3           2362 	.dw	0,(Sgps$GPS_Init$37)
      001519 0E                    2363 	.db	14
      00151A 21                    2364 	.uleb128	33
      00151B 01                    2365 	.db	1
      00151C 00 00 90 A7           2366 	.dw	0,(Sgps$GPS_Init$38)
      001520 0E                    2367 	.db	14
      001521 20                    2368 	.uleb128	32
      001522 01                    2369 	.db	1
      001523 00 00 91 3C           2370 	.dw	0,(Sgps$GPS_Init$46)
      001527 0E                    2371 	.db	14
      001528 21                    2372 	.uleb128	33
      001529 01                    2373 	.db	1
      00152A 00 00 91 3E           2374 	.dw	0,(Sgps$GPS_Init$47)
      00152E 0E                    2375 	.db	14
      00152F 22                    2376 	.uleb128	34
      001530 01                    2377 	.db	1
      001531 00 00 91 42           2378 	.dw	0,(Sgps$GPS_Init$48)
      001535 0E                    2379 	.db	14
      001536 20                    2380 	.uleb128	32
      001537 01                    2381 	.db	1
      001538 00 00 91 45           2382 	.dw	0,(Sgps$GPS_Init$49)
      00153C 0E                    2383 	.db	14
      00153D 20                    2384 	.uleb128	32
      00153E 01                    2385 	.db	1
      00153F 00 00 91 4A           2386 	.dw	0,(Sgps$GPS_Init$51)
      001543 0E                    2387 	.db	14
      001544 22                    2388 	.uleb128	34
      001545 01                    2389 	.db	1
      001546 00 00 91 53           2390 	.dw	0,(Sgps$GPS_Init$52)
      00154A 0E                    2391 	.db	14
      00154B 20                    2392 	.uleb128	32
      00154C 01                    2393 	.db	1
      00154D 00 00 91 55           2394 	.dw	0,(Sgps$GPS_Init$53)
      001551 0E                    2395 	.db	14
      001552 21                    2396 	.uleb128	33
      001553 01                    2397 	.db	1
      001554 00 00 91 59           2398 	.dw	0,(Sgps$GPS_Init$54)
      001558 0E                    2399 	.db	14
      001559 20                    2400 	.uleb128	32
      00155A 01                    2401 	.db	1
      00155B 00 00 91 67           2402 	.dw	0,(Sgps$GPS_Init$62)
      00155F 0E                    2403 	.db	14
      001560 21                    2404 	.uleb128	33
      001561 01                    2405 	.db	1
      001562 00 00 91 69           2406 	.dw	0,(Sgps$GPS_Init$63)
      001566 0E                    2407 	.db	14
      001567 22                    2408 	.uleb128	34
      001568 01                    2409 	.db	1
      001569 00 00 91 6D           2410 	.dw	0,(Sgps$GPS_Init$64)
      00156D 0E                    2411 	.db	14
      00156E 20                    2412 	.uleb128	32
      00156F 01                    2413 	.db	1
      001570 00 00 91 70           2414 	.dw	0,(Sgps$GPS_Init$65)
      001574 0E                    2415 	.db	14
      001575 20                    2416 	.uleb128	32
      001576 01                    2417 	.db	1
      001577 00 00 91 75           2418 	.dw	0,(Sgps$GPS_Init$67)
      00157B 0E                    2419 	.db	14
      00157C 22                    2420 	.uleb128	34
      00157D 01                    2421 	.db	1
      00157E 00 00 91 7E           2422 	.dw	0,(Sgps$GPS_Init$68)
      001582 0E                    2423 	.db	14
      001583 20                    2424 	.uleb128	32
      001584 01                    2425 	.db	1
      001585 00 00 91 80           2426 	.dw	0,(Sgps$GPS_Init$69)
      001589 0E                    2427 	.db	14
      00158A 21                    2428 	.uleb128	33
      00158B 01                    2429 	.db	1
      00158C 00 00 91 84           2430 	.dw	0,(Sgps$GPS_Init$70)
      001590 0E                    2431 	.db	14
      001591 20                    2432 	.uleb128	32
      001592 01                    2433 	.db	1
      001593 00 00 91 8A           2434 	.dw	0,(Sgps$GPS_Init$75)
      001597 0E                    2435 	.db	14
      001598 02                    2436 	.uleb128	2
