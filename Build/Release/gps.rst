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
      000009                         26 _GPS_TimeDataSturcture::
      000009                         27 	.ds 24
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area INITIALIZED
      00002B                         32 _GPS_RxBuf::
      00002B                         33 	.ds 34
      00004D                         34 _num:
      00004D                         35 	.ds 1
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                                     65 ;	Source/Device/Src/gps.c: 32: void GPS_Init(void)
                                     66 ;	-----------------------------------------
                                     67 ;	 function GPS_Init
                                     68 ;	-----------------------------------------
      008B70                         69 _GPS_Init:
                                     70 ;	Source/Device/Src/gps.c: 36: UART1_DeInit();
      008B70 CD 82 59         [ 4]   71 	call	_UART1_DeInit
                                     72 ;	Source/Device/Src/gps.c: 37: UART1_Init((uint32_t)115200,
      008B73 4B 0C            [ 1]   73 	push	#0x0c
      008B75 4B 80            [ 1]   74 	push	#0x80
      008B77 4B 00            [ 1]   75 	push	#0x00
      008B79 4B 00            [ 1]   76 	push	#0x00
      008B7B 4B 00            [ 1]   77 	push	#0x00
      008B7D 4B 00            [ 1]   78 	push	#0x00
      008B7F 4B C2            [ 1]   79 	push	#0xc2
      008B81 4B 01            [ 1]   80 	push	#0x01
      008B83 4B 00            [ 1]   81 	push	#0x00
      008B85 CD 82 84         [ 4]   82 	call	_UART1_Init
      008B88 5B 09            [ 2]   83 	addw	sp, #9
                                     84 ;	Source/Device/Src/gps.c: 43: UART1_ITConfig(UART1_IT_RXNE_OR,ENABLE);
      008B8A 4B 01            [ 1]   85 	push	#0x01
      008B8C 4B 05            [ 1]   86 	push	#0x05
      008B8E 4B 02            [ 1]   87 	push	#0x02
      008B90 CD 84 14         [ 4]   88 	call	_UART1_ITConfig
      008B93 5B 03            [ 2]   89 	addw	sp, #3
                                     90 ;	Source/Device/Src/gps.c: 44: UART1_ITConfig(UART1_IT_IDLE,ENABLE);
      008B95 4B 01            [ 1]   91 	push	#0x01
      008B97 4B 44            [ 1]   92 	push	#0x44
      008B99 4B 02            [ 1]   93 	push	#0x02
      008B9B CD 84 14         [ 4]   94 	call	_UART1_ITConfig
      008B9E 5B 03            [ 2]   95 	addw	sp, #3
                                     96 ;	Source/Device/Src/gps.c: 45: UART1_Cmd(ENABLE);
      008BA0 4B 01            [ 1]   97 	push	#0x01
      008BA2 CD 84 01         [ 4]   98 	call	_UART1_Cmd
      008BA5 84               [ 1]   99 	pop	a
                                    100 ;	Source/Device/Src/gps.c: 47: }
      008BA6 81               [ 4]  101 	ret
                                    102 ;	Source/Device/Src/gps.c: 52: void GPS_GetTime(void)
                                    103 ;	-----------------------------------------
                                    104 ;	 function GPS_GetTime
                                    105 ;	-----------------------------------------
      008BA7                        106 _GPS_GetTime:
      008BA7 52 04            [ 2]  107 	sub	sp, #4
                                    108 ;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
      008BA9 90 5F            [ 1]  109 	clrw	y
      008BAB                        110 00103$:
      008BAB 90 A3 00 08      [ 2]  111 	cpw	y, #0x0008
      008BAF 2E 23            [ 1]  112 	jrsge	00101$
                                    113 ;	Source/Device/Src/gps.c: 57: ((uint8_t*)(&GPS_TimeDataSturcture))[i+16]=GPS_RxBuf[22+i];
      008BB1 AE 00 09         [ 2]  114 	ldw	x, #(_GPS_TimeDataSturcture + 0)
      008BB4 1F 01            [ 2]  115 	ldw	(0x01, sp), x
      008BB6 93               [ 1]  116 	ldw	x, y
      008BB7 1C 00 10         [ 2]  117 	addw	x, #0x0010
      008BBA 72 FB 01         [ 2]  118 	addw	x, (0x01, sp)
      008BBD 1F 03            [ 2]  119 	ldw	(0x03, sp), x
      008BBF 93               [ 1]  120 	ldw	x, y
      008BC0 1C 00 16         [ 2]  121 	addw	x, #22
      008BC3 9F               [ 1]  122 	ld	a, xl
      008BC4 49               [ 1]  123 	rlc	a
      008BC5 4F               [ 1]  124 	clr	a
      008BC6 A2 00            [ 1]  125 	sbc	a, #0x00
      008BC8 95               [ 1]  126 	ld	xh, a
      008BC9 1C 00 2B         [ 2]  127 	addw	x, #(_GPS_RxBuf + 0)
      008BCC F6               [ 1]  128 	ld	a, (x)
      008BCD 1E 03            [ 2]  129 	ldw	x, (0x03, sp)
      008BCF F7               [ 1]  130 	ld	(x), a
                                    131 ;	Source/Device/Src/gps.c: 56: for(int i=0;i<8;++i)
      008BD0 90 5C            [ 1]  132 	incw	y
      008BD2 20 D7            [ 2]  133 	jra	00103$
      008BD4                        134 00101$:
                                    135 ;	Source/Device/Src/gps.c: 58: GPS_TimeDataSturcture.hour+=8;
      008BD4 AE 00 1B         [ 2]  136 	ldw	x, #(_GPS_TimeDataSturcture + 0)+18
      008BD7 F6               [ 1]  137 	ld	a, (x)
      008BD8 AB 08            [ 1]  138 	add	a, #0x08
      008BDA F7               [ 1]  139 	ld	(x), a
                                    140 ;	Source/Device/Src/gps.c: 59: GPS_TimeDataSturcture.year=((uint16_t)GPS_RxBuf[21]<<8)|GPS_RxBuf[20];
      008BDB 90 AE 00 17      [ 2]  141 	ldw	y, #(_GPS_TimeDataSturcture + 0)+14
      008BDF C6 00 40         [ 1]  142 	ld	a, _GPS_RxBuf+21
      008BE2 5F               [ 1]  143 	clrw	x
      008BE3 6B 03            [ 1]  144 	ld	(0x03, sp), a
      008BE5 0F 04            [ 1]  145 	clr	(0x04, sp)
      008BE7 C6 00 3F         [ 1]  146 	ld	a, _GPS_RxBuf+20
      008BEA 5F               [ 1]  147 	clrw	x
      008BEB 1A 04            [ 1]  148 	or	a, (0x04, sp)
      008BED 02               [ 1]  149 	rlwa	x
      008BEE 1A 03            [ 1]  150 	or	a, (0x03, sp)
      008BF0 95               [ 1]  151 	ld	xh, a
      008BF1 90 FF            [ 2]  152 	ldw	(y), x
                                    153 ;	Source/Device/Src/gps.c: 60: }
      008BF3 5B 04            [ 2]  154 	addw	sp, #4
      008BF5 81               [ 4]  155 	ret
                                    156 ;	Source/Device/Src/gps.c: 68: INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
                                    157 ;	-----------------------------------------
                                    158 ;	 function UART1_RX_IRQHandler
                                    159 ;	-----------------------------------------
      008BF6                        160 _UART1_RX_IRQHandler:
      008BF6 62               [ 2]  161 	div	x, a
                                    162 ;	Source/Device/Src/gps.c: 70: if(UART1_GetITStatus(UART1_IT_RXNE)==SET)
      008BF7 4B 55            [ 1]  163 	push	#0x55
      008BF9 4B 02            [ 1]  164 	push	#0x02
      008BFB CD 84 D9         [ 4]  165 	call	_UART1_GetITStatus
      008BFE 85               [ 2]  166 	popw	x
      008BFF 4A               [ 1]  167 	dec	a
      008C00 26 21            [ 1]  168 	jrne	00109$
                                    169 ;	Source/Device/Src/gps.c: 72: if(num<34)
      008C02 C6 00 4D         [ 1]  170 	ld	a, _num+0
      008C05 A1 22            [ 1]  171 	cp	a, #0x22
      008C07 24 14            [ 1]  172 	jrnc	00102$
                                    173 ;	Source/Device/Src/gps.c: 74: GPS_RxBuf[num]=UART1_ReceiveData8();
      008C09 5F               [ 1]  174 	clrw	x
      008C0A C6 00 4D         [ 1]  175 	ld	a, _num+0
      008C0D 97               [ 1]  176 	ld	xl, a
      008C0E 1C 00 2B         [ 2]  177 	addw	x, #(_GPS_RxBuf + 0)
      008C11 89               [ 2]  178 	pushw	x
      008C12 CD 84 8C         [ 4]  179 	call	_UART1_ReceiveData8
      008C15 85               [ 2]  180 	popw	x
      008C16 F7               [ 1]  181 	ld	(x), a
                                    182 ;	Source/Device/Src/gps.c: 75: ++num;
      008C17 72 5C 00 4D      [ 1]  183 	inc	_num+0
      008C1B 20 21            [ 2]  184 	jra	00111$
      008C1D                        185 00102$:
                                    186 ;	Source/Device/Src/gps.c: 78: num=0;
      008C1D 72 5F 00 4D      [ 1]  187 	clr	_num+0
      008C21 20 1B            [ 2]  188 	jra	00111$
      008C23                        189 00109$:
                                    190 ;	Source/Device/Src/gps.c: 80: else if(UART1_GetITStatus(UART1_IT_IDLE)==SET)
      008C23 4B 44            [ 1]  191 	push	#0x44
      008C25 4B 02            [ 1]  192 	push	#0x02
      008C27 CD 84 D9         [ 4]  193 	call	_UART1_GetITStatus
      008C2A 85               [ 2]  194 	popw	x
      008C2B 4A               [ 1]  195 	dec	a
      008C2C 26 10            [ 1]  196 	jrne	00111$
                                    197 ;	Source/Device/Src/gps.c: 82: UART1_ReceiveData8();
      008C2E CD 84 8C         [ 4]  198 	call	_UART1_ReceiveData8
                                    199 ;	Source/Device/Src/gps.c: 83: num=0;
      008C31 72 5F 00 4D      [ 1]  200 	clr	_num+0
                                    201 ;	Source/Device/Src/gps.c: 84: if(checksum()==SUCCESS)
      008C35 CD 8C 3F         [ 4]  202 	call	_checksum
      008C38 4A               [ 1]  203 	dec	a
      008C39 26 03            [ 1]  204 	jrne	00111$
                                    205 ;	Source/Device/Src/gps.c: 86: GPS_GetTime();
      008C3B CD 8B A7         [ 4]  206 	call	_GPS_GetTime
      008C3E                        207 00111$:
                                    208 ;	Source/Device/Src/gps.c: 89: }
      008C3E 80               [11]  209 	iret
                                    210 ;	Source/Device/Src/gps.c: 97: static ErrorStatus checksum(void)
                                    211 ;	-----------------------------------------
                                    212 ;	 function checksum
                                    213 ;	-----------------------------------------
      008C3F                        214 _checksum:
      008C3F 52 0E            [ 2]  215 	sub	sp, #14
                                    216 ;	Source/Device/Src/gps.c: 100: uint32_t ckSum = ((uint32_t)GPS_RxBuf[5]<<24) || ((uint32_t)GPS_RxBuf[4]<<16) ||
      008C41 C6 00 30         [ 1]  217 	ld	a, _GPS_RxBuf+5
      008C44 0F 05            [ 1]  218 	clr	(0x05, sp)
      008C46 6B 0A            [ 1]  219 	ld	(0x0a, sp), a
      008C48 5F               [ 1]  220 	clrw	x
      008C49 0F 0B            [ 1]  221 	clr	(0x0b, sp)
      008C4B 90 AE 00 2D      [ 2]  222 	ldw	y, #(_GPS_RxBuf + 0)+2
      008C4F C6 00 2E         [ 1]  223 	ld	a, _GPS_RxBuf+3
      008C52 6B 0E            [ 1]  224 	ld	(0x0e, sp), a
      008C54 5D               [ 2]  225 	tnzw	x
      008C55 26 3D            [ 1]  226 	jrne	00111$
      008C57 1E 0A            [ 2]  227 	ldw	x, (0x0a, sp)
      008C59 26 39            [ 1]  228 	jrne	00111$
      008C5B C6 00 2F         [ 1]  229 	ld	a, _GPS_RxBuf+4
      008C5E 5F               [ 1]  230 	clrw	x
      008C5F 0F 0A            [ 1]  231 	clr	(0x0a, sp)
      008C61 6B 0B            [ 1]  232 	ld	(0x0b, sp), a
      008C63 9F               [ 1]  233 	ld	a, xl
      008C64 5F               [ 1]  234 	clrw	x
      008C65 5D               [ 2]  235 	tnzw	x
      008C66 26 2C            [ 1]  236 	jrne	00111$
      008C68 0D 0B            [ 1]  237 	tnz	(0x0b, sp)
      008C6A 26 28            [ 1]  238 	jrne	00111$
      008C6C 4D               [ 1]  239 	tnz	a
      008C6D 26 25            [ 1]  240 	jrne	00111$
      008C6F 90 F6            [ 1]  241 	ld	a, (y)
      008C71 5F               [ 1]  242 	clrw	x
      008C72 0F 0A            [ 1]  243 	clr	(0x0a, sp)
      008C74 0F 0D            [ 1]  244 	clr	(0x0d, sp)
      008C76 0D 0D            [ 1]  245 	tnz	(0x0d, sp)
      008C78 26 1A            [ 1]  246 	jrne	00111$
      008C7A 4D               [ 1]  247 	tnz	a
      008C7B 26 17            [ 1]  248 	jrne	00111$
      008C7D 5D               [ 2]  249 	tnzw	x
      008C7E 26 14            [ 1]  250 	jrne	00111$
      008C80 7B 0E            [ 1]  251 	ld	a, (0x0e, sp)
      008C82 0F 0C            [ 1]  252 	clr	(0x0c, sp)
      008C84 5F               [ 1]  253 	clrw	x
      008C85 1F 0A            [ 2]  254 	ldw	(0x0a, sp), x
      008C87 97               [ 1]  255 	ld	xl, a
      008C88 7B 0C            [ 1]  256 	ld	a, (0x0c, sp)
      008C8A 95               [ 1]  257 	ld	xh, a
      008C8B 5D               [ 2]  258 	tnzw	x
      008C8C 26 06            [ 1]  259 	jrne	00111$
      008C8E 1E 0A            [ 2]  260 	ldw	x, (0x0a, sp)
      008C90 26 02            [ 1]  261 	jrne	00111$
      008C92 4F               [ 1]  262 	clr	a
      008C93 C5                     263 	.byte 0xc5
      008C94                        264 00111$:
      008C94 A6 01            [ 1]  265 	ld	a, #0x01
      008C96                        266 00112$:
      008C96 5F               [ 1]  267 	clrw	x
      008C97 0F 0A            [ 1]  268 	clr	(0x0a, sp)
      008C99 6B 04            [ 1]  269 	ld	(0x04, sp), a
      008C9B 1F 02            [ 2]  270 	ldw	(0x02, sp), x
      008C9D 7B 0A            [ 1]  271 	ld	a, (0x0a, sp)
      008C9F 6B 01            [ 1]  272 	ld	(0x01, sp), a
                                    273 ;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      008CA1 7B 0E            [ 1]  274 	ld	a, (0x0e, sp)
      008CA3 6B 05            [ 1]  275 	ld	(0x05, sp), a
      008CA5 17 06            [ 2]  276 	ldw	(0x06, sp), y
      008CA7 5F               [ 1]  277 	clrw	x
      008CA8 1F 0D            [ 2]  278 	ldw	(0x0d, sp), x
      008CAA                        279 00106$:
      008CAA 1E 06            [ 2]  280 	ldw	x, (0x06, sp)
      008CAC F6               [ 1]  281 	ld	a, (x)
      008CAD 95               [ 1]  282 	ld	xh, a
      008CAE 4F               [ 1]  283 	clr	a
      008CAF 97               [ 1]  284 	ld	xl, a
      008CB0 5D               [ 2]  285 	tnzw	x
      008CB1 26 09            [ 1]  286 	jrne	00120$
      008CB3 7B 05            [ 1]  287 	ld	a, (0x05, sp)
      008CB5 5F               [ 1]  288 	clrw	x
      008CB6 97               [ 1]  289 	ld	xl, a
      008CB7 5D               [ 2]  290 	tnzw	x
      008CB8 26 02            [ 1]  291 	jrne	00120$
      008CBA 4F               [ 1]  292 	clr	a
      008CBB C5                     293 	.byte 0xc5
      008CBC                        294 00120$:
      008CBC A6 01            [ 1]  295 	ld	a, #0x01
      008CBE                        296 00121$:
      008CBE 5F               [ 1]  297 	clrw	x
      008CBF 97               [ 1]  298 	ld	xl, a
      008CC0 4B 04            [ 1]  299 	push	#0x04
      008CC2 4B 00            [ 1]  300 	push	#0x00
      008CC4 89               [ 2]  301 	pushw	x
      008CC5 CD 8E D0         [ 4]  302 	call	__divsint
      008CC8 5B 04            [ 2]  303 	addw	sp, #4
      008CCA 16 0D            [ 2]  304 	ldw	y, (0x0d, sp)
      008CCC 1F 0B            [ 2]  305 	ldw	(0x0b, sp), x
      008CCE 93               [ 1]  306 	ldw	x, y
      008CCF 13 0B            [ 2]  307 	cpw	x, (0x0b, sp)
      008CD1 25 03            [ 1]  308 	jrc	00236$
      008CD3 CC 8D 67         [ 2]  309 	jp	00101$
      008CD6                        310 00236$:
                                    311 ;	Source/Device/Src/gps.c: 104: ckSum += ((uint32_t)GPS_RxBuf[6+i*4]<<24) || ((uint32_t)GPS_RxBuf[7+i*4]<<16) ||
      008CD6 7B 0E            [ 1]  312 	ld	a, (0x0e, sp)
      008CD8 48               [ 1]  313 	sll	a
      008CD9 48               [ 1]  314 	sll	a
      008CDA 6B 08            [ 1]  315 	ld	(0x08, sp), a
      008CDC AB 06            [ 1]  316 	add	a, #0x06
      008CDE 97               [ 1]  317 	ld	xl, a
      008CDF 49               [ 1]  318 	rlc	a
      008CE0 4F               [ 1]  319 	clr	a
      008CE1 A2 00            [ 1]  320 	sbc	a, #0x00
      008CE3 95               [ 1]  321 	ld	xh, a
      008CE4 1C 00 2B         [ 2]  322 	addw	x, #(_GPS_RxBuf + 0)
      008CE7 F6               [ 1]  323 	ld	a, (x)
      008CE8 0F 09            [ 1]  324 	clr	(0x09, sp)
      008CEA 6B 09            [ 1]  325 	ld	(0x09, sp), a
      008CEC 5F               [ 1]  326 	clrw	x
      008CED 1F 0B            [ 2]  327 	ldw	(0x0b, sp), x
      008CEF 0F 0A            [ 1]  328 	clr	(0x0a, sp)
      008CF1 1E 0B            [ 2]  329 	ldw	x, (0x0b, sp)
      008CF3 26 50            [ 1]  330 	jrne	00123$
      008CF5 1E 09            [ 2]  331 	ldw	x, (0x09, sp)
      008CF7 26 4C            [ 1]  332 	jrne	00123$
      008CF9 7B 08            [ 1]  333 	ld	a, (0x08, sp)
      008CFB AB 07            [ 1]  334 	add	a, #0x07
      008CFD 97               [ 1]  335 	ld	xl, a
      008CFE 49               [ 1]  336 	rlc	a
      008CFF 4F               [ 1]  337 	clr	a
      008D00 A2 00            [ 1]  338 	sbc	a, #0x00
      008D02 95               [ 1]  339 	ld	xh, a
      008D03 1C 00 2B         [ 2]  340 	addw	x, #(_GPS_RxBuf + 0)
      008D06 F6               [ 1]  341 	ld	a, (x)
      008D07 5F               [ 1]  342 	clrw	x
      008D08 97               [ 1]  343 	ld	xl, a
      008D09 90 5F            [ 1]  344 	clrw	y
      008D0B 90 5D            [ 2]  345 	tnzw	y
      008D0D 26 36            [ 1]  346 	jrne	00123$
      008D0F 5D               [ 2]  347 	tnzw	x
      008D10 26 33            [ 1]  348 	jrne	00123$
                                    349 ;	Source/Device/Src/gps.c: 105: ((uint32_t)GPS_RxBuf[8+i*4]<< 8) || ((uint32_t)GPS_RxBuf[9+i*4]<< 0);
      008D12 7B 08            [ 1]  350 	ld	a, (0x08, sp)
      008D14 AB 08            [ 1]  351 	add	a, #0x08
      008D16 97               [ 1]  352 	ld	xl, a
      008D17 49               [ 1]  353 	rlc	a
      008D18 4F               [ 1]  354 	clr	a
      008D19 A2 00            [ 1]  355 	sbc	a, #0x00
      008D1B 95               [ 1]  356 	ld	xh, a
      008D1C 1C 00 2B         [ 2]  357 	addw	x, #(_GPS_RxBuf + 0)
      008D1F F6               [ 1]  358 	ld	a, (x)
      008D20 90 5F            [ 1]  359 	clrw	y
      008D22 95               [ 1]  360 	ld	xh, a
      008D23 4F               [ 1]  361 	clr	a
      008D24 97               [ 1]  362 	ld	xl, a
      008D25 5D               [ 2]  363 	tnzw	x
      008D26 26 1D            [ 1]  364 	jrne	00123$
      008D28 90 5D            [ 2]  365 	tnzw	y
      008D2A 26 19            [ 1]  366 	jrne	00123$
      008D2C 7B 08            [ 1]  367 	ld	a, (0x08, sp)
      008D2E AB 09            [ 1]  368 	add	a, #0x09
      008D30 97               [ 1]  369 	ld	xl, a
      008D31 49               [ 1]  370 	rlc	a
      008D32 4F               [ 1]  371 	clr	a
      008D33 A2 00            [ 1]  372 	sbc	a, #0x00
      008D35 95               [ 1]  373 	ld	xh, a
      008D36 1C 00 2B         [ 2]  374 	addw	x, #(_GPS_RxBuf + 0)
      008D39 F6               [ 1]  375 	ld	a, (x)
      008D3A 5F               [ 1]  376 	clrw	x
      008D3B 97               [ 1]  377 	ld	xl, a
      008D3C 90 5F            [ 1]  378 	clrw	y
      008D3E 5D               [ 2]  379 	tnzw	x
      008D3F 26 04            [ 1]  380 	jrne	00123$
      008D41 90 5D            [ 2]  381 	tnzw	y
      008D43 27 04            [ 1]  382 	jreq	00124$
      008D45                        383 00123$:
      008D45 A6 01            [ 1]  384 	ld	a, #0x01
      008D47 90 97            [ 1]  385 	ld	yl, a
      008D49                        386 00124$:
      008D49 4F               [ 1]  387 	clr	a
      008D4A 5F               [ 1]  388 	clrw	x
      008D4B 4D               [ 1]  389 	tnz	a
      008D4C 2A 01            [ 1]  390 	jrpl	00245$
      008D4E 5A               [ 2]  391 	decw	x
      008D4F                        392 00245$:
      008D4F 90 95            [ 1]  393 	ld	yh, a
      008D51 72 F9 03         [ 2]  394 	addw	y, (0x03, sp)
      008D54 9F               [ 1]  395 	ld	a, xl
      008D55 19 02            [ 1]  396 	adc	a, (0x02, sp)
      008D57 02               [ 1]  397 	rlwa	x
      008D58 19 01            [ 1]  398 	adc	a, (0x01, sp)
      008D5A 95               [ 1]  399 	ld	xh, a
      008D5B 17 03            [ 2]  400 	ldw	(0x03, sp), y
      008D5D 1F 01            [ 2]  401 	ldw	(0x01, sp), x
                                    402 ;	Source/Device/Src/gps.c: 103: for (uint16_t i = 0; i < (( ((uint16_t)GPS_RxBuf[2]<< 8) || ((uint16_t)GPS_RxBuf[3]<< 0) )/4); i++)
      008D5F 1E 0D            [ 2]  403 	ldw	x, (0x0d, sp)
      008D61 5C               [ 1]  404 	incw	x
      008D62 1F 0D            [ 2]  405 	ldw	(0x0d, sp), x
      008D64 CC 8C AA         [ 2]  406 	jp	00106$
      008D67                        407 00101$:
                                    408 ;	Source/Device/Src/gps.c: 107: if(ckSum == ( ((uint32_t)GPS_RxBuf[30]<<24) || ((uint32_t)GPS_RxBuf[31]<<16) ||
      008D67 C6 00 49         [ 1]  409 	ld	a, _GPS_RxBuf+30
      008D6A 0F 0B            [ 1]  410 	clr	(0x0b, sp)
      008D6C 6B 0B            [ 1]  411 	ld	(0x0b, sp), a
      008D6E 5F               [ 1]  412 	clrw	x
      008D6F 0F 0C            [ 1]  413 	clr	(0x0c, sp)
      008D71 5D               [ 2]  414 	tnzw	x
      008D72 26 34            [ 1]  415 	jrne	00132$
      008D74 1E 0B            [ 2]  416 	ldw	x, (0x0b, sp)
      008D76 26 30            [ 1]  417 	jrne	00132$
      008D78 C6 00 4A         [ 1]  418 	ld	a, _GPS_RxBuf+31
      008D7B 5F               [ 1]  419 	clrw	x
      008D7C 97               [ 1]  420 	ld	xl, a
      008D7D 90 5F            [ 1]  421 	clrw	y
      008D7F 90 5D            [ 2]  422 	tnzw	y
      008D81 26 25            [ 1]  423 	jrne	00132$
      008D83 5D               [ 2]  424 	tnzw	x
      008D84 26 22            [ 1]  425 	jrne	00132$
                                    426 ;	Source/Device/Src/gps.c: 108: ((uint32_t)GPS_RxBuf[32]<< 8) || ((uint32_t)GPS_RxBuf[33]<< 0) ))
      008D86 C6 00 4B         [ 1]  427 	ld	a, _GPS_RxBuf+32
      008D89 5F               [ 1]  428 	clrw	x
      008D8A 0F 0B            [ 1]  429 	clr	(0x0b, sp)
      008D8C 6B 0D            [ 1]  430 	ld	(0x0d, sp), a
      008D8E 5E               [ 1]  431 	swapw	x
      008D8F 0F 0E            [ 1]  432 	clr	(0x0e, sp)
      008D91 16 0D            [ 2]  433 	ldw	y, (0x0d, sp)
      008D93 26 13            [ 1]  434 	jrne	00132$
      008D95 5D               [ 2]  435 	tnzw	x
      008D96 26 10            [ 1]  436 	jrne	00132$
      008D98 C6 00 4C         [ 1]  437 	ld	a, _GPS_RxBuf+33
      008D9B 5F               [ 1]  438 	clrw	x
      008D9C 90 5F            [ 1]  439 	clrw	y
      008D9E 97               [ 1]  440 	ld	xl, a
      008D9F 5D               [ 2]  441 	tnzw	x
      008DA0 26 06            [ 1]  442 	jrne	00132$
      008DA2 90 5D            [ 2]  443 	tnzw	y
      008DA4 26 02            [ 1]  444 	jrne	00132$
      008DA6 4F               [ 1]  445 	clr	a
      008DA7 C5                     446 	.byte 0xc5
      008DA8                        447 00132$:
      008DA8 A6 01            [ 1]  448 	ld	a, #0x01
      008DAA                        449 00133$:
      008DAA 5F               [ 1]  450 	clrw	x
      008DAB 90 5F            [ 1]  451 	clrw	y
      008DAD 97               [ 1]  452 	ld	xl, a
      008DAE 13 03            [ 2]  453 	cpw	x, (0x03, sp)
      008DB0 26 08            [ 1]  454 	jrne	00103$
      008DB2 93               [ 1]  455 	ldw	x, y
      008DB3 13 01            [ 2]  456 	cpw	x, (0x01, sp)
      008DB5 26 03            [ 1]  457 	jrne	00103$
                                    458 ;	Source/Device/Src/gps.c: 109: return SUCCESS;
      008DB7 A6 01            [ 1]  459 	ld	a, #0x01
                                    460 ;	Source/Device/Src/gps.c: 111: return ERROR;
      008DB9 21                     461 	.byte 0x21
      008DBA                        462 00103$:
      008DBA 4F               [ 1]  463 	clr	a
      008DBB                        464 00108$:
                                    465 ;	Source/Device/Src/gps.c: 112: }
      008DBB 5B 0E            [ 2]  466 	addw	sp, #14
      008DBD 81               [ 4]  467 	ret
                                    468 	.area CODE
                                    469 	.area CONST
                                    470 	.area INITIALIZER
      00808A                        471 __xinit__GPS_RxBuf:
      00808A 00                     472 	.db #0x00	; 0
      00808B 00                     473 	.db 0x00
      00808C 00                     474 	.db 0x00
      00808D 00                     475 	.db 0x00
      00808E 00                     476 	.db 0x00
      00808F 00                     477 	.db 0x00
      008090 00                     478 	.db 0x00
      008091 00                     479 	.db 0x00
      008092 00                     480 	.db 0x00
      008093 00                     481 	.db 0x00
      008094 00                     482 	.db 0x00
      008095 00                     483 	.db 0x00
      008096 00                     484 	.db 0x00
      008097 00                     485 	.db 0x00
      008098 00                     486 	.db 0x00
      008099 00                     487 	.db 0x00
      00809A 00                     488 	.db 0x00
      00809B 00                     489 	.db 0x00
      00809C 00                     490 	.db 0x00
      00809D 00                     491 	.db 0x00
      00809E 00                     492 	.db 0x00
      00809F 00                     493 	.db 0x00
      0080A0 00                     494 	.db 0x00
      0080A1 00                     495 	.db 0x00
      0080A2 00                     496 	.db 0x00
      0080A3 00                     497 	.db 0x00
      0080A4 00                     498 	.db 0x00
      0080A5 00                     499 	.db 0x00
      0080A6 00                     500 	.db 0x00
      0080A7 00                     501 	.db 0x00
      0080A8 00                     502 	.db 0x00
      0080A9 00                     503 	.db 0x00
      0080AA 00                     504 	.db 0x00
      0080AB 00                     505 	.db 0x00
      0080AC                        506 __xinit__num:
      0080AC 00                     507 	.db #0x00	; 0
                                    508 	.area CABS (ABS)
