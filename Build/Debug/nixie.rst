                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module nixie
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strchr
                                     12 	.globl _SPI_GetFlagStatus
                                     13 	.globl _SPI_SendData
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_Init
                                     16 	.globl _SPI_DeInit
                                     17 	.globl _GPIO_WriteLow
                                     18 	.globl _GPIO_WriteHigh
                                     19 	.globl _GPIO_Init
                                     20 	.globl _nixie_tube4
                                     21 	.globl _nixie_tube3
                                     22 	.globl _nixie_tube2
                                     23 	.globl _nixie_tube1
                                     24 	.globl _tube_state
                                     25 	.globl _NIXIE_Init
                                     26 	.globl _NIXIE_DisplayChar
                                     27 	.globl _NIXIE_DisplayTime
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DATA
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
                           000000    36 G$tube_state$0_0$0==.
      000028                         37 _tube_state::
      000028                         38 	.ds 1
                           000001    39 G$nixie_tube1$0_0$0==.
      000029                         40 _nixie_tube1::
      000029                         41 	.ds 1
                           000002    42 G$nixie_tube2$0_0$0==.
      00002A                         43 _nixie_tube2::
      00002A                         44 	.ds 1
                           000003    45 G$nixie_tube3$0_0$0==.
      00002B                         46 _nixie_tube3::
      00002B                         47 	.ds 1
                           000004    48 G$nixie_tube4$0_0$0==.
      00002C                         49 _nixie_tube4::
      00002C                         50 	.ds 1
                                     51 ;--------------------------------------------------------
                                     52 ; absolute external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area DABS (ABS)
                                     55 
                                     56 ; default segment ordering for linker
                                     57 	.area HOME
                                     58 	.area GSINIT
                                     59 	.area GSFINAL
                                     60 	.area CONST
                                     61 	.area INITIALIZER
                                     62 	.area CODE
                                     63 
                                     64 ;--------------------------------------------------------
                                     65 ; global & static initialisations
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area GSINIT
                                     69 	.area GSFINAL
                                     70 	.area GSINIT
                                     71 ;--------------------------------------------------------
                                     72 ; Home
                                     73 ;--------------------------------------------------------
                                     74 	.area HOME
                                     75 	.area HOME
                                     76 ;--------------------------------------------------------
                                     77 ; code
                                     78 ;--------------------------------------------------------
                                     79 	.area CODE
                           000000    80 	Snixie$NIXIE_Init$0 ==.
                                     81 ;	Source/Device/Src/nixie.c: 58: void NIXIE_Init(void)
                                     82 ;	-----------------------------------------
                                     83 ;	 function NIXIE_Init
                                     84 ;	-----------------------------------------
      008C90                         85 _NIXIE_Init:
                           000000    86 	Snixie$NIXIE_Init$1 ==.
      008C90 52 03            [ 2]   87 	sub	sp, #3
                           000002    88 	Snixie$NIXIE_Init$2 ==.
                           000002    89 	Snixie$NIXIE_Init$3 ==.
                                     90 ;	Source/Device/Src/nixie.c: 60: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      008C92 4B E0            [ 1]   91 	push	#0xe0
                           000004    92 	Snixie$NIXIE_Init$4 ==.
      008C94 4B 20            [ 1]   93 	push	#0x20
                           000006    94 	Snixie$NIXIE_Init$5 ==.
      008C96 4B 0A            [ 1]   95 	push	#0x0a
                           000008    96 	Snixie$NIXIE_Init$6 ==.
      008C98 4B 50            [ 1]   97 	push	#0x50
                           00000A    98 	Snixie$NIXIE_Init$7 ==.
      008C9A CD 82 1E         [ 4]   99 	call	_GPIO_Init
      008C9D 5B 04            [ 2]  100 	addw	sp, #4
                           00000F   101 	Snixie$NIXIE_Init$8 ==.
                           00000F   102 	Snixie$NIXIE_Init$9 ==.
                                    103 ;	Source/Device/Src/nixie.c: 61: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      008C9F 4B E0            [ 1]  104 	push	#0xe0
                           000011   105 	Snixie$NIXIE_Init$10 ==.
      008CA1 4B 40            [ 1]  106 	push	#0x40
                           000013   107 	Snixie$NIXIE_Init$11 ==.
      008CA3 4B 0A            [ 1]  108 	push	#0x0a
                           000015   109 	Snixie$NIXIE_Init$12 ==.
      008CA5 4B 50            [ 1]  110 	push	#0x50
                           000017   111 	Snixie$NIXIE_Init$13 ==.
      008CA7 CD 82 1E         [ 4]  112 	call	_GPIO_Init
      008CAA 5B 04            [ 2]  113 	addw	sp, #4
                           00001C   114 	Snixie$NIXIE_Init$14 ==.
                           00001C   115 	Snixie$NIXIE_Init$15 ==.
                                    116 ;	Source/Device/Src/nixie.c: 62: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      008CAC 4B E0            [ 1]  117 	push	#0xe0
                           00001E   118 	Snixie$NIXIE_Init$16 ==.
      008CAE 4B 80            [ 1]  119 	push	#0x80
                           000020   120 	Snixie$NIXIE_Init$17 ==.
      008CB0 4B 0A            [ 1]  121 	push	#0x0a
                           000022   122 	Snixie$NIXIE_Init$18 ==.
      008CB2 4B 50            [ 1]  123 	push	#0x50
                           000024   124 	Snixie$NIXIE_Init$19 ==.
      008CB4 CD 82 1E         [ 4]  125 	call	_GPIO_Init
      008CB7 5B 04            [ 2]  126 	addw	sp, #4
                           000029   127 	Snixie$NIXIE_Init$20 ==.
                           000029   128 	Snixie$NIXIE_Init$21 ==.
                                    129 ;	Source/Device/Src/nixie.c: 63: SPI_DeInit();
      008CB9 CD 83 C9         [ 4]  130 	call	_SPI_DeInit
                           00002C   131 	Snixie$NIXIE_Init$22 ==.
                                    132 ;	Source/Device/Src/nixie.c: 65: SPI_Init(SPI_FIRSTBIT_LSB,
      008CBC 4B 07            [ 1]  133 	push	#0x07
                           00002E   134 	Snixie$NIXIE_Init$23 ==.
      008CBE 4B 02            [ 1]  135 	push	#0x02
                           000030   136 	Snixie$NIXIE_Init$24 ==.
      008CC0 4B C0            [ 1]  137 	push	#0xc0
                           000032   138 	Snixie$NIXIE_Init$25 ==.
      008CC2 4B 00            [ 1]  139 	push	#0x00
                           000034   140 	Snixie$NIXIE_Init$26 ==.
      008CC4 4B 00            [ 1]  141 	push	#0x00
                           000036   142 	Snixie$NIXIE_Init$27 ==.
      008CC6 4B 04            [ 1]  143 	push	#0x04
                           000038   144 	Snixie$NIXIE_Init$28 ==.
      008CC8 4B 00            [ 1]  145 	push	#0x00
                           00003A   146 	Snixie$NIXIE_Init$29 ==.
      008CCA 4B 80            [ 1]  147 	push	#0x80
                           00003C   148 	Snixie$NIXIE_Init$30 ==.
      008CCC CD 83 DE         [ 4]  149 	call	_SPI_Init
      008CCF 5B 08            [ 2]  150 	addw	sp, #8
                           000041   151 	Snixie$NIXIE_Init$31 ==.
                           000041   152 	Snixie$NIXIE_Init$32 ==.
                                    153 ;	Source/Device/Src/nixie.c: 73: SPI_Cmd(ENABLE);
      008CD1 4B 01            [ 1]  154 	push	#0x01
                           000043   155 	Snixie$NIXIE_Init$33 ==.
      008CD3 CD 84 1C         [ 4]  156 	call	_SPI_Cmd
      008CD6 84               [ 1]  157 	pop	a
                           000047   158 	Snixie$NIXIE_Init$34 ==.
                           000047   159 	Snixie$NIXIE_Init$35 ==.
                                    160 ;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
      008CD7 0F 01            [ 1]  161 	clr	(0x01, sp)
                           000049   162 	Snixie$NIXIE_Init$36 ==.
      008CD9                        163 00111$:
      008CD9 7B 01            [ 1]  164 	ld	a, (0x01, sp)
      008CDB A1 0A            [ 1]  165 	cp	a, #0x0a
      008CDD 25 03            [ 1]  166 	jrc	00148$
      008CDF CC 8D 1A         [ 2]  167 	jp	00113$
      008CE2                        168 00148$:
                           000052   169 	Snixie$NIXIE_Init$37 ==.
                           000052   170 	Snixie$NIXIE_Init$38 ==.
                                    171 ;	Source/Device/Src/nixie.c: 78: tube_state=ENABLE;
      008CE2 35 01 00 28      [ 1]  172 	mov	_tube_state+0, #0x01
                           000056   173 	Snixie$NIXIE_Init$39 ==.
                                    174 ;	Source/Device/Src/nixie.c: 79: NIXIE_DisplayTime(i*10+i,i*10+i);
      008CE6 7B 01            [ 1]  175 	ld	a, (0x01, sp)
      008CE8 97               [ 1]  176 	ld	xl, a
      008CE9 A6 0A            [ 1]  177 	ld	a, #0x0a
      008CEB 42               [ 4]  178 	mul	x, a
      008CEC 7B 01            [ 1]  179 	ld	a, (0x01, sp)
      008CEE 89               [ 2]  180 	pushw	x
                           00005F   181 	Snixie$NIXIE_Init$40 ==.
      008CEF 1B 02            [ 1]  182 	add	a, (2, sp)
      008CF1 85               [ 2]  183 	popw	x
                           000062   184 	Snixie$NIXIE_Init$41 ==.
      008CF2 88               [ 1]  185 	push	a
                           000063   186 	Snixie$NIXIE_Init$42 ==.
      008CF3 88               [ 1]  187 	push	a
                           000064   188 	Snixie$NIXIE_Init$43 ==.
      008CF4 CD 8D B3         [ 4]  189 	call	_NIXIE_DisplayTime
      008CF7 85               [ 2]  190 	popw	x
                           000068   191 	Snixie$NIXIE_Init$44 ==.
                           000068   192 	Snixie$NIXIE_Init$45 ==.
                           000068   193 	Snixie$NIXIE_Init$46 ==.
                                    194 ;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
      008CF8 5F               [ 1]  195 	clrw	x
      008CF9 1F 02            [ 2]  196 	ldw	(0x02, sp), x
                           00006B   197 	Snixie$NIXIE_Init$47 ==.
      008CFB                        198 00108$:
      008CFB 1E 02            [ 2]  199 	ldw	x, (0x02, sp)
      008CFD A3 00 64         [ 2]  200 	cpw	x, #0x0064
      008D00 24 13            [ 1]  201 	jrnc	00112$
                           000072   202 	Snixie$NIXIE_Init$48 ==.
                           000072   203 	Snixie$NIXIE_Init$49 ==.
                                    204 ;	Source/Device/Src/nixie.c: 82: for(uint16_t j=0;j<1000;++j);
      008D02 5F               [ 1]  205 	clrw	x
                           000073   206 	Snixie$NIXIE_Init$50 ==.
      008D03                        207 00105$:
      008D03 90 93            [ 1]  208 	ldw	y, x
      008D05 90 A3 03 E8      [ 2]  209 	cpw	y, #0x03e8
      008D09 24 03            [ 1]  210 	jrnc	00109$
      008D0B 5C               [ 1]  211 	incw	x
      008D0C 20 F5            [ 2]  212 	jra	00105$
      008D0E                        213 00109$:
                           00007E   214 	Snixie$NIXIE_Init$51 ==.
                           00007E   215 	Snixie$NIXIE_Init$52 ==.
                                    216 ;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
      008D0E 1E 02            [ 2]  217 	ldw	x, (0x02, sp)
      008D10 5C               [ 1]  218 	incw	x
      008D11 1F 02            [ 2]  219 	ldw	(0x02, sp), x
      008D13 20 E6            [ 2]  220 	jra	00108$
      008D15                        221 00112$:
                           000085   222 	Snixie$NIXIE_Init$53 ==.
                           000085   223 	Snixie$NIXIE_Init$54 ==.
                                    224 ;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
      008D15 0C 01            [ 1]  225 	inc	(0x01, sp)
      008D17 CC 8C D9         [ 2]  226 	jp	00111$
                           00008A   227 	Snixie$NIXIE_Init$55 ==.
      008D1A                        228 00113$:
                           00008A   229 	Snixie$NIXIE_Init$56 ==.
                                    230 ;	Source/Device/Src/nixie.c: 85: }
      008D1A 5B 03            [ 2]  231 	addw	sp, #3
                           00008C   232 	Snixie$NIXIE_Init$57 ==.
                           00008C   233 	Snixie$NIXIE_Init$58 ==.
                           00008C   234 	XG$NIXIE_Init$0$0 ==.
      008D1C 81               [ 4]  235 	ret
                           00008D   236 	Snixie$NIXIE_Init$59 ==.
                           00008D   237 	Snixie$NIXIE_DisplayChar$60 ==.
                                    238 ;	Source/Device/Src/nixie.c: 96: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    239 ;	-----------------------------------------
                                    240 ;	 function NIXIE_DisplayChar
                                    241 ;	-----------------------------------------
      008D1D                        242 _NIXIE_DisplayChar:
                           00008D   243 	Snixie$NIXIE_DisplayChar$61 ==.
      008D1D 52 05            [ 2]  244 	sub	sp, #5
                           00008F   245 	Snixie$NIXIE_DisplayChar$62 ==.
                           00008F   246 	Snixie$NIXIE_DisplayChar$63 ==.
                                    247 ;	Source/Device/Src/nixie.c: 98: uint16_t tmp=0;
      008D1F 5F               [ 1]  248 	clrw	x
      008D20 1F 03            [ 2]  249 	ldw	(0x03, sp), x
                           000092   250 	Snixie$NIXIE_DisplayChar$64 ==.
                                    251 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'.')!=NULL)
      008D22 4B 2E            [ 1]  252 	push	#0x2e
                           000094   253 	Snixie$NIXIE_DisplayChar$65 ==.
      008D24 4B 00            [ 1]  254 	push	#0x00
                           000096   255 	Snixie$NIXIE_DisplayChar$66 ==.
      008D26 1E 0B            [ 2]  256 	ldw	x, (0x0b, sp)
      008D28 89               [ 2]  257 	pushw	x
                           000099   258 	Snixie$NIXIE_DisplayChar$67 ==.
      008D29 CD 95 8F         [ 4]  259 	call	_strchr
      008D2C 5B 04            [ 2]  260 	addw	sp, #4
                           00009E   261 	Snixie$NIXIE_DisplayChar$68 ==.
      008D2E 5D               [ 2]  262 	tnzw	x
      008D2F 27 05            [ 1]  263 	jreq	00118$
                           0000A1   264 	Snixie$NIXIE_DisplayChar$69 ==.
                                    265 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<11;
      008D31 AE 08 00         [ 2]  266 	ldw	x, #0x0800
      008D34 1F 03            [ 2]  267 	ldw	(0x03, sp), x
                           0000A6   268 	Snixie$NIXIE_DisplayChar$70 ==.
                                    269 ;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
      008D36                        270 00118$:
      008D36 0F 05            [ 1]  271 	clr	(0x05, sp)
                           0000A8   272 	Snixie$NIXIE_DisplayChar$71 ==.
      008D38                        273 00111$:
      008D38 7B 05            [ 1]  274 	ld	a, (0x05, sp)
      008D3A A1 09            [ 1]  275 	cp	a, #0x09
      008D3C 24 2E            [ 1]  276 	jrnc	00105$
                           0000AE   277 	Snixie$NIXIE_DisplayChar$72 ==.
                           0000AE   278 	Snixie$NIXIE_DisplayChar$73 ==.
                                    279 ;	Source/Device/Src/nixie.c: 105: if(strchr(character,'1'+i)!=NULL)
      008D3E 7B 05            [ 1]  280 	ld	a, (0x05, sp)
      008D40 5F               [ 1]  281 	clrw	x
      008D41 97               [ 1]  282 	ld	xl, a
      008D42 1C 00 31         [ 2]  283 	addw	x, #0x0031
      008D45 89               [ 2]  284 	pushw	x
                           0000B6   285 	Snixie$NIXIE_DisplayChar$74 ==.
      008D46 1E 0B            [ 2]  286 	ldw	x, (0x0b, sp)
      008D48 89               [ 2]  287 	pushw	x
                           0000B9   288 	Snixie$NIXIE_DisplayChar$75 ==.
      008D49 CD 95 8F         [ 4]  289 	call	_strchr
      008D4C 5B 04            [ 2]  290 	addw	sp, #4
                           0000BE   291 	Snixie$NIXIE_DisplayChar$76 ==.
      008D4E 1F 01            [ 2]  292 	ldw	(0x01, sp), x
      008D50 27 16            [ 1]  293 	jreq	00112$
                           0000C2   294 	Snixie$NIXIE_DisplayChar$77 ==.
                                    295 ;	Source/Device/Src/nixie.c: 106: tmp|=1<<10-i;
      008D52 A6 0A            [ 1]  296 	ld	a, #0x0a
      008D54 10 05            [ 1]  297 	sub	a, (0x05, sp)
      008D56 5F               [ 1]  298 	clrw	x
      008D57 5C               [ 1]  299 	incw	x
      008D58 4D               [ 1]  300 	tnz	a
      008D59 27 04            [ 1]  301 	jreq	00150$
      008D5B                        302 00149$:
      008D5B 58               [ 2]  303 	sllw	x
      008D5C 4A               [ 1]  304 	dec	a
      008D5D 26 FC            [ 1]  305 	jrne	00149$
      008D5F                        306 00150$:
      008D5F 9F               [ 1]  307 	ld	a, xl
      008D60 1A 04            [ 1]  308 	or	a, (0x04, sp)
      008D62 02               [ 1]  309 	rlwa	x
      008D63 1A 03            [ 1]  310 	or	a, (0x03, sp)
      008D65 95               [ 1]  311 	ld	xh, a
      008D66 1F 03            [ 2]  312 	ldw	(0x03, sp), x
      008D68                        313 00112$:
                           0000D8   314 	Snixie$NIXIE_DisplayChar$78 ==.
                           0000D8   315 	Snixie$NIXIE_DisplayChar$79 ==.
                                    316 ;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
      008D68 0C 05            [ 1]  317 	inc	(0x05, sp)
      008D6A 20 CC            [ 2]  318 	jra	00111$
      008D6C                        319 00105$:
                           0000DC   320 	Snixie$NIXIE_DisplayChar$80 ==.
                           0000DC   321 	Snixie$NIXIE_DisplayChar$81 ==.
                                    322 ;	Source/Device/Src/nixie.c: 108: if(strchr(character,'0')!=NULL)
      008D6C 4B 30            [ 1]  323 	push	#0x30
                           0000DE   324 	Snixie$NIXIE_DisplayChar$82 ==.
      008D6E 4B 00            [ 1]  325 	push	#0x00
                           0000E0   326 	Snixie$NIXIE_DisplayChar$83 ==.
      008D70 1E 0B            [ 2]  327 	ldw	x, (0x0b, sp)
      008D72 89               [ 2]  328 	pushw	x
                           0000E3   329 	Snixie$NIXIE_DisplayChar$84 ==.
      008D73 CD 95 8F         [ 4]  330 	call	_strchr
      008D76 5B 04            [ 2]  331 	addw	sp, #4
                           0000E8   332 	Snixie$NIXIE_DisplayChar$85 ==.
      008D78 5D               [ 2]  333 	tnzw	x
      008D79 27 0A            [ 1]  334 	jreq	00107$
                           0000EB   335 	Snixie$NIXIE_DisplayChar$86 ==.
                                    336 ;	Source/Device/Src/nixie.c: 109: tmp|=1<<1;
      008D7B 7B 04            [ 1]  337 	ld	a, (0x04, sp)
      008D7D AA 02            [ 1]  338 	or	a, #0x02
      008D7F 97               [ 1]  339 	ld	xl, a
      008D80 7B 03            [ 1]  340 	ld	a, (0x03, sp)
      008D82 95               [ 1]  341 	ld	xh, a
      008D83 1F 03            [ 2]  342 	ldw	(0x03, sp), x
      008D85                        343 00107$:
                           0000F5   344 	Snixie$NIXIE_DisplayChar$87 ==.
                                    345 ;	Source/Device/Src/nixie.c: 110: if(tubeState==ENABLE)
      008D85 7B 0B            [ 1]  346 	ld	a, (0x0b, sp)
      008D87 4A               [ 1]  347 	dec	a
      008D88 26 07            [ 1]  348 	jrne	00109$
                           0000FA   349 	Snixie$NIXIE_DisplayChar$88 ==.
                           0000FA   350 	Snixie$NIXIE_DisplayChar$89 ==.
                                    351 ;	Source/Device/Src/nixie.c: 111: tmp|=1<<0;
      008D8A 1E 03            [ 2]  352 	ldw	x, (0x03, sp)
      008D8C 54               [ 2]  353 	srlw	x
      008D8D 99               [ 1]  354 	scf
      008D8E 59               [ 2]  355 	rlcw	x
      008D8F 1F 03            [ 2]  356 	ldw	(0x03, sp), x
      008D91                        357 00109$:
                           000101   358 	Snixie$NIXIE_DisplayChar$90 ==.
                                    359 ;	Source/Device/Src/nixie.c: 113: output=(tmp&0xAAA)>>1;
      008D91 1E 03            [ 2]  360 	ldw	x, (0x03, sp)
      008D93 9F               [ 1]  361 	ld	a, xl
      008D94 A4 AA            [ 1]  362 	and	a, #0xaa
      008D96 90 97            [ 1]  363 	ld	yl, a
      008D98 9E               [ 1]  364 	ld	a, xh
      008D99 A4 0A            [ 1]  365 	and	a, #0x0a
      008D9B 90 95            [ 1]  366 	ld	yh, a
      008D9D 90 54            [ 2]  367 	srlw	y
                           00010F   368 	Snixie$NIXIE_DisplayChar$91 ==.
                                    369 ;	Source/Device/Src/nixie.c: 114: output|=(tmp&0x555)<<1;
      008D9F 9F               [ 1]  370 	ld	a, xl
      008DA0 A4 55            [ 1]  371 	and	a, #0x55
      008DA2 02               [ 1]  372 	rlwa	x
      008DA3 A4 05            [ 1]  373 	and	a, #0x05
      008DA5 95               [ 1]  374 	ld	xh, a
      008DA6 58               [ 2]  375 	sllw	x
      008DA7 17 04            [ 2]  376 	ldw	(0x04, sp), y
      008DA9 9F               [ 1]  377 	ld	a, xl
      008DAA 1A 05            [ 1]  378 	or	a, (0x05, sp)
      008DAC 02               [ 1]  379 	rlwa	x
      008DAD 1A 04            [ 1]  380 	or	a, (0x04, sp)
                           00011F   381 	Snixie$NIXIE_DisplayChar$92 ==.
                                    382 ;	Source/Device/Src/nixie.c: 116: return output;
      008DAF 95               [ 1]  383 	ld	xh, a
                           000120   384 	Snixie$NIXIE_DisplayChar$93 ==.
                                    385 ;	Source/Device/Src/nixie.c: 117: }
      008DB0 5B 05            [ 2]  386 	addw	sp, #5
                           000122   387 	Snixie$NIXIE_DisplayChar$94 ==.
                           000122   388 	Snixie$NIXIE_DisplayChar$95 ==.
                           000122   389 	XG$NIXIE_DisplayChar$0$0 ==.
      008DB2 81               [ 4]  390 	ret
                           000123   391 	Snixie$NIXIE_DisplayChar$96 ==.
                           000123   392 	Snixie$NIXIE_DisplayTime$97 ==.
                                    393 ;	Source/Device/Src/nixie.c: 135: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    394 ;	-----------------------------------------
                                    395 ;	 function NIXIE_DisplayTime
                                    396 ;	-----------------------------------------
      008DB3                        397 _NIXIE_DisplayTime:
                           000123   398 	Snixie$NIXIE_DisplayTime$98 ==.
      008DB3 52 12            [ 2]  399 	sub	sp, #18
                           000125   400 	Snixie$NIXIE_DisplayTime$99 ==.
                           000125   401 	Snixie$NIXIE_DisplayTime$100 ==.
                                    402 ;	Source/Device/Src/nixie.c: 139: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
      008DB5 A6 30            [ 1]  403 	ld	a, #0x30
      008DB7 6B 01            [ 1]  404 	ld	(0x01, sp), a
      008DB9 96               [ 1]  405 	ldw	x, sp
      008DBA 6F 02            [ 1]  406 	clr	(2, x)
      008DBC A6 30            [ 1]  407 	ld	a, #0x30
      008DBE 6B 03            [ 1]  408 	ld	(0x03, sp), a
      008DC0 96               [ 1]  409 	ldw	x, sp
      008DC1 6F 04            [ 1]  410 	clr	(4, x)
      008DC3 A6 30            [ 1]  411 	ld	a, #0x30
      008DC5 6B 05            [ 1]  412 	ld	(0x05, sp), a
      008DC7 96               [ 1]  413 	ldw	x, sp
      008DC8 A6 2E            [ 1]  414 	ld	a, #0x2e
      008DCA E7 06            [ 1]  415 	ld	(6, x), a
      008DCC 96               [ 1]  416 	ldw	x, sp
      008DCD 6F 07            [ 1]  417 	clr	(7, x)
      008DCF A6 30            [ 1]  418 	ld	a, #0x30
      008DD1 6B 08            [ 1]  419 	ld	(0x08, sp), a
      008DD3 96               [ 1]  420 	ldw	x, sp
      008DD4 6F 09            [ 1]  421 	clr	(9, x)
                           000146   422 	Snixie$NIXIE_DisplayTime$101 ==.
                                    423 ;	Source/Device/Src/nixie.c: 141: uint8_t tmp=hour/10;
      008DD6 7B 15            [ 1]  424 	ld	a, (0x15, sp)
      008DD8 6B 12            [ 1]  425 	ld	(0x12, sp), a
      008DDA 0F 11            [ 1]  426 	clr	(0x11, sp)
      008DDC 4B 0A            [ 1]  427 	push	#0x0a
                           00014E   428 	Snixie$NIXIE_DisplayTime$102 ==.
      008DDE 4B 00            [ 1]  429 	push	#0x00
                           000150   430 	Snixie$NIXIE_DisplayTime$103 ==.
      008DE0 1E 13            [ 2]  431 	ldw	x, (0x13, sp)
      008DE2 89               [ 2]  432 	pushw	x
                           000153   433 	Snixie$NIXIE_DisplayTime$104 ==.
      008DE3 CD 96 47         [ 4]  434 	call	__divsint
      008DE6 5B 04            [ 2]  435 	addw	sp, #4
                           000158   436 	Snixie$NIXIE_DisplayTime$105 ==.
                           000158   437 	Snixie$NIXIE_DisplayTime$106 ==.
                                    438 ;	Source/Device/Src/nixie.c: 142: tube1s[0]+=tmp;
      008DE8 7B 01            [ 1]  439 	ld	a, (0x01, sp)
      008DEA 89               [ 2]  440 	pushw	x
                           00015B   441 	Snixie$NIXIE_DisplayTime$107 ==.
      008DEB 1B 02            [ 1]  442 	add	a, (2, sp)
      008DED 85               [ 2]  443 	popw	x
                           00015E   444 	Snixie$NIXIE_DisplayTime$108 ==.
      008DEE 6B 01            [ 1]  445 	ld	(0x01, sp), a
                           000160   446 	Snixie$NIXIE_DisplayTime$109 ==.
                                    447 ;	Source/Device/Src/nixie.c: 144: tmp=hour%10;
      008DF0 4B 0A            [ 1]  448 	push	#0x0a
                           000162   449 	Snixie$NIXIE_DisplayTime$110 ==.
      008DF2 4B 00            [ 1]  450 	push	#0x00
                           000164   451 	Snixie$NIXIE_DisplayTime$111 ==.
      008DF4 1E 13            [ 2]  452 	ldw	x, (0x13, sp)
      008DF6 89               [ 2]  453 	pushw	x
                           000167   454 	Snixie$NIXIE_DisplayTime$112 ==.
      008DF7 CD 96 31         [ 4]  455 	call	__modsint
      008DFA 5B 04            [ 2]  456 	addw	sp, #4
                           00016C   457 	Snixie$NIXIE_DisplayTime$113 ==.
                           00016C   458 	Snixie$NIXIE_DisplayTime$114 ==.
                                    459 ;	Source/Device/Src/nixie.c: 145: tube2s[0]+=tmp;
      008DFC 7B 03            [ 1]  460 	ld	a, (0x03, sp)
      008DFE 89               [ 2]  461 	pushw	x
                           00016F   462 	Snixie$NIXIE_DisplayTime$115 ==.
      008DFF 1B 02            [ 1]  463 	add	a, (2, sp)
      008E01 85               [ 2]  464 	popw	x
                           000172   465 	Snixie$NIXIE_DisplayTime$116 ==.
      008E02 6B 03            [ 1]  466 	ld	(0x03, sp), a
                           000174   467 	Snixie$NIXIE_DisplayTime$117 ==.
                                    468 ;	Source/Device/Src/nixie.c: 147: tmp=min/10;
      008E04 7B 16            [ 1]  469 	ld	a, (0x16, sp)
      008E06 6B 12            [ 1]  470 	ld	(0x12, sp), a
      008E08 0F 11            [ 1]  471 	clr	(0x11, sp)
      008E0A 4B 0A            [ 1]  472 	push	#0x0a
                           00017C   473 	Snixie$NIXIE_DisplayTime$118 ==.
      008E0C 4B 00            [ 1]  474 	push	#0x00
                           00017E   475 	Snixie$NIXIE_DisplayTime$119 ==.
      008E0E 1E 13            [ 2]  476 	ldw	x, (0x13, sp)
      008E10 89               [ 2]  477 	pushw	x
                           000181   478 	Snixie$NIXIE_DisplayTime$120 ==.
      008E11 CD 96 47         [ 4]  479 	call	__divsint
      008E14 5B 04            [ 2]  480 	addw	sp, #4
                           000186   481 	Snixie$NIXIE_DisplayTime$121 ==.
                           000186   482 	Snixie$NIXIE_DisplayTime$122 ==.
                                    483 ;	Source/Device/Src/nixie.c: 148: tube3s[0]+=tmp;
      008E16 7B 05            [ 1]  484 	ld	a, (0x05, sp)
      008E18 89               [ 2]  485 	pushw	x
                           000189   486 	Snixie$NIXIE_DisplayTime$123 ==.
      008E19 1B 02            [ 1]  487 	add	a, (2, sp)
      008E1B 85               [ 2]  488 	popw	x
                           00018C   489 	Snixie$NIXIE_DisplayTime$124 ==.
      008E1C 6B 05            [ 1]  490 	ld	(0x05, sp), a
                           00018E   491 	Snixie$NIXIE_DisplayTime$125 ==.
                                    492 ;	Source/Device/Src/nixie.c: 150: tmp=min%10;
      008E1E 4B 0A            [ 1]  493 	push	#0x0a
                           000190   494 	Snixie$NIXIE_DisplayTime$126 ==.
      008E20 4B 00            [ 1]  495 	push	#0x00
                           000192   496 	Snixie$NIXIE_DisplayTime$127 ==.
      008E22 1E 13            [ 2]  497 	ldw	x, (0x13, sp)
      008E24 89               [ 2]  498 	pushw	x
                           000195   499 	Snixie$NIXIE_DisplayTime$128 ==.
      008E25 CD 96 31         [ 4]  500 	call	__modsint
      008E28 5B 04            [ 2]  501 	addw	sp, #4
                           00019A   502 	Snixie$NIXIE_DisplayTime$129 ==.
                           00019A   503 	Snixie$NIXIE_DisplayTime$130 ==.
                                    504 ;	Source/Device/Src/nixie.c: 151: tube4s[0]+=tmp;
      008E2A 7B 08            [ 1]  505 	ld	a, (0x08, sp)
      008E2C 89               [ 2]  506 	pushw	x
                           00019D   507 	Snixie$NIXIE_DisplayTime$131 ==.
      008E2D 1B 02            [ 1]  508 	add	a, (2, sp)
      008E2F 85               [ 2]  509 	popw	x
                           0001A0   510 	Snixie$NIXIE_DisplayTime$132 ==.
      008E30 6B 08            [ 1]  511 	ld	(0x08, sp), a
                           0001A2   512 	Snixie$NIXIE_DisplayTime$133 ==.
                                    513 ;	Source/Device/Src/nixie.c: 153: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
      008E32 3B 00 28         [ 1]  514 	push	_tube_state+0
                           0001A5   515 	Snixie$NIXIE_DisplayTime$134 ==.
      008E35 96               [ 1]  516 	ldw	x, sp
      008E36 5C               [ 1]  517 	incw	x
      008E37 5C               [ 1]  518 	incw	x
      008E38 89               [ 2]  519 	pushw	x
                           0001A9   520 	Snixie$NIXIE_DisplayTime$135 ==.
      008E39 4B 01            [ 1]  521 	push	#0x01
                           0001AB   522 	Snixie$NIXIE_DisplayTime$136 ==.
      008E3B CD 8D 1D         [ 4]  523 	call	_NIXIE_DisplayChar
      008E3E 5B 04            [ 2]  524 	addw	sp, #4
                           0001B0   525 	Snixie$NIXIE_DisplayTime$137 ==.
      008E40 1F 0A            [ 2]  526 	ldw	(0x0a, sp), x
                           0001B2   527 	Snixie$NIXIE_DisplayTime$138 ==.
                                    528 ;	Source/Device/Src/nixie.c: 154: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
      008E42 3B 00 28         [ 1]  529 	push	_tube_state+0
                           0001B5   530 	Snixie$NIXIE_DisplayTime$139 ==.
      008E45 96               [ 1]  531 	ldw	x, sp
      008E46 1C 00 04         [ 2]  532 	addw	x, #4
      008E49 89               [ 2]  533 	pushw	x
                           0001BA   534 	Snixie$NIXIE_DisplayTime$140 ==.
      008E4A 4B 02            [ 1]  535 	push	#0x02
                           0001BC   536 	Snixie$NIXIE_DisplayTime$141 ==.
      008E4C CD 8D 1D         [ 4]  537 	call	_NIXIE_DisplayChar
      008E4F 5B 04            [ 2]  538 	addw	sp, #4
                           0001C1   539 	Snixie$NIXIE_DisplayTime$142 ==.
      008E51 1F 0C            [ 2]  540 	ldw	(0x0c, sp), x
                           0001C3   541 	Snixie$NIXIE_DisplayTime$143 ==.
                                    542 ;	Source/Device/Src/nixie.c: 155: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
      008E53 3B 00 28         [ 1]  543 	push	_tube_state+0
                           0001C6   544 	Snixie$NIXIE_DisplayTime$144 ==.
      008E56 96               [ 1]  545 	ldw	x, sp
      008E57 1C 00 06         [ 2]  546 	addw	x, #6
      008E5A 89               [ 2]  547 	pushw	x
                           0001CB   548 	Snixie$NIXIE_DisplayTime$145 ==.
      008E5B 4B 03            [ 1]  549 	push	#0x03
                           0001CD   550 	Snixie$NIXIE_DisplayTime$146 ==.
      008E5D CD 8D 1D         [ 4]  551 	call	_NIXIE_DisplayChar
      008E60 5B 04            [ 2]  552 	addw	sp, #4
                           0001D2   553 	Snixie$NIXIE_DisplayTime$147 ==.
      008E62 1F 0E            [ 2]  554 	ldw	(0x0e, sp), x
                           0001D4   555 	Snixie$NIXIE_DisplayTime$148 ==.
                                    556 ;	Source/Device/Src/nixie.c: 156: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
      008E64 3B 00 28         [ 1]  557 	push	_tube_state+0
                           0001D7   558 	Snixie$NIXIE_DisplayTime$149 ==.
      008E67 96               [ 1]  559 	ldw	x, sp
      008E68 1C 00 09         [ 2]  560 	addw	x, #9
      008E6B 89               [ 2]  561 	pushw	x
                           0001DC   562 	Snixie$NIXIE_DisplayTime$150 ==.
      008E6C 4B 04            [ 1]  563 	push	#0x04
                           0001DE   564 	Snixie$NIXIE_DisplayTime$151 ==.
      008E6E CD 8D 1D         [ 4]  565 	call	_NIXIE_DisplayChar
      008E71 5B 04            [ 2]  566 	addw	sp, #4
                           0001E3   567 	Snixie$NIXIE_DisplayTime$152 ==.
      008E73 1F 10            [ 2]  568 	ldw	(0x10, sp), x
                           0001E5   569 	Snixie$NIXIE_DisplayTime$153 ==.
                                    570 ;	Source/Device/Src/nixie.c: 160: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      008E75 4B 80            [ 1]  571 	push	#0x80
                           0001E7   572 	Snixie$NIXIE_DisplayTime$154 ==.
      008E77 4B 0A            [ 1]  573 	push	#0x0a
                           0001E9   574 	Snixie$NIXIE_DisplayTime$155 ==.
      008E79 4B 50            [ 1]  575 	push	#0x50
                           0001EB   576 	Snixie$NIXIE_DisplayTime$156 ==.
      008E7B CD 82 9A         [ 4]  577 	call	_GPIO_WriteLow
      008E7E 5B 03            [ 2]  578 	addw	sp, #3
                           0001F0   579 	Snixie$NIXIE_DisplayTime$157 ==.
                           0001F0   580 	Snixie$NIXIE_DisplayTime$158 ==.
                           0001F0   581 	Snixie$NIXIE_DisplayTime$159 ==.
                                    582 ;	Source/Device/Src/nixie.c: 165: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008E80 1E 10            [ 2]  583 	ldw	x, (0x10, sp)
      008E82 54               [ 2]  584 	srlw	x
      008E83 58               [ 2]  585 	sllw	x
      008E84 4F               [ 1]  586 	clr	a
      008E85 95               [ 1]  587 	ld	xh, a
      008E86 54               [ 2]  588 	srlw	x
                           0001F7   589 	Snixie$NIXIE_DisplayTime$160 ==.
                                    590 ;	Source/Device/Src/nixie.c: 166: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      008E87 7B 11            [ 1]  591 	ld	a, (0x11, sp)
      008E89 A4 01            [ 1]  592 	and	a, #0x01
      008E8B 4E               [ 1]  593 	swap	a
      008E8C A4 F0            [ 1]  594 	and	a, #0xf0
      008E8E 48               [ 1]  595 	sll	a
      008E8F 48               [ 1]  596 	sll	a
      008E90 48               [ 1]  597 	sll	a
                           000201   598 	Snixie$NIXIE_DisplayTime$161 ==.
                                    599 ;	Source/Device/Src/nixie.c: 167: tmp1=tmp1|tmp2;
      008E91 89               [ 2]  600 	pushw	x
                           000202   601 	Snixie$NIXIE_DisplayTime$162 ==.
      008E92 1A 02            [ 1]  602 	or	a, (2, sp)
      008E94 85               [ 2]  603 	popw	x
                           000205   604 	Snixie$NIXIE_DisplayTime$163 ==.
                           000205   605 	Snixie$NIXIE_DisplayTime$164 ==.
                                    606 ;	Source/Device/Src/nixie.c: 168: SPI_SendData(tmp1);
      008E95 88               [ 1]  607 	push	a
                           000206   608 	Snixie$NIXIE_DisplayTime$165 ==.
      008E96 CD 84 30         [ 4]  609 	call	_SPI_SendData
      008E99 84               [ 1]  610 	pop	a
                           00020A   611 	Snixie$NIXIE_DisplayTime$166 ==.
                           00020A   612 	Snixie$NIXIE_DisplayTime$167 ==.
                                    613 ;	Source/Device/Src/nixie.c: 170: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E9A                        614 00101$:
      008E9A 4B 02            [ 1]  615 	push	#0x02
                           00020C   616 	Snixie$NIXIE_DisplayTime$168 ==.
      008E9C CD 84 37         [ 4]  617 	call	_SPI_GetFlagStatus
      008E9F 5B 01            [ 2]  618 	addw	sp, #1
                           000211   619 	Snixie$NIXIE_DisplayTime$169 ==.
      008EA1 4D               [ 1]  620 	tnz	a
      008EA2 27 F6            [ 1]  621 	jreq	00101$
                           000214   622 	Snixie$NIXIE_DisplayTime$170 ==.
                                    623 ;	Source/Device/Src/nixie.c: 172: tmp1=(uint8_t)((tube3&0b1111)<<4);
      008EA4 7B 0F            [ 1]  624 	ld	a, (0x0f, sp)
      008EA6 A4 0F            [ 1]  625 	and	a, #0x0f
      008EA8 4E               [ 1]  626 	swap	a
      008EA9 A4 F0            [ 1]  627 	and	a, #0xf0
      008EAB 6B 12            [ 1]  628 	ld	(0x12, sp), a
                           00021D   629 	Snixie$NIXIE_DisplayTime$171 ==.
                                    630 ;	Source/Device/Src/nixie.c: 173: tmp2=(uint8_t)(tube4>>8);
      008EAD 7B 10            [ 1]  631 	ld	a, (0x10, sp)
      008EAF 5F               [ 1]  632 	clrw	x
                           000220   633 	Snixie$NIXIE_DisplayTime$172 ==.
                                    634 ;	Source/Device/Src/nixie.c: 174: tmp1=tmp1|tmp2;
      008EB0 1A 12            [ 1]  635 	or	a, (0x12, sp)
      008EB2 97               [ 1]  636 	ld	xl, a
                           000223   637 	Snixie$NIXIE_DisplayTime$173 ==.
                                    638 ;	Source/Device/Src/nixie.c: 175: tmp2=(tmp1&0b00000001)<<7;
      008EB3 9F               [ 1]  639 	ld	a, xl
      008EB4 A4 01            [ 1]  640 	and	a, #0x01
      008EB6 4E               [ 1]  641 	swap	a
      008EB7 A4 F0            [ 1]  642 	and	a, #0xf0
      008EB9 48               [ 1]  643 	sll	a
      008EBA 48               [ 1]  644 	sll	a
      008EBB 48               [ 1]  645 	sll	a
      008EBC 6B 12            [ 1]  646 	ld	(0x12, sp), a
                           00022E   647 	Snixie$NIXIE_DisplayTime$174 ==.
                                    648 ;	Source/Device/Src/nixie.c: 176: tmp1=(tmp1>>1)|tmp2;
      008EBE 9F               [ 1]  649 	ld	a, xl
      008EBF 44               [ 1]  650 	srl	a
      008EC0 1A 12            [ 1]  651 	or	a, (0x12, sp)
                           000232   652 	Snixie$NIXIE_DisplayTime$175 ==.
                                    653 ;	Source/Device/Src/nixie.c: 177: SPI_SendData(tmp1);
      008EC2 88               [ 1]  654 	push	a
                           000233   655 	Snixie$NIXIE_DisplayTime$176 ==.
      008EC3 CD 84 30         [ 4]  656 	call	_SPI_SendData
      008EC6 84               [ 1]  657 	pop	a
                           000237   658 	Snixie$NIXIE_DisplayTime$177 ==.
                           000237   659 	Snixie$NIXIE_DisplayTime$178 ==.
                                    660 ;	Source/Device/Src/nixie.c: 179: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EC7                        661 00104$:
      008EC7 4B 02            [ 1]  662 	push	#0x02
                           000239   663 	Snixie$NIXIE_DisplayTime$179 ==.
      008EC9 CD 84 37         [ 4]  664 	call	_SPI_GetFlagStatus
      008ECC 5B 01            [ 2]  665 	addw	sp, #1
                           00023E   666 	Snixie$NIXIE_DisplayTime$180 ==.
      008ECE 4D               [ 1]  667 	tnz	a
      008ECF 27 F6            [ 1]  668 	jreq	00104$
                           000241   669 	Snixie$NIXIE_DisplayTime$181 ==.
                                    670 ;	Source/Device/Src/nixie.c: 181: tmp1=(uint8_t)(tube3>>5);
      008ED1 1E 0E            [ 2]  671 	ldw	x, (0x0e, sp)
      008ED3 A6 20            [ 1]  672 	ld	a, #0x20
      008ED5 62               [ 2]  673 	div	x, a
      008ED6 41               [ 1]  674 	exg	a, xl
      008ED7 6B 12            [ 1]  675 	ld	(0x12, sp), a
      008ED9 41               [ 1]  676 	exg	a, xl
                           00024A   677 	Snixie$NIXIE_DisplayTime$182 ==.
                                    678 ;	Source/Device/Src/nixie.c: 182: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      008EDA 16 0E            [ 2]  679 	ldw	y, (0x0e, sp)
      008EDC 5F               [ 1]  680 	clrw	x
      008EDD 90 9F            [ 1]  681 	ld	a, yl
      008EDF A4 10            [ 1]  682 	and	a, #0x10
      008EE1 97               [ 1]  683 	ld	xl, a
      008EE2 A6 10            [ 1]  684 	ld	a, #0x10
      008EE4 62               [ 2]  685 	div	x, a
      008EE5 9F               [ 1]  686 	ld	a, xl
      008EE6 4E               [ 1]  687 	swap	a
      008EE7 A4 F0            [ 1]  688 	and	a, #0xf0
      008EE9 48               [ 1]  689 	sll	a
      008EEA 48               [ 1]  690 	sll	a
      008EEB 48               [ 1]  691 	sll	a
                           00025C   692 	Snixie$NIXIE_DisplayTime$183 ==.
                                    693 ;	Source/Device/Src/nixie.c: 183: tmp1=tmp1|tmp2;
      008EEC 1A 12            [ 1]  694 	or	a, (0x12, sp)
                           00025E   695 	Snixie$NIXIE_DisplayTime$184 ==.
                                    696 ;	Source/Device/Src/nixie.c: 184: SPI_SendData(tmp1);
      008EEE 88               [ 1]  697 	push	a
                           00025F   698 	Snixie$NIXIE_DisplayTime$185 ==.
      008EEF CD 84 30         [ 4]  699 	call	_SPI_SendData
      008EF2 84               [ 1]  700 	pop	a
                           000263   701 	Snixie$NIXIE_DisplayTime$186 ==.
                           000263   702 	Snixie$NIXIE_DisplayTime$187 ==.
                                    703 ;	Source/Device/Src/nixie.c: 186: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EF3                        704 00107$:
      008EF3 4B 02            [ 1]  705 	push	#0x02
                           000265   706 	Snixie$NIXIE_DisplayTime$188 ==.
      008EF5 CD 84 37         [ 4]  707 	call	_SPI_GetFlagStatus
      008EF8 5B 01            [ 2]  708 	addw	sp, #1
                           00026A   709 	Snixie$NIXIE_DisplayTime$189 ==.
      008EFA 4D               [ 1]  710 	tnz	a
      008EFB 27 F6            [ 1]  711 	jreq	00107$
                           00026D   712 	Snixie$NIXIE_DisplayTime$190 ==.
                                    713 ;	Source/Device/Src/nixie.c: 189: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      008EFD 1E 0C            [ 2]  714 	ldw	x, (0x0c, sp)
      008EFF 54               [ 2]  715 	srlw	x
      008F00 58               [ 2]  716 	sllw	x
      008F01 4F               [ 1]  717 	clr	a
      008F02 95               [ 1]  718 	ld	xh, a
      008F03 54               [ 2]  719 	srlw	x
                           000274   720 	Snixie$NIXIE_DisplayTime$191 ==.
                                    721 ;	Source/Device/Src/nixie.c: 190: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      008F04 7B 0D            [ 1]  722 	ld	a, (0x0d, sp)
      008F06 A4 01            [ 1]  723 	and	a, #0x01
      008F08 4E               [ 1]  724 	swap	a
      008F09 A4 F0            [ 1]  725 	and	a, #0xf0
      008F0B 48               [ 1]  726 	sll	a
      008F0C 48               [ 1]  727 	sll	a
      008F0D 48               [ 1]  728 	sll	a
                           00027E   729 	Snixie$NIXIE_DisplayTime$192 ==.
                                    730 ;	Source/Device/Src/nixie.c: 191: tmp1=tmp1|tmp2;
      008F0E 89               [ 2]  731 	pushw	x
                           00027F   732 	Snixie$NIXIE_DisplayTime$193 ==.
      008F0F 1A 02            [ 1]  733 	or	a, (2, sp)
      008F11 85               [ 2]  734 	popw	x
                           000282   735 	Snixie$NIXIE_DisplayTime$194 ==.
                           000282   736 	Snixie$NIXIE_DisplayTime$195 ==.
                                    737 ;	Source/Device/Src/nixie.c: 192: SPI_SendData(tmp1);
      008F12 88               [ 1]  738 	push	a
                           000283   739 	Snixie$NIXIE_DisplayTime$196 ==.
      008F13 CD 84 30         [ 4]  740 	call	_SPI_SendData
      008F16 84               [ 1]  741 	pop	a
                           000287   742 	Snixie$NIXIE_DisplayTime$197 ==.
                           000287   743 	Snixie$NIXIE_DisplayTime$198 ==.
                                    744 ;	Source/Device/Src/nixie.c: 194: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F17                        745 00110$:
      008F17 4B 02            [ 1]  746 	push	#0x02
                           000289   747 	Snixie$NIXIE_DisplayTime$199 ==.
      008F19 CD 84 37         [ 4]  748 	call	_SPI_GetFlagStatus
      008F1C 5B 01            [ 2]  749 	addw	sp, #1
                           00028E   750 	Snixie$NIXIE_DisplayTime$200 ==.
      008F1E 4D               [ 1]  751 	tnz	a
      008F1F 27 F6            [ 1]  752 	jreq	00110$
                           000291   753 	Snixie$NIXIE_DisplayTime$201 ==.
                                    754 ;	Source/Device/Src/nixie.c: 196: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008F21 7B 0B            [ 1]  755 	ld	a, (0x0b, sp)
      008F23 A4 0F            [ 1]  756 	and	a, #0x0f
      008F25 4E               [ 1]  757 	swap	a
      008F26 A4 F0            [ 1]  758 	and	a, #0xf0
      008F28 6B 12            [ 1]  759 	ld	(0x12, sp), a
                           00029A   760 	Snixie$NIXIE_DisplayTime$202 ==.
                                    761 ;	Source/Device/Src/nixie.c: 197: tmp2=(uint8_t)(tube2>>8);
      008F2A 7B 0C            [ 1]  762 	ld	a, (0x0c, sp)
      008F2C 5F               [ 1]  763 	clrw	x
                           00029D   764 	Snixie$NIXIE_DisplayTime$203 ==.
                                    765 ;	Source/Device/Src/nixie.c: 198: tmp1=tmp1|tmp2;
      008F2D 1A 12            [ 1]  766 	or	a, (0x12, sp)
      008F2F 97               [ 1]  767 	ld	xl, a
                           0002A0   768 	Snixie$NIXIE_DisplayTime$204 ==.
                                    769 ;	Source/Device/Src/nixie.c: 199: tmp2=(tmp1&0b00000001)<<7;
      008F30 9F               [ 1]  770 	ld	a, xl
      008F31 A4 01            [ 1]  771 	and	a, #0x01
      008F33 4E               [ 1]  772 	swap	a
      008F34 A4 F0            [ 1]  773 	and	a, #0xf0
      008F36 48               [ 1]  774 	sll	a
      008F37 48               [ 1]  775 	sll	a
      008F38 48               [ 1]  776 	sll	a
      008F39 6B 12            [ 1]  777 	ld	(0x12, sp), a
                           0002AB   778 	Snixie$NIXIE_DisplayTime$205 ==.
                                    779 ;	Source/Device/Src/nixie.c: 200: tmp1=(tmp1>>1)|tmp2;
      008F3B 9F               [ 1]  780 	ld	a, xl
      008F3C 44               [ 1]  781 	srl	a
      008F3D 1A 12            [ 1]  782 	or	a, (0x12, sp)
                           0002AF   783 	Snixie$NIXIE_DisplayTime$206 ==.
                                    784 ;	Source/Device/Src/nixie.c: 201: SPI_SendData(tmp1);
      008F3F 88               [ 1]  785 	push	a
                           0002B0   786 	Snixie$NIXIE_DisplayTime$207 ==.
      008F40 CD 84 30         [ 4]  787 	call	_SPI_SendData
      008F43 84               [ 1]  788 	pop	a
                           0002B4   789 	Snixie$NIXIE_DisplayTime$208 ==.
                           0002B4   790 	Snixie$NIXIE_DisplayTime$209 ==.
                                    791 ;	Source/Device/Src/nixie.c: 203: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F44                        792 00113$:
      008F44 4B 02            [ 1]  793 	push	#0x02
                           0002B6   794 	Snixie$NIXIE_DisplayTime$210 ==.
      008F46 CD 84 37         [ 4]  795 	call	_SPI_GetFlagStatus
      008F49 5B 01            [ 2]  796 	addw	sp, #1
                           0002BB   797 	Snixie$NIXIE_DisplayTime$211 ==.
      008F4B 4D               [ 1]  798 	tnz	a
      008F4C 27 F6            [ 1]  799 	jreq	00113$
                           0002BE   800 	Snixie$NIXIE_DisplayTime$212 ==.
                                    801 ;	Source/Device/Src/nixie.c: 205: tmp1=(uint8_t)(tube1>>5);
      008F4E 1E 0A            [ 2]  802 	ldw	x, (0x0a, sp)
      008F50 A6 20            [ 1]  803 	ld	a, #0x20
      008F52 62               [ 2]  804 	div	x, a
      008F53 41               [ 1]  805 	exg	a, xl
      008F54 6B 12            [ 1]  806 	ld	(0x12, sp), a
      008F56 41               [ 1]  807 	exg	a, xl
                           0002C7   808 	Snixie$NIXIE_DisplayTime$213 ==.
                                    809 ;	Source/Device/Src/nixie.c: 206: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008F57 16 0A            [ 2]  810 	ldw	y, (0x0a, sp)
      008F59 5F               [ 1]  811 	clrw	x
      008F5A 90 9F            [ 1]  812 	ld	a, yl
      008F5C A4 10            [ 1]  813 	and	a, #0x10
      008F5E 97               [ 1]  814 	ld	xl, a
      008F5F A6 10            [ 1]  815 	ld	a, #0x10
      008F61 62               [ 2]  816 	div	x, a
      008F62 9F               [ 1]  817 	ld	a, xl
      008F63 4E               [ 1]  818 	swap	a
      008F64 A4 F0            [ 1]  819 	and	a, #0xf0
      008F66 48               [ 1]  820 	sll	a
      008F67 48               [ 1]  821 	sll	a
      008F68 48               [ 1]  822 	sll	a
                           0002D9   823 	Snixie$NIXIE_DisplayTime$214 ==.
                                    824 ;	Source/Device/Src/nixie.c: 207: tmp1=tmp1|tmp2;
      008F69 1A 12            [ 1]  825 	or	a, (0x12, sp)
                           0002DB   826 	Snixie$NIXIE_DisplayTime$215 ==.
                                    827 ;	Source/Device/Src/nixie.c: 208: SPI_SendData(tmp1);
      008F6B 88               [ 1]  828 	push	a
                           0002DC   829 	Snixie$NIXIE_DisplayTime$216 ==.
      008F6C CD 84 30         [ 4]  830 	call	_SPI_SendData
      008F6F 84               [ 1]  831 	pop	a
                           0002E0   832 	Snixie$NIXIE_DisplayTime$217 ==.
                           0002E0   833 	Snixie$NIXIE_DisplayTime$218 ==.
                                    834 ;	Source/Device/Src/nixie.c: 210: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F70                        835 00116$:
      008F70 4B 02            [ 1]  836 	push	#0x02
                           0002E2   837 	Snixie$NIXIE_DisplayTime$219 ==.
      008F72 CD 84 37         [ 4]  838 	call	_SPI_GetFlagStatus
      008F75 5B 01            [ 2]  839 	addw	sp, #1
                           0002E7   840 	Snixie$NIXIE_DisplayTime$220 ==.
      008F77 4D               [ 1]  841 	tnz	a
      008F78 27 F6            [ 1]  842 	jreq	00116$
                           0002EA   843 	Snixie$NIXIE_DisplayTime$221 ==.
                                    844 ;	Source/Device/Src/nixie.c: 212: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008F7A 4B 80            [ 1]  845 	push	#0x80
                           0002EC   846 	Snixie$NIXIE_DisplayTime$222 ==.
      008F7C 4B 0A            [ 1]  847 	push	#0x0a
                           0002EE   848 	Snixie$NIXIE_DisplayTime$223 ==.
      008F7E 4B 50            [ 1]  849 	push	#0x50
                           0002F0   850 	Snixie$NIXIE_DisplayTime$224 ==.
      008F80 CD 82 93         [ 4]  851 	call	_GPIO_WriteHigh
      008F83 5B 03            [ 2]  852 	addw	sp, #3
                           0002F5   853 	Snixie$NIXIE_DisplayTime$225 ==.
                           0002F5   854 	Snixie$NIXIE_DisplayTime$226 ==.
                           0002F5   855 	Snixie$NIXIE_DisplayTime$227 ==.
                                    856 ;	Source/Device/Src/nixie.c: 213: }
      008F85 5B 12            [ 2]  857 	addw	sp, #18
                           0002F7   858 	Snixie$NIXIE_DisplayTime$228 ==.
                           0002F7   859 	Snixie$NIXIE_DisplayTime$229 ==.
                           0002F7   860 	XG$NIXIE_DisplayTime$0$0 ==.
      008F87 81               [ 4]  861 	ret
                           0002F8   862 	Snixie$NIXIE_DisplayTime$230 ==.
                                    863 	.area CODE
                                    864 	.area CONST
                                    865 	.area INITIALIZER
                           000000   866 Fnixie$__xinit_tube_state$0_0$0 == .
      008096                        867 __xinit__tube_state:
      008096 00                     868 	.db #0x00	; 0
                           000001   869 Fnixie$__xinit_nixie_tube1$0_0$0 == .
      008097                        870 __xinit__nixie_tube1:
      008097 00                     871 	.db #0x00	; 0
                           000002   872 Fnixie$__xinit_nixie_tube2$0_0$0 == .
      008098                        873 __xinit__nixie_tube2:
      008098 00                     874 	.db #0x00	; 0
                           000003   875 Fnixie$__xinit_nixie_tube3$0_0$0 == .
      008099                        876 __xinit__nixie_tube3:
      008099 00                     877 	.db #0x00	; 0
                           000004   878 Fnixie$__xinit_nixie_tube4$0_0$0 == .
      00809A                        879 __xinit__nixie_tube4:
      00809A 00                     880 	.db #0x00	; 0
                                    881 	.area CABS (ABS)
                                    882 
                                    883 	.area .debug_line (NOLOAD)
      0014C1 00 00 02 8C            884 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0014C5                        885 Ldebug_line_start:
      0014C5 00 02                  886 	.dw	2
      0014C7 00 00 00 7A            887 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0014CB 01                     888 	.db	1
      0014CC 01                     889 	.db	1
      0014CD FB                     890 	.db	-5
      0014CE 0F                     891 	.db	15
      0014CF 0A                     892 	.db	10
      0014D0 00                     893 	.db	0
      0014D1 01                     894 	.db	1
      0014D2 01                     895 	.db	1
      0014D3 01                     896 	.db	1
      0014D4 01                     897 	.db	1
      0014D5 00                     898 	.db	0
      0014D6 00                     899 	.db	0
      0014D7 00                     900 	.db	0
      0014D8 01                     901 	.db	1
      0014D9 43 3A 5C 50 72 6F 67   902 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      001501 00                     903 	.db	0
      001502 43 3A 5C 50 72 6F 67   904 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      001525 00                     905 	.db	0
      001526 00                     906 	.db	0
      001527 53 6F 75 72 63 65 2F   907 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      001540 00                     908 	.db	0
      001541 00                     909 	.uleb128	0
      001542 00                     910 	.uleb128	0
      001543 00                     911 	.uleb128	0
      001544 00                     912 	.db	0
      001545                        913 Ldebug_line_stmt:
      001545 00                     914 	.db	0
      001546 05                     915 	.uleb128	5
      001547 02                     916 	.db	2
      001548 00 00 8C 90            917 	.dw	0,(Snixie$NIXIE_Init$0)
      00154C 03                     918 	.db	3
      00154D 39                     919 	.sleb128	57
      00154E 01                     920 	.db	1
      00154F 09                     921 	.db	9
      001550 00 02                  922 	.dw	Snixie$NIXIE_Init$3-Snixie$NIXIE_Init$0
      001552 03                     923 	.db	3
      001553 02                     924 	.sleb128	2
      001554 01                     925 	.db	1
      001555 09                     926 	.db	9
      001556 00 0D                  927 	.dw	Snixie$NIXIE_Init$9-Snixie$NIXIE_Init$3
      001558 03                     928 	.db	3
      001559 01                     929 	.sleb128	1
      00155A 01                     930 	.db	1
      00155B 09                     931 	.db	9
      00155C 00 0D                  932 	.dw	Snixie$NIXIE_Init$15-Snixie$NIXIE_Init$9
      00155E 03                     933 	.db	3
      00155F 01                     934 	.sleb128	1
      001560 01                     935 	.db	1
      001561 09                     936 	.db	9
      001562 00 0D                  937 	.dw	Snixie$NIXIE_Init$21-Snixie$NIXIE_Init$15
      001564 03                     938 	.db	3
      001565 01                     939 	.sleb128	1
      001566 01                     940 	.db	1
      001567 09                     941 	.db	9
      001568 00 03                  942 	.dw	Snixie$NIXIE_Init$22-Snixie$NIXIE_Init$21
      00156A 03                     943 	.db	3
      00156B 02                     944 	.sleb128	2
      00156C 01                     945 	.db	1
      00156D 09                     946 	.db	9
      00156E 00 15                  947 	.dw	Snixie$NIXIE_Init$32-Snixie$NIXIE_Init$22
      001570 03                     948 	.db	3
      001571 08                     949 	.sleb128	8
      001572 01                     950 	.db	1
      001573 09                     951 	.db	9
      001574 00 06                  952 	.dw	Snixie$NIXIE_Init$35-Snixie$NIXIE_Init$32
      001576 03                     953 	.db	3
      001577 03                     954 	.sleb128	3
      001578 01                     955 	.db	1
      001579 09                     956 	.db	9
      00157A 00 0B                  957 	.dw	Snixie$NIXIE_Init$38-Snixie$NIXIE_Init$35
      00157C 03                     958 	.db	3
      00157D 02                     959 	.sleb128	2
      00157E 01                     960 	.db	1
      00157F 09                     961 	.db	9
      001580 00 04                  962 	.dw	Snixie$NIXIE_Init$39-Snixie$NIXIE_Init$38
      001582 03                     963 	.db	3
      001583 01                     964 	.sleb128	1
      001584 01                     965 	.db	1
      001585 09                     966 	.db	9
      001586 00 12                  967 	.dw	Snixie$NIXIE_Init$46-Snixie$NIXIE_Init$39
      001588 03                     968 	.db	3
      001589 01                     969 	.sleb128	1
      00158A 01                     970 	.db	1
      00158B 09                     971 	.db	9
      00158C 00 0A                  972 	.dw	Snixie$NIXIE_Init$49-Snixie$NIXIE_Init$46
      00158E 03                     973 	.db	3
      00158F 02                     974 	.sleb128	2
      001590 01                     975 	.db	1
      001591 09                     976 	.db	9
      001592 00 0C                  977 	.dw	Snixie$NIXIE_Init$52-Snixie$NIXIE_Init$49
      001594 03                     978 	.db	3
      001595 7E                     979 	.sleb128	-2
      001596 01                     980 	.db	1
      001597 09                     981 	.db	9
      001598 00 07                  982 	.dw	Snixie$NIXIE_Init$54-Snixie$NIXIE_Init$52
      00159A 03                     983 	.db	3
      00159B 7C                     984 	.sleb128	-4
      00159C 01                     985 	.db	1
      00159D 09                     986 	.db	9
      00159E 00 05                  987 	.dw	Snixie$NIXIE_Init$56-Snixie$NIXIE_Init$54
      0015A0 03                     988 	.db	3
      0015A1 09                     989 	.sleb128	9
      0015A2 01                     990 	.db	1
      0015A3 09                     991 	.db	9
      0015A4 00 03                  992 	.dw	1+Snixie$NIXIE_Init$58-Snixie$NIXIE_Init$56
      0015A6 00                     993 	.db	0
      0015A7 01                     994 	.uleb128	1
      0015A8 01                     995 	.db	1
      0015A9 00                     996 	.db	0
      0015AA 05                     997 	.uleb128	5
      0015AB 02                     998 	.db	2
      0015AC 00 00 8D 1D            999 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      0015B0 03                    1000 	.db	3
      0015B1 DF 00                 1001 	.sleb128	95
      0015B3 01                    1002 	.db	1
      0015B4 09                    1003 	.db	9
      0015B5 00 02                 1004 	.dw	Snixie$NIXIE_DisplayChar$63-Snixie$NIXIE_DisplayChar$60
      0015B7 03                    1005 	.db	3
      0015B8 02                    1006 	.sleb128	2
      0015B9 01                    1007 	.db	1
      0015BA 09                    1008 	.db	9
      0015BB 00 03                 1009 	.dw	Snixie$NIXIE_DisplayChar$64-Snixie$NIXIE_DisplayChar$63
      0015BD 03                    1010 	.db	3
      0015BE 03                    1011 	.sleb128	3
      0015BF 01                    1012 	.db	1
      0015C0 09                    1013 	.db	9
      0015C1 00 0F                 1014 	.dw	Snixie$NIXIE_DisplayChar$69-Snixie$NIXIE_DisplayChar$64
      0015C3 03                    1015 	.db	3
      0015C4 01                    1016 	.sleb128	1
      0015C5 01                    1017 	.db	1
      0015C6 09                    1018 	.db	9
      0015C7 00 05                 1019 	.dw	Snixie$NIXIE_DisplayChar$70-Snixie$NIXIE_DisplayChar$69
      0015C9 03                    1020 	.db	3
      0015CA 01                    1021 	.sleb128	1
      0015CB 01                    1022 	.db	1
      0015CC 09                    1023 	.db	9
      0015CD 00 08                 1024 	.dw	Snixie$NIXIE_DisplayChar$73-Snixie$NIXIE_DisplayChar$70
      0015CF 03                    1025 	.db	3
      0015D0 02                    1026 	.sleb128	2
      0015D1 01                    1027 	.db	1
      0015D2 09                    1028 	.db	9
      0015D3 00 14                 1029 	.dw	Snixie$NIXIE_DisplayChar$77-Snixie$NIXIE_DisplayChar$73
      0015D5 03                    1030 	.db	3
      0015D6 01                    1031 	.sleb128	1
      0015D7 01                    1032 	.db	1
      0015D8 09                    1033 	.db	9
      0015D9 00 16                 1034 	.dw	Snixie$NIXIE_DisplayChar$79-Snixie$NIXIE_DisplayChar$77
      0015DB 03                    1035 	.db	3
      0015DC 7D                    1036 	.sleb128	-3
      0015DD 01                    1037 	.db	1
      0015DE 09                    1038 	.db	9
      0015DF 00 04                 1039 	.dw	Snixie$NIXIE_DisplayChar$81-Snixie$NIXIE_DisplayChar$79
      0015E1 03                    1040 	.db	3
      0015E2 05                    1041 	.sleb128	5
      0015E3 01                    1042 	.db	1
      0015E4 09                    1043 	.db	9
      0015E5 00 0F                 1044 	.dw	Snixie$NIXIE_DisplayChar$86-Snixie$NIXIE_DisplayChar$81
      0015E7 03                    1045 	.db	3
      0015E8 01                    1046 	.sleb128	1
      0015E9 01                    1047 	.db	1
      0015EA 09                    1048 	.db	9
      0015EB 00 0A                 1049 	.dw	Snixie$NIXIE_DisplayChar$87-Snixie$NIXIE_DisplayChar$86
      0015ED 03                    1050 	.db	3
      0015EE 01                    1051 	.sleb128	1
      0015EF 01                    1052 	.db	1
      0015F0 09                    1053 	.db	9
      0015F1 00 05                 1054 	.dw	Snixie$NIXIE_DisplayChar$89-Snixie$NIXIE_DisplayChar$87
      0015F3 03                    1055 	.db	3
      0015F4 01                    1056 	.sleb128	1
      0015F5 01                    1057 	.db	1
      0015F6 09                    1058 	.db	9
      0015F7 00 07                 1059 	.dw	Snixie$NIXIE_DisplayChar$90-Snixie$NIXIE_DisplayChar$89
      0015F9 03                    1060 	.db	3
      0015FA 02                    1061 	.sleb128	2
      0015FB 01                    1062 	.db	1
      0015FC 09                    1063 	.db	9
      0015FD 00 0E                 1064 	.dw	Snixie$NIXIE_DisplayChar$91-Snixie$NIXIE_DisplayChar$90
      0015FF 03                    1065 	.db	3
      001600 01                    1066 	.sleb128	1
      001601 01                    1067 	.db	1
      001602 09                    1068 	.db	9
      001603 00 10                 1069 	.dw	Snixie$NIXIE_DisplayChar$92-Snixie$NIXIE_DisplayChar$91
      001605 03                    1070 	.db	3
      001606 02                    1071 	.sleb128	2
      001607 01                    1072 	.db	1
      001608 09                    1073 	.db	9
      001609 00 01                 1074 	.dw	Snixie$NIXIE_DisplayChar$93-Snixie$NIXIE_DisplayChar$92
      00160B 03                    1075 	.db	3
      00160C 01                    1076 	.sleb128	1
      00160D 01                    1077 	.db	1
      00160E 09                    1078 	.db	9
      00160F 00 03                 1079 	.dw	1+Snixie$NIXIE_DisplayChar$95-Snixie$NIXIE_DisplayChar$93
      001611 00                    1080 	.db	0
      001612 01                    1081 	.uleb128	1
      001613 01                    1082 	.db	1
      001614 00                    1083 	.db	0
      001615 05                    1084 	.uleb128	5
      001616 02                    1085 	.db	2
      001617 00 00 8D B3           1086 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      00161B 03                    1087 	.db	3
      00161C 86 01                 1088 	.sleb128	134
      00161E 01                    1089 	.db	1
      00161F 09                    1090 	.db	9
      001620 00 02                 1091 	.dw	Snixie$NIXIE_DisplayTime$100-Snixie$NIXIE_DisplayTime$97
      001622 03                    1092 	.db	3
      001623 04                    1093 	.sleb128	4
      001624 01                    1094 	.db	1
      001625 09                    1095 	.db	9
      001626 00 21                 1096 	.dw	Snixie$NIXIE_DisplayTime$101-Snixie$NIXIE_DisplayTime$100
      001628 03                    1097 	.db	3
      001629 02                    1098 	.sleb128	2
      00162A 01                    1099 	.db	1
      00162B 09                    1100 	.db	9
      00162C 00 12                 1101 	.dw	Snixie$NIXIE_DisplayTime$106-Snixie$NIXIE_DisplayTime$101
      00162E 03                    1102 	.db	3
      00162F 01                    1103 	.sleb128	1
      001630 01                    1104 	.db	1
      001631 09                    1105 	.db	9
      001632 00 08                 1106 	.dw	Snixie$NIXIE_DisplayTime$109-Snixie$NIXIE_DisplayTime$106
      001634 03                    1107 	.db	3
      001635 02                    1108 	.sleb128	2
      001636 01                    1109 	.db	1
      001637 09                    1110 	.db	9
      001638 00 0C                 1111 	.dw	Snixie$NIXIE_DisplayTime$114-Snixie$NIXIE_DisplayTime$109
      00163A 03                    1112 	.db	3
      00163B 01                    1113 	.sleb128	1
      00163C 01                    1114 	.db	1
      00163D 09                    1115 	.db	9
      00163E 00 08                 1116 	.dw	Snixie$NIXIE_DisplayTime$117-Snixie$NIXIE_DisplayTime$114
      001640 03                    1117 	.db	3
      001641 02                    1118 	.sleb128	2
      001642 01                    1119 	.db	1
      001643 09                    1120 	.db	9
      001644 00 12                 1121 	.dw	Snixie$NIXIE_DisplayTime$122-Snixie$NIXIE_DisplayTime$117
      001646 03                    1122 	.db	3
      001647 01                    1123 	.sleb128	1
      001648 01                    1124 	.db	1
      001649 09                    1125 	.db	9
      00164A 00 08                 1126 	.dw	Snixie$NIXIE_DisplayTime$125-Snixie$NIXIE_DisplayTime$122
      00164C 03                    1127 	.db	3
      00164D 02                    1128 	.sleb128	2
      00164E 01                    1129 	.db	1
      00164F 09                    1130 	.db	9
      001650 00 0C                 1131 	.dw	Snixie$NIXIE_DisplayTime$130-Snixie$NIXIE_DisplayTime$125
      001652 03                    1132 	.db	3
      001653 01                    1133 	.sleb128	1
      001654 01                    1134 	.db	1
      001655 09                    1135 	.db	9
      001656 00 08                 1136 	.dw	Snixie$NIXIE_DisplayTime$133-Snixie$NIXIE_DisplayTime$130
      001658 03                    1137 	.db	3
      001659 02                    1138 	.sleb128	2
      00165A 01                    1139 	.db	1
      00165B 09                    1140 	.db	9
      00165C 00 10                 1141 	.dw	Snixie$NIXIE_DisplayTime$138-Snixie$NIXIE_DisplayTime$133
      00165E 03                    1142 	.db	3
      00165F 01                    1143 	.sleb128	1
      001660 01                    1144 	.db	1
      001661 09                    1145 	.db	9
      001662 00 11                 1146 	.dw	Snixie$NIXIE_DisplayTime$143-Snixie$NIXIE_DisplayTime$138
      001664 03                    1147 	.db	3
      001665 01                    1148 	.sleb128	1
      001666 01                    1149 	.db	1
      001667 09                    1150 	.db	9
      001668 00 11                 1151 	.dw	Snixie$NIXIE_DisplayTime$148-Snixie$NIXIE_DisplayTime$143
      00166A 03                    1152 	.db	3
      00166B 01                    1153 	.sleb128	1
      00166C 01                    1154 	.db	1
      00166D 09                    1155 	.db	9
      00166E 00 11                 1156 	.dw	Snixie$NIXIE_DisplayTime$153-Snixie$NIXIE_DisplayTime$148
      001670 03                    1157 	.db	3
      001671 04                    1158 	.sleb128	4
      001672 01                    1159 	.db	1
      001673 09                    1160 	.db	9
      001674 00 0B                 1161 	.dw	Snixie$NIXIE_DisplayTime$159-Snixie$NIXIE_DisplayTime$153
      001676 03                    1162 	.db	3
      001677 05                    1163 	.sleb128	5
      001678 01                    1164 	.db	1
      001679 09                    1165 	.db	9
      00167A 00 07                 1166 	.dw	Snixie$NIXIE_DisplayTime$160-Snixie$NIXIE_DisplayTime$159
      00167C 03                    1167 	.db	3
      00167D 01                    1168 	.sleb128	1
      00167E 01                    1169 	.db	1
      00167F 09                    1170 	.db	9
      001680 00 0A                 1171 	.dw	Snixie$NIXIE_DisplayTime$161-Snixie$NIXIE_DisplayTime$160
      001682 03                    1172 	.db	3
      001683 01                    1173 	.sleb128	1
      001684 01                    1174 	.db	1
      001685 09                    1175 	.db	9
      001686 00 04                 1176 	.dw	Snixie$NIXIE_DisplayTime$164-Snixie$NIXIE_DisplayTime$161
      001688 03                    1177 	.db	3
      001689 01                    1178 	.sleb128	1
      00168A 01                    1179 	.db	1
      00168B 09                    1180 	.db	9
      00168C 00 05                 1181 	.dw	Snixie$NIXIE_DisplayTime$167-Snixie$NIXIE_DisplayTime$164
      00168E 03                    1182 	.db	3
      00168F 02                    1183 	.sleb128	2
      001690 01                    1184 	.db	1
      001691 09                    1185 	.db	9
      001692 00 0A                 1186 	.dw	Snixie$NIXIE_DisplayTime$170-Snixie$NIXIE_DisplayTime$167
      001694 03                    1187 	.db	3
      001695 02                    1188 	.sleb128	2
      001696 01                    1189 	.db	1
      001697 09                    1190 	.db	9
      001698 00 09                 1191 	.dw	Snixie$NIXIE_DisplayTime$171-Snixie$NIXIE_DisplayTime$170
      00169A 03                    1192 	.db	3
      00169B 01                    1193 	.sleb128	1
      00169C 01                    1194 	.db	1
      00169D 09                    1195 	.db	9
      00169E 00 03                 1196 	.dw	Snixie$NIXIE_DisplayTime$172-Snixie$NIXIE_DisplayTime$171
      0016A0 03                    1197 	.db	3
      0016A1 01                    1198 	.sleb128	1
      0016A2 01                    1199 	.db	1
      0016A3 09                    1200 	.db	9
      0016A4 00 03                 1201 	.dw	Snixie$NIXIE_DisplayTime$173-Snixie$NIXIE_DisplayTime$172
      0016A6 03                    1202 	.db	3
      0016A7 01                    1203 	.sleb128	1
      0016A8 01                    1204 	.db	1
      0016A9 09                    1205 	.db	9
      0016AA 00 0B                 1206 	.dw	Snixie$NIXIE_DisplayTime$174-Snixie$NIXIE_DisplayTime$173
      0016AC 03                    1207 	.db	3
      0016AD 01                    1208 	.sleb128	1
      0016AE 01                    1209 	.db	1
      0016AF 09                    1210 	.db	9
      0016B0 00 04                 1211 	.dw	Snixie$NIXIE_DisplayTime$175-Snixie$NIXIE_DisplayTime$174
      0016B2 03                    1212 	.db	3
      0016B3 01                    1213 	.sleb128	1
      0016B4 01                    1214 	.db	1
      0016B5 09                    1215 	.db	9
      0016B6 00 05                 1216 	.dw	Snixie$NIXIE_DisplayTime$178-Snixie$NIXIE_DisplayTime$175
      0016B8 03                    1217 	.db	3
      0016B9 02                    1218 	.sleb128	2
      0016BA 01                    1219 	.db	1
      0016BB 09                    1220 	.db	9
      0016BC 00 0A                 1221 	.dw	Snixie$NIXIE_DisplayTime$181-Snixie$NIXIE_DisplayTime$178
      0016BE 03                    1222 	.db	3
      0016BF 02                    1223 	.sleb128	2
      0016C0 01                    1224 	.db	1
      0016C1 09                    1225 	.db	9
      0016C2 00 09                 1226 	.dw	Snixie$NIXIE_DisplayTime$182-Snixie$NIXIE_DisplayTime$181
      0016C4 03                    1227 	.db	3
      0016C5 01                    1228 	.sleb128	1
      0016C6 01                    1229 	.db	1
      0016C7 09                    1230 	.db	9
      0016C8 00 12                 1231 	.dw	Snixie$NIXIE_DisplayTime$183-Snixie$NIXIE_DisplayTime$182
      0016CA 03                    1232 	.db	3
      0016CB 01                    1233 	.sleb128	1
      0016CC 01                    1234 	.db	1
      0016CD 09                    1235 	.db	9
      0016CE 00 02                 1236 	.dw	Snixie$NIXIE_DisplayTime$184-Snixie$NIXIE_DisplayTime$183
      0016D0 03                    1237 	.db	3
      0016D1 01                    1238 	.sleb128	1
      0016D2 01                    1239 	.db	1
      0016D3 09                    1240 	.db	9
      0016D4 00 05                 1241 	.dw	Snixie$NIXIE_DisplayTime$187-Snixie$NIXIE_DisplayTime$184
      0016D6 03                    1242 	.db	3
      0016D7 02                    1243 	.sleb128	2
      0016D8 01                    1244 	.db	1
      0016D9 09                    1245 	.db	9
      0016DA 00 0A                 1246 	.dw	Snixie$NIXIE_DisplayTime$190-Snixie$NIXIE_DisplayTime$187
      0016DC 03                    1247 	.db	3
      0016DD 03                    1248 	.sleb128	3
      0016DE 01                    1249 	.db	1
      0016DF 09                    1250 	.db	9
      0016E0 00 07                 1251 	.dw	Snixie$NIXIE_DisplayTime$191-Snixie$NIXIE_DisplayTime$190
      0016E2 03                    1252 	.db	3
      0016E3 01                    1253 	.sleb128	1
      0016E4 01                    1254 	.db	1
      0016E5 09                    1255 	.db	9
      0016E6 00 0A                 1256 	.dw	Snixie$NIXIE_DisplayTime$192-Snixie$NIXIE_DisplayTime$191
      0016E8 03                    1257 	.db	3
      0016E9 01                    1258 	.sleb128	1
      0016EA 01                    1259 	.db	1
      0016EB 09                    1260 	.db	9
      0016EC 00 04                 1261 	.dw	Snixie$NIXIE_DisplayTime$195-Snixie$NIXIE_DisplayTime$192
      0016EE 03                    1262 	.db	3
      0016EF 01                    1263 	.sleb128	1
      0016F0 01                    1264 	.db	1
      0016F1 09                    1265 	.db	9
      0016F2 00 05                 1266 	.dw	Snixie$NIXIE_DisplayTime$198-Snixie$NIXIE_DisplayTime$195
      0016F4 03                    1267 	.db	3
      0016F5 02                    1268 	.sleb128	2
      0016F6 01                    1269 	.db	1
      0016F7 09                    1270 	.db	9
      0016F8 00 0A                 1271 	.dw	Snixie$NIXIE_DisplayTime$201-Snixie$NIXIE_DisplayTime$198
      0016FA 03                    1272 	.db	3
      0016FB 02                    1273 	.sleb128	2
      0016FC 01                    1274 	.db	1
      0016FD 09                    1275 	.db	9
      0016FE 00 09                 1276 	.dw	Snixie$NIXIE_DisplayTime$202-Snixie$NIXIE_DisplayTime$201
      001700 03                    1277 	.db	3
      001701 01                    1278 	.sleb128	1
      001702 01                    1279 	.db	1
      001703 09                    1280 	.db	9
      001704 00 03                 1281 	.dw	Snixie$NIXIE_DisplayTime$203-Snixie$NIXIE_DisplayTime$202
      001706 03                    1282 	.db	3
      001707 01                    1283 	.sleb128	1
      001708 01                    1284 	.db	1
      001709 09                    1285 	.db	9
      00170A 00 03                 1286 	.dw	Snixie$NIXIE_DisplayTime$204-Snixie$NIXIE_DisplayTime$203
      00170C 03                    1287 	.db	3
      00170D 01                    1288 	.sleb128	1
      00170E 01                    1289 	.db	1
      00170F 09                    1290 	.db	9
      001710 00 0B                 1291 	.dw	Snixie$NIXIE_DisplayTime$205-Snixie$NIXIE_DisplayTime$204
      001712 03                    1292 	.db	3
      001713 01                    1293 	.sleb128	1
      001714 01                    1294 	.db	1
      001715 09                    1295 	.db	9
      001716 00 04                 1296 	.dw	Snixie$NIXIE_DisplayTime$206-Snixie$NIXIE_DisplayTime$205
      001718 03                    1297 	.db	3
      001719 01                    1298 	.sleb128	1
      00171A 01                    1299 	.db	1
      00171B 09                    1300 	.db	9
      00171C 00 05                 1301 	.dw	Snixie$NIXIE_DisplayTime$209-Snixie$NIXIE_DisplayTime$206
      00171E 03                    1302 	.db	3
      00171F 02                    1303 	.sleb128	2
      001720 01                    1304 	.db	1
      001721 09                    1305 	.db	9
      001722 00 0A                 1306 	.dw	Snixie$NIXIE_DisplayTime$212-Snixie$NIXIE_DisplayTime$209
      001724 03                    1307 	.db	3
      001725 02                    1308 	.sleb128	2
      001726 01                    1309 	.db	1
      001727 09                    1310 	.db	9
      001728 00 09                 1311 	.dw	Snixie$NIXIE_DisplayTime$213-Snixie$NIXIE_DisplayTime$212
      00172A 03                    1312 	.db	3
      00172B 01                    1313 	.sleb128	1
      00172C 01                    1314 	.db	1
      00172D 09                    1315 	.db	9
      00172E 00 12                 1316 	.dw	Snixie$NIXIE_DisplayTime$214-Snixie$NIXIE_DisplayTime$213
      001730 03                    1317 	.db	3
      001731 01                    1318 	.sleb128	1
      001732 01                    1319 	.db	1
      001733 09                    1320 	.db	9
      001734 00 02                 1321 	.dw	Snixie$NIXIE_DisplayTime$215-Snixie$NIXIE_DisplayTime$214
      001736 03                    1322 	.db	3
      001737 01                    1323 	.sleb128	1
      001738 01                    1324 	.db	1
      001739 09                    1325 	.db	9
      00173A 00 05                 1326 	.dw	Snixie$NIXIE_DisplayTime$218-Snixie$NIXIE_DisplayTime$215
      00173C 03                    1327 	.db	3
      00173D 02                    1328 	.sleb128	2
      00173E 01                    1329 	.db	1
      00173F 09                    1330 	.db	9
      001740 00 0A                 1331 	.dw	Snixie$NIXIE_DisplayTime$221-Snixie$NIXIE_DisplayTime$218
      001742 03                    1332 	.db	3
      001743 02                    1333 	.sleb128	2
      001744 01                    1334 	.db	1
      001745 09                    1335 	.db	9
      001746 00 0B                 1336 	.dw	Snixie$NIXIE_DisplayTime$227-Snixie$NIXIE_DisplayTime$221
      001748 03                    1337 	.db	3
      001749 01                    1338 	.sleb128	1
      00174A 01                    1339 	.db	1
      00174B 09                    1340 	.db	9
      00174C 00 03                 1341 	.dw	1+Snixie$NIXIE_DisplayTime$229-Snixie$NIXIE_DisplayTime$227
      00174E 00                    1342 	.db	0
      00174F 01                    1343 	.uleb128	1
      001750 01                    1344 	.db	1
      001751                       1345 Ldebug_line_end:
                                   1346 
                                   1347 	.area .debug_loc (NOLOAD)
      000E70                       1348 Ldebug_loc_start:
      000E70 00 00 8F 87           1349 	.dw	0,(Snixie$NIXIE_DisplayTime$228)
      000E74 00 00 8F 88           1350 	.dw	0,(Snixie$NIXIE_DisplayTime$230)
      000E78 00 02                 1351 	.dw	2
      000E7A 78                    1352 	.db	120
      000E7B 01                    1353 	.sleb128	1
      000E7C 00 00 8F 85           1354 	.dw	0,(Snixie$NIXIE_DisplayTime$225)
      000E80 00 00 8F 87           1355 	.dw	0,(Snixie$NIXIE_DisplayTime$228)
      000E84 00 02                 1356 	.dw	2
      000E86 78                    1357 	.db	120
      000E87 13                    1358 	.sleb128	19
      000E88 00 00 8F 80           1359 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      000E8C 00 00 8F 85           1360 	.dw	0,(Snixie$NIXIE_DisplayTime$225)
      000E90 00 02                 1361 	.dw	2
      000E92 78                    1362 	.db	120
      000E93 16                    1363 	.sleb128	22
      000E94 00 00 8F 7E           1364 	.dw	0,(Snixie$NIXIE_DisplayTime$223)
      000E98 00 00 8F 80           1365 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      000E9C 00 02                 1366 	.dw	2
      000E9E 78                    1367 	.db	120
      000E9F 15                    1368 	.sleb128	21
      000EA0 00 00 8F 7C           1369 	.dw	0,(Snixie$NIXIE_DisplayTime$222)
      000EA4 00 00 8F 7E           1370 	.dw	0,(Snixie$NIXIE_DisplayTime$223)
      000EA8 00 02                 1371 	.dw	2
      000EAA 78                    1372 	.db	120
      000EAB 14                    1373 	.sleb128	20
      000EAC 00 00 8F 77           1374 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      000EB0 00 00 8F 7C           1375 	.dw	0,(Snixie$NIXIE_DisplayTime$222)
      000EB4 00 02                 1376 	.dw	2
      000EB6 78                    1377 	.db	120
      000EB7 13                    1378 	.sleb128	19
      000EB8 00 00 8F 72           1379 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      000EBC 00 00 8F 77           1380 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      000EC0 00 02                 1381 	.dw	2
      000EC2 78                    1382 	.db	120
      000EC3 14                    1383 	.sleb128	20
      000EC4 00 00 8F 70           1384 	.dw	0,(Snixie$NIXIE_DisplayTime$217)
      000EC8 00 00 8F 72           1385 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      000ECC 00 02                 1386 	.dw	2
      000ECE 78                    1387 	.db	120
      000ECF 13                    1388 	.sleb128	19
      000ED0 00 00 8F 6C           1389 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      000ED4 00 00 8F 70           1390 	.dw	0,(Snixie$NIXIE_DisplayTime$217)
      000ED8 00 02                 1391 	.dw	2
      000EDA 78                    1392 	.db	120
      000EDB 14                    1393 	.sleb128	20
      000EDC 00 00 8F 4B           1394 	.dw	0,(Snixie$NIXIE_DisplayTime$211)
      000EE0 00 00 8F 6C           1395 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      000EE4 00 02                 1396 	.dw	2
      000EE6 78                    1397 	.db	120
      000EE7 13                    1398 	.sleb128	19
      000EE8 00 00 8F 46           1399 	.dw	0,(Snixie$NIXIE_DisplayTime$210)
      000EEC 00 00 8F 4B           1400 	.dw	0,(Snixie$NIXIE_DisplayTime$211)
      000EF0 00 02                 1401 	.dw	2
      000EF2 78                    1402 	.db	120
      000EF3 14                    1403 	.sleb128	20
      000EF4 00 00 8F 44           1404 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      000EF8 00 00 8F 46           1405 	.dw	0,(Snixie$NIXIE_DisplayTime$210)
      000EFC 00 02                 1406 	.dw	2
      000EFE 78                    1407 	.db	120
      000EFF 13                    1408 	.sleb128	19
      000F00 00 00 8F 40           1409 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000F04 00 00 8F 44           1410 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      000F08 00 02                 1411 	.dw	2
      000F0A 78                    1412 	.db	120
      000F0B 14                    1413 	.sleb128	20
      000F0C 00 00 8F 1E           1414 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      000F10 00 00 8F 40           1415 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000F14 00 02                 1416 	.dw	2
      000F16 78                    1417 	.db	120
      000F17 13                    1418 	.sleb128	19
      000F18 00 00 8F 19           1419 	.dw	0,(Snixie$NIXIE_DisplayTime$199)
      000F1C 00 00 8F 1E           1420 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      000F20 00 02                 1421 	.dw	2
      000F22 78                    1422 	.db	120
      000F23 14                    1423 	.sleb128	20
      000F24 00 00 8F 17           1424 	.dw	0,(Snixie$NIXIE_DisplayTime$197)
      000F28 00 00 8F 19           1425 	.dw	0,(Snixie$NIXIE_DisplayTime$199)
      000F2C 00 02                 1426 	.dw	2
      000F2E 78                    1427 	.db	120
      000F2F 13                    1428 	.sleb128	19
      000F30 00 00 8F 13           1429 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      000F34 00 00 8F 17           1430 	.dw	0,(Snixie$NIXIE_DisplayTime$197)
      000F38 00 02                 1431 	.dw	2
      000F3A 78                    1432 	.db	120
      000F3B 14                    1433 	.sleb128	20
      000F3C 00 00 8F 12           1434 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      000F40 00 00 8F 13           1435 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      000F44 00 02                 1436 	.dw	2
      000F46 78                    1437 	.db	120
      000F47 13                    1438 	.sleb128	19
      000F48 00 00 8F 0F           1439 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      000F4C 00 00 8F 12           1440 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      000F50 00 02                 1441 	.dw	2
      000F52 78                    1442 	.db	120
      000F53 15                    1443 	.sleb128	21
      000F54 00 00 8E FA           1444 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      000F58 00 00 8F 0F           1445 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      000F5C 00 02                 1446 	.dw	2
      000F5E 78                    1447 	.db	120
      000F5F 13                    1448 	.sleb128	19
      000F60 00 00 8E F5           1449 	.dw	0,(Snixie$NIXIE_DisplayTime$188)
      000F64 00 00 8E FA           1450 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      000F68 00 02                 1451 	.dw	2
      000F6A 78                    1452 	.db	120
      000F6B 14                    1453 	.sleb128	20
      000F6C 00 00 8E F3           1454 	.dw	0,(Snixie$NIXIE_DisplayTime$186)
      000F70 00 00 8E F5           1455 	.dw	0,(Snixie$NIXIE_DisplayTime$188)
      000F74 00 02                 1456 	.dw	2
      000F76 78                    1457 	.db	120
      000F77 13                    1458 	.sleb128	19
      000F78 00 00 8E EF           1459 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      000F7C 00 00 8E F3           1460 	.dw	0,(Snixie$NIXIE_DisplayTime$186)
      000F80 00 02                 1461 	.dw	2
      000F82 78                    1462 	.db	120
      000F83 14                    1463 	.sleb128	20
      000F84 00 00 8E CE           1464 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      000F88 00 00 8E EF           1465 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      000F8C 00 02                 1466 	.dw	2
      000F8E 78                    1467 	.db	120
      000F8F 13                    1468 	.sleb128	19
      000F90 00 00 8E C9           1469 	.dw	0,(Snixie$NIXIE_DisplayTime$179)
      000F94 00 00 8E CE           1470 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      000F98 00 02                 1471 	.dw	2
      000F9A 78                    1472 	.db	120
      000F9B 14                    1473 	.sleb128	20
      000F9C 00 00 8E C7           1474 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      000FA0 00 00 8E C9           1475 	.dw	0,(Snixie$NIXIE_DisplayTime$179)
      000FA4 00 02                 1476 	.dw	2
      000FA6 78                    1477 	.db	120
      000FA7 13                    1478 	.sleb128	19
      000FA8 00 00 8E C3           1479 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      000FAC 00 00 8E C7           1480 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      000FB0 00 02                 1481 	.dw	2
      000FB2 78                    1482 	.db	120
      000FB3 14                    1483 	.sleb128	20
      000FB4 00 00 8E A1           1484 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      000FB8 00 00 8E C3           1485 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      000FBC 00 02                 1486 	.dw	2
      000FBE 78                    1487 	.db	120
      000FBF 13                    1488 	.sleb128	19
      000FC0 00 00 8E 9C           1489 	.dw	0,(Snixie$NIXIE_DisplayTime$168)
      000FC4 00 00 8E A1           1490 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      000FC8 00 02                 1491 	.dw	2
      000FCA 78                    1492 	.db	120
      000FCB 14                    1493 	.sleb128	20
      000FCC 00 00 8E 9A           1494 	.dw	0,(Snixie$NIXIE_DisplayTime$166)
      000FD0 00 00 8E 9C           1495 	.dw	0,(Snixie$NIXIE_DisplayTime$168)
      000FD4 00 02                 1496 	.dw	2
      000FD6 78                    1497 	.db	120
      000FD7 13                    1498 	.sleb128	19
      000FD8 00 00 8E 96           1499 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      000FDC 00 00 8E 9A           1500 	.dw	0,(Snixie$NIXIE_DisplayTime$166)
      000FE0 00 02                 1501 	.dw	2
      000FE2 78                    1502 	.db	120
      000FE3 14                    1503 	.sleb128	20
      000FE4 00 00 8E 95           1504 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      000FE8 00 00 8E 96           1505 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      000FEC 00 02                 1506 	.dw	2
      000FEE 78                    1507 	.db	120
      000FEF 13                    1508 	.sleb128	19
      000FF0 00 00 8E 92           1509 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      000FF4 00 00 8E 95           1510 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      000FF8 00 02                 1511 	.dw	2
      000FFA 78                    1512 	.db	120
      000FFB 15                    1513 	.sleb128	21
      000FFC 00 00 8E 80           1514 	.dw	0,(Snixie$NIXIE_DisplayTime$157)
      001000 00 00 8E 92           1515 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      001004 00 02                 1516 	.dw	2
      001006 78                    1517 	.db	120
      001007 13                    1518 	.sleb128	19
      001008 00 00 8E 7B           1519 	.dw	0,(Snixie$NIXIE_DisplayTime$156)
      00100C 00 00 8E 80           1520 	.dw	0,(Snixie$NIXIE_DisplayTime$157)
      001010 00 02                 1521 	.dw	2
      001012 78                    1522 	.db	120
      001013 16                    1523 	.sleb128	22
      001014 00 00 8E 79           1524 	.dw	0,(Snixie$NIXIE_DisplayTime$155)
      001018 00 00 8E 7B           1525 	.dw	0,(Snixie$NIXIE_DisplayTime$156)
      00101C 00 02                 1526 	.dw	2
      00101E 78                    1527 	.db	120
      00101F 15                    1528 	.sleb128	21
      001020 00 00 8E 77           1529 	.dw	0,(Snixie$NIXIE_DisplayTime$154)
      001024 00 00 8E 79           1530 	.dw	0,(Snixie$NIXIE_DisplayTime$155)
      001028 00 02                 1531 	.dw	2
      00102A 78                    1532 	.db	120
      00102B 14                    1533 	.sleb128	20
      00102C 00 00 8E 73           1534 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      001030 00 00 8E 77           1535 	.dw	0,(Snixie$NIXIE_DisplayTime$154)
      001034 00 02                 1536 	.dw	2
      001036 78                    1537 	.db	120
      001037 13                    1538 	.sleb128	19
      001038 00 00 8E 6E           1539 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      00103C 00 00 8E 73           1540 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      001040 00 02                 1541 	.dw	2
      001042 78                    1542 	.db	120
      001043 17                    1543 	.sleb128	23
      001044 00 00 8E 6C           1544 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      001048 00 00 8E 6E           1545 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      00104C 00 02                 1546 	.dw	2
      00104E 78                    1547 	.db	120
      00104F 16                    1548 	.sleb128	22
      001050 00 00 8E 67           1549 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      001054 00 00 8E 6C           1550 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      001058 00 02                 1551 	.dw	2
      00105A 78                    1552 	.db	120
      00105B 14                    1553 	.sleb128	20
      00105C 00 00 8E 62           1554 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      001060 00 00 8E 67           1555 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      001064 00 02                 1556 	.dw	2
      001066 78                    1557 	.db	120
      001067 13                    1558 	.sleb128	19
      001068 00 00 8E 5D           1559 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      00106C 00 00 8E 62           1560 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      001070 00 02                 1561 	.dw	2
      001072 78                    1562 	.db	120
      001073 17                    1563 	.sleb128	23
      001074 00 00 8E 5B           1564 	.dw	0,(Snixie$NIXIE_DisplayTime$145)
      001078 00 00 8E 5D           1565 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      00107C 00 02                 1566 	.dw	2
      00107E 78                    1567 	.db	120
      00107F 16                    1568 	.sleb128	22
      001080 00 00 8E 56           1569 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      001084 00 00 8E 5B           1570 	.dw	0,(Snixie$NIXIE_DisplayTime$145)
      001088 00 02                 1571 	.dw	2
      00108A 78                    1572 	.db	120
      00108B 14                    1573 	.sleb128	20
      00108C 00 00 8E 51           1574 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      001090 00 00 8E 56           1575 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      001094 00 02                 1576 	.dw	2
      001096 78                    1577 	.db	120
      001097 13                    1578 	.sleb128	19
      001098 00 00 8E 4C           1579 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      00109C 00 00 8E 51           1580 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      0010A0 00 02                 1581 	.dw	2
      0010A2 78                    1582 	.db	120
      0010A3 17                    1583 	.sleb128	23
      0010A4 00 00 8E 4A           1584 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      0010A8 00 00 8E 4C           1585 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      0010AC 00 02                 1586 	.dw	2
      0010AE 78                    1587 	.db	120
      0010AF 16                    1588 	.sleb128	22
      0010B0 00 00 8E 45           1589 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      0010B4 00 00 8E 4A           1590 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      0010B8 00 02                 1591 	.dw	2
      0010BA 78                    1592 	.db	120
      0010BB 14                    1593 	.sleb128	20
      0010BC 00 00 8E 40           1594 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      0010C0 00 00 8E 45           1595 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      0010C4 00 02                 1596 	.dw	2
      0010C6 78                    1597 	.db	120
      0010C7 13                    1598 	.sleb128	19
      0010C8 00 00 8E 3B           1599 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      0010CC 00 00 8E 40           1600 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      0010D0 00 02                 1601 	.dw	2
      0010D2 78                    1602 	.db	120
      0010D3 17                    1603 	.sleb128	23
      0010D4 00 00 8E 39           1604 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      0010D8 00 00 8E 3B           1605 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      0010DC 00 02                 1606 	.dw	2
      0010DE 78                    1607 	.db	120
      0010DF 16                    1608 	.sleb128	22
      0010E0 00 00 8E 35           1609 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      0010E4 00 00 8E 39           1610 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      0010E8 00 02                 1611 	.dw	2
      0010EA 78                    1612 	.db	120
      0010EB 14                    1613 	.sleb128	20
      0010EC 00 00 8E 30           1614 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      0010F0 00 00 8E 35           1615 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      0010F4 00 02                 1616 	.dw	2
      0010F6 78                    1617 	.db	120
      0010F7 13                    1618 	.sleb128	19
      0010F8 00 00 8E 2D           1619 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      0010FC 00 00 8E 30           1620 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      001100 00 02                 1621 	.dw	2
      001102 78                    1622 	.db	120
      001103 15                    1623 	.sleb128	21
      001104 00 00 8E 2A           1624 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      001108 00 00 8E 2D           1625 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      00110C 00 02                 1626 	.dw	2
      00110E 78                    1627 	.db	120
      00110F 13                    1628 	.sleb128	19
      001110 00 00 8E 25           1629 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      001114 00 00 8E 2A           1630 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      001118 00 02                 1631 	.dw	2
      00111A 78                    1632 	.db	120
      00111B 17                    1633 	.sleb128	23
      00111C 00 00 8E 22           1634 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      001120 00 00 8E 25           1635 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      001124 00 02                 1636 	.dw	2
      001126 78                    1637 	.db	120
      001127 15                    1638 	.sleb128	21
      001128 00 00 8E 20           1639 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      00112C 00 00 8E 22           1640 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      001130 00 02                 1641 	.dw	2
      001132 78                    1642 	.db	120
      001133 14                    1643 	.sleb128	20
      001134 00 00 8E 1C           1644 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      001138 00 00 8E 20           1645 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      00113C 00 02                 1646 	.dw	2
      00113E 78                    1647 	.db	120
      00113F 13                    1648 	.sleb128	19
      001140 00 00 8E 19           1649 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      001144 00 00 8E 1C           1650 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      001148 00 02                 1651 	.dw	2
      00114A 78                    1652 	.db	120
      00114B 15                    1653 	.sleb128	21
      00114C 00 00 8E 16           1654 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      001150 00 00 8E 19           1655 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      001154 00 02                 1656 	.dw	2
      001156 78                    1657 	.db	120
      001157 13                    1658 	.sleb128	19
      001158 00 00 8E 11           1659 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      00115C 00 00 8E 16           1660 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      001160 00 02                 1661 	.dw	2
      001162 78                    1662 	.db	120
      001163 17                    1663 	.sleb128	23
      001164 00 00 8E 0E           1664 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      001168 00 00 8E 11           1665 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      00116C 00 02                 1666 	.dw	2
      00116E 78                    1667 	.db	120
      00116F 15                    1668 	.sleb128	21
      001170 00 00 8E 0C           1669 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      001174 00 00 8E 0E           1670 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      001178 00 02                 1671 	.dw	2
      00117A 78                    1672 	.db	120
      00117B 14                    1673 	.sleb128	20
      00117C 00 00 8E 02           1674 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      001180 00 00 8E 0C           1675 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      001184 00 02                 1676 	.dw	2
      001186 78                    1677 	.db	120
      001187 13                    1678 	.sleb128	19
      001188 00 00 8D FF           1679 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      00118C 00 00 8E 02           1680 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      001190 00 02                 1681 	.dw	2
      001192 78                    1682 	.db	120
      001193 15                    1683 	.sleb128	21
      001194 00 00 8D FC           1684 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      001198 00 00 8D FF           1685 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      00119C 00 02                 1686 	.dw	2
      00119E 78                    1687 	.db	120
      00119F 13                    1688 	.sleb128	19
      0011A0 00 00 8D F7           1689 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      0011A4 00 00 8D FC           1690 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      0011A8 00 02                 1691 	.dw	2
      0011AA 78                    1692 	.db	120
      0011AB 17                    1693 	.sleb128	23
      0011AC 00 00 8D F4           1694 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      0011B0 00 00 8D F7           1695 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      0011B4 00 02                 1696 	.dw	2
      0011B6 78                    1697 	.db	120
      0011B7 15                    1698 	.sleb128	21
      0011B8 00 00 8D F2           1699 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      0011BC 00 00 8D F4           1700 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      0011C0 00 02                 1701 	.dw	2
      0011C2 78                    1702 	.db	120
      0011C3 14                    1703 	.sleb128	20
      0011C4 00 00 8D EE           1704 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      0011C8 00 00 8D F2           1705 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      0011CC 00 02                 1706 	.dw	2
      0011CE 78                    1707 	.db	120
      0011CF 13                    1708 	.sleb128	19
      0011D0 00 00 8D EB           1709 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      0011D4 00 00 8D EE           1710 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      0011D8 00 02                 1711 	.dw	2
      0011DA 78                    1712 	.db	120
      0011DB 15                    1713 	.sleb128	21
      0011DC 00 00 8D E8           1714 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      0011E0 00 00 8D EB           1715 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      0011E4 00 02                 1716 	.dw	2
      0011E6 78                    1717 	.db	120
      0011E7 13                    1718 	.sleb128	19
      0011E8 00 00 8D E3           1719 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      0011EC 00 00 8D E8           1720 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      0011F0 00 02                 1721 	.dw	2
      0011F2 78                    1722 	.db	120
      0011F3 17                    1723 	.sleb128	23
      0011F4 00 00 8D E0           1724 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      0011F8 00 00 8D E3           1725 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      0011FC 00 02                 1726 	.dw	2
      0011FE 78                    1727 	.db	120
      0011FF 15                    1728 	.sleb128	21
      001200 00 00 8D DE           1729 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      001204 00 00 8D E0           1730 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      001208 00 02                 1731 	.dw	2
      00120A 78                    1732 	.db	120
      00120B 14                    1733 	.sleb128	20
      00120C 00 00 8D B5           1734 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      001210 00 00 8D DE           1735 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      001214 00 02                 1736 	.dw	2
      001216 78                    1737 	.db	120
      001217 13                    1738 	.sleb128	19
      001218 00 00 8D B3           1739 	.dw	0,(Snixie$NIXIE_DisplayTime$98)
      00121C 00 00 8D B5           1740 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      001220 00 02                 1741 	.dw	2
      001222 78                    1742 	.db	120
      001223 01                    1743 	.sleb128	1
      001224 00 00 00 00           1744 	.dw	0,0
      001228 00 00 00 00           1745 	.dw	0,0
      00122C 00 00 8D B2           1746 	.dw	0,(Snixie$NIXIE_DisplayChar$94)
      001230 00 00 8D B3           1747 	.dw	0,(Snixie$NIXIE_DisplayChar$96)
      001234 00 02                 1748 	.dw	2
      001236 78                    1749 	.db	120
      001237 01                    1750 	.sleb128	1
      001238 00 00 8D 8A           1751 	.dw	0,(Snixie$NIXIE_DisplayChar$88)
      00123C 00 00 8D B2           1752 	.dw	0,(Snixie$NIXIE_DisplayChar$94)
      001240 00 02                 1753 	.dw	2
      001242 78                    1754 	.db	120
      001243 06                    1755 	.sleb128	6
      001244 00 00 8D 78           1756 	.dw	0,(Snixie$NIXIE_DisplayChar$85)
      001248 00 00 8D 8A           1757 	.dw	0,(Snixie$NIXIE_DisplayChar$88)
      00124C 00 02                 1758 	.dw	2
      00124E 78                    1759 	.db	120
      00124F 06                    1760 	.sleb128	6
      001250 00 00 8D 73           1761 	.dw	0,(Snixie$NIXIE_DisplayChar$84)
      001254 00 00 8D 78           1762 	.dw	0,(Snixie$NIXIE_DisplayChar$85)
      001258 00 02                 1763 	.dw	2
      00125A 78                    1764 	.db	120
      00125B 0A                    1765 	.sleb128	10
      00125C 00 00 8D 70           1766 	.dw	0,(Snixie$NIXIE_DisplayChar$83)
      001260 00 00 8D 73           1767 	.dw	0,(Snixie$NIXIE_DisplayChar$84)
      001264 00 02                 1768 	.dw	2
      001266 78                    1769 	.db	120
      001267 08                    1770 	.sleb128	8
      001268 00 00 8D 6E           1771 	.dw	0,(Snixie$NIXIE_DisplayChar$82)
      00126C 00 00 8D 70           1772 	.dw	0,(Snixie$NIXIE_DisplayChar$83)
      001270 00 02                 1773 	.dw	2
      001272 78                    1774 	.db	120
      001273 07                    1775 	.sleb128	7
      001274 00 00 8D 4E           1776 	.dw	0,(Snixie$NIXIE_DisplayChar$76)
      001278 00 00 8D 6E           1777 	.dw	0,(Snixie$NIXIE_DisplayChar$82)
      00127C 00 02                 1778 	.dw	2
      00127E 78                    1779 	.db	120
      00127F 06                    1780 	.sleb128	6
      001280 00 00 8D 49           1781 	.dw	0,(Snixie$NIXIE_DisplayChar$75)
      001284 00 00 8D 4E           1782 	.dw	0,(Snixie$NIXIE_DisplayChar$76)
      001288 00 02                 1783 	.dw	2
      00128A 78                    1784 	.db	120
      00128B 0A                    1785 	.sleb128	10
      00128C 00 00 8D 46           1786 	.dw	0,(Snixie$NIXIE_DisplayChar$74)
      001290 00 00 8D 49           1787 	.dw	0,(Snixie$NIXIE_DisplayChar$75)
      001294 00 02                 1788 	.dw	2
      001296 78                    1789 	.db	120
      001297 08                    1790 	.sleb128	8
      001298 00 00 8D 2E           1791 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      00129C 00 00 8D 46           1792 	.dw	0,(Snixie$NIXIE_DisplayChar$74)
      0012A0 00 02                 1793 	.dw	2
      0012A2 78                    1794 	.db	120
      0012A3 06                    1795 	.sleb128	6
      0012A4 00 00 8D 29           1796 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      0012A8 00 00 8D 2E           1797 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      0012AC 00 02                 1798 	.dw	2
      0012AE 78                    1799 	.db	120
      0012AF 0A                    1800 	.sleb128	10
      0012B0 00 00 8D 26           1801 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      0012B4 00 00 8D 29           1802 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      0012B8 00 02                 1803 	.dw	2
      0012BA 78                    1804 	.db	120
      0012BB 08                    1805 	.sleb128	8
      0012BC 00 00 8D 24           1806 	.dw	0,(Snixie$NIXIE_DisplayChar$65)
      0012C0 00 00 8D 26           1807 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      0012C4 00 02                 1808 	.dw	2
      0012C6 78                    1809 	.db	120
      0012C7 07                    1810 	.sleb128	7
      0012C8 00 00 8D 1F           1811 	.dw	0,(Snixie$NIXIE_DisplayChar$62)
      0012CC 00 00 8D 24           1812 	.dw	0,(Snixie$NIXIE_DisplayChar$65)
      0012D0 00 02                 1813 	.dw	2
      0012D2 78                    1814 	.db	120
      0012D3 06                    1815 	.sleb128	6
      0012D4 00 00 8D 1D           1816 	.dw	0,(Snixie$NIXIE_DisplayChar$61)
      0012D8 00 00 8D 1F           1817 	.dw	0,(Snixie$NIXIE_DisplayChar$62)
      0012DC 00 02                 1818 	.dw	2
      0012DE 78                    1819 	.db	120
      0012DF 01                    1820 	.sleb128	1
      0012E0 00 00 00 00           1821 	.dw	0,0
      0012E4 00 00 00 00           1822 	.dw	0,0
      0012E8 00 00 8D 1C           1823 	.dw	0,(Snixie$NIXIE_Init$57)
      0012EC 00 00 8D 1D           1824 	.dw	0,(Snixie$NIXIE_Init$59)
      0012F0 00 02                 1825 	.dw	2
      0012F2 78                    1826 	.db	120
      0012F3 01                    1827 	.sleb128	1
      0012F4 00 00 8C F8           1828 	.dw	0,(Snixie$NIXIE_Init$44)
      0012F8 00 00 8D 1C           1829 	.dw	0,(Snixie$NIXIE_Init$57)
      0012FC 00 02                 1830 	.dw	2
      0012FE 78                    1831 	.db	120
      0012FF 04                    1832 	.sleb128	4
      001300 00 00 8C F4           1833 	.dw	0,(Snixie$NIXIE_Init$43)
      001304 00 00 8C F8           1834 	.dw	0,(Snixie$NIXIE_Init$44)
      001308 00 02                 1835 	.dw	2
      00130A 78                    1836 	.db	120
      00130B 06                    1837 	.sleb128	6
      00130C 00 00 8C F3           1838 	.dw	0,(Snixie$NIXIE_Init$42)
      001310 00 00 8C F4           1839 	.dw	0,(Snixie$NIXIE_Init$43)
      001314 00 02                 1840 	.dw	2
      001316 78                    1841 	.db	120
      001317 05                    1842 	.sleb128	5
      001318 00 00 8C F2           1843 	.dw	0,(Snixie$NIXIE_Init$41)
      00131C 00 00 8C F3           1844 	.dw	0,(Snixie$NIXIE_Init$42)
      001320 00 02                 1845 	.dw	2
      001322 78                    1846 	.db	120
      001323 04                    1847 	.sleb128	4
      001324 00 00 8C EF           1848 	.dw	0,(Snixie$NIXIE_Init$40)
      001328 00 00 8C F2           1849 	.dw	0,(Snixie$NIXIE_Init$41)
      00132C 00 02                 1850 	.dw	2
      00132E 78                    1851 	.db	120
      00132F 06                    1852 	.sleb128	6
      001330 00 00 8C D7           1853 	.dw	0,(Snixie$NIXIE_Init$34)
      001334 00 00 8C EF           1854 	.dw	0,(Snixie$NIXIE_Init$40)
      001338 00 02                 1855 	.dw	2
      00133A 78                    1856 	.db	120
      00133B 04                    1857 	.sleb128	4
      00133C 00 00 8C D3           1858 	.dw	0,(Snixie$NIXIE_Init$33)
      001340 00 00 8C D7           1859 	.dw	0,(Snixie$NIXIE_Init$34)
      001344 00 02                 1860 	.dw	2
      001346 78                    1861 	.db	120
      001347 05                    1862 	.sleb128	5
      001348 00 00 8C D1           1863 	.dw	0,(Snixie$NIXIE_Init$31)
      00134C 00 00 8C D3           1864 	.dw	0,(Snixie$NIXIE_Init$33)
      001350 00 02                 1865 	.dw	2
      001352 78                    1866 	.db	120
      001353 04                    1867 	.sleb128	4
      001354 00 00 8C CC           1868 	.dw	0,(Snixie$NIXIE_Init$30)
      001358 00 00 8C D1           1869 	.dw	0,(Snixie$NIXIE_Init$31)
      00135C 00 02                 1870 	.dw	2
      00135E 78                    1871 	.db	120
      00135F 0C                    1872 	.sleb128	12
      001360 00 00 8C CA           1873 	.dw	0,(Snixie$NIXIE_Init$29)
      001364 00 00 8C CC           1874 	.dw	0,(Snixie$NIXIE_Init$30)
      001368 00 02                 1875 	.dw	2
      00136A 78                    1876 	.db	120
      00136B 0B                    1877 	.sleb128	11
      00136C 00 00 8C C8           1878 	.dw	0,(Snixie$NIXIE_Init$28)
      001370 00 00 8C CA           1879 	.dw	0,(Snixie$NIXIE_Init$29)
      001374 00 02                 1880 	.dw	2
      001376 78                    1881 	.db	120
      001377 0A                    1882 	.sleb128	10
      001378 00 00 8C C6           1883 	.dw	0,(Snixie$NIXIE_Init$27)
      00137C 00 00 8C C8           1884 	.dw	0,(Snixie$NIXIE_Init$28)
      001380 00 02                 1885 	.dw	2
      001382 78                    1886 	.db	120
      001383 09                    1887 	.sleb128	9
      001384 00 00 8C C4           1888 	.dw	0,(Snixie$NIXIE_Init$26)
      001388 00 00 8C C6           1889 	.dw	0,(Snixie$NIXIE_Init$27)
      00138C 00 02                 1890 	.dw	2
      00138E 78                    1891 	.db	120
      00138F 08                    1892 	.sleb128	8
      001390 00 00 8C C2           1893 	.dw	0,(Snixie$NIXIE_Init$25)
      001394 00 00 8C C4           1894 	.dw	0,(Snixie$NIXIE_Init$26)
      001398 00 02                 1895 	.dw	2
      00139A 78                    1896 	.db	120
      00139B 07                    1897 	.sleb128	7
      00139C 00 00 8C C0           1898 	.dw	0,(Snixie$NIXIE_Init$24)
      0013A0 00 00 8C C2           1899 	.dw	0,(Snixie$NIXIE_Init$25)
      0013A4 00 02                 1900 	.dw	2
      0013A6 78                    1901 	.db	120
      0013A7 06                    1902 	.sleb128	6
      0013A8 00 00 8C BE           1903 	.dw	0,(Snixie$NIXIE_Init$23)
      0013AC 00 00 8C C0           1904 	.dw	0,(Snixie$NIXIE_Init$24)
      0013B0 00 02                 1905 	.dw	2
      0013B2 78                    1906 	.db	120
      0013B3 05                    1907 	.sleb128	5
      0013B4 00 00 8C B9           1908 	.dw	0,(Snixie$NIXIE_Init$20)
      0013B8 00 00 8C BE           1909 	.dw	0,(Snixie$NIXIE_Init$23)
      0013BC 00 02                 1910 	.dw	2
      0013BE 78                    1911 	.db	120
      0013BF 04                    1912 	.sleb128	4
      0013C0 00 00 8C B4           1913 	.dw	0,(Snixie$NIXIE_Init$19)
      0013C4 00 00 8C B9           1914 	.dw	0,(Snixie$NIXIE_Init$20)
      0013C8 00 02                 1915 	.dw	2
      0013CA 78                    1916 	.db	120
      0013CB 08                    1917 	.sleb128	8
      0013CC 00 00 8C B2           1918 	.dw	0,(Snixie$NIXIE_Init$18)
      0013D0 00 00 8C B4           1919 	.dw	0,(Snixie$NIXIE_Init$19)
      0013D4 00 02                 1920 	.dw	2
      0013D6 78                    1921 	.db	120
      0013D7 07                    1922 	.sleb128	7
      0013D8 00 00 8C B0           1923 	.dw	0,(Snixie$NIXIE_Init$17)
      0013DC 00 00 8C B2           1924 	.dw	0,(Snixie$NIXIE_Init$18)
      0013E0 00 02                 1925 	.dw	2
      0013E2 78                    1926 	.db	120
      0013E3 06                    1927 	.sleb128	6
      0013E4 00 00 8C AE           1928 	.dw	0,(Snixie$NIXIE_Init$16)
      0013E8 00 00 8C B0           1929 	.dw	0,(Snixie$NIXIE_Init$17)
      0013EC 00 02                 1930 	.dw	2
      0013EE 78                    1931 	.db	120
      0013EF 05                    1932 	.sleb128	5
      0013F0 00 00 8C AC           1933 	.dw	0,(Snixie$NIXIE_Init$14)
      0013F4 00 00 8C AE           1934 	.dw	0,(Snixie$NIXIE_Init$16)
      0013F8 00 02                 1935 	.dw	2
      0013FA 78                    1936 	.db	120
      0013FB 04                    1937 	.sleb128	4
      0013FC 00 00 8C A7           1938 	.dw	0,(Snixie$NIXIE_Init$13)
      001400 00 00 8C AC           1939 	.dw	0,(Snixie$NIXIE_Init$14)
      001404 00 02                 1940 	.dw	2
      001406 78                    1941 	.db	120
      001407 08                    1942 	.sleb128	8
      001408 00 00 8C A5           1943 	.dw	0,(Snixie$NIXIE_Init$12)
      00140C 00 00 8C A7           1944 	.dw	0,(Snixie$NIXIE_Init$13)
      001410 00 02                 1945 	.dw	2
      001412 78                    1946 	.db	120
      001413 07                    1947 	.sleb128	7
      001414 00 00 8C A3           1948 	.dw	0,(Snixie$NIXIE_Init$11)
      001418 00 00 8C A5           1949 	.dw	0,(Snixie$NIXIE_Init$12)
      00141C 00 02                 1950 	.dw	2
      00141E 78                    1951 	.db	120
      00141F 06                    1952 	.sleb128	6
      001420 00 00 8C A1           1953 	.dw	0,(Snixie$NIXIE_Init$10)
      001424 00 00 8C A3           1954 	.dw	0,(Snixie$NIXIE_Init$11)
      001428 00 02                 1955 	.dw	2
      00142A 78                    1956 	.db	120
      00142B 05                    1957 	.sleb128	5
      00142C 00 00 8C 9F           1958 	.dw	0,(Snixie$NIXIE_Init$8)
      001430 00 00 8C A1           1959 	.dw	0,(Snixie$NIXIE_Init$10)
      001434 00 02                 1960 	.dw	2
      001436 78                    1961 	.db	120
      001437 04                    1962 	.sleb128	4
      001438 00 00 8C 9A           1963 	.dw	0,(Snixie$NIXIE_Init$7)
      00143C 00 00 8C 9F           1964 	.dw	0,(Snixie$NIXIE_Init$8)
      001440 00 02                 1965 	.dw	2
      001442 78                    1966 	.db	120
      001443 08                    1967 	.sleb128	8
      001444 00 00 8C 98           1968 	.dw	0,(Snixie$NIXIE_Init$6)
      001448 00 00 8C 9A           1969 	.dw	0,(Snixie$NIXIE_Init$7)
      00144C 00 02                 1970 	.dw	2
      00144E 78                    1971 	.db	120
      00144F 07                    1972 	.sleb128	7
      001450 00 00 8C 96           1973 	.dw	0,(Snixie$NIXIE_Init$5)
      001454 00 00 8C 98           1974 	.dw	0,(Snixie$NIXIE_Init$6)
      001458 00 02                 1975 	.dw	2
      00145A 78                    1976 	.db	120
      00145B 06                    1977 	.sleb128	6
      00145C 00 00 8C 94           1978 	.dw	0,(Snixie$NIXIE_Init$4)
      001460 00 00 8C 96           1979 	.dw	0,(Snixie$NIXIE_Init$5)
      001464 00 02                 1980 	.dw	2
      001466 78                    1981 	.db	120
      001467 05                    1982 	.sleb128	5
      001468 00 00 8C 92           1983 	.dw	0,(Snixie$NIXIE_Init$2)
      00146C 00 00 8C 94           1984 	.dw	0,(Snixie$NIXIE_Init$4)
      001470 00 02                 1985 	.dw	2
      001472 78                    1986 	.db	120
      001473 04                    1987 	.sleb128	4
      001474 00 00 8C 90           1988 	.dw	0,(Snixie$NIXIE_Init$1)
      001478 00 00 8C 92           1989 	.dw	0,(Snixie$NIXIE_Init$2)
      00147C 00 02                 1990 	.dw	2
      00147E 78                    1991 	.db	120
      00147F 01                    1992 	.sleb128	1
      001480 00 00 00 00           1993 	.dw	0,0
      001484 00 00 00 00           1994 	.dw	0,0
                                   1995 
                                   1996 	.area .debug_abbrev (NOLOAD)
      0004D3                       1997 Ldebug_abbrev:
      0004D3 0A                    1998 	.uleb128	10
      0004D4 0F                    1999 	.uleb128	15
      0004D5 00                    2000 	.db	0
      0004D6 0B                    2001 	.uleb128	11
      0004D7 0B                    2002 	.uleb128	11
      0004D8 49                    2003 	.uleb128	73
      0004D9 13                    2004 	.uleb128	19
      0004DA 00                    2005 	.uleb128	0
      0004DB 00                    2006 	.uleb128	0
      0004DC 05                    2007 	.uleb128	5
      0004DD 0B                    2008 	.uleb128	11
      0004DE 00                    2009 	.db	0
      0004DF 00                    2010 	.uleb128	0
      0004E0 00                    2011 	.uleb128	0
      0004E1 0E                    2012 	.uleb128	14
      0004E2 34                    2013 	.uleb128	52
      0004E3 00                    2014 	.db	0
      0004E4 02                    2015 	.uleb128	2
      0004E5 0A                    2016 	.uleb128	10
      0004E6 03                    2017 	.uleb128	3
      0004E7 08                    2018 	.uleb128	8
      0004E8 3F                    2019 	.uleb128	63
      0004E9 0C                    2020 	.uleb128	12
      0004EA 49                    2021 	.uleb128	73
      0004EB 13                    2022 	.uleb128	19
      0004EC 00                    2023 	.uleb128	0
      0004ED 00                    2024 	.uleb128	0
      0004EE 09                    2025 	.uleb128	9
      0004EF 05                    2026 	.uleb128	5
      0004F0 00                    2027 	.db	0
      0004F1 02                    2028 	.uleb128	2
      0004F2 0A                    2029 	.uleb128	10
      0004F3 03                    2030 	.uleb128	3
      0004F4 08                    2031 	.uleb128	8
      0004F5 49                    2032 	.uleb128	73
      0004F6 13                    2033 	.uleb128	19
      0004F7 00                    2034 	.uleb128	0
      0004F8 00                    2035 	.uleb128	0
      0004F9 0C                    2036 	.uleb128	12
      0004FA 01                    2037 	.uleb128	1
      0004FB 01                    2038 	.db	1
      0004FC 01                    2039 	.uleb128	1
      0004FD 13                    2040 	.uleb128	19
      0004FE 0B                    2041 	.uleb128	11
      0004FF 0B                    2042 	.uleb128	11
      000500 49                    2043 	.uleb128	73
      000501 13                    2044 	.uleb128	19
      000502 00                    2045 	.uleb128	0
      000503 00                    2046 	.uleb128	0
      000504 02                    2047 	.uleb128	2
      000505 2E                    2048 	.uleb128	46
      000506 01                    2049 	.db	1
      000507 01                    2050 	.uleb128	1
      000508 13                    2051 	.uleb128	19
      000509 03                    2052 	.uleb128	3
      00050A 08                    2053 	.uleb128	8
      00050B 11                    2054 	.uleb128	17
      00050C 01                    2055 	.uleb128	1
      00050D 12                    2056 	.uleb128	18
      00050E 01                    2057 	.uleb128	1
      00050F 3F                    2058 	.uleb128	63
      000510 0C                    2059 	.uleb128	12
      000511 40                    2060 	.uleb128	64
      000512 06                    2061 	.uleb128	6
      000513 00                    2062 	.uleb128	0
      000514 00                    2063 	.uleb128	0
      000515 06                    2064 	.uleb128	6
      000516 34                    2065 	.uleb128	52
      000517 00                    2066 	.db	0
      000518 02                    2067 	.uleb128	2
      000519 0A                    2068 	.uleb128	10
      00051A 03                    2069 	.uleb128	3
      00051B 08                    2070 	.uleb128	8
      00051C 49                    2071 	.uleb128	73
      00051D 13                    2072 	.uleb128	19
      00051E 00                    2073 	.uleb128	0
      00051F 00                    2074 	.uleb128	0
      000520 08                    2075 	.uleb128	8
      000521 2E                    2076 	.uleb128	46
      000522 01                    2077 	.db	1
      000523 01                    2078 	.uleb128	1
      000524 13                    2079 	.uleb128	19
      000525 03                    2080 	.uleb128	3
      000526 08                    2081 	.uleb128	8
      000527 11                    2082 	.uleb128	17
      000528 01                    2083 	.uleb128	1
      000529 12                    2084 	.uleb128	18
      00052A 01                    2085 	.uleb128	1
      00052B 3F                    2086 	.uleb128	63
      00052C 0C                    2087 	.uleb128	12
      00052D 40                    2088 	.uleb128	64
      00052E 06                    2089 	.uleb128	6
      00052F 49                    2090 	.uleb128	73
      000530 13                    2091 	.uleb128	19
      000531 00                    2092 	.uleb128	0
      000532 00                    2093 	.uleb128	0
      000533 01                    2094 	.uleb128	1
      000534 11                    2095 	.uleb128	17
      000535 01                    2096 	.db	1
      000536 03                    2097 	.uleb128	3
      000537 08                    2098 	.uleb128	8
      000538 10                    2099 	.uleb128	16
      000539 06                    2100 	.uleb128	6
      00053A 13                    2101 	.uleb128	19
      00053B 0B                    2102 	.uleb128	11
      00053C 25                    2103 	.uleb128	37
      00053D 08                    2104 	.uleb128	8
      00053E 00                    2105 	.uleb128	0
      00053F 00                    2106 	.uleb128	0
      000540 03                    2107 	.uleb128	3
      000541 0B                    2108 	.uleb128	11
      000542 01                    2109 	.db	1
      000543 11                    2110 	.uleb128	17
      000544 01                    2111 	.uleb128	1
      000545 12                    2112 	.uleb128	18
      000546 01                    2113 	.uleb128	1
      000547 00                    2114 	.uleb128	0
      000548 00                    2115 	.uleb128	0
      000549 0B                    2116 	.uleb128	11
      00054A 0B                    2117 	.uleb128	11
      00054B 00                    2118 	.db	0
      00054C 11                    2119 	.uleb128	17
      00054D 01                    2120 	.uleb128	1
      00054E 12                    2121 	.uleb128	18
      00054F 01                    2122 	.uleb128	1
      000550 00                    2123 	.uleb128	0
      000551 00                    2124 	.uleb128	0
      000552 04                    2125 	.uleb128	4
      000553 0B                    2126 	.uleb128	11
      000554 01                    2127 	.db	1
      000555 01                    2128 	.uleb128	1
      000556 13                    2129 	.uleb128	19
      000557 11                    2130 	.uleb128	17
      000558 01                    2131 	.uleb128	1
      000559 12                    2132 	.uleb128	18
      00055A 01                    2133 	.uleb128	1
      00055B 00                    2134 	.uleb128	0
      00055C 00                    2135 	.uleb128	0
      00055D 0D                    2136 	.uleb128	13
      00055E 21                    2137 	.uleb128	33
      00055F 00                    2138 	.db	0
      000560 2F                    2139 	.uleb128	47
      000561 0B                    2140 	.uleb128	11
      000562 00                    2141 	.uleb128	0
      000563 00                    2142 	.uleb128	0
      000564 07                    2143 	.uleb128	7
      000565 24                    2144 	.uleb128	36
      000566 00                    2145 	.db	0
      000567 03                    2146 	.uleb128	3
      000568 08                    2147 	.uleb128	8
      000569 0B                    2148 	.uleb128	11
      00056A 0B                    2149 	.uleb128	11
      00056B 3E                    2150 	.uleb128	62
      00056C 0B                    2151 	.uleb128	11
      00056D 00                    2152 	.uleb128	0
      00056E 00                    2153 	.uleb128	0
      00056F 00                    2154 	.uleb128	0
                                   2155 
                                   2156 	.area .debug_info (NOLOAD)
      001734 00 00 02 ED           2157 	.dw	0,Ldebug_info_end-Ldebug_info_start
      001738                       2158 Ldebug_info_start:
      001738 00 02                 2159 	.dw	2
      00173A 00 00 04 D3           2160 	.dw	0,(Ldebug_abbrev)
      00173E 04                    2161 	.db	4
      00173F 01                    2162 	.uleb128	1
      001740 53 6F 75 72 63 65 2F  2163 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      001759 00                    2164 	.db	0
      00175A 00 00 14 C1           2165 	.dw	0,(Ldebug_line_start+-4)
      00175E 01                    2166 	.db	1
      00175F 53 44 43 43 20 76 65  2167 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      001778 00                    2168 	.db	0
      001779 02                    2169 	.uleb128	2
      00177A 00 00 00 B6           2170 	.dw	0,182
      00177E 4E 49 58 49 45 5F 49  2171 	.ascii "NIXIE_Init"
             6E 69 74
      001788 00                    2172 	.db	0
      001789 00 00 8C 90           2173 	.dw	0,(_NIXIE_Init)
      00178D 00 00 8D 1D           2174 	.dw	0,(XG$NIXIE_Init$0$0+1)
      001791 01                    2175 	.db	1
      001792 00 00 12 E8           2176 	.dw	0,(Ldebug_loc_start+1144)
      001796 03                    2177 	.uleb128	3
      001797 00 00 8C D9           2178 	.dw	0,(Snixie$NIXIE_Init$36)
      00179B 00 00 8D 1A           2179 	.dw	0,(Snixie$NIXIE_Init$55)
      00179F 04                    2180 	.uleb128	4
      0017A0 00 00 00 AA           2181 	.dw	0,170
      0017A4 00 00 8C E2           2182 	.dw	0,(Snixie$NIXIE_Init$37)
      0017A8 00 00 8C F8           2183 	.dw	0,(Snixie$NIXIE_Init$45)
      0017AC 03                    2184 	.uleb128	3
      0017AD 00 00 8C FB           2185 	.dw	0,(Snixie$NIXIE_Init$47)
      0017B1 00 00 8D 15           2186 	.dw	0,(Snixie$NIXIE_Init$53)
      0017B5 04                    2187 	.uleb128	4
      0017B6 00 00 00 9E           2188 	.dw	0,158
      0017BA 00 00 8D 03           2189 	.dw	0,(Snixie$NIXIE_Init$50)
      0017BE 00 00 8D 0E           2190 	.dw	0,(Snixie$NIXIE_Init$51)
      0017C2 05                    2191 	.uleb128	5
      0017C3 06                    2192 	.uleb128	6
      0017C4 06                    2193 	.db	6
      0017C5 52                    2194 	.db	82
      0017C6 93                    2195 	.db	147
      0017C7 01                    2196 	.uleb128	1
      0017C8 51                    2197 	.db	81
      0017C9 93                    2198 	.db	147
      0017CA 01                    2199 	.uleb128	1
      0017CB 6A                    2200 	.ascii "j"
      0017CC 00                    2201 	.db	0
      0017CD 00 00 00 C7           2202 	.dw	0,199
      0017D1 00                    2203 	.uleb128	0
      0017D2 06                    2204 	.uleb128	6
      0017D3 02                    2205 	.db	2
      0017D4 91                    2206 	.db	145
      0017D5 7E                    2207 	.sleb128	-2
      0017D6 6B                    2208 	.ascii "k"
      0017D7 00                    2209 	.db	0
      0017D8 00 00 00 C7           2210 	.dw	0,199
      0017DC 00                    2211 	.uleb128	0
      0017DD 00                    2212 	.uleb128	0
      0017DE 06                    2213 	.uleb128	6
      0017DF 02                    2214 	.db	2
      0017E0 91                    2215 	.db	145
      0017E1 7D                    2216 	.sleb128	-3
      0017E2 69                    2217 	.ascii "i"
      0017E3 00                    2218 	.db	0
      0017E4 00 00 00 B6           2219 	.dw	0,182
      0017E8 00                    2220 	.uleb128	0
      0017E9 00                    2221 	.uleb128	0
      0017EA 07                    2222 	.uleb128	7
      0017EB 75 6E 73 69 67 6E 65  2223 	.ascii "unsigned char"
             64 20 63 68 61 72
      0017F8 00                    2224 	.db	0
      0017F9 01                    2225 	.db	1
      0017FA 08                    2226 	.db	8
      0017FB 07                    2227 	.uleb128	7
      0017FC 75 6E 73 69 67 6E 65  2228 	.ascii "unsigned int"
             64 20 69 6E 74
      001808 00                    2229 	.db	0
      001809 02                    2230 	.db	2
      00180A 07                    2231 	.db	7
      00180B 08                    2232 	.uleb128	8
      00180C 00 00 01 7A           2233 	.dw	0,378
      001810 4E 49 58 49 45 5F 44  2234 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      001821 00                    2235 	.db	0
      001822 00 00 8D 1D           2236 	.dw	0,(_NIXIE_DisplayChar)
      001826 00 00 8D B3           2237 	.dw	0,(XG$NIXIE_DisplayChar$0$0+1)
      00182A 01                    2238 	.db	1
      00182B 00 00 12 2C           2239 	.dw	0,(Ldebug_loc_start+956)
      00182F 00 00 00 C7           2240 	.dw	0,199
      001833 09                    2241 	.uleb128	9
      001834 02                    2242 	.db	2
      001835 91                    2243 	.db	145
      001836 02                    2244 	.sleb128	2
      001837 74 75 62 65 4E 75 6D  2245 	.ascii "tubeNum"
      00183E 00                    2246 	.db	0
      00183F 00 00 00 B6           2247 	.dw	0,182
      001843 0A                    2248 	.uleb128	10
      001844 02                    2249 	.db	2
      001845 00 00 00 B6           2250 	.dw	0,182
      001849 09                    2251 	.uleb128	9
      00184A 02                    2252 	.db	2
      00184B 91                    2253 	.db	145
      00184C 03                    2254 	.sleb128	3
      00184D 63 68 61 72 61 63 74  2255 	.ascii "character"
             65 72
      001856 00                    2256 	.db	0
      001857 00 00 01 0F           2257 	.dw	0,271
      00185B 09                    2258 	.uleb128	9
      00185C 02                    2259 	.db	2
      00185D 91                    2260 	.db	145
      00185E 05                    2261 	.sleb128	5
      00185F 74 75 62 65 53 74 61  2262 	.ascii "tubeState"
             74 65
      001868 00                    2263 	.db	0
      001869 00 00 00 B6           2264 	.dw	0,182
      00186D 04                    2265 	.uleb128	4
      00186E 00 00 01 5A           2266 	.dw	0,346
      001872 00 00 8D 38           2267 	.dw	0,(Snixie$NIXIE_DisplayChar$71)
      001876 00 00 8D 6C           2268 	.dw	0,(Snixie$NIXIE_DisplayChar$80)
      00187A 0B                    2269 	.uleb128	11
      00187B 00 00 8D 3E           2270 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      00187F 00 00 8D 68           2271 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      001883 06                    2272 	.uleb128	6
      001884 02                    2273 	.db	2
      001885 91                    2274 	.db	145
      001886 7F                    2275 	.sleb128	-1
      001887 69                    2276 	.ascii "i"
      001888 00                    2277 	.db	0
      001889 00 00 00 B6           2278 	.dw	0,182
      00188D 00                    2279 	.uleb128	0
      00188E 06                    2280 	.uleb128	6
      00188F 02                    2281 	.db	2
      001890 91                    2282 	.db	145
      001891 7D                    2283 	.sleb128	-3
      001892 74 6D 70              2284 	.ascii "tmp"
      001895 00                    2285 	.db	0
      001896 00 00 00 C7           2286 	.dw	0,199
      00189A 06                    2287 	.uleb128	6
      00189B 06                    2288 	.db	6
      00189C 50                    2289 	.db	80
      00189D 93                    2290 	.db	147
      00189E 01                    2291 	.uleb128	1
      00189F 51                    2292 	.db	81
      0018A0 93                    2293 	.db	147
      0018A1 01                    2294 	.uleb128	1
      0018A2 6F 75 74 70 75 74     2295 	.ascii "output"
      0018A8 00                    2296 	.db	0
      0018A9 00 00 00 C7           2297 	.dw	0,199
      0018AD 00                    2298 	.uleb128	0
      0018AE 02                    2299 	.uleb128	2
      0018AF 00 00 02 77           2300 	.dw	0,631
      0018B3 4E 49 58 49 45 5F 44  2301 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      0018C4 00                    2302 	.db	0
      0018C5 00 00 8D B3           2303 	.dw	0,(_NIXIE_DisplayTime)
      0018C9 00 00 8F 88           2304 	.dw	0,(XG$NIXIE_DisplayTime$0$0+1)
      0018CD 01                    2305 	.db	1
      0018CE 00 00 0E 70           2306 	.dw	0,(Ldebug_loc_start)
      0018D2 09                    2307 	.uleb128	9
      0018D3 02                    2308 	.db	2
      0018D4 91                    2309 	.db	145
      0018D5 02                    2310 	.sleb128	2
      0018D6 68 6F 75 72           2311 	.ascii "hour"
      0018DA 00                    2312 	.db	0
      0018DB 00 00 00 B6           2313 	.dw	0,182
      0018DF 09                    2314 	.uleb128	9
      0018E0 02                    2315 	.db	2
      0018E1 91                    2316 	.db	145
      0018E2 03                    2317 	.sleb128	3
      0018E3 6D 69 6E              2318 	.ascii "min"
      0018E6 00                    2319 	.db	0
      0018E7 00 00 00 B6           2320 	.dw	0,182
      0018EB 04                    2321 	.uleb128	4
      0018EC 00 00 01 DD           2322 	.dw	0,477
      0018F0 00 00 8E 80           2323 	.dw	0,(Snixie$NIXIE_DisplayTime$158)
      0018F4 00 00 8F 85           2324 	.dw	0,(Snixie$NIXIE_DisplayTime$226)
      0018F8 06                    2325 	.uleb128	6
      0018F9 01                    2326 	.db	1
      0018FA 51                    2327 	.db	81
      0018FB 74 6D 70 31           2328 	.ascii "tmp1"
      0018FF 00                    2329 	.db	0
      001900 00 00 00 B6           2330 	.dw	0,182
      001904 06                    2331 	.uleb128	6
      001905 01                    2332 	.db	1
      001906 50                    2333 	.db	80
      001907 74 6D 70 32           2334 	.ascii "tmp2"
      00190B 00                    2335 	.db	0
      00190C 00 00 00 B6           2336 	.dw	0,182
      001910 00                    2337 	.uleb128	0
      001911 06                    2338 	.uleb128	6
      001912 02                    2339 	.db	2
      001913 91                    2340 	.db	145
      001914 77                    2341 	.sleb128	-9
      001915 74 75 62 65 31        2342 	.ascii "tube1"
      00191A 00                    2343 	.db	0
      00191B 00 00 00 C7           2344 	.dw	0,199
      00191F 06                    2345 	.uleb128	6
      001920 02                    2346 	.db	2
      001921 91                    2347 	.db	145
      001922 79                    2348 	.sleb128	-7
      001923 74 75 62 65 32        2349 	.ascii "tube2"
      001928 00                    2350 	.db	0
      001929 00 00 00 C7           2351 	.dw	0,199
      00192D 06                    2352 	.uleb128	6
      00192E 02                    2353 	.db	2
      00192F 91                    2354 	.db	145
      001930 7B                    2355 	.sleb128	-5
      001931 74 75 62 65 33        2356 	.ascii "tube3"
      001936 00                    2357 	.db	0
      001937 00 00 00 C7           2358 	.dw	0,199
      00193B 06                    2359 	.uleb128	6
      00193C 02                    2360 	.db	2
      00193D 91                    2361 	.db	145
      00193E 7D                    2362 	.sleb128	-3
      00193F 74 75 62 65 34        2363 	.ascii "tube4"
      001944 00                    2364 	.db	0
      001945 00 00 00 C7           2365 	.dw	0,199
      001949 0C                    2366 	.uleb128	12
      00194A 00 00 02 22           2367 	.dw	0,546
      00194E 02                    2368 	.db	2
      00194F 00 00 00 B6           2369 	.dw	0,182
      001953 0D                    2370 	.uleb128	13
      001954 01                    2371 	.db	1
      001955 00                    2372 	.uleb128	0
      001956 06                    2373 	.uleb128	6
      001957 02                    2374 	.db	2
      001958 91                    2375 	.db	145
      001959 6E                    2376 	.sleb128	-18
      00195A 74 75 62 65 31 73     2377 	.ascii "tube1s"
      001960 00                    2378 	.db	0
      001961 00 00 02 15           2379 	.dw	0,533
      001965 06                    2380 	.uleb128	6
      001966 02                    2381 	.db	2
      001967 91                    2382 	.db	145
      001968 70                    2383 	.sleb128	-16
      001969 74 75 62 65 32 73     2384 	.ascii "tube2s"
      00196F 00                    2385 	.db	0
      001970 00 00 02 15           2386 	.dw	0,533
      001974 0C                    2387 	.uleb128	12
      001975 00 00 02 4D           2388 	.dw	0,589
      001979 03                    2389 	.db	3
      00197A 00 00 00 B6           2390 	.dw	0,182
      00197E 0D                    2391 	.uleb128	13
      00197F 02                    2392 	.db	2
      001980 00                    2393 	.uleb128	0
      001981 06                    2394 	.uleb128	6
      001982 02                    2395 	.db	2
      001983 91                    2396 	.db	145
      001984 72                    2397 	.sleb128	-14
      001985 74 75 62 65 33 73     2398 	.ascii "tube3s"
      00198B 00                    2399 	.db	0
      00198C 00 00 02 40           2400 	.dw	0,576
      001990 06                    2401 	.uleb128	6
      001991 02                    2402 	.db	2
      001992 91                    2403 	.db	145
      001993 75                    2404 	.sleb128	-11
      001994 74 75 62 65 34 73     2405 	.ascii "tube4s"
      00199A 00                    2406 	.db	0
      00199B 00 00 02 15           2407 	.dw	0,533
      00199F 06                    2408 	.uleb128	6
      0019A0 01                    2409 	.db	1
      0019A1 51                    2410 	.db	81
      0019A2 74 6D 70              2411 	.ascii "tmp"
      0019A5 00                    2412 	.db	0
      0019A6 00 00 00 B6           2413 	.dw	0,182
      0019AA 00                    2414 	.uleb128	0
      0019AB 0E                    2415 	.uleb128	14
      0019AC 05                    2416 	.db	5
      0019AD 03                    2417 	.db	3
      0019AE 00 00 00 28           2418 	.dw	0,(_tube_state)
      0019B2 74 75 62 65 5F 73 74  2419 	.ascii "tube_state"
             61 74 65
      0019BC 00                    2420 	.db	0
      0019BD 01                    2421 	.db	1
      0019BE 00 00 00 B6           2422 	.dw	0,182
      0019C2 0E                    2423 	.uleb128	14
      0019C3 05                    2424 	.db	5
      0019C4 03                    2425 	.db	3
      0019C5 00 00 00 29           2426 	.dw	0,(_nixie_tube1)
      0019C9 6E 69 78 69 65 5F 74  2427 	.ascii "nixie_tube1"
             75 62 65 31
      0019D4 00                    2428 	.db	0
      0019D5 01                    2429 	.db	1
      0019D6 00 00 00 B6           2430 	.dw	0,182
      0019DA 0E                    2431 	.uleb128	14
      0019DB 05                    2432 	.db	5
      0019DC 03                    2433 	.db	3
      0019DD 00 00 00 2A           2434 	.dw	0,(_nixie_tube2)
      0019E1 6E 69 78 69 65 5F 74  2435 	.ascii "nixie_tube2"
             75 62 65 32
      0019EC 00                    2436 	.db	0
      0019ED 01                    2437 	.db	1
      0019EE 00 00 00 B6           2438 	.dw	0,182
      0019F2 0E                    2439 	.uleb128	14
      0019F3 05                    2440 	.db	5
      0019F4 03                    2441 	.db	3
      0019F5 00 00 00 2B           2442 	.dw	0,(_nixie_tube3)
      0019F9 6E 69 78 69 65 5F 74  2443 	.ascii "nixie_tube3"
             75 62 65 33
      001A04 00                    2444 	.db	0
      001A05 01                    2445 	.db	1
      001A06 00 00 00 B6           2446 	.dw	0,182
      001A0A 0E                    2447 	.uleb128	14
      001A0B 05                    2448 	.db	5
      001A0C 03                    2449 	.db	3
      001A0D 00 00 00 2C           2450 	.dw	0,(_nixie_tube4)
      001A11 6E 69 78 69 65 5F 74  2451 	.ascii "nixie_tube4"
             75 62 65 34
      001A1C 00                    2452 	.db	0
      001A1D 01                    2453 	.db	1
      001A1E 00 00 00 B6           2454 	.dw	0,182
      001A22 00                    2455 	.uleb128	0
      001A23 00                    2456 	.uleb128	0
      001A24 00                    2457 	.uleb128	0
      001A25                       2458 Ldebug_info_end:
                                   2459 
                                   2460 	.area .debug_pubnames (NOLOAD)
      000576 00 00 00 98           2461 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00057A                       2462 Ldebug_pubnames_start:
      00057A 00 02                 2463 	.dw	2
      00057C 00 00 17 34           2464 	.dw	0,(Ldebug_info_start-4)
      000580 00 00 02 F1           2465 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000584 00 00 00 45           2466 	.dw	0,69
      000588 4E 49 58 49 45 5F 49  2467 	.ascii "NIXIE_Init"
             6E 69 74
      000592 00                    2468 	.db	0
      000593 00 00 00 D7           2469 	.dw	0,215
      000597 4E 49 58 49 45 5F 44  2470 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      0005A8 00                    2471 	.db	0
      0005A9 00 00 01 7A           2472 	.dw	0,378
      0005AD 4E 49 58 49 45 5F 44  2473 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      0005BE 00                    2474 	.db	0
      0005BF 00 00 02 77           2475 	.dw	0,631
      0005C3 74 75 62 65 5F 73 74  2476 	.ascii "tube_state"
             61 74 65
      0005CD 00                    2477 	.db	0
      0005CE 00 00 02 8E           2478 	.dw	0,654
      0005D2 6E 69 78 69 65 5F 74  2479 	.ascii "nixie_tube1"
             75 62 65 31
      0005DD 00                    2480 	.db	0
      0005DE 00 00 02 A6           2481 	.dw	0,678
      0005E2 6E 69 78 69 65 5F 74  2482 	.ascii "nixie_tube2"
             75 62 65 32
      0005ED 00                    2483 	.db	0
      0005EE 00 00 02 BE           2484 	.dw	0,702
      0005F2 6E 69 78 69 65 5F 74  2485 	.ascii "nixie_tube3"
             75 62 65 33
      0005FD 00                    2486 	.db	0
      0005FE 00 00 02 D6           2487 	.dw	0,726
      000602 6E 69 78 69 65 5F 74  2488 	.ascii "nixie_tube4"
             75 62 65 34
      00060D 00                    2489 	.db	0
      00060E 00 00 00 00           2490 	.dw	0,0
      000612                       2491 Ldebug_pubnames_end:
                                   2492 
                                   2493 	.area .debug_frame (NOLOAD)
      000E9C 00 00                 2494 	.dw	0
      000E9E 00 0E                 2495 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000EA0                       2496 Ldebug_CIE0_start:
      000EA0 FF FF                 2497 	.dw	0xffff
      000EA2 FF FF                 2498 	.dw	0xffff
      000EA4 01                    2499 	.db	1
      000EA5 00                    2500 	.db	0
      000EA6 01                    2501 	.uleb128	1
      000EA7 7F                    2502 	.sleb128	-1
      000EA8 09                    2503 	.db	9
      000EA9 0C                    2504 	.db	12
      000EAA 08                    2505 	.uleb128	8
      000EAB 02                    2506 	.uleb128	2
      000EAC 89                    2507 	.db	137
      000EAD 01                    2508 	.uleb128	1
      000EAE                       2509 Ldebug_CIE0_end:
      000EAE 00 00 02 35           2510 	.dw	0,565
      000EB2 00 00 0E 9C           2511 	.dw	0,(Ldebug_CIE0_start-4)
      000EB6 00 00 8D B3           2512 	.dw	0,(Snixie$NIXIE_DisplayTime$98)	;initial loc
      000EBA 00 00 01 D5           2513 	.dw	0,Snixie$NIXIE_DisplayTime$230-Snixie$NIXIE_DisplayTime$98
      000EBE 01                    2514 	.db	1
      000EBF 00 00 8D B3           2515 	.dw	0,(Snixie$NIXIE_DisplayTime$98)
      000EC3 0E                    2516 	.db	14
      000EC4 02                    2517 	.uleb128	2
      000EC5 01                    2518 	.db	1
      000EC6 00 00 8D B5           2519 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      000ECA 0E                    2520 	.db	14
      000ECB 14                    2521 	.uleb128	20
      000ECC 01                    2522 	.db	1
      000ECD 00 00 8D DE           2523 	.dw	0,(Snixie$NIXIE_DisplayTime$102)
      000ED1 0E                    2524 	.db	14
      000ED2 15                    2525 	.uleb128	21
      000ED3 01                    2526 	.db	1
      000ED4 00 00 8D E0           2527 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      000ED8 0E                    2528 	.db	14
      000ED9 16                    2529 	.uleb128	22
      000EDA 01                    2530 	.db	1
      000EDB 00 00 8D E3           2531 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      000EDF 0E                    2532 	.db	14
      000EE0 18                    2533 	.uleb128	24
      000EE1 01                    2534 	.db	1
      000EE2 00 00 8D E8           2535 	.dw	0,(Snixie$NIXIE_DisplayTime$105)
      000EE6 0E                    2536 	.db	14
      000EE7 14                    2537 	.uleb128	20
      000EE8 01                    2538 	.db	1
      000EE9 00 00 8D EB           2539 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      000EED 0E                    2540 	.db	14
      000EEE 16                    2541 	.uleb128	22
      000EEF 01                    2542 	.db	1
      000EF0 00 00 8D EE           2543 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      000EF4 0E                    2544 	.db	14
      000EF5 14                    2545 	.uleb128	20
      000EF6 01                    2546 	.db	1
      000EF7 00 00 8D F2           2547 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      000EFB 0E                    2548 	.db	14
      000EFC 15                    2549 	.uleb128	21
      000EFD 01                    2550 	.db	1
      000EFE 00 00 8D F4           2551 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      000F02 0E                    2552 	.db	14
      000F03 16                    2553 	.uleb128	22
      000F04 01                    2554 	.db	1
      000F05 00 00 8D F7           2555 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      000F09 0E                    2556 	.db	14
      000F0A 18                    2557 	.uleb128	24
      000F0B 01                    2558 	.db	1
      000F0C 00 00 8D FC           2559 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      000F10 0E                    2560 	.db	14
      000F11 14                    2561 	.uleb128	20
      000F12 01                    2562 	.db	1
      000F13 00 00 8D FF           2563 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      000F17 0E                    2564 	.db	14
      000F18 16                    2565 	.uleb128	22
      000F19 01                    2566 	.db	1
      000F1A 00 00 8E 02           2567 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      000F1E 0E                    2568 	.db	14
      000F1F 14                    2569 	.uleb128	20
      000F20 01                    2570 	.db	1
      000F21 00 00 8E 0C           2571 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      000F25 0E                    2572 	.db	14
      000F26 15                    2573 	.uleb128	21
      000F27 01                    2574 	.db	1
      000F28 00 00 8E 0E           2575 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      000F2C 0E                    2576 	.db	14
      000F2D 16                    2577 	.uleb128	22
      000F2E 01                    2578 	.db	1
      000F2F 00 00 8E 11           2579 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      000F33 0E                    2580 	.db	14
      000F34 18                    2581 	.uleb128	24
      000F35 01                    2582 	.db	1
      000F36 00 00 8E 16           2583 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      000F3A 0E                    2584 	.db	14
      000F3B 14                    2585 	.uleb128	20
      000F3C 01                    2586 	.db	1
      000F3D 00 00 8E 19           2587 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      000F41 0E                    2588 	.db	14
      000F42 16                    2589 	.uleb128	22
      000F43 01                    2590 	.db	1
      000F44 00 00 8E 1C           2591 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      000F48 0E                    2592 	.db	14
      000F49 14                    2593 	.uleb128	20
      000F4A 01                    2594 	.db	1
      000F4B 00 00 8E 20           2595 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      000F4F 0E                    2596 	.db	14
      000F50 15                    2597 	.uleb128	21
      000F51 01                    2598 	.db	1
      000F52 00 00 8E 22           2599 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      000F56 0E                    2600 	.db	14
      000F57 16                    2601 	.uleb128	22
      000F58 01                    2602 	.db	1
      000F59 00 00 8E 25           2603 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      000F5D 0E                    2604 	.db	14
      000F5E 18                    2605 	.uleb128	24
      000F5F 01                    2606 	.db	1
      000F60 00 00 8E 2A           2607 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      000F64 0E                    2608 	.db	14
      000F65 14                    2609 	.uleb128	20
      000F66 01                    2610 	.db	1
      000F67 00 00 8E 2D           2611 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      000F6B 0E                    2612 	.db	14
      000F6C 16                    2613 	.uleb128	22
      000F6D 01                    2614 	.db	1
      000F6E 00 00 8E 30           2615 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      000F72 0E                    2616 	.db	14
      000F73 14                    2617 	.uleb128	20
      000F74 01                    2618 	.db	1
      000F75 00 00 8E 35           2619 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      000F79 0E                    2620 	.db	14
      000F7A 15                    2621 	.uleb128	21
      000F7B 01                    2622 	.db	1
      000F7C 00 00 8E 39           2623 	.dw	0,(Snixie$NIXIE_DisplayTime$135)
      000F80 0E                    2624 	.db	14
      000F81 17                    2625 	.uleb128	23
      000F82 01                    2626 	.db	1
      000F83 00 00 8E 3B           2627 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      000F87 0E                    2628 	.db	14
      000F88 18                    2629 	.uleb128	24
      000F89 01                    2630 	.db	1
      000F8A 00 00 8E 40           2631 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      000F8E 0E                    2632 	.db	14
      000F8F 14                    2633 	.uleb128	20
      000F90 01                    2634 	.db	1
      000F91 00 00 8E 45           2635 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      000F95 0E                    2636 	.db	14
      000F96 15                    2637 	.uleb128	21
      000F97 01                    2638 	.db	1
      000F98 00 00 8E 4A           2639 	.dw	0,(Snixie$NIXIE_DisplayTime$140)
      000F9C 0E                    2640 	.db	14
      000F9D 17                    2641 	.uleb128	23
      000F9E 01                    2642 	.db	1
      000F9F 00 00 8E 4C           2643 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      000FA3 0E                    2644 	.db	14
      000FA4 18                    2645 	.uleb128	24
      000FA5 01                    2646 	.db	1
      000FA6 00 00 8E 51           2647 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      000FAA 0E                    2648 	.db	14
      000FAB 14                    2649 	.uleb128	20
      000FAC 01                    2650 	.db	1
      000FAD 00 00 8E 56           2651 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      000FB1 0E                    2652 	.db	14
      000FB2 15                    2653 	.uleb128	21
      000FB3 01                    2654 	.db	1
      000FB4 00 00 8E 5B           2655 	.dw	0,(Snixie$NIXIE_DisplayTime$145)
      000FB8 0E                    2656 	.db	14
      000FB9 17                    2657 	.uleb128	23
      000FBA 01                    2658 	.db	1
      000FBB 00 00 8E 5D           2659 	.dw	0,(Snixie$NIXIE_DisplayTime$146)
      000FBF 0E                    2660 	.db	14
      000FC0 18                    2661 	.uleb128	24
      000FC1 01                    2662 	.db	1
      000FC2 00 00 8E 62           2663 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      000FC6 0E                    2664 	.db	14
      000FC7 14                    2665 	.uleb128	20
      000FC8 01                    2666 	.db	1
      000FC9 00 00 8E 67           2667 	.dw	0,(Snixie$NIXIE_DisplayTime$149)
      000FCD 0E                    2668 	.db	14
      000FCE 15                    2669 	.uleb128	21
      000FCF 01                    2670 	.db	1
      000FD0 00 00 8E 6C           2671 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000FD4 0E                    2672 	.db	14
      000FD5 17                    2673 	.uleb128	23
      000FD6 01                    2674 	.db	1
      000FD7 00 00 8E 6E           2675 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      000FDB 0E                    2676 	.db	14
      000FDC 18                    2677 	.uleb128	24
      000FDD 01                    2678 	.db	1
      000FDE 00 00 8E 73           2679 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000FE2 0E                    2680 	.db	14
      000FE3 14                    2681 	.uleb128	20
      000FE4 01                    2682 	.db	1
      000FE5 00 00 8E 77           2683 	.dw	0,(Snixie$NIXIE_DisplayTime$154)
      000FE9 0E                    2684 	.db	14
      000FEA 15                    2685 	.uleb128	21
      000FEB 01                    2686 	.db	1
      000FEC 00 00 8E 79           2687 	.dw	0,(Snixie$NIXIE_DisplayTime$155)
      000FF0 0E                    2688 	.db	14
      000FF1 16                    2689 	.uleb128	22
      000FF2 01                    2690 	.db	1
      000FF3 00 00 8E 7B           2691 	.dw	0,(Snixie$NIXIE_DisplayTime$156)
      000FF7 0E                    2692 	.db	14
      000FF8 17                    2693 	.uleb128	23
      000FF9 01                    2694 	.db	1
      000FFA 00 00 8E 80           2695 	.dw	0,(Snixie$NIXIE_DisplayTime$157)
      000FFE 0E                    2696 	.db	14
      000FFF 14                    2697 	.uleb128	20
      001000 01                    2698 	.db	1
      001001 00 00 8E 92           2699 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      001005 0E                    2700 	.db	14
      001006 16                    2701 	.uleb128	22
      001007 01                    2702 	.db	1
      001008 00 00 8E 95           2703 	.dw	0,(Snixie$NIXIE_DisplayTime$163)
      00100C 0E                    2704 	.db	14
      00100D 14                    2705 	.uleb128	20
      00100E 01                    2706 	.db	1
      00100F 00 00 8E 96           2707 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      001013 0E                    2708 	.db	14
      001014 15                    2709 	.uleb128	21
      001015 01                    2710 	.db	1
      001016 00 00 8E 9A           2711 	.dw	0,(Snixie$NIXIE_DisplayTime$166)
      00101A 0E                    2712 	.db	14
      00101B 14                    2713 	.uleb128	20
      00101C 01                    2714 	.db	1
      00101D 00 00 8E 9C           2715 	.dw	0,(Snixie$NIXIE_DisplayTime$168)
      001021 0E                    2716 	.db	14
      001022 15                    2717 	.uleb128	21
      001023 01                    2718 	.db	1
      001024 00 00 8E A1           2719 	.dw	0,(Snixie$NIXIE_DisplayTime$169)
      001028 0E                    2720 	.db	14
      001029 14                    2721 	.uleb128	20
      00102A 01                    2722 	.db	1
      00102B 00 00 8E C3           2723 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      00102F 0E                    2724 	.db	14
      001030 15                    2725 	.uleb128	21
      001031 01                    2726 	.db	1
      001032 00 00 8E C7           2727 	.dw	0,(Snixie$NIXIE_DisplayTime$177)
      001036 0E                    2728 	.db	14
      001037 14                    2729 	.uleb128	20
      001038 01                    2730 	.db	1
      001039 00 00 8E C9           2731 	.dw	0,(Snixie$NIXIE_DisplayTime$179)
      00103D 0E                    2732 	.db	14
      00103E 15                    2733 	.uleb128	21
      00103F 01                    2734 	.db	1
      001040 00 00 8E CE           2735 	.dw	0,(Snixie$NIXIE_DisplayTime$180)
      001044 0E                    2736 	.db	14
      001045 14                    2737 	.uleb128	20
      001046 01                    2738 	.db	1
      001047 00 00 8E EF           2739 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      00104B 0E                    2740 	.db	14
      00104C 15                    2741 	.uleb128	21
      00104D 01                    2742 	.db	1
      00104E 00 00 8E F3           2743 	.dw	0,(Snixie$NIXIE_DisplayTime$186)
      001052 0E                    2744 	.db	14
      001053 14                    2745 	.uleb128	20
      001054 01                    2746 	.db	1
      001055 00 00 8E F5           2747 	.dw	0,(Snixie$NIXIE_DisplayTime$188)
      001059 0E                    2748 	.db	14
      00105A 15                    2749 	.uleb128	21
      00105B 01                    2750 	.db	1
      00105C 00 00 8E FA           2751 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      001060 0E                    2752 	.db	14
      001061 14                    2753 	.uleb128	20
      001062 01                    2754 	.db	1
      001063 00 00 8F 0F           2755 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      001067 0E                    2756 	.db	14
      001068 16                    2757 	.uleb128	22
      001069 01                    2758 	.db	1
      00106A 00 00 8F 12           2759 	.dw	0,(Snixie$NIXIE_DisplayTime$194)
      00106E 0E                    2760 	.db	14
      00106F 14                    2761 	.uleb128	20
      001070 01                    2762 	.db	1
      001071 00 00 8F 13           2763 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      001075 0E                    2764 	.db	14
      001076 15                    2765 	.uleb128	21
      001077 01                    2766 	.db	1
      001078 00 00 8F 17           2767 	.dw	0,(Snixie$NIXIE_DisplayTime$197)
      00107C 0E                    2768 	.db	14
      00107D 14                    2769 	.uleb128	20
      00107E 01                    2770 	.db	1
      00107F 00 00 8F 19           2771 	.dw	0,(Snixie$NIXIE_DisplayTime$199)
      001083 0E                    2772 	.db	14
      001084 15                    2773 	.uleb128	21
      001085 01                    2774 	.db	1
      001086 00 00 8F 1E           2775 	.dw	0,(Snixie$NIXIE_DisplayTime$200)
      00108A 0E                    2776 	.db	14
      00108B 14                    2777 	.uleb128	20
      00108C 01                    2778 	.db	1
      00108D 00 00 8F 40           2779 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      001091 0E                    2780 	.db	14
      001092 15                    2781 	.uleb128	21
      001093 01                    2782 	.db	1
      001094 00 00 8F 44           2783 	.dw	0,(Snixie$NIXIE_DisplayTime$208)
      001098 0E                    2784 	.db	14
      001099 14                    2785 	.uleb128	20
      00109A 01                    2786 	.db	1
      00109B 00 00 8F 46           2787 	.dw	0,(Snixie$NIXIE_DisplayTime$210)
      00109F 0E                    2788 	.db	14
      0010A0 15                    2789 	.uleb128	21
      0010A1 01                    2790 	.db	1
      0010A2 00 00 8F 4B           2791 	.dw	0,(Snixie$NIXIE_DisplayTime$211)
      0010A6 0E                    2792 	.db	14
      0010A7 14                    2793 	.uleb128	20
      0010A8 01                    2794 	.db	1
      0010A9 00 00 8F 6C           2795 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      0010AD 0E                    2796 	.db	14
      0010AE 15                    2797 	.uleb128	21
      0010AF 01                    2798 	.db	1
      0010B0 00 00 8F 70           2799 	.dw	0,(Snixie$NIXIE_DisplayTime$217)
      0010B4 0E                    2800 	.db	14
      0010B5 14                    2801 	.uleb128	20
      0010B6 01                    2802 	.db	1
      0010B7 00 00 8F 72           2803 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      0010BB 0E                    2804 	.db	14
      0010BC 15                    2805 	.uleb128	21
      0010BD 01                    2806 	.db	1
      0010BE 00 00 8F 77           2807 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      0010C2 0E                    2808 	.db	14
      0010C3 14                    2809 	.uleb128	20
      0010C4 01                    2810 	.db	1
      0010C5 00 00 8F 7C           2811 	.dw	0,(Snixie$NIXIE_DisplayTime$222)
      0010C9 0E                    2812 	.db	14
      0010CA 15                    2813 	.uleb128	21
      0010CB 01                    2814 	.db	1
      0010CC 00 00 8F 7E           2815 	.dw	0,(Snixie$NIXIE_DisplayTime$223)
      0010D0 0E                    2816 	.db	14
      0010D1 16                    2817 	.uleb128	22
      0010D2 01                    2818 	.db	1
      0010D3 00 00 8F 80           2819 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      0010D7 0E                    2820 	.db	14
      0010D8 17                    2821 	.uleb128	23
      0010D9 01                    2822 	.db	1
      0010DA 00 00 8F 85           2823 	.dw	0,(Snixie$NIXIE_DisplayTime$225)
      0010DE 0E                    2824 	.db	14
      0010DF 14                    2825 	.uleb128	20
      0010E0 01                    2826 	.db	1
      0010E1 00 00 8F 87           2827 	.dw	0,(Snixie$NIXIE_DisplayTime$228)
      0010E5 0E                    2828 	.db	14
      0010E6 02                    2829 	.uleb128	2
                                   2830 
                                   2831 	.area .debug_frame (NOLOAD)
      0010E7 00 00                 2832 	.dw	0
      0010E9 00 0E                 2833 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0010EB                       2834 Ldebug_CIE1_start:
      0010EB FF FF                 2835 	.dw	0xffff
      0010ED FF FF                 2836 	.dw	0xffff
      0010EF 01                    2837 	.db	1
      0010F0 00                    2838 	.db	0
      0010F1 01                    2839 	.uleb128	1
      0010F2 7F                    2840 	.sleb128	-1
      0010F3 09                    2841 	.db	9
      0010F4 0C                    2842 	.db	12
      0010F5 08                    2843 	.uleb128	8
      0010F6 02                    2844 	.uleb128	2
      0010F7 89                    2845 	.db	137
      0010F8 01                    2846 	.uleb128	1
      0010F9                       2847 Ldebug_CIE1_end:
      0010F9 00 00 00 75           2848 	.dw	0,117
      0010FD 00 00 10 E7           2849 	.dw	0,(Ldebug_CIE1_start-4)
      001101 00 00 8D 1D           2850 	.dw	0,(Snixie$NIXIE_DisplayChar$61)	;initial loc
      001105 00 00 00 96           2851 	.dw	0,Snixie$NIXIE_DisplayChar$96-Snixie$NIXIE_DisplayChar$61
      001109 01                    2852 	.db	1
      00110A 00 00 8D 1D           2853 	.dw	0,(Snixie$NIXIE_DisplayChar$61)
      00110E 0E                    2854 	.db	14
      00110F 02                    2855 	.uleb128	2
      001110 01                    2856 	.db	1
      001111 00 00 8D 1F           2857 	.dw	0,(Snixie$NIXIE_DisplayChar$62)
      001115 0E                    2858 	.db	14
      001116 07                    2859 	.uleb128	7
      001117 01                    2860 	.db	1
      001118 00 00 8D 24           2861 	.dw	0,(Snixie$NIXIE_DisplayChar$65)
      00111C 0E                    2862 	.db	14
      00111D 08                    2863 	.uleb128	8
      00111E 01                    2864 	.db	1
      00111F 00 00 8D 26           2865 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      001123 0E                    2866 	.db	14
      001124 09                    2867 	.uleb128	9
      001125 01                    2868 	.db	1
      001126 00 00 8D 29           2869 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      00112A 0E                    2870 	.db	14
      00112B 0B                    2871 	.uleb128	11
      00112C 01                    2872 	.db	1
      00112D 00 00 8D 2E           2873 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      001131 0E                    2874 	.db	14
      001132 07                    2875 	.uleb128	7
      001133 01                    2876 	.db	1
      001134 00 00 8D 46           2877 	.dw	0,(Snixie$NIXIE_DisplayChar$74)
      001138 0E                    2878 	.db	14
      001139 09                    2879 	.uleb128	9
      00113A 01                    2880 	.db	1
      00113B 00 00 8D 49           2881 	.dw	0,(Snixie$NIXIE_DisplayChar$75)
      00113F 0E                    2882 	.db	14
      001140 0B                    2883 	.uleb128	11
      001141 01                    2884 	.db	1
      001142 00 00 8D 4E           2885 	.dw	0,(Snixie$NIXIE_DisplayChar$76)
      001146 0E                    2886 	.db	14
      001147 07                    2887 	.uleb128	7
      001148 01                    2888 	.db	1
      001149 00 00 8D 6E           2889 	.dw	0,(Snixie$NIXIE_DisplayChar$82)
      00114D 0E                    2890 	.db	14
      00114E 08                    2891 	.uleb128	8
      00114F 01                    2892 	.db	1
      001150 00 00 8D 70           2893 	.dw	0,(Snixie$NIXIE_DisplayChar$83)
      001154 0E                    2894 	.db	14
      001155 09                    2895 	.uleb128	9
      001156 01                    2896 	.db	1
      001157 00 00 8D 73           2897 	.dw	0,(Snixie$NIXIE_DisplayChar$84)
      00115B 0E                    2898 	.db	14
      00115C 0B                    2899 	.uleb128	11
      00115D 01                    2900 	.db	1
      00115E 00 00 8D 78           2901 	.dw	0,(Snixie$NIXIE_DisplayChar$85)
      001162 0E                    2902 	.db	14
      001163 07                    2903 	.uleb128	7
      001164 01                    2904 	.db	1
      001165 00 00 8D 8A           2905 	.dw	0,(Snixie$NIXIE_DisplayChar$88)
      001169 0E                    2906 	.db	14
      00116A 07                    2907 	.uleb128	7
      00116B 01                    2908 	.db	1
      00116C 00 00 8D B2           2909 	.dw	0,(Snixie$NIXIE_DisplayChar$94)
      001170 0E                    2910 	.db	14
      001171 02                    2911 	.uleb128	2
                                   2912 
                                   2913 	.area .debug_frame (NOLOAD)
      001172 00 00                 2914 	.dw	0
      001174 00 0E                 2915 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      001176                       2916 Ldebug_CIE2_start:
      001176 FF FF                 2917 	.dw	0xffff
      001178 FF FF                 2918 	.dw	0xffff
      00117A 01                    2919 	.db	1
      00117B 00                    2920 	.db	0
      00117C 01                    2921 	.uleb128	1
      00117D 7F                    2922 	.sleb128	-1
      00117E 09                    2923 	.db	9
      00117F 0C                    2924 	.db	12
      001180 08                    2925 	.uleb128	8
      001181 02                    2926 	.uleb128	2
      001182 89                    2927 	.db	137
      001183 01                    2928 	.uleb128	1
      001184                       2929 Ldebug_CIE2_end:
      001184 00 00 00 FA           2930 	.dw	0,250
      001188 00 00 11 72           2931 	.dw	0,(Ldebug_CIE2_start-4)
      00118C 00 00 8C 90           2932 	.dw	0,(Snixie$NIXIE_Init$1)	;initial loc
      001190 00 00 00 8D           2933 	.dw	0,Snixie$NIXIE_Init$59-Snixie$NIXIE_Init$1
      001194 01                    2934 	.db	1
      001195 00 00 8C 90           2935 	.dw	0,(Snixie$NIXIE_Init$1)
      001199 0E                    2936 	.db	14
      00119A 02                    2937 	.uleb128	2
      00119B 01                    2938 	.db	1
      00119C 00 00 8C 92           2939 	.dw	0,(Snixie$NIXIE_Init$2)
      0011A0 0E                    2940 	.db	14
      0011A1 05                    2941 	.uleb128	5
      0011A2 01                    2942 	.db	1
      0011A3 00 00 8C 94           2943 	.dw	0,(Snixie$NIXIE_Init$4)
      0011A7 0E                    2944 	.db	14
      0011A8 06                    2945 	.uleb128	6
      0011A9 01                    2946 	.db	1
      0011AA 00 00 8C 96           2947 	.dw	0,(Snixie$NIXIE_Init$5)
      0011AE 0E                    2948 	.db	14
      0011AF 07                    2949 	.uleb128	7
      0011B0 01                    2950 	.db	1
      0011B1 00 00 8C 98           2951 	.dw	0,(Snixie$NIXIE_Init$6)
      0011B5 0E                    2952 	.db	14
      0011B6 08                    2953 	.uleb128	8
      0011B7 01                    2954 	.db	1
      0011B8 00 00 8C 9A           2955 	.dw	0,(Snixie$NIXIE_Init$7)
      0011BC 0E                    2956 	.db	14
      0011BD 09                    2957 	.uleb128	9
      0011BE 01                    2958 	.db	1
      0011BF 00 00 8C 9F           2959 	.dw	0,(Snixie$NIXIE_Init$8)
      0011C3 0E                    2960 	.db	14
      0011C4 05                    2961 	.uleb128	5
      0011C5 01                    2962 	.db	1
      0011C6 00 00 8C A1           2963 	.dw	0,(Snixie$NIXIE_Init$10)
      0011CA 0E                    2964 	.db	14
      0011CB 06                    2965 	.uleb128	6
      0011CC 01                    2966 	.db	1
      0011CD 00 00 8C A3           2967 	.dw	0,(Snixie$NIXIE_Init$11)
      0011D1 0E                    2968 	.db	14
      0011D2 07                    2969 	.uleb128	7
      0011D3 01                    2970 	.db	1
      0011D4 00 00 8C A5           2971 	.dw	0,(Snixie$NIXIE_Init$12)
      0011D8 0E                    2972 	.db	14
      0011D9 08                    2973 	.uleb128	8
      0011DA 01                    2974 	.db	1
      0011DB 00 00 8C A7           2975 	.dw	0,(Snixie$NIXIE_Init$13)
      0011DF 0E                    2976 	.db	14
      0011E0 09                    2977 	.uleb128	9
      0011E1 01                    2978 	.db	1
      0011E2 00 00 8C AC           2979 	.dw	0,(Snixie$NIXIE_Init$14)
      0011E6 0E                    2980 	.db	14
      0011E7 05                    2981 	.uleb128	5
      0011E8 01                    2982 	.db	1
      0011E9 00 00 8C AE           2983 	.dw	0,(Snixie$NIXIE_Init$16)
      0011ED 0E                    2984 	.db	14
      0011EE 06                    2985 	.uleb128	6
      0011EF 01                    2986 	.db	1
      0011F0 00 00 8C B0           2987 	.dw	0,(Snixie$NIXIE_Init$17)
      0011F4 0E                    2988 	.db	14
      0011F5 07                    2989 	.uleb128	7
      0011F6 01                    2990 	.db	1
      0011F7 00 00 8C B2           2991 	.dw	0,(Snixie$NIXIE_Init$18)
      0011FB 0E                    2992 	.db	14
      0011FC 08                    2993 	.uleb128	8
      0011FD 01                    2994 	.db	1
      0011FE 00 00 8C B4           2995 	.dw	0,(Snixie$NIXIE_Init$19)
      001202 0E                    2996 	.db	14
      001203 09                    2997 	.uleb128	9
      001204 01                    2998 	.db	1
      001205 00 00 8C B9           2999 	.dw	0,(Snixie$NIXIE_Init$20)
      001209 0E                    3000 	.db	14
      00120A 05                    3001 	.uleb128	5
      00120B 01                    3002 	.db	1
      00120C 00 00 8C BE           3003 	.dw	0,(Snixie$NIXIE_Init$23)
      001210 0E                    3004 	.db	14
      001211 06                    3005 	.uleb128	6
      001212 01                    3006 	.db	1
      001213 00 00 8C C0           3007 	.dw	0,(Snixie$NIXIE_Init$24)
      001217 0E                    3008 	.db	14
      001218 07                    3009 	.uleb128	7
      001219 01                    3010 	.db	1
      00121A 00 00 8C C2           3011 	.dw	0,(Snixie$NIXIE_Init$25)
      00121E 0E                    3012 	.db	14
      00121F 08                    3013 	.uleb128	8
      001220 01                    3014 	.db	1
      001221 00 00 8C C4           3015 	.dw	0,(Snixie$NIXIE_Init$26)
      001225 0E                    3016 	.db	14
      001226 09                    3017 	.uleb128	9
      001227 01                    3018 	.db	1
      001228 00 00 8C C6           3019 	.dw	0,(Snixie$NIXIE_Init$27)
      00122C 0E                    3020 	.db	14
      00122D 0A                    3021 	.uleb128	10
      00122E 01                    3022 	.db	1
      00122F 00 00 8C C8           3023 	.dw	0,(Snixie$NIXIE_Init$28)
      001233 0E                    3024 	.db	14
      001234 0B                    3025 	.uleb128	11
      001235 01                    3026 	.db	1
      001236 00 00 8C CA           3027 	.dw	0,(Snixie$NIXIE_Init$29)
      00123A 0E                    3028 	.db	14
      00123B 0C                    3029 	.uleb128	12
      00123C 01                    3030 	.db	1
      00123D 00 00 8C CC           3031 	.dw	0,(Snixie$NIXIE_Init$30)
      001241 0E                    3032 	.db	14
      001242 0D                    3033 	.uleb128	13
      001243 01                    3034 	.db	1
      001244 00 00 8C D1           3035 	.dw	0,(Snixie$NIXIE_Init$31)
      001248 0E                    3036 	.db	14
      001249 05                    3037 	.uleb128	5
      00124A 01                    3038 	.db	1
      00124B 00 00 8C D3           3039 	.dw	0,(Snixie$NIXIE_Init$33)
      00124F 0E                    3040 	.db	14
      001250 06                    3041 	.uleb128	6
      001251 01                    3042 	.db	1
      001252 00 00 8C D7           3043 	.dw	0,(Snixie$NIXIE_Init$34)
      001256 0E                    3044 	.db	14
      001257 05                    3045 	.uleb128	5
      001258 01                    3046 	.db	1
      001259 00 00 8C EF           3047 	.dw	0,(Snixie$NIXIE_Init$40)
      00125D 0E                    3048 	.db	14
      00125E 07                    3049 	.uleb128	7
      00125F 01                    3050 	.db	1
      001260 00 00 8C F2           3051 	.dw	0,(Snixie$NIXIE_Init$41)
      001264 0E                    3052 	.db	14
      001265 05                    3053 	.uleb128	5
      001266 01                    3054 	.db	1
      001267 00 00 8C F3           3055 	.dw	0,(Snixie$NIXIE_Init$42)
      00126B 0E                    3056 	.db	14
      00126C 06                    3057 	.uleb128	6
      00126D 01                    3058 	.db	1
      00126E 00 00 8C F4           3059 	.dw	0,(Snixie$NIXIE_Init$43)
      001272 0E                    3060 	.db	14
      001273 07                    3061 	.uleb128	7
      001274 01                    3062 	.db	1
      001275 00 00 8C F8           3063 	.dw	0,(Snixie$NIXIE_Init$44)
      001279 0E                    3064 	.db	14
      00127A 05                    3065 	.uleb128	5
      00127B 01                    3066 	.db	1
      00127C 00 00 8D 1C           3067 	.dw	0,(Snixie$NIXIE_Init$57)
      001280 0E                    3068 	.db	14
      001281 02                    3069 	.uleb128	2
