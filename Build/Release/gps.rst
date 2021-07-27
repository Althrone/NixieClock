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
      00000E                         29 _GPS_TimeDataSturcture::
      00000E                         30 	.ds 24
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area INITIALIZED
      000031                         35 _GPS_RxBuf::
      000031                         36 	.ds 34
      000053                         37 _num:
      000053                         38 	.ds 1
                                     39 ;--------------------------------------------------------
                                     40 ; absolute external ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area DABS (ABS)
                                     43 
                                     44 ; default segment ordering for linker
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area CONST
                                     49 	.area INITIALIZER
                                     50 	.area CODE
                                     51 
                                     52 ;--------------------------------------------------------
                                     53 ; global & static initialisations
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area GSINIT
                                     57 	.area GSFINAL
                                     58 	.area GSINIT
                                     59 ;--------------------------------------------------------
                                     60 ; Home
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area HOME
                                     64 ;--------------------------------------------------------
                                     65 ; code
                                     66 ;--------------------------------------------------------
                                     67 	.area CODE
                                     68 ;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
                                     69 ;	-----------------------------------------
                                     70 ;	 function GPS_Init
                                     71 ;	-----------------------------------------
      00901B                         72 _GPS_Init:
      00901B 52 1E            [ 2]   73 	sub	sp, #30
                                     74 ;	Source/Device/Src/gps.c: 34: GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);
      00901D 4B F0            [ 1]   75 	push	#0xf0
      00901F 4B 20            [ 1]   76 	push	#0x20
      009021 4B 0F            [ 1]   77 	push	#0x0f
      009023 4B 50            [ 1]   78 	push	#0x50
      009025 CD 82 2F         [ 4]   79 	call	_GPIO_Init
      009028 5B 04            [ 2]   80 	addw	sp, #4
                                     81 ;	Source/Device/Src/gps.c: 35: GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
      00902A 4B 00            [ 1]   82 	push	#0x00
      00902C 4B 40            [ 1]   83 	push	#0x40
      00902E 4B 0F            [ 1]   84 	push	#0x0f
      009030 4B 50            [ 1]   85 	push	#0x50
      009032 CD 82 2F         [ 4]   86 	call	_GPIO_Init
      009035 5B 04            [ 2]   87 	addw	sp, #4
                                     88 ;	Source/Device/Src/gps.c: 36: UART1_DeInit();
      009037 CD 84 4E         [ 4]   89 	call	_UART1_DeInit
                                     90 ;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)9600,
      00903A 4B 0C            [ 1]   91 	push	#0x0c
      00903C 4B 80            [ 1]   92 	push	#0x80
      00903E 4B 00            [ 1]   93 	push	#0x00
      009040 4B 00            [ 1]   94 	push	#0x00
      009042 4B 00            [ 1]   95 	push	#0x00
      009044 4B 80            [ 1]   96 	push	#0x80
      009046 4B 25            [ 1]   97 	push	#0x25
      009048 5F               [ 1]   98 	clrw	x
      009049 89               [ 2]   99 	pushw	x
      00904A CD 84 79         [ 4]  100 	call	_UART1_Init
      00904D 5B 09            [ 2]  101 	addw	sp, #9
                                    102 ;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      00904F 4B 01            [ 1]  103 	push	#0x01
      009051 4B 05            [ 1]  104 	push	#0x05
      009053 4B 02            [ 1]  105 	push	#0x02
      009055 CD 86 09         [ 4]  106 	call	_UART1_ITConfig
      009058 5B 03            [ 2]  107 	addw	sp, #3
                                    108 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      00905A 4B 01            [ 1]  109 	push	#0x01
      00905C 4B 44            [ 1]  110 	push	#0x44
      00905E 4B 02            [ 1]  111 	push	#0x02
      009060 CD 86 09         [ 4]  112 	call	_UART1_ITConfig
      009063 5B 03            [ 2]  113 	addw	sp, #3
                                    114 ;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
      009065 4B 01            [ 1]  115 	push	#0x01
      009067 CD 85 F6         [ 4]  116 	call	_UART1_Cmd
      00906A 84               [ 1]  117 	pop	a
                                    118 ;	Source/Device/Src/gps.c: 48: uint8_t open_nav_timeutc[]={0xBA,0xCE,0x04,0x00,0x06,0x01,0x01,0x10,0x01,0x00,0x05,0x10,0x07,0x01};
      00906B A6 BA            [ 1]  119 	ld	a, #0xba
      00906D 6B 01            [ 1]  120 	ld	(0x01, sp), a
      00906F 96               [ 1]  121 	ldw	x, sp
      009070 A6 CE            [ 1]  122 	ld	a, #0xce
      009072 E7 02            [ 1]  123 	ld	(2, x), a
      009074 96               [ 1]  124 	ldw	x, sp
      009075 A6 04            [ 1]  125 	ld	a, #0x04
      009077 E7 03            [ 1]  126 	ld	(3, x), a
      009079 96               [ 1]  127 	ldw	x, sp
      00907A 6F 04            [ 1]  128 	clr	(4, x)
      00907C 96               [ 1]  129 	ldw	x, sp
      00907D A6 06            [ 1]  130 	ld	a, #0x06
      00907F E7 05            [ 1]  131 	ld	(5, x), a
      009081 96               [ 1]  132 	ldw	x, sp
      009082 A6 01            [ 1]  133 	ld	a, #0x01
      009084 E7 06            [ 1]  134 	ld	(6, x), a
      009086 96               [ 1]  135 	ldw	x, sp
      009087 A6 01            [ 1]  136 	ld	a, #0x01
      009089 E7 07            [ 1]  137 	ld	(7, x), a
      00908B 96               [ 1]  138 	ldw	x, sp
      00908C A6 10            [ 1]  139 	ld	a, #0x10
      00908E E7 08            [ 1]  140 	ld	(8, x), a
      009090 96               [ 1]  141 	ldw	x, sp
      009091 A6 01            [ 1]  142 	ld	a, #0x01
      009093 E7 09            [ 1]  143 	ld	(9, x), a
      009095 96               [ 1]  144 	ldw	x, sp
      009096 6F 0A            [ 1]  145 	clr	(10, x)
      009098 96               [ 1]  146 	ldw	x, sp
      009099 A6 05            [ 1]  147 	ld	a, #0x05
      00909B E7 0B            [ 1]  148 	ld	(11, x), a
      00909D 96               [ 1]  149 	ldw	x, sp
      00909E A6 10            [ 1]  150 	ld	a, #0x10
      0090A0 E7 0C            [ 1]  151 	ld	(12, x), a
      0090A2 96               [ 1]  152 	ldw	x, sp
      0090A3 A6 07            [ 1]  153 	ld	a, #0x07
      0090A5 E7 0D            [ 1]  154 	ld	(13, x), a
      0090A7 96               [ 1]  155 	ldw	x, sp
      0090A8 A6 01            [ 1]  156 	ld	a, #0x01
      0090AA E7 0E            [ 1]  157 	ld	(14, x), a
                                    158 ;	Source/Device/Src/gps.c: 49: uint8_t close_all_nmea[]={'$','C','C','R','M','O',',',',','3',',','*','4','F',0x0D,0x0A};//$CCRMO,,3,*4F 其实字符串也不是不可以，只是为了省一个字节而已
      0090AC A6 24            [ 1]  159 	ld	a, #0x24
      0090AE 6B 0F            [ 1]  160 	ld	(0x0f, sp), a
      0090B0 96               [ 1]  161 	ldw	x, sp
      0090B1 A6 43            [ 1]  162 	ld	a, #0x43
      0090B3 E7 10            [ 1]  163 	ld	(16, x), a
      0090B5 96               [ 1]  164 	ldw	x, sp
      0090B6 A6 43            [ 1]  165 	ld	a, #0x43
      0090B8 E7 11            [ 1]  166 	ld	(17, x), a
      0090BA 96               [ 1]  167 	ldw	x, sp
      0090BB A6 52            [ 1]  168 	ld	a, #0x52
      0090BD E7 12            [ 1]  169 	ld	(18, x), a
      0090BF 96               [ 1]  170 	ldw	x, sp
      0090C0 A6 4D            [ 1]  171 	ld	a, #0x4d
      0090C2 E7 13            [ 1]  172 	ld	(19, x), a
      0090C4 96               [ 1]  173 	ldw	x, sp
      0090C5 A6 4F            [ 1]  174 	ld	a, #0x4f
      0090C7 E7 14            [ 1]  175 	ld	(20, x), a
      0090C9 96               [ 1]  176 	ldw	x, sp
      0090CA A6 2C            [ 1]  177 	ld	a, #0x2c
      0090CC E7 15            [ 1]  178 	ld	(21, x), a
      0090CE 96               [ 1]  179 	ldw	x, sp
      0090CF A6 2C            [ 1]  180 	ld	a, #0x2c
      0090D1 E7 16            [ 1]  181 	ld	(22, x), a
      0090D3 96               [ 1]  182 	ldw	x, sp
      0090D4 A6 33            [ 1]  183 	ld	a, #0x33
      0090D6 E7 17            [ 1]  184 	ld	(23, x), a
      0090D8 96               [ 1]  185 	ldw	x, sp
      0090D9 A6 2C            [ 1]  186 	ld	a, #0x2c
      0090DB E7 18            [ 1]  187 	ld	(24, x), a
      0090DD 96               [ 1]  188 	ldw	x, sp
      0090DE A6 2A            [ 1]  189 	ld	a, #0x2a
      0090E0 E7 19            [ 1]  190 	ld	(25, x), a
      0090E2 96               [ 1]  191 	ldw	x, sp
      0090E3 A6 34            [ 1]  192 	ld	a, #0x34
      0090E5 E7 1A            [ 1]  193 	ld	(26, x), a
      0090E7 96               [ 1]  194 	ldw	x, sp
      0090E8 A6 46            [ 1]  195 	ld	a, #0x46
      0090EA E7 1B            [ 1]  196 	ld	(27, x), a
      0090EC 96               [ 1]  197 	ldw	x, sp
      0090ED A6 0D            [ 1]  198 	ld	a, #0x0d
      0090EF E7 1C            [ 1]  199 	ld	(28, x), a
      0090F1 96               [ 1]  200 	ldw	x, sp
      0090F2 A6 0A            [ 1]  201 	ld	a, #0x0a
      0090F4 E7 1D            [ 1]  202 	ld	(29, x), a
                                    203 ;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      0090F6 0F 1E            [ 1]  204 	clr	(0x1e, sp)
      0090F8                        205 00110$:
      0090F8 7B 1E            [ 1]  206 	ld	a, (0x1e, sp)
      0090FA A1 0F            [ 1]  207 	cp	a, #0x0f
      0090FC 24 23            [ 1]  208 	jrnc	00104$
                                    209 ;	Source/Device/Src/gps.c: 54: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      0090FE                        210 00101$:
      0090FE 4B 80            [ 1]  211 	push	#0x80
      009100 4B 00            [ 1]  212 	push	#0x00
      009102 CD 86 8C         [ 4]  213 	call	_UART1_GetFlagStatus
      009105 85               [ 2]  214 	popw	x
      009106 4A               [ 1]  215 	dec	a
      009107 26 F5            [ 1]  216 	jrne	00101$
                                    217 ;	Source/Device/Src/gps.c: 55: UART1_SendData8(close_all_nmea[i]);
      009109 5F               [ 1]  218 	clrw	x
      00910A 7B 1E            [ 1]  219 	ld	a, (0x1e, sp)
      00910C 97               [ 1]  220 	ld	xl, a
      00910D 89               [ 2]  221 	pushw	x
      00910E 96               [ 1]  222 	ldw	x, sp
      00910F 1C 00 11         [ 2]  223 	addw	x, #17
      009112 72 FB 01         [ 2]  224 	addw	x, (1, sp)
      009115 5B 02            [ 2]  225 	addw	sp, #2
      009117 F6               [ 1]  226 	ld	a, (x)
      009118 88               [ 1]  227 	push	a
      009119 CD 86 85         [ 4]  228 	call	_UART1_SendData8
      00911C 84               [ 1]  229 	pop	a
                                    230 ;	Source/Device/Src/gps.c: 52: for(uint8_t i=0;i<sizeof(close_all_nmea);++i)
      00911D 0C 1E            [ 1]  231 	inc	(0x1e, sp)
      00911F 20 D7            [ 2]  232 	jra	00110$
      009121                        233 00104$:
                                    234 ;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      009121 0F 1E            [ 1]  235 	clr	(0x1e, sp)
      009123                        236 00113$:
      009123 7B 1E            [ 1]  237 	ld	a, (0x1e, sp)
      009125 A1 0E            [ 1]  238 	cp	a, #0x0e
      009127 24 23            [ 1]  239 	jrnc	00115$
                                    240 ;	Source/Device/Src/gps.c: 66: while(UART1_GetFlagStatus(UART1_FLAG_TXE)!=SET);
      009129                        241 00105$:
      009129 4B 80            [ 1]  242 	push	#0x80
      00912B 4B 00            [ 1]  243 	push	#0x00
      00912D CD 86 8C         [ 4]  244 	call	_UART1_GetFlagStatus
      009130 85               [ 2]  245 	popw	x
      009131 4A               [ 1]  246 	dec	a
      009132 26 F5            [ 1]  247 	jrne	00105$
                                    248 ;	Source/Device/Src/gps.c: 67: UART1_SendData8(open_nav_timeutc[i]);
      009134 5F               [ 1]  249 	clrw	x
      009135 7B 1E            [ 1]  250 	ld	a, (0x1e, sp)
      009137 97               [ 1]  251 	ld	xl, a
      009138 89               [ 2]  252 	pushw	x
      009139 96               [ 1]  253 	ldw	x, sp
      00913A 1C 00 03         [ 2]  254 	addw	x, #3
      00913D 72 FB 01         [ 2]  255 	addw	x, (1, sp)
      009140 5B 02            [ 2]  256 	addw	sp, #2
      009142 F6               [ 1]  257 	ld	a, (x)
      009143 88               [ 1]  258 	push	a
      009144 CD 86 85         [ 4]  259 	call	_UART1_SendData8
      009147 84               [ 1]  260 	pop	a
                                    261 ;	Source/Device/Src/gps.c: 64: for(uint8_t i=0;i<sizeof(open_nav_timeutc);++i)
      009148 0C 1E            [ 1]  262 	inc	(0x1e, sp)
      00914A 20 D7            [ 2]  263 	jra	00113$
      00914C                        264 00115$:
                                    265 ;	Source/Device/Src/gps.c: 69: }
      00914C 5B 1E            [ 2]  266 	addw	sp, #30
      00914E 81               [ 4]  267 	ret
                                    268 ;	Source/Device/Src/gps.c: 74: void GPS_GetTime(void)
                                    269 ;	-----------------------------------------
                                    270 ;	 function GPS_GetTime
                                    271 ;	-----------------------------------------
      00914F                        272 _GPS_GetTime:
      00914F 52 04            [ 2]  273 	sub	sp, #4
                                    274 ;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
      009151 90 5F            [ 1]  275 	clrw	y
      009153                        276 00106$:
      009153 90 A3 00 08      [ 2]  277 	cpw	y, #0x0008
      009157 2E 23            [ 1]  278 	jrsge	00101$
                                    279 ;	Source/Device/Src/gps.c: 79: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      009159 AE 00 0E         [ 2]  280 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      00915C 1F 01            [ 2]  281 	ldw	(0x01, sp), x
      00915E 93               [ 1]  282 	ldw	x, y
      00915F 1C 00 10         [ 2]  283 	addw	x, #0x0010
      009162 72 FB 01         [ 2]  284 	addw	x, (0x01, sp)
      009165 1F 03            [ 2]  285 	ldw	(0x03, sp), x
      009167 93               [ 1]  286 	ldw	x, y
      009168 1C 00 16         [ 2]  287 	addw	x, #22
      00916B 9F               [ 1]  288 	ld	a, xl
      00916C 49               [ 1]  289 	rlc	a
      00916D 4F               [ 1]  290 	clr	a
      00916E A2 00            [ 1]  291 	sbc	a, #0x00
      009170 95               [ 1]  292 	ld	xh, a
      009171 1C 00 31         [ 2]  293 	addw	x, #(_GPS_RxBuf + 0)
      009174 F6               [ 1]  294 	ld	a, (x)
      009175 1E 03            [ 2]  295 	ldw	x, (0x03, sp)
      009177 F7               [ 1]  296 	ld	(x), a
                                    297 ;	Source/Device/Src/gps.c: 78: for(int i=0;i<8;++i)
      009178 90 5C            [ 1]  298 	incw	y
      00917A 20 D7            [ 2]  299 	jra	00106$
      00917C                        300 00101$:
                                    301 ;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
      00917C 90 AE 00 20      [ 2]  302 	ldw	y, #(_GPS_TimeDataSturcture + 0)+18
      009180 90 F6            [ 1]  303 	ld	a, (y)
      009182 5F               [ 1]  304 	clrw	x
      009183 97               [ 1]  305 	ld	xl, a
      009184 1C 00 08         [ 2]  306 	addw	x, #0x0008
                                    307 ;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
                                    308 ;	Source/Device/Src/gps.c: 80: if(GPS_TimeDataSturcture.hour+8>24)
      009187 A3 00 18         [ 2]  309 	cpw	x, #0x0018
      00918A 2D 06            [ 1]  310 	jrsle	00103$
                                    311 ;	Source/Device/Src/gps.c: 81: GPS_TimeDataSturcture.hour+=8-24;
      00918C AB F0            [ 1]  312 	add	a, #0xf0
      00918E 90 F7            [ 1]  313 	ld	(y), a
      009190 20 04            [ 2]  314 	jra	00104$
      009192                        315 00103$:
                                    316 ;	Source/Device/Src/gps.c: 83: GPS_TimeDataSturcture.hour+=8;
      009192 AB 08            [ 1]  317 	add	a, #0x08
      009194 90 F7            [ 1]  318 	ld	(y), a
      009196                        319 00104$:
                                    320 ;	Source/Device/Src/gps.c: 84: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      009196 90 AE 00 1C      [ 2]  321 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      00919A C6 00 46         [ 1]  322 	ld	a, _GPS_RxBuf+21
      00919D 95               [ 1]  323 	ld	xh, a
      00919E 0F 02            [ 1]  324 	clr	(0x02, sp)
      0091A0 C6 00 45         [ 1]  325 	ld	a, _GPS_RxBuf+20
      0091A3 0F 03            [ 1]  326 	clr	(0x03, sp)
      0091A5 1A 02            [ 1]  327 	or	a, (0x02, sp)
      0091A7 02               [ 1]  328 	rlwa	x
      0091A8 1A 03            [ 1]  329 	or	a, (0x03, sp)
      0091AA 95               [ 1]  330 	ld	xh, a
      0091AB 90 FF            [ 2]  331 	ldw	(y), x
                                    332 ;	Source/Device/Src/gps.c: 85: }
      0091AD 5B 04            [ 2]  333 	addw	sp, #4
      0091AF 81               [ 4]  334 	ret
                                    335 ;	Source/Device/Src/gps.c: 93: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    336 ;	-----------------------------------------
                                    337 ;	 function UART1_RX_IRQHandler
                                    338 ;	-----------------------------------------
      0091B0                        339 _UART1_RX_IRQHandler:
      0091B0 62               [ 2]  340 	div	x, a
                                    341 ;	Source/Device/Src/gps.c: 95: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      0091B1 4B 55            [ 1]  342 	push	#0x55
      0091B3 4B 02            [ 1]  343 	push	#0x02
      0091B5 CD 86 CE         [ 4]  344 	call	_UART1_GetITStatus
      0091B8 85               [ 2]  345 	popw	x
      0091B9 4A               [ 1]  346 	dec	a
      0091BA 26 21            [ 1]  347 	jrne	00109$
                                    348 ;	Source/Device/Src/gps.c: 97: if(num<34)
      0091BC C6 00 53         [ 1]  349 	ld	a, _num+0
      0091BF A1 22            [ 1]  350 	cp	a, #0x22
      0091C1 24 14            [ 1]  351 	jrnc	00102$
                                    352 ;	Source/Device/Src/gps.c: 99: GPS_RxBuf[num]=UART1_ReceiveData8();
      0091C3 5F               [ 1]  353 	clrw	x
      0091C4 C6 00 53         [ 1]  354 	ld	a, _num+0
      0091C7 97               [ 1]  355 	ld	xl, a
      0091C8 1C 00 31         [ 2]  356 	addw	x, #(_GPS_RxBuf + 0)
      0091CB 89               [ 2]  357 	pushw	x
      0091CC CD 86 81         [ 4]  358 	call	_UART1_ReceiveData8
      0091CF 85               [ 2]  359 	popw	x
      0091D0 F7               [ 1]  360 	ld	(x), a
                                    361 ;	Source/Device/Src/gps.c: 100: ++num;
      0091D1 72 5C 00 53      [ 1]  362 	inc	_num+0
      0091D5 20 21            [ 2]  363 	jra	00111$
      0091D7                        364 00102$:
                                    365 ;	Source/Device/Src/gps.c: 103: num=0;
      0091D7 72 5F 00 53      [ 1]  366 	clr	_num+0
      0091DB 20 1B            [ 2]  367 	jra	00111$
      0091DD                        368 00109$:
                                    369 ;	Source/Device/Src/gps.c: 105: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      0091DD 4B 44            [ 1]  370 	push	#0x44
      0091DF 4B 02            [ 1]  371 	push	#0x02
      0091E1 CD 86 CE         [ 4]  372 	call	_UART1_GetITStatus
      0091E4 85               [ 2]  373 	popw	x
      0091E5 4A               [ 1]  374 	dec	a
      0091E6 26 10            [ 1]  375 	jrne	00111$
                                    376 ;	Source/Device/Src/gps.c: 107: UART1_ReceiveData8();
      0091E8 CD 86 81         [ 4]  377 	call	_UART1_ReceiveData8
                                    378 ;	Source/Device/Src/gps.c: 108: num=0;
      0091EB 72 5F 00 53      [ 1]  379 	clr	_num+0
                                    380 ;	Source/Device/Src/gps.c: 109: if(checksum()==SUCCESS)
      0091EF CD 91 F9         [ 4]  381 	call	_checksum
      0091F2 4A               [ 1]  382 	dec	a
      0091F3 26 03            [ 1]  383 	jrne	00111$
                                    384 ;	Source/Device/Src/gps.c: 111: GPS_GetTime();
      0091F5 CD 91 4F         [ 4]  385 	call	_GPS_GetTime
      0091F8                        386 00111$:
                                    387 ;	Source/Device/Src/gps.c: 114: }
      0091F8 80               [11]  388 	iret
                                    389 ;	Source/Device/Src/gps.c: 122: static ErrorStatus checksum(void)
                                    390 ;	-----------------------------------------
                                    391 ;	 function checksum
                                    392 ;	-----------------------------------------
      0091F9                        393 _checksum:
      0091F9 52 0E            [ 2]  394 	sub	sp, #14
                                    395 ;	Source/Device/Src/gps.c: 125: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      0091FB C6 00 36         [ 1]  396 	ld	a, _GPS_RxBuf+5
      0091FE 0F 05            [ 1]  397 	clr	(0x05, sp)
      009200 6B 0A            [ 1]  398 	ld	(0x0a, sp), a
      009202 5F               [ 1]  399 	clrw	x
      009203 0F 0B            [ 1]  400 	clr	(0x0b, sp)
      009205 90 AE 00 33      [ 2]  401 	ldw	y, #(_GPS_RxBuf + 0)+2
      009209 C6 00 34         [ 1]  402 	ld	a, _GPS_RxBuf+3
      00920C 6B 0E            [ 1]  403 	ld	(0x0e, sp), a
      00920E 5D               [ 2]  404 	tnzw	x
      00920F 26 3D            [ 1]  405 	jrne	00111$
      009211 1E 0A            [ 2]  406 	ldw	x, (0x0a, sp)
      009213 26 39            [ 1]  407 	jrne	00111$
      009215 C6 00 35         [ 1]  408 	ld	a, _GPS_RxBuf+4
      009218 5F               [ 1]  409 	clrw	x
      009219 0F 0A            [ 1]  410 	clr	(0x0a, sp)
      00921B 6B 0B            [ 1]  411 	ld	(0x0b, sp), a
      00921D 9F               [ 1]  412 	ld	a, xl
      00921E 5F               [ 1]  413 	clrw	x
      00921F 5D               [ 2]  414 	tnzw	x
      009220 26 2C            [ 1]  415 	jrne	00111$
      009222 0D 0B            [ 1]  416 	tnz	(0x0b, sp)
      009224 26 28            [ 1]  417 	jrne	00111$
      009226 4D               [ 1]  418 	tnz	a
      009227 26 25            [ 1]  419 	jrne	00111$
      009229 90 F6            [ 1]  420 	ld	a, (y)
      00922B 5F               [ 1]  421 	clrw	x
      00922C 0F 0A            [ 1]  422 	clr	(0x0a, sp)
      00922E 0F 0D            [ 1]  423 	clr	(0x0d, sp)
      009230 0D 0D            [ 1]  424 	tnz	(0x0d, sp)
      009232 26 1A            [ 1]  425 	jrne	00111$
      009234 4D               [ 1]  426 	tnz	a
      009235 26 17            [ 1]  427 	jrne	00111$
      009237 5D               [ 2]  428 	tnzw	x
      009238 26 14            [ 1]  429 	jrne	00111$
      00923A 7B 0E            [ 1]  430 	ld	a, (0x0e, sp)
      00923C 0F 0C            [ 1]  431 	clr	(0x0c, sp)
      00923E 5F               [ 1]  432 	clrw	x
      00923F 1F 0A            [ 2]  433 	ldw	(0x0a, sp), x
      009241 97               [ 1]  434 	ld	xl, a
      009242 7B 0C            [ 1]  435 	ld	a, (0x0c, sp)
      009244 95               [ 1]  436 	ld	xh, a
      009245 5D               [ 2]  437 	tnzw	x
      009246 26 06            [ 1]  438 	jrne	00111$
      009248 1E 0A            [ 2]  439 	ldw	x, (0x0a, sp)
      00924A 26 02            [ 1]  440 	jrne	00111$
      00924C 4F               [ 1]  441 	clr	a
      00924D C5                     442 	.byte 0xc5
      00924E                        443 00111$:
      00924E A6 01            [ 1]  444 	ld	a, #0x01
      009250                        445 00112$:
      009250 5F               [ 1]  446 	clrw	x
      009251 0F 0A            [ 1]  447 	clr	(0x0a, sp)
      009253 6B 04            [ 1]  448 	ld	(0x04, sp), a
      009255 1F 02            [ 2]  449 	ldw	(0x02, sp), x
      009257 7B 0A            [ 1]  450 	ld	a, (0x0a, sp)
      009259 6B 01            [ 1]  451 	ld	(0x01, sp), a
                                    452 ;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      00925B 7B 0E            [ 1]  453 	ld	a, (0x0e, sp)
      00925D 6B 05            [ 1]  454 	ld	(0x05, sp), a
      00925F 17 06            [ 2]  455 	ldw	(0x06, sp), y
      009261 5F               [ 1]  456 	clrw	x
      009262 1F 0D            [ 2]  457 	ldw	(0x0d, sp), x
      009264                        458 00106$:
      009264 1E 06            [ 2]  459 	ldw	x, (0x06, sp)
      009266 F6               [ 1]  460 	ld	a, (x)
      009267 95               [ 1]  461 	ld	xh, a
      009268 4F               [ 1]  462 	clr	a
      009269 97               [ 1]  463 	ld	xl, a
      00926A 5D               [ 2]  464 	tnzw	x
      00926B 26 09            [ 1]  465 	jrne	00120$
      00926D 7B 05            [ 1]  466 	ld	a, (0x05, sp)
      00926F 5F               [ 1]  467 	clrw	x
      009270 97               [ 1]  468 	ld	xl, a
      009271 5D               [ 2]  469 	tnzw	x
      009272 26 02            [ 1]  470 	jrne	00120$
      009274 4F               [ 1]  471 	clr	a
      009275 C5                     472 	.byte 0xc5
      009276                        473 00120$:
      009276 A6 01            [ 1]  474 	ld	a, #0x01
      009278                        475 00121$:
      009278 5F               [ 1]  476 	clrw	x
      009279 97               [ 1]  477 	ld	xl, a
      00927A 4B 04            [ 1]  478 	push	#0x04
      00927C 4B 00            [ 1]  479 	push	#0x00
      00927E 89               [ 2]  480 	pushw	x
      00927F CD 94 8A         [ 4]  481 	call	__divsint
      009282 5B 04            [ 2]  482 	addw	sp, #4
      009284 16 0D            [ 2]  483 	ldw	y, (0x0d, sp)
      009286 1F 0B            [ 2]  484 	ldw	(0x0b, sp), x
      009288 93               [ 1]  485 	ldw	x, y
      009289 13 0B            [ 2]  486 	cpw	x, (0x0b, sp)
      00928B 25 03            [ 1]  487 	jrc	00236$
      00928D CC 93 21         [ 2]  488 	jp	00101$
      009290                        489 00236$:
                                    490 ;	Source/Device/Src/gps.c: 129: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      009290 7B 0E            [ 1]  491 	ld	a, (0x0e, sp)
      009292 48               [ 1]  492 	sll	a
      009293 48               [ 1]  493 	sll	a
      009294 6B 08            [ 1]  494 	ld	(0x08, sp), a
      009296 AB 06            [ 1]  495 	add	a, #0x06
      009298 97               [ 1]  496 	ld	xl, a
      009299 49               [ 1]  497 	rlc	a
      00929A 4F               [ 1]  498 	clr	a
      00929B A2 00            [ 1]  499 	sbc	a, #0x00
      00929D 95               [ 1]  500 	ld	xh, a
      00929E 1C 00 31         [ 2]  501 	addw	x, #(_GPS_RxBuf + 0)
      0092A1 F6               [ 1]  502 	ld	a, (x)
      0092A2 0F 09            [ 1]  503 	clr	(0x09, sp)
      0092A4 6B 09            [ 1]  504 	ld	(0x09, sp), a
      0092A6 5F               [ 1]  505 	clrw	x
      0092A7 1F 0B            [ 2]  506 	ldw	(0x0b, sp), x
      0092A9 0F 0A            [ 1]  507 	clr	(0x0a, sp)
      0092AB 1E 0B            [ 2]  508 	ldw	x, (0x0b, sp)
      0092AD 26 50            [ 1]  509 	jrne	00123$
      0092AF 1E 09            [ 2]  510 	ldw	x, (0x09, sp)
      0092B1 26 4C            [ 1]  511 	jrne	00123$
      0092B3 7B 08            [ 1]  512 	ld	a, (0x08, sp)
      0092B5 AB 07            [ 1]  513 	add	a, #0x07
      0092B7 97               [ 1]  514 	ld	xl, a
      0092B8 49               [ 1]  515 	rlc	a
      0092B9 4F               [ 1]  516 	clr	a
      0092BA A2 00            [ 1]  517 	sbc	a, #0x00
      0092BC 95               [ 1]  518 	ld	xh, a
      0092BD 1C 00 31         [ 2]  519 	addw	x, #(_GPS_RxBuf + 0)
      0092C0 F6               [ 1]  520 	ld	a, (x)
      0092C1 5F               [ 1]  521 	clrw	x
      0092C2 97               [ 1]  522 	ld	xl, a
      0092C3 90 5F            [ 1]  523 	clrw	y
      0092C5 90 5D            [ 2]  524 	tnzw	y
      0092C7 26 36            [ 1]  525 	jrne	00123$
      0092C9 5D               [ 2]  526 	tnzw	x
      0092CA 26 33            [ 1]  527 	jrne	00123$
                                    528 ;	Source/Device/Src/gps.c: 130: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      0092CC 7B 08            [ 1]  529 	ld	a, (0x08, sp)
      0092CE AB 08            [ 1]  530 	add	a, #0x08
      0092D0 97               [ 1]  531 	ld	xl, a
      0092D1 49               [ 1]  532 	rlc	a
      0092D2 4F               [ 1]  533 	clr	a
      0092D3 A2 00            [ 1]  534 	sbc	a, #0x00
      0092D5 95               [ 1]  535 	ld	xh, a
      0092D6 1C 00 31         [ 2]  536 	addw	x, #(_GPS_RxBuf + 0)
      0092D9 F6               [ 1]  537 	ld	a, (x)
      0092DA 90 5F            [ 1]  538 	clrw	y
      0092DC 95               [ 1]  539 	ld	xh, a
      0092DD 4F               [ 1]  540 	clr	a
      0092DE 97               [ 1]  541 	ld	xl, a
      0092DF 5D               [ 2]  542 	tnzw	x
      0092E0 26 1D            [ 1]  543 	jrne	00123$
      0092E2 90 5D            [ 2]  544 	tnzw	y
      0092E4 26 19            [ 1]  545 	jrne	00123$
      0092E6 7B 08            [ 1]  546 	ld	a, (0x08, sp)
      0092E8 AB 09            [ 1]  547 	add	a, #0x09
      0092EA 97               [ 1]  548 	ld	xl, a
      0092EB 49               [ 1]  549 	rlc	a
      0092EC 4F               [ 1]  550 	clr	a
      0092ED A2 00            [ 1]  551 	sbc	a, #0x00
      0092EF 95               [ 1]  552 	ld	xh, a
      0092F0 1C 00 31         [ 2]  553 	addw	x, #(_GPS_RxBuf + 0)
      0092F3 F6               [ 1]  554 	ld	a, (x)
      0092F4 5F               [ 1]  555 	clrw	x
      0092F5 97               [ 1]  556 	ld	xl, a
      0092F6 90 5F            [ 1]  557 	clrw	y
      0092F8 5D               [ 2]  558 	tnzw	x
      0092F9 26 04            [ 1]  559 	jrne	00123$
      0092FB 90 5D            [ 2]  560 	tnzw	y
      0092FD 27 04            [ 1]  561 	jreq	00124$
      0092FF                        562 00123$:
      0092FF A6 01            [ 1]  563 	ld	a, #0x01
      009301 90 97            [ 1]  564 	ld	yl, a
      009303                        565 00124$:
      009303 4F               [ 1]  566 	clr	a
      009304 5F               [ 1]  567 	clrw	x
      009305 4D               [ 1]  568 	tnz	a
      009306 2A 01            [ 1]  569 	jrpl	00245$
      009308 5A               [ 2]  570 	decw	x
      009309                        571 00245$:
      009309 90 95            [ 1]  572 	ld	yh, a
      00930B 72 F9 03         [ 2]  573 	addw	y, (0x03, sp)
      00930E 9F               [ 1]  574 	ld	a, xl
      00930F 19 02            [ 1]  575 	adc	a, (0x02, sp)
      009311 02               [ 1]  576 	rlwa	x
      009312 19 01            [ 1]  577 	adc	a, (0x01, sp)
      009314 95               [ 1]  578 	ld	xh, a
      009315 17 03            [ 2]  579 	ldw	(0x03, sp), y
      009317 1F 01            [ 2]  580 	ldw	(0x01, sp), x
                                    581 ;	Source/Device/Src/gps.c: 128: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      009319 1E 0D            [ 2]  582 	ldw	x, (0x0d, sp)
      00931B 5C               [ 1]  583 	incw	x
      00931C 1F 0D            [ 2]  584 	ldw	(0x0d, sp), x
      00931E CC 92 64         [ 2]  585 	jp	00106$
      009321                        586 00101$:
                                    587 ;	Source/Device/Src/gps.c: 132: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      009321 C6 00 4F         [ 1]  588 	ld	a, _GPS_RxBuf+30
      009324 0F 0B            [ 1]  589 	clr	(0x0b, sp)
      009326 6B 0B            [ 1]  590 	ld	(0x0b, sp), a
      009328 5F               [ 1]  591 	clrw	x
      009329 0F 0C            [ 1]  592 	clr	(0x0c, sp)
      00932B 5D               [ 2]  593 	tnzw	x
      00932C 26 34            [ 1]  594 	jrne	00132$
      00932E 1E 0B            [ 2]  595 	ldw	x, (0x0b, sp)
      009330 26 30            [ 1]  596 	jrne	00132$
      009332 C6 00 50         [ 1]  597 	ld	a, _GPS_RxBuf+31
      009335 5F               [ 1]  598 	clrw	x
      009336 97               [ 1]  599 	ld	xl, a
      009337 90 5F            [ 1]  600 	clrw	y
      009339 90 5D            [ 2]  601 	tnzw	y
      00933B 26 25            [ 1]  602 	jrne	00132$
      00933D 5D               [ 2]  603 	tnzw	x
      00933E 26 22            [ 1]  604 	jrne	00132$
                                    605 ;	Source/Device/Src/gps.c: 133: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      009340 C6 00 51         [ 1]  606 	ld	a, _GPS_RxBuf+32
      009343 5F               [ 1]  607 	clrw	x
      009344 0F 0B            [ 1]  608 	clr	(0x0b, sp)
      009346 6B 0D            [ 1]  609 	ld	(0x0d, sp), a
      009348 5E               [ 1]  610 	swapw	x
      009349 0F 0E            [ 1]  611 	clr	(0x0e, sp)
      00934B 16 0D            [ 2]  612 	ldw	y, (0x0d, sp)
      00934D 26 13            [ 1]  613 	jrne	00132$
      00934F 5D               [ 2]  614 	tnzw	x
      009350 26 10            [ 1]  615 	jrne	00132$
      009352 C6 00 52         [ 1]  616 	ld	a, _GPS_RxBuf+33
      009355 5F               [ 1]  617 	clrw	x
      009356 90 5F            [ 1]  618 	clrw	y
      009358 97               [ 1]  619 	ld	xl, a
      009359 5D               [ 2]  620 	tnzw	x
      00935A 26 06            [ 1]  621 	jrne	00132$
      00935C 90 5D            [ 2]  622 	tnzw	y
      00935E 26 02            [ 1]  623 	jrne	00132$
      009360 4F               [ 1]  624 	clr	a
      009361 C5                     625 	.byte 0xc5
      009362                        626 00132$:
      009362 A6 01            [ 1]  627 	ld	a, #0x01
      009364                        628 00133$:
      009364 5F               [ 1]  629 	clrw	x
      009365 90 5F            [ 1]  630 	clrw	y
      009367 97               [ 1]  631 	ld	xl, a
      009368 13 03            [ 2]  632 	cpw	x, (0x03, sp)
      00936A 26 08            [ 1]  633 	jrne	00103$
      00936C 93               [ 1]  634 	ldw	x, y
      00936D 13 01            [ 2]  635 	cpw	x, (0x01, sp)
      00936F 26 03            [ 1]  636 	jrne	00103$
                                    637 ;	Source/Device/Src/gps.c: 134: return SUCCESS;
      009371 A6 01            [ 1]  638 	ld	a, #0x01
                                    639 ;	Source/Device/Src/gps.c: 136: return ERROR;
      009373 21                     640 	.byte 0x21
      009374                        641 00103$:
      009374 4F               [ 1]  642 	clr	a
      009375                        643 00108$:
                                    644 ;	Source/Device/Src/gps.c: 137: }
      009375 5B 0E            [ 2]  645 	addw	sp, #14
      009377 81               [ 4]  646 	ret
                                    647 	.area CODE
                                    648 	.area CONST
                                    649 	.area INITIALIZER
      00809F                        650 __xinit__GPS_RxBuf:
      00809F 00                     651 	.db #0x00	; 0
      0080A0 00                     652 	.db 0x00
      0080A1 00                     653 	.db 0x00
      0080A2 00                     654 	.db 0x00
      0080A3 00                     655 	.db 0x00
      0080A4 00                     656 	.db 0x00
      0080A5 00                     657 	.db 0x00
      0080A6 00                     658 	.db 0x00
      0080A7 00                     659 	.db 0x00
      0080A8 00                     660 	.db 0x00
      0080A9 00                     661 	.db 0x00
      0080AA 00                     662 	.db 0x00
      0080AB 00                     663 	.db 0x00
      0080AC 00                     664 	.db 0x00
      0080AD 00                     665 	.db 0x00
      0080AE 00                     666 	.db 0x00
      0080AF 00                     667 	.db 0x00
      0080B0 00                     668 	.db 0x00
      0080B1 00                     669 	.db 0x00
      0080B2 00                     670 	.db 0x00
      0080B3 00                     671 	.db 0x00
      0080B4 00                     672 	.db 0x00
      0080B5 00                     673 	.db 0x00
      0080B6 00                     674 	.db 0x00
      0080B7 00                     675 	.db 0x00
      0080B8 00                     676 	.db 0x00
      0080B9 00                     677 	.db 0x00
      0080BA 00                     678 	.db 0x00
      0080BB 00                     679 	.db 0x00
      0080BC 00                     680 	.db 0x00
      0080BD 00                     681 	.db 0x00
      0080BE 00                     682 	.db 0x00
      0080BF 00                     683 	.db 0x00
      0080C0 00                     684 	.db 0x00
      0080C1                        685 __xinit__num:
      0080C1 00                     686 	.db #0x00	; 0
                                    687 	.area CABS (ABS)
