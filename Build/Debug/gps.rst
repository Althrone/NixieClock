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
                           000000    30 G$GPS_TimeDataSturcture$0_0$0==.
      00000E                         31 _GPS_TimeDataSturcture::
      00000E                         32 	.ds 24
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                           000000    37 G$GPS_RxBuf$0_0$0==.
      000035                         38 _GPS_RxBuf::
      000035                         39 	.ds 34
                           000022    40 G$gps_first_send$0_0$0==.
      000057                         41 _gps_first_send::
      000057                         42 	.ds 1
                           000023    43 Fgps$num$0_0$0==.
      000058                         44 _num:
      000058                         45 	.ds 1
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                           000000    75 	Sgps$GPS_Init$0 ==.
                                     76 ;	Source/Device/Src/gps.c: 33: void GPS_Init(void)
                                     77 ;	-----------------------------------------
                                     78 ;	 function GPS_Init
                                     79 ;	-----------------------------------------
      0091D3                         80 _GPS_Init:
                           000000    81 	Sgps$GPS_Init$1 ==.
      0091D3 52 1E            [ 2]   82 	sub	sp, #30
                           000002    83 	Sgps$GPS_Init$2 ==.
                           000002    84 	Sgps$GPS_Init$3 ==.
                                     85 ;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
      0091D5 4B F0            [ 1]   86 	push	#0xf0
                           000004    87 	Sgps$GPS_Init$4 ==.
      0091D7 4B 20            [ 1]   88 	push	#0x20
                           000006    89 	Sgps$GPS_Init$5 ==.
      0091D9 4B 0F            [ 1]   90 	push	#0x0f
                           000008    91 	Sgps$GPS_Init$6 ==.
      0091DB 4B 50            [ 1]   92 	push	#0x50
                           00000A    93 	Sgps$GPS_Init$7 ==.
      0091DD CD 82 1E         [ 4]   94 	call	_GPIO_Init
      0091E0 5B 04            [ 2]   95 	addw	sp, #4
                           00000F    96 	Sgps$GPS_Init$8 ==.
                           00000F    97 	Sgps$GPS_Init$9 ==.
                                     98 ;	Source/Device/Src/gps.c: 36: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
      0091E2 4B 00            [ 1]   99 	push	#0x00
                           000011   100 	Sgps$GPS_Init$10 ==.
      0091E4 4B 40            [ 1]  101 	push	#0x40
                           000013   102 	Sgps$GPS_Init$11 ==.
      0091E6 4B 0F            [ 1]  103 	push	#0x0f
                           000015   104 	Sgps$GPS_Init$12 ==.
      0091E8 4B 50            [ 1]  105 	push	#0x50
                           000017   106 	Sgps$GPS_Init$13 ==.
      0091EA CD 82 1E         [ 4]  107 	call	_GPIO_Init
      0091ED 5B 04            [ 2]  108 	addw	sp, #4
                           00001C   109 	Sgps$GPS_Init$14 ==.
                           00001C   110 	Sgps$GPS_Init$15 ==.
                                    111 ;	Source/Device/Src/gps.c: 37: UART1_DeInit();
      0091EF CD 84 4B         [ 4]  112 	call	_UART1_DeInit
                           00001F   113 	Sgps$GPS_Init$16 ==.
                                    114 ;	Source/Device/Src/gps.c: 38: UART1_Init((uint32_t)9600,
      0091F2 4B 0C            [ 1]  115 	push	#0x0c
                           000021   116 	Sgps$GPS_Init$17 ==.
      0091F4 4B 80            [ 1]  117 	push	#0x80
                           000023   118 	Sgps$GPS_Init$18 ==.
      0091F6 4B 00            [ 1]  119 	push	#0x00
                           000025   120 	Sgps$GPS_Init$19 ==.
      0091F8 4B 00            [ 1]  121 	push	#0x00
                           000027   122 	Sgps$GPS_Init$20 ==.
      0091FA 4B 00            [ 1]  123 	push	#0x00
                           000029   124 	Sgps$GPS_Init$21 ==.
      0091FC 4B 80            [ 1]  125 	push	#0x80
                           00002B   126 	Sgps$GPS_Init$22 ==.
      0091FE 4B 25            [ 1]  127 	push	#0x25
                           00002D   128 	Sgps$GPS_Init$23 ==.
      009200 5F               [ 1]  129 	clrw	x
      009201 89               [ 2]  130 	pushw	x
                           00002F   131 	Sgps$GPS_Init$24 ==.
      009202 CD 84 76         [ 4]  132 	call	_UART1_Init
      009205 5B 09            [ 2]  133 	addw	sp, #9
                           000034   134 	Sgps$GPS_Init$25 ==.
                           000034   135 	Sgps$GPS_Init$26 ==.
                                    136 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      009207 4B 01            [ 1]  137 	push	#0x01
                           000036   138 	Sgps$GPS_Init$27 ==.
      009209 4B 05            [ 1]  139 	push	#0x05
                           000038   140 	Sgps$GPS_Init$28 ==.
      00920B 4B 02            [ 1]  141 	push	#0x02
                           00003A   142 	Sgps$GPS_Init$29 ==.
      00920D CD 86 07         [ 4]  143 	call	_UART1_ITConfig
      009210 5B 03            [ 2]  144 	addw	sp, #3
                           00003F   145 	Sgps$GPS_Init$30 ==.
                           00003F   146 	Sgps$GPS_Init$31 ==.
                                    147 ;	Source/Device/Src/gps.c: 45: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      009212 4B 01            [ 1]  148 	push	#0x01
                           000041   149 	Sgps$GPS_Init$32 ==.
      009214 4B 44            [ 1]  150 	push	#0x44
                           000043   151 	Sgps$GPS_Init$33 ==.
      009216 4B 02            [ 1]  152 	push	#0x02
                           000045   153 	Sgps$GPS_Init$34 ==.
      009218 CD 86 07         [ 4]  154 	call	_UART1_ITConfig
      00921B 5B 03            [ 2]  155 	addw	sp, #3
                           00004A   156 	Sgps$GPS_Init$35 ==.
                           00004A   157 	Sgps$GPS_Init$36 ==.
                                    158 ;	Source/Device/Src/gps.c: 46: UART1_Cmd(ENABLE);
      00921D 4B 01            [ 1]  159 	push	#0x01
                           00004C   160 	Sgps$GPS_Init$37 ==.
      00921F CD 85 F3         [ 4]  161 	call	_UART1_Cmd
      009222 84               [ 1]  162 	pop	a
                           000050   163 	Sgps$GPS_Init$38 ==.
                           000050   164 	Sgps$GPS_Init$39 ==.
                           000050   165 	Sgps$GPS_Init$40 ==.
                                    166 ;	Source/Device/Src/gps.c: 49: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
      009223 A6 BA            [ 1]  167 	ld	a, #0xba
      009225 6B 01            [ 1]  168 	ld	(0x01, sp), a
      009227 96               [ 1]  169 	ldw	x, sp
      009228 A6 CE            [ 1]  170 	ld	a, #0xce
      00922A E7 02            [ 1]  171 	ld	(2, x), a
      00922C 96               [ 1]  172 	ldw	x, sp
      00922D A6 04            [ 1]  173 	ld	a, #0x04
      00922F E7 03            [ 1]  174 	ld	(3, x), a
      009231 96               [ 1]  175 	ldw	x, sp
      009232 6F 04            [ 1]  176 	clr	(4, x)
      009234 96               [ 1]  177 	ldw	x, sp
      009235 A6 06            [ 1]  178 	ld	a, #0x06
      009237 E7 05            [ 1]  179 	ld	(5, x), a
      009239 96               [ 1]  180 	ldw	x, sp
      00923A A6 01            [ 1]  181 	ld	a, #0x01
      00923C E7 06            [ 1]  182 	ld	(6, x), a
      00923E 96               [ 1]  183 	ldw	x, sp
      00923F A6 01            [ 1]  184 	ld	a, #0x01
      009241 E7 07            [ 1]  185 	ld	(7, x), a
      009243 96               [ 1]  186 	ldw	x, sp
      009244 A6 10            [ 1]  187 	ld	a, #0x10
      009246 E7 08            [ 1]  188 	ld	(8, x), a
      009248 96               [ 1]  189 	ldw	x, sp
      009249 A6 01            [ 1]  190 	ld	a, #0x01
      00924B E7 09            [ 1]  191 	ld	(9, x), a
      00924D 96               [ 1]  192 	ldw	x, sp
      00924E 6F 0A            [ 1]  193 	clr	(10, x)
      009250 96               [ 1]  194 	ldw	x, sp
      009251 A6 05            [ 1]  195 	ld	a, #0x05
      009253 E7 0B            [ 1]  196 	ld	(11, x), a
      009255 96               [ 1]  197 	ldw	x, sp
      009256 A6 10            [ 1]  198 	ld	a, #0x10
      009258 E7 0C            [ 1]  199 	ld	(12, x), a
      00925A 96               [ 1]  200 	ldw	x, sp
      00925B A6 07            [ 1]  201 	ld	a, #0x07
      00925D E7 0D            [ 1]  202 	ld	(13, x), a
      00925F 96               [ 1]  203 	ldw	x, sp
      009260 A6 01            [ 1]  204 	ld	a, #0x01
      009262 E7 0E            [ 1]  205 	ld	(14, x), a
                           000091   206 	Sgps$GPS_Init$41 ==.
                                    207 ;	Source/Device/Src/gps.c: 50: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
      009264 A6 24            [ 1]  208 	ld	a, #0x24
      009266 6B 0F            [ 1]  209 	ld	(0x0f, sp), a
      009268 96               [ 1]  210 	ldw	x, sp
      009269 A6 43            [ 1]  211 	ld	a, #0x43
      00926B E7 10            [ 1]  212 	ld	(16, x), a
      00926D 96               [ 1]  213 	ldw	x, sp
      00926E A6 43            [ 1]  214 	ld	a, #0x43
      009270 E7 11            [ 1]  215 	ld	(17, x), a
      009272 96               [ 1]  216 	ldw	x, sp
      009273 A6 52            [ 1]  217 	ld	a, #0x52
      009275 E7 12            [ 1]  218 	ld	(18, x), a
      009277 96               [ 1]  219 	ldw	x, sp
      009278 A6 4D            [ 1]  220 	ld	a, #0x4d
      00927A E7 13            [ 1]  221 	ld	(19, x), a
      00927C 96               [ 1]  222 	ldw	x, sp
      00927D A6 4F            [ 1]  223 	ld	a, #0x4f
      00927F E7 14            [ 1]  224 	ld	(20, x), a
      009281 96               [ 1]  225 	ldw	x, sp
      009282 A6 2C            [ 1]  226 	ld	a, #0x2c
      009284 E7 15            [ 1]  227 	ld	(21, x), a
      009286 96               [ 1]  228 	ldw	x, sp
      009287 A6 2C            [ 1]  229 	ld	a, #0x2c
      009289 E7 16            [ 1]  230 	ld	(22, x), a
      00928B 96               [ 1]  231 	ldw	x, sp
      00928C A6 33            [ 1]  232 	ld	a, #0x33
      00928E E7 17            [ 1]  233 	ld	(23, x), a
      009290 96               [ 1]  234 	ldw	x, sp
      009291 A6 2C            [ 1]  235 	ld	a, #0x2c
      009293 E7 18            [ 1]  236 	ld	(24, x), a
      009295 96               [ 1]  237 	ldw	x, sp
      009296 A6 2A            [ 1]  238 	ld	a, #0x2a
      009298 E7 19            [ 1]  239 	ld	(25, x), a
      00929A 96               [ 1]  240 	ldw	x, sp
      00929B A6 34            [ 1]  241 	ld	a, #0x34
      00929D E7 1A            [ 1]  242 	ld	(26, x), a
      00929F 96               [ 1]  243 	ldw	x, sp
      0092A0 A6 46            [ 1]  244 	ld	a, #0x46
      0092A2 E7 1B            [ 1]  245 	ld	(27, x), a
      0092A4 96               [ 1]  246 	ldw	x, sp
      0092A5 A6 0D            [ 1]  247 	ld	a, #0x0d
      0092A7 E7 1C            [ 1]  248 	ld	(28, x), a
      0092A9 96               [ 1]  249 	ldw	x, sp
      0092AA A6 0A            [ 1]  250 	ld	a, #0x0a
      0092AC E7 1D            [ 1]  251 	ld	(29, x), a
                           0000DB   252 	Sgps$GPS_Init$42 ==.
                                    253 ;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      0092AE 0F 1E            [ 1]  254 	clr	(0x1e, sp)
                           0000DD   255 	Sgps$GPS_Init$43 ==.
      0092B0                        256 00110$:
      0092B0 7B 1E            [ 1]  257 	ld	a, (0x1e, sp)
      0092B2 A1 0F            [ 1]  258 	cp	a, #0x0f
      0092B4 24 23            [ 1]  259 	jrnc	00104$
                           0000E3   260 	Sgps$GPS_Init$44 ==.
                           0000E3   261 	Sgps$GPS_Init$45 ==.
                                    262 ;	Source/Device/Src/gps.c: 55: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      0092B6                        263 00101$:
      0092B6 4B 80            [ 1]  264 	push	#0x80
                           0000E5   265 	Sgps$GPS_Init$46 ==.
      0092B8 4B 00            [ 1]  266 	push	#0x00
                           0000E7   267 	Sgps$GPS_Init$47 ==.
      0092BA CD 86 8C         [ 4]  268 	call	_UART1_GetFlagStatus
      0092BD 85               [ 2]  269 	popw	x
                           0000EB   270 	Sgps$GPS_Init$48 ==.
      0092BE 4A               [ 1]  271 	dec	a
      0092BF 26 F5            [ 1]  272 	jrne	00101$
                           0000EE   273 	Sgps$GPS_Init$49 ==.
                           0000EE   274 	Sgps$GPS_Init$50 ==.
                                    275 ;	Source/Device/Src/gps.c: 56: UART1_SendData8(close_all_nmea[i]);
      0092C1 5F               [ 1]  276 	clrw	x
      0092C2 7B 1E            [ 1]  277 	ld	a, (0x1e, sp)
      0092C4 97               [ 1]  278 	ld	xl, a
      0092C5 89               [ 2]  279 	pushw	x
                           0000F3   280 	Sgps$GPS_Init$51 ==.
      0092C6 96               [ 1]  281 	ldw	x, sp
      0092C7 1C 00 11         [ 2]  282 	addw	x, #17
      0092CA 72 FB 01         [ 2]  283 	addw	x, (1, sp)
      0092CD 5B 02            [ 2]  284 	addw	sp, #2
                           0000FC   285 	Sgps$GPS_Init$52 ==.
      0092CF F6               [ 1]  286 	ld	a, (x)
      0092D0 88               [ 1]  287 	push	a
                           0000FE   288 	Sgps$GPS_Init$53 ==.
      0092D1 CD 86 85         [ 4]  289 	call	_UART1_SendData8
      0092D4 84               [ 1]  290 	pop	a
                           000102   291 	Sgps$GPS_Init$54 ==.
                           000102   292 	Sgps$GPS_Init$55 ==.
                           000102   293 	Sgps$GPS_Init$56 ==.
                                    294 ;	Source/Device/Src/gps.c: 53: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      0092D5 0C 1E            [ 1]  295 	inc	(0x1e, sp)
      0092D7 20 D7            [ 2]  296 	jra	00110$
      0092D9                        297 00104$:
                           000106   298 	Sgps$GPS_Init$57 ==.
                           000106   299 	Sgps$GPS_Init$58 ==.
                                    300 ;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      0092D9 0F 1E            [ 1]  301 	clr	(0x1e, sp)
                           000108   302 	Sgps$GPS_Init$59 ==.
      0092DB                        303 00113$:
      0092DB 7B 1E            [ 1]  304 	ld	a, (0x1e, sp)
      0092DD A1 0E            [ 1]  305 	cp	a, #0x0e
      0092DF 24 23            [ 1]  306 	jrnc	00115$
                           00010E   307 	Sgps$GPS_Init$60 ==.
                           00010E   308 	Sgps$GPS_Init$61 ==.
                                    309 ;	Source/Device/Src/gps.c: 67: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      0092E1                        310 00105$:
      0092E1 4B 80            [ 1]  311 	push	#0x80
                           000110   312 	Sgps$GPS_Init$62 ==.
      0092E3 4B 00            [ 1]  313 	push	#0x00
                           000112   314 	Sgps$GPS_Init$63 ==.
      0092E5 CD 86 8C         [ 4]  315 	call	_UART1_GetFlagStatus
      0092E8 85               [ 2]  316 	popw	x
                           000116   317 	Sgps$GPS_Init$64 ==.
      0092E9 4A               [ 1]  318 	dec	a
      0092EA 26 F5            [ 1]  319 	jrne	00105$
                           000119   320 	Sgps$GPS_Init$65 ==.
                           000119   321 	Sgps$GPS_Init$66 ==.
                                    322 ;	Source/Device/Src/gps.c: 68: UART1_SendData8(open_nav_timeutc[i]);
      0092EC 5F               [ 1]  323 	clrw	x
      0092ED 7B 1E            [ 1]  324 	ld	a, (0x1e, sp)
      0092EF 97               [ 1]  325 	ld	xl, a
      0092F0 89               [ 2]  326 	pushw	x
                           00011E   327 	Sgps$GPS_Init$67 ==.
      0092F1 96               [ 1]  328 	ldw	x, sp
      0092F2 1C 00 03         [ 2]  329 	addw	x, #3
      0092F5 72 FB 01         [ 2]  330 	addw	x, (1, sp)
      0092F8 5B 02            [ 2]  331 	addw	sp, #2
                           000127   332 	Sgps$GPS_Init$68 ==.
      0092FA F6               [ 1]  333 	ld	a, (x)
      0092FB 88               [ 1]  334 	push	a
                           000129   335 	Sgps$GPS_Init$69 ==.
      0092FC CD 86 85         [ 4]  336 	call	_UART1_SendData8
      0092FF 84               [ 1]  337 	pop	a
                           00012D   338 	Sgps$GPS_Init$70 ==.
                           00012D   339 	Sgps$GPS_Init$71 ==.
                           00012D   340 	Sgps$GPS_Init$72 ==.
                                    341 ;	Source/Device/Src/gps.c: 65: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      009300 0C 1E            [ 1]  342 	inc	(0x1e, sp)
      009302 20 D7            [ 2]  343 	jra	00113$
                           000131   344 	Sgps$GPS_Init$73 ==.
      009304                        345 00115$:
                           000131   346 	Sgps$GPS_Init$74 ==.
                                    347 ;	Source/Device/Src/gps.c: 70: }
      009304 5B 1E            [ 2]  348 	addw	sp, #30
                           000133   349 	Sgps$GPS_Init$75 ==.
                           000133   350 	Sgps$GPS_Init$76 ==.
                           000133   351 	XG$GPS_Init$0$0 ==.
      009306 81               [ 4]  352 	ret
                           000134   353 	Sgps$GPS_Init$77 ==.
                           000134   354 	Sgps$GPS_GetTime$78 ==.
                                    355 ;	Source/Device/Src/gps.c: 75: void GPS_GetTime(void)
                                    356 ;	-----------------------------------------
                                    357 ;	 function GPS_GetTime
                                    358 ;	-----------------------------------------
      009307                        359 _GPS_GetTime:
                           000134   360 	Sgps$GPS_GetTime$79 ==.
      009307 52 04            [ 2]  361 	sub	sp, #4
                           000136   362 	Sgps$GPS_GetTime$80 ==.
                           000136   363 	Sgps$GPS_GetTime$81 ==.
                           000136   364 	Sgps$GPS_GetTime$82 ==.
                                    365 ;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
                           000136   366 	Sgps$GPS_GetTime$83 ==.
      009309 90 5F            [ 1]  367 	clrw	y
      00930B                        368 00106$:
      00930B 90 A3 00 08      [ 2]  369 	cpw	y, #0x0008
      00930F 2E 23            [ 1]  370 	jrsge	00101$
                           00013E   371 	Sgps$GPS_GetTime$84 ==.
                                    372 ;	Source/Device/Src/gps.c: 80: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      009311 AE 00 0E         [ 2]  373 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      009314 1F 01            [ 2]  374 	ldw	(0x01, sp), x
      009316 93               [ 1]  375 	ldw	x, y
      009317 1C 00 10         [ 2]  376 	addw	x, #0x0010
      00931A 72 FB 01         [ 2]  377 	addw	x, (0x01, sp)
      00931D 1F 03            [ 2]  378 	ldw	(0x03, sp), x
      00931F 93               [ 1]  379 	ldw	x, y
      009320 1C 00 16         [ 2]  380 	addw	x, #22
      009323 9F               [ 1]  381 	ld	a, xl
      009324 49               [ 1]  382 	rlc	a
      009325 4F               [ 1]  383 	clr	a
      009326 A2 00            [ 1]  384 	sbc	a, #0x00
      009328 95               [ 1]  385 	ld	xh, a
      009329 1C 00 35         [ 2]  386 	addw	x, #(_GPS_RxBuf + 0)
      00932C F6               [ 1]  387 	ld	a, (x)
      00932D 1E 03            [ 2]  388 	ldw	x, (0x03, sp)
      00932F F7               [ 1]  389 	ld	(x), a
                           00015D   390 	Sgps$GPS_GetTime$85 ==.
                                    391 ;	Source/Device/Src/gps.c: 79: for(int i=0;i<8;++i)
      009330 90 5C            [ 1]  392 	incw	y
      009332 20 D7            [ 2]  393 	jra	00106$
      009334                        394 00101$:
                           000161   395 	Sgps$GPS_GetTime$86 ==.
                                    396 ;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
      009334 90 AE 00 20      [ 2]  397 	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
      009338 90 F6            [ 1]  398 	ld	a, (y)
      00933A 5F               [ 1]  399 	clrw	x
      00933B 97               [ 1]  400 	ld	xl, a
      00933C 1C 00 08         [ 2]  401 	addw	x, #0x0008
                           00016C   402 	Sgps$GPS_GetTime$87 ==.
                                    403 ;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
                           00016C   404 	Sgps$GPS_GetTime$88 ==.
                                    405 ;	Source/Device/Src/gps.c: 81: if(GPS_TimeDataSturcture.hour+8>24)
      00933F A3 00 18         [ 2]  406 	cpw	x, #0x0018
      009342 2D 06            [ 1]  407 	jrsle	00103$
                           000171   408 	Sgps$GPS_GetTime$89 ==.
                                    409 ;	Source/Device/Src/gps.c: 82: GPS_TimeDataSturcture.hour+=8-24;
      009344 AB F0            [ 1]  410 	add	a, #0xf0
      009346 90 F7            [ 1]  411 	ld	(y), a
      009348 20 04            [ 2]  412 	jra	00104$
      00934A                        413 00103$:
                           000177   414 	Sgps$GPS_GetTime$90 ==.
                                    415 ;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.hour+=8;
      00934A AB 08            [ 1]  416 	add	a, #0x08
      00934C 90 F7            [ 1]  417 	ld	(y), a
      00934E                        418 00104$:
                           00017B   419 	Sgps$GPS_GetTime$91 ==.
                                    420 ;	Source/Device/Src/gps.c: 85: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      00934E 90 AE 00 1C      [ 2]  421 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      009352 C6 00 4A         [ 1]  422 	ld	a, _GPS_RxBuf+21
      009355 95               [ 1]  423 	ld	xh, a
      009356 0F 02            [ 1]  424 	clr	(0x02, sp)
      009358 C6 00 49         [ 1]  425 	ld	a, _GPS_RxBuf+20
      00935B 0F 03            [ 1]  426 	clr	(0x03, sp)
      00935D 1A 02            [ 1]  427 	or	a, (0x02, sp)
      00935F 02               [ 1]  428 	rlwa	x
      009360 1A 03            [ 1]  429 	or	a, (0x03, sp)
      009362 95               [ 1]  430 	ld	xh, a
      009363 90 FF            [ 2]  431 	ldw	(y), x
                           000192   432 	Sgps$GPS_GetTime$92 ==.
                                    433 ;	Source/Device/Src/gps.c: 86: }
      009365 5B 04            [ 2]  434 	addw	sp, #4
                           000194   435 	Sgps$GPS_GetTime$93 ==.
                           000194   436 	Sgps$GPS_GetTime$94 ==.
                           000194   437 	XG$GPS_GetTime$0$0 ==.
      009367 81               [ 4]  438 	ret
                           000195   439 	Sgps$GPS_GetTime$95 ==.
                           000195   440 	Sgps$UART1_RX_IRQHandler$96 ==.
                                    441 ;	Source/Device/Src/gps.c: 94: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    442 ;	-----------------------------------------
                                    443 ;	 function UART1_RX_IRQHandler
                                    444 ;	-----------------------------------------
      009368                        445 _UART1_RX_IRQHandler:
      009368 62               [ 2]  446 	div	x, a
                           000196   447 	Sgps$UART1_RX_IRQHandler$97 ==.
                           000196   448 	Sgps$UART1_RX_IRQHandler$98 ==.
                                    449 ;	Source/Device/Src/gps.c: 96: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      009369 4B 55            [ 1]  450 	push	#0x55
                           000198   451 	Sgps$UART1_RX_IRQHandler$99 ==.
      00936B 4B 02            [ 1]  452 	push	#0x02
                           00019A   453 	Sgps$UART1_RX_IRQHandler$100 ==.
      00936D CD 86 D0         [ 4]  454 	call	_UART1_GetITStatus
      009370 85               [ 2]  455 	popw	x
                           00019E   456 	Sgps$UART1_RX_IRQHandler$101 ==.
      009371 4A               [ 1]  457 	dec	a
      009372 26 21            [ 1]  458 	jrne	00109$
                           0001A1   459 	Sgps$UART1_RX_IRQHandler$102 ==.
                           0001A1   460 	Sgps$UART1_RX_IRQHandler$103 ==.
                           0001A1   461 	Sgps$UART1_RX_IRQHandler$104 ==.
                                    462 ;	Source/Device/Src/gps.c: 98: if(num<34)
      009374 C6 00 58         [ 1]  463 	ld	a, _num+0
      009377 A1 22            [ 1]  464 	cp	a, #0x22
      009379 24 14            [ 1]  465 	jrnc	00102$
                           0001A8   466 	Sgps$UART1_RX_IRQHandler$105 ==.
                           0001A8   467 	Sgps$UART1_RX_IRQHandler$106 ==.
                                    468 ;	Source/Device/Src/gps.c: 100: GPS_RxBuf[num]=UART1_ReceiveData8();
      00937B 5F               [ 1]  469 	clrw	x
      00937C C6 00 58         [ 1]  470 	ld	a, _num+0
      00937F 97               [ 1]  471 	ld	xl, a
      009380 1C 00 35         [ 2]  472 	addw	x, #(_GPS_RxBuf + 0)
      009383 89               [ 2]  473 	pushw	x
                           0001B1   474 	Sgps$UART1_RX_IRQHandler$107 ==.
      009384 CD 86 81         [ 4]  475 	call	_UART1_ReceiveData8
      009387 85               [ 2]  476 	popw	x
                           0001B5   477 	Sgps$UART1_RX_IRQHandler$108 ==.
      009388 F7               [ 1]  478 	ld	(x), a
                           0001B6   479 	Sgps$UART1_RX_IRQHandler$109 ==.
                                    480 ;	Source/Device/Src/gps.c: 101: ++num;
      009389 72 5C 00 58      [ 1]  481 	inc	_num+0
                           0001BA   482 	Sgps$UART1_RX_IRQHandler$110 ==.
      00938D 20 25            [ 2]  483 	jra	00111$
      00938F                        484 00102$:
                           0001BC   485 	Sgps$UART1_RX_IRQHandler$111 ==.
                                    486 ;	Source/Device/Src/gps.c: 104: num=0;
      00938F 72 5F 00 58      [ 1]  487 	clr	_num+0
                           0001C0   488 	Sgps$UART1_RX_IRQHandler$112 ==.
      009393 20 1F            [ 2]  489 	jra	00111$
      009395                        490 00109$:
                           0001C2   491 	Sgps$UART1_RX_IRQHandler$113 ==.
                                    492 ;	Source/Device/Src/gps.c: 106: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      009395 4B 44            [ 1]  493 	push	#0x44
                           0001C4   494 	Sgps$UART1_RX_IRQHandler$114 ==.
      009397 4B 02            [ 1]  495 	push	#0x02
                           0001C6   496 	Sgps$UART1_RX_IRQHandler$115 ==.
      009399 CD 86 D0         [ 4]  497 	call	_UART1_GetITStatus
      00939C 85               [ 2]  498 	popw	x
                           0001CA   499 	Sgps$UART1_RX_IRQHandler$116 ==.
      00939D 4A               [ 1]  500 	dec	a
      00939E 26 14            [ 1]  501 	jrne	00111$
                           0001CD   502 	Sgps$UART1_RX_IRQHandler$117 ==.
                           0001CD   503 	Sgps$UART1_RX_IRQHandler$118 ==.
                           0001CD   504 	Sgps$UART1_RX_IRQHandler$119 ==.
                                    505 ;	Source/Device/Src/gps.c: 108: UART1_ReceiveData8();
      0093A0 CD 86 81         [ 4]  506 	call	_UART1_ReceiveData8
                           0001D0   507 	Sgps$UART1_RX_IRQHandler$120 ==.
                                    508 ;	Source/Device/Src/gps.c: 109: num=0;
      0093A3 72 5F 00 58      [ 1]  509 	clr	_num+0
                           0001D4   510 	Sgps$UART1_RX_IRQHandler$121 ==.
                                    511 ;	Source/Device/Src/gps.c: 110: if(checksum()==SUCCESS)
      0093A7 CD 93 B5         [ 4]  512 	call	_checksum
      0093AA 4A               [ 1]  513 	dec	a
      0093AB 26 07            [ 1]  514 	jrne	00111$
                           0001DA   515 	Sgps$UART1_RX_IRQHandler$122 ==.
                           0001DA   516 	Sgps$UART1_RX_IRQHandler$123 ==.
                           0001DA   517 	Sgps$UART1_RX_IRQHandler$124 ==.
                                    518 ;	Source/Device/Src/gps.c: 112: GPS_GetTime();
      0093AD CD 93 07         [ 4]  519 	call	_GPS_GetTime
                           0001DD   520 	Sgps$UART1_RX_IRQHandler$125 ==.
                                    521 ;	Source/Device/Src/gps.c: 113: gps_first_send=SET;
      0093B0 35 01 00 57      [ 1]  522 	mov	_gps_first_send+0, #0x01
                           0001E1   523 	Sgps$UART1_RX_IRQHandler$126 ==.
      0093B4                        524 00111$:
                           0001E1   525 	Sgps$UART1_RX_IRQHandler$127 ==.
                                    526 ;	Source/Device/Src/gps.c: 116: }
                           0001E1   527 	Sgps$UART1_RX_IRQHandler$128 ==.
                           0001E1   528 	XG$UART1_RX_IRQHandler$0$0 ==.
      0093B4 80               [11]  529 	iret
                           0001E2   530 	Sgps$UART1_RX_IRQHandler$129 ==.
                           0001E2   531 	Sgps$checksum$130 ==.
                                    532 ;	Source/Device/Src/gps.c: 124: static ErrorStatus checksum(void)
                                    533 ;	-----------------------------------------
                                    534 ;	 function checksum
                                    535 ;	-----------------------------------------
      0093B5                        536 _checksum:
                           0001E2   537 	Sgps$checksum$131 ==.
      0093B5 52 0E            [ 2]  538 	sub	sp, #14
                           0001E4   539 	Sgps$checksum$132 ==.
                           0001E4   540 	Sgps$checksum$133 ==.
                                    541 ;	Source/Device/Src/gps.c: 127: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      0093B7 C6 00 3A         [ 1]  542 	ld	a, _GPS_RxBuf+5
      0093BA 0F 05            [ 1]  543 	clr	(0x05, sp)
      0093BC 6B 0A            [ 1]  544 	ld	(0x0a, sp), a
      0093BE 5F               [ 1]  545 	clrw	x
      0093BF 0F 0B            [ 1]  546 	clr	(0x0b, sp)
      0093C1 90 AE 00 37      [ 2]  547 	ldw	y, #(_GPS_RxBuf + 0)+2
      0093C5 C6 00 38         [ 1]  548 	ld	a, _GPS_RxBuf+3
      0093C8 6B 0E            [ 1]  549 	ld	(0x0e, sp), a
      0093CA 5D               [ 2]  550 	tnzw	x
      0093CB 26 3D            [ 1]  551 	jrne	00111$
      0093CD 1E 0A            [ 2]  552 	ldw	x, (0x0a, sp)
      0093CF 26 39            [ 1]  553 	jrne	00111$
      0093D1 C6 00 39         [ 1]  554 	ld	a, _GPS_RxBuf+4
      0093D4 5F               [ 1]  555 	clrw	x
      0093D5 0F 0A            [ 1]  556 	clr	(0x0a, sp)
      0093D7 6B 0B            [ 1]  557 	ld	(0x0b, sp), a
      0093D9 9F               [ 1]  558 	ld	a, xl
      0093DA 5F               [ 1]  559 	clrw	x
      0093DB 5D               [ 2]  560 	tnzw	x
      0093DC 26 2C            [ 1]  561 	jrne	00111$
      0093DE 0D 0B            [ 1]  562 	tnz	(0x0b, sp)
      0093E0 26 28            [ 1]  563 	jrne	00111$
      0093E2 4D               [ 1]  564 	tnz	a
      0093E3 26 25            [ 1]  565 	jrne	00111$
      0093E5 90 F6            [ 1]  566 	ld	a, (y)
      0093E7 5F               [ 1]  567 	clrw	x
      0093E8 0F 0A            [ 1]  568 	clr	(0x0a, sp)
      0093EA 0F 0D            [ 1]  569 	clr	(0x0d, sp)
      0093EC 0D 0D            [ 1]  570 	tnz	(0x0d, sp)
      0093EE 26 1A            [ 1]  571 	jrne	00111$
      0093F0 4D               [ 1]  572 	tnz	a
      0093F1 26 17            [ 1]  573 	jrne	00111$
      0093F3 5D               [ 2]  574 	tnzw	x
      0093F4 26 14            [ 1]  575 	jrne	00111$
      0093F6 7B 0E            [ 1]  576 	ld	a, (0x0e, sp)
      0093F8 0F 0C            [ 1]  577 	clr	(0x0c, sp)
      0093FA 5F               [ 1]  578 	clrw	x
      0093FB 1F 0A            [ 2]  579 	ldw	(0x0a, sp), x
      0093FD 97               [ 1]  580 	ld	xl, a
      0093FE 7B 0C            [ 1]  581 	ld	a, (0x0c, sp)
      009400 95               [ 1]  582 	ld	xh, a
      009401 5D               [ 2]  583 	tnzw	x
      009402 26 06            [ 1]  584 	jrne	00111$
      009404 1E 0A            [ 2]  585 	ldw	x, (0x0a, sp)
      009406 26 02            [ 1]  586 	jrne	00111$
      009408 4F               [ 1]  587 	clr	a
      009409 C5                     588 	.byte 0xc5
      00940A                        589 00111$:
      00940A A6 01            [ 1]  590 	ld	a, #0x01
      00940C                        591 00112$:
      00940C 5F               [ 1]  592 	clrw	x
      00940D 0F 0A            [ 1]  593 	clr	(0x0a, sp)
      00940F 6B 04            [ 1]  594 	ld	(0x04, sp), a
      009411 1F 02            [ 2]  595 	ldw	(0x02, sp), x
      009413 7B 0A            [ 1]  596 	ld	a, (0x0a, sp)
      009415 6B 01            [ 1]  597 	ld	(0x01, sp), a
                           000244   598 	Sgps$checksum$134 ==.
                           000244   599 	Sgps$checksum$135 ==.
                                    600 ;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      009417 7B 0E            [ 1]  601 	ld	a, (0x0e, sp)
      009419 6B 05            [ 1]  602 	ld	(0x05, sp), a
      00941B 17 06            [ 2]  603 	ldw	(0x06, sp), y
                           00024A   604 	Sgps$checksum$136 ==.
      00941D 5F               [ 1]  605 	clrw	x
      00941E 1F 0D            [ 2]  606 	ldw	(0x0d, sp), x
      009420                        607 00106$:
      009420 1E 06            [ 2]  608 	ldw	x, (0x06, sp)
      009422 F6               [ 1]  609 	ld	a, (x)
      009423 95               [ 1]  610 	ld	xh, a
      009424 4F               [ 1]  611 	clr	a
      009425 97               [ 1]  612 	ld	xl, a
      009426 5D               [ 2]  613 	tnzw	x
      009427 26 09            [ 1]  614 	jrne	00120$
      009429 7B 05            [ 1]  615 	ld	a, (0x05, sp)
      00942B 5F               [ 1]  616 	clrw	x
      00942C 97               [ 1]  617 	ld	xl, a
      00942D 5D               [ 2]  618 	tnzw	x
      00942E 26 02            [ 1]  619 	jrne	00120$
      009430 4F               [ 1]  620 	clr	a
      009431 C5                     621 	.byte 0xc5
      009432                        622 00120$:
      009432 A6 01            [ 1]  623 	ld	a, #0x01
      009434                        624 00121$:
      009434 5F               [ 1]  625 	clrw	x
      009435 97               [ 1]  626 	ld	xl, a
      009436 4B 04            [ 1]  627 	push	#0x04
                           000265   628 	Sgps$checksum$137 ==.
      009438 4B 00            [ 1]  629 	push	#0x00
                           000267   630 	Sgps$checksum$138 ==.
      00943A 89               [ 2]  631 	pushw	x
                           000268   632 	Sgps$checksum$139 ==.
      00943B CD 96 47         [ 4]  633 	call	__divsint
      00943E 5B 04            [ 2]  634 	addw	sp, #4
                           00026D   635 	Sgps$checksum$140 ==.
      009440 16 0D            [ 2]  636 	ldw	y, (0x0d, sp)
      009442 1F 0B            [ 2]  637 	ldw	(0x0b, sp), x
      009444 93               [ 1]  638 	ldw	x, y
      009445 13 0B            [ 2]  639 	cpw	x, (0x0b, sp)
      009447 25 03            [ 1]  640 	jrc	00236$
      009449 CC 94 DD         [ 2]  641 	jp	00101$
      00944C                        642 00236$:
                           000279   643 	Sgps$checksum$141 ==.
                                    644 ;	Source/Device/Src/gps.c: 131: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      00944C 7B 0E            [ 1]  645 	ld	a, (0x0e, sp)
      00944E 48               [ 1]  646 	sll	a
      00944F 48               [ 1]  647 	sll	a
      009450 6B 08            [ 1]  648 	ld	(0x08, sp), a
      009452 AB 06            [ 1]  649 	add	a, #0x06
      009454 97               [ 1]  650 	ld	xl, a
      009455 49               [ 1]  651 	rlc	a
      009456 4F               [ 1]  652 	clr	a
      009457 A2 00            [ 1]  653 	sbc	a, #0x00
      009459 95               [ 1]  654 	ld	xh, a
      00945A 1C 00 35         [ 2]  655 	addw	x, #(_GPS_RxBuf + 0)
      00945D F6               [ 1]  656 	ld	a, (x)
      00945E 0F 09            [ 1]  657 	clr	(0x09, sp)
      009460 6B 09            [ 1]  658 	ld	(0x09, sp), a
      009462 5F               [ 1]  659 	clrw	x
      009463 1F 0B            [ 2]  660 	ldw	(0x0b, sp), x
      009465 0F 0A            [ 1]  661 	clr	(0x0a, sp)
      009467 1E 0B            [ 2]  662 	ldw	x, (0x0b, sp)
      009469 26 50            [ 1]  663 	jrne	00123$
      00946B 1E 09            [ 2]  664 	ldw	x, (0x09, sp)
      00946D 26 4C            [ 1]  665 	jrne	00123$
      00946F 7B 08            [ 1]  666 	ld	a, (0x08, sp)
      009471 AB 07            [ 1]  667 	add	a, #0x07
      009473 97               [ 1]  668 	ld	xl, a
      009474 49               [ 1]  669 	rlc	a
      009475 4F               [ 1]  670 	clr	a
      009476 A2 00            [ 1]  671 	sbc	a, #0x00
      009478 95               [ 1]  672 	ld	xh, a
      009479 1C 00 35         [ 2]  673 	addw	x, #(_GPS_RxBuf + 0)
      00947C F6               [ 1]  674 	ld	a, (x)
      00947D 5F               [ 1]  675 	clrw	x
      00947E 97               [ 1]  676 	ld	xl, a
      00947F 90 5F            [ 1]  677 	clrw	y
      009481 90 5D            [ 2]  678 	tnzw	y
      009483 26 36            [ 1]  679 	jrne	00123$
      009485 5D               [ 2]  680 	tnzw	x
      009486 26 33            [ 1]  681 	jrne	00123$
                           0002B5   682 	Sgps$checksum$142 ==.
                                    683 ;	Source/Device/Src/gps.c: 132: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      009488 7B 08            [ 1]  684 	ld	a, (0x08, sp)
      00948A AB 08            [ 1]  685 	add	a, #0x08
      00948C 97               [ 1]  686 	ld	xl, a
      00948D 49               [ 1]  687 	rlc	a
      00948E 4F               [ 1]  688 	clr	a
      00948F A2 00            [ 1]  689 	sbc	a, #0x00
      009491 95               [ 1]  690 	ld	xh, a
      009492 1C 00 35         [ 2]  691 	addw	x, #(_GPS_RxBuf + 0)
      009495 F6               [ 1]  692 	ld	a, (x)
      009496 90 5F            [ 1]  693 	clrw	y
      009498 95               [ 1]  694 	ld	xh, a
      009499 4F               [ 1]  695 	clr	a
      00949A 97               [ 1]  696 	ld	xl, a
      00949B 5D               [ 2]  697 	tnzw	x
      00949C 26 1D            [ 1]  698 	jrne	00123$
      00949E 90 5D            [ 2]  699 	tnzw	y
      0094A0 26 19            [ 1]  700 	jrne	00123$
      0094A2 7B 08            [ 1]  701 	ld	a, (0x08, sp)
      0094A4 AB 09            [ 1]  702 	add	a, #0x09
      0094A6 97               [ 1]  703 	ld	xl, a
      0094A7 49               [ 1]  704 	rlc	a
      0094A8 4F               [ 1]  705 	clr	a
      0094A9 A2 00            [ 1]  706 	sbc	a, #0x00
      0094AB 95               [ 1]  707 	ld	xh, a
      0094AC 1C 00 35         [ 2]  708 	addw	x, #(_GPS_RxBuf + 0)
      0094AF F6               [ 1]  709 	ld	a, (x)
      0094B0 5F               [ 1]  710 	clrw	x
      0094B1 97               [ 1]  711 	ld	xl, a
      0094B2 90 5F            [ 1]  712 	clrw	y
      0094B4 5D               [ 2]  713 	tnzw	x
      0094B5 26 04            [ 1]  714 	jrne	00123$
      0094B7 90 5D            [ 2]  715 	tnzw	y
      0094B9 27 04            [ 1]  716 	jreq	00124$
      0094BB                        717 00123$:
      0094BB A6 01            [ 1]  718 	ld	a, #0x01
      0094BD 90 97            [ 1]  719 	ld	yl, a
      0094BF                        720 00124$:
      0094BF 4F               [ 1]  721 	clr	a
      0094C0 5F               [ 1]  722 	clrw	x
      0094C1 4D               [ 1]  723 	tnz	a
      0094C2 2A 01            [ 1]  724 	jrpl	00245$
      0094C4 5A               [ 2]  725 	decw	x
      0094C5                        726 00245$:
      0094C5 90 95            [ 1]  727 	ld	yh, a
      0094C7 72 F9 03         [ 2]  728 	addw	y, (0x03, sp)
      0094CA 9F               [ 1]  729 	ld	a, xl
      0094CB 19 02            [ 1]  730 	adc	a, (0x02, sp)
      0094CD 02               [ 1]  731 	rlwa	x
      0094CE 19 01            [ 1]  732 	adc	a, (0x01, sp)
      0094D0 95               [ 1]  733 	ld	xh, a
      0094D1 17 03            [ 2]  734 	ldw	(0x03, sp), y
      0094D3 1F 01            [ 2]  735 	ldw	(0x01, sp), x
                           000302   736 	Sgps$checksum$143 ==.
                                    737 ;	Source/Device/Src/gps.c: 130: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      0094D5 1E 0D            [ 2]  738 	ldw	x, (0x0d, sp)
      0094D7 5C               [ 1]  739 	incw	x
      0094D8 1F 0D            [ 2]  740 	ldw	(0x0d, sp), x
      0094DA CC 94 20         [ 2]  741 	jp	00106$
      0094DD                        742 00101$:
                           00030A   743 	Sgps$checksum$144 ==.
                                    744 ;	Source/Device/Src/gps.c: 134: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      0094DD C6 00 53         [ 1]  745 	ld	a, _GPS_RxBuf+30
      0094E0 0F 0B            [ 1]  746 	clr	(0x0b, sp)
      0094E2 6B 0B            [ 1]  747 	ld	(0x0b, sp), a
      0094E4 5F               [ 1]  748 	clrw	x
      0094E5 0F 0C            [ 1]  749 	clr	(0x0c, sp)
      0094E7 5D               [ 2]  750 	tnzw	x
      0094E8 26 34            [ 1]  751 	jrne	00132$
      0094EA 1E 0B            [ 2]  752 	ldw	x, (0x0b, sp)
      0094EC 26 30            [ 1]  753 	jrne	00132$
      0094EE C6 00 54         [ 1]  754 	ld	a, _GPS_RxBuf+31
      0094F1 5F               [ 1]  755 	clrw	x
      0094F2 97               [ 1]  756 	ld	xl, a
      0094F3 90 5F            [ 1]  757 	clrw	y
      0094F5 90 5D            [ 2]  758 	tnzw	y
      0094F7 26 25            [ 1]  759 	jrne	00132$
      0094F9 5D               [ 2]  760 	tnzw	x
      0094FA 26 22            [ 1]  761 	jrne	00132$
                           000329   762 	Sgps$checksum$145 ==.
                                    763 ;	Source/Device/Src/gps.c: 135: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      0094FC C6 00 55         [ 1]  764 	ld	a, _GPS_RxBuf+32
      0094FF 5F               [ 1]  765 	clrw	x
      009500 0F 0B            [ 1]  766 	clr	(0x0b, sp)
      009502 6B 0D            [ 1]  767 	ld	(0x0d, sp), a
      009504 5E               [ 1]  768 	swapw	x
      009505 0F 0E            [ 1]  769 	clr	(0x0e, sp)
      009507 16 0D            [ 2]  770 	ldw	y, (0x0d, sp)
      009509 26 13            [ 1]  771 	jrne	00132$
      00950B 5D               [ 2]  772 	tnzw	x
      00950C 26 10            [ 1]  773 	jrne	00132$
      00950E C6 00 56         [ 1]  774 	ld	a, _GPS_RxBuf+33
      009511 5F               [ 1]  775 	clrw	x
      009512 90 5F            [ 1]  776 	clrw	y
      009514 97               [ 1]  777 	ld	xl, a
      009515 5D               [ 2]  778 	tnzw	x
      009516 26 06            [ 1]  779 	jrne	00132$
      009518 90 5D            [ 2]  780 	tnzw	y
      00951A 26 02            [ 1]  781 	jrne	00132$
      00951C 4F               [ 1]  782 	clr	a
      00951D C5                     783 	.byte 0xc5
      00951E                        784 00132$:
      00951E A6 01            [ 1]  785 	ld	a, #0x01
      009520                        786 00133$:
      009520 5F               [ 1]  787 	clrw	x
      009521 90 5F            [ 1]  788 	clrw	y
      009523 97               [ 1]  789 	ld	xl, a
      009524 13 03            [ 2]  790 	cpw	x, (0x03, sp)
      009526 26 09            [ 1]  791 	jrne	00103$
      009528 93               [ 1]  792 	ldw	x, y
      009529 13 01            [ 2]  793 	cpw	x, (0x01, sp)
      00952B 26 04            [ 1]  794 	jrne	00103$
                           00035A   795 	Sgps$checksum$146 ==.
                           00035A   796 	Sgps$checksum$147 ==.
                                    797 ;	Source/Device/Src/gps.c: 136: return SUCCESS;
      00952D A6 01            [ 1]  798 	ld	a, #0x01
      00952F 20 01            [ 2]  799 	jra	00108$
      009531                        800 00103$:
                           00035E   801 	Sgps$checksum$148 ==.
                                    802 ;	Source/Device/Src/gps.c: 138: return ERROR;
      009531 4F               [ 1]  803 	clr	a
      009532                        804 00108$:
                           00035F   805 	Sgps$checksum$149 ==.
                                    806 ;	Source/Device/Src/gps.c: 139: }
      009532 5B 0E            [ 2]  807 	addw	sp, #14
                           000361   808 	Sgps$checksum$150 ==.
                           000361   809 	Sgps$checksum$151 ==.
                           000361   810 	XFgps$checksum$0$0 ==.
      009534 81               [ 4]  811 	ret
                           000362   812 	Sgps$checksum$152 ==.
                                    813 	.area CODE
                                    814 	.area CONST
                                    815 	.area INITIALIZER
                           000000   816 Fgps$__xinit_GPS_RxBuf$0_0$0 == .
      0080A3                        817 __xinit__GPS_RxBuf:
      0080A3 00                     818 	.db #0x00	; 0
      0080A4 00                     819 	.db 0x00
      0080A5 00                     820 	.db 0x00
      0080A6 00                     821 	.db 0x00
      0080A7 00                     822 	.db 0x00
      0080A8 00                     823 	.db 0x00
      0080A9 00                     824 	.db 0x00
      0080AA 00                     825 	.db 0x00
      0080AB 00                     826 	.db 0x00
      0080AC 00                     827 	.db 0x00
      0080AD 00                     828 	.db 0x00
      0080AE 00                     829 	.db 0x00
      0080AF 00                     830 	.db 0x00
      0080B0 00                     831 	.db 0x00
      0080B1 00                     832 	.db 0x00
      0080B2 00                     833 	.db 0x00
      0080B3 00                     834 	.db 0x00
      0080B4 00                     835 	.db 0x00
      0080B5 00                     836 	.db 0x00
      0080B6 00                     837 	.db 0x00
      0080B7 00                     838 	.db 0x00
      0080B8 00                     839 	.db 0x00
      0080B9 00                     840 	.db 0x00
      0080BA 00                     841 	.db 0x00
      0080BB 00                     842 	.db 0x00
      0080BC 00                     843 	.db 0x00
      0080BD 00                     844 	.db 0x00
      0080BE 00                     845 	.db 0x00
      0080BF 00                     846 	.db 0x00
      0080C0 00                     847 	.db 0x00
      0080C1 00                     848 	.db 0x00
      0080C2 00                     849 	.db 0x00
      0080C3 00                     850 	.db 0x00
      0080C4 00                     851 	.db 0x00
                           000022   852 Fgps$__xinit_gps_first_send$0_0$0 == .
      0080C5                        853 __xinit__gps_first_send:
      0080C5 00                     854 	.db #0x00	; 0
                           000023   855 Fgps$__xinit_num$0_0$0 == .
      0080C6                        856 __xinit__num:
      0080C6 00                     857 	.db #0x00	; 0
                                    858 	.area CABS (ABS)
                                    859 
                                    860 	.area .debug_line (NOLOAD)
      001896 00 00 01 ED            861 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00189A                        862 Ldebug_line_start:
      00189A 00 02                  863 	.dw	2
      00189C 00 00 00 78            864 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0018A0 01                     865 	.db	1
      0018A1 01                     866 	.db	1
      0018A2 FB                     867 	.db	-5
      0018A3 0F                     868 	.db	15
      0018A4 0A                     869 	.db	10
      0018A5 00                     870 	.db	0
      0018A6 01                     871 	.db	1
      0018A7 01                     872 	.db	1
      0018A8 01                     873 	.db	1
      0018A9 01                     874 	.db	1
      0018AA 00                     875 	.db	0
      0018AB 00                     876 	.db	0
      0018AC 00                     877 	.db	0
      0018AD 01                     878 	.db	1
      0018AE 43 3A 5C 50 72 6F 67   879 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0018D6 00                     880 	.db	0
      0018D7 43 3A 5C 50 72 6F 67   881 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0018FA 00                     882 	.db	0
      0018FB 00                     883 	.db	0
      0018FC 53 6F 75 72 63 65 2F   884 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      001913 00                     885 	.db	0
      001914 00                     886 	.uleb128	0
      001915 00                     887 	.uleb128	0
      001916 00                     888 	.uleb128	0
      001917 00                     889 	.db	0
      001918                        890 Ldebug_line_stmt:
      001918 00                     891 	.db	0
      001919 05                     892 	.uleb128	5
      00191A 02                     893 	.db	2
      00191B 00 00 91 D3            894 	.dw	0,(Sgps$GPS_Init$0)
      00191F 03                     895 	.db	3
      001920 20                     896 	.sleb128	32
      001921 01                     897 	.db	1
      001922 09                     898 	.db	9
      001923 00 02                  899 	.dw	Sgps$GPS_Init$3-Sgps$GPS_Init$0
      001925 03                     900 	.db	3
      001926 02                     901 	.sleb128	2
      001927 01                     902 	.db	1
      001928 09                     903 	.db	9
      001929 00 0D                  904 	.dw	Sgps$GPS_Init$9-Sgps$GPS_Init$3
      00192B 03                     905 	.db	3
      00192C 01                     906 	.sleb128	1
      00192D 01                     907 	.db	1
      00192E 09                     908 	.db	9
      00192F 00 0D                  909 	.dw	Sgps$GPS_Init$15-Sgps$GPS_Init$9
      001931 03                     910 	.db	3
      001932 01                     911 	.sleb128	1
      001933 01                     912 	.db	1
      001934 09                     913 	.db	9
      001935 00 03                  914 	.dw	Sgps$GPS_Init$16-Sgps$GPS_Init$15
      001937 03                     915 	.db	3
      001938 01                     916 	.sleb128	1
      001939 01                     917 	.db	1
      00193A 09                     918 	.db	9
      00193B 00 15                  919 	.dw	Sgps$GPS_Init$26-Sgps$GPS_Init$16
      00193D 03                     920 	.db	3
      00193E 06                     921 	.sleb128	6
      00193F 01                     922 	.db	1
      001940 09                     923 	.db	9
      001941 00 0B                  924 	.dw	Sgps$GPS_Init$31-Sgps$GPS_Init$26
      001943 03                     925 	.db	3
      001944 01                     926 	.sleb128	1
      001945 01                     927 	.db	1
      001946 09                     928 	.db	9
      001947 00 0B                  929 	.dw	Sgps$GPS_Init$36-Sgps$GPS_Init$31
      001949 03                     930 	.db	3
      00194A 01                     931 	.sleb128	1
      00194B 01                     932 	.db	1
      00194C 09                     933 	.db	9
      00194D 00 06                  934 	.dw	Sgps$GPS_Init$40-Sgps$GPS_Init$36
      00194F 03                     935 	.db	3
      001950 03                     936 	.sleb128	3
      001951 01                     937 	.db	1
      001952 09                     938 	.db	9
      001953 00 41                  939 	.dw	Sgps$GPS_Init$41-Sgps$GPS_Init$40
      001955 03                     940 	.db	3
      001956 01                     941 	.sleb128	1
      001957 01                     942 	.db	1
      001958 09                     943 	.db	9
      001959 00 4A                  944 	.dw	Sgps$GPS_Init$42-Sgps$GPS_Init$41
      00195B 03                     945 	.db	3
      00195C 03                     946 	.sleb128	3
      00195D 01                     947 	.db	1
      00195E 09                     948 	.db	9
      00195F 00 08                  949 	.dw	Sgps$GPS_Init$45-Sgps$GPS_Init$42
      001961 03                     950 	.db	3
      001962 02                     951 	.sleb128	2
      001963 01                     952 	.db	1
      001964 09                     953 	.db	9
      001965 00 0B                  954 	.dw	Sgps$GPS_Init$50-Sgps$GPS_Init$45
      001967 03                     955 	.db	3
      001968 01                     956 	.sleb128	1
      001969 01                     957 	.db	1
      00196A 09                     958 	.db	9
      00196B 00 14                  959 	.dw	Sgps$GPS_Init$56-Sgps$GPS_Init$50
      00196D 03                     960 	.db	3
      00196E 7D                     961 	.sleb128	-3
      00196F 01                     962 	.db	1
      001970 09                     963 	.db	9
      001971 00 04                  964 	.dw	Sgps$GPS_Init$58-Sgps$GPS_Init$56
      001973 03                     965 	.db	3
      001974 0C                     966 	.sleb128	12
      001975 01                     967 	.db	1
      001976 09                     968 	.db	9
      001977 00 08                  969 	.dw	Sgps$GPS_Init$61-Sgps$GPS_Init$58
      001979 03                     970 	.db	3
      00197A 02                     971 	.sleb128	2
      00197B 01                     972 	.db	1
      00197C 09                     973 	.db	9
      00197D 00 0B                  974 	.dw	Sgps$GPS_Init$66-Sgps$GPS_Init$61
      00197F 03                     975 	.db	3
      001980 01                     976 	.sleb128	1
      001981 01                     977 	.db	1
      001982 09                     978 	.db	9
      001983 00 14                  979 	.dw	Sgps$GPS_Init$72-Sgps$GPS_Init$66
      001985 03                     980 	.db	3
      001986 7D                     981 	.sleb128	-3
      001987 01                     982 	.db	1
      001988 09                     983 	.db	9
      001989 00 04                  984 	.dw	Sgps$GPS_Init$74-Sgps$GPS_Init$72
      00198B 03                     985 	.db	3
      00198C 05                     986 	.sleb128	5
      00198D 01                     987 	.db	1
      00198E 09                     988 	.db	9
      00198F 00 03                  989 	.dw	1+Sgps$GPS_Init$76-Sgps$GPS_Init$74
      001991 00                     990 	.db	0
      001992 01                     991 	.uleb128	1
      001993 01                     992 	.db	1
      001994 00                     993 	.db	0
      001995 05                     994 	.uleb128	5
      001996 02                     995 	.db	2
      001997 00 00 93 07            996 	.dw	0,(Sgps$GPS_GetTime$78)
      00199B 03                     997 	.db	3
      00199C CA 00                  998 	.sleb128	74
      00199E 01                     999 	.db	1
      00199F 09                    1000 	.db	9
      0019A0 00 02                 1001 	.dw	Sgps$GPS_GetTime$82-Sgps$GPS_GetTime$78
      0019A2 03                    1002 	.db	3
      0019A3 04                    1003 	.sleb128	4
      0019A4 01                    1004 	.db	1
      0019A5 09                    1005 	.db	9
      0019A6 00 08                 1006 	.dw	Sgps$GPS_GetTime$84-Sgps$GPS_GetTime$82
      0019A8 03                    1007 	.db	3
      0019A9 01                    1008 	.sleb128	1
      0019AA 01                    1009 	.db	1
      0019AB 09                    1010 	.db	9
      0019AC 00 1F                 1011 	.dw	Sgps$GPS_GetTime$85-Sgps$GPS_GetTime$84
      0019AE 03                    1012 	.db	3
      0019AF 7F                    1013 	.sleb128	-1
      0019B0 01                    1014 	.db	1
      0019B1 09                    1015 	.db	9
      0019B2 00 04                 1016 	.dw	Sgps$GPS_GetTime$86-Sgps$GPS_GetTime$85
      0019B4 03                    1017 	.db	3
      0019B5 02                    1018 	.sleb128	2
      0019B6 01                    1019 	.db	1
      0019B7 09                    1020 	.db	9
      0019B8 00 0B                 1021 	.dw	Sgps$GPS_GetTime$87-Sgps$GPS_GetTime$86
      0019BA 03                    1022 	.db	3
      0019BB 01                    1023 	.sleb128	1
      0019BC 01                    1024 	.db	1
      0019BD 09                    1025 	.db	9
      0019BE 00 00                 1026 	.dw	Sgps$GPS_GetTime$88-Sgps$GPS_GetTime$87
      0019C0 03                    1027 	.db	3
      0019C1 7F                    1028 	.sleb128	-1
      0019C2 01                    1029 	.db	1
      0019C3 09                    1030 	.db	9
      0019C4 00 05                 1031 	.dw	Sgps$GPS_GetTime$89-Sgps$GPS_GetTime$88
      0019C6 03                    1032 	.db	3
      0019C7 01                    1033 	.sleb128	1
      0019C8 01                    1034 	.db	1
      0019C9 09                    1035 	.db	9
      0019CA 00 06                 1036 	.dw	Sgps$GPS_GetTime$90-Sgps$GPS_GetTime$89
      0019CC 03                    1037 	.db	3
      0019CD 02                    1038 	.sleb128	2
      0019CE 01                    1039 	.db	1
      0019CF 09                    1040 	.db	9
      0019D0 00 04                 1041 	.dw	Sgps$GPS_GetTime$91-Sgps$GPS_GetTime$90
      0019D2 03                    1042 	.db	3
      0019D3 01                    1043 	.sleb128	1
      0019D4 01                    1044 	.db	1
      0019D5 09                    1045 	.db	9
      0019D6 00 17                 1046 	.dw	Sgps$GPS_GetTime$92-Sgps$GPS_GetTime$91
      0019D8 03                    1047 	.db	3
      0019D9 01                    1048 	.sleb128	1
      0019DA 01                    1049 	.db	1
      0019DB 09                    1050 	.db	9
      0019DC 00 03                 1051 	.dw	1+Sgps$GPS_GetTime$94-Sgps$GPS_GetTime$92
      0019DE 00                    1052 	.db	0
      0019DF 01                    1053 	.uleb128	1
      0019E0 01                    1054 	.db	1
      0019E1 00                    1055 	.db	0
      0019E2 05                    1056 	.uleb128	5
      0019E3 02                    1057 	.db	2
      0019E4 00 00 93 68           1058 	.dw	0,(Sgps$UART1_RX_IRQHandler$96)
      0019E8 03                    1059 	.db	3
      0019E9 DD 00                 1060 	.sleb128	93
      0019EB 01                    1061 	.db	1
      0019EC 09                    1062 	.db	9
      0019ED 00 01                 1063 	.dw	Sgps$UART1_RX_IRQHandler$98-Sgps$UART1_RX_IRQHandler$96
      0019EF 03                    1064 	.db	3
      0019F0 02                    1065 	.sleb128	2
      0019F1 01                    1066 	.db	1
      0019F2 09                    1067 	.db	9
      0019F3 00 0B                 1068 	.dw	Sgps$UART1_RX_IRQHandler$104-Sgps$UART1_RX_IRQHandler$98
      0019F5 03                    1069 	.db	3
      0019F6 02                    1070 	.sleb128	2
      0019F7 01                    1071 	.db	1
      0019F8 09                    1072 	.db	9
      0019F9 00 07                 1073 	.dw	Sgps$UART1_RX_IRQHandler$106-Sgps$UART1_RX_IRQHandler$104
      0019FB 03                    1074 	.db	3
      0019FC 02                    1075 	.sleb128	2
      0019FD 01                    1076 	.db	1
      0019FE 09                    1077 	.db	9
      0019FF 00 0E                 1078 	.dw	Sgps$UART1_RX_IRQHandler$109-Sgps$UART1_RX_IRQHandler$106
      001A01 03                    1079 	.db	3
      001A02 01                    1080 	.sleb128	1
      001A03 01                    1081 	.db	1
      001A04 09                    1082 	.db	9
      001A05 00 06                 1083 	.dw	Sgps$UART1_RX_IRQHandler$111-Sgps$UART1_RX_IRQHandler$109
      001A07 03                    1084 	.db	3
      001A08 03                    1085 	.sleb128	3
      001A09 01                    1086 	.db	1
      001A0A 09                    1087 	.db	9
      001A0B 00 06                 1088 	.dw	Sgps$UART1_RX_IRQHandler$113-Sgps$UART1_RX_IRQHandler$111
      001A0D 03                    1089 	.db	3
      001A0E 02                    1090 	.sleb128	2
      001A0F 01                    1091 	.db	1
      001A10 09                    1092 	.db	9
      001A11 00 0B                 1093 	.dw	Sgps$UART1_RX_IRQHandler$119-Sgps$UART1_RX_IRQHandler$113
      001A13 03                    1094 	.db	3
      001A14 02                    1095 	.sleb128	2
      001A15 01                    1096 	.db	1
      001A16 09                    1097 	.db	9
      001A17 00 03                 1098 	.dw	Sgps$UART1_RX_IRQHandler$120-Sgps$UART1_RX_IRQHandler$119
      001A19 03                    1099 	.db	3
      001A1A 01                    1100 	.sleb128	1
      001A1B 01                    1101 	.db	1
      001A1C 09                    1102 	.db	9
      001A1D 00 04                 1103 	.dw	Sgps$UART1_RX_IRQHandler$121-Sgps$UART1_RX_IRQHandler$120
      001A1F 03                    1104 	.db	3
      001A20 01                    1105 	.sleb128	1
      001A21 01                    1106 	.db	1
      001A22 09                    1107 	.db	9
      001A23 00 06                 1108 	.dw	Sgps$UART1_RX_IRQHandler$124-Sgps$UART1_RX_IRQHandler$121
      001A25 03                    1109 	.db	3
      001A26 02                    1110 	.sleb128	2
      001A27 01                    1111 	.db	1
      001A28 09                    1112 	.db	9
      001A29 00 03                 1113 	.dw	Sgps$UART1_RX_IRQHandler$125-Sgps$UART1_RX_IRQHandler$124
      001A2B 03                    1114 	.db	3
      001A2C 01                    1115 	.sleb128	1
      001A2D 01                    1116 	.db	1
      001A2E 09                    1117 	.db	9
      001A2F 00 04                 1118 	.dw	Sgps$UART1_RX_IRQHandler$127-Sgps$UART1_RX_IRQHandler$125
      001A31 03                    1119 	.db	3
      001A32 03                    1120 	.sleb128	3
      001A33 01                    1121 	.db	1
      001A34 09                    1122 	.db	9
      001A35 00 01                 1123 	.dw	1+Sgps$UART1_RX_IRQHandler$128-Sgps$UART1_RX_IRQHandler$127
      001A37 00                    1124 	.db	0
      001A38 01                    1125 	.uleb128	1
      001A39 01                    1126 	.db	1
      001A3A 00                    1127 	.db	0
      001A3B 05                    1128 	.uleb128	5
      001A3C 02                    1129 	.db	2
      001A3D 00 00 93 B5           1130 	.dw	0,(Sgps$checksum$130)
      001A41 03                    1131 	.db	3
      001A42 FB 00                 1132 	.sleb128	123
      001A44 01                    1133 	.db	1
      001A45 09                    1134 	.db	9
      001A46 00 02                 1135 	.dw	Sgps$checksum$133-Sgps$checksum$130
      001A48 03                    1136 	.db	3
      001A49 03                    1137 	.sleb128	3
      001A4A 01                    1138 	.db	1
      001A4B 09                    1139 	.db	9
      001A4C 00 60                 1140 	.dw	Sgps$checksum$135-Sgps$checksum$133
      001A4E 03                    1141 	.db	3
      001A4F 03                    1142 	.sleb128	3
      001A50 01                    1143 	.db	1
      001A51 09                    1144 	.db	9
      001A52 00 35                 1145 	.dw	Sgps$checksum$141-Sgps$checksum$135
      001A54 03                    1146 	.db	3
      001A55 01                    1147 	.sleb128	1
      001A56 01                    1148 	.db	1
      001A57 09                    1149 	.db	9
      001A58 00 3C                 1150 	.dw	Sgps$checksum$142-Sgps$checksum$141
      001A5A 03                    1151 	.db	3
      001A5B 01                    1152 	.sleb128	1
      001A5C 01                    1153 	.db	1
      001A5D 09                    1154 	.db	9
      001A5E 00 4D                 1155 	.dw	Sgps$checksum$143-Sgps$checksum$142
      001A60 03                    1156 	.db	3
      001A61 7E                    1157 	.sleb128	-2
      001A62 01                    1158 	.db	1
      001A63 09                    1159 	.db	9
      001A64 00 08                 1160 	.dw	Sgps$checksum$144-Sgps$checksum$143
      001A66 03                    1161 	.db	3
      001A67 04                    1162 	.sleb128	4
      001A68 01                    1163 	.db	1
      001A69 09                    1164 	.db	9
      001A6A 00 1F                 1165 	.dw	Sgps$checksum$145-Sgps$checksum$144
      001A6C 03                    1166 	.db	3
      001A6D 01                    1167 	.sleb128	1
      001A6E 01                    1168 	.db	1
      001A6F 09                    1169 	.db	9
      001A70 00 31                 1170 	.dw	Sgps$checksum$147-Sgps$checksum$145
      001A72 03                    1171 	.db	3
      001A73 01                    1172 	.sleb128	1
      001A74 01                    1173 	.db	1
      001A75 09                    1174 	.db	9
      001A76 00 04                 1175 	.dw	Sgps$checksum$148-Sgps$checksum$147
      001A78 03                    1176 	.db	3
      001A79 02                    1177 	.sleb128	2
      001A7A 01                    1178 	.db	1
      001A7B 09                    1179 	.db	9
      001A7C 00 01                 1180 	.dw	Sgps$checksum$149-Sgps$checksum$148
      001A7E 03                    1181 	.db	3
      001A7F 01                    1182 	.sleb128	1
      001A80 01                    1183 	.db	1
      001A81 09                    1184 	.db	9
      001A82 00 03                 1185 	.dw	1+Sgps$checksum$151-Sgps$checksum$149
      001A84 00                    1186 	.db	0
      001A85 01                    1187 	.uleb128	1
      001A86 01                    1188 	.db	1
      001A87                       1189 Ldebug_line_end:
                                   1190 
                                   1191 	.area .debug_loc (NOLOAD)
      0019A4                       1192 Ldebug_loc_start:
      0019A4 00 00 95 34           1193 	.dw	0,(Sgps$checksum$150)
      0019A8 00 00 95 35           1194 	.dw	0,(Sgps$checksum$152)
      0019AC 00 02                 1195 	.dw	2
      0019AE 78                    1196 	.db	120
      0019AF 01                    1197 	.sleb128	1
      0019B0 00 00 95 2D           1198 	.dw	0,(Sgps$checksum$146)
      0019B4 00 00 95 34           1199 	.dw	0,(Sgps$checksum$150)
      0019B8 00 02                 1200 	.dw	2
      0019BA 78                    1201 	.db	120
      0019BB 0F                    1202 	.sleb128	15
      0019BC 00 00 94 40           1203 	.dw	0,(Sgps$checksum$140)
      0019C0 00 00 95 2D           1204 	.dw	0,(Sgps$checksum$146)
      0019C4 00 02                 1205 	.dw	2
      0019C6 78                    1206 	.db	120
      0019C7 0F                    1207 	.sleb128	15
      0019C8 00 00 94 3B           1208 	.dw	0,(Sgps$checksum$139)
      0019CC 00 00 94 40           1209 	.dw	0,(Sgps$checksum$140)
      0019D0 00 02                 1210 	.dw	2
      0019D2 78                    1211 	.db	120
      0019D3 13                    1212 	.sleb128	19
      0019D4 00 00 94 3A           1213 	.dw	0,(Sgps$checksum$138)
      0019D8 00 00 94 3B           1214 	.dw	0,(Sgps$checksum$139)
      0019DC 00 02                 1215 	.dw	2
      0019DE 78                    1216 	.db	120
      0019DF 11                    1217 	.sleb128	17
      0019E0 00 00 94 38           1218 	.dw	0,(Sgps$checksum$137)
      0019E4 00 00 94 3A           1219 	.dw	0,(Sgps$checksum$138)
      0019E8 00 02                 1220 	.dw	2
      0019EA 78                    1221 	.db	120
      0019EB 10                    1222 	.sleb128	16
      0019EC 00 00 93 B7           1223 	.dw	0,(Sgps$checksum$132)
      0019F0 00 00 94 38           1224 	.dw	0,(Sgps$checksum$137)
      0019F4 00 02                 1225 	.dw	2
      0019F6 78                    1226 	.db	120
      0019F7 0F                    1227 	.sleb128	15
      0019F8 00 00 93 B5           1228 	.dw	0,(Sgps$checksum$131)
      0019FC 00 00 93 B7           1229 	.dw	0,(Sgps$checksum$132)
      001A00 00 02                 1230 	.dw	2
      001A02 78                    1231 	.db	120
      001A03 01                    1232 	.sleb128	1
      001A04 00 00 00 00           1233 	.dw	0,0
      001A08 00 00 00 00           1234 	.dw	0,0
      001A0C 00 00 93 AD           1235 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      001A10 00 00 93 B5           1236 	.dw	0,(Sgps$UART1_RX_IRQHandler$129)
      001A14 00 02                 1237 	.dw	2
      001A16 78                    1238 	.db	120
      001A17 01                    1239 	.sleb128	1
      001A18 00 00 93 A0           1240 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      001A1C 00 00 93 AD           1241 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      001A20 00 02                 1242 	.dw	2
      001A22 78                    1243 	.db	120
      001A23 01                    1244 	.sleb128	1
      001A24 00 00 93 9D           1245 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      001A28 00 00 93 A0           1246 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      001A2C 00 02                 1247 	.dw	2
      001A2E 78                    1248 	.db	120
      001A2F 01                    1249 	.sleb128	1
      001A30 00 00 93 99           1250 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      001A34 00 00 93 9D           1251 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      001A38 00 02                 1252 	.dw	2
      001A3A 78                    1253 	.db	120
      001A3B 03                    1254 	.sleb128	3
      001A3C 00 00 93 97           1255 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      001A40 00 00 93 99           1256 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      001A44 00 02                 1257 	.dw	2
      001A46 78                    1258 	.db	120
      001A47 02                    1259 	.sleb128	2
      001A48 00 00 93 88           1260 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      001A4C 00 00 93 97           1261 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      001A50 00 02                 1262 	.dw	2
      001A52 78                    1263 	.db	120
      001A53 01                    1264 	.sleb128	1
      001A54 00 00 93 84           1265 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      001A58 00 00 93 88           1266 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      001A5C 00 02                 1267 	.dw	2
      001A5E 78                    1268 	.db	120
      001A5F 03                    1269 	.sleb128	3
      001A60 00 00 93 74           1270 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      001A64 00 00 93 84           1271 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      001A68 00 02                 1272 	.dw	2
      001A6A 78                    1273 	.db	120
      001A6B 01                    1274 	.sleb128	1
      001A6C 00 00 93 71           1275 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      001A70 00 00 93 74           1276 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      001A74 00 02                 1277 	.dw	2
      001A76 78                    1278 	.db	120
      001A77 01                    1279 	.sleb128	1
      001A78 00 00 93 6D           1280 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      001A7C 00 00 93 71           1281 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      001A80 00 02                 1282 	.dw	2
      001A82 78                    1283 	.db	120
      001A83 03                    1284 	.sleb128	3
      001A84 00 00 93 6B           1285 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      001A88 00 00 93 6D           1286 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      001A8C 00 02                 1287 	.dw	2
      001A8E 78                    1288 	.db	120
      001A8F 02                    1289 	.sleb128	2
      001A90 00 00 93 69           1290 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
      001A94 00 00 93 6B           1291 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      001A98 00 02                 1292 	.dw	2
      001A9A 78                    1293 	.db	120
      001A9B 01                    1294 	.sleb128	1
      001A9C 00 00 00 00           1295 	.dw	0,0
      001AA0 00 00 00 00           1296 	.dw	0,0
      001AA4 00 00 93 67           1297 	.dw	0,(Sgps$GPS_GetTime$93)
      001AA8 00 00 93 68           1298 	.dw	0,(Sgps$GPS_GetTime$95)
      001AAC 00 02                 1299 	.dw	2
      001AAE 78                    1300 	.db	120
      001AAF 01                    1301 	.sleb128	1
      001AB0 00 00 93 09           1302 	.dw	0,(Sgps$GPS_GetTime$80)
      001AB4 00 00 93 67           1303 	.dw	0,(Sgps$GPS_GetTime$93)
      001AB8 00 02                 1304 	.dw	2
      001ABA 78                    1305 	.db	120
      001ABB 05                    1306 	.sleb128	5
      001ABC 00 00 93 07           1307 	.dw	0,(Sgps$GPS_GetTime$79)
      001AC0 00 00 93 09           1308 	.dw	0,(Sgps$GPS_GetTime$80)
      001AC4 00 02                 1309 	.dw	2
      001AC6 78                    1310 	.db	120
      001AC7 01                    1311 	.sleb128	1
      001AC8 00 00 00 00           1312 	.dw	0,0
      001ACC 00 00 00 00           1313 	.dw	0,0
      001AD0 00 00 93 06           1314 	.dw	0,(Sgps$GPS_Init$75)
      001AD4 00 00 93 07           1315 	.dw	0,(Sgps$GPS_Init$77)
      001AD8 00 02                 1316 	.dw	2
      001ADA 78                    1317 	.db	120
      001ADB 01                    1318 	.sleb128	1
      001ADC 00 00 93 00           1319 	.dw	0,(Sgps$GPS_Init$70)
      001AE0 00 00 93 06           1320 	.dw	0,(Sgps$GPS_Init$75)
      001AE4 00 02                 1321 	.dw	2
      001AE6 78                    1322 	.db	120
      001AE7 1F                    1323 	.sleb128	31
      001AE8 00 00 92 FC           1324 	.dw	0,(Sgps$GPS_Init$69)
      001AEC 00 00 93 00           1325 	.dw	0,(Sgps$GPS_Init$70)
      001AF0 00 02                 1326 	.dw	2
      001AF2 78                    1327 	.db	120
      001AF3 20                    1328 	.sleb128	32
      001AF4 00 00 92 FA           1329 	.dw	0,(Sgps$GPS_Init$68)
      001AF8 00 00 92 FC           1330 	.dw	0,(Sgps$GPS_Init$69)
      001AFC 00 02                 1331 	.dw	2
      001AFE 78                    1332 	.db	120
      001AFF 1F                    1333 	.sleb128	31
      001B00 00 00 92 F1           1334 	.dw	0,(Sgps$GPS_Init$67)
      001B04 00 00 92 FA           1335 	.dw	0,(Sgps$GPS_Init$68)
      001B08 00 02                 1336 	.dw	2
      001B0A 78                    1337 	.db	120
      001B0B 21                    1338 	.sleb128	33
      001B0C 00 00 92 EC           1339 	.dw	0,(Sgps$GPS_Init$65)
      001B10 00 00 92 F1           1340 	.dw	0,(Sgps$GPS_Init$67)
      001B14 00 02                 1341 	.dw	2
      001B16 78                    1342 	.db	120
      001B17 1F                    1343 	.sleb128	31
      001B18 00 00 92 E9           1344 	.dw	0,(Sgps$GPS_Init$64)
      001B1C 00 00 92 EC           1345 	.dw	0,(Sgps$GPS_Init$65)
      001B20 00 02                 1346 	.dw	2
      001B22 78                    1347 	.db	120
      001B23 1F                    1348 	.sleb128	31
      001B24 00 00 92 E5           1349 	.dw	0,(Sgps$GPS_Init$63)
      001B28 00 00 92 E9           1350 	.dw	0,(Sgps$GPS_Init$64)
      001B2C 00 02                 1351 	.dw	2
      001B2E 78                    1352 	.db	120
      001B2F 21                    1353 	.sleb128	33
      001B30 00 00 92 E3           1354 	.dw	0,(Sgps$GPS_Init$62)
      001B34 00 00 92 E5           1355 	.dw	0,(Sgps$GPS_Init$63)
      001B38 00 02                 1356 	.dw	2
      001B3A 78                    1357 	.db	120
      001B3B 20                    1358 	.sleb128	32
      001B3C 00 00 92 D5           1359 	.dw	0,(Sgps$GPS_Init$54)
      001B40 00 00 92 E3           1360 	.dw	0,(Sgps$GPS_Init$62)
      001B44 00 02                 1361 	.dw	2
      001B46 78                    1362 	.db	120
      001B47 1F                    1363 	.sleb128	31
      001B48 00 00 92 D1           1364 	.dw	0,(Sgps$GPS_Init$53)
      001B4C 00 00 92 D5           1365 	.dw	0,(Sgps$GPS_Init$54)
      001B50 00 02                 1366 	.dw	2
      001B52 78                    1367 	.db	120
      001B53 20                    1368 	.sleb128	32
      001B54 00 00 92 CF           1369 	.dw	0,(Sgps$GPS_Init$52)
      001B58 00 00 92 D1           1370 	.dw	0,(Sgps$GPS_Init$53)
      001B5C 00 02                 1371 	.dw	2
      001B5E 78                    1372 	.db	120
      001B5F 1F                    1373 	.sleb128	31
      001B60 00 00 92 C6           1374 	.dw	0,(Sgps$GPS_Init$51)
      001B64 00 00 92 CF           1375 	.dw	0,(Sgps$GPS_Init$52)
      001B68 00 02                 1376 	.dw	2
      001B6A 78                    1377 	.db	120
      001B6B 21                    1378 	.sleb128	33
      001B6C 00 00 92 C1           1379 	.dw	0,(Sgps$GPS_Init$49)
      001B70 00 00 92 C6           1380 	.dw	0,(Sgps$GPS_Init$51)
      001B74 00 02                 1381 	.dw	2
      001B76 78                    1382 	.db	120
      001B77 1F                    1383 	.sleb128	31
      001B78 00 00 92 BE           1384 	.dw	0,(Sgps$GPS_Init$48)
      001B7C 00 00 92 C1           1385 	.dw	0,(Sgps$GPS_Init$49)
      001B80 00 02                 1386 	.dw	2
      001B82 78                    1387 	.db	120
      001B83 1F                    1388 	.sleb128	31
      001B84 00 00 92 BA           1389 	.dw	0,(Sgps$GPS_Init$47)
      001B88 00 00 92 BE           1390 	.dw	0,(Sgps$GPS_Init$48)
      001B8C 00 02                 1391 	.dw	2
      001B8E 78                    1392 	.db	120
      001B8F 21                    1393 	.sleb128	33
      001B90 00 00 92 B8           1394 	.dw	0,(Sgps$GPS_Init$46)
      001B94 00 00 92 BA           1395 	.dw	0,(Sgps$GPS_Init$47)
      001B98 00 02                 1396 	.dw	2
      001B9A 78                    1397 	.db	120
      001B9B 20                    1398 	.sleb128	32
      001B9C 00 00 92 23           1399 	.dw	0,(Sgps$GPS_Init$38)
      001BA0 00 00 92 B8           1400 	.dw	0,(Sgps$GPS_Init$46)
      001BA4 00 02                 1401 	.dw	2
      001BA6 78                    1402 	.db	120
      001BA7 1F                    1403 	.sleb128	31
      001BA8 00 00 92 1F           1404 	.dw	0,(Sgps$GPS_Init$37)
      001BAC 00 00 92 23           1405 	.dw	0,(Sgps$GPS_Init$38)
      001BB0 00 02                 1406 	.dw	2
      001BB2 78                    1407 	.db	120
      001BB3 20                    1408 	.sleb128	32
      001BB4 00 00 92 1D           1409 	.dw	0,(Sgps$GPS_Init$35)
      001BB8 00 00 92 1F           1410 	.dw	0,(Sgps$GPS_Init$37)
      001BBC 00 02                 1411 	.dw	2
      001BBE 78                    1412 	.db	120
      001BBF 1F                    1413 	.sleb128	31
      001BC0 00 00 92 18           1414 	.dw	0,(Sgps$GPS_Init$34)
      001BC4 00 00 92 1D           1415 	.dw	0,(Sgps$GPS_Init$35)
      001BC8 00 02                 1416 	.dw	2
      001BCA 78                    1417 	.db	120
      001BCB 22                    1418 	.sleb128	34
      001BCC 00 00 92 16           1419 	.dw	0,(Sgps$GPS_Init$33)
      001BD0 00 00 92 18           1420 	.dw	0,(Sgps$GPS_Init$34)
      001BD4 00 02                 1421 	.dw	2
      001BD6 78                    1422 	.db	120
      001BD7 21                    1423 	.sleb128	33
      001BD8 00 00 92 14           1424 	.dw	0,(Sgps$GPS_Init$32)
      001BDC 00 00 92 16           1425 	.dw	0,(Sgps$GPS_Init$33)
      001BE0 00 02                 1426 	.dw	2
      001BE2 78                    1427 	.db	120
      001BE3 20                    1428 	.sleb128	32
      001BE4 00 00 92 12           1429 	.dw	0,(Sgps$GPS_Init$30)
      001BE8 00 00 92 14           1430 	.dw	0,(Sgps$GPS_Init$32)
      001BEC 00 02                 1431 	.dw	2
      001BEE 78                    1432 	.db	120
      001BEF 1F                    1433 	.sleb128	31
      001BF0 00 00 92 0D           1434 	.dw	0,(Sgps$GPS_Init$29)
      001BF4 00 00 92 12           1435 	.dw	0,(Sgps$GPS_Init$30)
      001BF8 00 02                 1436 	.dw	2
      001BFA 78                    1437 	.db	120
      001BFB 22                    1438 	.sleb128	34
      001BFC 00 00 92 0B           1439 	.dw	0,(Sgps$GPS_Init$28)
      001C00 00 00 92 0D           1440 	.dw	0,(Sgps$GPS_Init$29)
      001C04 00 02                 1441 	.dw	2
      001C06 78                    1442 	.db	120
      001C07 21                    1443 	.sleb128	33
      001C08 00 00 92 09           1444 	.dw	0,(Sgps$GPS_Init$27)
      001C0C 00 00 92 0B           1445 	.dw	0,(Sgps$GPS_Init$28)
      001C10 00 02                 1446 	.dw	2
      001C12 78                    1447 	.db	120
      001C13 20                    1448 	.sleb128	32
      001C14 00 00 92 07           1449 	.dw	0,(Sgps$GPS_Init$25)
      001C18 00 00 92 09           1450 	.dw	0,(Sgps$GPS_Init$27)
      001C1C 00 02                 1451 	.dw	2
      001C1E 78                    1452 	.db	120
      001C1F 1F                    1453 	.sleb128	31
      001C20 00 00 92 02           1454 	.dw	0,(Sgps$GPS_Init$24)
      001C24 00 00 92 07           1455 	.dw	0,(Sgps$GPS_Init$25)
      001C28 00 02                 1456 	.dw	2
      001C2A 78                    1457 	.db	120
      001C2B 28                    1458 	.sleb128	40
      001C2C 00 00 92 00           1459 	.dw	0,(Sgps$GPS_Init$23)
      001C30 00 00 92 02           1460 	.dw	0,(Sgps$GPS_Init$24)
      001C34 00 02                 1461 	.dw	2
      001C36 78                    1462 	.db	120
      001C37 26                    1463 	.sleb128	38
      001C38 00 00 91 FE           1464 	.dw	0,(Sgps$GPS_Init$22)
      001C3C 00 00 92 00           1465 	.dw	0,(Sgps$GPS_Init$23)
      001C40 00 02                 1466 	.dw	2
      001C42 78                    1467 	.db	120
      001C43 25                    1468 	.sleb128	37
      001C44 00 00 91 FC           1469 	.dw	0,(Sgps$GPS_Init$21)
      001C48 00 00 91 FE           1470 	.dw	0,(Sgps$GPS_Init$22)
      001C4C 00 02                 1471 	.dw	2
      001C4E 78                    1472 	.db	120
      001C4F 24                    1473 	.sleb128	36
      001C50 00 00 91 FA           1474 	.dw	0,(Sgps$GPS_Init$20)
      001C54 00 00 91 FC           1475 	.dw	0,(Sgps$GPS_Init$21)
      001C58 00 02                 1476 	.dw	2
      001C5A 78                    1477 	.db	120
      001C5B 23                    1478 	.sleb128	35
      001C5C 00 00 91 F8           1479 	.dw	0,(Sgps$GPS_Init$19)
      001C60 00 00 91 FA           1480 	.dw	0,(Sgps$GPS_Init$20)
      001C64 00 02                 1481 	.dw	2
      001C66 78                    1482 	.db	120
      001C67 22                    1483 	.sleb128	34
      001C68 00 00 91 F6           1484 	.dw	0,(Sgps$GPS_Init$18)
      001C6C 00 00 91 F8           1485 	.dw	0,(Sgps$GPS_Init$19)
      001C70 00 02                 1486 	.dw	2
      001C72 78                    1487 	.db	120
      001C73 21                    1488 	.sleb128	33
      001C74 00 00 91 F4           1489 	.dw	0,(Sgps$GPS_Init$17)
      001C78 00 00 91 F6           1490 	.dw	0,(Sgps$GPS_Init$18)
      001C7C 00 02                 1491 	.dw	2
      001C7E 78                    1492 	.db	120
      001C7F 20                    1493 	.sleb128	32
      001C80 00 00 91 EF           1494 	.dw	0,(Sgps$GPS_Init$14)
      001C84 00 00 91 F4           1495 	.dw	0,(Sgps$GPS_Init$17)
      001C88 00 02                 1496 	.dw	2
      001C8A 78                    1497 	.db	120
      001C8B 1F                    1498 	.sleb128	31
      001C8C 00 00 91 EA           1499 	.dw	0,(Sgps$GPS_Init$13)
      001C90 00 00 91 EF           1500 	.dw	0,(Sgps$GPS_Init$14)
      001C94 00 02                 1501 	.dw	2
      001C96 78                    1502 	.db	120
      001C97 23                    1503 	.sleb128	35
      001C98 00 00 91 E8           1504 	.dw	0,(Sgps$GPS_Init$12)
      001C9C 00 00 91 EA           1505 	.dw	0,(Sgps$GPS_Init$13)
      001CA0 00 02                 1506 	.dw	2
      001CA2 78                    1507 	.db	120
      001CA3 22                    1508 	.sleb128	34
      001CA4 00 00 91 E6           1509 	.dw	0,(Sgps$GPS_Init$11)
      001CA8 00 00 91 E8           1510 	.dw	0,(Sgps$GPS_Init$12)
      001CAC 00 02                 1511 	.dw	2
      001CAE 78                    1512 	.db	120
      001CAF 21                    1513 	.sleb128	33
      001CB0 00 00 91 E4           1514 	.dw	0,(Sgps$GPS_Init$10)
      001CB4 00 00 91 E6           1515 	.dw	0,(Sgps$GPS_Init$11)
      001CB8 00 02                 1516 	.dw	2
      001CBA 78                    1517 	.db	120
      001CBB 20                    1518 	.sleb128	32
      001CBC 00 00 91 E2           1519 	.dw	0,(Sgps$GPS_Init$8)
      001CC0 00 00 91 E4           1520 	.dw	0,(Sgps$GPS_Init$10)
      001CC4 00 02                 1521 	.dw	2
      001CC6 78                    1522 	.db	120
      001CC7 1F                    1523 	.sleb128	31
      001CC8 00 00 91 DD           1524 	.dw	0,(Sgps$GPS_Init$7)
      001CCC 00 00 91 E2           1525 	.dw	0,(Sgps$GPS_Init$8)
      001CD0 00 02                 1526 	.dw	2
      001CD2 78                    1527 	.db	120
      001CD3 23                    1528 	.sleb128	35
      001CD4 00 00 91 DB           1529 	.dw	0,(Sgps$GPS_Init$6)
      001CD8 00 00 91 DD           1530 	.dw	0,(Sgps$GPS_Init$7)
      001CDC 00 02                 1531 	.dw	2
      001CDE 78                    1532 	.db	120
      001CDF 22                    1533 	.sleb128	34
      001CE0 00 00 91 D9           1534 	.dw	0,(Sgps$GPS_Init$5)
      001CE4 00 00 91 DB           1535 	.dw	0,(Sgps$GPS_Init$6)
      001CE8 00 02                 1536 	.dw	2
      001CEA 78                    1537 	.db	120
      001CEB 21                    1538 	.sleb128	33
      001CEC 00 00 91 D7           1539 	.dw	0,(Sgps$GPS_Init$4)
      001CF0 00 00 91 D9           1540 	.dw	0,(Sgps$GPS_Init$5)
      001CF4 00 02                 1541 	.dw	2
      001CF6 78                    1542 	.db	120
      001CF7 20                    1543 	.sleb128	32
      001CF8 00 00 91 D5           1544 	.dw	0,(Sgps$GPS_Init$2)
      001CFC 00 00 91 D7           1545 	.dw	0,(Sgps$GPS_Init$4)
      001D00 00 02                 1546 	.dw	2
      001D02 78                    1547 	.db	120
      001D03 1F                    1548 	.sleb128	31
      001D04 00 00 91 D3           1549 	.dw	0,(Sgps$GPS_Init$1)
      001D08 00 00 91 D5           1550 	.dw	0,(Sgps$GPS_Init$2)
      001D0C 00 02                 1551 	.dw	2
      001D0E 78                    1552 	.db	120
      001D0F 01                    1553 	.sleb128	1
      001D10 00 00 00 00           1554 	.dw	0,0
      001D14 00 00 00 00           1555 	.dw	0,0
                                   1556 
                                   1557 	.area .debug_abbrev (NOLOAD)
      00060A                       1558 Ldebug_abbrev:
      00060A 0D                    1559 	.uleb128	13
      00060B 34                    1560 	.uleb128	52
      00060C 00                    1561 	.db	0
      00060D 02                    1562 	.uleb128	2
      00060E 0A                    1563 	.uleb128	10
      00060F 03                    1564 	.uleb128	3
      000610 08                    1565 	.uleb128	8
      000611 3F                    1566 	.uleb128	63
      000612 0C                    1567 	.uleb128	12
      000613 49                    1568 	.uleb128	73
      000614 13                    1569 	.uleb128	19
      000615 00                    1570 	.uleb128	0
      000616 00                    1571 	.uleb128	0
      000617 07                    1572 	.uleb128	7
      000618 01                    1573 	.uleb128	1
      000619 01                    1574 	.db	1
      00061A 01                    1575 	.uleb128	1
      00061B 13                    1576 	.uleb128	19
      00061C 0B                    1577 	.uleb128	11
      00061D 0B                    1578 	.uleb128	11
      00061E 49                    1579 	.uleb128	73
      00061F 13                    1580 	.uleb128	19
      000620 00                    1581 	.uleb128	0
      000621 00                    1582 	.uleb128	0
      000622 02                    1583 	.uleb128	2
      000623 2E                    1584 	.uleb128	46
      000624 01                    1585 	.db	1
      000625 01                    1586 	.uleb128	1
      000626 13                    1587 	.uleb128	19
      000627 03                    1588 	.uleb128	3
      000628 08                    1589 	.uleb128	8
      000629 11                    1590 	.uleb128	17
      00062A 01                    1591 	.uleb128	1
      00062B 12                    1592 	.uleb128	18
      00062C 01                    1593 	.uleb128	1
      00062D 3F                    1594 	.uleb128	63
      00062E 0C                    1595 	.uleb128	12
      00062F 40                    1596 	.uleb128	64
      000630 06                    1597 	.uleb128	6
      000631 00                    1598 	.uleb128	0
      000632 00                    1599 	.uleb128	0
      000633 06                    1600 	.uleb128	6
      000634 34                    1601 	.uleb128	52
      000635 00                    1602 	.db	0
      000636 02                    1603 	.uleb128	2
      000637 0A                    1604 	.uleb128	10
      000638 03                    1605 	.uleb128	3
      000639 08                    1606 	.uleb128	8
      00063A 49                    1607 	.uleb128	73
      00063B 13                    1608 	.uleb128	19
      00063C 00                    1609 	.uleb128	0
      00063D 00                    1610 	.uleb128	0
      00063E 0C                    1611 	.uleb128	12
      00063F 2E                    1612 	.uleb128	46
      000640 01                    1613 	.db	1
      000641 01                    1614 	.uleb128	1
      000642 13                    1615 	.uleb128	19
      000643 03                    1616 	.uleb128	3
      000644 08                    1617 	.uleb128	8
      000645 11                    1618 	.uleb128	17
      000646 01                    1619 	.uleb128	1
      000647 12                    1620 	.uleb128	18
      000648 01                    1621 	.uleb128	1
      000649 3F                    1622 	.uleb128	63
      00064A 0C                    1623 	.uleb128	12
      00064B 40                    1624 	.uleb128	64
      00064C 06                    1625 	.uleb128	6
      00064D 49                    1626 	.uleb128	73
      00064E 13                    1627 	.uleb128	19
      00064F 00                    1628 	.uleb128	0
      000650 00                    1629 	.uleb128	0
      000651 0B                    1630 	.uleb128	11
      000652 2E                    1631 	.uleb128	46
      000653 01                    1632 	.db	1
      000654 01                    1633 	.uleb128	1
      000655 13                    1634 	.uleb128	19
      000656 03                    1635 	.uleb128	3
      000657 08                    1636 	.uleb128	8
      000658 11                    1637 	.uleb128	17
      000659 01                    1638 	.uleb128	1
      00065A 12                    1639 	.uleb128	18
      00065B 01                    1640 	.uleb128	1
      00065C 36                    1641 	.uleb128	54
      00065D 0B                    1642 	.uleb128	11
      00065E 3F                    1643 	.uleb128	63
      00065F 0C                    1644 	.uleb128	12
      000660 40                    1645 	.uleb128	64
      000661 06                    1646 	.uleb128	6
      000662 00                    1647 	.uleb128	0
      000663 00                    1648 	.uleb128	0
      000664 03                    1649 	.uleb128	3
      000665 0B                    1650 	.uleb128	11
      000666 01                    1651 	.db	1
      000667 11                    1652 	.uleb128	17
      000668 01                    1653 	.uleb128	1
      000669 00                    1654 	.uleb128	0
      00066A 00                    1655 	.uleb128	0
      00066B 01                    1656 	.uleb128	1
      00066C 11                    1657 	.uleb128	17
      00066D 01                    1658 	.db	1
      00066E 03                    1659 	.uleb128	3
      00066F 08                    1660 	.uleb128	8
      000670 10                    1661 	.uleb128	16
      000671 06                    1662 	.uleb128	6
      000672 13                    1663 	.uleb128	19
      000673 0B                    1664 	.uleb128	11
      000674 25                    1665 	.uleb128	37
      000675 08                    1666 	.uleb128	8
      000676 00                    1667 	.uleb128	0
      000677 00                    1668 	.uleb128	0
      000678 05                    1669 	.uleb128	5
      000679 0B                    1670 	.uleb128	11
      00067A 00                    1671 	.db	0
      00067B 11                    1672 	.uleb128	17
      00067C 01                    1673 	.uleb128	1
      00067D 12                    1674 	.uleb128	18
      00067E 01                    1675 	.uleb128	1
      00067F 00                    1676 	.uleb128	0
      000680 00                    1677 	.uleb128	0
      000681 0A                    1678 	.uleb128	10
      000682 0B                    1679 	.uleb128	11
      000683 01                    1680 	.db	1
      000684 11                    1681 	.uleb128	17
      000685 01                    1682 	.uleb128	1
      000686 12                    1683 	.uleb128	18
      000687 01                    1684 	.uleb128	1
      000688 00                    1685 	.uleb128	0
      000689 00                    1686 	.uleb128	0
      00068A 0F                    1687 	.uleb128	15
      00068B 0D                    1688 	.uleb128	13
      00068C 00                    1689 	.db	0
      00068D 03                    1690 	.uleb128	3
      00068E 08                    1691 	.uleb128	8
      00068F 38                    1692 	.uleb128	56
      000690 0A                    1693 	.uleb128	10
      000691 49                    1694 	.uleb128	73
      000692 13                    1695 	.uleb128	19
      000693 00                    1696 	.uleb128	0
      000694 00                    1697 	.uleb128	0
      000695 04                    1698 	.uleb128	4
      000696 0B                    1699 	.uleb128	11
      000697 01                    1700 	.db	1
      000698 01                    1701 	.uleb128	1
      000699 13                    1702 	.uleb128	19
      00069A 11                    1703 	.uleb128	17
      00069B 01                    1704 	.uleb128	1
      00069C 12                    1705 	.uleb128	18
      00069D 01                    1706 	.uleb128	1
      00069E 00                    1707 	.uleb128	0
      00069F 00                    1708 	.uleb128	0
      0006A0 08                    1709 	.uleb128	8
      0006A1 21                    1710 	.uleb128	33
      0006A2 00                    1711 	.db	0
      0006A3 2F                    1712 	.uleb128	47
      0006A4 0B                    1713 	.uleb128	11
      0006A5 00                    1714 	.uleb128	0
      0006A6 00                    1715 	.uleb128	0
      0006A7 0E                    1716 	.uleb128	14
      0006A8 13                    1717 	.uleb128	19
      0006A9 01                    1718 	.db	1
      0006AA 01                    1719 	.uleb128	1
      0006AB 13                    1720 	.uleb128	19
      0006AC 03                    1721 	.uleb128	3
      0006AD 08                    1722 	.uleb128	8
      0006AE 0B                    1723 	.uleb128	11
      0006AF 0B                    1724 	.uleb128	11
      0006B0 00                    1725 	.uleb128	0
      0006B1 00                    1726 	.uleb128	0
      0006B2 09                    1727 	.uleb128	9
      0006B3 24                    1728 	.uleb128	36
      0006B4 00                    1729 	.db	0
      0006B5 03                    1730 	.uleb128	3
      0006B6 08                    1731 	.uleb128	8
      0006B7 0B                    1732 	.uleb128	11
      0006B8 0B                    1733 	.uleb128	11
      0006B9 3E                    1734 	.uleb128	62
      0006BA 0B                    1735 	.uleb128	11
      0006BB 00                    1736 	.uleb128	0
      0006BC 00                    1737 	.uleb128	0
      0006BD 00                    1738 	.uleb128	0
                                   1739 
                                   1740 	.area .debug_info (NOLOAD)
      001CE7 00 00 03 30           1741 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001CEB                       1742 Ldebug_info_start:
      001CEB 00 02                 1743 	.dw	2
      001CED 00 00 06 0A           1744 	.dw	0,(Ldebug_abbrev)
      001CF1 04                    1745 	.db	4
      001CF2 01                    1746 	.uleb128	1
      001CF3 53 6F 75 72 63 65 2F  1747 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      001D0A 00                    1748 	.db	0
      001D0B 00 00 18 96           1749 	.dw	0,(Ldebug_line_start+-4)
      001D0F 01                    1750 	.db	1
      001D10 53 44 43 43 20 76 65  1751 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      001D29 00                    1752 	.db	0
      001D2A 02                    1753 	.uleb128	2
      001D2B 00 00 00 F1           1754 	.dw	0,241
      001D2F 47 50 53 5F 49 6E 69  1755 	.ascii "GPS_Init"
             74
      001D37 00                    1756 	.db	0
      001D38 00 00 91 D3           1757 	.dw	0,(_GPS_Init)
      001D3C 00 00 93 07           1758 	.dw	0,(XG$GPS_Init$0$0+1)
      001D40 01                    1759 	.db	1
      001D41 00 00 1A D0           1760 	.dw	0,(Ldebug_loc_start+300)
      001D45 03                    1761 	.uleb128	3
      001D46 00 00 92 23           1762 	.dw	0,(Sgps$GPS_Init$39)
      001D4A 04                    1763 	.uleb128	4
      001D4B 00 00 00 84           1764 	.dw	0,132
      001D4F 00 00 92 B0           1765 	.dw	0,(Sgps$GPS_Init$43)
      001D53 00 00 92 D9           1766 	.dw	0,(Sgps$GPS_Init$57)
      001D57 05                    1767 	.uleb128	5
      001D58 00 00 92 B6           1768 	.dw	0,(Sgps$GPS_Init$44)
      001D5C 00 00 92 D5           1769 	.dw	0,(Sgps$GPS_Init$55)
      001D60 06                    1770 	.uleb128	6
      001D61 02                    1771 	.db	2
      001D62 91                    1772 	.db	145
      001D63 7F                    1773 	.sleb128	-1
      001D64 69                    1774 	.ascii "i"
      001D65 00                    1775 	.db	0
      001D66 00 00 00 F1           1776 	.dw	0,241
      001D6A 00                    1777 	.uleb128	0
      001D6B 04                    1778 	.uleb128	4
      001D6C 00 00 00 A5           1779 	.dw	0,165
      001D70 00 00 92 DB           1780 	.dw	0,(Sgps$GPS_Init$59)
      001D74 00 00 93 04           1781 	.dw	0,(Sgps$GPS_Init$73)
      001D78 05                    1782 	.uleb128	5
      001D79 00 00 92 E1           1783 	.dw	0,(Sgps$GPS_Init$60)
      001D7D 00 00 93 00           1784 	.dw	0,(Sgps$GPS_Init$71)
      001D81 06                    1785 	.uleb128	6
      001D82 02                    1786 	.db	2
      001D83 91                    1787 	.db	145
      001D84 7F                    1788 	.sleb128	-1
      001D85 69                    1789 	.ascii "i"
      001D86 00                    1790 	.db	0
      001D87 00 00 00 F1           1791 	.dw	0,241
      001D8B 00                    1792 	.uleb128	0
      001D8C 07                    1793 	.uleb128	7
      001D8D 00 00 00 B2           1794 	.dw	0,178
      001D91 0E                    1795 	.db	14
      001D92 00 00 00 F1           1796 	.dw	0,241
      001D96 08                    1797 	.uleb128	8
      001D97 0D                    1798 	.db	13
      001D98 00                    1799 	.uleb128	0
      001D99 06                    1800 	.uleb128	6
      001D9A 02                    1801 	.db	2
      001D9B 91                    1802 	.db	145
      001D9C 62                    1803 	.sleb128	-30
      001D9D 6F 70 65 6E 5F 6E 61  1804 	.ascii "open_nav_timeutc"
             76 5F 74 69 6D 65 75
             74 63
      001DAD 00                    1805 	.db	0
      001DAE 00 00 00 A5           1806 	.dw	0,165
      001DB2 07                    1807 	.uleb128	7
      001DB3 00 00 00 D8           1808 	.dw	0,216
      001DB7 0F                    1809 	.db	15
      001DB8 00 00 00 F1           1810 	.dw	0,241
      001DBC 08                    1811 	.uleb128	8
      001DBD 0E                    1812 	.db	14
      001DBE 00                    1813 	.uleb128	0
      001DBF 06                    1814 	.uleb128	6
      001DC0 02                    1815 	.db	2
      001DC1 91                    1816 	.db	145
      001DC2 70                    1817 	.sleb128	-16
      001DC3 63 6C 6F 73 65 5F 61  1818 	.ascii "close_all_nmea"
             6C 6C 5F 6E 6D 65 61
      001DD1 00                    1819 	.db	0
      001DD2 00 00 00 CB           1820 	.dw	0,203
      001DD6 00                    1821 	.uleb128	0
      001DD7 00                    1822 	.uleb128	0
      001DD8 09                    1823 	.uleb128	9
      001DD9 75 6E 73 69 67 6E 65  1824 	.ascii "unsigned char"
             64 20 63 68 61 72
      001DE6 00                    1825 	.db	0
      001DE7 01                    1826 	.db	1
      001DE8 08                    1827 	.db	8
      001DE9 02                    1828 	.uleb128	2
      001DEA 00 00 01 39           1829 	.dw	0,313
      001DEE 47 50 53 5F 47 65 74  1830 	.ascii "GPS_GetTime"
             54 69 6D 65
      001DF9 00                    1831 	.db	0
      001DFA 00 00 93 07           1832 	.dw	0,(_GPS_GetTime)
      001DFE 00 00 93 68           1833 	.dw	0,(XG$GPS_GetTime$0$0+1)
      001E02 01                    1834 	.db	1
      001E03 00 00 1A A4           1835 	.dw	0,(Ldebug_loc_start+256)
      001E07 0A                    1836 	.uleb128	10
      001E08 00 00 93 09           1837 	.dw	0,(Sgps$GPS_GetTime$81)
      001E0C 00 00 93 09           1838 	.dw	0,(Sgps$GPS_GetTime$83)
      001E10 06                    1839 	.uleb128	6
      001E11 06                    1840 	.db	6
      001E12 54                    1841 	.db	84
      001E13 93                    1842 	.db	147
      001E14 01                    1843 	.uleb128	1
      001E15 53                    1844 	.db	83
      001E16 93                    1845 	.db	147
      001E17 01                    1846 	.uleb128	1
      001E18 69                    1847 	.ascii "i"
      001E19 00                    1848 	.db	0
      001E1A 00 00 01 39           1849 	.dw	0,313
      001E1E 00                    1850 	.uleb128	0
      001E1F 00                    1851 	.uleb128	0
      001E20 09                    1852 	.uleb128	9
      001E21 69 6E 74              1853 	.ascii "int"
      001E24 00                    1854 	.db	0
      001E25 02                    1855 	.db	2
      001E26 05                    1856 	.db	5
      001E27 0B                    1857 	.uleb128	11
      001E28 00 00 01 8E           1858 	.dw	0,398
      001E2C 55 41 52 54 31 5F 52  1859 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      001E3F 00                    1860 	.db	0
      001E40 00 00 93 68           1861 	.dw	0,(_UART1_RX_IRQHandler)
      001E44 00 00 93 B5           1862 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      001E48 03                    1863 	.db	3
      001E49 01                    1864 	.db	1
      001E4A 00 00 1A 0C           1865 	.dw	0,(Ldebug_loc_start+104)
      001E4E 04                    1866 	.uleb128	4
      001E4F 00 00 01 7E           1867 	.dw	0,382
      001E53 00 00 93 74           1868 	.dw	0,(Sgps$UART1_RX_IRQHandler$103)
      001E57 00 00 93 93           1869 	.dw	0,(Sgps$UART1_RX_IRQHandler$112)
      001E5B 05                    1870 	.uleb128	5
      001E5C 00 00 93 7B           1871 	.dw	0,(Sgps$UART1_RX_IRQHandler$105)
      001E60 00 00 93 8D           1872 	.dw	0,(Sgps$UART1_RX_IRQHandler$110)
      001E64 00                    1873 	.uleb128	0
      001E65 03                    1874 	.uleb128	3
      001E66 00 00 93 A0           1875 	.dw	0,(Sgps$UART1_RX_IRQHandler$118)
      001E6A 05                    1876 	.uleb128	5
      001E6B 00 00 93 AD           1877 	.dw	0,(Sgps$UART1_RX_IRQHandler$123)
      001E6F 00 00 93 B4           1878 	.dw	0,(Sgps$UART1_RX_IRQHandler$126)
      001E73 00                    1879 	.uleb128	0
      001E74 00                    1880 	.uleb128	0
      001E75 0C                    1881 	.uleb128	12
      001E76 00 00 01 D4           1882 	.dw	0,468
      001E7A 63 68 65 63 6B 73 75  1883 	.ascii "checksum"
             6D
      001E82 00                    1884 	.db	0
      001E83 00 00 93 B5           1885 	.dw	0,(_checksum)
      001E87 00 00 95 35           1886 	.dw	0,(XFgps$checksum$0$0+1)
      001E8B 00                    1887 	.db	0
      001E8C 00 00 19 A4           1888 	.dw	0,(Ldebug_loc_start)
      001E90 00 00 00 F1           1889 	.dw	0,241
      001E94 04                    1890 	.uleb128	4
      001E95 00 00 01 C5           1891 	.dw	0,453
      001E99 00 00 94 17           1892 	.dw	0,(Sgps$checksum$134)
      001E9D 00 00 94 1D           1893 	.dw	0,(Sgps$checksum$136)
      001EA1 06                    1894 	.uleb128	6
      001EA2 02                    1895 	.db	2
      001EA3 91                    1896 	.db	145
      001EA4 7E                    1897 	.sleb128	-2
      001EA5 69                    1898 	.ascii "i"
      001EA6 00                    1899 	.db	0
      001EA7 00 00 01 E5           1900 	.dw	0,485
      001EAB 00                    1901 	.uleb128	0
      001EAC 06                    1902 	.uleb128	6
      001EAD 02                    1903 	.db	2
      001EAE 91                    1904 	.db	145
      001EAF 72                    1905 	.sleb128	-14
      001EB0 63 6B 53 75 6D        1906 	.ascii "ckSum"
      001EB5 00                    1907 	.db	0
      001EB6 00 00 01 D4           1908 	.dw	0,468
      001EBA 00                    1909 	.uleb128	0
      001EBB 09                    1910 	.uleb128	9
      001EBC 75 6E 73 69 67 6E 65  1911 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      001EC9 00                    1912 	.db	0
      001ECA 04                    1913 	.db	4
      001ECB 07                    1914 	.db	7
      001ECC 09                    1915 	.uleb128	9
      001ECD 75 6E 73 69 67 6E 65  1916 	.ascii "unsigned int"
             64 20 69 6E 74
      001ED9 00                    1917 	.db	0
      001EDA 02                    1918 	.db	2
      001EDB 07                    1919 	.db	7
      001EDC 07                    1920 	.uleb128	7
      001EDD 00 00 02 02           1921 	.dw	0,514
      001EE1 22                    1922 	.db	34
      001EE2 00 00 00 F1           1923 	.dw	0,241
      001EE6 08                    1924 	.uleb128	8
      001EE7 21                    1925 	.db	33
      001EE8 00                    1926 	.uleb128	0
      001EE9 0D                    1927 	.uleb128	13
      001EEA 05                    1928 	.db	5
      001EEB 03                    1929 	.db	3
      001EEC 00 00 00 35           1930 	.dw	0,(_GPS_RxBuf)
      001EF0 47 50 53 5F 52 78 42  1931 	.ascii "GPS_RxBuf"
             75 66
      001EF9 00                    1932 	.db	0
      001EFA 01                    1933 	.db	1
      001EFB 00 00 01 F5           1934 	.dw	0,501
      001EFF 0D                    1935 	.uleb128	13
      001F00 05                    1936 	.db	5
      001F01 03                    1937 	.db	3
      001F02 00 00 00 57           1938 	.dw	0,(_gps_first_send)
      001F06 67 70 73 5F 66 69 72  1939 	.ascii "gps_first_send"
             73 74 5F 73 65 6E 64
      001F14 00                    1940 	.db	0
      001F15 01                    1941 	.db	1
      001F16 00 00 00 F1           1942 	.dw	0,241
      001F1A 06                    1943 	.uleb128	6
      001F1B 05                    1944 	.db	5
      001F1C 03                    1945 	.db	3
      001F1D 00 00 00 58           1946 	.dw	0,(_num)
      001F21 6E 75 6D              1947 	.ascii "num"
      001F24 00                    1948 	.db	0
      001F25 00 00 00 F1           1949 	.dw	0,241
      001F29 09                    1950 	.uleb128	9
      001F2A 66 6C 6F 61 74        1951 	.ascii "float"
      001F2F 00                    1952 	.db	0
      001F30 04                    1953 	.db	4
      001F31 04                    1954 	.db	4
      001F32 0E                    1955 	.uleb128	14
      001F33 00 00 03 0F           1956 	.dw	0,783
      001F37 5F 5F 30 30 30 30 30  1957 	.ascii "__00000009"
             30 30 39
      001F41 00                    1958 	.db	0
      001F42 18                    1959 	.db	24
      001F43 0F                    1960 	.uleb128	15
      001F44 72 75 6E 54 69 6D 65  1961 	.ascii "runTime"
      001F4B 00                    1962 	.db	0
      001F4C 02                    1963 	.db	2
      001F4D 23                    1964 	.db	35
      001F4E 00                    1965 	.uleb128	0
      001F4F 00 00 01 D4           1966 	.dw	0,468
      001F53 0F                    1967 	.uleb128	15
      001F54 74 41 63 63           1968 	.ascii "tAcc"
      001F58 00                    1969 	.db	0
      001F59 02                    1970 	.db	2
      001F5A 23                    1971 	.db	35
      001F5B 04                    1972 	.uleb128	4
      001F5C 00 00 02 42           1973 	.dw	0,578
      001F60 0F                    1974 	.uleb128	15
      001F61 6D 73 45 72 72        1975 	.ascii "msErr"
      001F66 00                    1976 	.db	0
      001F67 02                    1977 	.db	2
      001F68 23                    1978 	.db	35
      001F69 08                    1979 	.uleb128	8
      001F6A 00 00 02 42           1980 	.dw	0,578
      001F6E 0F                    1981 	.uleb128	15
      001F6F 6D 73                 1982 	.ascii "ms"
      001F71 00                    1983 	.db	0
      001F72 02                    1984 	.db	2
      001F73 23                    1985 	.db	35
      001F74 0C                    1986 	.uleb128	12
      001F75 00 00 01 E5           1987 	.dw	0,485
      001F79 0F                    1988 	.uleb128	15
      001F7A 79 65 61 72           1989 	.ascii "year"
      001F7E 00                    1990 	.db	0
      001F7F 02                    1991 	.db	2
      001F80 23                    1992 	.db	35
      001F81 0E                    1993 	.uleb128	14
      001F82 00 00 01 E5           1994 	.dw	0,485
      001F86 0F                    1995 	.uleb128	15
      001F87 6D 6F 6E 74 68        1996 	.ascii "month"
      001F8C 00                    1997 	.db	0
      001F8D 02                    1998 	.db	2
      001F8E 23                    1999 	.db	35
      001F8F 10                    2000 	.uleb128	16
      001F90 00 00 00 F1           2001 	.dw	0,241
      001F94 0F                    2002 	.uleb128	15
      001F95 64 61 79              2003 	.ascii "day"
      001F98 00                    2004 	.db	0
      001F99 02                    2005 	.db	2
      001F9A 23                    2006 	.db	35
      001F9B 11                    2007 	.uleb128	17
      001F9C 00 00 00 F1           2008 	.dw	0,241
      001FA0 0F                    2009 	.uleb128	15
      001FA1 68 6F 75 72           2010 	.ascii "hour"
      001FA5 00                    2011 	.db	0
      001FA6 02                    2012 	.db	2
      001FA7 23                    2013 	.db	35
      001FA8 12                    2014 	.uleb128	18
      001FA9 00 00 00 F1           2015 	.dw	0,241
      001FAD 0F                    2016 	.uleb128	15
      001FAE 6D 69 6E              2017 	.ascii "min"
      001FB1 00                    2018 	.db	0
      001FB2 02                    2019 	.db	2
      001FB3 23                    2020 	.db	35
      001FB4 13                    2021 	.uleb128	19
      001FB5 00 00 00 F1           2022 	.dw	0,241
      001FB9 0F                    2023 	.uleb128	15
      001FBA 73 65 63              2024 	.ascii "sec"
      001FBD 00                    2025 	.db	0
      001FBE 02                    2026 	.db	2
      001FBF 23                    2027 	.db	35
      001FC0 14                    2028 	.uleb128	20
      001FC1 00 00 00 F1           2029 	.dw	0,241
      001FC5 0F                    2030 	.uleb128	15
      001FC6 76 61 6C 69 64        2031 	.ascii "valid"
      001FCB 00                    2032 	.db	0
      001FCC 02                    2033 	.db	2
      001FCD 23                    2034 	.db	35
      001FCE 15                    2035 	.uleb128	21
      001FCF 00 00 00 F1           2036 	.dw	0,241
      001FD3 0F                    2037 	.uleb128	15
      001FD4 74 69 6D 65 53 72 63  2038 	.ascii "timeSrc"
      001FDB 00                    2039 	.db	0
      001FDC 02                    2040 	.db	2
      001FDD 23                    2041 	.db	35
      001FDE 16                    2042 	.uleb128	22
      001FDF 00 00 00 F1           2043 	.dw	0,241
      001FE3 0F                    2044 	.uleb128	15
      001FE4 64 61 74 65 56 61 6C  2045 	.ascii "dateValid"
             69 64
      001FED 00                    2046 	.db	0
      001FEE 02                    2047 	.db	2
      001FEF 23                    2048 	.db	35
      001FF0 17                    2049 	.uleb128	23
      001FF1 00 00 00 F1           2050 	.dw	0,241
      001FF5 00                    2051 	.uleb128	0
      001FF6 0D                    2052 	.uleb128	13
      001FF7 05                    2053 	.db	5
      001FF8 03                    2054 	.db	3
      001FF9 00 00 00 0E           2055 	.dw	0,(_GPS_TimeDataSturcture)
      001FFD 47 50 53 5F 54 69 6D  2056 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      002012 00                    2057 	.db	0
      002013 01                    2058 	.db	1
      002014 00 00 02 4B           2059 	.dw	0,587
      002018 00                    2060 	.uleb128	0
      002019 00                    2061 	.uleb128	0
      00201A 00                    2062 	.uleb128	0
      00201B                       2063 Ldebug_info_end:
                                   2064 
                                   2065 	.area .debug_pubnames (NOLOAD)
      00069F 00 00 00 7E           2066 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0006A3                       2067 Ldebug_pubnames_start:
      0006A3 00 02                 2068 	.dw	2
      0006A5 00 00 1C E7           2069 	.dw	0,(Ldebug_info_start-4)
      0006A9 00 00 03 34           2070 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0006AD 00 00 00 43           2071 	.dw	0,67
      0006B1 47 50 53 5F 49 6E 69  2072 	.ascii "GPS_Init"
             74
      0006B9 00                    2073 	.db	0
      0006BA 00 00 01 02           2074 	.dw	0,258
      0006BE 47 50 53 5F 47 65 74  2075 	.ascii "GPS_GetTime"
             54 69 6D 65
      0006C9 00                    2076 	.db	0
      0006CA 00 00 01 40           2077 	.dw	0,320
      0006CE 55 41 52 54 31 5F 52  2078 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0006E1 00                    2079 	.db	0
      0006E2 00 00 02 02           2080 	.dw	0,514
      0006E6 47 50 53 5F 52 78 42  2081 	.ascii "GPS_RxBuf"
             75 66
      0006EF 00                    2082 	.db	0
      0006F0 00 00 02 18           2083 	.dw	0,536
      0006F4 67 70 73 5F 66 69 72  2084 	.ascii "gps_first_send"
             73 74 5F 73 65 6E 64
      000702 00                    2085 	.db	0
      000703 00 00 03 0F           2086 	.dw	0,783
      000707 47 50 53 5F 54 69 6D  2087 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      00071C 00                    2088 	.db	0
      00071D 00 00 00 00           2089 	.dw	0,0
      000721                       2090 Ldebug_pubnames_end:
                                   2091 
                                   2092 	.area .debug_frame (NOLOAD)
      0015D5 00 00                 2093 	.dw	0
      0015D7 00 0E                 2094 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0015D9                       2095 Ldebug_CIE0_start:
      0015D9 FF FF                 2096 	.dw	0xffff
      0015DB FF FF                 2097 	.dw	0xffff
      0015DD 01                    2098 	.db	1
      0015DE 00                    2099 	.db	0
      0015DF 01                    2100 	.uleb128	1
      0015E0 7F                    2101 	.sleb128	-1
      0015E1 09                    2102 	.db	9
      0015E2 0C                    2103 	.db	12
      0015E3 08                    2104 	.uleb128	8
      0015E4 02                    2105 	.uleb128	2
      0015E5 89                    2106 	.db	137
      0015E6 01                    2107 	.uleb128	1
      0015E7                       2108 Ldebug_CIE0_end:
      0015E7 00 00 00 44           2109 	.dw	0,68
      0015EB 00 00 15 D5           2110 	.dw	0,(Ldebug_CIE0_start-4)
      0015EF 00 00 93 B5           2111 	.dw	0,(Sgps$checksum$131)	;initial loc
      0015F3 00 00 01 80           2112 	.dw	0,Sgps$checksum$152-Sgps$checksum$131
      0015F7 01                    2113 	.db	1
      0015F8 00 00 93 B5           2114 	.dw	0,(Sgps$checksum$131)
      0015FC 0E                    2115 	.db	14
      0015FD 02                    2116 	.uleb128	2
      0015FE 01                    2117 	.db	1
      0015FF 00 00 93 B7           2118 	.dw	0,(Sgps$checksum$132)
      001603 0E                    2119 	.db	14
      001604 10                    2120 	.uleb128	16
      001605 01                    2121 	.db	1
      001606 00 00 94 38           2122 	.dw	0,(Sgps$checksum$137)
      00160A 0E                    2123 	.db	14
      00160B 11                    2124 	.uleb128	17
      00160C 01                    2125 	.db	1
      00160D 00 00 94 3A           2126 	.dw	0,(Sgps$checksum$138)
      001611 0E                    2127 	.db	14
      001612 12                    2128 	.uleb128	18
      001613 01                    2129 	.db	1
      001614 00 00 94 3B           2130 	.dw	0,(Sgps$checksum$139)
      001618 0E                    2131 	.db	14
      001619 14                    2132 	.uleb128	20
      00161A 01                    2133 	.db	1
      00161B 00 00 94 40           2134 	.dw	0,(Sgps$checksum$140)
      00161F 0E                    2135 	.db	14
      001620 10                    2136 	.uleb128	16
      001621 01                    2137 	.db	1
      001622 00 00 95 2D           2138 	.dw	0,(Sgps$checksum$146)
      001626 0E                    2139 	.db	14
      001627 10                    2140 	.uleb128	16
      001628 01                    2141 	.db	1
      001629 00 00 95 34           2142 	.dw	0,(Sgps$checksum$150)
      00162D 0E                    2143 	.db	14
      00162E 02                    2144 	.uleb128	2
                                   2145 
                                   2146 	.area .debug_frame (NOLOAD)
      00162F 00 00                 2147 	.dw	0
      001631 00 0E                 2148 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      001633                       2149 Ldebug_CIE1_start:
      001633 FF FF                 2150 	.dw	0xffff
      001635 FF FF                 2151 	.dw	0xffff
      001637 01                    2152 	.db	1
      001638 00                    2153 	.db	0
      001639 01                    2154 	.uleb128	1
      00163A 7F                    2155 	.sleb128	-1
      00163B 09                    2156 	.db	9
      00163C 0C                    2157 	.db	12
      00163D 08                    2158 	.uleb128	8
      00163E 09                    2159 	.uleb128	9
      00163F 89                    2160 	.db	137
      001640 01                    2161 	.uleb128	1
      001641                       2162 Ldebug_CIE1_end:
      001641 00 00 00 60           2163 	.dw	0,96
      001645 00 00 16 2F           2164 	.dw	0,(Ldebug_CIE1_start-4)
      001649 00 00 93 69           2165 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)	;initial loc
      00164D 00 00 00 4C           2166 	.dw	0,Sgps$UART1_RX_IRQHandler$129-Sgps$UART1_RX_IRQHandler$97
      001651 01                    2167 	.db	1
      001652 00 00 93 69           2168 	.dw	0,(Sgps$UART1_RX_IRQHandler$97)
      001656 0E                    2169 	.db	14
      001657 09                    2170 	.uleb128	9
      001658 01                    2171 	.db	1
      001659 00 00 93 6B           2172 	.dw	0,(Sgps$UART1_RX_IRQHandler$99)
      00165D 0E                    2173 	.db	14
      00165E 0A                    2174 	.uleb128	10
      00165F 01                    2175 	.db	1
      001660 00 00 93 6D           2176 	.dw	0,(Sgps$UART1_RX_IRQHandler$100)
      001664 0E                    2177 	.db	14
      001665 0B                    2178 	.uleb128	11
      001666 01                    2179 	.db	1
      001667 00 00 93 71           2180 	.dw	0,(Sgps$UART1_RX_IRQHandler$101)
      00166B 0E                    2181 	.db	14
      00166C 09                    2182 	.uleb128	9
      00166D 01                    2183 	.db	1
      00166E 00 00 93 74           2184 	.dw	0,(Sgps$UART1_RX_IRQHandler$102)
      001672 0E                    2185 	.db	14
      001673 09                    2186 	.uleb128	9
      001674 01                    2187 	.db	1
      001675 00 00 93 84           2188 	.dw	0,(Sgps$UART1_RX_IRQHandler$107)
      001679 0E                    2189 	.db	14
      00167A 0B                    2190 	.uleb128	11
      00167B 01                    2191 	.db	1
      00167C 00 00 93 88           2192 	.dw	0,(Sgps$UART1_RX_IRQHandler$108)
      001680 0E                    2193 	.db	14
      001681 09                    2194 	.uleb128	9
      001682 01                    2195 	.db	1
      001683 00 00 93 97           2196 	.dw	0,(Sgps$UART1_RX_IRQHandler$114)
      001687 0E                    2197 	.db	14
      001688 0A                    2198 	.uleb128	10
      001689 01                    2199 	.db	1
      00168A 00 00 93 99           2200 	.dw	0,(Sgps$UART1_RX_IRQHandler$115)
      00168E 0E                    2201 	.db	14
      00168F 0B                    2202 	.uleb128	11
      001690 01                    2203 	.db	1
      001691 00 00 93 9D           2204 	.dw	0,(Sgps$UART1_RX_IRQHandler$116)
      001695 0E                    2205 	.db	14
      001696 09                    2206 	.uleb128	9
      001697 01                    2207 	.db	1
      001698 00 00 93 A0           2208 	.dw	0,(Sgps$UART1_RX_IRQHandler$117)
      00169C 0E                    2209 	.db	14
      00169D 09                    2210 	.uleb128	9
      00169E 01                    2211 	.db	1
      00169F 00 00 93 AD           2212 	.dw	0,(Sgps$UART1_RX_IRQHandler$122)
      0016A3 0E                    2213 	.db	14
      0016A4 09                    2214 	.uleb128	9
                                   2215 
                                   2216 	.area .debug_frame (NOLOAD)
      0016A5 00 00                 2217 	.dw	0
      0016A7 00 0E                 2218 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0016A9                       2219 Ldebug_CIE2_start:
      0016A9 FF FF                 2220 	.dw	0xffff
      0016AB FF FF                 2221 	.dw	0xffff
      0016AD 01                    2222 	.db	1
      0016AE 00                    2223 	.db	0
      0016AF 01                    2224 	.uleb128	1
      0016B0 7F                    2225 	.sleb128	-1
      0016B1 09                    2226 	.db	9
      0016B2 0C                    2227 	.db	12
      0016B3 08                    2228 	.uleb128	8
      0016B4 02                    2229 	.uleb128	2
      0016B5 89                    2230 	.db	137
      0016B6 01                    2231 	.uleb128	1
      0016B7                       2232 Ldebug_CIE2_end:
      0016B7 00 00 00 21           2233 	.dw	0,33
      0016BB 00 00 16 A5           2234 	.dw	0,(Ldebug_CIE2_start-4)
      0016BF 00 00 93 07           2235 	.dw	0,(Sgps$GPS_GetTime$79)	;initial loc
      0016C3 00 00 00 61           2236 	.dw	0,Sgps$GPS_GetTime$95-Sgps$GPS_GetTime$79
      0016C7 01                    2237 	.db	1
      0016C8 00 00 93 07           2238 	.dw	0,(Sgps$GPS_GetTime$79)
      0016CC 0E                    2239 	.db	14
      0016CD 02                    2240 	.uleb128	2
      0016CE 01                    2241 	.db	1
      0016CF 00 00 93 09           2242 	.dw	0,(Sgps$GPS_GetTime$80)
      0016D3 0E                    2243 	.db	14
      0016D4 06                    2244 	.uleb128	6
      0016D5 01                    2245 	.db	1
      0016D6 00 00 93 67           2246 	.dw	0,(Sgps$GPS_GetTime$93)
      0016DA 0E                    2247 	.db	14
      0016DB 02                    2248 	.uleb128	2
                                   2249 
                                   2250 	.area .debug_frame (NOLOAD)
      0016DC 00 00                 2251 	.dw	0
      0016DE 00 0E                 2252 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0016E0                       2253 Ldebug_CIE3_start:
      0016E0 FF FF                 2254 	.dw	0xffff
      0016E2 FF FF                 2255 	.dw	0xffff
      0016E4 01                    2256 	.db	1
      0016E5 00                    2257 	.db	0
      0016E6 01                    2258 	.uleb128	1
      0016E7 7F                    2259 	.sleb128	-1
      0016E8 09                    2260 	.db	9
      0016E9 0C                    2261 	.db	12
      0016EA 08                    2262 	.uleb128	8
      0016EB 02                    2263 	.uleb128	2
      0016EC 89                    2264 	.db	137
      0016ED 01                    2265 	.uleb128	1
      0016EE                       2266 Ldebug_CIE3_end:
      0016EE 00 00 01 5C           2267 	.dw	0,348
      0016F2 00 00 16 DC           2268 	.dw	0,(Ldebug_CIE3_start-4)
      0016F6 00 00 91 D3           2269 	.dw	0,(Sgps$GPS_Init$1)	;initial loc
      0016FA 00 00 01 34           2270 	.dw	0,Sgps$GPS_Init$77-Sgps$GPS_Init$1
      0016FE 01                    2271 	.db	1
      0016FF 00 00 91 D3           2272 	.dw	0,(Sgps$GPS_Init$1)
      001703 0E                    2273 	.db	14
      001704 02                    2274 	.uleb128	2
      001705 01                    2275 	.db	1
      001706 00 00 91 D5           2276 	.dw	0,(Sgps$GPS_Init$2)
      00170A 0E                    2277 	.db	14
      00170B 20                    2278 	.uleb128	32
      00170C 01                    2279 	.db	1
      00170D 00 00 91 D7           2280 	.dw	0,(Sgps$GPS_Init$4)
      001711 0E                    2281 	.db	14
      001712 21                    2282 	.uleb128	33
      001713 01                    2283 	.db	1
      001714 00 00 91 D9           2284 	.dw	0,(Sgps$GPS_Init$5)
      001718 0E                    2285 	.db	14
      001719 22                    2286 	.uleb128	34
      00171A 01                    2287 	.db	1
      00171B 00 00 91 DB           2288 	.dw	0,(Sgps$GPS_Init$6)
      00171F 0E                    2289 	.db	14
      001720 23                    2290 	.uleb128	35
      001721 01                    2291 	.db	1
      001722 00 00 91 DD           2292 	.dw	0,(Sgps$GPS_Init$7)
      001726 0E                    2293 	.db	14
      001727 24                    2294 	.uleb128	36
      001728 01                    2295 	.db	1
      001729 00 00 91 E2           2296 	.dw	0,(Sgps$GPS_Init$8)
      00172D 0E                    2297 	.db	14
      00172E 20                    2298 	.uleb128	32
      00172F 01                    2299 	.db	1
      001730 00 00 91 E4           2300 	.dw	0,(Sgps$GPS_Init$10)
      001734 0E                    2301 	.db	14
      001735 21                    2302 	.uleb128	33
      001736 01                    2303 	.db	1
      001737 00 00 91 E6           2304 	.dw	0,(Sgps$GPS_Init$11)
      00173B 0E                    2305 	.db	14
      00173C 22                    2306 	.uleb128	34
      00173D 01                    2307 	.db	1
      00173E 00 00 91 E8           2308 	.dw	0,(Sgps$GPS_Init$12)
      001742 0E                    2309 	.db	14
      001743 23                    2310 	.uleb128	35
      001744 01                    2311 	.db	1
      001745 00 00 91 EA           2312 	.dw	0,(Sgps$GPS_Init$13)
      001749 0E                    2313 	.db	14
      00174A 24                    2314 	.uleb128	36
      00174B 01                    2315 	.db	1
      00174C 00 00 91 EF           2316 	.dw	0,(Sgps$GPS_Init$14)
      001750 0E                    2317 	.db	14
      001751 20                    2318 	.uleb128	32
      001752 01                    2319 	.db	1
      001753 00 00 91 F4           2320 	.dw	0,(Sgps$GPS_Init$17)
      001757 0E                    2321 	.db	14
      001758 21                    2322 	.uleb128	33
      001759 01                    2323 	.db	1
      00175A 00 00 91 F6           2324 	.dw	0,(Sgps$GPS_Init$18)
      00175E 0E                    2325 	.db	14
      00175F 22                    2326 	.uleb128	34
      001760 01                    2327 	.db	1
      001761 00 00 91 F8           2328 	.dw	0,(Sgps$GPS_Init$19)
      001765 0E                    2329 	.db	14
      001766 23                    2330 	.uleb128	35
      001767 01                    2331 	.db	1
      001768 00 00 91 FA           2332 	.dw	0,(Sgps$GPS_Init$20)
      00176C 0E                    2333 	.db	14
      00176D 24                    2334 	.uleb128	36
      00176E 01                    2335 	.db	1
      00176F 00 00 91 FC           2336 	.dw	0,(Sgps$GPS_Init$21)
      001773 0E                    2337 	.db	14
      001774 25                    2338 	.uleb128	37
      001775 01                    2339 	.db	1
      001776 00 00 91 FE           2340 	.dw	0,(Sgps$GPS_Init$22)
      00177A 0E                    2341 	.db	14
      00177B 26                    2342 	.uleb128	38
      00177C 01                    2343 	.db	1
      00177D 00 00 92 00           2344 	.dw	0,(Sgps$GPS_Init$23)
      001781 0E                    2345 	.db	14
      001782 27                    2346 	.uleb128	39
      001783 01                    2347 	.db	1
      001784 00 00 92 02           2348 	.dw	0,(Sgps$GPS_Init$24)
      001788 0E                    2349 	.db	14
      001789 29                    2350 	.uleb128	41
      00178A 01                    2351 	.db	1
      00178B 00 00 92 07           2352 	.dw	0,(Sgps$GPS_Init$25)
      00178F 0E                    2353 	.db	14
      001790 20                    2354 	.uleb128	32
      001791 01                    2355 	.db	1
      001792 00 00 92 09           2356 	.dw	0,(Sgps$GPS_Init$27)
      001796 0E                    2357 	.db	14
      001797 21                    2358 	.uleb128	33
      001798 01                    2359 	.db	1
      001799 00 00 92 0B           2360 	.dw	0,(Sgps$GPS_Init$28)
      00179D 0E                    2361 	.db	14
      00179E 22                    2362 	.uleb128	34
      00179F 01                    2363 	.db	1
      0017A0 00 00 92 0D           2364 	.dw	0,(Sgps$GPS_Init$29)
      0017A4 0E                    2365 	.db	14
      0017A5 23                    2366 	.uleb128	35
      0017A6 01                    2367 	.db	1
      0017A7 00 00 92 12           2368 	.dw	0,(Sgps$GPS_Init$30)
      0017AB 0E                    2369 	.db	14
      0017AC 20                    2370 	.uleb128	32
      0017AD 01                    2371 	.db	1
      0017AE 00 00 92 14           2372 	.dw	0,(Sgps$GPS_Init$32)
      0017B2 0E                    2373 	.db	14
      0017B3 21                    2374 	.uleb128	33
      0017B4 01                    2375 	.db	1
      0017B5 00 00 92 16           2376 	.dw	0,(Sgps$GPS_Init$33)
      0017B9 0E                    2377 	.db	14
      0017BA 22                    2378 	.uleb128	34
      0017BB 01                    2379 	.db	1
      0017BC 00 00 92 18           2380 	.dw	0,(Sgps$GPS_Init$34)
      0017C0 0E                    2381 	.db	14
      0017C1 23                    2382 	.uleb128	35
      0017C2 01                    2383 	.db	1
      0017C3 00 00 92 1D           2384 	.dw	0,(Sgps$GPS_Init$35)
      0017C7 0E                    2385 	.db	14
      0017C8 20                    2386 	.uleb128	32
      0017C9 01                    2387 	.db	1
      0017CA 00 00 92 1F           2388 	.dw	0,(Sgps$GPS_Init$37)
      0017CE 0E                    2389 	.db	14
      0017CF 21                    2390 	.uleb128	33
      0017D0 01                    2391 	.db	1
      0017D1 00 00 92 23           2392 	.dw	0,(Sgps$GPS_Init$38)
      0017D5 0E                    2393 	.db	14
      0017D6 20                    2394 	.uleb128	32
      0017D7 01                    2395 	.db	1
      0017D8 00 00 92 B8           2396 	.dw	0,(Sgps$GPS_Init$46)
      0017DC 0E                    2397 	.db	14
      0017DD 21                    2398 	.uleb128	33
      0017DE 01                    2399 	.db	1
      0017DF 00 00 92 BA           2400 	.dw	0,(Sgps$GPS_Init$47)
      0017E3 0E                    2401 	.db	14
      0017E4 22                    2402 	.uleb128	34
      0017E5 01                    2403 	.db	1
      0017E6 00 00 92 BE           2404 	.dw	0,(Sgps$GPS_Init$48)
      0017EA 0E                    2405 	.db	14
      0017EB 20                    2406 	.uleb128	32
      0017EC 01                    2407 	.db	1
      0017ED 00 00 92 C1           2408 	.dw	0,(Sgps$GPS_Init$49)
      0017F1 0E                    2409 	.db	14
      0017F2 20                    2410 	.uleb128	32
      0017F3 01                    2411 	.db	1
      0017F4 00 00 92 C6           2412 	.dw	0,(Sgps$GPS_Init$51)
      0017F8 0E                    2413 	.db	14
      0017F9 22                    2414 	.uleb128	34
      0017FA 01                    2415 	.db	1
      0017FB 00 00 92 CF           2416 	.dw	0,(Sgps$GPS_Init$52)
      0017FF 0E                    2417 	.db	14
      001800 20                    2418 	.uleb128	32
      001801 01                    2419 	.db	1
      001802 00 00 92 D1           2420 	.dw	0,(Sgps$GPS_Init$53)
      001806 0E                    2421 	.db	14
      001807 21                    2422 	.uleb128	33
      001808 01                    2423 	.db	1
      001809 00 00 92 D5           2424 	.dw	0,(Sgps$GPS_Init$54)
      00180D 0E                    2425 	.db	14
      00180E 20                    2426 	.uleb128	32
      00180F 01                    2427 	.db	1
      001810 00 00 92 E3           2428 	.dw	0,(Sgps$GPS_Init$62)
      001814 0E                    2429 	.db	14
      001815 21                    2430 	.uleb128	33
      001816 01                    2431 	.db	1
      001817 00 00 92 E5           2432 	.dw	0,(Sgps$GPS_Init$63)
      00181B 0E                    2433 	.db	14
      00181C 22                    2434 	.uleb128	34
      00181D 01                    2435 	.db	1
      00181E 00 00 92 E9           2436 	.dw	0,(Sgps$GPS_Init$64)
      001822 0E                    2437 	.db	14
      001823 20                    2438 	.uleb128	32
      001824 01                    2439 	.db	1
      001825 00 00 92 EC           2440 	.dw	0,(Sgps$GPS_Init$65)
      001829 0E                    2441 	.db	14
      00182A 20                    2442 	.uleb128	32
      00182B 01                    2443 	.db	1
      00182C 00 00 92 F1           2444 	.dw	0,(Sgps$GPS_Init$67)
      001830 0E                    2445 	.db	14
      001831 22                    2446 	.uleb128	34
      001832 01                    2447 	.db	1
      001833 00 00 92 FA           2448 	.dw	0,(Sgps$GPS_Init$68)
      001837 0E                    2449 	.db	14
      001838 20                    2450 	.uleb128	32
      001839 01                    2451 	.db	1
      00183A 00 00 92 FC           2452 	.dw	0,(Sgps$GPS_Init$69)
      00183E 0E                    2453 	.db	14
      00183F 21                    2454 	.uleb128	33
      001840 01                    2455 	.db	1
      001841 00 00 93 00           2456 	.dw	0,(Sgps$GPS_Init$70)
      001845 0E                    2457 	.db	14
      001846 20                    2458 	.uleb128	32
      001847 01                    2459 	.db	1
      001848 00 00 93 06           2460 	.dw	0,(Sgps$GPS_Init$75)
      00184C 0E                    2461 	.db	14
      00184D 02                    2462 	.uleb128	2
