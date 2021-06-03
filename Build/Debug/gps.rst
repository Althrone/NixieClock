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
                                     12 	.globl _UART1_ReceiveData8
                                     13 	.globl _UART1_ITConfig
                                     14 	.globl _UART1_Cmd
                                     15 	.globl _UART1_Init
                                     16 	.globl _UART1_DeInit
                                     17 	.globl _GPS_RxBuf
                                     18 	.globl _GPS_TimeDataSturcture
                                     19 	.globl _GPS_Init
                                     20 	.globl _GPS_GetTime
                                     21 	.globl _UART1_RX_IRQHandler
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                           000000    26 G$GPS_TimeDataSturcture$0_0$0==.
      000009                         27 _GPS_TimeDataSturcture::
      000009                         28 	.ds 24
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                           000000    33 G$GPS_RxBuf$0_0$0==.
      00002B                         34 _GPS_RxBuf::
      00002B                         35 	.ds 34
                           000022    36 Fgps$num$0_0$0==.
      00004D                         37 _num:
      00004D                         38 	.ds 1
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
                           000000    68 	Sgps$GPS_Init$0 ==.
                                     69 ;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
                                     70 ;	-----------------------------------------
                                     71 ;	 function GPS_Init
                                     72 ;	-----------------------------------------
      008B92                         73 _GPS_Init:
                           000000    74 	Sgps$GPS_Init$1 ==.
                           000000    75 	Sgps$GPS_Init$2 ==.
                                     76 ;	Source/Device/Src/gps.c: 36: UART1_DeInit();
      008B92 CD 82 5D         [ 4]   77 	call	_UART1_DeInit
                           000003    78 	Sgps$GPS_Init$3 ==.
                                     79 ;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)115200,
      008B95 4B 0C            [ 1]   80 	push	#0x0c
                           000005    81 	Sgps$GPS_Init$4 ==.
      008B97 4B 80            [ 1]   82 	push	#0x80
                           000007    83 	Sgps$GPS_Init$5 ==.
      008B99 4B 00            [ 1]   84 	push	#0x00
                           000009    85 	Sgps$GPS_Init$6 ==.
      008B9B 4B 00            [ 1]   86 	push	#0x00
                           00000B    87 	Sgps$GPS_Init$7 ==.
      008B9D 4B 00            [ 1]   88 	push	#0x00
                           00000D    89 	Sgps$GPS_Init$8 ==.
      008B9F 4B 00            [ 1]   90 	push	#0x00
                           00000F    91 	Sgps$GPS_Init$9 ==.
      008BA1 4B C2            [ 1]   92 	push	#0xc2
                           000011    93 	Sgps$GPS_Init$10 ==.
      008BA3 4B 01            [ 1]   94 	push	#0x01
                           000013    95 	Sgps$GPS_Init$11 ==.
      008BA5 4B 00            [ 1]   96 	push	#0x00
                           000015    97 	Sgps$GPS_Init$12 ==.
      008BA7 CD 82 88         [ 4]   98 	call	_UART1_Init
      008BAA 5B 09            [ 2]   99 	addw	sp, #9
                           00001A   100 	Sgps$GPS_Init$13 ==.
                           00001A   101 	Sgps$GPS_Init$14 ==.
                                    102 ;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      008BAC 4B 01            [ 1]  103 	push	#0x01
                           00001C   104 	Sgps$GPS_Init$15 ==.
      008BAE 4B 05            [ 1]  105 	push	#0x05
                           00001E   106 	Sgps$GPS_Init$16 ==.
      008BB0 4B 02            [ 1]  107 	push	#0x02
                           000020   108 	Sgps$GPS_Init$17 ==.
      008BB2 CD 84 19         [ 4]  109 	call	_UART1_ITConfig
      008BB5 5B 03            [ 2]  110 	addw	sp, #3
                           000025   111 	Sgps$GPS_Init$18 ==.
                           000025   112 	Sgps$GPS_Init$19 ==.
                                    113 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      008BB7 4B 01            [ 1]  114 	push	#0x01
                           000027   115 	Sgps$GPS_Init$20 ==.
      008BB9 4B 44            [ 1]  116 	push	#0x44
                           000029   117 	Sgps$GPS_Init$21 ==.
      008BBB 4B 02            [ 1]  118 	push	#0x02
                           00002B   119 	Sgps$GPS_Init$22 ==.
      008BBD CD 84 19         [ 4]  120 	call	_UART1_ITConfig
      008BC0 5B 03            [ 2]  121 	addw	sp, #3
                           000030   122 	Sgps$GPS_Init$23 ==.
                           000030   123 	Sgps$GPS_Init$24 ==.
                                    124 ;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
      008BC2 4B 01            [ 1]  125 	push	#0x01
                           000032   126 	Sgps$GPS_Init$25 ==.
      008BC4 CD 84 05         [ 4]  127 	call	_UART1_Cmd
      008BC7 84               [ 1]  128 	pop	a
                           000036   129 	Sgps$GPS_Init$26 ==.
                           000036   130 	Sgps$GPS_Init$27 ==.
                                    131 ;	Source/Device/Src/gps.c: 47: }
                           000036   132 	Sgps$GPS_Init$28 ==.
                           000036   133 	XG$GPS_Init$0$0 ==.
      008BC8 81               [ 4]  134 	ret
                           000037   135 	Sgps$GPS_Init$29 ==.
                           000037   136 	Sgps$GPS_GetTime$30 ==.
                                    137 ;	Source/Device/Src/gps.c: 52: void GPS_GetTime(void)
                                    138 ;	-----------------------------------------
                                    139 ;	 function GPS_GetTime
                                    140 ;	-----------------------------------------
      008BC9                        141 _GPS_GetTime:
                           000037   142 	Sgps$GPS_GetTime$31 ==.
      008BC9 52 04            [ 2]  143 	sub	sp, #4
                           000039   144 	Sgps$GPS_GetTime$32 ==.
                           000039   145 	Sgps$GPS_GetTime$33 ==.
                           000039   146 	Sgps$GPS_GetTime$34 ==.
                                    147 ;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
                           000039   148 	Sgps$GPS_GetTime$35 ==.
      008BCB 90 5F            [ 1]  149 	clrw	y
      008BCD                        150 00103$:
      008BCD 90 A3 00 08      [ 2]  151 	cpw	y, #0x0008
      008BD1 2E 23            [ 1]  152 	jrsge	00101$
                           000041   153 	Sgps$GPS_GetTime$36 ==.
                                    154 ;	Source/Device/Src/gps.c: 57: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      008BD3 AE 00 09         [ 2]  155 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      008BD6 1F 01            [ 2]  156 	ldw	(0x01, sp), x
      008BD8 93               [ 1]  157 	ldw	x, y
      008BD9 1C 00 10         [ 2]  158 	addw	x, #0x0010
      008BDC 72 FB 01         [ 2]  159 	addw	x, (0x01, sp)
      008BDF 1F 03            [ 2]  160 	ldw	(0x03, sp), x
      008BE1 93               [ 1]  161 	ldw	x, y
      008BE2 1C 00 16         [ 2]  162 	addw	x, #22
      008BE5 9F               [ 1]  163 	ld	a, xl
      008BE6 49               [ 1]  164 	rlc	a
      008BE7 4F               [ 1]  165 	clr	a
      008BE8 A2 00            [ 1]  166 	sbc	a, #0x00
      008BEA 95               [ 1]  167 	ld	xh, a
      008BEB 1C 00 2B         [ 2]  168 	addw	x, #(_GPS_RxBuf + 0)
      008BEE F6               [ 1]  169 	ld	a, (x)
      008BEF 1E 03            [ 2]  170 	ldw	x, (0x03, sp)
      008BF1 F7               [ 1]  171 	ld	(x), a
                           000060   172 	Sgps$GPS_GetTime$37 ==.
                                    173 ;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
      008BF2 90 5C            [ 1]  174 	incw	y
      008BF4 20 D7            [ 2]  175 	jra	00103$
      008BF6                        176 00101$:
                           000064   177 	Sgps$GPS_GetTime$38 ==.
                                    178 ;	Source/Device/Src/gps.c: 58: GPS_TimeDataSturcture.hour+=8;
      008BF6 AE 00 1B         [ 2]  179 	ldw	x, #(_GPS_TimeDataSturcture + 0)+18
      008BF9 F6               [ 1]  180 	ld	a, (x)
      008BFA AB 08            [ 1]  181 	add	a, #0x08
      008BFC F7               [ 1]  182 	ld	(x), a
                           00006B   183 	Sgps$GPS_GetTime$39 ==.
                                    184 ;	Source/Device/Src/gps.c: 59: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      008BFD 90 AE 00 17      [ 2]  185 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      008C01 C6 00 40         [ 1]  186 	ld	a, _GPS_RxBuf+21
      008C04 5F               [ 1]  187 	clrw	x
      008C05 6B 03            [ 1]  188 	ld	(0x03, sp), a
      008C07 0F 04            [ 1]  189 	clr	(0x04, sp)
      008C09 C6 00 3F         [ 1]  190 	ld	a, _GPS_RxBuf+20
      008C0C 5F               [ 1]  191 	clrw	x
      008C0D 1A 04            [ 1]  192 	or	a, (0x04, sp)
      008C0F 02               [ 1]  193 	rlwa	x
      008C10 1A 03            [ 1]  194 	or	a, (0x03, sp)
      008C12 95               [ 1]  195 	ld	xh, a
      008C13 90 FF            [ 2]  196 	ldw	(y), x
                           000083   197 	Sgps$GPS_GetTime$40 ==.
                                    198 ;	Source/Device/Src/gps.c: 60: }
      008C15 5B 04            [ 2]  199 	addw	sp, #4
                           000085   200 	Sgps$GPS_GetTime$41 ==.
                           000085   201 	Sgps$GPS_GetTime$42 ==.
                           000085   202 	XG$GPS_GetTime$0$0 ==.
      008C17 81               [ 4]  203 	ret
                           000086   204 	Sgps$GPS_GetTime$43 ==.
                           000086   205 	Sgps$UART1_RX_IRQHandler$44 ==.
                                    206 ;	Source/Device/Src/gps.c: 68: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    207 ;	-----------------------------------------
                                    208 ;	 function UART1_RX_IRQHandler
                                    209 ;	-----------------------------------------
      008C18                        210 _UART1_RX_IRQHandler:
      008C18 62               [ 2]  211 	div	x, a
                           000087   212 	Sgps$UART1_RX_IRQHandler$45 ==.
                           000087   213 	Sgps$UART1_RX_IRQHandler$46 ==.
                                    214 ;	Source/Device/Src/gps.c: 70: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      008C19 4B 55            [ 1]  215 	push	#0x55
                           000089   216 	Sgps$UART1_RX_IRQHandler$47 ==.
      008C1B 4B 02            [ 1]  217 	push	#0x02
                           00008B   218 	Sgps$UART1_RX_IRQHandler$48 ==.
      008C1D CD 84 E2         [ 4]  219 	call	_UART1_GetITStatus
      008C20 85               [ 2]  220 	popw	x
                           00008F   221 	Sgps$UART1_RX_IRQHandler$49 ==.
      008C21 4A               [ 1]  222 	dec	a
      008C22 26 21            [ 1]  223 	jrne	00109$
                           000092   224 	Sgps$UART1_RX_IRQHandler$50 ==.
                           000092   225 	Sgps$UART1_RX_IRQHandler$51 ==.
                           000092   226 	Sgps$UART1_RX_IRQHandler$52 ==.
                                    227 ;	Source/Device/Src/gps.c: 72: if(num<34)
      008C24 C6 00 4D         [ 1]  228 	ld	a, _num+0
      008C27 A1 22            [ 1]  229 	cp	a, #0x22
      008C29 24 14            [ 1]  230 	jrnc	00102$
                           000099   231 	Sgps$UART1_RX_IRQHandler$53 ==.
                           000099   232 	Sgps$UART1_RX_IRQHandler$54 ==.
                                    233 ;	Source/Device/Src/gps.c: 74: GPS_RxBuf[num]=UART1_ReceiveData8();
      008C2B 5F               [ 1]  234 	clrw	x
      008C2C C6 00 4D         [ 1]  235 	ld	a, _num+0
      008C2F 97               [ 1]  236 	ld	xl, a
      008C30 1C 00 2B         [ 2]  237 	addw	x, #(_GPS_RxBuf + 0)
      008C33 89               [ 2]  238 	pushw	x
                           0000A2   239 	Sgps$UART1_RX_IRQHandler$55 ==.
      008C34 CD 84 93         [ 4]  240 	call	_UART1_ReceiveData8
      008C37 85               [ 2]  241 	popw	x
                           0000A6   242 	Sgps$UART1_RX_IRQHandler$56 ==.
      008C38 F7               [ 1]  243 	ld	(x), a
                           0000A7   244 	Sgps$UART1_RX_IRQHandler$57 ==.
                                    245 ;	Source/Device/Src/gps.c: 75: ++num;
      008C39 72 5C 00 4D      [ 1]  246 	inc	_num+0
                           0000AB   247 	Sgps$UART1_RX_IRQHandler$58 ==.
      008C3D 20 21            [ 2]  248 	jra	00111$
      008C3F                        249 00102$:
                           0000AD   250 	Sgps$UART1_RX_IRQHandler$59 ==.
                                    251 ;	Source/Device/Src/gps.c: 78: num=0;
      008C3F 72 5F 00 4D      [ 1]  252 	clr	_num+0
                           0000B1   253 	Sgps$UART1_RX_IRQHandler$60 ==.
      008C43 20 1B            [ 2]  254 	jra	00111$
      008C45                        255 00109$:
                           0000B3   256 	Sgps$UART1_RX_IRQHandler$61 ==.
                                    257 ;	Source/Device/Src/gps.c: 80: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      008C45 4B 44            [ 1]  258 	push	#0x44
                           0000B5   259 	Sgps$UART1_RX_IRQHandler$62 ==.
      008C47 4B 02            [ 1]  260 	push	#0x02
                           0000B7   261 	Sgps$UART1_RX_IRQHandler$63 ==.
      008C49 CD 84 E2         [ 4]  262 	call	_UART1_GetITStatus
      008C4C 85               [ 2]  263 	popw	x
                           0000BB   264 	Sgps$UART1_RX_IRQHandler$64 ==.
      008C4D 4A               [ 1]  265 	dec	a
      008C4E 26 10            [ 1]  266 	jrne	00111$
                           0000BE   267 	Sgps$UART1_RX_IRQHandler$65 ==.
                           0000BE   268 	Sgps$UART1_RX_IRQHandler$66 ==.
                           0000BE   269 	Sgps$UART1_RX_IRQHandler$67 ==.
                                    270 ;	Source/Device/Src/gps.c: 82: UART1_ReceiveData8();
      008C50 CD 84 93         [ 4]  271 	call	_UART1_ReceiveData8
                           0000C1   272 	Sgps$UART1_RX_IRQHandler$68 ==.
                                    273 ;	Source/Device/Src/gps.c: 83: num=0;
      008C53 72 5F 00 4D      [ 1]  274 	clr	_num+0
                           0000C5   275 	Sgps$UART1_RX_IRQHandler$69 ==.
                                    276 ;	Source/Device/Src/gps.c: 84: if(checksum()==SUCCESS)
      008C57 CD 8C 61         [ 4]  277 	call	_checksum
      008C5A 4A               [ 1]  278 	dec	a
      008C5B 26 03            [ 1]  279 	jrne	00111$
                           0000CB   280 	Sgps$UART1_RX_IRQHandler$70 ==.
                           0000CB   281 	Sgps$UART1_RX_IRQHandler$71 ==.
                           0000CB   282 	Sgps$UART1_RX_IRQHandler$72 ==.
                                    283 ;	Source/Device/Src/gps.c: 86: GPS_GetTime();
      008C5D CD 8B C9         [ 4]  284 	call	_GPS_GetTime
                           0000CE   285 	Sgps$UART1_RX_IRQHandler$73 ==.
      008C60                        286 00111$:
                           0000CE   287 	Sgps$UART1_RX_IRQHandler$74 ==.
                                    288 ;	Source/Device/Src/gps.c: 89: }
                           0000CE   289 	Sgps$UART1_RX_IRQHandler$75 ==.
                           0000CE   290 	XG$UART1_RX_IRQHandler$0$0 ==.
      008C60 80               [11]  291 	iret
                           0000CF   292 	Sgps$UART1_RX_IRQHandler$76 ==.
                           0000CF   293 	Sgps$checksum$77 ==.
                                    294 ;	Source/Device/Src/gps.c: 97: static ErrorStatus checksum(void)
                                    295 ;	-----------------------------------------
                                    296 ;	 function checksum
                                    297 ;	-----------------------------------------
      008C61                        298 _checksum:
                           0000CF   299 	Sgps$checksum$78 ==.
      008C61 52 0E            [ 2]  300 	sub	sp, #14
                           0000D1   301 	Sgps$checksum$79 ==.
                           0000D1   302 	Sgps$checksum$80 ==.
                                    303 ;	Source/Device/Src/gps.c: 100: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      008C63 C6 00 30         [ 1]  304 	ld	a, _GPS_RxBuf+5
      008C66 0F 05            [ 1]  305 	clr	(0x05, sp)
      008C68 6B 0A            [ 1]  306 	ld	(0x0a, sp), a
      008C6A 5F               [ 1]  307 	clrw	x
      008C6B 0F 0B            [ 1]  308 	clr	(0x0b, sp)
      008C6D 90 AE 00 2D      [ 2]  309 	ldw	y, #(_GPS_RxBuf + 0)+2
      008C71 C6 00 2E         [ 1]  310 	ld	a, _GPS_RxBuf+3
      008C74 6B 0E            [ 1]  311 	ld	(0x0e, sp), a
      008C76 5D               [ 2]  312 	tnzw	x
      008C77 26 3D            [ 1]  313 	jrne	00111$
      008C79 1E 0A            [ 2]  314 	ldw	x, (0x0a, sp)
      008C7B 26 39            [ 1]  315 	jrne	00111$
      008C7D C6 00 2F         [ 1]  316 	ld	a, _GPS_RxBuf+4
      008C80 5F               [ 1]  317 	clrw	x
      008C81 0F 0A            [ 1]  318 	clr	(0x0a, sp)
      008C83 6B 0B            [ 1]  319 	ld	(0x0b, sp), a
      008C85 9F               [ 1]  320 	ld	a, xl
      008C86 5F               [ 1]  321 	clrw	x
      008C87 5D               [ 2]  322 	tnzw	x
      008C88 26 2C            [ 1]  323 	jrne	00111$
      008C8A 0D 0B            [ 1]  324 	tnz	(0x0b, sp)
      008C8C 26 28            [ 1]  325 	jrne	00111$
      008C8E 4D               [ 1]  326 	tnz	a
      008C8F 26 25            [ 1]  327 	jrne	00111$
      008C91 90 F6            [ 1]  328 	ld	a, (y)
      008C93 5F               [ 1]  329 	clrw	x
      008C94 0F 0A            [ 1]  330 	clr	(0x0a, sp)
      008C96 0F 0D            [ 1]  331 	clr	(0x0d, sp)
      008C98 0D 0D            [ 1]  332 	tnz	(0x0d, sp)
      008C9A 26 1A            [ 1]  333 	jrne	00111$
      008C9C 4D               [ 1]  334 	tnz	a
      008C9D 26 17            [ 1]  335 	jrne	00111$
      008C9F 5D               [ 2]  336 	tnzw	x
      008CA0 26 14            [ 1]  337 	jrne	00111$
      008CA2 7B 0E            [ 1]  338 	ld	a, (0x0e, sp)
      008CA4 0F 0C            [ 1]  339 	clr	(0x0c, sp)
      008CA6 5F               [ 1]  340 	clrw	x
      008CA7 1F 0A            [ 2]  341 	ldw	(0x0a, sp), x
      008CA9 97               [ 1]  342 	ld	xl, a
      008CAA 7B 0C            [ 1]  343 	ld	a, (0x0c, sp)
      008CAC 95               [ 1]  344 	ld	xh, a
      008CAD 5D               [ 2]  345 	tnzw	x
      008CAE 26 06            [ 1]  346 	jrne	00111$
      008CB0 1E 0A            [ 2]  347 	ldw	x, (0x0a, sp)
      008CB2 26 02            [ 1]  348 	jrne	00111$
      008CB4 4F               [ 1]  349 	clr	a
      008CB5 C5                     350 	.byte 0xc5
      008CB6                        351 00111$:
      008CB6 A6 01            [ 1]  352 	ld	a, #0x01
      008CB8                        353 00112$:
      008CB8 5F               [ 1]  354 	clrw	x
      008CB9 0F 0A            [ 1]  355 	clr	(0x0a, sp)
      008CBB 6B 04            [ 1]  356 	ld	(0x04, sp), a
      008CBD 1F 02            [ 2]  357 	ldw	(0x02, sp), x
      008CBF 7B 0A            [ 1]  358 	ld	a, (0x0a, sp)
      008CC1 6B 01            [ 1]  359 	ld	(0x01, sp), a
                           000131   360 	Sgps$checksum$81 ==.
                           000131   361 	Sgps$checksum$82 ==.
                                    362 ;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      008CC3 7B 0E            [ 1]  363 	ld	a, (0x0e, sp)
      008CC5 6B 05            [ 1]  364 	ld	(0x05, sp), a
      008CC7 17 06            [ 2]  365 	ldw	(0x06, sp), y
                           000137   366 	Sgps$checksum$83 ==.
      008CC9 5F               [ 1]  367 	clrw	x
      008CCA 1F 0D            [ 2]  368 	ldw	(0x0d, sp), x
      008CCC                        369 00106$:
      008CCC 1E 06            [ 2]  370 	ldw	x, (0x06, sp)
      008CCE F6               [ 1]  371 	ld	a, (x)
      008CCF 95               [ 1]  372 	ld	xh, a
      008CD0 4F               [ 1]  373 	clr	a
      008CD1 97               [ 1]  374 	ld	xl, a
      008CD2 5D               [ 2]  375 	tnzw	x
      008CD3 26 09            [ 1]  376 	jrne	00120$
      008CD5 7B 05            [ 1]  377 	ld	a, (0x05, sp)
      008CD7 5F               [ 1]  378 	clrw	x
      008CD8 97               [ 1]  379 	ld	xl, a
      008CD9 5D               [ 2]  380 	tnzw	x
      008CDA 26 02            [ 1]  381 	jrne	00120$
      008CDC 4F               [ 1]  382 	clr	a
      008CDD C5                     383 	.byte 0xc5
      008CDE                        384 00120$:
      008CDE A6 01            [ 1]  385 	ld	a, #0x01
      008CE0                        386 00121$:
      008CE0 5F               [ 1]  387 	clrw	x
      008CE1 97               [ 1]  388 	ld	xl, a
      008CE2 4B 04            [ 1]  389 	push	#0x04
                           000152   390 	Sgps$checksum$84 ==.
      008CE4 4B 00            [ 1]  391 	push	#0x00
                           000154   392 	Sgps$checksum$85 ==.
      008CE6 89               [ 2]  393 	pushw	x
                           000155   394 	Sgps$checksum$86 ==.
      008CE7 CD 8E F3         [ 4]  395 	call	__divsint
      008CEA 5B 04            [ 2]  396 	addw	sp, #4
                           00015A   397 	Sgps$checksum$87 ==.
      008CEC 16 0D            [ 2]  398 	ldw	y, (0x0d, sp)
      008CEE 1F 0B            [ 2]  399 	ldw	(0x0b, sp), x
      008CF0 93               [ 1]  400 	ldw	x, y
      008CF1 13 0B            [ 2]  401 	cpw	x, (0x0b, sp)
      008CF3 25 03            [ 1]  402 	jrc	00236$
      008CF5 CC 8D 89         [ 2]  403 	jp	00101$
      008CF8                        404 00236$:
                           000166   405 	Sgps$checksum$88 ==.
                                    406 ;	Source/Device/Src/gps.c: 104: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      008CF8 7B 0E            [ 1]  407 	ld	a, (0x0e, sp)
      008CFA 48               [ 1]  408 	sll	a
      008CFB 48               [ 1]  409 	sll	a
      008CFC 6B 08            [ 1]  410 	ld	(0x08, sp), a
      008CFE AB 06            [ 1]  411 	add	a, #0x06
      008D00 97               [ 1]  412 	ld	xl, a
      008D01 49               [ 1]  413 	rlc	a
      008D02 4F               [ 1]  414 	clr	a
      008D03 A2 00            [ 1]  415 	sbc	a, #0x00
      008D05 95               [ 1]  416 	ld	xh, a
      008D06 1C 00 2B         [ 2]  417 	addw	x, #(_GPS_RxBuf + 0)
      008D09 F6               [ 1]  418 	ld	a, (x)
      008D0A 0F 09            [ 1]  419 	clr	(0x09, sp)
      008D0C 6B 09            [ 1]  420 	ld	(0x09, sp), a
      008D0E 5F               [ 1]  421 	clrw	x
      008D0F 1F 0B            [ 2]  422 	ldw	(0x0b, sp), x
      008D11 0F 0A            [ 1]  423 	clr	(0x0a, sp)
      008D13 1E 0B            [ 2]  424 	ldw	x, (0x0b, sp)
      008D15 26 50            [ 1]  425 	jrne	00123$
      008D17 1E 09            [ 2]  426 	ldw	x, (0x09, sp)
      008D19 26 4C            [ 1]  427 	jrne	00123$
      008D1B 7B 08            [ 1]  428 	ld	a, (0x08, sp)
      008D1D AB 07            [ 1]  429 	add	a, #0x07
      008D1F 97               [ 1]  430 	ld	xl, a
      008D20 49               [ 1]  431 	rlc	a
      008D21 4F               [ 1]  432 	clr	a
      008D22 A2 00            [ 1]  433 	sbc	a, #0x00
      008D24 95               [ 1]  434 	ld	xh, a
      008D25 1C 00 2B         [ 2]  435 	addw	x, #(_GPS_RxBuf + 0)
      008D28 F6               [ 1]  436 	ld	a, (x)
      008D29 5F               [ 1]  437 	clrw	x
      008D2A 97               [ 1]  438 	ld	xl, a
      008D2B 90 5F            [ 1]  439 	clrw	y
      008D2D 90 5D            [ 2]  440 	tnzw	y
      008D2F 26 36            [ 1]  441 	jrne	00123$
      008D31 5D               [ 2]  442 	tnzw	x
      008D32 26 33            [ 1]  443 	jrne	00123$
                           0001A2   444 	Sgps$checksum$89 ==.
                                    445 ;	Source/Device/Src/gps.c: 105: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      008D34 7B 08            [ 1]  446 	ld	a, (0x08, sp)
      008D36 AB 08            [ 1]  447 	add	a, #0x08
      008D38 97               [ 1]  448 	ld	xl, a
      008D39 49               [ 1]  449 	rlc	a
      008D3A 4F               [ 1]  450 	clr	a
      008D3B A2 00            [ 1]  451 	sbc	a, #0x00
      008D3D 95               [ 1]  452 	ld	xh, a
      008D3E 1C 00 2B         [ 2]  453 	addw	x, #(_GPS_RxBuf + 0)
      008D41 F6               [ 1]  454 	ld	a, (x)
      008D42 90 5F            [ 1]  455 	clrw	y
      008D44 95               [ 1]  456 	ld	xh, a
      008D45 4F               [ 1]  457 	clr	a
      008D46 97               [ 1]  458 	ld	xl, a
      008D47 5D               [ 2]  459 	tnzw	x
      008D48 26 1D            [ 1]  460 	jrne	00123$
      008D4A 90 5D            [ 2]  461 	tnzw	y
      008D4C 26 19            [ 1]  462 	jrne	00123$
      008D4E 7B 08            [ 1]  463 	ld	a, (0x08, sp)
      008D50 AB 09            [ 1]  464 	add	a, #0x09
      008D52 97               [ 1]  465 	ld	xl, a
      008D53 49               [ 1]  466 	rlc	a
      008D54 4F               [ 1]  467 	clr	a
      008D55 A2 00            [ 1]  468 	sbc	a, #0x00
      008D57 95               [ 1]  469 	ld	xh, a
      008D58 1C 00 2B         [ 2]  470 	addw	x, #(_GPS_RxBuf + 0)
      008D5B F6               [ 1]  471 	ld	a, (x)
      008D5C 5F               [ 1]  472 	clrw	x
      008D5D 97               [ 1]  473 	ld	xl, a
      008D5E 90 5F            [ 1]  474 	clrw	y
      008D60 5D               [ 2]  475 	tnzw	x
      008D61 26 04            [ 1]  476 	jrne	00123$
      008D63 90 5D            [ 2]  477 	tnzw	y
      008D65 27 04            [ 1]  478 	jreq	00124$
      008D67                        479 00123$:
      008D67 A6 01            [ 1]  480 	ld	a, #0x01
      008D69 90 97            [ 1]  481 	ld	yl, a
      008D6B                        482 00124$:
      008D6B 4F               [ 1]  483 	clr	a
      008D6C 5F               [ 1]  484 	clrw	x
      008D6D 4D               [ 1]  485 	tnz	a
      008D6E 2A 01            [ 1]  486 	jrpl	00245$
      008D70 5A               [ 2]  487 	decw	x
      008D71                        488 00245$:
      008D71 90 95            [ 1]  489 	ld	yh, a
      008D73 72 F9 03         [ 2]  490 	addw	y, (0x03, sp)
      008D76 9F               [ 1]  491 	ld	a, xl
      008D77 19 02            [ 1]  492 	adc	a, (0x02, sp)
      008D79 02               [ 1]  493 	rlwa	x
      008D7A 19 01            [ 1]  494 	adc	a, (0x01, sp)
      008D7C 95               [ 1]  495 	ld	xh, a
      008D7D 17 03            [ 2]  496 	ldw	(0x03, sp), y
      008D7F 1F 01            [ 2]  497 	ldw	(0x01, sp), x
                           0001EF   498 	Sgps$checksum$90 ==.
                                    499 ;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      008D81 1E 0D            [ 2]  500 	ldw	x, (0x0d, sp)
      008D83 5C               [ 1]  501 	incw	x
      008D84 1F 0D            [ 2]  502 	ldw	(0x0d, sp), x
      008D86 CC 8C CC         [ 2]  503 	jp	00106$
      008D89                        504 00101$:
                           0001F7   505 	Sgps$checksum$91 ==.
                                    506 ;	Source/Device/Src/gps.c: 107: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      008D89 C6 00 49         [ 1]  507 	ld	a, _GPS_RxBuf+30
      008D8C 0F 0B            [ 1]  508 	clr	(0x0b, sp)
      008D8E 6B 0B            [ 1]  509 	ld	(0x0b, sp), a
      008D90 5F               [ 1]  510 	clrw	x
      008D91 0F 0C            [ 1]  511 	clr	(0x0c, sp)
      008D93 5D               [ 2]  512 	tnzw	x
      008D94 26 34            [ 1]  513 	jrne	00132$
      008D96 1E 0B            [ 2]  514 	ldw	x, (0x0b, sp)
      008D98 26 30            [ 1]  515 	jrne	00132$
      008D9A C6 00 4A         [ 1]  516 	ld	a, _GPS_RxBuf+31
      008D9D 5F               [ 1]  517 	clrw	x
      008D9E 97               [ 1]  518 	ld	xl, a
      008D9F 90 5F            [ 1]  519 	clrw	y
      008DA1 90 5D            [ 2]  520 	tnzw	y
      008DA3 26 25            [ 1]  521 	jrne	00132$
      008DA5 5D               [ 2]  522 	tnzw	x
      008DA6 26 22            [ 1]  523 	jrne	00132$
                           000216   524 	Sgps$checksum$92 ==.
                                    525 ;	Source/Device/Src/gps.c: 108: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      008DA8 C6 00 4B         [ 1]  526 	ld	a, _GPS_RxBuf+32
      008DAB 5F               [ 1]  527 	clrw	x
      008DAC 0F 0B            [ 1]  528 	clr	(0x0b, sp)
      008DAE 6B 0D            [ 1]  529 	ld	(0x0d, sp), a
      008DB0 5E               [ 1]  530 	swapw	x
      008DB1 0F 0E            [ 1]  531 	clr	(0x0e, sp)
      008DB3 16 0D            [ 2]  532 	ldw	y, (0x0d, sp)
      008DB5 26 13            [ 1]  533 	jrne	00132$
      008DB7 5D               [ 2]  534 	tnzw	x
      008DB8 26 10            [ 1]  535 	jrne	00132$
      008DBA C6 00 4C         [ 1]  536 	ld	a, _GPS_RxBuf+33
      008DBD 5F               [ 1]  537 	clrw	x
      008DBE 90 5F            [ 1]  538 	clrw	y
      008DC0 97               [ 1]  539 	ld	xl, a
      008DC1 5D               [ 2]  540 	tnzw	x
      008DC2 26 06            [ 1]  541 	jrne	00132$
      008DC4 90 5D            [ 2]  542 	tnzw	y
      008DC6 26 02            [ 1]  543 	jrne	00132$
      008DC8 4F               [ 1]  544 	clr	a
      008DC9 C5                     545 	.byte 0xc5
      008DCA                        546 00132$:
      008DCA A6 01            [ 1]  547 	ld	a, #0x01
      008DCC                        548 00133$:
      008DCC 5F               [ 1]  549 	clrw	x
      008DCD 90 5F            [ 1]  550 	clrw	y
      008DCF 97               [ 1]  551 	ld	xl, a
      008DD0 13 03            [ 2]  552 	cpw	x, (0x03, sp)
      008DD2 26 09            [ 1]  553 	jrne	00103$
      008DD4 93               [ 1]  554 	ldw	x, y
      008DD5 13 01            [ 2]  555 	cpw	x, (0x01, sp)
      008DD7 26 04            [ 1]  556 	jrne	00103$
                           000247   557 	Sgps$checksum$93 ==.
                           000247   558 	Sgps$checksum$94 ==.
                                    559 ;	Source/Device/Src/gps.c: 109: return SUCCESS;
      008DD9 A6 01            [ 1]  560 	ld	a, #0x01
      008DDB 20 01            [ 2]  561 	jra	00108$
      008DDD                        562 00103$:
                           00024B   563 	Sgps$checksum$95 ==.
                                    564 ;	Source/Device/Src/gps.c: 111: return ERROR;
      008DDD 4F               [ 1]  565 	clr	a
      008DDE                        566 00108$:
                           00024C   567 	Sgps$checksum$96 ==.
                                    568 ;	Source/Device/Src/gps.c: 112: }
      008DDE 5B 0E            [ 2]  569 	addw	sp, #14
                           00024E   570 	Sgps$checksum$97 ==.
                           00024E   571 	Sgps$checksum$98 ==.
                           00024E   572 	XFgps$checksum$0$0 ==.
      008DE0 81               [ 4]  573 	ret
                           00024F   574 	Sgps$checksum$99 ==.
                                    575 	.area CODE
                                    576 	.area CONST
                                    577 	.area INITIALIZER
                           000000   578 Fgps$__xinit_GPS_RxBuf$0_0$0 == .
      00808A                        579 __xinit__GPS_RxBuf:
      00808A 00                     580 	.db #0x00	; 0
      00808B 00                     581 	.db 0x00
      00808C 00                     582 	.db 0x00
      00808D 00                     583 	.db 0x00
      00808E 00                     584 	.db 0x00
      00808F 00                     585 	.db 0x00
      008090 00                     586 	.db 0x00
      008091 00                     587 	.db 0x00
      008092 00                     588 	.db 0x00
      008093 00                     589 	.db 0x00
      008094 00                     590 	.db 0x00
      008095 00                     591 	.db 0x00
      008096 00                     592 	.db 0x00
      008097 00                     593 	.db 0x00
      008098 00                     594 	.db 0x00
      008099 00                     595 	.db 0x00
      00809A 00                     596 	.db 0x00
      00809B 00                     597 	.db 0x00
      00809C 00                     598 	.db 0x00
      00809D 00                     599 	.db 0x00
      00809E 00                     600 	.db 0x00
      00809F 00                     601 	.db 0x00
      0080A0 00                     602 	.db 0x00
      0080A1 00                     603 	.db 0x00
      0080A2 00                     604 	.db 0x00
      0080A3 00                     605 	.db 0x00
      0080A4 00                     606 	.db 0x00
      0080A5 00                     607 	.db 0x00
      0080A6 00                     608 	.db 0x00
      0080A7 00                     609 	.db 0x00
      0080A8 00                     610 	.db 0x00
      0080A9 00                     611 	.db 0x00
      0080AA 00                     612 	.db 0x00
      0080AB 00                     613 	.db 0x00
                           000022   614 Fgps$__xinit_num$0_0$0 == .
      0080AC                        615 __xinit__num:
      0080AC 00                     616 	.db #0x00	; 0
                                    617 	.area CABS (ABS)
                                    618 
                                    619 	.area .debug_line (NOLOAD)
      0010EF 00 00 01 86            620 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0010F3                        621 Ldebug_line_start:
      0010F3 00 02                  622 	.dw	2
      0010F5 00 00 00 78            623 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0010F9 01                     624 	.db	1
      0010FA 01                     625 	.db	1
      0010FB FB                     626 	.db	-5
      0010FC 0F                     627 	.db	15
      0010FD 0A                     628 	.db	10
      0010FE 00                     629 	.db	0
      0010FF 01                     630 	.db	1
      001100 01                     631 	.db	1
      001101 01                     632 	.db	1
      001102 01                     633 	.db	1
      001103 00                     634 	.db	0
      001104 00                     635 	.db	0
      001105 00                     636 	.db	0
      001106 01                     637 	.db	1
      001107 43 3A 5C 50 72 6F 67   638 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00112F 00                     639 	.db	0
      001130 43 3A 5C 50 72 6F 67   640 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001153 00                     641 	.db	0
      001154 00                     642 	.db	0
      001155 53 6F 75 72 63 65 2F   643 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      00116C 00                     644 	.db	0
      00116D 00                     645 	.uleb128	0
      00116E 00                     646 	.uleb128	0
      00116F 00                     647 	.uleb128	0
      001170 00                     648 	.db	0
      001171                        649 Ldebug_line_stmt:
      001171 00                     650 	.db	0
      001172 05                     651 	.uleb128	5
      001173 02                     652 	.db	2
      001174 00 00 8B 92            653 	.dw	0,(Sgps$GPS_Init$0)
      001178 03                     654 	.db	3
      001179 1F                     655 	.sleb128	31
      00117A 01                     656 	.db	1
      00117B 09                     657 	.db	9
      00117C 00 00                  658 	.dw	Sgps$GPS_Init$2-Sgps$GPS_Init$0
      00117E 03                     659 	.db	3
      00117F 04                     660 	.sleb128	4
      001180 01                     661 	.db	1
      001181 09                     662 	.db	9
      001182 00 03                  663 	.dw	Sgps$GPS_Init$3-Sgps$GPS_Init$2
      001184 03                     664 	.db	3
      001185 01                     665 	.sleb128	1
      001186 01                     666 	.db	1
      001187 09                     667 	.db	9
      001188 00 17                  668 	.dw	Sgps$GPS_Init$14-Sgps$GPS_Init$3
      00118A 03                     669 	.db	3
      00118B 06                     670 	.sleb128	6
      00118C 01                     671 	.db	1
      00118D 09                     672 	.db	9
      00118E 00 0B                  673 	.dw	Sgps$GPS_Init$19-Sgps$GPS_Init$14
      001190 03                     674 	.db	3
      001191 01                     675 	.sleb128	1
      001192 01                     676 	.db	1
      001193 09                     677 	.db	9
      001194 00 0B                  678 	.dw	Sgps$GPS_Init$24-Sgps$GPS_Init$19
      001196 03                     679 	.db	3
      001197 01                     680 	.sleb128	1
      001198 01                     681 	.db	1
      001199 09                     682 	.db	9
      00119A 00 06                  683 	.dw	Sgps$GPS_Init$27-Sgps$GPS_Init$24
      00119C 03                     684 	.db	3
      00119D 02                     685 	.sleb128	2
      00119E 01                     686 	.db	1
      00119F 09                     687 	.db	9
      0011A0 00 01                  688 	.dw	1+Sgps$GPS_Init$28-Sgps$GPS_Init$27
      0011A2 00                     689 	.db	0
      0011A3 01                     690 	.uleb128	1
      0011A4 01                     691 	.db	1
      0011A5 00                     692 	.db	0
      0011A6 05                     693 	.uleb128	5
      0011A7 02                     694 	.db	2
      0011A8 00 00 8B C9            695 	.dw	0,(Sgps$GPS_GetTime$30)
      0011AC 03                     696 	.db	3
      0011AD 33                     697 	.sleb128	51
      0011AE 01                     698 	.db	1
      0011AF 09                     699 	.db	9
      0011B0 00 02                  700 	.dw	Sgps$GPS_GetTime$34-Sgps$GPS_GetTime$30
      0011B2 03                     701 	.db	3
      0011B3 04                     702 	.sleb128	4
      0011B4 01                     703 	.db	1
      0011B5 09                     704 	.db	9
      0011B6 00 08                  705 	.dw	Sgps$GPS_GetTime$36-Sgps$GPS_GetTime$34
      0011B8 03                     706 	.db	3
      0011B9 01                     707 	.sleb128	1
      0011BA 01                     708 	.db	1
      0011BB 09                     709 	.db	9
      0011BC 00 1F                  710 	.dw	Sgps$GPS_GetTime$37-Sgps$GPS_GetTime$36
      0011BE 03                     711 	.db	3
      0011BF 7F                     712 	.sleb128	-1
      0011C0 01                     713 	.db	1
      0011C1 09                     714 	.db	9
      0011C2 00 04                  715 	.dw	Sgps$GPS_GetTime$38-Sgps$GPS_GetTime$37
      0011C4 03                     716 	.db	3
      0011C5 02                     717 	.sleb128	2
      0011C6 01                     718 	.db	1
      0011C7 09                     719 	.db	9
      0011C8 00 07                  720 	.dw	Sgps$GPS_GetTime$39-Sgps$GPS_GetTime$38
      0011CA 03                     721 	.db	3
      0011CB 01                     722 	.sleb128	1
      0011CC 01                     723 	.db	1
      0011CD 09                     724 	.db	9
      0011CE 00 18                  725 	.dw	Sgps$GPS_GetTime$40-Sgps$GPS_GetTime$39
      0011D0 03                     726 	.db	3
      0011D1 01                     727 	.sleb128	1
      0011D2 01                     728 	.db	1
      0011D3 09                     729 	.db	9
      0011D4 00 03                  730 	.dw	1+Sgps$GPS_GetTime$42-Sgps$GPS_GetTime$40
      0011D6 00                     731 	.db	0
      0011D7 01                     732 	.uleb128	1
      0011D8 01                     733 	.db	1
      0011D9 00                     734 	.db	0
      0011DA 05                     735 	.uleb128	5
      0011DB 02                     736 	.db	2
      0011DC 00 00 8C 18            737 	.dw	0,(Sgps$UART1_RX_IRQHandler$44)
      0011E0 03                     738 	.db	3
      0011E1 C3 00                  739 	.sleb128	67
      0011E3 01                     740 	.db	1
      0011E4 09                     741 	.db	9
      0011E5 00 01                  742 	.dw	Sgps$UART1_RX_IRQHandler$46-Sgps$UART1_RX_IRQHandler$44
      0011E7 03                     743 	.db	3
      0011E8 02                     744 	.sleb128	2
      0011E9 01                     745 	.db	1
      0011EA 09                     746 	.db	9
      0011EB 00 0B                  747 	.dw	Sgps$UART1_RX_IRQHandler$52-Sgps$UART1_RX_IRQHandler$46
      0011ED 03                     748 	.db	3
      0011EE 02                     749 	.sleb128	2
      0011EF 01                     750 	.db	1
      0011F0 09                     751 	.db	9
      0011F1 00 07                  752 	.dw	Sgps$UART1_RX_IRQHandler$54-Sgps$UART1_RX_IRQHandler$52
      0011F3 03                     753 	.db	3
      0011F4 02                     754 	.sleb128	2
      0011F5 01                     755 	.db	1
      0011F6 09                     756 	.db	9
      0011F7 00 0E                  757 	.dw	Sgps$UART1_RX_IRQHandler$57-Sgps$UART1_RX_IRQHandler$54
      0011F9 03                     758 	.db	3
      0011FA 01                     759 	.sleb128	1
      0011FB 01                     760 	.db	1
      0011FC 09                     761 	.db	9
      0011FD 00 06                  762 	.dw	Sgps$UART1_RX_IRQHandler$59-Sgps$UART1_RX_IRQHandler$57
      0011FF 03                     763 	.db	3
      001200 03                     764 	.sleb128	3
      001201 01                     765 	.db	1
      001202 09                     766 	.db	9
      001203 00 06                  767 	.dw	Sgps$UART1_RX_IRQHandler$61-Sgps$UART1_RX_IRQHandler$59
      001205 03                     768 	.db	3
      001206 02                     769 	.sleb128	2
      001207 01                     770 	.db	1
      001208 09                     771 	.db	9
      001209 00 0B                  772 	.dw	Sgps$UART1_RX_IRQHandler$67-Sgps$UART1_RX_IRQHandler$61
      00120B 03                     773 	.db	3
      00120C 02                     774 	.sleb128	2
      00120D 01                     775 	.db	1
      00120E 09                     776 	.db	9
      00120F 00 03                  777 	.dw	Sgps$UART1_RX_IRQHandler$68-Sgps$UART1_RX_IRQHandler$67
      001211 03                     778 	.db	3
      001212 01                     779 	.sleb128	1
      001213 01                     780 	.db	1
      001214 09                     781 	.db	9
      001215 00 04                  782 	.dw	Sgps$UART1_RX_IRQHandler$69-Sgps$UART1_RX_IRQHandler$68
      001217 03                     783 	.db	3
      001218 01                     784 	.sleb128	1
      001219 01                     785 	.db	1
      00121A 09                     786 	.db	9
      00121B 00 06                  787 	.dw	Sgps$UART1_RX_IRQHandler$72-Sgps$UART1_RX_IRQHandler$69
      00121D 03                     788 	.db	3
      00121E 02                     789 	.sleb128	2
      00121F 01                     790 	.db	1
      001220 09                     791 	.db	9
      001221 00 03                  792 	.dw	Sgps$UART1_RX_IRQHandler$74-Sgps$UART1_RX_IRQHandler$72
      001223 03                     793 	.db	3
      001224 03                     794 	.sleb128	3
      001225 01                     795 	.db	1
      001226 09                     796 	.db	9
      001227 00 01                  797 	.dw	1+Sgps$UART1_RX_IRQHandler$75-Sgps$UART1_RX_IRQHandler$74
      001229 00                     798 	.db	0
      00122A 01                     799 	.uleb128	1
      00122B 01                     800 	.db	1
      00122C 00                     801 	.db	0
      00122D 05                     802 	.uleb128	5
      00122E 02                     803 	.db	2
      00122F 00 00 8C 61            804 	.dw	0,(Sgps$checksum$77)
      001233 03                     805 	.db	3
      001234 E0 00                  806 	.sleb128	96
      001236 01                     807 	.db	1
      001237 09                     808 	.db	9
      001238 00 02                  809 	.dw	Sgps$checksum$80-Sgps$checksum$77
      00123A 03                     810 	.db	3
      00123B 03                     811 	.sleb128	3
      00123C 01                     812 	.db	1
      00123D 09                     813 	.db	9
      00123E 00 60                  814 	.dw	Sgps$checksum$82-Sgps$checksum$80
      001240 03                     815 	.db	3
      001241 03                     816 	.sleb128	3
      001242 01                     817 	.db	1
      001243 09                     818 	.db	9
      001244 00 35                  819 	.dw	Sgps$checksum$88-Sgps$checksum$82
      001246 03                     820 	.db	3
      001247 01                     821 	.sleb128	1
      001248 01                     822 	.db	1
      001249 09                     823 	.db	9
      00124A 00 3C                  824 	.dw	Sgps$checksum$89-Sgps$checksum$88
      00124C 03                     825 	.db	3
      00124D 01                     826 	.sleb128	1
      00124E 01                     827 	.db	1
      00124F 09                     828 	.db	9
      001250 00 4D                  829 	.dw	Sgps$checksum$90-Sgps$checksum$89
      001252 03                     830 	.db	3
      001253 7E                     831 	.sleb128	-2
      001254 01                     832 	.db	1
      001255 09                     833 	.db	9
      001256 00 08                  834 	.dw	Sgps$checksum$91-Sgps$checksum$90
      001258 03                     835 	.db	3
      001259 04                     836 	.sleb128	4
      00125A 01                     837 	.db	1
      00125B 09                     838 	.db	9
      00125C 00 1F                  839 	.dw	Sgps$checksum$92-Sgps$checksum$91
      00125E 03                     840 	.db	3
      00125F 01                     841 	.sleb128	1
      001260 01                     842 	.db	1
      001261 09                     843 	.db	9
      001262 00 31                  844 	.dw	Sgps$checksum$94-Sgps$checksum$92
      001264 03                     845 	.db	3
      001265 01                     846 	.sleb128	1
      001266 01                     847 	.db	1
      001267 09                     848 	.db	9
      001268 00 04                  849 	.dw	Sgps$checksum$95-Sgps$checksum$94
      00126A 03                     850 	.db	3
      00126B 02                     851 	.sleb128	2
      00126C 01                     852 	.db	1
      00126D 09                     853 	.db	9
      00126E 00 01                  854 	.dw	Sgps$checksum$96-Sgps$checksum$95
      001270 03                     855 	.db	3
      001271 01                     856 	.sleb128	1
      001272 01                     857 	.db	1
      001273 09                     858 	.db	9
      001274 00 03                  859 	.dw	1+Sgps$checksum$98-Sgps$checksum$96
      001276 00                     860 	.db	0
      001277 01                     861 	.uleb128	1
      001278 01                     862 	.db	1
      001279                        863 Ldebug_line_end:
                                    864 
                                    865 	.area .debug_loc (NOLOAD)
      000FA0                        866 Ldebug_loc_start:
      000FA0 00 00 8D E0            867 	.dw	0,(Sgps$checksum$97)
      000FA4 00 00 8D E1            868 	.dw	0,(Sgps$checksum$99)
      000FA8 00 02                  869 	.dw	2
      000FAA 78                     870 	.db	120
      000FAB 01                     871 	.sleb128	1
      000FAC 00 00 8D D9            872 	.dw	0,(Sgps$checksum$93)
      000FB0 00 00 8D E0            873 	.dw	0,(Sgps$checksum$97)
      000FB4 00 02                  874 	.dw	2
      000FB6 78                     875 	.db	120
      000FB7 0F                     876 	.sleb128	15
      000FB8 00 00 8C EC            877 	.dw	0,(Sgps$checksum$87)
      000FBC 00 00 8D D9            878 	.dw	0,(Sgps$checksum$93)
      000FC0 00 02                  879 	.dw	2
      000FC2 78                     880 	.db	120
      000FC3 0F                     881 	.sleb128	15
      000FC4 00 00 8C E7            882 	.dw	0,(Sgps$checksum$86)
      000FC8 00 00 8C EC            883 	.dw	0,(Sgps$checksum$87)
      000FCC 00 02                  884 	.dw	2
      000FCE 78                     885 	.db	120
      000FCF 13                     886 	.sleb128	19
      000FD0 00 00 8C E6            887 	.dw	0,(Sgps$checksum$85)
      000FD4 00 00 8C E7            888 	.dw	0,(Sgps$checksum$86)
      000FD8 00 02                  889 	.dw	2
      000FDA 78                     890 	.db	120
      000FDB 11                     891 	.sleb128	17
      000FDC 00 00 8C E4            892 	.dw	0,(Sgps$checksum$84)
      000FE0 00 00 8C E6            893 	.dw	0,(Sgps$checksum$85)
      000FE4 00 02                  894 	.dw	2
      000FE6 78                     895 	.db	120
      000FE7 10                     896 	.sleb128	16
      000FE8 00 00 8C 63            897 	.dw	0,(Sgps$checksum$79)
      000FEC 00 00 8C E4            898 	.dw	0,(Sgps$checksum$84)
      000FF0 00 02                  899 	.dw	2
      000FF2 78                     900 	.db	120
      000FF3 0F                     901 	.sleb128	15
      000FF4 00 00 8C 61            902 	.dw	0,(Sgps$checksum$78)
      000FF8 00 00 8C 63            903 	.dw	0,(Sgps$checksum$79)
      000FFC 00 02                  904 	.dw	2
      000FFE 78                     905 	.db	120
      000FFF 01                     906 	.sleb128	1
      001000 00 00 00 00            907 	.dw	0,0
      001004 00 00 00 00            908 	.dw	0,0
      001008 00 00 8C 5D            909 	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
      00100C 00 00 8C 61            910 	.dw	0,(Sgps$UART1_RX_IRQHandler$76)
      001010 00 02                  911 	.dw	2
      001012 78                     912 	.db	120
      001013 01                     913 	.sleb128	1
      001014 00 00 8C 50            914 	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
      001018 00 00 8C 5D            915 	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
      00101C 00 02                  916 	.dw	2
      00101E 78                     917 	.db	120
      00101F 01                     918 	.sleb128	1
      001020 00 00 8C 4D            919 	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
      001024 00 00 8C 50            920 	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
      001028 00 02                  921 	.dw	2
      00102A 78                     922 	.db	120
      00102B 01                     923 	.sleb128	1
      00102C 00 00 8C 49            924 	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
      001030 00 00 8C 4D            925 	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
      001034 00 02                  926 	.dw	2
      001036 78                     927 	.db	120
      001037 03                     928 	.sleb128	3
      001038 00 00 8C 47            929 	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
      00103C 00 00 8C 49            930 	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
      001040 00 02                  931 	.dw	2
      001042 78                     932 	.db	120
      001043 02                     933 	.sleb128	2
      001044 00 00 8C 38            934 	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
      001048 00 00 8C 47            935 	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
      00104C 00 02                  936 	.dw	2
      00104E 78                     937 	.db	120
      00104F 01                     938 	.sleb128	1
      001050 00 00 8C 34            939 	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
      001054 00 00 8C 38            940 	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
      001058 00 02                  941 	.dw	2
      00105A 78                     942 	.db	120
      00105B 03                     943 	.sleb128	3
      00105C 00 00 8C 24            944 	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
      001060 00 00 8C 34            945 	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
      001064 00 02                  946 	.dw	2
      001066 78                     947 	.db	120
      001067 01                     948 	.sleb128	1
      001068 00 00 8C 21            949 	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
      00106C 00 00 8C 24            950 	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
      001070 00 02                  951 	.dw	2
      001072 78                     952 	.db	120
      001073 01                     953 	.sleb128	1
      001074 00 00 8C 1D            954 	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
      001078 00 00 8C 21            955 	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
      00107C 00 02                  956 	.dw	2
      00107E 78                     957 	.db	120
      00107F 03                     958 	.sleb128	3
      001080 00 00 8C 1B            959 	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
      001084 00 00 8C 1D            960 	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
      001088 00 02                  961 	.dw	2
      00108A 78                     962 	.db	120
      00108B 02                     963 	.sleb128	2
      00108C 00 00 8C 19            964 	.dw	0,(Sgps$UART1_RX_IRQHandler$45)
      001090 00 00 8C 1B            965 	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
      001094 00 02                  966 	.dw	2
      001096 78                     967 	.db	120
      001097 01                     968 	.sleb128	1
      001098 00 00 00 00            969 	.dw	0,0
      00109C 00 00 00 00            970 	.dw	0,0
      0010A0 00 00 8C 17            971 	.dw	0,(Sgps$GPS_GetTime$41)
      0010A4 00 00 8C 18            972 	.dw	0,(Sgps$GPS_GetTime$43)
      0010A8 00 02                  973 	.dw	2
      0010AA 78                     974 	.db	120
      0010AB 01                     975 	.sleb128	1
      0010AC 00 00 8B CB            976 	.dw	0,(Sgps$GPS_GetTime$32)
      0010B0 00 00 8C 17            977 	.dw	0,(Sgps$GPS_GetTime$41)
      0010B4 00 02                  978 	.dw	2
      0010B6 78                     979 	.db	120
      0010B7 05                     980 	.sleb128	5
      0010B8 00 00 8B C9            981 	.dw	0,(Sgps$GPS_GetTime$31)
      0010BC 00 00 8B CB            982 	.dw	0,(Sgps$GPS_GetTime$32)
      0010C0 00 02                  983 	.dw	2
      0010C2 78                     984 	.db	120
      0010C3 01                     985 	.sleb128	1
      0010C4 00 00 00 00            986 	.dw	0,0
      0010C8 00 00 00 00            987 	.dw	0,0
      0010CC 00 00 8B C8            988 	.dw	0,(Sgps$GPS_Init$26)
      0010D0 00 00 8B C9            989 	.dw	0,(Sgps$GPS_Init$29)
      0010D4 00 02                  990 	.dw	2
      0010D6 78                     991 	.db	120
      0010D7 01                     992 	.sleb128	1
      0010D8 00 00 8B C4            993 	.dw	0,(Sgps$GPS_Init$25)
      0010DC 00 00 8B C8            994 	.dw	0,(Sgps$GPS_Init$26)
      0010E0 00 02                  995 	.dw	2
      0010E2 78                     996 	.db	120
      0010E3 02                     997 	.sleb128	2
      0010E4 00 00 8B C2            998 	.dw	0,(Sgps$GPS_Init$23)
      0010E8 00 00 8B C4            999 	.dw	0,(Sgps$GPS_Init$25)
      0010EC 00 02                 1000 	.dw	2
      0010EE 78                    1001 	.db	120
      0010EF 01                    1002 	.sleb128	1
      0010F0 00 00 8B BD           1003 	.dw	0,(Sgps$GPS_Init$22)
      0010F4 00 00 8B C2           1004 	.dw	0,(Sgps$GPS_Init$23)
      0010F8 00 02                 1005 	.dw	2
      0010FA 78                    1006 	.db	120
      0010FB 04                    1007 	.sleb128	4
      0010FC 00 00 8B BB           1008 	.dw	0,(Sgps$GPS_Init$21)
      001100 00 00 8B BD           1009 	.dw	0,(Sgps$GPS_Init$22)
      001104 00 02                 1010 	.dw	2
      001106 78                    1011 	.db	120
      001107 03                    1012 	.sleb128	3
      001108 00 00 8B B9           1013 	.dw	0,(Sgps$GPS_Init$20)
      00110C 00 00 8B BB           1014 	.dw	0,(Sgps$GPS_Init$21)
      001110 00 02                 1015 	.dw	2
      001112 78                    1016 	.db	120
      001113 02                    1017 	.sleb128	2
      001114 00 00 8B B7           1018 	.dw	0,(Sgps$GPS_Init$18)
      001118 00 00 8B B9           1019 	.dw	0,(Sgps$GPS_Init$20)
      00111C 00 02                 1020 	.dw	2
      00111E 78                    1021 	.db	120
      00111F 01                    1022 	.sleb128	1
      001120 00 00 8B B2           1023 	.dw	0,(Sgps$GPS_Init$17)
      001124 00 00 8B B7           1024 	.dw	0,(Sgps$GPS_Init$18)
      001128 00 02                 1025 	.dw	2
      00112A 78                    1026 	.db	120
      00112B 04                    1027 	.sleb128	4
      00112C 00 00 8B B0           1028 	.dw	0,(Sgps$GPS_Init$16)
      001130 00 00 8B B2           1029 	.dw	0,(Sgps$GPS_Init$17)
      001134 00 02                 1030 	.dw	2
      001136 78                    1031 	.db	120
      001137 03                    1032 	.sleb128	3
      001138 00 00 8B AE           1033 	.dw	0,(Sgps$GPS_Init$15)
      00113C 00 00 8B B0           1034 	.dw	0,(Sgps$GPS_Init$16)
      001140 00 02                 1035 	.dw	2
      001142 78                    1036 	.db	120
      001143 02                    1037 	.sleb128	2
      001144 00 00 8B AC           1038 	.dw	0,(Sgps$GPS_Init$13)
      001148 00 00 8B AE           1039 	.dw	0,(Sgps$GPS_Init$15)
      00114C 00 02                 1040 	.dw	2
      00114E 78                    1041 	.db	120
      00114F 01                    1042 	.sleb128	1
      001150 00 00 8B A7           1043 	.dw	0,(Sgps$GPS_Init$12)
      001154 00 00 8B AC           1044 	.dw	0,(Sgps$GPS_Init$13)
      001158 00 02                 1045 	.dw	2
      00115A 78                    1046 	.db	120
      00115B 0A                    1047 	.sleb128	10
      00115C 00 00 8B A5           1048 	.dw	0,(Sgps$GPS_Init$11)
      001160 00 00 8B A7           1049 	.dw	0,(Sgps$GPS_Init$12)
      001164 00 02                 1050 	.dw	2
      001166 78                    1051 	.db	120
      001167 09                    1052 	.sleb128	9
      001168 00 00 8B A3           1053 	.dw	0,(Sgps$GPS_Init$10)
      00116C 00 00 8B A5           1054 	.dw	0,(Sgps$GPS_Init$11)
      001170 00 02                 1055 	.dw	2
      001172 78                    1056 	.db	120
      001173 08                    1057 	.sleb128	8
      001174 00 00 8B A1           1058 	.dw	0,(Sgps$GPS_Init$9)
      001178 00 00 8B A3           1059 	.dw	0,(Sgps$GPS_Init$10)
      00117C 00 02                 1060 	.dw	2
      00117E 78                    1061 	.db	120
      00117F 07                    1062 	.sleb128	7
      001180 00 00 8B 9F           1063 	.dw	0,(Sgps$GPS_Init$8)
      001184 00 00 8B A1           1064 	.dw	0,(Sgps$GPS_Init$9)
      001188 00 02                 1065 	.dw	2
      00118A 78                    1066 	.db	120
      00118B 06                    1067 	.sleb128	6
      00118C 00 00 8B 9D           1068 	.dw	0,(Sgps$GPS_Init$7)
      001190 00 00 8B 9F           1069 	.dw	0,(Sgps$GPS_Init$8)
      001194 00 02                 1070 	.dw	2
      001196 78                    1071 	.db	120
      001197 05                    1072 	.sleb128	5
      001198 00 00 8B 9B           1073 	.dw	0,(Sgps$GPS_Init$6)
      00119C 00 00 8B 9D           1074 	.dw	0,(Sgps$GPS_Init$7)
      0011A0 00 02                 1075 	.dw	2
      0011A2 78                    1076 	.db	120
      0011A3 04                    1077 	.sleb128	4
      0011A4 00 00 8B 99           1078 	.dw	0,(Sgps$GPS_Init$5)
      0011A8 00 00 8B 9B           1079 	.dw	0,(Sgps$GPS_Init$6)
      0011AC 00 02                 1080 	.dw	2
      0011AE 78                    1081 	.db	120
      0011AF 03                    1082 	.sleb128	3
      0011B0 00 00 8B 97           1083 	.dw	0,(Sgps$GPS_Init$4)
      0011B4 00 00 8B 99           1084 	.dw	0,(Sgps$GPS_Init$5)
      0011B8 00 02                 1085 	.dw	2
      0011BA 78                    1086 	.db	120
      0011BB 02                    1087 	.sleb128	2
      0011BC 00 00 8B 92           1088 	.dw	0,(Sgps$GPS_Init$1)
      0011C0 00 00 8B 97           1089 	.dw	0,(Sgps$GPS_Init$4)
      0011C4 00 02                 1090 	.dw	2
      0011C6 78                    1091 	.db	120
      0011C7 01                    1092 	.sleb128	1
      0011C8 00 00 00 00           1093 	.dw	0,0
      0011CC 00 00 00 00           1094 	.dw	0,0
                                   1095 
                                   1096 	.area .debug_abbrev (NOLOAD)
      00044D                       1097 Ldebug_abbrev:
      00044D 0E                    1098 	.uleb128	14
      00044E 34                    1099 	.uleb128	52
      00044F 00                    1100 	.db	0
      000450 02                    1101 	.uleb128	2
      000451 0A                    1102 	.uleb128	10
      000452 03                    1103 	.uleb128	3
      000453 08                    1104 	.uleb128	8
      000454 3F                    1105 	.uleb128	63
      000455 0C                    1106 	.uleb128	12
      000456 49                    1107 	.uleb128	73
      000457 13                    1108 	.uleb128	19
      000458 00                    1109 	.uleb128	0
      000459 00                    1110 	.uleb128	0
      00045A 0C                    1111 	.uleb128	12
      00045B 01                    1112 	.uleb128	1
      00045C 01                    1113 	.db	1
      00045D 01                    1114 	.uleb128	1
      00045E 13                    1115 	.uleb128	19
      00045F 0B                    1116 	.uleb128	11
      000460 0B                    1117 	.uleb128	11
      000461 49                    1118 	.uleb128	73
      000462 13                    1119 	.uleb128	19
      000463 00                    1120 	.uleb128	0
      000464 00                    1121 	.uleb128	0
      000465 03                    1122 	.uleb128	3
      000466 2E                    1123 	.uleb128	46
      000467 01                    1124 	.db	1
      000468 01                    1125 	.uleb128	1
      000469 13                    1126 	.uleb128	19
      00046A 03                    1127 	.uleb128	3
      00046B 08                    1128 	.uleb128	8
      00046C 11                    1129 	.uleb128	17
      00046D 01                    1130 	.uleb128	1
      00046E 12                    1131 	.uleb128	18
      00046F 01                    1132 	.uleb128	1
      000470 3F                    1133 	.uleb128	63
      000471 0C                    1134 	.uleb128	12
      000472 40                    1135 	.uleb128	64
      000473 06                    1136 	.uleb128	6
      000474 00                    1137 	.uleb128	0
      000475 00                    1138 	.uleb128	0
      000476 05                    1139 	.uleb128	5
      000477 34                    1140 	.uleb128	52
      000478 00                    1141 	.db	0
      000479 02                    1142 	.uleb128	2
      00047A 0A                    1143 	.uleb128	10
      00047B 03                    1144 	.uleb128	3
      00047C 08                    1145 	.uleb128	8
      00047D 49                    1146 	.uleb128	73
      00047E 13                    1147 	.uleb128	19
      00047F 00                    1148 	.uleb128	0
      000480 00                    1149 	.uleb128	0
      000481 0B                    1150 	.uleb128	11
      000482 2E                    1151 	.uleb128	46
      000483 01                    1152 	.db	1
      000484 01                    1153 	.uleb128	1
      000485 13                    1154 	.uleb128	19
      000486 03                    1155 	.uleb128	3
      000487 08                    1156 	.uleb128	8
      000488 11                    1157 	.uleb128	17
      000489 01                    1158 	.uleb128	1
      00048A 12                    1159 	.uleb128	18
      00048B 01                    1160 	.uleb128	1
      00048C 3F                    1161 	.uleb128	63
      00048D 0C                    1162 	.uleb128	12
      00048E 40                    1163 	.uleb128	64
      00048F 06                    1164 	.uleb128	6
      000490 49                    1165 	.uleb128	73
      000491 13                    1166 	.uleb128	19
      000492 00                    1167 	.uleb128	0
      000493 00                    1168 	.uleb128	0
      000494 07                    1169 	.uleb128	7
      000495 2E                    1170 	.uleb128	46
      000496 01                    1171 	.db	1
      000497 01                    1172 	.uleb128	1
      000498 13                    1173 	.uleb128	19
      000499 03                    1174 	.uleb128	3
      00049A 08                    1175 	.uleb128	8
      00049B 11                    1176 	.uleb128	17
      00049C 01                    1177 	.uleb128	1
      00049D 12                    1178 	.uleb128	18
      00049E 01                    1179 	.uleb128	1
      00049F 36                    1180 	.uleb128	54
      0004A0 0B                    1181 	.uleb128	11
      0004A1 3F                    1182 	.uleb128	63
      0004A2 0C                    1183 	.uleb128	12
      0004A3 40                    1184 	.uleb128	64
      0004A4 06                    1185 	.uleb128	6
      0004A5 00                    1186 	.uleb128	0
      0004A6 00                    1187 	.uleb128	0
      0004A7 0A                    1188 	.uleb128	10
      0004A8 0B                    1189 	.uleb128	11
      0004A9 01                    1190 	.db	1
      0004AA 11                    1191 	.uleb128	17
      0004AB 01                    1192 	.uleb128	1
      0004AC 00                    1193 	.uleb128	0
      0004AD 00                    1194 	.uleb128	0
      0004AE 01                    1195 	.uleb128	1
      0004AF 11                    1196 	.uleb128	17
      0004B0 01                    1197 	.db	1
      0004B1 03                    1198 	.uleb128	3
      0004B2 08                    1199 	.uleb128	8
      0004B3 10                    1200 	.uleb128	16
      0004B4 06                    1201 	.uleb128	6
      0004B5 13                    1202 	.uleb128	19
      0004B6 0B                    1203 	.uleb128	11
      0004B7 25                    1204 	.uleb128	37
      0004B8 08                    1205 	.uleb128	8
      0004B9 00                    1206 	.uleb128	0
      0004BA 00                    1207 	.uleb128	0
      0004BB 04                    1208 	.uleb128	4
      0004BC 0B                    1209 	.uleb128	11
      0004BD 01                    1210 	.db	1
      0004BE 11                    1211 	.uleb128	17
      0004BF 01                    1212 	.uleb128	1
      0004C0 12                    1213 	.uleb128	18
      0004C1 01                    1214 	.uleb128	1
      0004C2 00                    1215 	.uleb128	0
      0004C3 00                    1216 	.uleb128	0
      0004C4 09                    1217 	.uleb128	9
      0004C5 0B                    1218 	.uleb128	11
      0004C6 00                    1219 	.db	0
      0004C7 11                    1220 	.uleb128	17
      0004C8 01                    1221 	.uleb128	1
      0004C9 12                    1222 	.uleb128	18
      0004CA 01                    1223 	.uleb128	1
      0004CB 00                    1224 	.uleb128	0
      0004CC 00                    1225 	.uleb128	0
      0004CD 10                    1226 	.uleb128	16
      0004CE 0D                    1227 	.uleb128	13
      0004CF 00                    1228 	.db	0
      0004D0 03                    1229 	.uleb128	3
      0004D1 08                    1230 	.uleb128	8
      0004D2 38                    1231 	.uleb128	56
      0004D3 0A                    1232 	.uleb128	10
      0004D4 49                    1233 	.uleb128	73
      0004D5 13                    1234 	.uleb128	19
      0004D6 00                    1235 	.uleb128	0
      0004D7 00                    1236 	.uleb128	0
      0004D8 02                    1237 	.uleb128	2
      0004D9 2E                    1238 	.uleb128	46
      0004DA 00                    1239 	.db	0
      0004DB 03                    1240 	.uleb128	3
      0004DC 08                    1241 	.uleb128	8
      0004DD 11                    1242 	.uleb128	17
      0004DE 01                    1243 	.uleb128	1
      0004DF 12                    1244 	.uleb128	18
      0004E0 01                    1245 	.uleb128	1
      0004E1 3F                    1246 	.uleb128	63
      0004E2 0C                    1247 	.uleb128	12
      0004E3 40                    1248 	.uleb128	64
      0004E4 06                    1249 	.uleb128	6
      0004E5 00                    1250 	.uleb128	0
      0004E6 00                    1251 	.uleb128	0
      0004E7 08                    1252 	.uleb128	8
      0004E8 0B                    1253 	.uleb128	11
      0004E9 01                    1254 	.db	1
      0004EA 01                    1255 	.uleb128	1
      0004EB 13                    1256 	.uleb128	19
      0004EC 11                    1257 	.uleb128	17
      0004ED 01                    1258 	.uleb128	1
      0004EE 12                    1259 	.uleb128	18
      0004EF 01                    1260 	.uleb128	1
      0004F0 00                    1261 	.uleb128	0
      0004F1 00                    1262 	.uleb128	0
      0004F2 0D                    1263 	.uleb128	13
      0004F3 21                    1264 	.uleb128	33
      0004F4 00                    1265 	.db	0
      0004F5 2F                    1266 	.uleb128	47
      0004F6 0B                    1267 	.uleb128	11
      0004F7 00                    1268 	.uleb128	0
      0004F8 00                    1269 	.uleb128	0
      0004F9 0F                    1270 	.uleb128	15
      0004FA 13                    1271 	.uleb128	19
      0004FB 01                    1272 	.db	1
      0004FC 01                    1273 	.uleb128	1
      0004FD 13                    1274 	.uleb128	19
      0004FE 03                    1275 	.uleb128	3
      0004FF 08                    1276 	.uleb128	8
      000500 0B                    1277 	.uleb128	11
      000501 0B                    1278 	.uleb128	11
      000502 00                    1279 	.uleb128	0
      000503 00                    1280 	.uleb128	0
      000504 06                    1281 	.uleb128	6
      000505 24                    1282 	.uleb128	36
      000506 00                    1283 	.db	0
      000507 03                    1284 	.uleb128	3
      000508 08                    1285 	.uleb128	8
      000509 0B                    1286 	.uleb128	11
      00050A 0B                    1287 	.uleb128	11
      00050B 3E                    1288 	.uleb128	62
      00050C 0B                    1289 	.uleb128	11
      00050D 00                    1290 	.uleb128	0
      00050E 00                    1291 	.uleb128	0
      00050F 00                    1292 	.uleb128	0
                                   1293 
                                   1294 	.area .debug_info (NOLOAD)
      001233 00 00 02 7E           1295 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001237                       1296 Ldebug_info_start:
      001237 00 02                 1297 	.dw	2
      001239 00 00 04 4D           1298 	.dw	0,(Ldebug_abbrev)
      00123D 04                    1299 	.db	4
      00123E 01                    1300 	.uleb128	1
      00123F 53 6F 75 72 63 65 2F  1301 	.ascii "Source/Device/Src/gps.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 67 70 73
             2E 63
      001256 00                    1302 	.db	0
      001257 00 00 10 EF           1303 	.dw	0,(Ldebug_line_start+-4)
      00125B 01                    1304 	.db	1
      00125C 53 44 43 43 20 76 65  1305 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      001275 00                    1306 	.db	0
      001276 02                    1307 	.uleb128	2
      001277 47 50 53 5F 49 6E 69  1308 	.ascii "GPS_Init"
             74
      00127F 00                    1309 	.db	0
      001280 00 00 8B 92           1310 	.dw	0,(_GPS_Init)
      001284 00 00 8B C9           1311 	.dw	0,(XG$GPS_Init$0$0+1)
      001288 01                    1312 	.db	1
      001289 00 00 10 CC           1313 	.dw	0,(Ldebug_loc_start+300)
      00128D 03                    1314 	.uleb128	3
      00128E 00 00 00 91           1315 	.dw	0,145
      001292 47 50 53 5F 47 65 74  1316 	.ascii "GPS_GetTime"
             54 69 6D 65
      00129D 00                    1317 	.db	0
      00129E 00 00 8B C9           1318 	.dw	0,(_GPS_GetTime)
      0012A2 00 00 8C 18           1319 	.dw	0,(XG$GPS_GetTime$0$0+1)
      0012A6 01                    1320 	.db	1
      0012A7 00 00 10 A0           1321 	.dw	0,(Ldebug_loc_start+256)
      0012AB 04                    1322 	.uleb128	4
      0012AC 00 00 8B CB           1323 	.dw	0,(Sgps$GPS_GetTime$33)
      0012B0 00 00 8B CB           1324 	.dw	0,(Sgps$GPS_GetTime$35)
      0012B4 05                    1325 	.uleb128	5
      0012B5 06                    1326 	.db	6
      0012B6 54                    1327 	.db	84
      0012B7 93                    1328 	.db	147
      0012B8 01                    1329 	.uleb128	1
      0012B9 53                    1330 	.db	83
      0012BA 93                    1331 	.db	147
      0012BB 01                    1332 	.uleb128	1
      0012BC 69                    1333 	.ascii "i"
      0012BD 00                    1334 	.db	0
      0012BE 00 00 00 91           1335 	.dw	0,145
      0012C2 00                    1336 	.uleb128	0
      0012C3 00                    1337 	.uleb128	0
      0012C4 06                    1338 	.uleb128	6
      0012C5 69 6E 74              1339 	.ascii "int"
      0012C8 00                    1340 	.db	0
      0012C9 02                    1341 	.db	2
      0012CA 05                    1342 	.db	5
      0012CB 07                    1343 	.uleb128	7
      0012CC 00 00 00 E6           1344 	.dw	0,230
      0012D0 55 41 52 54 31 5F 52  1345 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0012E3 00                    1346 	.db	0
      0012E4 00 00 8C 18           1347 	.dw	0,(_UART1_RX_IRQHandler)
      0012E8 00 00 8C 61           1348 	.dw	0,(XG$UART1_RX_IRQHandler$0$0+1)
      0012EC 03                    1349 	.db	3
      0012ED 01                    1350 	.db	1
      0012EE 00 00 10 08           1351 	.dw	0,(Ldebug_loc_start+104)
      0012F2 08                    1352 	.uleb128	8
      0012F3 00 00 00 D6           1353 	.dw	0,214
      0012F7 00 00 8C 24           1354 	.dw	0,(Sgps$UART1_RX_IRQHandler$51)
      0012FB 00 00 8C 43           1355 	.dw	0,(Sgps$UART1_RX_IRQHandler$60)
      0012FF 09                    1356 	.uleb128	9
      001300 00 00 8C 2B           1357 	.dw	0,(Sgps$UART1_RX_IRQHandler$53)
      001304 00 00 8C 3D           1358 	.dw	0,(Sgps$UART1_RX_IRQHandler$58)
      001308 00                    1359 	.uleb128	0
      001309 0A                    1360 	.uleb128	10
      00130A 00 00 8C 50           1361 	.dw	0,(Sgps$UART1_RX_IRQHandler$66)
      00130E 09                    1362 	.uleb128	9
      00130F 00 00 8C 5D           1363 	.dw	0,(Sgps$UART1_RX_IRQHandler$71)
      001313 00 00 8C 60           1364 	.dw	0,(Sgps$UART1_RX_IRQHandler$73)
      001317 00                    1365 	.uleb128	0
      001318 00                    1366 	.uleb128	0
      001319 06                    1367 	.uleb128	6
      00131A 75 6E 73 69 67 6E 65  1368 	.ascii "unsigned char"
             64 20 63 68 61 72
      001327 00                    1369 	.db	0
      001328 01                    1370 	.db	1
      001329 08                    1371 	.db	8
      00132A 0B                    1372 	.uleb128	11
      00132B 00 00 01 3D           1373 	.dw	0,317
      00132F 63 68 65 63 6B 73 75  1374 	.ascii "checksum"
             6D
      001337 00                    1375 	.db	0
      001338 00 00 8C 61           1376 	.dw	0,(_checksum)
      00133C 00 00 8D E1           1377 	.dw	0,(XFgps$checksum$0$0+1)
      001340 00                    1378 	.db	0
      001341 00 00 0F A0           1379 	.dw	0,(Ldebug_loc_start)
      001345 00 00 00 E6           1380 	.dw	0,230
      001349 08                    1381 	.uleb128	8
      00134A 00 00 01 2E           1382 	.dw	0,302
      00134E 00 00 8C C3           1383 	.dw	0,(Sgps$checksum$81)
      001352 00 00 8C C9           1384 	.dw	0,(Sgps$checksum$83)
      001356 05                    1385 	.uleb128	5
      001357 02                    1386 	.db	2
      001358 91                    1387 	.db	145
      001359 7E                    1388 	.sleb128	-2
      00135A 69                    1389 	.ascii "i"
      00135B 00                    1390 	.db	0
      00135C 00 00 01 4E           1391 	.dw	0,334
      001360 00                    1392 	.uleb128	0
      001361 05                    1393 	.uleb128	5
      001362 02                    1394 	.db	2
      001363 91                    1395 	.db	145
      001364 72                    1396 	.sleb128	-14
      001365 63 6B 53 75 6D        1397 	.ascii "ckSum"
      00136A 00                    1398 	.db	0
      00136B 00 00 01 3D           1399 	.dw	0,317
      00136F 00                    1400 	.uleb128	0
      001370 06                    1401 	.uleb128	6
      001371 75 6E 73 69 67 6E 65  1402 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00137E 00                    1403 	.db	0
      00137F 04                    1404 	.db	4
      001380 07                    1405 	.db	7
      001381 06                    1406 	.uleb128	6
      001382 75 6E 73 69 67 6E 65  1407 	.ascii "unsigned int"
             64 20 69 6E 74
      00138E 00                    1408 	.db	0
      00138F 02                    1409 	.db	2
      001390 07                    1410 	.db	7
      001391 0C                    1411 	.uleb128	12
      001392 00 00 01 6B           1412 	.dw	0,363
      001396 22                    1413 	.db	34
      001397 00 00 00 E6           1414 	.dw	0,230
      00139B 0D                    1415 	.uleb128	13
      00139C 21                    1416 	.db	33
      00139D 00                    1417 	.uleb128	0
      00139E 0E                    1418 	.uleb128	14
      00139F 05                    1419 	.db	5
      0013A0 03                    1420 	.db	3
      0013A1 00 00 00 2B           1421 	.dw	0,(_GPS_RxBuf)
      0013A5 47 50 53 5F 52 78 42  1422 	.ascii "GPS_RxBuf"
             75 66
      0013AE 00                    1423 	.db	0
      0013AF 01                    1424 	.db	1
      0013B0 00 00 01 5E           1425 	.dw	0,350
      0013B4 05                    1426 	.uleb128	5
      0013B5 05                    1427 	.db	5
      0013B6 03                    1428 	.db	3
      0013B7 00 00 00 4D           1429 	.dw	0,(_num)
      0013BB 6E 75 6D              1430 	.ascii "num"
      0013BE 00                    1431 	.db	0
      0013BF 00 00 00 E6           1432 	.dw	0,230
      0013C3 06                    1433 	.uleb128	6
      0013C4 66 6C 6F 61 74        1434 	.ascii "float"
      0013C9 00                    1435 	.db	0
      0013CA 04                    1436 	.db	4
      0013CB 04                    1437 	.db	4
      0013CC 0F                    1438 	.uleb128	15
      0013CD 00 00 02 5D           1439 	.dw	0,605
      0013D1 5F 5F 30 30 30 30 30  1440 	.ascii "__00000009"
             30 30 39
      0013DB 00                    1441 	.db	0
      0013DC 18                    1442 	.db	24
      0013DD 10                    1443 	.uleb128	16
      0013DE 72 75 6E 54 69 6D 65  1444 	.ascii "runTime"
      0013E5 00                    1445 	.db	0
      0013E6 02                    1446 	.db	2
      0013E7 23                    1447 	.db	35
      0013E8 00                    1448 	.uleb128	0
      0013E9 00 00 01 3D           1449 	.dw	0,317
      0013ED 10                    1450 	.uleb128	16
      0013EE 74 41 63 63           1451 	.ascii "tAcc"
      0013F2 00                    1452 	.db	0
      0013F3 02                    1453 	.db	2
      0013F4 23                    1454 	.db	35
      0013F5 04                    1455 	.uleb128	4
      0013F6 00 00 01 90           1456 	.dw	0,400
      0013FA 10                    1457 	.uleb128	16
      0013FB 6D 73 45 72 72        1458 	.ascii "msErr"
      001400 00                    1459 	.db	0
      001401 02                    1460 	.db	2
      001402 23                    1461 	.db	35
      001403 08                    1462 	.uleb128	8
      001404 00 00 01 90           1463 	.dw	0,400
      001408 10                    1464 	.uleb128	16
      001409 6D 73                 1465 	.ascii "ms"
      00140B 00                    1466 	.db	0
      00140C 02                    1467 	.db	2
      00140D 23                    1468 	.db	35
      00140E 0C                    1469 	.uleb128	12
      00140F 00 00 01 4E           1470 	.dw	0,334
      001413 10                    1471 	.uleb128	16
      001414 79 65 61 72           1472 	.ascii "year"
      001418 00                    1473 	.db	0
      001419 02                    1474 	.db	2
      00141A 23                    1475 	.db	35
      00141B 0E                    1476 	.uleb128	14
      00141C 00 00 01 4E           1477 	.dw	0,334
      001420 10                    1478 	.uleb128	16
      001421 6D 6F 6E 74 68        1479 	.ascii "month"
      001426 00                    1480 	.db	0
      001427 02                    1481 	.db	2
      001428 23                    1482 	.db	35
      001429 10                    1483 	.uleb128	16
      00142A 00 00 00 E6           1484 	.dw	0,230
      00142E 10                    1485 	.uleb128	16
      00142F 64 61 79              1486 	.ascii "day"
      001432 00                    1487 	.db	0
      001433 02                    1488 	.db	2
      001434 23                    1489 	.db	35
      001435 11                    1490 	.uleb128	17
      001436 00 00 00 E6           1491 	.dw	0,230
      00143A 10                    1492 	.uleb128	16
      00143B 68 6F 75 72           1493 	.ascii "hour"
      00143F 00                    1494 	.db	0
      001440 02                    1495 	.db	2
      001441 23                    1496 	.db	35
      001442 12                    1497 	.uleb128	18
      001443 00 00 00 E6           1498 	.dw	0,230
      001447 10                    1499 	.uleb128	16
      001448 6D 69 6E              1500 	.ascii "min"
      00144B 00                    1501 	.db	0
      00144C 02                    1502 	.db	2
      00144D 23                    1503 	.db	35
      00144E 13                    1504 	.uleb128	19
      00144F 00 00 00 E6           1505 	.dw	0,230
      001453 10                    1506 	.uleb128	16
      001454 73 65 63              1507 	.ascii "sec"
      001457 00                    1508 	.db	0
      001458 02                    1509 	.db	2
      001459 23                    1510 	.db	35
      00145A 14                    1511 	.uleb128	20
      00145B 00 00 00 E6           1512 	.dw	0,230
      00145F 10                    1513 	.uleb128	16
      001460 76 61 6C 69 64        1514 	.ascii "valid"
      001465 00                    1515 	.db	0
      001466 02                    1516 	.db	2
      001467 23                    1517 	.db	35
      001468 15                    1518 	.uleb128	21
      001469 00 00 00 E6           1519 	.dw	0,230
      00146D 10                    1520 	.uleb128	16
      00146E 74 69 6D 65 53 72 63  1521 	.ascii "timeSrc"
      001475 00                    1522 	.db	0
      001476 02                    1523 	.db	2
      001477 23                    1524 	.db	35
      001478 16                    1525 	.uleb128	22
      001479 00 00 00 E6           1526 	.dw	0,230
      00147D 10                    1527 	.uleb128	16
      00147E 64 61 74 65 56 61 6C  1528 	.ascii "dateValid"
             69 64
      001487 00                    1529 	.db	0
      001488 02                    1530 	.db	2
      001489 23                    1531 	.db	35
      00148A 17                    1532 	.uleb128	23
      00148B 00 00 00 E6           1533 	.dw	0,230
      00148F 00                    1534 	.uleb128	0
      001490 0E                    1535 	.uleb128	14
      001491 05                    1536 	.db	5
      001492 03                    1537 	.db	3
      001493 00 00 00 09           1538 	.dw	0,(_GPS_TimeDataSturcture)
      001497 47 50 53 5F 54 69 6D  1539 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      0014AC 00                    1540 	.db	0
      0014AD 01                    1541 	.db	1
      0014AE 00 00 01 99           1542 	.dw	0,409
      0014B2 00                    1543 	.uleb128	0
      0014B3 00                    1544 	.uleb128	0
      0014B4 00                    1545 	.uleb128	0
      0014B5                       1546 Ldebug_info_end:
                                   1547 
                                   1548 	.area .debug_pubnames (NOLOAD)
      0003B4 00 00 00 6B           1549 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0003B8                       1550 Ldebug_pubnames_start:
      0003B8 00 02                 1551 	.dw	2
      0003BA 00 00 12 33           1552 	.dw	0,(Ldebug_info_start-4)
      0003BE 00 00 02 82           1553 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0003C2 00 00 00 43           1554 	.dw	0,67
      0003C6 47 50 53 5F 49 6E 69  1555 	.ascii "GPS_Init"
             74
      0003CE 00                    1556 	.db	0
      0003CF 00 00 00 5A           1557 	.dw	0,90
      0003D3 47 50 53 5F 47 65 74  1558 	.ascii "GPS_GetTime"
             54 69 6D 65
      0003DE 00                    1559 	.db	0
      0003DF 00 00 00 98           1560 	.dw	0,152
      0003E3 55 41 52 54 31 5F 52  1561 	.ascii "UART1_RX_IRQHandler"
             58 5F 49 52 51 48 61
             6E 64 6C 65 72
      0003F6 00                    1562 	.db	0
      0003F7 00 00 01 6B           1563 	.dw	0,363
      0003FB 47 50 53 5F 52 78 42  1564 	.ascii "GPS_RxBuf"
             75 66
      000404 00                    1565 	.db	0
      000405 00 00 02 5D           1566 	.dw	0,605
      000409 47 50 53 5F 54 69 6D  1567 	.ascii "GPS_TimeDataSturcture"
             65 44 61 74 61 53 74
             75 72 63 74 75 72 65
      00041E 00                    1568 	.db	0
      00041F 00 00 00 00           1569 	.dw	0,0
      000423                       1570 Ldebug_pubnames_end:
                                   1571 
                                   1572 	.area .debug_frame (NOLOAD)
      000DD0 00 00                 1573 	.dw	0
      000DD2 00 0E                 1574 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000DD4                       1575 Ldebug_CIE0_start:
      000DD4 FF FF                 1576 	.dw	0xffff
      000DD6 FF FF                 1577 	.dw	0xffff
      000DD8 01                    1578 	.db	1
      000DD9 00                    1579 	.db	0
      000DDA 01                    1580 	.uleb128	1
      000DDB 7F                    1581 	.sleb128	-1
      000DDC 09                    1582 	.db	9
      000DDD 0C                    1583 	.db	12
      000DDE 08                    1584 	.uleb128	8
      000DDF 02                    1585 	.uleb128	2
      000DE0 89                    1586 	.db	137
      000DE1 01                    1587 	.uleb128	1
      000DE2                       1588 Ldebug_CIE0_end:
      000DE2 00 00 00 44           1589 	.dw	0,68
      000DE6 00 00 0D D0           1590 	.dw	0,(Ldebug_CIE0_start-4)
      000DEA 00 00 8C 61           1591 	.dw	0,(Sgps$checksum$78)	;initial loc
      000DEE 00 00 01 80           1592 	.dw	0,Sgps$checksum$99-Sgps$checksum$78
      000DF2 01                    1593 	.db	1
      000DF3 00 00 8C 61           1594 	.dw	0,(Sgps$checksum$78)
      000DF7 0E                    1595 	.db	14
      000DF8 02                    1596 	.uleb128	2
      000DF9 01                    1597 	.db	1
      000DFA 00 00 8C 63           1598 	.dw	0,(Sgps$checksum$79)
      000DFE 0E                    1599 	.db	14
      000DFF 10                    1600 	.uleb128	16
      000E00 01                    1601 	.db	1
      000E01 00 00 8C E4           1602 	.dw	0,(Sgps$checksum$84)
      000E05 0E                    1603 	.db	14
      000E06 11                    1604 	.uleb128	17
      000E07 01                    1605 	.db	1
      000E08 00 00 8C E6           1606 	.dw	0,(Sgps$checksum$85)
      000E0C 0E                    1607 	.db	14
      000E0D 12                    1608 	.uleb128	18
      000E0E 01                    1609 	.db	1
      000E0F 00 00 8C E7           1610 	.dw	0,(Sgps$checksum$86)
      000E13 0E                    1611 	.db	14
      000E14 14                    1612 	.uleb128	20
      000E15 01                    1613 	.db	1
      000E16 00 00 8C EC           1614 	.dw	0,(Sgps$checksum$87)
      000E1A 0E                    1615 	.db	14
      000E1B 10                    1616 	.uleb128	16
      000E1C 01                    1617 	.db	1
      000E1D 00 00 8D D9           1618 	.dw	0,(Sgps$checksum$93)
      000E21 0E                    1619 	.db	14
      000E22 10                    1620 	.uleb128	16
      000E23 01                    1621 	.db	1
      000E24 00 00 8D E0           1622 	.dw	0,(Sgps$checksum$97)
      000E28 0E                    1623 	.db	14
      000E29 02                    1624 	.uleb128	2
                                   1625 
                                   1626 	.area .debug_frame (NOLOAD)
      000E2A 00 00                 1627 	.dw	0
      000E2C 00 0E                 1628 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000E2E                       1629 Ldebug_CIE1_start:
      000E2E FF FF                 1630 	.dw	0xffff
      000E30 FF FF                 1631 	.dw	0xffff
      000E32 01                    1632 	.db	1
      000E33 00                    1633 	.db	0
      000E34 01                    1634 	.uleb128	1
      000E35 7F                    1635 	.sleb128	-1
      000E36 09                    1636 	.db	9
      000E37 0C                    1637 	.db	12
      000E38 08                    1638 	.uleb128	8
      000E39 09                    1639 	.uleb128	9
      000E3A 89                    1640 	.db	137
      000E3B 01                    1641 	.uleb128	1
      000E3C                       1642 Ldebug_CIE1_end:
      000E3C 00 00 00 60           1643 	.dw	0,96
      000E40 00 00 0E 2A           1644 	.dw	0,(Ldebug_CIE1_start-4)
      000E44 00 00 8C 19           1645 	.dw	0,(Sgps$UART1_RX_IRQHandler$45)	;initial loc
      000E48 00 00 00 48           1646 	.dw	0,Sgps$UART1_RX_IRQHandler$76-Sgps$UART1_RX_IRQHandler$45
      000E4C 01                    1647 	.db	1
      000E4D 00 00 8C 19           1648 	.dw	0,(Sgps$UART1_RX_IRQHandler$45)
      000E51 0E                    1649 	.db	14
      000E52 09                    1650 	.uleb128	9
      000E53 01                    1651 	.db	1
      000E54 00 00 8C 1B           1652 	.dw	0,(Sgps$UART1_RX_IRQHandler$47)
      000E58 0E                    1653 	.db	14
      000E59 0A                    1654 	.uleb128	10
      000E5A 01                    1655 	.db	1
      000E5B 00 00 8C 1D           1656 	.dw	0,(Sgps$UART1_RX_IRQHandler$48)
      000E5F 0E                    1657 	.db	14
      000E60 0B                    1658 	.uleb128	11
      000E61 01                    1659 	.db	1
      000E62 00 00 8C 21           1660 	.dw	0,(Sgps$UART1_RX_IRQHandler$49)
      000E66 0E                    1661 	.db	14
      000E67 09                    1662 	.uleb128	9
      000E68 01                    1663 	.db	1
      000E69 00 00 8C 24           1664 	.dw	0,(Sgps$UART1_RX_IRQHandler$50)
      000E6D 0E                    1665 	.db	14
      000E6E 09                    1666 	.uleb128	9
      000E6F 01                    1667 	.db	1
      000E70 00 00 8C 34           1668 	.dw	0,(Sgps$UART1_RX_IRQHandler$55)
      000E74 0E                    1669 	.db	14
      000E75 0B                    1670 	.uleb128	11
      000E76 01                    1671 	.db	1
      000E77 00 00 8C 38           1672 	.dw	0,(Sgps$UART1_RX_IRQHandler$56)
      000E7B 0E                    1673 	.db	14
      000E7C 09                    1674 	.uleb128	9
      000E7D 01                    1675 	.db	1
      000E7E 00 00 8C 47           1676 	.dw	0,(Sgps$UART1_RX_IRQHandler$62)
      000E82 0E                    1677 	.db	14
      000E83 0A                    1678 	.uleb128	10
      000E84 01                    1679 	.db	1
      000E85 00 00 8C 49           1680 	.dw	0,(Sgps$UART1_RX_IRQHandler$63)
      000E89 0E                    1681 	.db	14
      000E8A 0B                    1682 	.uleb128	11
      000E8B 01                    1683 	.db	1
      000E8C 00 00 8C 4D           1684 	.dw	0,(Sgps$UART1_RX_IRQHandler$64)
      000E90 0E                    1685 	.db	14
      000E91 09                    1686 	.uleb128	9
      000E92 01                    1687 	.db	1
      000E93 00 00 8C 50           1688 	.dw	0,(Sgps$UART1_RX_IRQHandler$65)
      000E97 0E                    1689 	.db	14
      000E98 09                    1690 	.uleb128	9
      000E99 01                    1691 	.db	1
      000E9A 00 00 8C 5D           1692 	.dw	0,(Sgps$UART1_RX_IRQHandler$70)
      000E9E 0E                    1693 	.db	14
      000E9F 09                    1694 	.uleb128	9
                                   1695 
                                   1696 	.area .debug_frame (NOLOAD)
      000EA0 00 00                 1697 	.dw	0
      000EA2 00 0E                 1698 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000EA4                       1699 Ldebug_CIE2_start:
      000EA4 FF FF                 1700 	.dw	0xffff
      000EA6 FF FF                 1701 	.dw	0xffff
      000EA8 01                    1702 	.db	1
      000EA9 00                    1703 	.db	0
      000EAA 01                    1704 	.uleb128	1
      000EAB 7F                    1705 	.sleb128	-1
      000EAC 09                    1706 	.db	9
      000EAD 0C                    1707 	.db	12
      000EAE 08                    1708 	.uleb128	8
      000EAF 02                    1709 	.uleb128	2
      000EB0 89                    1710 	.db	137
      000EB1 01                    1711 	.uleb128	1
      000EB2                       1712 Ldebug_CIE2_end:
      000EB2 00 00 00 21           1713 	.dw	0,33
      000EB6 00 00 0E A0           1714 	.dw	0,(Ldebug_CIE2_start-4)
      000EBA 00 00 8B C9           1715 	.dw	0,(Sgps$GPS_GetTime$31)	;initial loc
      000EBE 00 00 00 4F           1716 	.dw	0,Sgps$GPS_GetTime$43-Sgps$GPS_GetTime$31
      000EC2 01                    1717 	.db	1
      000EC3 00 00 8B C9           1718 	.dw	0,(Sgps$GPS_GetTime$31)
      000EC7 0E                    1719 	.db	14
      000EC8 02                    1720 	.uleb128	2
      000EC9 01                    1721 	.db	1
      000ECA 00 00 8B CB           1722 	.dw	0,(Sgps$GPS_GetTime$32)
      000ECE 0E                    1723 	.db	14
      000ECF 06                    1724 	.uleb128	6
      000ED0 01                    1725 	.db	1
      000ED1 00 00 8C 17           1726 	.dw	0,(Sgps$GPS_GetTime$41)
      000ED5 0E                    1727 	.db	14
      000ED6 02                    1728 	.uleb128	2
                                   1729 
                                   1730 	.area .debug_frame (NOLOAD)
      000ED7 00 00                 1731 	.dw	0
      000ED9 00 0E                 1732 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000EDB                       1733 Ldebug_CIE3_start:
      000EDB FF FF                 1734 	.dw	0xffff
      000EDD FF FF                 1735 	.dw	0xffff
      000EDF 01                    1736 	.db	1
      000EE0 00                    1737 	.db	0
      000EE1 01                    1738 	.uleb128	1
      000EE2 7F                    1739 	.sleb128	-1
      000EE3 09                    1740 	.db	9
      000EE4 0C                    1741 	.db	12
      000EE5 08                    1742 	.uleb128	8
      000EE6 02                    1743 	.uleb128	2
      000EE7 89                    1744 	.db	137
      000EE8 01                    1745 	.uleb128	1
      000EE9                       1746 Ldebug_CIE3_end:
      000EE9 00 00 00 9F           1747 	.dw	0,159
      000EED 00 00 0E D7           1748 	.dw	0,(Ldebug_CIE3_start-4)
      000EF1 00 00 8B 92           1749 	.dw	0,(Sgps$GPS_Init$1)	;initial loc
      000EF5 00 00 00 37           1750 	.dw	0,Sgps$GPS_Init$29-Sgps$GPS_Init$1
      000EF9 01                    1751 	.db	1
      000EFA 00 00 8B 92           1752 	.dw	0,(Sgps$GPS_Init$1)
      000EFE 0E                    1753 	.db	14
      000EFF 02                    1754 	.uleb128	2
      000F00 01                    1755 	.db	1
      000F01 00 00 8B 97           1756 	.dw	0,(Sgps$GPS_Init$4)
      000F05 0E                    1757 	.db	14
      000F06 03                    1758 	.uleb128	3
      000F07 01                    1759 	.db	1
      000F08 00 00 8B 99           1760 	.dw	0,(Sgps$GPS_Init$5)
      000F0C 0E                    1761 	.db	14
      000F0D 04                    1762 	.uleb128	4
      000F0E 01                    1763 	.db	1
      000F0F 00 00 8B 9B           1764 	.dw	0,(Sgps$GPS_Init$6)
      000F13 0E                    1765 	.db	14
      000F14 05                    1766 	.uleb128	5
      000F15 01                    1767 	.db	1
      000F16 00 00 8B 9D           1768 	.dw	0,(Sgps$GPS_Init$7)
      000F1A 0E                    1769 	.db	14
      000F1B 06                    1770 	.uleb128	6
      000F1C 01                    1771 	.db	1
      000F1D 00 00 8B 9F           1772 	.dw	0,(Sgps$GPS_Init$8)
      000F21 0E                    1773 	.db	14
      000F22 07                    1774 	.uleb128	7
      000F23 01                    1775 	.db	1
      000F24 00 00 8B A1           1776 	.dw	0,(Sgps$GPS_Init$9)
      000F28 0E                    1777 	.db	14
      000F29 08                    1778 	.uleb128	8
      000F2A 01                    1779 	.db	1
      000F2B 00 00 8B A3           1780 	.dw	0,(Sgps$GPS_Init$10)
      000F2F 0E                    1781 	.db	14
      000F30 09                    1782 	.uleb128	9
      000F31 01                    1783 	.db	1
      000F32 00 00 8B A5           1784 	.dw	0,(Sgps$GPS_Init$11)
      000F36 0E                    1785 	.db	14
      000F37 0A                    1786 	.uleb128	10
      000F38 01                    1787 	.db	1
      000F39 00 00 8B A7           1788 	.dw	0,(Sgps$GPS_Init$12)
      000F3D 0E                    1789 	.db	14
      000F3E 0B                    1790 	.uleb128	11
      000F3F 01                    1791 	.db	1
      000F40 00 00 8B AC           1792 	.dw	0,(Sgps$GPS_Init$13)
      000F44 0E                    1793 	.db	14
      000F45 02                    1794 	.uleb128	2
      000F46 01                    1795 	.db	1
      000F47 00 00 8B AE           1796 	.dw	0,(Sgps$GPS_Init$15)
      000F4B 0E                    1797 	.db	14
      000F4C 03                    1798 	.uleb128	3
      000F4D 01                    1799 	.db	1
      000F4E 00 00 8B B0           1800 	.dw	0,(Sgps$GPS_Init$16)
      000F52 0E                    1801 	.db	14
      000F53 04                    1802 	.uleb128	4
      000F54 01                    1803 	.db	1
      000F55 00 00 8B B2           1804 	.dw	0,(Sgps$GPS_Init$17)
      000F59 0E                    1805 	.db	14
      000F5A 05                    1806 	.uleb128	5
      000F5B 01                    1807 	.db	1
      000F5C 00 00 8B B7           1808 	.dw	0,(Sgps$GPS_Init$18)
      000F60 0E                    1809 	.db	14
      000F61 02                    1810 	.uleb128	2
      000F62 01                    1811 	.db	1
      000F63 00 00 8B B9           1812 	.dw	0,(Sgps$GPS_Init$20)
      000F67 0E                    1813 	.db	14
      000F68 03                    1814 	.uleb128	3
      000F69 01                    1815 	.db	1
      000F6A 00 00 8B BB           1816 	.dw	0,(Sgps$GPS_Init$21)
      000F6E 0E                    1817 	.db	14
      000F6F 04                    1818 	.uleb128	4
      000F70 01                    1819 	.db	1
      000F71 00 00 8B BD           1820 	.dw	0,(Sgps$GPS_Init$22)
      000F75 0E                    1821 	.db	14
      000F76 05                    1822 	.uleb128	5
      000F77 01                    1823 	.db	1
      000F78 00 00 8B C2           1824 	.dw	0,(Sgps$GPS_Init$23)
      000F7C 0E                    1825 	.db	14
      000F7D 02                    1826 	.uleb128	2
      000F7E 01                    1827 	.db	1
      000F7F 00 00 8B C4           1828 	.dw	0,(Sgps$GPS_Init$25)
      000F83 0E                    1829 	.db	14
      000F84 03                    1830 	.uleb128	3
      000F85 01                    1831 	.db	1
      000F86 00 00 8B C8           1832 	.dw	0,(Sgps$GPS_Init$26)
      000F8A 0E                    1833 	.db	14
      000F8B 02                    1834 	.uleb128	2
