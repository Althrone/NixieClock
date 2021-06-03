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
                                     11 	.globl _delay
                                     12 	.globl _strchr
                                     13 	.globl _SPI_GetFlagStatus
                                     14 	.globl _SPI_SendData
                                     15 	.globl _SPI_Cmd
                                     16 	.globl _SPI_Init
                                     17 	.globl _SPI_DeInit
                                     18 	.globl _GPIO_WriteLow
                                     19 	.globl _GPIO_WriteHigh
                                     20 	.globl _GPIO_Init
                                     21 	.globl _aaaa
                                     22 	.globl _NIXIE_Init
                                     23 	.globl _NIXIE_DisplayChar
                                     24 	.globl _NIXIE_DisplayTime
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
                           000000    33 G$aaaa$0_0$0==.
      000021                         34 _aaaa::
      000021                         35 	.ds 2
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
                           000000    65 	Snixie$delay$0 ==.
                           000000    66 	Snixie$delay$1 ==.
                                     67 ;	Source/Device/Src/nixie.c: 48: void delay(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function delay
                                     70 ;	-----------------------------------------
      0087CD                         71 _delay:
                           000000    72 	Snixie$delay$2 ==.
                           000000    73 	Snixie$delay$3 ==.
                                     74 ;	Source/Device/Src/nixie.c: 57: for (int i = 0; i < 300; i++);//这个比较合适
      0087CD 5F               [ 1]   75 	clrw	x
      0087CE                         76 00103$:
      0087CE A3 01 2C         [ 2]   77 	cpw	x, #0x012c
      0087D1 2E 03            [ 1]   78 	jrsge	00105$
      0087D3 5C               [ 1]   79 	incw	x
      0087D4 20 F8            [ 2]   80 	jra	00103$
      0087D6                         81 00105$:
                           000009    82 	Snixie$delay$4 ==.
                                     83 ;	Source/Device/Src/nixie.c: 58: }
                           000009    84 	Snixie$delay$5 ==.
                           000009    85 	XG$delay$0$0 ==.
      0087D6 81               [ 4]   86 	ret
                           00000A    87 	Snixie$delay$6 ==.
                           00000A    88 	Snixie$NIXIE_Init$7 ==.
                                     89 ;	Source/Device/Src/nixie.c: 63: void NIXIE_Init(void)
                                     90 ;	-----------------------------------------
                                     91 ;	 function NIXIE_Init
                                     92 ;	-----------------------------------------
      0087D7                         93 _NIXIE_Init:
                           00000A    94 	Snixie$NIXIE_Init$8 ==.
                           00000A    95 	Snixie$NIXIE_Init$9 ==.
                                     96 ;	Source/Device/Src/nixie.c: 65: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      0087D7 4B E0            [ 1]   97 	push	#0xe0
                           00000C    98 	Snixie$NIXIE_Init$10 ==.
      0087D9 4B 20            [ 1]   99 	push	#0x20
                           00000E   100 	Snixie$NIXIE_Init$11 ==.
      0087DB 4B 0A            [ 1]  101 	push	#0x0a
                           000010   102 	Snixie$NIXIE_Init$12 ==.
      0087DD 4B 50            [ 1]  103 	push	#0x50
                           000012   104 	Snixie$NIXIE_Init$13 ==.
      0087DF CD 80 C8         [ 4]  105 	call	_GPIO_Init
      0087E2 5B 04            [ 2]  106 	addw	sp, #4
                           000017   107 	Snixie$NIXIE_Init$14 ==.
                           000017   108 	Snixie$NIXIE_Init$15 ==.
                                    109 ;	Source/Device/Src/nixie.c: 66: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      0087E4 4B E0            [ 1]  110 	push	#0xe0
                           000019   111 	Snixie$NIXIE_Init$16 ==.
      0087E6 4B 40            [ 1]  112 	push	#0x40
                           00001B   113 	Snixie$NIXIE_Init$17 ==.
      0087E8 4B 0A            [ 1]  114 	push	#0x0a
                           00001D   115 	Snixie$NIXIE_Init$18 ==.
      0087EA 4B 50            [ 1]  116 	push	#0x50
                           00001F   117 	Snixie$NIXIE_Init$19 ==.
      0087EC CD 80 C8         [ 4]  118 	call	_GPIO_Init
      0087EF 5B 04            [ 2]  119 	addw	sp, #4
                           000024   120 	Snixie$NIXIE_Init$20 ==.
                           000024   121 	Snixie$NIXIE_Init$21 ==.
                                    122 ;	Source/Device/Src/nixie.c: 67: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      0087F1 4B E0            [ 1]  123 	push	#0xe0
                           000026   124 	Snixie$NIXIE_Init$22 ==.
      0087F3 4B 80            [ 1]  125 	push	#0x80
                           000028   126 	Snixie$NIXIE_Init$23 ==.
      0087F5 4B 0A            [ 1]  127 	push	#0x0a
                           00002A   128 	Snixie$NIXIE_Init$24 ==.
      0087F7 4B 50            [ 1]  129 	push	#0x50
                           00002C   130 	Snixie$NIXIE_Init$25 ==.
      0087F9 CD 80 C8         [ 4]  131 	call	_GPIO_Init
      0087FC 5B 04            [ 2]  132 	addw	sp, #4
                           000031   133 	Snixie$NIXIE_Init$26 ==.
                           000031   134 	Snixie$NIXIE_Init$27 ==.
                                    135 ;	Source/Device/Src/nixie.c: 68: SPI_DeInit();
      0087FE CD 81 DB         [ 4]  136 	call	_SPI_DeInit
                           000034   137 	Snixie$NIXIE_Init$28 ==.
                                    138 ;	Source/Device/Src/nixie.c: 70: SPI_Init(SPI_FIRSTBIT_LSB,
      008801 4B 07            [ 1]  139 	push	#0x07
                           000036   140 	Snixie$NIXIE_Init$29 ==.
      008803 4B 02            [ 1]  141 	push	#0x02
                           000038   142 	Snixie$NIXIE_Init$30 ==.
      008805 4B C0            [ 1]  143 	push	#0xc0
                           00003A   144 	Snixie$NIXIE_Init$31 ==.
      008807 4B 00            [ 1]  145 	push	#0x00
                           00003C   146 	Snixie$NIXIE_Init$32 ==.
      008809 4B 00            [ 1]  147 	push	#0x00
                           00003E   148 	Snixie$NIXIE_Init$33 ==.
      00880B 4B 04            [ 1]  149 	push	#0x04
                           000040   150 	Snixie$NIXIE_Init$34 ==.
      00880D 4B 00            [ 1]  151 	push	#0x00
                           000042   152 	Snixie$NIXIE_Init$35 ==.
      00880F 4B 80            [ 1]  153 	push	#0x80
                           000044   154 	Snixie$NIXIE_Init$36 ==.
      008811 CD 81 F0         [ 4]  155 	call	_SPI_Init
      008814 5B 08            [ 2]  156 	addw	sp, #8
                           000049   157 	Snixie$NIXIE_Init$37 ==.
                           000049   158 	Snixie$NIXIE_Init$38 ==.
                                    159 ;	Source/Device/Src/nixie.c: 78: SPI_Cmd(ENABLE);
      008816 4B 01            [ 1]  160 	push	#0x01
                           00004B   161 	Snixie$NIXIE_Init$39 ==.
      008818 CD 82 2E         [ 4]  162 	call	_SPI_Cmd
      00881B 84               [ 1]  163 	pop	a
                           00004F   164 	Snixie$NIXIE_Init$40 ==.
                           00004F   165 	Snixie$NIXIE_Init$41 ==.
                                    166 ;	Source/Device/Src/nixie.c: 79: }
                           00004F   167 	Snixie$NIXIE_Init$42 ==.
                           00004F   168 	XG$NIXIE_Init$0$0 ==.
      00881C 81               [ 4]  169 	ret
                           000050   170 	Snixie$NIXIE_Init$43 ==.
                           000050   171 	Snixie$NIXIE_DisplayChar$44 ==.
                                    172 ;	Source/Device/Src/nixie.c: 89: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    173 ;	-----------------------------------------
                                    174 ;	 function NIXIE_DisplayChar
                                    175 ;	-----------------------------------------
      00881D                        176 _NIXIE_DisplayChar:
                           000050   177 	Snixie$NIXIE_DisplayChar$45 ==.
      00881D 52 05            [ 2]  178 	sub	sp, #5
                           000052   179 	Snixie$NIXIE_DisplayChar$46 ==.
                           000052   180 	Snixie$NIXIE_DisplayChar$47 ==.
                                    181 ;	Source/Device/Src/nixie.c: 91: uint16_t tmp=0;
      00881F 5F               [ 1]  182 	clrw	x
      008820 1F 03            [ 2]  183 	ldw	(0x03, sp), x
                           000055   184 	Snixie$NIXIE_DisplayChar$48 ==.
                                    185 ;	Source/Device/Src/nixie.c: 94: if(strchr(character,'.')!=NULL)
      008822 4B 2E            [ 1]  186 	push	#0x2e
                           000057   187 	Snixie$NIXIE_DisplayChar$49 ==.
      008824 4B 00            [ 1]  188 	push	#0x00
                           000059   189 	Snixie$NIXIE_DisplayChar$50 ==.
      008826 1E 0B            [ 2]  190 	ldw	x, (0x0b, sp)
      008828 89               [ 2]  191 	pushw	x
                           00005C   192 	Snixie$NIXIE_DisplayChar$51 ==.
      008829 CD 8E 3B         [ 4]  193 	call	_strchr
      00882C 5B 04            [ 2]  194 	addw	sp, #4
                           000061   195 	Snixie$NIXIE_DisplayChar$52 ==.
      00882E 5D               [ 2]  196 	tnzw	x
      00882F 27 05            [ 1]  197 	jreq	00118$
                           000064   198 	Snixie$NIXIE_DisplayChar$53 ==.
                                    199 ;	Source/Device/Src/nixie.c: 95: tmp|=1<<11;
      008831 AE 08 00         [ 2]  200 	ldw	x, #0x0800
      008834 1F 03            [ 2]  201 	ldw	(0x03, sp), x
                           000069   202 	Snixie$NIXIE_DisplayChar$54 ==.
                                    203 ;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
      008836                        204 00118$:
      008836 0F 05            [ 1]  205 	clr	(0x05, sp)
                           00006B   206 	Snixie$NIXIE_DisplayChar$55 ==.
      008838                        207 00111$:
      008838 7B 05            [ 1]  208 	ld	a, (0x05, sp)
      00883A A1 09            [ 1]  209 	cp	a, #0x09
      00883C 24 2E            [ 1]  210 	jrnc	00105$
                           000071   211 	Snixie$NIXIE_DisplayChar$56 ==.
                           000071   212 	Snixie$NIXIE_DisplayChar$57 ==.
                                    213 ;	Source/Device/Src/nixie.c: 98: if(strchr(character,'1'+i)!=NULL)
      00883E 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      008840 5F               [ 1]  215 	clrw	x
      008841 97               [ 1]  216 	ld	xl, a
      008842 1C 00 31         [ 2]  217 	addw	x, #0x0031
      008845 89               [ 2]  218 	pushw	x
                           000079   219 	Snixie$NIXIE_DisplayChar$58 ==.
      008846 1E 0B            [ 2]  220 	ldw	x, (0x0b, sp)
      008848 89               [ 2]  221 	pushw	x
                           00007C   222 	Snixie$NIXIE_DisplayChar$59 ==.
      008849 CD 8E 3B         [ 4]  223 	call	_strchr
      00884C 5B 04            [ 2]  224 	addw	sp, #4
                           000081   225 	Snixie$NIXIE_DisplayChar$60 ==.
      00884E 1F 01            [ 2]  226 	ldw	(0x01, sp), x
      008850 27 16            [ 1]  227 	jreq	00112$
                           000085   228 	Snixie$NIXIE_DisplayChar$61 ==.
                                    229 ;	Source/Device/Src/nixie.c: 99: tmp|=1<<10-i;
      008852 A6 0A            [ 1]  230 	ld	a, #0x0a
      008854 10 05            [ 1]  231 	sub	a, (0x05, sp)
      008856 5F               [ 1]  232 	clrw	x
      008857 5C               [ 1]  233 	incw	x
      008858 4D               [ 1]  234 	tnz	a
      008859 27 04            [ 1]  235 	jreq	00150$
      00885B                        236 00149$:
      00885B 58               [ 2]  237 	sllw	x
      00885C 4A               [ 1]  238 	dec	a
      00885D 26 FC            [ 1]  239 	jrne	00149$
      00885F                        240 00150$:
      00885F 9F               [ 1]  241 	ld	a, xl
      008860 1A 04            [ 1]  242 	or	a, (0x04, sp)
      008862 02               [ 1]  243 	rlwa	x
      008863 1A 03            [ 1]  244 	or	a, (0x03, sp)
      008865 95               [ 1]  245 	ld	xh, a
      008866 1F 03            [ 2]  246 	ldw	(0x03, sp), x
      008868                        247 00112$:
                           00009B   248 	Snixie$NIXIE_DisplayChar$62 ==.
                           00009B   249 	Snixie$NIXIE_DisplayChar$63 ==.
                                    250 ;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
      008868 0C 05            [ 1]  251 	inc	(0x05, sp)
      00886A 20 CC            [ 2]  252 	jra	00111$
      00886C                        253 00105$:
                           00009F   254 	Snixie$NIXIE_DisplayChar$64 ==.
                           00009F   255 	Snixie$NIXIE_DisplayChar$65 ==.
                                    256 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'0')!=NULL)
      00886C 4B 30            [ 1]  257 	push	#0x30
                           0000A1   258 	Snixie$NIXIE_DisplayChar$66 ==.
      00886E 4B 00            [ 1]  259 	push	#0x00
                           0000A3   260 	Snixie$NIXIE_DisplayChar$67 ==.
      008870 1E 0B            [ 2]  261 	ldw	x, (0x0b, sp)
      008872 89               [ 2]  262 	pushw	x
                           0000A6   263 	Snixie$NIXIE_DisplayChar$68 ==.
      008873 CD 8E 3B         [ 4]  264 	call	_strchr
      008876 5B 04            [ 2]  265 	addw	sp, #4
                           0000AB   266 	Snixie$NIXIE_DisplayChar$69 ==.
      008878 5D               [ 2]  267 	tnzw	x
      008879 27 0A            [ 1]  268 	jreq	00107$
                           0000AE   269 	Snixie$NIXIE_DisplayChar$70 ==.
                                    270 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<1;
      00887B 7B 04            [ 1]  271 	ld	a, (0x04, sp)
      00887D AA 02            [ 1]  272 	or	a, #0x02
      00887F 97               [ 1]  273 	ld	xl, a
      008880 7B 03            [ 1]  274 	ld	a, (0x03, sp)
      008882 95               [ 1]  275 	ld	xh, a
      008883 1F 03            [ 2]  276 	ldw	(0x03, sp), x
      008885                        277 00107$:
                           0000B8   278 	Snixie$NIXIE_DisplayChar$71 ==.
                                    279 ;	Source/Device/Src/nixie.c: 103: if(tubeState==ENABLE)
      008885 7B 0B            [ 1]  280 	ld	a, (0x0b, sp)
      008887 4A               [ 1]  281 	dec	a
      008888 26 07            [ 1]  282 	jrne	00109$
                           0000BD   283 	Snixie$NIXIE_DisplayChar$72 ==.
                           0000BD   284 	Snixie$NIXIE_DisplayChar$73 ==.
                                    285 ;	Source/Device/Src/nixie.c: 104: tmp|=1<<0;
      00888A 1E 03            [ 2]  286 	ldw	x, (0x03, sp)
      00888C 54               [ 2]  287 	srlw	x
      00888D 99               [ 1]  288 	scf
      00888E 59               [ 2]  289 	rlcw	x
      00888F 1F 03            [ 2]  290 	ldw	(0x03, sp), x
      008891                        291 00109$:
                           0000C4   292 	Snixie$NIXIE_DisplayChar$74 ==.
                                    293 ;	Source/Device/Src/nixie.c: 106: output=(tmp&0xAAA)>>1;
      008891 1E 03            [ 2]  294 	ldw	x, (0x03, sp)
      008893 9F               [ 1]  295 	ld	a, xl
      008894 A4 AA            [ 1]  296 	and	a, #0xaa
      008896 90 97            [ 1]  297 	ld	yl, a
      008898 9E               [ 1]  298 	ld	a, xh
      008899 A4 0A            [ 1]  299 	and	a, #0x0a
      00889B 90 95            [ 1]  300 	ld	yh, a
      00889D 90 54            [ 2]  301 	srlw	y
                           0000D2   302 	Snixie$NIXIE_DisplayChar$75 ==.
                                    303 ;	Source/Device/Src/nixie.c: 107: output|=(tmp&0x555)<<1;
      00889F 9F               [ 1]  304 	ld	a, xl
      0088A0 A4 55            [ 1]  305 	and	a, #0x55
      0088A2 02               [ 1]  306 	rlwa	x
      0088A3 A4 05            [ 1]  307 	and	a, #0x05
      0088A5 95               [ 1]  308 	ld	xh, a
      0088A6 58               [ 2]  309 	sllw	x
      0088A7 17 04            [ 2]  310 	ldw	(0x04, sp), y
      0088A9 9F               [ 1]  311 	ld	a, xl
      0088AA 1A 05            [ 1]  312 	or	a, (0x05, sp)
      0088AC 02               [ 1]  313 	rlwa	x
      0088AD 1A 04            [ 1]  314 	or	a, (0x04, sp)
                           0000E2   315 	Snixie$NIXIE_DisplayChar$76 ==.
                                    316 ;	Source/Device/Src/nixie.c: 109: return output;
      0088AF 95               [ 1]  317 	ld	xh, a
                           0000E3   318 	Snixie$NIXIE_DisplayChar$77 ==.
                                    319 ;	Source/Device/Src/nixie.c: 110: }
      0088B0 5B 05            [ 2]  320 	addw	sp, #5
                           0000E5   321 	Snixie$NIXIE_DisplayChar$78 ==.
                           0000E5   322 	Snixie$NIXIE_DisplayChar$79 ==.
                           0000E5   323 	XG$NIXIE_DisplayChar$0$0 ==.
      0088B2 81               [ 4]  324 	ret
                           0000E6   325 	Snixie$NIXIE_DisplayChar$80 ==.
                           0000E6   326 	Snixie$NIXIE_DisplayTime$81 ==.
                                    327 ;	Source/Device/Src/nixie.c: 120: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    328 ;	-----------------------------------------
                                    329 ;	 function NIXIE_DisplayTime
                                    330 ;	-----------------------------------------
      0088B3                        331 _NIXIE_DisplayTime:
                           0000E6   332 	Snixie$NIXIE_DisplayTime$82 ==.
      0088B3 52 11            [ 2]  333 	sub	sp, #17
                           0000E8   334 	Snixie$NIXIE_DisplayTime$83 ==.
                           0000E8   335 	Snixie$NIXIE_DisplayTime$84 ==.
                                    336 ;	Source/Device/Src/nixie.c: 124: char tube1s[]="0",tube2s[]="0",tube3s[]="0",tube4s[]="0";
      0088B5 A6 30            [ 1]  337 	ld	a, #0x30
      0088B7 6B 01            [ 1]  338 	ld	(0x01, sp), a
      0088B9 96               [ 1]  339 	ldw	x, sp
      0088BA 6F 02            [ 1]  340 	clr	(2, x)
      0088BC A6 30            [ 1]  341 	ld	a, #0x30
      0088BE 6B 03            [ 1]  342 	ld	(0x03, sp), a
      0088C0 96               [ 1]  343 	ldw	x, sp
      0088C1 6F 04            [ 1]  344 	clr	(4, x)
      0088C3 A6 30            [ 1]  345 	ld	a, #0x30
      0088C5 6B 05            [ 1]  346 	ld	(0x05, sp), a
      0088C7 96               [ 1]  347 	ldw	x, sp
      0088C8 6F 06            [ 1]  348 	clr	(6, x)
      0088CA A6 30            [ 1]  349 	ld	a, #0x30
      0088CC 6B 07            [ 1]  350 	ld	(0x07, sp), a
      0088CE 96               [ 1]  351 	ldw	x, sp
      0088CF 6F 08            [ 1]  352 	clr	(8, x)
                           000104   353 	Snixie$NIXIE_DisplayTime$85 ==.
                                    354 ;	Source/Device/Src/nixie.c: 126: uint8_t tmp=aaaa/1000;
      0088D1 4B E8            [ 1]  355 	push	#0xe8
                           000106   356 	Snixie$NIXIE_DisplayTime$86 ==.
      0088D3 4B 03            [ 1]  357 	push	#0x03
                           000108   358 	Snixie$NIXIE_DisplayTime$87 ==.
      0088D5 CE 00 21         [ 2]  359 	ldw	x, _aaaa+0
      0088D8 89               [ 2]  360 	pushw	x
                           00010C   361 	Snixie$NIXIE_DisplayTime$88 ==.
      0088D9 CD 8E F3         [ 4]  362 	call	__divsint
      0088DC 5B 04            [ 2]  363 	addw	sp, #4
                           000111   364 	Snixie$NIXIE_DisplayTime$89 ==.
                           000111   365 	Snixie$NIXIE_DisplayTime$90 ==.
                                    366 ;	Source/Device/Src/nixie.c: 127: tube1s[0]+=tmp;
      0088DE 7B 01            [ 1]  367 	ld	a, (0x01, sp)
      0088E0 89               [ 2]  368 	pushw	x
                           000114   369 	Snixie$NIXIE_DisplayTime$91 ==.
      0088E1 1B 02            [ 1]  370 	add	a, (2, sp)
      0088E3 85               [ 2]  371 	popw	x
                           000117   372 	Snixie$NIXIE_DisplayTime$92 ==.
      0088E4 6B 01            [ 1]  373 	ld	(0x01, sp), a
                           000119   374 	Snixie$NIXIE_DisplayTime$93 ==.
                                    375 ;	Source/Device/Src/nixie.c: 129: tmp=aaaa%1000/100;
      0088E6 4B E8            [ 1]  376 	push	#0xe8
                           00011B   377 	Snixie$NIXIE_DisplayTime$94 ==.
      0088E8 4B 03            [ 1]  378 	push	#0x03
                           00011D   379 	Snixie$NIXIE_DisplayTime$95 ==.
      0088EA CE 00 21         [ 2]  380 	ldw	x, _aaaa+0
      0088ED 89               [ 2]  381 	pushw	x
                           000121   382 	Snixie$NIXIE_DisplayTime$96 ==.
      0088EE CD 8E 61         [ 4]  383 	call	__modsint
      0088F1 5B 04            [ 2]  384 	addw	sp, #4
                           000126   385 	Snixie$NIXIE_DisplayTime$97 ==.
      0088F3 4B 64            [ 1]  386 	push	#0x64
                           000128   387 	Snixie$NIXIE_DisplayTime$98 ==.
      0088F5 4B 00            [ 1]  388 	push	#0x00
                           00012A   389 	Snixie$NIXIE_DisplayTime$99 ==.
      0088F7 89               [ 2]  390 	pushw	x
                           00012B   391 	Snixie$NIXIE_DisplayTime$100 ==.
      0088F8 CD 8E F3         [ 4]  392 	call	__divsint
      0088FB 5B 04            [ 2]  393 	addw	sp, #4
                           000130   394 	Snixie$NIXIE_DisplayTime$101 ==.
                           000130   395 	Snixie$NIXIE_DisplayTime$102 ==.
                                    396 ;	Source/Device/Src/nixie.c: 130: tube2s[0]+=tmp;
      0088FD 7B 03            [ 1]  397 	ld	a, (0x03, sp)
      0088FF 89               [ 2]  398 	pushw	x
                           000133   399 	Snixie$NIXIE_DisplayTime$103 ==.
      008900 1B 02            [ 1]  400 	add	a, (2, sp)
      008902 85               [ 2]  401 	popw	x
                           000136   402 	Snixie$NIXIE_DisplayTime$104 ==.
      008903 6B 03            [ 1]  403 	ld	(0x03, sp), a
                           000138   404 	Snixie$NIXIE_DisplayTime$105 ==.
                                    405 ;	Source/Device/Src/nixie.c: 132: tmp=aaaa%100/10;
      008905 4B 64            [ 1]  406 	push	#0x64
                           00013A   407 	Snixie$NIXIE_DisplayTime$106 ==.
      008907 4B 00            [ 1]  408 	push	#0x00
                           00013C   409 	Snixie$NIXIE_DisplayTime$107 ==.
      008909 CE 00 21         [ 2]  410 	ldw	x, _aaaa+0
      00890C 89               [ 2]  411 	pushw	x
                           000140   412 	Snixie$NIXIE_DisplayTime$108 ==.
      00890D CD 8E 61         [ 4]  413 	call	__modsint
      008910 5B 04            [ 2]  414 	addw	sp, #4
                           000145   415 	Snixie$NIXIE_DisplayTime$109 ==.
      008912 4B 0A            [ 1]  416 	push	#0x0a
                           000147   417 	Snixie$NIXIE_DisplayTime$110 ==.
      008914 4B 00            [ 1]  418 	push	#0x00
                           000149   419 	Snixie$NIXIE_DisplayTime$111 ==.
      008916 89               [ 2]  420 	pushw	x
                           00014A   421 	Snixie$NIXIE_DisplayTime$112 ==.
      008917 CD 8E F3         [ 4]  422 	call	__divsint
      00891A 5B 04            [ 2]  423 	addw	sp, #4
                           00014F   424 	Snixie$NIXIE_DisplayTime$113 ==.
                           00014F   425 	Snixie$NIXIE_DisplayTime$114 ==.
                                    426 ;	Source/Device/Src/nixie.c: 133: tube3s[0]+=tmp;
      00891C 7B 05            [ 1]  427 	ld	a, (0x05, sp)
      00891E 89               [ 2]  428 	pushw	x
                           000152   429 	Snixie$NIXIE_DisplayTime$115 ==.
      00891F 1B 02            [ 1]  430 	add	a, (2, sp)
      008921 85               [ 2]  431 	popw	x
                           000155   432 	Snixie$NIXIE_DisplayTime$116 ==.
      008922 6B 05            [ 1]  433 	ld	(0x05, sp), a
                           000157   434 	Snixie$NIXIE_DisplayTime$117 ==.
                                    435 ;	Source/Device/Src/nixie.c: 135: tmp=aaaa%10;
      008924 4B 0A            [ 1]  436 	push	#0x0a
                           000159   437 	Snixie$NIXIE_DisplayTime$118 ==.
      008926 4B 00            [ 1]  438 	push	#0x00
                           00015B   439 	Snixie$NIXIE_DisplayTime$119 ==.
      008928 CE 00 21         [ 2]  440 	ldw	x, _aaaa+0
      00892B 89               [ 2]  441 	pushw	x
                           00015F   442 	Snixie$NIXIE_DisplayTime$120 ==.
      00892C CD 8E 61         [ 4]  443 	call	__modsint
      00892F 5B 04            [ 2]  444 	addw	sp, #4
                           000164   445 	Snixie$NIXIE_DisplayTime$121 ==.
                           000164   446 	Snixie$NIXIE_DisplayTime$122 ==.
                                    447 ;	Source/Device/Src/nixie.c: 136: tube4s[0]+=tmp;
      008931 7B 07            [ 1]  448 	ld	a, (0x07, sp)
      008933 89               [ 2]  449 	pushw	x
                           000167   450 	Snixie$NIXIE_DisplayTime$123 ==.
      008934 1B 02            [ 1]  451 	add	a, (2, sp)
      008936 85               [ 2]  452 	popw	x
                           00016A   453 	Snixie$NIXIE_DisplayTime$124 ==.
      008937 6B 07            [ 1]  454 	ld	(0x07, sp), a
                           00016C   455 	Snixie$NIXIE_DisplayTime$125 ==.
                                    456 ;	Source/Device/Src/nixie.c: 138: tube1=NIXIE_DisplayChar(1,tube1s,ENABLE);
      008939 4B 01            [ 1]  457 	push	#0x01
                           00016E   458 	Snixie$NIXIE_DisplayTime$126 ==.
      00893B 96               [ 1]  459 	ldw	x, sp
      00893C 5C               [ 1]  460 	incw	x
      00893D 5C               [ 1]  461 	incw	x
      00893E 89               [ 2]  462 	pushw	x
                           000172   463 	Snixie$NIXIE_DisplayTime$127 ==.
      00893F 4B 01            [ 1]  464 	push	#0x01
                           000174   465 	Snixie$NIXIE_DisplayTime$128 ==.
      008941 CD 88 1D         [ 4]  466 	call	_NIXIE_DisplayChar
      008944 5B 04            [ 2]  467 	addw	sp, #4
                           000179   468 	Snixie$NIXIE_DisplayTime$129 ==.
      008946 1F 09            [ 2]  469 	ldw	(0x09, sp), x
                           00017B   470 	Snixie$NIXIE_DisplayTime$130 ==.
                                    471 ;	Source/Device/Src/nixie.c: 139: tube2=NIXIE_DisplayChar(2,tube2s,ENABLE);
      008948 4B 01            [ 1]  472 	push	#0x01
                           00017D   473 	Snixie$NIXIE_DisplayTime$131 ==.
      00894A 96               [ 1]  474 	ldw	x, sp
      00894B 1C 00 04         [ 2]  475 	addw	x, #4
      00894E 89               [ 2]  476 	pushw	x
                           000182   477 	Snixie$NIXIE_DisplayTime$132 ==.
      00894F 4B 02            [ 1]  478 	push	#0x02
                           000184   479 	Snixie$NIXIE_DisplayTime$133 ==.
      008951 CD 88 1D         [ 4]  480 	call	_NIXIE_DisplayChar
      008954 5B 04            [ 2]  481 	addw	sp, #4
                           000189   482 	Snixie$NIXIE_DisplayTime$134 ==.
      008956 1F 0B            [ 2]  483 	ldw	(0x0b, sp), x
                           00018B   484 	Snixie$NIXIE_DisplayTime$135 ==.
                                    485 ;	Source/Device/Src/nixie.c: 140: tube3=NIXIE_DisplayChar(3,tube3s,ENABLE);
      008958 4B 01            [ 1]  486 	push	#0x01
                           00018D   487 	Snixie$NIXIE_DisplayTime$136 ==.
      00895A 96               [ 1]  488 	ldw	x, sp
      00895B 1C 00 06         [ 2]  489 	addw	x, #6
      00895E 89               [ 2]  490 	pushw	x
                           000192   491 	Snixie$NIXIE_DisplayTime$137 ==.
      00895F 4B 03            [ 1]  492 	push	#0x03
                           000194   493 	Snixie$NIXIE_DisplayTime$138 ==.
      008961 CD 88 1D         [ 4]  494 	call	_NIXIE_DisplayChar
      008964 5B 04            [ 2]  495 	addw	sp, #4
                           000199   496 	Snixie$NIXIE_DisplayTime$139 ==.
      008966 1F 0D            [ 2]  497 	ldw	(0x0d, sp), x
                           00019B   498 	Snixie$NIXIE_DisplayTime$140 ==.
                                    499 ;	Source/Device/Src/nixie.c: 141: tube4=NIXIE_DisplayChar(4,tube4s,ENABLE);
      008968 4B 01            [ 1]  500 	push	#0x01
                           00019D   501 	Snixie$NIXIE_DisplayTime$141 ==.
      00896A 96               [ 1]  502 	ldw	x, sp
      00896B 1C 00 08         [ 2]  503 	addw	x, #8
      00896E 89               [ 2]  504 	pushw	x
                           0001A2   505 	Snixie$NIXIE_DisplayTime$142 ==.
      00896F 4B 04            [ 1]  506 	push	#0x04
                           0001A4   507 	Snixie$NIXIE_DisplayTime$143 ==.
      008971 CD 88 1D         [ 4]  508 	call	_NIXIE_DisplayChar
      008974 5B 04            [ 2]  509 	addw	sp, #4
                           0001A9   510 	Snixie$NIXIE_DisplayTime$144 ==.
      008976 1F 0F            [ 2]  511 	ldw	(0x0f, sp), x
                           0001AB   512 	Snixie$NIXIE_DisplayTime$145 ==.
                                    513 ;	Source/Device/Src/nixie.c: 144: ++aaaa;
      008978 CE 00 21         [ 2]  514 	ldw	x, _aaaa+0
      00897B 5C               [ 1]  515 	incw	x
      00897C CF 00 21         [ 2]  516 	ldw	_aaaa+0, x
                           0001B2   517 	Snixie$NIXIE_DisplayTime$146 ==.
                                    518 ;	Source/Device/Src/nixie.c: 145: if(aaaa==9999)
      00897F CE 00 21         [ 2]  519 	ldw	x, _aaaa+0
      008982 A3 27 0F         [ 2]  520 	cpw	x, #0x270f
      008985 26 04            [ 1]  521 	jrne	00102$
                           0001BA   522 	Snixie$NIXIE_DisplayTime$147 ==.
                           0001BA   523 	Snixie$NIXIE_DisplayTime$148 ==.
                                    524 ;	Source/Device/Src/nixie.c: 146: aaaa=0;
      008987 5F               [ 1]  525 	clrw	x
      008988 CF 00 21         [ 2]  526 	ldw	_aaaa+0, x
      00898B                        527 00102$:
                           0001BE   528 	Snixie$NIXIE_DisplayTime$149 ==.
                                    529 ;	Source/Device/Src/nixie.c: 157: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      00898B 4B 80            [ 1]  530 	push	#0x80
                           0001C0   531 	Snixie$NIXIE_DisplayTime$150 ==.
      00898D 4B 0A            [ 1]  532 	push	#0x0a
                           0001C2   533 	Snixie$NIXIE_DisplayTime$151 ==.
      00898F 4B 50            [ 1]  534 	push	#0x50
                           0001C4   535 	Snixie$NIXIE_DisplayTime$152 ==.
      008991 CD 81 44         [ 4]  536 	call	_GPIO_WriteLow
      008994 5B 03            [ 2]  537 	addw	sp, #3
                           0001C9   538 	Snixie$NIXIE_DisplayTime$153 ==.
                           0001C9   539 	Snixie$NIXIE_DisplayTime$154 ==.
                           0001C9   540 	Snixie$NIXIE_DisplayTime$155 ==.
                                    541 ;	Source/Device/Src/nixie.c: 162: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008996 1E 0F            [ 2]  542 	ldw	x, (0x0f, sp)
      008998 54               [ 2]  543 	srlw	x
      008999 58               [ 2]  544 	sllw	x
      00899A 4F               [ 1]  545 	clr	a
      00899B 95               [ 1]  546 	ld	xh, a
      00899C 54               [ 2]  547 	srlw	x
                           0001D0   548 	Snixie$NIXIE_DisplayTime$156 ==.
                                    549 ;	Source/Device/Src/nixie.c: 163: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      00899D 7B 10            [ 1]  550 	ld	a, (0x10, sp)
      00899F A4 01            [ 1]  551 	and	a, #0x01
      0089A1 4E               [ 1]  552 	swap	a
      0089A2 A4 F0            [ 1]  553 	and	a, #0xf0
      0089A4 48               [ 1]  554 	sll	a
      0089A5 48               [ 1]  555 	sll	a
      0089A6 48               [ 1]  556 	sll	a
                           0001DA   557 	Snixie$NIXIE_DisplayTime$157 ==.
                                    558 ;	Source/Device/Src/nixie.c: 164: tmp1=tmp1|tmp2;
      0089A7 89               [ 2]  559 	pushw	x
                           0001DB   560 	Snixie$NIXIE_DisplayTime$158 ==.
      0089A8 1A 02            [ 1]  561 	or	a, (2, sp)
      0089AA 85               [ 2]  562 	popw	x
                           0001DE   563 	Snixie$NIXIE_DisplayTime$159 ==.
                           0001DE   564 	Snixie$NIXIE_DisplayTime$160 ==.
                                    565 ;	Source/Device/Src/nixie.c: 165: SPI_SendData(tmp1);
      0089AB 88               [ 1]  566 	push	a
                           0001DF   567 	Snixie$NIXIE_DisplayTime$161 ==.
      0089AC CD 82 42         [ 4]  568 	call	_SPI_SendData
      0089AF 84               [ 1]  569 	pop	a
                           0001E3   570 	Snixie$NIXIE_DisplayTime$162 ==.
                           0001E3   571 	Snixie$NIXIE_DisplayTime$163 ==.
                                    572 ;	Source/Device/Src/nixie.c: 167: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      0089B0                        573 00103$:
      0089B0 4B 02            [ 1]  574 	push	#0x02
                           0001E5   575 	Snixie$NIXIE_DisplayTime$164 ==.
      0089B2 CD 82 49         [ 4]  576 	call	_SPI_GetFlagStatus
      0089B5 5B 01            [ 2]  577 	addw	sp, #1
                           0001EA   578 	Snixie$NIXIE_DisplayTime$165 ==.
      0089B7 4D               [ 1]  579 	tnz	a
      0089B8 27 F6            [ 1]  580 	jreq	00103$
                           0001ED   581 	Snixie$NIXIE_DisplayTime$166 ==.
                                    582 ;	Source/Device/Src/nixie.c: 169: tmp1=(uint8_t)((tube3&0b1111)<<4);
      0089BA 7B 0E            [ 1]  583 	ld	a, (0x0e, sp)
      0089BC A4 0F            [ 1]  584 	and	a, #0x0f
      0089BE 4E               [ 1]  585 	swap	a
      0089BF A4 F0            [ 1]  586 	and	a, #0xf0
      0089C1 6B 11            [ 1]  587 	ld	(0x11, sp), a
                           0001F6   588 	Snixie$NIXIE_DisplayTime$167 ==.
                                    589 ;	Source/Device/Src/nixie.c: 170: tmp2=(uint8_t)(tube4>>8);
      0089C3 7B 0F            [ 1]  590 	ld	a, (0x0f, sp)
      0089C5 5F               [ 1]  591 	clrw	x
                           0001F9   592 	Snixie$NIXIE_DisplayTime$168 ==.
                                    593 ;	Source/Device/Src/nixie.c: 171: tmp1=tmp1|tmp2;
      0089C6 1A 11            [ 1]  594 	or	a, (0x11, sp)
      0089C8 97               [ 1]  595 	ld	xl, a
                           0001FC   596 	Snixie$NIXIE_DisplayTime$169 ==.
                                    597 ;	Source/Device/Src/nixie.c: 172: tmp2=(tmp1&0b00000001)<<7;
      0089C9 9F               [ 1]  598 	ld	a, xl
      0089CA A4 01            [ 1]  599 	and	a, #0x01
      0089CC 4E               [ 1]  600 	swap	a
      0089CD A4 F0            [ 1]  601 	and	a, #0xf0
      0089CF 48               [ 1]  602 	sll	a
      0089D0 48               [ 1]  603 	sll	a
      0089D1 48               [ 1]  604 	sll	a
      0089D2 6B 11            [ 1]  605 	ld	(0x11, sp), a
                           000207   606 	Snixie$NIXIE_DisplayTime$170 ==.
                                    607 ;	Source/Device/Src/nixie.c: 173: tmp1=(tmp1>>1)|tmp2;
      0089D4 9F               [ 1]  608 	ld	a, xl
      0089D5 44               [ 1]  609 	srl	a
      0089D6 1A 11            [ 1]  610 	or	a, (0x11, sp)
                           00020B   611 	Snixie$NIXIE_DisplayTime$171 ==.
                                    612 ;	Source/Device/Src/nixie.c: 174: SPI_SendData(tmp1);
      0089D8 88               [ 1]  613 	push	a
                           00020C   614 	Snixie$NIXIE_DisplayTime$172 ==.
      0089D9 CD 82 42         [ 4]  615 	call	_SPI_SendData
      0089DC 84               [ 1]  616 	pop	a
                           000210   617 	Snixie$NIXIE_DisplayTime$173 ==.
                           000210   618 	Snixie$NIXIE_DisplayTime$174 ==.
                                    619 ;	Source/Device/Src/nixie.c: 176: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      0089DD                        620 00106$:
      0089DD 4B 02            [ 1]  621 	push	#0x02
                           000212   622 	Snixie$NIXIE_DisplayTime$175 ==.
      0089DF CD 82 49         [ 4]  623 	call	_SPI_GetFlagStatus
      0089E2 5B 01            [ 2]  624 	addw	sp, #1
                           000217   625 	Snixie$NIXIE_DisplayTime$176 ==.
      0089E4 4D               [ 1]  626 	tnz	a
      0089E5 27 F6            [ 1]  627 	jreq	00106$
                           00021A   628 	Snixie$NIXIE_DisplayTime$177 ==.
                                    629 ;	Source/Device/Src/nixie.c: 178: tmp1=(uint8_t)(tube3>>5);
      0089E7 1E 0D            [ 2]  630 	ldw	x, (0x0d, sp)
      0089E9 A6 20            [ 1]  631 	ld	a, #0x20
      0089EB 62               [ 2]  632 	div	x, a
      0089EC 41               [ 1]  633 	exg	a, xl
      0089ED 6B 11            [ 1]  634 	ld	(0x11, sp), a
      0089EF 41               [ 1]  635 	exg	a, xl
                           000223   636 	Snixie$NIXIE_DisplayTime$178 ==.
                                    637 ;	Source/Device/Src/nixie.c: 179: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      0089F0 16 0D            [ 2]  638 	ldw	y, (0x0d, sp)
      0089F2 5F               [ 1]  639 	clrw	x
      0089F3 90 9F            [ 1]  640 	ld	a, yl
      0089F5 A4 10            [ 1]  641 	and	a, #0x10
      0089F7 97               [ 1]  642 	ld	xl, a
      0089F8 A6 10            [ 1]  643 	ld	a, #0x10
      0089FA 62               [ 2]  644 	div	x, a
      0089FB 9F               [ 1]  645 	ld	a, xl
      0089FC 4E               [ 1]  646 	swap	a
      0089FD A4 F0            [ 1]  647 	and	a, #0xf0
      0089FF 48               [ 1]  648 	sll	a
      008A00 48               [ 1]  649 	sll	a
      008A01 48               [ 1]  650 	sll	a
                           000235   651 	Snixie$NIXIE_DisplayTime$179 ==.
                                    652 ;	Source/Device/Src/nixie.c: 180: tmp1=tmp1|tmp2;
      008A02 1A 11            [ 1]  653 	or	a, (0x11, sp)
                           000237   654 	Snixie$NIXIE_DisplayTime$180 ==.
                                    655 ;	Source/Device/Src/nixie.c: 181: SPI_SendData(tmp1);
      008A04 88               [ 1]  656 	push	a
                           000238   657 	Snixie$NIXIE_DisplayTime$181 ==.
      008A05 CD 82 42         [ 4]  658 	call	_SPI_SendData
      008A08 84               [ 1]  659 	pop	a
                           00023C   660 	Snixie$NIXIE_DisplayTime$182 ==.
                           00023C   661 	Snixie$NIXIE_DisplayTime$183 ==.
                                    662 ;	Source/Device/Src/nixie.c: 183: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A09                        663 00109$:
      008A09 4B 02            [ 1]  664 	push	#0x02
                           00023E   665 	Snixie$NIXIE_DisplayTime$184 ==.
      008A0B CD 82 49         [ 4]  666 	call	_SPI_GetFlagStatus
      008A0E 5B 01            [ 2]  667 	addw	sp, #1
                           000243   668 	Snixie$NIXIE_DisplayTime$185 ==.
      008A10 4D               [ 1]  669 	tnz	a
      008A11 27 F6            [ 1]  670 	jreq	00109$
                           000246   671 	Snixie$NIXIE_DisplayTime$186 ==.
                                    672 ;	Source/Device/Src/nixie.c: 186: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      008A13 1E 0B            [ 2]  673 	ldw	x, (0x0b, sp)
      008A15 54               [ 2]  674 	srlw	x
      008A16 58               [ 2]  675 	sllw	x
      008A17 4F               [ 1]  676 	clr	a
      008A18 95               [ 1]  677 	ld	xh, a
      008A19 54               [ 2]  678 	srlw	x
                           00024D   679 	Snixie$NIXIE_DisplayTime$187 ==.
                                    680 ;	Source/Device/Src/nixie.c: 187: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      008A1A 7B 0C            [ 1]  681 	ld	a, (0x0c, sp)
      008A1C A4 01            [ 1]  682 	and	a, #0x01
      008A1E 4E               [ 1]  683 	swap	a
      008A1F A4 F0            [ 1]  684 	and	a, #0xf0
      008A21 48               [ 1]  685 	sll	a
      008A22 48               [ 1]  686 	sll	a
      008A23 48               [ 1]  687 	sll	a
                           000257   688 	Snixie$NIXIE_DisplayTime$188 ==.
                                    689 ;	Source/Device/Src/nixie.c: 188: tmp1=tmp1|tmp2;
      008A24 89               [ 2]  690 	pushw	x
                           000258   691 	Snixie$NIXIE_DisplayTime$189 ==.
      008A25 1A 02            [ 1]  692 	or	a, (2, sp)
      008A27 85               [ 2]  693 	popw	x
                           00025B   694 	Snixie$NIXIE_DisplayTime$190 ==.
                           00025B   695 	Snixie$NIXIE_DisplayTime$191 ==.
                                    696 ;	Source/Device/Src/nixie.c: 189: SPI_SendData(tmp1);
      008A28 88               [ 1]  697 	push	a
                           00025C   698 	Snixie$NIXIE_DisplayTime$192 ==.
      008A29 CD 82 42         [ 4]  699 	call	_SPI_SendData
      008A2C 84               [ 1]  700 	pop	a
                           000260   701 	Snixie$NIXIE_DisplayTime$193 ==.
                           000260   702 	Snixie$NIXIE_DisplayTime$194 ==.
                                    703 ;	Source/Device/Src/nixie.c: 191: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A2D                        704 00112$:
      008A2D 4B 02            [ 1]  705 	push	#0x02
                           000262   706 	Snixie$NIXIE_DisplayTime$195 ==.
      008A2F CD 82 49         [ 4]  707 	call	_SPI_GetFlagStatus
      008A32 5B 01            [ 2]  708 	addw	sp, #1
                           000267   709 	Snixie$NIXIE_DisplayTime$196 ==.
      008A34 4D               [ 1]  710 	tnz	a
      008A35 27 F6            [ 1]  711 	jreq	00112$
                           00026A   712 	Snixie$NIXIE_DisplayTime$197 ==.
                                    713 ;	Source/Device/Src/nixie.c: 193: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008A37 7B 0A            [ 1]  714 	ld	a, (0x0a, sp)
      008A39 A4 0F            [ 1]  715 	and	a, #0x0f
      008A3B 4E               [ 1]  716 	swap	a
      008A3C A4 F0            [ 1]  717 	and	a, #0xf0
      008A3E 6B 11            [ 1]  718 	ld	(0x11, sp), a
                           000273   719 	Snixie$NIXIE_DisplayTime$198 ==.
                                    720 ;	Source/Device/Src/nixie.c: 194: tmp2=(uint8_t)(tube2>>8);
      008A40 7B 0B            [ 1]  721 	ld	a, (0x0b, sp)
      008A42 5F               [ 1]  722 	clrw	x
                           000276   723 	Snixie$NIXIE_DisplayTime$199 ==.
                                    724 ;	Source/Device/Src/nixie.c: 195: tmp1=tmp1|tmp2;
      008A43 1A 11            [ 1]  725 	or	a, (0x11, sp)
      008A45 97               [ 1]  726 	ld	xl, a
                           000279   727 	Snixie$NIXIE_DisplayTime$200 ==.
                                    728 ;	Source/Device/Src/nixie.c: 196: tmp2=(tmp1&0b00000001)<<7;
      008A46 9F               [ 1]  729 	ld	a, xl
      008A47 A4 01            [ 1]  730 	and	a, #0x01
      008A49 4E               [ 1]  731 	swap	a
      008A4A A4 F0            [ 1]  732 	and	a, #0xf0
      008A4C 48               [ 1]  733 	sll	a
      008A4D 48               [ 1]  734 	sll	a
      008A4E 48               [ 1]  735 	sll	a
      008A4F 6B 11            [ 1]  736 	ld	(0x11, sp), a
                           000284   737 	Snixie$NIXIE_DisplayTime$201 ==.
                                    738 ;	Source/Device/Src/nixie.c: 197: tmp1=(tmp1>>1)|tmp2;
      008A51 9F               [ 1]  739 	ld	a, xl
      008A52 44               [ 1]  740 	srl	a
      008A53 1A 11            [ 1]  741 	or	a, (0x11, sp)
                           000288   742 	Snixie$NIXIE_DisplayTime$202 ==.
                                    743 ;	Source/Device/Src/nixie.c: 198: SPI_SendData(tmp1);
      008A55 88               [ 1]  744 	push	a
                           000289   745 	Snixie$NIXIE_DisplayTime$203 ==.
      008A56 CD 82 42         [ 4]  746 	call	_SPI_SendData
      008A59 84               [ 1]  747 	pop	a
                           00028D   748 	Snixie$NIXIE_DisplayTime$204 ==.
                           00028D   749 	Snixie$NIXIE_DisplayTime$205 ==.
                                    750 ;	Source/Device/Src/nixie.c: 200: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A5A                        751 00115$:
      008A5A 4B 02            [ 1]  752 	push	#0x02
                           00028F   753 	Snixie$NIXIE_DisplayTime$206 ==.
      008A5C CD 82 49         [ 4]  754 	call	_SPI_GetFlagStatus
      008A5F 5B 01            [ 2]  755 	addw	sp, #1
                           000294   756 	Snixie$NIXIE_DisplayTime$207 ==.
      008A61 4D               [ 1]  757 	tnz	a
      008A62 27 F6            [ 1]  758 	jreq	00115$
                           000297   759 	Snixie$NIXIE_DisplayTime$208 ==.
                                    760 ;	Source/Device/Src/nixie.c: 202: tmp1=(uint8_t)(tube1>>5);
      008A64 1E 09            [ 2]  761 	ldw	x, (0x09, sp)
      008A66 A6 20            [ 1]  762 	ld	a, #0x20
      008A68 62               [ 2]  763 	div	x, a
      008A69 41               [ 1]  764 	exg	a, xl
      008A6A 6B 11            [ 1]  765 	ld	(0x11, sp), a
      008A6C 41               [ 1]  766 	exg	a, xl
                           0002A0   767 	Snixie$NIXIE_DisplayTime$209 ==.
                                    768 ;	Source/Device/Src/nixie.c: 203: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008A6D 16 09            [ 2]  769 	ldw	y, (0x09, sp)
      008A6F 5F               [ 1]  770 	clrw	x
      008A70 90 9F            [ 1]  771 	ld	a, yl
      008A72 A4 10            [ 1]  772 	and	a, #0x10
      008A74 97               [ 1]  773 	ld	xl, a
      008A75 A6 10            [ 1]  774 	ld	a, #0x10
      008A77 62               [ 2]  775 	div	x, a
      008A78 9F               [ 1]  776 	ld	a, xl
      008A79 4E               [ 1]  777 	swap	a
      008A7A A4 F0            [ 1]  778 	and	a, #0xf0
      008A7C 48               [ 1]  779 	sll	a
      008A7D 48               [ 1]  780 	sll	a
      008A7E 48               [ 1]  781 	sll	a
                           0002B2   782 	Snixie$NIXIE_DisplayTime$210 ==.
                                    783 ;	Source/Device/Src/nixie.c: 204: tmp1=tmp1|tmp2;
      008A7F 1A 11            [ 1]  784 	or	a, (0x11, sp)
                           0002B4   785 	Snixie$NIXIE_DisplayTime$211 ==.
                                    786 ;	Source/Device/Src/nixie.c: 205: SPI_SendData(tmp1);
      008A81 88               [ 1]  787 	push	a
                           0002B5   788 	Snixie$NIXIE_DisplayTime$212 ==.
      008A82 CD 82 42         [ 4]  789 	call	_SPI_SendData
      008A85 84               [ 1]  790 	pop	a
                           0002B9   791 	Snixie$NIXIE_DisplayTime$213 ==.
                           0002B9   792 	Snixie$NIXIE_DisplayTime$214 ==.
                                    793 ;	Source/Device/Src/nixie.c: 207: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A86                        794 00118$:
      008A86 4B 02            [ 1]  795 	push	#0x02
                           0002BB   796 	Snixie$NIXIE_DisplayTime$215 ==.
      008A88 CD 82 49         [ 4]  797 	call	_SPI_GetFlagStatus
      008A8B 5B 01            [ 2]  798 	addw	sp, #1
                           0002C0   799 	Snixie$NIXIE_DisplayTime$216 ==.
      008A8D 4D               [ 1]  800 	tnz	a
      008A8E 27 F6            [ 1]  801 	jreq	00118$
                           0002C3   802 	Snixie$NIXIE_DisplayTime$217 ==.
                                    803 ;	Source/Device/Src/nixie.c: 209: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008A90 4B 80            [ 1]  804 	push	#0x80
                           0002C5   805 	Snixie$NIXIE_DisplayTime$218 ==.
      008A92 4B 0A            [ 1]  806 	push	#0x0a
                           0002C7   807 	Snixie$NIXIE_DisplayTime$219 ==.
      008A94 4B 50            [ 1]  808 	push	#0x50
                           0002C9   809 	Snixie$NIXIE_DisplayTime$220 ==.
      008A96 CD 81 3D         [ 4]  810 	call	_GPIO_WriteHigh
      008A99 5B 03            [ 2]  811 	addw	sp, #3
                           0002CE   812 	Snixie$NIXIE_DisplayTime$221 ==.
                           0002CE   813 	Snixie$NIXIE_DisplayTime$222 ==.
                           0002CE   814 	Snixie$NIXIE_DisplayTime$223 ==.
                                    815 ;	Source/Device/Src/nixie.c: 210: }
      008A9B 5B 11            [ 2]  816 	addw	sp, #17
                           0002D0   817 	Snixie$NIXIE_DisplayTime$224 ==.
                           0002D0   818 	Snixie$NIXIE_DisplayTime$225 ==.
                           0002D0   819 	XG$NIXIE_DisplayTime$0$0 ==.
      008A9D 81               [ 4]  820 	ret
                           0002D1   821 	Snixie$NIXIE_DisplayTime$226 ==.
                                    822 	.area CODE
                                    823 	.area CONST
                                    824 	.area INITIALIZER
                           000000   825 Fnixie$__xinit_aaaa$0_0$0 == .
      008080                        826 __xinit__aaaa:
      008080 00 00                  827 	.dw #0x0000
                                    828 	.area CABS (ABS)
                                    829 
                                    830 	.area .debug_line (NOLOAD)
      000D62 00 00 02 90            831 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000D66                        832 Ldebug_line_start:
      000D66 00 02                  833 	.dw	2
      000D68 00 00 00 7A            834 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000D6C 01                     835 	.db	1
      000D6D 01                     836 	.db	1
      000D6E FB                     837 	.db	-5
      000D6F 0F                     838 	.db	15
      000D70 0A                     839 	.db	10
      000D71 00                     840 	.db	0
      000D72 01                     841 	.db	1
      000D73 01                     842 	.db	1
      000D74 01                     843 	.db	1
      000D75 01                     844 	.db	1
      000D76 00                     845 	.db	0
      000D77 00                     846 	.db	0
      000D78 00                     847 	.db	0
      000D79 01                     848 	.db	1
      000D7A 43 3A 5C 50 72 6F 67   849 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000DA2 00                     850 	.db	0
      000DA3 43 3A 5C 50 72 6F 67   851 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000DC6 00                     852 	.db	0
      000DC7 00                     853 	.db	0
      000DC8 53 6F 75 72 63 65 2F   854 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      000DE1 00                     855 	.db	0
      000DE2 00                     856 	.uleb128	0
      000DE3 00                     857 	.uleb128	0
      000DE4 00                     858 	.uleb128	0
      000DE5 00                     859 	.db	0
      000DE6                        860 Ldebug_line_stmt:
      000DE6 00                     861 	.db	0
      000DE7 05                     862 	.uleb128	5
      000DE8 02                     863 	.db	2
      000DE9 00 00 87 CD            864 	.dw	0,(Snixie$delay$1)
      000DED 03                     865 	.db	3
      000DEE 2F                     866 	.sleb128	47
      000DEF 01                     867 	.db	1
      000DF0 09                     868 	.db	9
      000DF1 00 00                  869 	.dw	Snixie$delay$3-Snixie$delay$1
      000DF3 03                     870 	.db	3
      000DF4 09                     871 	.sleb128	9
      000DF5 01                     872 	.db	1
      000DF6 09                     873 	.db	9
      000DF7 00 09                  874 	.dw	Snixie$delay$4-Snixie$delay$3
      000DF9 03                     875 	.db	3
      000DFA 01                     876 	.sleb128	1
      000DFB 01                     877 	.db	1
      000DFC 09                     878 	.db	9
      000DFD 00 01                  879 	.dw	1+Snixie$delay$5-Snixie$delay$4
      000DFF 00                     880 	.db	0
      000E00 01                     881 	.uleb128	1
      000E01 01                     882 	.db	1
      000E02 00                     883 	.db	0
      000E03 05                     884 	.uleb128	5
      000E04 02                     885 	.db	2
      000E05 00 00 87 D7            886 	.dw	0,(Snixie$NIXIE_Init$7)
      000E09 03                     887 	.db	3
      000E0A 3E                     888 	.sleb128	62
      000E0B 01                     889 	.db	1
      000E0C 09                     890 	.db	9
      000E0D 00 00                  891 	.dw	Snixie$NIXIE_Init$9-Snixie$NIXIE_Init$7
      000E0F 03                     892 	.db	3
      000E10 02                     893 	.sleb128	2
      000E11 01                     894 	.db	1
      000E12 09                     895 	.db	9
      000E13 00 0D                  896 	.dw	Snixie$NIXIE_Init$15-Snixie$NIXIE_Init$9
      000E15 03                     897 	.db	3
      000E16 01                     898 	.sleb128	1
      000E17 01                     899 	.db	1
      000E18 09                     900 	.db	9
      000E19 00 0D                  901 	.dw	Snixie$NIXIE_Init$21-Snixie$NIXIE_Init$15
      000E1B 03                     902 	.db	3
      000E1C 01                     903 	.sleb128	1
      000E1D 01                     904 	.db	1
      000E1E 09                     905 	.db	9
      000E1F 00 0D                  906 	.dw	Snixie$NIXIE_Init$27-Snixie$NIXIE_Init$21
      000E21 03                     907 	.db	3
      000E22 01                     908 	.sleb128	1
      000E23 01                     909 	.db	1
      000E24 09                     910 	.db	9
      000E25 00 03                  911 	.dw	Snixie$NIXIE_Init$28-Snixie$NIXIE_Init$27
      000E27 03                     912 	.db	3
      000E28 02                     913 	.sleb128	2
      000E29 01                     914 	.db	1
      000E2A 09                     915 	.db	9
      000E2B 00 15                  916 	.dw	Snixie$NIXIE_Init$38-Snixie$NIXIE_Init$28
      000E2D 03                     917 	.db	3
      000E2E 08                     918 	.sleb128	8
      000E2F 01                     919 	.db	1
      000E30 09                     920 	.db	9
      000E31 00 06                  921 	.dw	Snixie$NIXIE_Init$41-Snixie$NIXIE_Init$38
      000E33 03                     922 	.db	3
      000E34 01                     923 	.sleb128	1
      000E35 01                     924 	.db	1
      000E36 09                     925 	.db	9
      000E37 00 01                  926 	.dw	1+Snixie$NIXIE_Init$42-Snixie$NIXIE_Init$41
      000E39 00                     927 	.db	0
      000E3A 01                     928 	.uleb128	1
      000E3B 01                     929 	.db	1
      000E3C 00                     930 	.db	0
      000E3D 05                     931 	.uleb128	5
      000E3E 02                     932 	.db	2
      000E3F 00 00 88 1D            933 	.dw	0,(Snixie$NIXIE_DisplayChar$44)
      000E43 03                     934 	.db	3
      000E44 D8 00                  935 	.sleb128	88
      000E46 01                     936 	.db	1
      000E47 09                     937 	.db	9
      000E48 00 02                  938 	.dw	Snixie$NIXIE_DisplayChar$47-Snixie$NIXIE_DisplayChar$44
      000E4A 03                     939 	.db	3
      000E4B 02                     940 	.sleb128	2
      000E4C 01                     941 	.db	1
      000E4D 09                     942 	.db	9
      000E4E 00 03                  943 	.dw	Snixie$NIXIE_DisplayChar$48-Snixie$NIXIE_DisplayChar$47
      000E50 03                     944 	.db	3
      000E51 03                     945 	.sleb128	3
      000E52 01                     946 	.db	1
      000E53 09                     947 	.db	9
      000E54 00 0F                  948 	.dw	Snixie$NIXIE_DisplayChar$53-Snixie$NIXIE_DisplayChar$48
      000E56 03                     949 	.db	3
      000E57 01                     950 	.sleb128	1
      000E58 01                     951 	.db	1
      000E59 09                     952 	.db	9
      000E5A 00 05                  953 	.dw	Snixie$NIXIE_DisplayChar$54-Snixie$NIXIE_DisplayChar$53
      000E5C 03                     954 	.db	3
      000E5D 01                     955 	.sleb128	1
      000E5E 01                     956 	.db	1
      000E5F 09                     957 	.db	9
      000E60 00 08                  958 	.dw	Snixie$NIXIE_DisplayChar$57-Snixie$NIXIE_DisplayChar$54
      000E62 03                     959 	.db	3
      000E63 02                     960 	.sleb128	2
      000E64 01                     961 	.db	1
      000E65 09                     962 	.db	9
      000E66 00 14                  963 	.dw	Snixie$NIXIE_DisplayChar$61-Snixie$NIXIE_DisplayChar$57
      000E68 03                     964 	.db	3
      000E69 01                     965 	.sleb128	1
      000E6A 01                     966 	.db	1
      000E6B 09                     967 	.db	9
      000E6C 00 16                  968 	.dw	Snixie$NIXIE_DisplayChar$63-Snixie$NIXIE_DisplayChar$61
      000E6E 03                     969 	.db	3
      000E6F 7D                     970 	.sleb128	-3
      000E70 01                     971 	.db	1
      000E71 09                     972 	.db	9
      000E72 00 04                  973 	.dw	Snixie$NIXIE_DisplayChar$65-Snixie$NIXIE_DisplayChar$63
      000E74 03                     974 	.db	3
      000E75 05                     975 	.sleb128	5
      000E76 01                     976 	.db	1
      000E77 09                     977 	.db	9
      000E78 00 0F                  978 	.dw	Snixie$NIXIE_DisplayChar$70-Snixie$NIXIE_DisplayChar$65
      000E7A 03                     979 	.db	3
      000E7B 01                     980 	.sleb128	1
      000E7C 01                     981 	.db	1
      000E7D 09                     982 	.db	9
      000E7E 00 0A                  983 	.dw	Snixie$NIXIE_DisplayChar$71-Snixie$NIXIE_DisplayChar$70
      000E80 03                     984 	.db	3
      000E81 01                     985 	.sleb128	1
      000E82 01                     986 	.db	1
      000E83 09                     987 	.db	9
      000E84 00 05                  988 	.dw	Snixie$NIXIE_DisplayChar$73-Snixie$NIXIE_DisplayChar$71
      000E86 03                     989 	.db	3
      000E87 01                     990 	.sleb128	1
      000E88 01                     991 	.db	1
      000E89 09                     992 	.db	9
      000E8A 00 07                  993 	.dw	Snixie$NIXIE_DisplayChar$74-Snixie$NIXIE_DisplayChar$73
      000E8C 03                     994 	.db	3
      000E8D 02                     995 	.sleb128	2
      000E8E 01                     996 	.db	1
      000E8F 09                     997 	.db	9
      000E90 00 0E                  998 	.dw	Snixie$NIXIE_DisplayChar$75-Snixie$NIXIE_DisplayChar$74
      000E92 03                     999 	.db	3
      000E93 01                    1000 	.sleb128	1
      000E94 01                    1001 	.db	1
      000E95 09                    1002 	.db	9
      000E96 00 10                 1003 	.dw	Snixie$NIXIE_DisplayChar$76-Snixie$NIXIE_DisplayChar$75
      000E98 03                    1004 	.db	3
      000E99 02                    1005 	.sleb128	2
      000E9A 01                    1006 	.db	1
      000E9B 09                    1007 	.db	9
      000E9C 00 01                 1008 	.dw	Snixie$NIXIE_DisplayChar$77-Snixie$NIXIE_DisplayChar$76
      000E9E 03                    1009 	.db	3
      000E9F 01                    1010 	.sleb128	1
      000EA0 01                    1011 	.db	1
      000EA1 09                    1012 	.db	9
      000EA2 00 03                 1013 	.dw	1+Snixie$NIXIE_DisplayChar$79-Snixie$NIXIE_DisplayChar$77
      000EA4 00                    1014 	.db	0
      000EA5 01                    1015 	.uleb128	1
      000EA6 01                    1016 	.db	1
      000EA7 00                    1017 	.db	0
      000EA8 05                    1018 	.uleb128	5
      000EA9 02                    1019 	.db	2
      000EAA 00 00 88 B3           1020 	.dw	0,(Snixie$NIXIE_DisplayTime$81)
      000EAE 03                    1021 	.db	3
      000EAF F7 00                 1022 	.sleb128	119
      000EB1 01                    1023 	.db	1
      000EB2 09                    1024 	.db	9
      000EB3 00 02                 1025 	.dw	Snixie$NIXIE_DisplayTime$84-Snixie$NIXIE_DisplayTime$81
      000EB5 03                    1026 	.db	3
      000EB6 04                    1027 	.sleb128	4
      000EB7 01                    1028 	.db	1
      000EB8 09                    1029 	.db	9
      000EB9 00 1C                 1030 	.dw	Snixie$NIXIE_DisplayTime$85-Snixie$NIXIE_DisplayTime$84
      000EBB 03                    1031 	.db	3
      000EBC 02                    1032 	.sleb128	2
      000EBD 01                    1033 	.db	1
      000EBE 09                    1034 	.db	9
      000EBF 00 0D                 1035 	.dw	Snixie$NIXIE_DisplayTime$90-Snixie$NIXIE_DisplayTime$85
      000EC1 03                    1036 	.db	3
      000EC2 01                    1037 	.sleb128	1
      000EC3 01                    1038 	.db	1
      000EC4 09                    1039 	.db	9
      000EC5 00 08                 1040 	.dw	Snixie$NIXIE_DisplayTime$93-Snixie$NIXIE_DisplayTime$90
      000EC7 03                    1041 	.db	3
      000EC8 02                    1042 	.sleb128	2
      000EC9 01                    1043 	.db	1
      000ECA 09                    1044 	.db	9
      000ECB 00 17                 1045 	.dw	Snixie$NIXIE_DisplayTime$102-Snixie$NIXIE_DisplayTime$93
      000ECD 03                    1046 	.db	3
      000ECE 01                    1047 	.sleb128	1
      000ECF 01                    1048 	.db	1
      000ED0 09                    1049 	.db	9
      000ED1 00 08                 1050 	.dw	Snixie$NIXIE_DisplayTime$105-Snixie$NIXIE_DisplayTime$102
      000ED3 03                    1051 	.db	3
      000ED4 02                    1052 	.sleb128	2
      000ED5 01                    1053 	.db	1
      000ED6 09                    1054 	.db	9
      000ED7 00 17                 1055 	.dw	Snixie$NIXIE_DisplayTime$114-Snixie$NIXIE_DisplayTime$105
      000ED9 03                    1056 	.db	3
      000EDA 01                    1057 	.sleb128	1
      000EDB 01                    1058 	.db	1
      000EDC 09                    1059 	.db	9
      000EDD 00 08                 1060 	.dw	Snixie$NIXIE_DisplayTime$117-Snixie$NIXIE_DisplayTime$114
      000EDF 03                    1061 	.db	3
      000EE0 02                    1062 	.sleb128	2
      000EE1 01                    1063 	.db	1
      000EE2 09                    1064 	.db	9
      000EE3 00 0D                 1065 	.dw	Snixie$NIXIE_DisplayTime$122-Snixie$NIXIE_DisplayTime$117
      000EE5 03                    1066 	.db	3
      000EE6 01                    1067 	.sleb128	1
      000EE7 01                    1068 	.db	1
      000EE8 09                    1069 	.db	9
      000EE9 00 08                 1070 	.dw	Snixie$NIXIE_DisplayTime$125-Snixie$NIXIE_DisplayTime$122
      000EEB 03                    1071 	.db	3
      000EEC 02                    1072 	.sleb128	2
      000EED 01                    1073 	.db	1
      000EEE 09                    1074 	.db	9
      000EEF 00 0F                 1075 	.dw	Snixie$NIXIE_DisplayTime$130-Snixie$NIXIE_DisplayTime$125
      000EF1 03                    1076 	.db	3
      000EF2 01                    1077 	.sleb128	1
      000EF3 01                    1078 	.db	1
      000EF4 09                    1079 	.db	9
      000EF5 00 10                 1080 	.dw	Snixie$NIXIE_DisplayTime$135-Snixie$NIXIE_DisplayTime$130
      000EF7 03                    1081 	.db	3
      000EF8 01                    1082 	.sleb128	1
      000EF9 01                    1083 	.db	1
      000EFA 09                    1084 	.db	9
      000EFB 00 10                 1085 	.dw	Snixie$NIXIE_DisplayTime$140-Snixie$NIXIE_DisplayTime$135
      000EFD 03                    1086 	.db	3
      000EFE 01                    1087 	.sleb128	1
      000EFF 01                    1088 	.db	1
      000F00 09                    1089 	.db	9
      000F01 00 10                 1090 	.dw	Snixie$NIXIE_DisplayTime$145-Snixie$NIXIE_DisplayTime$140
      000F03 03                    1091 	.db	3
      000F04 03                    1092 	.sleb128	3
      000F05 01                    1093 	.db	1
      000F06 09                    1094 	.db	9
      000F07 00 07                 1095 	.dw	Snixie$NIXIE_DisplayTime$146-Snixie$NIXIE_DisplayTime$145
      000F09 03                    1096 	.db	3
      000F0A 01                    1097 	.sleb128	1
      000F0B 01                    1098 	.db	1
      000F0C 09                    1099 	.db	9
      000F0D 00 08                 1100 	.dw	Snixie$NIXIE_DisplayTime$148-Snixie$NIXIE_DisplayTime$146
      000F0F 03                    1101 	.db	3
      000F10 01                    1102 	.sleb128	1
      000F11 01                    1103 	.db	1
      000F12 09                    1104 	.db	9
      000F13 00 04                 1105 	.dw	Snixie$NIXIE_DisplayTime$149-Snixie$NIXIE_DisplayTime$148
      000F15 03                    1106 	.db	3
      000F16 0B                    1107 	.sleb128	11
      000F17 01                    1108 	.db	1
      000F18 09                    1109 	.db	9
      000F19 00 0B                 1110 	.dw	Snixie$NIXIE_DisplayTime$155-Snixie$NIXIE_DisplayTime$149
      000F1B 03                    1111 	.db	3
      000F1C 05                    1112 	.sleb128	5
      000F1D 01                    1113 	.db	1
      000F1E 09                    1114 	.db	9
      000F1F 00 07                 1115 	.dw	Snixie$NIXIE_DisplayTime$156-Snixie$NIXIE_DisplayTime$155
      000F21 03                    1116 	.db	3
      000F22 01                    1117 	.sleb128	1
      000F23 01                    1118 	.db	1
      000F24 09                    1119 	.db	9
      000F25 00 0A                 1120 	.dw	Snixie$NIXIE_DisplayTime$157-Snixie$NIXIE_DisplayTime$156
      000F27 03                    1121 	.db	3
      000F28 01                    1122 	.sleb128	1
      000F29 01                    1123 	.db	1
      000F2A 09                    1124 	.db	9
      000F2B 00 04                 1125 	.dw	Snixie$NIXIE_DisplayTime$160-Snixie$NIXIE_DisplayTime$157
      000F2D 03                    1126 	.db	3
      000F2E 01                    1127 	.sleb128	1
      000F2F 01                    1128 	.db	1
      000F30 09                    1129 	.db	9
      000F31 00 05                 1130 	.dw	Snixie$NIXIE_DisplayTime$163-Snixie$NIXIE_DisplayTime$160
      000F33 03                    1131 	.db	3
      000F34 02                    1132 	.sleb128	2
      000F35 01                    1133 	.db	1
      000F36 09                    1134 	.db	9
      000F37 00 0A                 1135 	.dw	Snixie$NIXIE_DisplayTime$166-Snixie$NIXIE_DisplayTime$163
      000F39 03                    1136 	.db	3
      000F3A 02                    1137 	.sleb128	2
      000F3B 01                    1138 	.db	1
      000F3C 09                    1139 	.db	9
      000F3D 00 09                 1140 	.dw	Snixie$NIXIE_DisplayTime$167-Snixie$NIXIE_DisplayTime$166
      000F3F 03                    1141 	.db	3
      000F40 01                    1142 	.sleb128	1
      000F41 01                    1143 	.db	1
      000F42 09                    1144 	.db	9
      000F43 00 03                 1145 	.dw	Snixie$NIXIE_DisplayTime$168-Snixie$NIXIE_DisplayTime$167
      000F45 03                    1146 	.db	3
      000F46 01                    1147 	.sleb128	1
      000F47 01                    1148 	.db	1
      000F48 09                    1149 	.db	9
      000F49 00 03                 1150 	.dw	Snixie$NIXIE_DisplayTime$169-Snixie$NIXIE_DisplayTime$168
      000F4B 03                    1151 	.db	3
      000F4C 01                    1152 	.sleb128	1
      000F4D 01                    1153 	.db	1
      000F4E 09                    1154 	.db	9
      000F4F 00 0B                 1155 	.dw	Snixie$NIXIE_DisplayTime$170-Snixie$NIXIE_DisplayTime$169
      000F51 03                    1156 	.db	3
      000F52 01                    1157 	.sleb128	1
      000F53 01                    1158 	.db	1
      000F54 09                    1159 	.db	9
      000F55 00 04                 1160 	.dw	Snixie$NIXIE_DisplayTime$171-Snixie$NIXIE_DisplayTime$170
      000F57 03                    1161 	.db	3
      000F58 01                    1162 	.sleb128	1
      000F59 01                    1163 	.db	1
      000F5A 09                    1164 	.db	9
      000F5B 00 05                 1165 	.dw	Snixie$NIXIE_DisplayTime$174-Snixie$NIXIE_DisplayTime$171
      000F5D 03                    1166 	.db	3
      000F5E 02                    1167 	.sleb128	2
      000F5F 01                    1168 	.db	1
      000F60 09                    1169 	.db	9
      000F61 00 0A                 1170 	.dw	Snixie$NIXIE_DisplayTime$177-Snixie$NIXIE_DisplayTime$174
      000F63 03                    1171 	.db	3
      000F64 02                    1172 	.sleb128	2
      000F65 01                    1173 	.db	1
      000F66 09                    1174 	.db	9
      000F67 00 09                 1175 	.dw	Snixie$NIXIE_DisplayTime$178-Snixie$NIXIE_DisplayTime$177
      000F69 03                    1176 	.db	3
      000F6A 01                    1177 	.sleb128	1
      000F6B 01                    1178 	.db	1
      000F6C 09                    1179 	.db	9
      000F6D 00 12                 1180 	.dw	Snixie$NIXIE_DisplayTime$179-Snixie$NIXIE_DisplayTime$178
      000F6F 03                    1181 	.db	3
      000F70 01                    1182 	.sleb128	1
      000F71 01                    1183 	.db	1
      000F72 09                    1184 	.db	9
      000F73 00 02                 1185 	.dw	Snixie$NIXIE_DisplayTime$180-Snixie$NIXIE_DisplayTime$179
      000F75 03                    1186 	.db	3
      000F76 01                    1187 	.sleb128	1
      000F77 01                    1188 	.db	1
      000F78 09                    1189 	.db	9
      000F79 00 05                 1190 	.dw	Snixie$NIXIE_DisplayTime$183-Snixie$NIXIE_DisplayTime$180
      000F7B 03                    1191 	.db	3
      000F7C 02                    1192 	.sleb128	2
      000F7D 01                    1193 	.db	1
      000F7E 09                    1194 	.db	9
      000F7F 00 0A                 1195 	.dw	Snixie$NIXIE_DisplayTime$186-Snixie$NIXIE_DisplayTime$183
      000F81 03                    1196 	.db	3
      000F82 03                    1197 	.sleb128	3
      000F83 01                    1198 	.db	1
      000F84 09                    1199 	.db	9
      000F85 00 07                 1200 	.dw	Snixie$NIXIE_DisplayTime$187-Snixie$NIXIE_DisplayTime$186
      000F87 03                    1201 	.db	3
      000F88 01                    1202 	.sleb128	1
      000F89 01                    1203 	.db	1
      000F8A 09                    1204 	.db	9
      000F8B 00 0A                 1205 	.dw	Snixie$NIXIE_DisplayTime$188-Snixie$NIXIE_DisplayTime$187
      000F8D 03                    1206 	.db	3
      000F8E 01                    1207 	.sleb128	1
      000F8F 01                    1208 	.db	1
      000F90 09                    1209 	.db	9
      000F91 00 04                 1210 	.dw	Snixie$NIXIE_DisplayTime$191-Snixie$NIXIE_DisplayTime$188
      000F93 03                    1211 	.db	3
      000F94 01                    1212 	.sleb128	1
      000F95 01                    1213 	.db	1
      000F96 09                    1214 	.db	9
      000F97 00 05                 1215 	.dw	Snixie$NIXIE_DisplayTime$194-Snixie$NIXIE_DisplayTime$191
      000F99 03                    1216 	.db	3
      000F9A 02                    1217 	.sleb128	2
      000F9B 01                    1218 	.db	1
      000F9C 09                    1219 	.db	9
      000F9D 00 0A                 1220 	.dw	Snixie$NIXIE_DisplayTime$197-Snixie$NIXIE_DisplayTime$194
      000F9F 03                    1221 	.db	3
      000FA0 02                    1222 	.sleb128	2
      000FA1 01                    1223 	.db	1
      000FA2 09                    1224 	.db	9
      000FA3 00 09                 1225 	.dw	Snixie$NIXIE_DisplayTime$198-Snixie$NIXIE_DisplayTime$197
      000FA5 03                    1226 	.db	3
      000FA6 01                    1227 	.sleb128	1
      000FA7 01                    1228 	.db	1
      000FA8 09                    1229 	.db	9
      000FA9 00 03                 1230 	.dw	Snixie$NIXIE_DisplayTime$199-Snixie$NIXIE_DisplayTime$198
      000FAB 03                    1231 	.db	3
      000FAC 01                    1232 	.sleb128	1
      000FAD 01                    1233 	.db	1
      000FAE 09                    1234 	.db	9
      000FAF 00 03                 1235 	.dw	Snixie$NIXIE_DisplayTime$200-Snixie$NIXIE_DisplayTime$199
      000FB1 03                    1236 	.db	3
      000FB2 01                    1237 	.sleb128	1
      000FB3 01                    1238 	.db	1
      000FB4 09                    1239 	.db	9
      000FB5 00 0B                 1240 	.dw	Snixie$NIXIE_DisplayTime$201-Snixie$NIXIE_DisplayTime$200
      000FB7 03                    1241 	.db	3
      000FB8 01                    1242 	.sleb128	1
      000FB9 01                    1243 	.db	1
      000FBA 09                    1244 	.db	9
      000FBB 00 04                 1245 	.dw	Snixie$NIXIE_DisplayTime$202-Snixie$NIXIE_DisplayTime$201
      000FBD 03                    1246 	.db	3
      000FBE 01                    1247 	.sleb128	1
      000FBF 01                    1248 	.db	1
      000FC0 09                    1249 	.db	9
      000FC1 00 05                 1250 	.dw	Snixie$NIXIE_DisplayTime$205-Snixie$NIXIE_DisplayTime$202
      000FC3 03                    1251 	.db	3
      000FC4 02                    1252 	.sleb128	2
      000FC5 01                    1253 	.db	1
      000FC6 09                    1254 	.db	9
      000FC7 00 0A                 1255 	.dw	Snixie$NIXIE_DisplayTime$208-Snixie$NIXIE_DisplayTime$205
      000FC9 03                    1256 	.db	3
      000FCA 02                    1257 	.sleb128	2
      000FCB 01                    1258 	.db	1
      000FCC 09                    1259 	.db	9
      000FCD 00 09                 1260 	.dw	Snixie$NIXIE_DisplayTime$209-Snixie$NIXIE_DisplayTime$208
      000FCF 03                    1261 	.db	3
      000FD0 01                    1262 	.sleb128	1
      000FD1 01                    1263 	.db	1
      000FD2 09                    1264 	.db	9
      000FD3 00 12                 1265 	.dw	Snixie$NIXIE_DisplayTime$210-Snixie$NIXIE_DisplayTime$209
      000FD5 03                    1266 	.db	3
      000FD6 01                    1267 	.sleb128	1
      000FD7 01                    1268 	.db	1
      000FD8 09                    1269 	.db	9
      000FD9 00 02                 1270 	.dw	Snixie$NIXIE_DisplayTime$211-Snixie$NIXIE_DisplayTime$210
      000FDB 03                    1271 	.db	3
      000FDC 01                    1272 	.sleb128	1
      000FDD 01                    1273 	.db	1
      000FDE 09                    1274 	.db	9
      000FDF 00 05                 1275 	.dw	Snixie$NIXIE_DisplayTime$214-Snixie$NIXIE_DisplayTime$211
      000FE1 03                    1276 	.db	3
      000FE2 02                    1277 	.sleb128	2
      000FE3 01                    1278 	.db	1
      000FE4 09                    1279 	.db	9
      000FE5 00 0A                 1280 	.dw	Snixie$NIXIE_DisplayTime$217-Snixie$NIXIE_DisplayTime$214
      000FE7 03                    1281 	.db	3
      000FE8 02                    1282 	.sleb128	2
      000FE9 01                    1283 	.db	1
      000FEA 09                    1284 	.db	9
      000FEB 00 0B                 1285 	.dw	Snixie$NIXIE_DisplayTime$223-Snixie$NIXIE_DisplayTime$217
      000FED 03                    1286 	.db	3
      000FEE 01                    1287 	.sleb128	1
      000FEF 01                    1288 	.db	1
      000FF0 09                    1289 	.db	9
      000FF1 00 03                 1290 	.dw	1+Snixie$NIXIE_DisplayTime$225-Snixie$NIXIE_DisplayTime$223
      000FF3 00                    1291 	.db	0
      000FF4 01                    1292 	.uleb128	1
      000FF5 01                    1293 	.db	1
      000FF6                       1294 Ldebug_line_end:
                                   1295 
                                   1296 	.area .debug_loc (NOLOAD)
      0008B0                       1297 Ldebug_loc_start:
      0008B0 00 00 8A 9D           1298 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      0008B4 00 00 8A 9E           1299 	.dw	0,(Snixie$NIXIE_DisplayTime$226)
      0008B8 00 02                 1300 	.dw	2
      0008BA 78                    1301 	.db	120
      0008BB 01                    1302 	.sleb128	1
      0008BC 00 00 8A 9B           1303 	.dw	0,(Snixie$NIXIE_DisplayTime$221)
      0008C0 00 00 8A 9D           1304 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      0008C4 00 02                 1305 	.dw	2
      0008C6 78                    1306 	.db	120
      0008C7 12                    1307 	.sleb128	18
      0008C8 00 00 8A 96           1308 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      0008CC 00 00 8A 9B           1309 	.dw	0,(Snixie$NIXIE_DisplayTime$221)
      0008D0 00 02                 1310 	.dw	2
      0008D2 78                    1311 	.db	120
      0008D3 15                    1312 	.sleb128	21
      0008D4 00 00 8A 94           1313 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      0008D8 00 00 8A 96           1314 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      0008DC 00 02                 1315 	.dw	2
      0008DE 78                    1316 	.db	120
      0008DF 14                    1317 	.sleb128	20
      0008E0 00 00 8A 92           1318 	.dw	0,(Snixie$NIXIE_DisplayTime$218)
      0008E4 00 00 8A 94           1319 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      0008E8 00 02                 1320 	.dw	2
      0008EA 78                    1321 	.db	120
      0008EB 13                    1322 	.sleb128	19
      0008EC 00 00 8A 8D           1323 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      0008F0 00 00 8A 92           1324 	.dw	0,(Snixie$NIXIE_DisplayTime$218)
      0008F4 00 02                 1325 	.dw	2
      0008F6 78                    1326 	.db	120
      0008F7 12                    1327 	.sleb128	18
      0008F8 00 00 8A 88           1328 	.dw	0,(Snixie$NIXIE_DisplayTime$215)
      0008FC 00 00 8A 8D           1329 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      000900 00 02                 1330 	.dw	2
      000902 78                    1331 	.db	120
      000903 13                    1332 	.sleb128	19
      000904 00 00 8A 86           1333 	.dw	0,(Snixie$NIXIE_DisplayTime$213)
      000908 00 00 8A 88           1334 	.dw	0,(Snixie$NIXIE_DisplayTime$215)
      00090C 00 02                 1335 	.dw	2
      00090E 78                    1336 	.db	120
      00090F 12                    1337 	.sleb128	18
      000910 00 00 8A 82           1338 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      000914 00 00 8A 86           1339 	.dw	0,(Snixie$NIXIE_DisplayTime$213)
      000918 00 02                 1340 	.dw	2
      00091A 78                    1341 	.db	120
      00091B 13                    1342 	.sleb128	19
      00091C 00 00 8A 61           1343 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000920 00 00 8A 82           1344 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      000924 00 02                 1345 	.dw	2
      000926 78                    1346 	.db	120
      000927 12                    1347 	.sleb128	18
      000928 00 00 8A 5C           1348 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      00092C 00 00 8A 61           1349 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000930 00 02                 1350 	.dw	2
      000932 78                    1351 	.db	120
      000933 13                    1352 	.sleb128	19
      000934 00 00 8A 5A           1353 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      000938 00 00 8A 5C           1354 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      00093C 00 02                 1355 	.dw	2
      00093E 78                    1356 	.db	120
      00093F 12                    1357 	.sleb128	18
      000940 00 00 8A 56           1358 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      000944 00 00 8A 5A           1359 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      000948 00 02                 1360 	.dw	2
      00094A 78                    1361 	.db	120
      00094B 13                    1362 	.sleb128	19
      00094C 00 00 8A 34           1363 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      000950 00 00 8A 56           1364 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      000954 00 02                 1365 	.dw	2
      000956 78                    1366 	.db	120
      000957 12                    1367 	.sleb128	18
      000958 00 00 8A 2F           1368 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      00095C 00 00 8A 34           1369 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      000960 00 02                 1370 	.dw	2
      000962 78                    1371 	.db	120
      000963 13                    1372 	.sleb128	19
      000964 00 00 8A 2D           1373 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      000968 00 00 8A 2F           1374 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      00096C 00 02                 1375 	.dw	2
      00096E 78                    1376 	.db	120
      00096F 12                    1377 	.sleb128	18
      000970 00 00 8A 29           1378 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      000974 00 00 8A 2D           1379 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      000978 00 02                 1380 	.dw	2
      00097A 78                    1381 	.db	120
      00097B 13                    1382 	.sleb128	19
      00097C 00 00 8A 28           1383 	.dw	0,(Snixie$NIXIE_DisplayTime$190)
      000980 00 00 8A 29           1384 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      000984 00 02                 1385 	.dw	2
      000986 78                    1386 	.db	120
      000987 12                    1387 	.sleb128	18
      000988 00 00 8A 25           1388 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      00098C 00 00 8A 28           1389 	.dw	0,(Snixie$NIXIE_DisplayTime$190)
      000990 00 02                 1390 	.dw	2
      000992 78                    1391 	.db	120
      000993 14                    1392 	.sleb128	20
      000994 00 00 8A 10           1393 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      000998 00 00 8A 25           1394 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      00099C 00 02                 1395 	.dw	2
      00099E 78                    1396 	.db	120
      00099F 12                    1397 	.sleb128	18
      0009A0 00 00 8A 0B           1398 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      0009A4 00 00 8A 10           1399 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      0009A8 00 02                 1400 	.dw	2
      0009AA 78                    1401 	.db	120
      0009AB 13                    1402 	.sleb128	19
      0009AC 00 00 8A 09           1403 	.dw	0,(Snixie$NIXIE_DisplayTime$182)
      0009B0 00 00 8A 0B           1404 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      0009B4 00 02                 1405 	.dw	2
      0009B6 78                    1406 	.db	120
      0009B7 12                    1407 	.sleb128	18
      0009B8 00 00 8A 05           1408 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      0009BC 00 00 8A 09           1409 	.dw	0,(Snixie$NIXIE_DisplayTime$182)
      0009C0 00 02                 1410 	.dw	2
      0009C2 78                    1411 	.db	120
      0009C3 13                    1412 	.sleb128	19
      0009C4 00 00 89 E4           1413 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      0009C8 00 00 8A 05           1414 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      0009CC 00 02                 1415 	.dw	2
      0009CE 78                    1416 	.db	120
      0009CF 12                    1417 	.sleb128	18
      0009D0 00 00 89 DF           1418 	.dw	0,(Snixie$NIXIE_DisplayTime$175)
      0009D4 00 00 89 E4           1419 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      0009D8 00 02                 1420 	.dw	2
      0009DA 78                    1421 	.db	120
      0009DB 13                    1422 	.sleb128	19
      0009DC 00 00 89 DD           1423 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      0009E0 00 00 89 DF           1424 	.dw	0,(Snixie$NIXIE_DisplayTime$175)
      0009E4 00 02                 1425 	.dw	2
      0009E6 78                    1426 	.db	120
      0009E7 12                    1427 	.sleb128	18
      0009E8 00 00 89 D9           1428 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      0009EC 00 00 89 DD           1429 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      0009F0 00 02                 1430 	.dw	2
      0009F2 78                    1431 	.db	120
      0009F3 13                    1432 	.sleb128	19
      0009F4 00 00 89 B7           1433 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      0009F8 00 00 89 D9           1434 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      0009FC 00 02                 1435 	.dw	2
      0009FE 78                    1436 	.db	120
      0009FF 12                    1437 	.sleb128	18
      000A00 00 00 89 B2           1438 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      000A04 00 00 89 B7           1439 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      000A08 00 02                 1440 	.dw	2
      000A0A 78                    1441 	.db	120
      000A0B 13                    1442 	.sleb128	19
      000A0C 00 00 89 B0           1443 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      000A10 00 00 89 B2           1444 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      000A14 00 02                 1445 	.dw	2
      000A16 78                    1446 	.db	120
      000A17 12                    1447 	.sleb128	18
      000A18 00 00 89 AC           1448 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      000A1C 00 00 89 B0           1449 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      000A20 00 02                 1450 	.dw	2
      000A22 78                    1451 	.db	120
      000A23 13                    1452 	.sleb128	19
      000A24 00 00 89 AB           1453 	.dw	0,(Snixie$NIXIE_DisplayTime$159)
      000A28 00 00 89 AC           1454 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      000A2C 00 02                 1455 	.dw	2
      000A2E 78                    1456 	.db	120
      000A2F 12                    1457 	.sleb128	18
      000A30 00 00 89 A8           1458 	.dw	0,(Snixie$NIXIE_DisplayTime$158)
      000A34 00 00 89 AB           1459 	.dw	0,(Snixie$NIXIE_DisplayTime$159)
      000A38 00 02                 1460 	.dw	2
      000A3A 78                    1461 	.db	120
      000A3B 14                    1462 	.sleb128	20
      000A3C 00 00 89 96           1463 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      000A40 00 00 89 A8           1464 	.dw	0,(Snixie$NIXIE_DisplayTime$158)
      000A44 00 02                 1465 	.dw	2
      000A46 78                    1466 	.db	120
      000A47 12                    1467 	.sleb128	18
      000A48 00 00 89 91           1468 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000A4C 00 00 89 96           1469 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      000A50 00 02                 1470 	.dw	2
      000A52 78                    1471 	.db	120
      000A53 15                    1472 	.sleb128	21
      000A54 00 00 89 8F           1473 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      000A58 00 00 89 91           1474 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000A5C 00 02                 1475 	.dw	2
      000A5E 78                    1476 	.db	120
      000A5F 14                    1477 	.sleb128	20
      000A60 00 00 89 8D           1478 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000A64 00 00 89 8F           1479 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      000A68 00 02                 1480 	.dw	2
      000A6A 78                    1481 	.db	120
      000A6B 13                    1482 	.sleb128	19
      000A6C 00 00 89 87           1483 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      000A70 00 00 89 8D           1484 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000A74 00 02                 1485 	.dw	2
      000A76 78                    1486 	.db	120
      000A77 12                    1487 	.sleb128	18
      000A78 00 00 89 76           1488 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      000A7C 00 00 89 87           1489 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      000A80 00 02                 1490 	.dw	2
      000A82 78                    1491 	.db	120
      000A83 12                    1492 	.sleb128	18
      000A84 00 00 89 71           1493 	.dw	0,(Snixie$NIXIE_DisplayTime$143)
      000A88 00 00 89 76           1494 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      000A8C 00 02                 1495 	.dw	2
      000A8E 78                    1496 	.db	120
      000A8F 16                    1497 	.sleb128	22
      000A90 00 00 89 6F           1498 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      000A94 00 00 89 71           1499 	.dw	0,(Snixie$NIXIE_DisplayTime$143)
      000A98 00 02                 1500 	.dw	2
      000A9A 78                    1501 	.db	120
      000A9B 15                    1502 	.sleb128	21
      000A9C 00 00 89 6A           1503 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      000AA0 00 00 89 6F           1504 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      000AA4 00 02                 1505 	.dw	2
      000AA6 78                    1506 	.db	120
      000AA7 13                    1507 	.sleb128	19
      000AA8 00 00 89 66           1508 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      000AAC 00 00 89 6A           1509 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      000AB0 00 02                 1510 	.dw	2
      000AB2 78                    1511 	.db	120
      000AB3 12                    1512 	.sleb128	18
      000AB4 00 00 89 61           1513 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      000AB8 00 00 89 66           1514 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      000ABC 00 02                 1515 	.dw	2
      000ABE 78                    1516 	.db	120
      000ABF 16                    1517 	.sleb128	22
      000AC0 00 00 89 5F           1518 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      000AC4 00 00 89 61           1519 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      000AC8 00 02                 1520 	.dw	2
      000ACA 78                    1521 	.db	120
      000ACB 15                    1522 	.sleb128	21
      000ACC 00 00 89 5A           1523 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      000AD0 00 00 89 5F           1524 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      000AD4 00 02                 1525 	.dw	2
      000AD6 78                    1526 	.db	120
      000AD7 13                    1527 	.sleb128	19
      000AD8 00 00 89 56           1528 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      000ADC 00 00 89 5A           1529 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      000AE0 00 02                 1530 	.dw	2
      000AE2 78                    1531 	.db	120
      000AE3 12                    1532 	.sleb128	18
      000AE4 00 00 89 51           1533 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      000AE8 00 00 89 56           1534 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      000AEC 00 02                 1535 	.dw	2
      000AEE 78                    1536 	.db	120
      000AEF 16                    1537 	.sleb128	22
      000AF0 00 00 89 4F           1538 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      000AF4 00 00 89 51           1539 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      000AF8 00 02                 1540 	.dw	2
      000AFA 78                    1541 	.db	120
      000AFB 15                    1542 	.sleb128	21
      000AFC 00 00 89 4A           1543 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      000B00 00 00 89 4F           1544 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      000B04 00 02                 1545 	.dw	2
      000B06 78                    1546 	.db	120
      000B07 13                    1547 	.sleb128	19
      000B08 00 00 89 46           1548 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      000B0C 00 00 89 4A           1549 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      000B10 00 02                 1550 	.dw	2
      000B12 78                    1551 	.db	120
      000B13 12                    1552 	.sleb128	18
      000B14 00 00 89 41           1553 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      000B18 00 00 89 46           1554 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      000B1C 00 02                 1555 	.dw	2
      000B1E 78                    1556 	.db	120
      000B1F 16                    1557 	.sleb128	22
      000B20 00 00 89 3F           1558 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      000B24 00 00 89 41           1559 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      000B28 00 02                 1560 	.dw	2
      000B2A 78                    1561 	.db	120
      000B2B 15                    1562 	.sleb128	21
      000B2C 00 00 89 3B           1563 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      000B30 00 00 89 3F           1564 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      000B34 00 02                 1565 	.dw	2
      000B36 78                    1566 	.db	120
      000B37 13                    1567 	.sleb128	19
      000B38 00 00 89 37           1568 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      000B3C 00 00 89 3B           1569 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      000B40 00 02                 1570 	.dw	2
      000B42 78                    1571 	.db	120
      000B43 12                    1572 	.sleb128	18
      000B44 00 00 89 34           1573 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      000B48 00 00 89 37           1574 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      000B4C 00 02                 1575 	.dw	2
      000B4E 78                    1576 	.db	120
      000B4F 14                    1577 	.sleb128	20
      000B50 00 00 89 31           1578 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      000B54 00 00 89 34           1579 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      000B58 00 02                 1580 	.dw	2
      000B5A 78                    1581 	.db	120
      000B5B 12                    1582 	.sleb128	18
      000B5C 00 00 89 2C           1583 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      000B60 00 00 89 31           1584 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      000B64 00 02                 1585 	.dw	2
      000B66 78                    1586 	.db	120
      000B67 16                    1587 	.sleb128	22
      000B68 00 00 89 28           1588 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      000B6C 00 00 89 2C           1589 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      000B70 00 02                 1590 	.dw	2
      000B72 78                    1591 	.db	120
      000B73 14                    1592 	.sleb128	20
      000B74 00 00 89 26           1593 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      000B78 00 00 89 28           1594 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      000B7C 00 02                 1595 	.dw	2
      000B7E 78                    1596 	.db	120
      000B7F 13                    1597 	.sleb128	19
      000B80 00 00 89 22           1598 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      000B84 00 00 89 26           1599 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      000B88 00 02                 1600 	.dw	2
      000B8A 78                    1601 	.db	120
      000B8B 12                    1602 	.sleb128	18
      000B8C 00 00 89 1F           1603 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      000B90 00 00 89 22           1604 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      000B94 00 02                 1605 	.dw	2
      000B96 78                    1606 	.db	120
      000B97 14                    1607 	.sleb128	20
      000B98 00 00 89 1C           1608 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      000B9C 00 00 89 1F           1609 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      000BA0 00 02                 1610 	.dw	2
      000BA2 78                    1611 	.db	120
      000BA3 12                    1612 	.sleb128	18
      000BA4 00 00 89 17           1613 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      000BA8 00 00 89 1C           1614 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      000BAC 00 02                 1615 	.dw	2
      000BAE 78                    1616 	.db	120
      000BAF 16                    1617 	.sleb128	22
      000BB0 00 00 89 16           1618 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      000BB4 00 00 89 17           1619 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      000BB8 00 02                 1620 	.dw	2
      000BBA 78                    1621 	.db	120
      000BBB 14                    1622 	.sleb128	20
      000BBC 00 00 89 14           1623 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      000BC0 00 00 89 16           1624 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      000BC4 00 02                 1625 	.dw	2
      000BC6 78                    1626 	.db	120
      000BC7 13                    1627 	.sleb128	19
      000BC8 00 00 89 12           1628 	.dw	0,(Snixie$NIXIE_DisplayTime$109)
      000BCC 00 00 89 14           1629 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      000BD0 00 02                 1630 	.dw	2
      000BD2 78                    1631 	.db	120
      000BD3 12                    1632 	.sleb128	18
      000BD4 00 00 89 0D           1633 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      000BD8 00 00 89 12           1634 	.dw	0,(Snixie$NIXIE_DisplayTime$109)
      000BDC 00 02                 1635 	.dw	2
      000BDE 78                    1636 	.db	120
      000BDF 16                    1637 	.sleb128	22
      000BE0 00 00 89 09           1638 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      000BE4 00 00 89 0D           1639 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      000BE8 00 02                 1640 	.dw	2
      000BEA 78                    1641 	.db	120
      000BEB 14                    1642 	.sleb128	20
      000BEC 00 00 89 07           1643 	.dw	0,(Snixie$NIXIE_DisplayTime$106)
      000BF0 00 00 89 09           1644 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      000BF4 00 02                 1645 	.dw	2
      000BF6 78                    1646 	.db	120
      000BF7 13                    1647 	.sleb128	19
      000BF8 00 00 89 03           1648 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      000BFC 00 00 89 07           1649 	.dw	0,(Snixie$NIXIE_DisplayTime$106)
      000C00 00 02                 1650 	.dw	2
      000C02 78                    1651 	.db	120
      000C03 12                    1652 	.sleb128	18
      000C04 00 00 89 00           1653 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      000C08 00 00 89 03           1654 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      000C0C 00 02                 1655 	.dw	2
      000C0E 78                    1656 	.db	120
      000C0F 14                    1657 	.sleb128	20
      000C10 00 00 88 FD           1658 	.dw	0,(Snixie$NIXIE_DisplayTime$101)
      000C14 00 00 89 00           1659 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      000C18 00 02                 1660 	.dw	2
      000C1A 78                    1661 	.db	120
      000C1B 12                    1662 	.sleb128	18
      000C1C 00 00 88 F8           1663 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      000C20 00 00 88 FD           1664 	.dw	0,(Snixie$NIXIE_DisplayTime$101)
      000C24 00 02                 1665 	.dw	2
      000C26 78                    1666 	.db	120
      000C27 16                    1667 	.sleb128	22
      000C28 00 00 88 F7           1668 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      000C2C 00 00 88 F8           1669 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      000C30 00 02                 1670 	.dw	2
      000C32 78                    1671 	.db	120
      000C33 14                    1672 	.sleb128	20
      000C34 00 00 88 F5           1673 	.dw	0,(Snixie$NIXIE_DisplayTime$98)
      000C38 00 00 88 F7           1674 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      000C3C 00 02                 1675 	.dw	2
      000C3E 78                    1676 	.db	120
      000C3F 13                    1677 	.sleb128	19
      000C40 00 00 88 F3           1678 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      000C44 00 00 88 F5           1679 	.dw	0,(Snixie$NIXIE_DisplayTime$98)
      000C48 00 02                 1680 	.dw	2
      000C4A 78                    1681 	.db	120
      000C4B 12                    1682 	.sleb128	18
      000C4C 00 00 88 EE           1683 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      000C50 00 00 88 F3           1684 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      000C54 00 02                 1685 	.dw	2
      000C56 78                    1686 	.db	120
      000C57 16                    1687 	.sleb128	22
      000C58 00 00 88 EA           1688 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      000C5C 00 00 88 EE           1689 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      000C60 00 02                 1690 	.dw	2
      000C62 78                    1691 	.db	120
      000C63 14                    1692 	.sleb128	20
      000C64 00 00 88 E8           1693 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      000C68 00 00 88 EA           1694 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      000C6C 00 02                 1695 	.dw	2
      000C6E 78                    1696 	.db	120
      000C6F 13                    1697 	.sleb128	19
      000C70 00 00 88 E4           1698 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      000C74 00 00 88 E8           1699 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      000C78 00 02                 1700 	.dw	2
      000C7A 78                    1701 	.db	120
      000C7B 12                    1702 	.sleb128	18
      000C7C 00 00 88 E1           1703 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      000C80 00 00 88 E4           1704 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      000C84 00 02                 1705 	.dw	2
      000C86 78                    1706 	.db	120
      000C87 14                    1707 	.sleb128	20
      000C88 00 00 88 DE           1708 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      000C8C 00 00 88 E1           1709 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      000C90 00 02                 1710 	.dw	2
      000C92 78                    1711 	.db	120
      000C93 12                    1712 	.sleb128	18
      000C94 00 00 88 D9           1713 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      000C98 00 00 88 DE           1714 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      000C9C 00 02                 1715 	.dw	2
      000C9E 78                    1716 	.db	120
      000C9F 16                    1717 	.sleb128	22
      000CA0 00 00 88 D5           1718 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      000CA4 00 00 88 D9           1719 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      000CA8 00 02                 1720 	.dw	2
      000CAA 78                    1721 	.db	120
      000CAB 14                    1722 	.sleb128	20
      000CAC 00 00 88 D3           1723 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      000CB0 00 00 88 D5           1724 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      000CB4 00 02                 1725 	.dw	2
      000CB6 78                    1726 	.db	120
      000CB7 13                    1727 	.sleb128	19
      000CB8 00 00 88 B5           1728 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      000CBC 00 00 88 D3           1729 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      000CC0 00 02                 1730 	.dw	2
      000CC2 78                    1731 	.db	120
      000CC3 12                    1732 	.sleb128	18
      000CC4 00 00 88 B3           1733 	.dw	0,(Snixie$NIXIE_DisplayTime$82)
      000CC8 00 00 88 B5           1734 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      000CCC 00 02                 1735 	.dw	2
      000CCE 78                    1736 	.db	120
      000CCF 01                    1737 	.sleb128	1
      000CD0 00 00 00 00           1738 	.dw	0,0
      000CD4 00 00 00 00           1739 	.dw	0,0
      000CD8 00 00 88 B2           1740 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      000CDC 00 00 88 B3           1741 	.dw	0,(Snixie$NIXIE_DisplayChar$80)
      000CE0 00 02                 1742 	.dw	2
      000CE2 78                    1743 	.db	120
      000CE3 01                    1744 	.sleb128	1
      000CE4 00 00 88 8A           1745 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      000CE8 00 00 88 B2           1746 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      000CEC 00 02                 1747 	.dw	2
      000CEE 78                    1748 	.db	120
      000CEF 06                    1749 	.sleb128	6
      000CF0 00 00 88 78           1750 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      000CF4 00 00 88 8A           1751 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      000CF8 00 02                 1752 	.dw	2
      000CFA 78                    1753 	.db	120
      000CFB 06                    1754 	.sleb128	6
      000CFC 00 00 88 73           1755 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      000D00 00 00 88 78           1756 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      000D04 00 02                 1757 	.dw	2
      000D06 78                    1758 	.db	120
      000D07 0A                    1759 	.sleb128	10
      000D08 00 00 88 70           1760 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      000D0C 00 00 88 73           1761 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      000D10 00 02                 1762 	.dw	2
      000D12 78                    1763 	.db	120
      000D13 08                    1764 	.sleb128	8
      000D14 00 00 88 6E           1765 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      000D18 00 00 88 70           1766 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      000D1C 00 02                 1767 	.dw	2
      000D1E 78                    1768 	.db	120
      000D1F 07                    1769 	.sleb128	7
      000D20 00 00 88 4E           1770 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      000D24 00 00 88 6E           1771 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      000D28 00 02                 1772 	.dw	2
      000D2A 78                    1773 	.db	120
      000D2B 06                    1774 	.sleb128	6
      000D2C 00 00 88 49           1775 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      000D30 00 00 88 4E           1776 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      000D34 00 02                 1777 	.dw	2
      000D36 78                    1778 	.db	120
      000D37 0A                    1779 	.sleb128	10
      000D38 00 00 88 46           1780 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      000D3C 00 00 88 49           1781 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      000D40 00 02                 1782 	.dw	2
      000D42 78                    1783 	.db	120
      000D43 08                    1784 	.sleb128	8
      000D44 00 00 88 2E           1785 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      000D48 00 00 88 46           1786 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      000D4C 00 02                 1787 	.dw	2
      000D4E 78                    1788 	.db	120
      000D4F 06                    1789 	.sleb128	6
      000D50 00 00 88 29           1790 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      000D54 00 00 88 2E           1791 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      000D58 00 02                 1792 	.dw	2
      000D5A 78                    1793 	.db	120
      000D5B 0A                    1794 	.sleb128	10
      000D5C 00 00 88 26           1795 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      000D60 00 00 88 29           1796 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      000D64 00 02                 1797 	.dw	2
      000D66 78                    1798 	.db	120
      000D67 08                    1799 	.sleb128	8
      000D68 00 00 88 24           1800 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      000D6C 00 00 88 26           1801 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      000D70 00 02                 1802 	.dw	2
      000D72 78                    1803 	.db	120
      000D73 07                    1804 	.sleb128	7
      000D74 00 00 88 1F           1805 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      000D78 00 00 88 24           1806 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      000D7C 00 02                 1807 	.dw	2
      000D7E 78                    1808 	.db	120
      000D7F 06                    1809 	.sleb128	6
      000D80 00 00 88 1D           1810 	.dw	0,(Snixie$NIXIE_DisplayChar$45)
      000D84 00 00 88 1F           1811 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      000D88 00 02                 1812 	.dw	2
      000D8A 78                    1813 	.db	120
      000D8B 01                    1814 	.sleb128	1
      000D8C 00 00 00 00           1815 	.dw	0,0
      000D90 00 00 00 00           1816 	.dw	0,0
      000D94 00 00 88 1C           1817 	.dw	0,(Snixie$NIXIE_Init$40)
      000D98 00 00 88 1D           1818 	.dw	0,(Snixie$NIXIE_Init$43)
      000D9C 00 02                 1819 	.dw	2
      000D9E 78                    1820 	.db	120
      000D9F 01                    1821 	.sleb128	1
      000DA0 00 00 88 18           1822 	.dw	0,(Snixie$NIXIE_Init$39)
      000DA4 00 00 88 1C           1823 	.dw	0,(Snixie$NIXIE_Init$40)
      000DA8 00 02                 1824 	.dw	2
      000DAA 78                    1825 	.db	120
      000DAB 02                    1826 	.sleb128	2
      000DAC 00 00 88 16           1827 	.dw	0,(Snixie$NIXIE_Init$37)
      000DB0 00 00 88 18           1828 	.dw	0,(Snixie$NIXIE_Init$39)
      000DB4 00 02                 1829 	.dw	2
      000DB6 78                    1830 	.db	120
      000DB7 01                    1831 	.sleb128	1
      000DB8 00 00 88 11           1832 	.dw	0,(Snixie$NIXIE_Init$36)
      000DBC 00 00 88 16           1833 	.dw	0,(Snixie$NIXIE_Init$37)
      000DC0 00 02                 1834 	.dw	2
      000DC2 78                    1835 	.db	120
      000DC3 09                    1836 	.sleb128	9
      000DC4 00 00 88 0F           1837 	.dw	0,(Snixie$NIXIE_Init$35)
      000DC8 00 00 88 11           1838 	.dw	0,(Snixie$NIXIE_Init$36)
      000DCC 00 02                 1839 	.dw	2
      000DCE 78                    1840 	.db	120
      000DCF 08                    1841 	.sleb128	8
      000DD0 00 00 88 0D           1842 	.dw	0,(Snixie$NIXIE_Init$34)
      000DD4 00 00 88 0F           1843 	.dw	0,(Snixie$NIXIE_Init$35)
      000DD8 00 02                 1844 	.dw	2
      000DDA 78                    1845 	.db	120
      000DDB 07                    1846 	.sleb128	7
      000DDC 00 00 88 0B           1847 	.dw	0,(Snixie$NIXIE_Init$33)
      000DE0 00 00 88 0D           1848 	.dw	0,(Snixie$NIXIE_Init$34)
      000DE4 00 02                 1849 	.dw	2
      000DE6 78                    1850 	.db	120
      000DE7 06                    1851 	.sleb128	6
      000DE8 00 00 88 09           1852 	.dw	0,(Snixie$NIXIE_Init$32)
      000DEC 00 00 88 0B           1853 	.dw	0,(Snixie$NIXIE_Init$33)
      000DF0 00 02                 1854 	.dw	2
      000DF2 78                    1855 	.db	120
      000DF3 05                    1856 	.sleb128	5
      000DF4 00 00 88 07           1857 	.dw	0,(Snixie$NIXIE_Init$31)
      000DF8 00 00 88 09           1858 	.dw	0,(Snixie$NIXIE_Init$32)
      000DFC 00 02                 1859 	.dw	2
      000DFE 78                    1860 	.db	120
      000DFF 04                    1861 	.sleb128	4
      000E00 00 00 88 05           1862 	.dw	0,(Snixie$NIXIE_Init$30)
      000E04 00 00 88 07           1863 	.dw	0,(Snixie$NIXIE_Init$31)
      000E08 00 02                 1864 	.dw	2
      000E0A 78                    1865 	.db	120
      000E0B 03                    1866 	.sleb128	3
      000E0C 00 00 88 03           1867 	.dw	0,(Snixie$NIXIE_Init$29)
      000E10 00 00 88 05           1868 	.dw	0,(Snixie$NIXIE_Init$30)
      000E14 00 02                 1869 	.dw	2
      000E16 78                    1870 	.db	120
      000E17 02                    1871 	.sleb128	2
      000E18 00 00 87 FE           1872 	.dw	0,(Snixie$NIXIE_Init$26)
      000E1C 00 00 88 03           1873 	.dw	0,(Snixie$NIXIE_Init$29)
      000E20 00 02                 1874 	.dw	2
      000E22 78                    1875 	.db	120
      000E23 01                    1876 	.sleb128	1
      000E24 00 00 87 F9           1877 	.dw	0,(Snixie$NIXIE_Init$25)
      000E28 00 00 87 FE           1878 	.dw	0,(Snixie$NIXIE_Init$26)
      000E2C 00 02                 1879 	.dw	2
      000E2E 78                    1880 	.db	120
      000E2F 05                    1881 	.sleb128	5
      000E30 00 00 87 F7           1882 	.dw	0,(Snixie$NIXIE_Init$24)
      000E34 00 00 87 F9           1883 	.dw	0,(Snixie$NIXIE_Init$25)
      000E38 00 02                 1884 	.dw	2
      000E3A 78                    1885 	.db	120
      000E3B 04                    1886 	.sleb128	4
      000E3C 00 00 87 F5           1887 	.dw	0,(Snixie$NIXIE_Init$23)
      000E40 00 00 87 F7           1888 	.dw	0,(Snixie$NIXIE_Init$24)
      000E44 00 02                 1889 	.dw	2
      000E46 78                    1890 	.db	120
      000E47 03                    1891 	.sleb128	3
      000E48 00 00 87 F3           1892 	.dw	0,(Snixie$NIXIE_Init$22)
      000E4C 00 00 87 F5           1893 	.dw	0,(Snixie$NIXIE_Init$23)
      000E50 00 02                 1894 	.dw	2
      000E52 78                    1895 	.db	120
      000E53 02                    1896 	.sleb128	2
      000E54 00 00 87 F1           1897 	.dw	0,(Snixie$NIXIE_Init$20)
      000E58 00 00 87 F3           1898 	.dw	0,(Snixie$NIXIE_Init$22)
      000E5C 00 02                 1899 	.dw	2
      000E5E 78                    1900 	.db	120
      000E5F 01                    1901 	.sleb128	1
      000E60 00 00 87 EC           1902 	.dw	0,(Snixie$NIXIE_Init$19)
      000E64 00 00 87 F1           1903 	.dw	0,(Snixie$NIXIE_Init$20)
      000E68 00 02                 1904 	.dw	2
      000E6A 78                    1905 	.db	120
      000E6B 05                    1906 	.sleb128	5
      000E6C 00 00 87 EA           1907 	.dw	0,(Snixie$NIXIE_Init$18)
      000E70 00 00 87 EC           1908 	.dw	0,(Snixie$NIXIE_Init$19)
      000E74 00 02                 1909 	.dw	2
      000E76 78                    1910 	.db	120
      000E77 04                    1911 	.sleb128	4
      000E78 00 00 87 E8           1912 	.dw	0,(Snixie$NIXIE_Init$17)
      000E7C 00 00 87 EA           1913 	.dw	0,(Snixie$NIXIE_Init$18)
      000E80 00 02                 1914 	.dw	2
      000E82 78                    1915 	.db	120
      000E83 03                    1916 	.sleb128	3
      000E84 00 00 87 E6           1917 	.dw	0,(Snixie$NIXIE_Init$16)
      000E88 00 00 87 E8           1918 	.dw	0,(Snixie$NIXIE_Init$17)
      000E8C 00 02                 1919 	.dw	2
      000E8E 78                    1920 	.db	120
      000E8F 02                    1921 	.sleb128	2
      000E90 00 00 87 E4           1922 	.dw	0,(Snixie$NIXIE_Init$14)
      000E94 00 00 87 E6           1923 	.dw	0,(Snixie$NIXIE_Init$16)
      000E98 00 02                 1924 	.dw	2
      000E9A 78                    1925 	.db	120
      000E9B 01                    1926 	.sleb128	1
      000E9C 00 00 87 DF           1927 	.dw	0,(Snixie$NIXIE_Init$13)
      000EA0 00 00 87 E4           1928 	.dw	0,(Snixie$NIXIE_Init$14)
      000EA4 00 02                 1929 	.dw	2
      000EA6 78                    1930 	.db	120
      000EA7 05                    1931 	.sleb128	5
      000EA8 00 00 87 DD           1932 	.dw	0,(Snixie$NIXIE_Init$12)
      000EAC 00 00 87 DF           1933 	.dw	0,(Snixie$NIXIE_Init$13)
      000EB0 00 02                 1934 	.dw	2
      000EB2 78                    1935 	.db	120
      000EB3 04                    1936 	.sleb128	4
      000EB4 00 00 87 DB           1937 	.dw	0,(Snixie$NIXIE_Init$11)
      000EB8 00 00 87 DD           1938 	.dw	0,(Snixie$NIXIE_Init$12)
      000EBC 00 02                 1939 	.dw	2
      000EBE 78                    1940 	.db	120
      000EBF 03                    1941 	.sleb128	3
      000EC0 00 00 87 D9           1942 	.dw	0,(Snixie$NIXIE_Init$10)
      000EC4 00 00 87 DB           1943 	.dw	0,(Snixie$NIXIE_Init$11)
      000EC8 00 02                 1944 	.dw	2
      000ECA 78                    1945 	.db	120
      000ECB 02                    1946 	.sleb128	2
      000ECC 00 00 87 D7           1947 	.dw	0,(Snixie$NIXIE_Init$8)
      000ED0 00 00 87 D9           1948 	.dw	0,(Snixie$NIXIE_Init$10)
      000ED4 00 02                 1949 	.dw	2
      000ED6 78                    1950 	.db	120
      000ED7 01                    1951 	.sleb128	1
      000ED8 00 00 00 00           1952 	.dw	0,0
      000EDC 00 00 00 00           1953 	.dw	0,0
      000EE0 00 00 87 CD           1954 	.dw	0,(Snixie$delay$2)
      000EE4 00 00 87 D7           1955 	.dw	0,(Snixie$delay$6)
      000EE8 00 02                 1956 	.dw	2
      000EEA 78                    1957 	.db	120
      000EEB 01                    1958 	.sleb128	1
      000EEC 00 00 00 00           1959 	.dw	0,0
      000EF0 00 00 00 00           1960 	.dw	0,0
                                   1961 
                                   1962 	.area .debug_abbrev (NOLOAD)
      00031D                       1963 Ldebug_abbrev:
      00031D 09                    1964 	.uleb128	9
      00031E 0F                    1965 	.uleb128	15
      00031F 00                    1966 	.db	0
      000320 0B                    1967 	.uleb128	11
      000321 0B                    1968 	.uleb128	11
      000322 49                    1969 	.uleb128	73
      000323 13                    1970 	.uleb128	19
      000324 00                    1971 	.uleb128	0
      000325 00                    1972 	.uleb128	0
      000326 0E                    1973 	.uleb128	14
      000327 34                    1974 	.uleb128	52
      000328 00                    1975 	.db	0
      000329 02                    1976 	.uleb128	2
      00032A 0A                    1977 	.uleb128	10
      00032B 03                    1978 	.uleb128	3
      00032C 08                    1979 	.uleb128	8
      00032D 3F                    1980 	.uleb128	63
      00032E 0C                    1981 	.uleb128	12
      00032F 49                    1982 	.uleb128	73
      000330 13                    1983 	.uleb128	19
      000331 00                    1984 	.uleb128	0
      000332 00                    1985 	.uleb128	0
      000333 08                    1986 	.uleb128	8
      000334 05                    1987 	.uleb128	5
      000335 00                    1988 	.db	0
      000336 02                    1989 	.uleb128	2
      000337 0A                    1990 	.uleb128	10
      000338 03                    1991 	.uleb128	3
      000339 08                    1992 	.uleb128	8
      00033A 49                    1993 	.uleb128	73
      00033B 13                    1994 	.uleb128	19
      00033C 00                    1995 	.uleb128	0
      00033D 00                    1996 	.uleb128	0
      00033E 0C                    1997 	.uleb128	12
      00033F 01                    1998 	.uleb128	1
      000340 01                    1999 	.db	1
      000341 01                    2000 	.uleb128	1
      000342 13                    2001 	.uleb128	19
      000343 0B                    2002 	.uleb128	11
      000344 0B                    2003 	.uleb128	11
      000345 49                    2004 	.uleb128	73
      000346 13                    2005 	.uleb128	19
      000347 00                    2006 	.uleb128	0
      000348 00                    2007 	.uleb128	0
      000349 02                    2008 	.uleb128	2
      00034A 2E                    2009 	.uleb128	46
      00034B 01                    2010 	.db	1
      00034C 01                    2011 	.uleb128	1
      00034D 13                    2012 	.uleb128	19
      00034E 03                    2013 	.uleb128	3
      00034F 08                    2014 	.uleb128	8
      000350 11                    2015 	.uleb128	17
      000351 01                    2016 	.uleb128	1
      000352 12                    2017 	.uleb128	18
      000353 01                    2018 	.uleb128	1
      000354 3F                    2019 	.uleb128	63
      000355 0C                    2020 	.uleb128	12
      000356 40                    2021 	.uleb128	64
      000357 06                    2022 	.uleb128	6
      000358 00                    2023 	.uleb128	0
      000359 00                    2024 	.uleb128	0
      00035A 04                    2025 	.uleb128	4
      00035B 34                    2026 	.uleb128	52
      00035C 00                    2027 	.db	0
      00035D 02                    2028 	.uleb128	2
      00035E 0A                    2029 	.uleb128	10
      00035F 03                    2030 	.uleb128	3
      000360 08                    2031 	.uleb128	8
      000361 49                    2032 	.uleb128	73
      000362 13                    2033 	.uleb128	19
      000363 00                    2034 	.uleb128	0
      000364 00                    2035 	.uleb128	0
      000365 07                    2036 	.uleb128	7
      000366 2E                    2037 	.uleb128	46
      000367 01                    2038 	.db	1
      000368 01                    2039 	.uleb128	1
      000369 13                    2040 	.uleb128	19
      00036A 03                    2041 	.uleb128	3
      00036B 08                    2042 	.uleb128	8
      00036C 11                    2043 	.uleb128	17
      00036D 01                    2044 	.uleb128	1
      00036E 12                    2045 	.uleb128	18
      00036F 01                    2046 	.uleb128	1
      000370 3F                    2047 	.uleb128	63
      000371 0C                    2048 	.uleb128	12
      000372 40                    2049 	.uleb128	64
      000373 06                    2050 	.uleb128	6
      000374 49                    2051 	.uleb128	73
      000375 13                    2052 	.uleb128	19
      000376 00                    2053 	.uleb128	0
      000377 00                    2054 	.uleb128	0
      000378 03                    2055 	.uleb128	3
      000379 0B                    2056 	.uleb128	11
      00037A 01                    2057 	.db	1
      00037B 11                    2058 	.uleb128	17
      00037C 01                    2059 	.uleb128	1
      00037D 00                    2060 	.uleb128	0
      00037E 00                    2061 	.uleb128	0
      00037F 01                    2062 	.uleb128	1
      000380 11                    2063 	.uleb128	17
      000381 01                    2064 	.db	1
      000382 03                    2065 	.uleb128	3
      000383 08                    2066 	.uleb128	8
      000384 10                    2067 	.uleb128	16
      000385 06                    2068 	.uleb128	6
      000386 13                    2069 	.uleb128	19
      000387 0B                    2070 	.uleb128	11
      000388 25                    2071 	.uleb128	37
      000389 08                    2072 	.uleb128	8
      00038A 00                    2073 	.uleb128	0
      00038B 00                    2074 	.uleb128	0
      00038C 0B                    2075 	.uleb128	11
      00038D 0B                    2076 	.uleb128	11
      00038E 00                    2077 	.db	0
      00038F 11                    2078 	.uleb128	17
      000390 01                    2079 	.uleb128	1
      000391 12                    2080 	.uleb128	18
      000392 01                    2081 	.uleb128	1
      000393 00                    2082 	.uleb128	0
      000394 00                    2083 	.uleb128	0
      000395 06                    2084 	.uleb128	6
      000396 2E                    2085 	.uleb128	46
      000397 00                    2086 	.db	0
      000398 03                    2087 	.uleb128	3
      000399 08                    2088 	.uleb128	8
      00039A 11                    2089 	.uleb128	17
      00039B 01                    2090 	.uleb128	1
      00039C 12                    2091 	.uleb128	18
      00039D 01                    2092 	.uleb128	1
      00039E 3F                    2093 	.uleb128	63
      00039F 0C                    2094 	.uleb128	12
      0003A0 40                    2095 	.uleb128	64
      0003A1 06                    2096 	.uleb128	6
      0003A2 00                    2097 	.uleb128	0
      0003A3 00                    2098 	.uleb128	0
      0003A4 0A                    2099 	.uleb128	10
      0003A5 0B                    2100 	.uleb128	11
      0003A6 01                    2101 	.db	1
      0003A7 01                    2102 	.uleb128	1
      0003A8 13                    2103 	.uleb128	19
      0003A9 11                    2104 	.uleb128	17
      0003AA 01                    2105 	.uleb128	1
      0003AB 12                    2106 	.uleb128	18
      0003AC 01                    2107 	.uleb128	1
      0003AD 00                    2108 	.uleb128	0
      0003AE 00                    2109 	.uleb128	0
      0003AF 0D                    2110 	.uleb128	13
      0003B0 21                    2111 	.uleb128	33
      0003B1 00                    2112 	.db	0
      0003B2 2F                    2113 	.uleb128	47
      0003B3 0B                    2114 	.uleb128	11
      0003B4 00                    2115 	.uleb128	0
      0003B5 00                    2116 	.uleb128	0
      0003B6 05                    2117 	.uleb128	5
      0003B7 24                    2118 	.uleb128	36
      0003B8 00                    2119 	.db	0
      0003B9 03                    2120 	.uleb128	3
      0003BA 08                    2121 	.uleb128	8
      0003BB 0B                    2122 	.uleb128	11
      0003BC 0B                    2123 	.uleb128	11
      0003BD 3E                    2124 	.uleb128	62
      0003BE 0B                    2125 	.uleb128	11
      0003BF 00                    2126 	.uleb128	0
      0003C0 00                    2127 	.uleb128	0
      0003C1 00                    2128 	.uleb128	0
                                   2129 
                                   2130 	.area .debug_info (NOLOAD)
      000E56 00 00 02 56           2131 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000E5A                       2132 Ldebug_info_start:
      000E5A 00 02                 2133 	.dw	2
      000E5C 00 00 03 1D           2134 	.dw	0,(Ldebug_abbrev)
      000E60 04                    2135 	.db	4
      000E61 01                    2136 	.uleb128	1
      000E62 53 6F 75 72 63 65 2F  2137 	.ascii "Source/Device/Src/nixie.c"
             44 65 76 69 63 65 2F
             53 72 63 2F 6E 69 78
             69 65 2E 63
      000E7B 00                    2138 	.db	0
      000E7C 00 00 0D 62           2139 	.dw	0,(Ldebug_line_start+-4)
      000E80 01                    2140 	.db	1
      000E81 53 44 43 43 20 76 65  2141 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000E9A 00                    2142 	.db	0
      000E9B 02                    2143 	.uleb128	2
      000E9C 00 00 00 72           2144 	.dw	0,114
      000EA0 64 65 6C 61 79        2145 	.ascii "delay"
      000EA5 00                    2146 	.db	0
      000EA6 00 00 87 CD           2147 	.dw	0,(_delay)
      000EAA 00 00 87 D7           2148 	.dw	0,(XG$delay$0$0+1)
      000EAE 01                    2149 	.db	1
      000EAF 00 00 0E E0           2150 	.dw	0,(Ldebug_loc_start+1584)
      000EB3 03                    2151 	.uleb128	3
      000EB4 00 00 87 CD           2152 	.dw	0,(Snixie$delay$0)
      000EB8 04                    2153 	.uleb128	4
      000EB9 06                    2154 	.db	6
      000EBA 52                    2155 	.db	82
      000EBB 93                    2156 	.db	147
      000EBC 01                    2157 	.uleb128	1
      000EBD 51                    2158 	.db	81
      000EBE 93                    2159 	.db	147
      000EBF 01                    2160 	.uleb128	1
      000EC0 69                    2161 	.ascii "i"
      000EC1 00                    2162 	.db	0
      000EC2 00 00 00 72           2163 	.dw	0,114
      000EC6 00                    2164 	.uleb128	0
      000EC7 00                    2165 	.uleb128	0
      000EC8 05                    2166 	.uleb128	5
      000EC9 69 6E 74              2167 	.ascii "int"
      000ECC 00                    2168 	.db	0
      000ECD 02                    2169 	.db	2
      000ECE 05                    2170 	.db	5
      000ECF 06                    2171 	.uleb128	6
      000ED0 4E 49 58 49 45 5F 49  2172 	.ascii "NIXIE_Init"
             6E 69 74
      000EDA 00                    2173 	.db	0
      000EDB 00 00 87 D7           2174 	.dw	0,(_NIXIE_Init)
      000EDF 00 00 88 1D           2175 	.dw	0,(XG$NIXIE_Init$0$0+1)
      000EE3 01                    2176 	.db	1
      000EE4 00 00 0D 94           2177 	.dw	0,(Ldebug_loc_start+1252)
      000EE8 05                    2178 	.uleb128	5
      000EE9 75 6E 73 69 67 6E 65  2179 	.ascii "unsigned int"
             64 20 69 6E 74
      000EF5 00                    2180 	.db	0
      000EF6 02                    2181 	.db	2
      000EF7 07                    2182 	.db	7
      000EF8 07                    2183 	.uleb128	7
      000EF9 00 00 01 45           2184 	.dw	0,325
      000EFD 4E 49 58 49 45 5F 44  2185 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      000F0E 00                    2186 	.db	0
      000F0F 00 00 88 1D           2187 	.dw	0,(_NIXIE_DisplayChar)
      000F13 00 00 88 B3           2188 	.dw	0,(XG$NIXIE_DisplayChar$0$0+1)
      000F17 01                    2189 	.db	1
      000F18 00 00 0C D8           2190 	.dw	0,(Ldebug_loc_start+1064)
      000F1C 00 00 00 92           2191 	.dw	0,146
      000F20 08                    2192 	.uleb128	8
      000F21 02                    2193 	.db	2
      000F22 91                    2194 	.db	145
      000F23 02                    2195 	.sleb128	2
      000F24 74 75 62 65 4E 75 6D  2196 	.ascii "tubeNum"
      000F2B 00                    2197 	.db	0
      000F2C 00 00 01 45           2198 	.dw	0,325
      000F30 09                    2199 	.uleb128	9
      000F31 02                    2200 	.db	2
      000F32 00 00 01 45           2201 	.dw	0,325
      000F36 08                    2202 	.uleb128	8
      000F37 02                    2203 	.db	2
      000F38 91                    2204 	.db	145
      000F39 03                    2205 	.sleb128	3
      000F3A 63 68 61 72 61 63 74  2206 	.ascii "character"
             65 72
      000F43 00                    2207 	.db	0
      000F44 00 00 00 DA           2208 	.dw	0,218
      000F48 08                    2209 	.uleb128	8
      000F49 02                    2210 	.db	2
      000F4A 91                    2211 	.db	145
      000F4B 05                    2212 	.sleb128	5
      000F4C 74 75 62 65 53 74 61  2213 	.ascii "tubeState"
             74 65
      000F55 00                    2214 	.db	0
      000F56 00 00 01 45           2215 	.dw	0,325
      000F5A 0A                    2216 	.uleb128	10
      000F5B 00 00 01 25           2217 	.dw	0,293
      000F5F 00 00 88 38           2218 	.dw	0,(Snixie$NIXIE_DisplayChar$55)
      000F63 00 00 88 6C           2219 	.dw	0,(Snixie$NIXIE_DisplayChar$64)
      000F67 0B                    2220 	.uleb128	11
      000F68 00 00 88 3E           2221 	.dw	0,(Snixie$NIXIE_DisplayChar$56)
      000F6C 00 00 88 68           2222 	.dw	0,(Snixie$NIXIE_DisplayChar$62)
      000F70 04                    2223 	.uleb128	4
      000F71 02                    2224 	.db	2
      000F72 91                    2225 	.db	145
      000F73 7F                    2226 	.sleb128	-1
      000F74 69                    2227 	.ascii "i"
      000F75 00                    2228 	.db	0
      000F76 00 00 01 45           2229 	.dw	0,325
      000F7A 00                    2230 	.uleb128	0
      000F7B 04                    2231 	.uleb128	4
      000F7C 02                    2232 	.db	2
      000F7D 91                    2233 	.db	145
      000F7E 7D                    2234 	.sleb128	-3
      000F7F 74 6D 70              2235 	.ascii "tmp"
      000F82 00                    2236 	.db	0
      000F83 00 00 00 92           2237 	.dw	0,146
      000F87 04                    2238 	.uleb128	4
      000F88 06                    2239 	.db	6
      000F89 50                    2240 	.db	80
      000F8A 93                    2241 	.db	147
      000F8B 01                    2242 	.uleb128	1
      000F8C 51                    2243 	.db	81
      000F8D 93                    2244 	.db	147
      000F8E 01                    2245 	.uleb128	1
      000F8F 6F 75 74 70 75 74     2246 	.ascii "output"
      000F95 00                    2247 	.db	0
      000F96 00 00 00 92           2248 	.dw	0,146
      000F9A 00                    2249 	.uleb128	0
      000F9B 05                    2250 	.uleb128	5
      000F9C 75 6E 73 69 67 6E 65  2251 	.ascii "unsigned char"
             64 20 63 68 61 72
      000FA9 00                    2252 	.db	0
      000FAA 01                    2253 	.db	1
      000FAB 08                    2254 	.db	8
      000FAC 02                    2255 	.uleb128	2
      000FAD 00 00 02 46           2256 	.dw	0,582
      000FB1 4E 49 58 49 45 5F 44  2257 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      000FC2 00                    2258 	.db	0
      000FC3 00 00 88 B3           2259 	.dw	0,(_NIXIE_DisplayTime)
      000FC7 00 00 8A 9E           2260 	.dw	0,(XG$NIXIE_DisplayTime$0$0+1)
      000FCB 01                    2261 	.db	1
      000FCC 00 00 08 B0           2262 	.dw	0,(Ldebug_loc_start)
      000FD0 08                    2263 	.uleb128	8
      000FD1 02                    2264 	.db	2
      000FD2 91                    2265 	.db	145
      000FD3 02                    2266 	.sleb128	2
      000FD4 68 6F 75 72           2267 	.ascii "hour"
      000FD8 00                    2268 	.db	0
      000FD9 00 00 01 45           2269 	.dw	0,325
      000FDD 08                    2270 	.uleb128	8
      000FDE 02                    2271 	.db	2
      000FDF 91                    2272 	.db	145
      000FE0 03                    2273 	.sleb128	3
      000FE1 6D 69 6E              2274 	.ascii "min"
      000FE4 00                    2275 	.db	0
      000FE5 00 00 01 45           2276 	.dw	0,325
      000FE9 0A                    2277 	.uleb128	10
      000FEA 00 00 01 B9           2278 	.dw	0,441
      000FEE 00 00 89 96           2279 	.dw	0,(Snixie$NIXIE_DisplayTime$154)
      000FF2 00 00 8A 9B           2280 	.dw	0,(Snixie$NIXIE_DisplayTime$222)
      000FF6 04                    2281 	.uleb128	4
      000FF7 01                    2282 	.db	1
      000FF8 51                    2283 	.db	81
      000FF9 74 6D 70 31           2284 	.ascii "tmp1"
      000FFD 00                    2285 	.db	0
      000FFE 00 00 01 45           2286 	.dw	0,325
      001002 04                    2287 	.uleb128	4
      001003 01                    2288 	.db	1
      001004 50                    2289 	.db	80
      001005 74 6D 70 32           2290 	.ascii "tmp2"
      001009 00                    2291 	.db	0
      00100A 00 00 01 45           2292 	.dw	0,325
      00100E 00                    2293 	.uleb128	0
      00100F 04                    2294 	.uleb128	4
      001010 02                    2295 	.db	2
      001011 91                    2296 	.db	145
      001012 77                    2297 	.sleb128	-9
      001013 74 75 62 65 31        2298 	.ascii "tube1"
      001018 00                    2299 	.db	0
      001019 00 00 00 92           2300 	.dw	0,146
      00101D 04                    2301 	.uleb128	4
      00101E 02                    2302 	.db	2
      00101F 91                    2303 	.db	145
      001020 79                    2304 	.sleb128	-7
      001021 74 75 62 65 32        2305 	.ascii "tube2"
      001026 00                    2306 	.db	0
      001027 00 00 00 92           2307 	.dw	0,146
      00102B 04                    2308 	.uleb128	4
      00102C 02                    2309 	.db	2
      00102D 91                    2310 	.db	145
      00102E 7B                    2311 	.sleb128	-5
      00102F 74 75 62 65 33        2312 	.ascii "tube3"
      001034 00                    2313 	.db	0
      001035 00 00 00 92           2314 	.dw	0,146
      001039 04                    2315 	.uleb128	4
      00103A 02                    2316 	.db	2
      00103B 91                    2317 	.db	145
      00103C 7D                    2318 	.sleb128	-3
      00103D 74 75 62 65 34        2319 	.ascii "tube4"
      001042 00                    2320 	.db	0
      001043 00 00 00 92           2321 	.dw	0,146
      001047 0C                    2322 	.uleb128	12
      001048 00 00 01 FE           2323 	.dw	0,510
      00104C 02                    2324 	.db	2
      00104D 00 00 01 45           2325 	.dw	0,325
      001051 0D                    2326 	.uleb128	13
      001052 01                    2327 	.db	1
      001053 00                    2328 	.uleb128	0
      001054 04                    2329 	.uleb128	4
      001055 02                    2330 	.db	2
      001056 91                    2331 	.db	145
      001057 6F                    2332 	.sleb128	-17
      001058 74 75 62 65 31 73     2333 	.ascii "tube1s"
      00105E 00                    2334 	.db	0
      00105F 00 00 01 F1           2335 	.dw	0,497
      001063 04                    2336 	.uleb128	4
      001064 02                    2337 	.db	2
      001065 91                    2338 	.db	145
      001066 71                    2339 	.sleb128	-15
      001067 74 75 62 65 32 73     2340 	.ascii "tube2s"
      00106D 00                    2341 	.db	0
      00106E 00 00 01 F1           2342 	.dw	0,497
      001072 04                    2343 	.uleb128	4
      001073 02                    2344 	.db	2
      001074 91                    2345 	.db	145
      001075 73                    2346 	.sleb128	-13
      001076 74 75 62 65 33 73     2347 	.ascii "tube3s"
      00107C 00                    2348 	.db	0
      00107D 00 00 01 F1           2349 	.dw	0,497
      001081 04                    2350 	.uleb128	4
      001082 02                    2351 	.db	2
      001083 91                    2352 	.db	145
      001084 75                    2353 	.sleb128	-11
      001085 74 75 62 65 34 73     2354 	.ascii "tube4s"
      00108B 00                    2355 	.db	0
      00108C 00 00 01 F1           2356 	.dw	0,497
      001090 04                    2357 	.uleb128	4
      001091 01                    2358 	.db	1
      001092 51                    2359 	.db	81
      001093 74 6D 70              2360 	.ascii "tmp"
      001096 00                    2361 	.db	0
      001097 00 00 01 45           2362 	.dw	0,325
      00109B 00                    2363 	.uleb128	0
      00109C 0E                    2364 	.uleb128	14
      00109D 05                    2365 	.db	5
      00109E 03                    2366 	.db	3
      00109F 00 00 00 21           2367 	.dw	0,(_aaaa)
      0010A3 61 61 61 61           2368 	.ascii "aaaa"
      0010A7 00                    2369 	.db	0
      0010A8 01                    2370 	.db	1
      0010A9 00 00 00 72           2371 	.dw	0,114
      0010AD 00                    2372 	.uleb128	0
      0010AE 00                    2373 	.uleb128	0
      0010AF 00                    2374 	.uleb128	0
      0010B0                       2375 Ldebug_info_end:
                                   2376 
                                   2377 	.area .debug_pubnames (NOLOAD)
      0002F7 00 00 00 5C           2378 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0002FB                       2379 Ldebug_pubnames_start:
      0002FB 00 02                 2380 	.dw	2
      0002FD 00 00 0E 56           2381 	.dw	0,(Ldebug_info_start-4)
      000301 00 00 02 5A           2382 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000305 00 00 00 45           2383 	.dw	0,69
      000309 64 65 6C 61 79        2384 	.ascii "delay"
      00030E 00                    2385 	.db	0
      00030F 00 00 00 79           2386 	.dw	0,121
      000313 4E 49 58 49 45 5F 49  2387 	.ascii "NIXIE_Init"
             6E 69 74
      00031D 00                    2388 	.db	0
      00031E 00 00 00 A2           2389 	.dw	0,162
      000322 4E 49 58 49 45 5F 44  2390 	.ascii "NIXIE_DisplayChar"
             69 73 70 6C 61 79 43
             68 61 72
      000333 00                    2391 	.db	0
      000334 00 00 01 56           2392 	.dw	0,342
      000338 4E 49 58 49 45 5F 44  2393 	.ascii "NIXIE_DisplayTime"
             69 73 70 6C 61 79 54
             69 6D 65
      000349 00                    2394 	.db	0
      00034A 00 00 02 46           2395 	.dw	0,582
      00034E 61 61 61 61           2396 	.ascii "aaaa"
      000352 00                    2397 	.db	0
      000353 00 00 00 00           2398 	.dw	0,0
      000357                       2399 Ldebug_pubnames_end:
                                   2400 
                                   2401 	.area .debug_frame (NOLOAD)
      000914 00 00                 2402 	.dw	0
      000916 00 0E                 2403 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000918                       2404 Ldebug_CIE0_start:
      000918 FF FF                 2405 	.dw	0xffff
      00091A FF FF                 2406 	.dw	0xffff
      00091C 01                    2407 	.db	1
      00091D 00                    2408 	.db	0
      00091E 01                    2409 	.uleb128	1
      00091F 7F                    2410 	.sleb128	-1
      000920 09                    2411 	.db	9
      000921 0C                    2412 	.db	12
      000922 08                    2413 	.uleb128	8
      000923 02                    2414 	.uleb128	2
      000924 89                    2415 	.db	137
      000925 01                    2416 	.uleb128	1
      000926                       2417 Ldebug_CIE0_end:
      000926 00 00 02 74           2418 	.dw	0,628
      00092A 00 00 09 14           2419 	.dw	0,(Ldebug_CIE0_start-4)
      00092E 00 00 88 B3           2420 	.dw	0,(Snixie$NIXIE_DisplayTime$82)	;initial loc
      000932 00 00 01 EB           2421 	.dw	0,Snixie$NIXIE_DisplayTime$226-Snixie$NIXIE_DisplayTime$82
      000936 01                    2422 	.db	1
      000937 00 00 88 B3           2423 	.dw	0,(Snixie$NIXIE_DisplayTime$82)
      00093B 0E                    2424 	.db	14
      00093C 02                    2425 	.uleb128	2
      00093D 01                    2426 	.db	1
      00093E 00 00 88 B5           2427 	.dw	0,(Snixie$NIXIE_DisplayTime$83)
      000942 0E                    2428 	.db	14
      000943 13                    2429 	.uleb128	19
      000944 01                    2430 	.db	1
      000945 00 00 88 D3           2431 	.dw	0,(Snixie$NIXIE_DisplayTime$86)
      000949 0E                    2432 	.db	14
      00094A 14                    2433 	.uleb128	20
      00094B 01                    2434 	.db	1
      00094C 00 00 88 D5           2435 	.dw	0,(Snixie$NIXIE_DisplayTime$87)
      000950 0E                    2436 	.db	14
      000951 15                    2437 	.uleb128	21
      000952 01                    2438 	.db	1
      000953 00 00 88 D9           2439 	.dw	0,(Snixie$NIXIE_DisplayTime$88)
      000957 0E                    2440 	.db	14
      000958 17                    2441 	.uleb128	23
      000959 01                    2442 	.db	1
      00095A 00 00 88 DE           2443 	.dw	0,(Snixie$NIXIE_DisplayTime$89)
      00095E 0E                    2444 	.db	14
      00095F 13                    2445 	.uleb128	19
      000960 01                    2446 	.db	1
      000961 00 00 88 E1           2447 	.dw	0,(Snixie$NIXIE_DisplayTime$91)
      000965 0E                    2448 	.db	14
      000966 15                    2449 	.uleb128	21
      000967 01                    2450 	.db	1
      000968 00 00 88 E4           2451 	.dw	0,(Snixie$NIXIE_DisplayTime$92)
      00096C 0E                    2452 	.db	14
      00096D 13                    2453 	.uleb128	19
      00096E 01                    2454 	.db	1
      00096F 00 00 88 E8           2455 	.dw	0,(Snixie$NIXIE_DisplayTime$94)
      000973 0E                    2456 	.db	14
      000974 14                    2457 	.uleb128	20
      000975 01                    2458 	.db	1
      000976 00 00 88 EA           2459 	.dw	0,(Snixie$NIXIE_DisplayTime$95)
      00097A 0E                    2460 	.db	14
      00097B 15                    2461 	.uleb128	21
      00097C 01                    2462 	.db	1
      00097D 00 00 88 EE           2463 	.dw	0,(Snixie$NIXIE_DisplayTime$96)
      000981 0E                    2464 	.db	14
      000982 17                    2465 	.uleb128	23
      000983 01                    2466 	.db	1
      000984 00 00 88 F3           2467 	.dw	0,(Snixie$NIXIE_DisplayTime$97)
      000988 0E                    2468 	.db	14
      000989 13                    2469 	.uleb128	19
      00098A 01                    2470 	.db	1
      00098B 00 00 88 F5           2471 	.dw	0,(Snixie$NIXIE_DisplayTime$98)
      00098F 0E                    2472 	.db	14
      000990 14                    2473 	.uleb128	20
      000991 01                    2474 	.db	1
      000992 00 00 88 F7           2475 	.dw	0,(Snixie$NIXIE_DisplayTime$99)
      000996 0E                    2476 	.db	14
      000997 15                    2477 	.uleb128	21
      000998 01                    2478 	.db	1
      000999 00 00 88 F8           2479 	.dw	0,(Snixie$NIXIE_DisplayTime$100)
      00099D 0E                    2480 	.db	14
      00099E 17                    2481 	.uleb128	23
      00099F 01                    2482 	.db	1
      0009A0 00 00 88 FD           2483 	.dw	0,(Snixie$NIXIE_DisplayTime$101)
      0009A4 0E                    2484 	.db	14
      0009A5 13                    2485 	.uleb128	19
      0009A6 01                    2486 	.db	1
      0009A7 00 00 89 00           2487 	.dw	0,(Snixie$NIXIE_DisplayTime$103)
      0009AB 0E                    2488 	.db	14
      0009AC 15                    2489 	.uleb128	21
      0009AD 01                    2490 	.db	1
      0009AE 00 00 89 03           2491 	.dw	0,(Snixie$NIXIE_DisplayTime$104)
      0009B2 0E                    2492 	.db	14
      0009B3 13                    2493 	.uleb128	19
      0009B4 01                    2494 	.db	1
      0009B5 00 00 89 07           2495 	.dw	0,(Snixie$NIXIE_DisplayTime$106)
      0009B9 0E                    2496 	.db	14
      0009BA 14                    2497 	.uleb128	20
      0009BB 01                    2498 	.db	1
      0009BC 00 00 89 09           2499 	.dw	0,(Snixie$NIXIE_DisplayTime$107)
      0009C0 0E                    2500 	.db	14
      0009C1 15                    2501 	.uleb128	21
      0009C2 01                    2502 	.db	1
      0009C3 00 00 89 0D           2503 	.dw	0,(Snixie$NIXIE_DisplayTime$108)
      0009C7 0E                    2504 	.db	14
      0009C8 17                    2505 	.uleb128	23
      0009C9 01                    2506 	.db	1
      0009CA 00 00 89 12           2507 	.dw	0,(Snixie$NIXIE_DisplayTime$109)
      0009CE 0E                    2508 	.db	14
      0009CF 13                    2509 	.uleb128	19
      0009D0 01                    2510 	.db	1
      0009D1 00 00 89 14           2511 	.dw	0,(Snixie$NIXIE_DisplayTime$110)
      0009D5 0E                    2512 	.db	14
      0009D6 14                    2513 	.uleb128	20
      0009D7 01                    2514 	.db	1
      0009D8 00 00 89 16           2515 	.dw	0,(Snixie$NIXIE_DisplayTime$111)
      0009DC 0E                    2516 	.db	14
      0009DD 15                    2517 	.uleb128	21
      0009DE 01                    2518 	.db	1
      0009DF 00 00 89 17           2519 	.dw	0,(Snixie$NIXIE_DisplayTime$112)
      0009E3 0E                    2520 	.db	14
      0009E4 17                    2521 	.uleb128	23
      0009E5 01                    2522 	.db	1
      0009E6 00 00 89 1C           2523 	.dw	0,(Snixie$NIXIE_DisplayTime$113)
      0009EA 0E                    2524 	.db	14
      0009EB 13                    2525 	.uleb128	19
      0009EC 01                    2526 	.db	1
      0009ED 00 00 89 1F           2527 	.dw	0,(Snixie$NIXIE_DisplayTime$115)
      0009F1 0E                    2528 	.db	14
      0009F2 15                    2529 	.uleb128	21
      0009F3 01                    2530 	.db	1
      0009F4 00 00 89 22           2531 	.dw	0,(Snixie$NIXIE_DisplayTime$116)
      0009F8 0E                    2532 	.db	14
      0009F9 13                    2533 	.uleb128	19
      0009FA 01                    2534 	.db	1
      0009FB 00 00 89 26           2535 	.dw	0,(Snixie$NIXIE_DisplayTime$118)
      0009FF 0E                    2536 	.db	14
      000A00 14                    2537 	.uleb128	20
      000A01 01                    2538 	.db	1
      000A02 00 00 89 28           2539 	.dw	0,(Snixie$NIXIE_DisplayTime$119)
      000A06 0E                    2540 	.db	14
      000A07 15                    2541 	.uleb128	21
      000A08 01                    2542 	.db	1
      000A09 00 00 89 2C           2543 	.dw	0,(Snixie$NIXIE_DisplayTime$120)
      000A0D 0E                    2544 	.db	14
      000A0E 17                    2545 	.uleb128	23
      000A0F 01                    2546 	.db	1
      000A10 00 00 89 31           2547 	.dw	0,(Snixie$NIXIE_DisplayTime$121)
      000A14 0E                    2548 	.db	14
      000A15 13                    2549 	.uleb128	19
      000A16 01                    2550 	.db	1
      000A17 00 00 89 34           2551 	.dw	0,(Snixie$NIXIE_DisplayTime$123)
      000A1B 0E                    2552 	.db	14
      000A1C 15                    2553 	.uleb128	21
      000A1D 01                    2554 	.db	1
      000A1E 00 00 89 37           2555 	.dw	0,(Snixie$NIXIE_DisplayTime$124)
      000A22 0E                    2556 	.db	14
      000A23 13                    2557 	.uleb128	19
      000A24 01                    2558 	.db	1
      000A25 00 00 89 3B           2559 	.dw	0,(Snixie$NIXIE_DisplayTime$126)
      000A29 0E                    2560 	.db	14
      000A2A 14                    2561 	.uleb128	20
      000A2B 01                    2562 	.db	1
      000A2C 00 00 89 3F           2563 	.dw	0,(Snixie$NIXIE_DisplayTime$127)
      000A30 0E                    2564 	.db	14
      000A31 16                    2565 	.uleb128	22
      000A32 01                    2566 	.db	1
      000A33 00 00 89 41           2567 	.dw	0,(Snixie$NIXIE_DisplayTime$128)
      000A37 0E                    2568 	.db	14
      000A38 17                    2569 	.uleb128	23
      000A39 01                    2570 	.db	1
      000A3A 00 00 89 46           2571 	.dw	0,(Snixie$NIXIE_DisplayTime$129)
      000A3E 0E                    2572 	.db	14
      000A3F 13                    2573 	.uleb128	19
      000A40 01                    2574 	.db	1
      000A41 00 00 89 4A           2575 	.dw	0,(Snixie$NIXIE_DisplayTime$131)
      000A45 0E                    2576 	.db	14
      000A46 14                    2577 	.uleb128	20
      000A47 01                    2578 	.db	1
      000A48 00 00 89 4F           2579 	.dw	0,(Snixie$NIXIE_DisplayTime$132)
      000A4C 0E                    2580 	.db	14
      000A4D 16                    2581 	.uleb128	22
      000A4E 01                    2582 	.db	1
      000A4F 00 00 89 51           2583 	.dw	0,(Snixie$NIXIE_DisplayTime$133)
      000A53 0E                    2584 	.db	14
      000A54 17                    2585 	.uleb128	23
      000A55 01                    2586 	.db	1
      000A56 00 00 89 56           2587 	.dw	0,(Snixie$NIXIE_DisplayTime$134)
      000A5A 0E                    2588 	.db	14
      000A5B 13                    2589 	.uleb128	19
      000A5C 01                    2590 	.db	1
      000A5D 00 00 89 5A           2591 	.dw	0,(Snixie$NIXIE_DisplayTime$136)
      000A61 0E                    2592 	.db	14
      000A62 14                    2593 	.uleb128	20
      000A63 01                    2594 	.db	1
      000A64 00 00 89 5F           2595 	.dw	0,(Snixie$NIXIE_DisplayTime$137)
      000A68 0E                    2596 	.db	14
      000A69 16                    2597 	.uleb128	22
      000A6A 01                    2598 	.db	1
      000A6B 00 00 89 61           2599 	.dw	0,(Snixie$NIXIE_DisplayTime$138)
      000A6F 0E                    2600 	.db	14
      000A70 17                    2601 	.uleb128	23
      000A71 01                    2602 	.db	1
      000A72 00 00 89 66           2603 	.dw	0,(Snixie$NIXIE_DisplayTime$139)
      000A76 0E                    2604 	.db	14
      000A77 13                    2605 	.uleb128	19
      000A78 01                    2606 	.db	1
      000A79 00 00 89 6A           2607 	.dw	0,(Snixie$NIXIE_DisplayTime$141)
      000A7D 0E                    2608 	.db	14
      000A7E 14                    2609 	.uleb128	20
      000A7F 01                    2610 	.db	1
      000A80 00 00 89 6F           2611 	.dw	0,(Snixie$NIXIE_DisplayTime$142)
      000A84 0E                    2612 	.db	14
      000A85 16                    2613 	.uleb128	22
      000A86 01                    2614 	.db	1
      000A87 00 00 89 71           2615 	.dw	0,(Snixie$NIXIE_DisplayTime$143)
      000A8B 0E                    2616 	.db	14
      000A8C 17                    2617 	.uleb128	23
      000A8D 01                    2618 	.db	1
      000A8E 00 00 89 76           2619 	.dw	0,(Snixie$NIXIE_DisplayTime$144)
      000A92 0E                    2620 	.db	14
      000A93 13                    2621 	.uleb128	19
      000A94 01                    2622 	.db	1
      000A95 00 00 89 87           2623 	.dw	0,(Snixie$NIXIE_DisplayTime$147)
      000A99 0E                    2624 	.db	14
      000A9A 13                    2625 	.uleb128	19
      000A9B 01                    2626 	.db	1
      000A9C 00 00 89 8D           2627 	.dw	0,(Snixie$NIXIE_DisplayTime$150)
      000AA0 0E                    2628 	.db	14
      000AA1 14                    2629 	.uleb128	20
      000AA2 01                    2630 	.db	1
      000AA3 00 00 89 8F           2631 	.dw	0,(Snixie$NIXIE_DisplayTime$151)
      000AA7 0E                    2632 	.db	14
      000AA8 15                    2633 	.uleb128	21
      000AA9 01                    2634 	.db	1
      000AAA 00 00 89 91           2635 	.dw	0,(Snixie$NIXIE_DisplayTime$152)
      000AAE 0E                    2636 	.db	14
      000AAF 16                    2637 	.uleb128	22
      000AB0 01                    2638 	.db	1
      000AB1 00 00 89 96           2639 	.dw	0,(Snixie$NIXIE_DisplayTime$153)
      000AB5 0E                    2640 	.db	14
      000AB6 13                    2641 	.uleb128	19
      000AB7 01                    2642 	.db	1
      000AB8 00 00 89 A8           2643 	.dw	0,(Snixie$NIXIE_DisplayTime$158)
      000ABC 0E                    2644 	.db	14
      000ABD 15                    2645 	.uleb128	21
      000ABE 01                    2646 	.db	1
      000ABF 00 00 89 AB           2647 	.dw	0,(Snixie$NIXIE_DisplayTime$159)
      000AC3 0E                    2648 	.db	14
      000AC4 13                    2649 	.uleb128	19
      000AC5 01                    2650 	.db	1
      000AC6 00 00 89 AC           2651 	.dw	0,(Snixie$NIXIE_DisplayTime$161)
      000ACA 0E                    2652 	.db	14
      000ACB 14                    2653 	.uleb128	20
      000ACC 01                    2654 	.db	1
      000ACD 00 00 89 B0           2655 	.dw	0,(Snixie$NIXIE_DisplayTime$162)
      000AD1 0E                    2656 	.db	14
      000AD2 13                    2657 	.uleb128	19
      000AD3 01                    2658 	.db	1
      000AD4 00 00 89 B2           2659 	.dw	0,(Snixie$NIXIE_DisplayTime$164)
      000AD8 0E                    2660 	.db	14
      000AD9 14                    2661 	.uleb128	20
      000ADA 01                    2662 	.db	1
      000ADB 00 00 89 B7           2663 	.dw	0,(Snixie$NIXIE_DisplayTime$165)
      000ADF 0E                    2664 	.db	14
      000AE0 13                    2665 	.uleb128	19
      000AE1 01                    2666 	.db	1
      000AE2 00 00 89 D9           2667 	.dw	0,(Snixie$NIXIE_DisplayTime$172)
      000AE6 0E                    2668 	.db	14
      000AE7 14                    2669 	.uleb128	20
      000AE8 01                    2670 	.db	1
      000AE9 00 00 89 DD           2671 	.dw	0,(Snixie$NIXIE_DisplayTime$173)
      000AED 0E                    2672 	.db	14
      000AEE 13                    2673 	.uleb128	19
      000AEF 01                    2674 	.db	1
      000AF0 00 00 89 DF           2675 	.dw	0,(Snixie$NIXIE_DisplayTime$175)
      000AF4 0E                    2676 	.db	14
      000AF5 14                    2677 	.uleb128	20
      000AF6 01                    2678 	.db	1
      000AF7 00 00 89 E4           2679 	.dw	0,(Snixie$NIXIE_DisplayTime$176)
      000AFB 0E                    2680 	.db	14
      000AFC 13                    2681 	.uleb128	19
      000AFD 01                    2682 	.db	1
      000AFE 00 00 8A 05           2683 	.dw	0,(Snixie$NIXIE_DisplayTime$181)
      000B02 0E                    2684 	.db	14
      000B03 14                    2685 	.uleb128	20
      000B04 01                    2686 	.db	1
      000B05 00 00 8A 09           2687 	.dw	0,(Snixie$NIXIE_DisplayTime$182)
      000B09 0E                    2688 	.db	14
      000B0A 13                    2689 	.uleb128	19
      000B0B 01                    2690 	.db	1
      000B0C 00 00 8A 0B           2691 	.dw	0,(Snixie$NIXIE_DisplayTime$184)
      000B10 0E                    2692 	.db	14
      000B11 14                    2693 	.uleb128	20
      000B12 01                    2694 	.db	1
      000B13 00 00 8A 10           2695 	.dw	0,(Snixie$NIXIE_DisplayTime$185)
      000B17 0E                    2696 	.db	14
      000B18 13                    2697 	.uleb128	19
      000B19 01                    2698 	.db	1
      000B1A 00 00 8A 25           2699 	.dw	0,(Snixie$NIXIE_DisplayTime$189)
      000B1E 0E                    2700 	.db	14
      000B1F 15                    2701 	.uleb128	21
      000B20 01                    2702 	.db	1
      000B21 00 00 8A 28           2703 	.dw	0,(Snixie$NIXIE_DisplayTime$190)
      000B25 0E                    2704 	.db	14
      000B26 13                    2705 	.uleb128	19
      000B27 01                    2706 	.db	1
      000B28 00 00 8A 29           2707 	.dw	0,(Snixie$NIXIE_DisplayTime$192)
      000B2C 0E                    2708 	.db	14
      000B2D 14                    2709 	.uleb128	20
      000B2E 01                    2710 	.db	1
      000B2F 00 00 8A 2D           2711 	.dw	0,(Snixie$NIXIE_DisplayTime$193)
      000B33 0E                    2712 	.db	14
      000B34 13                    2713 	.uleb128	19
      000B35 01                    2714 	.db	1
      000B36 00 00 8A 2F           2715 	.dw	0,(Snixie$NIXIE_DisplayTime$195)
      000B3A 0E                    2716 	.db	14
      000B3B 14                    2717 	.uleb128	20
      000B3C 01                    2718 	.db	1
      000B3D 00 00 8A 34           2719 	.dw	0,(Snixie$NIXIE_DisplayTime$196)
      000B41 0E                    2720 	.db	14
      000B42 13                    2721 	.uleb128	19
      000B43 01                    2722 	.db	1
      000B44 00 00 8A 56           2723 	.dw	0,(Snixie$NIXIE_DisplayTime$203)
      000B48 0E                    2724 	.db	14
      000B49 14                    2725 	.uleb128	20
      000B4A 01                    2726 	.db	1
      000B4B 00 00 8A 5A           2727 	.dw	0,(Snixie$NIXIE_DisplayTime$204)
      000B4F 0E                    2728 	.db	14
      000B50 13                    2729 	.uleb128	19
      000B51 01                    2730 	.db	1
      000B52 00 00 8A 5C           2731 	.dw	0,(Snixie$NIXIE_DisplayTime$206)
      000B56 0E                    2732 	.db	14
      000B57 14                    2733 	.uleb128	20
      000B58 01                    2734 	.db	1
      000B59 00 00 8A 61           2735 	.dw	0,(Snixie$NIXIE_DisplayTime$207)
      000B5D 0E                    2736 	.db	14
      000B5E 13                    2737 	.uleb128	19
      000B5F 01                    2738 	.db	1
      000B60 00 00 8A 82           2739 	.dw	0,(Snixie$NIXIE_DisplayTime$212)
      000B64 0E                    2740 	.db	14
      000B65 14                    2741 	.uleb128	20
      000B66 01                    2742 	.db	1
      000B67 00 00 8A 86           2743 	.dw	0,(Snixie$NIXIE_DisplayTime$213)
      000B6B 0E                    2744 	.db	14
      000B6C 13                    2745 	.uleb128	19
      000B6D 01                    2746 	.db	1
      000B6E 00 00 8A 88           2747 	.dw	0,(Snixie$NIXIE_DisplayTime$215)
      000B72 0E                    2748 	.db	14
      000B73 14                    2749 	.uleb128	20
      000B74 01                    2750 	.db	1
      000B75 00 00 8A 8D           2751 	.dw	0,(Snixie$NIXIE_DisplayTime$216)
      000B79 0E                    2752 	.db	14
      000B7A 13                    2753 	.uleb128	19
      000B7B 01                    2754 	.db	1
      000B7C 00 00 8A 92           2755 	.dw	0,(Snixie$NIXIE_DisplayTime$218)
      000B80 0E                    2756 	.db	14
      000B81 14                    2757 	.uleb128	20
      000B82 01                    2758 	.db	1
      000B83 00 00 8A 94           2759 	.dw	0,(Snixie$NIXIE_DisplayTime$219)
      000B87 0E                    2760 	.db	14
      000B88 15                    2761 	.uleb128	21
      000B89 01                    2762 	.db	1
      000B8A 00 00 8A 96           2763 	.dw	0,(Snixie$NIXIE_DisplayTime$220)
      000B8E 0E                    2764 	.db	14
      000B8F 16                    2765 	.uleb128	22
      000B90 01                    2766 	.db	1
      000B91 00 00 8A 9B           2767 	.dw	0,(Snixie$NIXIE_DisplayTime$221)
      000B95 0E                    2768 	.db	14
      000B96 13                    2769 	.uleb128	19
      000B97 01                    2770 	.db	1
      000B98 00 00 8A 9D           2771 	.dw	0,(Snixie$NIXIE_DisplayTime$224)
      000B9C 0E                    2772 	.db	14
      000B9D 02                    2773 	.uleb128	2
                                   2774 
                                   2775 	.area .debug_frame (NOLOAD)
      000B9E 00 00                 2776 	.dw	0
      000BA0 00 0E                 2777 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000BA2                       2778 Ldebug_CIE1_start:
      000BA2 FF FF                 2779 	.dw	0xffff
      000BA4 FF FF                 2780 	.dw	0xffff
      000BA6 01                    2781 	.db	1
      000BA7 00                    2782 	.db	0
      000BA8 01                    2783 	.uleb128	1
      000BA9 7F                    2784 	.sleb128	-1
      000BAA 09                    2785 	.db	9
      000BAB 0C                    2786 	.db	12
      000BAC 08                    2787 	.uleb128	8
      000BAD 02                    2788 	.uleb128	2
      000BAE 89                    2789 	.db	137
      000BAF 01                    2790 	.uleb128	1
      000BB0                       2791 Ldebug_CIE1_end:
      000BB0 00 00 00 75           2792 	.dw	0,117
      000BB4 00 00 0B 9E           2793 	.dw	0,(Ldebug_CIE1_start-4)
      000BB8 00 00 88 1D           2794 	.dw	0,(Snixie$NIXIE_DisplayChar$45)	;initial loc
      000BBC 00 00 00 96           2795 	.dw	0,Snixie$NIXIE_DisplayChar$80-Snixie$NIXIE_DisplayChar$45
      000BC0 01                    2796 	.db	1
      000BC1 00 00 88 1D           2797 	.dw	0,(Snixie$NIXIE_DisplayChar$45)
      000BC5 0E                    2798 	.db	14
      000BC6 02                    2799 	.uleb128	2
      000BC7 01                    2800 	.db	1
      000BC8 00 00 88 1F           2801 	.dw	0,(Snixie$NIXIE_DisplayChar$46)
      000BCC 0E                    2802 	.db	14
      000BCD 07                    2803 	.uleb128	7
      000BCE 01                    2804 	.db	1
      000BCF 00 00 88 24           2805 	.dw	0,(Snixie$NIXIE_DisplayChar$49)
      000BD3 0E                    2806 	.db	14
      000BD4 08                    2807 	.uleb128	8
      000BD5 01                    2808 	.db	1
      000BD6 00 00 88 26           2809 	.dw	0,(Snixie$NIXIE_DisplayChar$50)
      000BDA 0E                    2810 	.db	14
      000BDB 09                    2811 	.uleb128	9
      000BDC 01                    2812 	.db	1
      000BDD 00 00 88 29           2813 	.dw	0,(Snixie$NIXIE_DisplayChar$51)
      000BE1 0E                    2814 	.db	14
      000BE2 0B                    2815 	.uleb128	11
      000BE3 01                    2816 	.db	1
      000BE4 00 00 88 2E           2817 	.dw	0,(Snixie$NIXIE_DisplayChar$52)
      000BE8 0E                    2818 	.db	14
      000BE9 07                    2819 	.uleb128	7
      000BEA 01                    2820 	.db	1
      000BEB 00 00 88 46           2821 	.dw	0,(Snixie$NIXIE_DisplayChar$58)
      000BEF 0E                    2822 	.db	14
      000BF0 09                    2823 	.uleb128	9
      000BF1 01                    2824 	.db	1
      000BF2 00 00 88 49           2825 	.dw	0,(Snixie$NIXIE_DisplayChar$59)
      000BF6 0E                    2826 	.db	14
      000BF7 0B                    2827 	.uleb128	11
      000BF8 01                    2828 	.db	1
      000BF9 00 00 88 4E           2829 	.dw	0,(Snixie$NIXIE_DisplayChar$60)
      000BFD 0E                    2830 	.db	14
      000BFE 07                    2831 	.uleb128	7
      000BFF 01                    2832 	.db	1
      000C00 00 00 88 6E           2833 	.dw	0,(Snixie$NIXIE_DisplayChar$66)
      000C04 0E                    2834 	.db	14
      000C05 08                    2835 	.uleb128	8
      000C06 01                    2836 	.db	1
      000C07 00 00 88 70           2837 	.dw	0,(Snixie$NIXIE_DisplayChar$67)
      000C0B 0E                    2838 	.db	14
      000C0C 09                    2839 	.uleb128	9
      000C0D 01                    2840 	.db	1
      000C0E 00 00 88 73           2841 	.dw	0,(Snixie$NIXIE_DisplayChar$68)
      000C12 0E                    2842 	.db	14
      000C13 0B                    2843 	.uleb128	11
      000C14 01                    2844 	.db	1
      000C15 00 00 88 78           2845 	.dw	0,(Snixie$NIXIE_DisplayChar$69)
      000C19 0E                    2846 	.db	14
      000C1A 07                    2847 	.uleb128	7
      000C1B 01                    2848 	.db	1
      000C1C 00 00 88 8A           2849 	.dw	0,(Snixie$NIXIE_DisplayChar$72)
      000C20 0E                    2850 	.db	14
      000C21 07                    2851 	.uleb128	7
      000C22 01                    2852 	.db	1
      000C23 00 00 88 B2           2853 	.dw	0,(Snixie$NIXIE_DisplayChar$78)
      000C27 0E                    2854 	.db	14
      000C28 02                    2855 	.uleb128	2
                                   2856 
                                   2857 	.area .debug_frame (NOLOAD)
      000C29 00 00                 2858 	.dw	0
      000C2B 00 0E                 2859 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000C2D                       2860 Ldebug_CIE2_start:
      000C2D FF FF                 2861 	.dw	0xffff
      000C2F FF FF                 2862 	.dw	0xffff
      000C31 01                    2863 	.db	1
      000C32 00                    2864 	.db	0
      000C33 01                    2865 	.uleb128	1
      000C34 7F                    2866 	.sleb128	-1
      000C35 09                    2867 	.db	9
      000C36 0C                    2868 	.db	12
      000C37 08                    2869 	.uleb128	8
      000C38 02                    2870 	.uleb128	2
      000C39 89                    2871 	.db	137
      000C3A 01                    2872 	.uleb128	1
      000C3B                       2873 Ldebug_CIE2_end:
      000C3B 00 00 00 C9           2874 	.dw	0,201
      000C3F 00 00 0C 29           2875 	.dw	0,(Ldebug_CIE2_start-4)
      000C43 00 00 87 D7           2876 	.dw	0,(Snixie$NIXIE_Init$8)	;initial loc
      000C47 00 00 00 46           2877 	.dw	0,Snixie$NIXIE_Init$43-Snixie$NIXIE_Init$8
      000C4B 01                    2878 	.db	1
      000C4C 00 00 87 D7           2879 	.dw	0,(Snixie$NIXIE_Init$8)
      000C50 0E                    2880 	.db	14
      000C51 02                    2881 	.uleb128	2
      000C52 01                    2882 	.db	1
      000C53 00 00 87 D9           2883 	.dw	0,(Snixie$NIXIE_Init$10)
      000C57 0E                    2884 	.db	14
      000C58 03                    2885 	.uleb128	3
      000C59 01                    2886 	.db	1
      000C5A 00 00 87 DB           2887 	.dw	0,(Snixie$NIXIE_Init$11)
      000C5E 0E                    2888 	.db	14
      000C5F 04                    2889 	.uleb128	4
      000C60 01                    2890 	.db	1
      000C61 00 00 87 DD           2891 	.dw	0,(Snixie$NIXIE_Init$12)
      000C65 0E                    2892 	.db	14
      000C66 05                    2893 	.uleb128	5
      000C67 01                    2894 	.db	1
      000C68 00 00 87 DF           2895 	.dw	0,(Snixie$NIXIE_Init$13)
      000C6C 0E                    2896 	.db	14
      000C6D 06                    2897 	.uleb128	6
      000C6E 01                    2898 	.db	1
      000C6F 00 00 87 E4           2899 	.dw	0,(Snixie$NIXIE_Init$14)
      000C73 0E                    2900 	.db	14
      000C74 02                    2901 	.uleb128	2
      000C75 01                    2902 	.db	1
      000C76 00 00 87 E6           2903 	.dw	0,(Snixie$NIXIE_Init$16)
      000C7A 0E                    2904 	.db	14
      000C7B 03                    2905 	.uleb128	3
      000C7C 01                    2906 	.db	1
      000C7D 00 00 87 E8           2907 	.dw	0,(Snixie$NIXIE_Init$17)
      000C81 0E                    2908 	.db	14
      000C82 04                    2909 	.uleb128	4
      000C83 01                    2910 	.db	1
      000C84 00 00 87 EA           2911 	.dw	0,(Snixie$NIXIE_Init$18)
      000C88 0E                    2912 	.db	14
      000C89 05                    2913 	.uleb128	5
      000C8A 01                    2914 	.db	1
      000C8B 00 00 87 EC           2915 	.dw	0,(Snixie$NIXIE_Init$19)
      000C8F 0E                    2916 	.db	14
      000C90 06                    2917 	.uleb128	6
      000C91 01                    2918 	.db	1
      000C92 00 00 87 F1           2919 	.dw	0,(Snixie$NIXIE_Init$20)
      000C96 0E                    2920 	.db	14
      000C97 02                    2921 	.uleb128	2
      000C98 01                    2922 	.db	1
      000C99 00 00 87 F3           2923 	.dw	0,(Snixie$NIXIE_Init$22)
      000C9D 0E                    2924 	.db	14
      000C9E 03                    2925 	.uleb128	3
      000C9F 01                    2926 	.db	1
      000CA0 00 00 87 F5           2927 	.dw	0,(Snixie$NIXIE_Init$23)
      000CA4 0E                    2928 	.db	14
      000CA5 04                    2929 	.uleb128	4
      000CA6 01                    2930 	.db	1
      000CA7 00 00 87 F7           2931 	.dw	0,(Snixie$NIXIE_Init$24)
      000CAB 0E                    2932 	.db	14
      000CAC 05                    2933 	.uleb128	5
      000CAD 01                    2934 	.db	1
      000CAE 00 00 87 F9           2935 	.dw	0,(Snixie$NIXIE_Init$25)
      000CB2 0E                    2936 	.db	14
      000CB3 06                    2937 	.uleb128	6
      000CB4 01                    2938 	.db	1
      000CB5 00 00 87 FE           2939 	.dw	0,(Snixie$NIXIE_Init$26)
      000CB9 0E                    2940 	.db	14
      000CBA 02                    2941 	.uleb128	2
      000CBB 01                    2942 	.db	1
      000CBC 00 00 88 03           2943 	.dw	0,(Snixie$NIXIE_Init$29)
      000CC0 0E                    2944 	.db	14
      000CC1 03                    2945 	.uleb128	3
      000CC2 01                    2946 	.db	1
      000CC3 00 00 88 05           2947 	.dw	0,(Snixie$NIXIE_Init$30)
      000CC7 0E                    2948 	.db	14
      000CC8 04                    2949 	.uleb128	4
      000CC9 01                    2950 	.db	1
      000CCA 00 00 88 07           2951 	.dw	0,(Snixie$NIXIE_Init$31)
      000CCE 0E                    2952 	.db	14
      000CCF 05                    2953 	.uleb128	5
      000CD0 01                    2954 	.db	1
      000CD1 00 00 88 09           2955 	.dw	0,(Snixie$NIXIE_Init$32)
      000CD5 0E                    2956 	.db	14
      000CD6 06                    2957 	.uleb128	6
      000CD7 01                    2958 	.db	1
      000CD8 00 00 88 0B           2959 	.dw	0,(Snixie$NIXIE_Init$33)
      000CDC 0E                    2960 	.db	14
      000CDD 07                    2961 	.uleb128	7
      000CDE 01                    2962 	.db	1
      000CDF 00 00 88 0D           2963 	.dw	0,(Snixie$NIXIE_Init$34)
      000CE3 0E                    2964 	.db	14
      000CE4 08                    2965 	.uleb128	8
      000CE5 01                    2966 	.db	1
      000CE6 00 00 88 0F           2967 	.dw	0,(Snixie$NIXIE_Init$35)
      000CEA 0E                    2968 	.db	14
      000CEB 09                    2969 	.uleb128	9
      000CEC 01                    2970 	.db	1
      000CED 00 00 88 11           2971 	.dw	0,(Snixie$NIXIE_Init$36)
      000CF1 0E                    2972 	.db	14
      000CF2 0A                    2973 	.uleb128	10
      000CF3 01                    2974 	.db	1
      000CF4 00 00 88 16           2975 	.dw	0,(Snixie$NIXIE_Init$37)
      000CF8 0E                    2976 	.db	14
      000CF9 02                    2977 	.uleb128	2
      000CFA 01                    2978 	.db	1
      000CFB 00 00 88 18           2979 	.dw	0,(Snixie$NIXIE_Init$39)
      000CFF 0E                    2980 	.db	14
      000D00 03                    2981 	.uleb128	3
      000D01 01                    2982 	.db	1
      000D02 00 00 88 1C           2983 	.dw	0,(Snixie$NIXIE_Init$40)
      000D06 0E                    2984 	.db	14
      000D07 02                    2985 	.uleb128	2
                                   2986 
                                   2987 	.area .debug_frame (NOLOAD)
      000D08 00 00                 2988 	.dw	0
      000D0A 00 0E                 2989 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000D0C                       2990 Ldebug_CIE3_start:
      000D0C FF FF                 2991 	.dw	0xffff
      000D0E FF FF                 2992 	.dw	0xffff
      000D10 01                    2993 	.db	1
      000D11 00                    2994 	.db	0
      000D12 01                    2995 	.uleb128	1
      000D13 7F                    2996 	.sleb128	-1
      000D14 09                    2997 	.db	9
      000D15 0C                    2998 	.db	12
      000D16 08                    2999 	.uleb128	8
      000D17 02                    3000 	.uleb128	2
      000D18 89                    3001 	.db	137
      000D19 01                    3002 	.uleb128	1
      000D1A                       3003 Ldebug_CIE3_end:
      000D1A 00 00 00 13           3004 	.dw	0,19
      000D1E 00 00 0D 08           3005 	.dw	0,(Ldebug_CIE3_start-4)
      000D22 00 00 87 CD           3006 	.dw	0,(Snixie$delay$2)	;initial loc
      000D26 00 00 00 0A           3007 	.dw	0,Snixie$delay$6-Snixie$delay$2
      000D2A 01                    3008 	.db	1
      000D2B 00 00 87 CD           3009 	.dw	0,(Snixie$delay$2)
      000D2F 0E                    3010 	.db	14
      000D30 02                    3011 	.uleb128	2
