                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_Init
                                     12 	.globl _GPIO_WriteHigh
                                     13 	.globl _GPIO_WriteLow
                                     14 	.globl _GPIO_ReadInputPin
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; absolute external ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DABS (ABS)
                                     27 
                                     28 ; default segment ordering for linker
                                     29 	.area HOME
                                     30 	.area GSINIT
                                     31 	.area GSFINAL
                                     32 	.area CONST
                                     33 	.area INITIALIZER
                                     34 	.area CODE
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area CODE
                           000000    52 	Sstm8s_gpio$GPIO_Init$0 ==.
                                     53 ;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     54 ;	-----------------------------------------
                                     55 ;	 function GPIO_Init
                                     56 ;	-----------------------------------------
      008236                         57 _GPIO_Init:
                           000000    58 	Sstm8s_gpio$GPIO_Init$1 ==.
      008236 52 05            [ 2]   59 	sub	sp, #5
                           000002    60 	Sstm8s_gpio$GPIO_Init$2 ==.
                           000002    61 	Sstm8s_gpio$GPIO_Init$3 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008238 16 08            [ 2]   63 	ldw	y, (0x08, sp)
      00823A 93               [ 1]   64 	ldw	x, y
      00823B 1C 00 04         [ 2]   65 	addw	x, #0x0004
      00823E 1F 01            [ 2]   66 	ldw	(0x01, sp), x
      008240 F6               [ 1]   67 	ld	a, (x)
      008241 88               [ 1]   68 	push	a
                           00000C    69 	Sstm8s_gpio$GPIO_Init$4 ==.
      008242 7B 0B            [ 1]   70 	ld	a, (0x0b, sp)
      008244 43               [ 1]   71 	cpl	a
      008245 6B 04            [ 1]   72 	ld	(0x04, sp), a
      008247 84               [ 1]   73 	pop	a
                           000012    74 	Sstm8s_gpio$GPIO_Init$5 ==.
      008248 14 03            [ 1]   75 	and	a, (0x03, sp)
      00824A 1E 01            [ 2]   76 	ldw	x, (0x01, sp)
      00824C F7               [ 1]   77 	ld	(x), a
                           000017    78 	Sstm8s_gpio$GPIO_Init$6 ==.
                                     79 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00824D 93               [ 1]   80 	ldw	x, y
      00824E 5C               [ 1]   81 	incw	x
      00824F 5C               [ 1]   82 	incw	x
      008250 1F 04            [ 2]   83 	ldw	(0x04, sp), x
                           00001C    84 	Sstm8s_gpio$GPIO_Init$7 ==.
                                     85 ;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008252 0D 0B            [ 1]   86 	tnz	(0x0b, sp)
      008254 2A 1E            [ 1]   87 	jrpl	00105$
                           000020    88 	Sstm8s_gpio$GPIO_Init$8 ==.
                                     89 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008256 90 F6            [ 1]   90 	ld	a, (y)
                           000022    91 	Sstm8s_gpio$GPIO_Init$9 ==.
                           000022    92 	Sstm8s_gpio$GPIO_Init$10 ==.
                                     93 ;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008258 88               [ 1]   94 	push	a
                           000023    95 	Sstm8s_gpio$GPIO_Init$11 ==.
      008259 7B 0C            [ 1]   96 	ld	a, (0x0c, sp)
      00825B A5 10            [ 1]   97 	bcp	a, #0x10
      00825D 84               [ 1]   98 	pop	a
                           000028    99 	Sstm8s_gpio$GPIO_Init$12 ==.
      00825E 27 06            [ 1]  100 	jreq	00102$
                           00002A   101 	Sstm8s_gpio$GPIO_Init$13 ==.
                           00002A   102 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008260 1A 0A            [ 1]  104 	or	a, (0x0a, sp)
      008262 90 F7            [ 1]  105 	ld	(y), a
                           00002E   106 	Sstm8s_gpio$GPIO_Init$15 ==.
      008264 20 04            [ 2]  107 	jra	00103$
      008266                        108 00102$:
                           000030   109 	Sstm8s_gpio$GPIO_Init$16 ==.
                           000030   110 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008266 14 03            [ 1]  112 	and	a, (0x03, sp)
      008268 90 F7            [ 1]  113 	ld	(y), a
                           000034   114 	Sstm8s_gpio$GPIO_Init$18 ==.
      00826A                        115 00103$:
                           000034   116 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    117 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00826A 1E 04            [ 2]  118 	ldw	x, (0x04, sp)
      00826C F6               [ 1]  119 	ld	a, (x)
      00826D 1A 0A            [ 1]  120 	or	a, (0x0a, sp)
      00826F 1E 04            [ 2]  121 	ldw	x, (0x04, sp)
      008271 F7               [ 1]  122 	ld	(x), a
                           00003C   123 	Sstm8s_gpio$GPIO_Init$20 ==.
      008272 20 08            [ 2]  124 	jra	00106$
      008274                        125 00105$:
                           00003E   126 	Sstm8s_gpio$GPIO_Init$21 ==.
                           00003E   127 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    128 ;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008274 1E 04            [ 2]  129 	ldw	x, (0x04, sp)
      008276 F6               [ 1]  130 	ld	a, (x)
      008277 14 03            [ 1]  131 	and	a, (0x03, sp)
      008279 1E 04            [ 2]  132 	ldw	x, (0x04, sp)
      00827B F7               [ 1]  133 	ld	(x), a
                           000046   134 	Sstm8s_gpio$GPIO_Init$23 ==.
      00827C                        135 00106$:
                           000046   136 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    137 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00827C 93               [ 1]  138 	ldw	x, y
      00827D 1C 00 03         [ 2]  139 	addw	x, #0x0003
      008280 F6               [ 1]  140 	ld	a, (x)
                           00004B   141 	Sstm8s_gpio$GPIO_Init$25 ==.
                                    142 ;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008281 88               [ 1]  143 	push	a
                           00004C   144 	Sstm8s_gpio$GPIO_Init$26 ==.
      008282 7B 0C            [ 1]  145 	ld	a, (0x0c, sp)
      008284 A5 40            [ 1]  146 	bcp	a, #0x40
      008286 84               [ 1]  147 	pop	a
                           000051   148 	Sstm8s_gpio$GPIO_Init$27 ==.
      008287 27 05            [ 1]  149 	jreq	00108$
                           000053   150 	Sstm8s_gpio$GPIO_Init$28 ==.
                           000053   151 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    152 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008289 1A 0A            [ 1]  153 	or	a, (0x0a, sp)
      00828B F7               [ 1]  154 	ld	(x), a
                           000056   155 	Sstm8s_gpio$GPIO_Init$30 ==.
      00828C 20 03            [ 2]  156 	jra	00109$
      00828E                        157 00108$:
                           000058   158 	Sstm8s_gpio$GPIO_Init$31 ==.
                           000058   159 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    160 ;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      00828E 14 03            [ 1]  161 	and	a, (0x03, sp)
      008290 F7               [ 1]  162 	ld	(x), a
                           00005B   163 	Sstm8s_gpio$GPIO_Init$33 ==.
      008291                        164 00109$:
                           00005B   165 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    166 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008291 1E 01            [ 2]  167 	ldw	x, (0x01, sp)
      008293 F6               [ 1]  168 	ld	a, (x)
                           00005E   169 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    170 ;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008294 88               [ 1]  171 	push	a
                           00005F   172 	Sstm8s_gpio$GPIO_Init$36 ==.
      008295 7B 0C            [ 1]  173 	ld	a, (0x0c, sp)
      008297 A5 20            [ 1]  174 	bcp	a, #0x20
      008299 84               [ 1]  175 	pop	a
                           000064   176 	Sstm8s_gpio$GPIO_Init$37 ==.
      00829A 27 07            [ 1]  177 	jreq	00111$
                           000066   178 	Sstm8s_gpio$GPIO_Init$38 ==.
                           000066   179 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    180 ;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00829C 1A 0A            [ 1]  181 	or	a, (0x0a, sp)
      00829E 1E 01            [ 2]  182 	ldw	x, (0x01, sp)
      0082A0 F7               [ 1]  183 	ld	(x), a
                           00006B   184 	Sstm8s_gpio$GPIO_Init$40 ==.
      0082A1 20 05            [ 2]  185 	jra	00113$
      0082A3                        186 00111$:
                           00006D   187 	Sstm8s_gpio$GPIO_Init$41 ==.
                           00006D   188 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0082A3 14 03            [ 1]  190 	and	a, (0x03, sp)
      0082A5 1E 01            [ 2]  191 	ldw	x, (0x01, sp)
      0082A7 F7               [ 1]  192 	ld	(x), a
                           000072   193 	Sstm8s_gpio$GPIO_Init$43 ==.
      0082A8                        194 00113$:
                           000072   195 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    196 ;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
      0082A8 5B 05            [ 2]  197 	addw	sp, #5
                           000074   198 	Sstm8s_gpio$GPIO_Init$45 ==.
                           000074   199 	Sstm8s_gpio$GPIO_Init$46 ==.
                           000074   200 	XG$GPIO_Init$0$0 ==.
      0082AA 81               [ 4]  201 	ret
                           000075   202 	Sstm8s_gpio$GPIO_Init$47 ==.
                           000075   203 	Sstm8s_gpio$GPIO_WriteHigh$48 ==.
                                    204 ;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    205 ;	-----------------------------------------
                                    206 ;	 function GPIO_WriteHigh
                                    207 ;	-----------------------------------------
      0082AB                        208 _GPIO_WriteHigh:
                           000075   209 	Sstm8s_gpio$GPIO_WriteHigh$49 ==.
                           000075   210 	Sstm8s_gpio$GPIO_WriteHigh$50 ==.
                                    211 ;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      0082AB 1E 03            [ 2]  212 	ldw	x, (0x03, sp)
      0082AD F6               [ 1]  213 	ld	a, (x)
      0082AE 1A 05            [ 1]  214 	or	a, (0x05, sp)
      0082B0 F7               [ 1]  215 	ld	(x), a
                           00007B   216 	Sstm8s_gpio$GPIO_WriteHigh$51 ==.
                                    217 ;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
                           00007B   218 	Sstm8s_gpio$GPIO_WriteHigh$52 ==.
                           00007B   219 	XG$GPIO_WriteHigh$0$0 ==.
      0082B1 81               [ 4]  220 	ret
                           00007C   221 	Sstm8s_gpio$GPIO_WriteHigh$53 ==.
                           00007C   222 	Sstm8s_gpio$GPIO_WriteLow$54 ==.
                                    223 ;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    224 ;	-----------------------------------------
                                    225 ;	 function GPIO_WriteLow
                                    226 ;	-----------------------------------------
      0082B2                        227 _GPIO_WriteLow:
                           00007C   228 	Sstm8s_gpio$GPIO_WriteLow$55 ==.
      0082B2 88               [ 1]  229 	push	a
                           00007D   230 	Sstm8s_gpio$GPIO_WriteLow$56 ==.
                           00007D   231 	Sstm8s_gpio$GPIO_WriteLow$57 ==.
                                    232 ;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      0082B3 1E 04            [ 2]  233 	ldw	x, (0x04, sp)
      0082B5 F6               [ 1]  234 	ld	a, (x)
      0082B6 6B 01            [ 1]  235 	ld	(0x01, sp), a
      0082B8 7B 06            [ 1]  236 	ld	a, (0x06, sp)
      0082BA 43               [ 1]  237 	cpl	a
      0082BB 14 01            [ 1]  238 	and	a, (0x01, sp)
      0082BD F7               [ 1]  239 	ld	(x), a
                           000088   240 	Sstm8s_gpio$GPIO_WriteLow$58 ==.
                                    241 ;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
      0082BE 84               [ 1]  242 	pop	a
                           000089   243 	Sstm8s_gpio$GPIO_WriteLow$59 ==.
                           000089   244 	Sstm8s_gpio$GPIO_WriteLow$60 ==.
                           000089   245 	XG$GPIO_WriteLow$0$0 ==.
      0082BF 81               [ 4]  246 	ret
                           00008A   247 	Sstm8s_gpio$GPIO_WriteLow$61 ==.
                           00008A   248 	Sstm8s_gpio$GPIO_ReadInputPin$62 ==.
                                    249 ;	Source/Std_Lib/Src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    250 ;	-----------------------------------------
                                    251 ;	 function GPIO_ReadInputPin
                                    252 ;	-----------------------------------------
      0082C0                        253 _GPIO_ReadInputPin:
                           00008A   254 	Sstm8s_gpio$GPIO_ReadInputPin$63 ==.
                           00008A   255 	Sstm8s_gpio$GPIO_ReadInputPin$64 ==.
                                    256 ;	Source/Std_Lib/Src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      0082C0 1E 03            [ 2]  257 	ldw	x, (0x03, sp)
      0082C2 E6 01            [ 1]  258 	ld	a, (0x1, x)
      0082C4 14 05            [ 1]  259 	and	a, (0x05, sp)
                           000090   260 	Sstm8s_gpio$GPIO_ReadInputPin$65 ==.
                                    261 ;	Source/Std_Lib/Src/stm8s_gpio.c: 216: }
                           000090   262 	Sstm8s_gpio$GPIO_ReadInputPin$66 ==.
                           000090   263 	XG$GPIO_ReadInputPin$0$0 ==.
      0082C6 81               [ 4]  264 	ret
                           000091   265 	Sstm8s_gpio$GPIO_ReadInputPin$67 ==.
                                    266 	.area CODE
                                    267 	.area CONST
                                    268 	.area INITIALIZER
                                    269 	.area CABS (ABS)
                                    270 
                                    271 	.area .debug_line (NOLOAD)
      000209 00 00 01 5A            272 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00020D                        273 Ldebug_line_start:
      00020D 00 02                  274 	.dw	2
      00020F 00 00 00 80            275 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000213 01                     276 	.db	1
      000214 01                     277 	.db	1
      000215 FB                     278 	.db	-5
      000216 0F                     279 	.db	15
      000217 0A                     280 	.db	10
      000218 00                     281 	.db	0
      000219 01                     282 	.db	1
      00021A 01                     283 	.db	1
      00021B 01                     284 	.db	1
      00021C 01                     285 	.db	1
      00021D 00                     286 	.db	0
      00021E 00                     287 	.db	0
      00021F 00                     288 	.db	0
      000220 01                     289 	.db	1
      000221 43 3A 5C 50 72 6F 67   290 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000249 00                     291 	.db	0
      00024A 43 3A 5C 50 72 6F 67   292 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00026D 00                     293 	.db	0
      00026E 00                     294 	.db	0
      00026F 53 6F 75 72 63 65 2F   295 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      00028E 00                     296 	.db	0
      00028F 00                     297 	.uleb128	0
      000290 00                     298 	.uleb128	0
      000291 00                     299 	.uleb128	0
      000292 00                     300 	.db	0
      000293                        301 Ldebug_line_stmt:
      000293 00                     302 	.db	0
      000294 05                     303 	.uleb128	5
      000295 02                     304 	.db	2
      000296 00 00 82 36            305 	.dw	0,(Sstm8s_gpio$GPIO_Init$0)
      00029A 03                     306 	.db	3
      00029B C6 00                  307 	.sleb128	70
      00029D 01                     308 	.db	1
      00029E 09                     309 	.db	9
      00029F 00 02                  310 	.dw	Sstm8s_gpio$GPIO_Init$3-Sstm8s_gpio$GPIO_Init$0
      0002A1 03                     311 	.db	3
      0002A2 0A                     312 	.sleb128	10
      0002A3 01                     313 	.db	1
      0002A4 09                     314 	.db	9
      0002A5 00 15                  315 	.dw	Sstm8s_gpio$GPIO_Init$6-Sstm8s_gpio$GPIO_Init$3
      0002A7 03                     316 	.db	3
      0002A8 11                     317 	.sleb128	17
      0002A9 01                     318 	.db	1
      0002AA 09                     319 	.db	9
      0002AB 00 05                  320 	.dw	Sstm8s_gpio$GPIO_Init$7-Sstm8s_gpio$GPIO_Init$6
      0002AD 03                     321 	.db	3
      0002AE 75                     322 	.sleb128	-11
      0002AF 01                     323 	.db	1
      0002B0 09                     324 	.db	9
      0002B1 00 04                  325 	.dw	Sstm8s_gpio$GPIO_Init$8-Sstm8s_gpio$GPIO_Init$7
      0002B3 03                     326 	.db	3
      0002B4 04                     327 	.sleb128	4
      0002B5 01                     328 	.db	1
      0002B6 09                     329 	.db	9
      0002B7 00 02                  330 	.dw	Sstm8s_gpio$GPIO_Init$10-Sstm8s_gpio$GPIO_Init$8
      0002B9 03                     331 	.db	3
      0002BA 7E                     332 	.sleb128	-2
      0002BB 01                     333 	.db	1
      0002BC 09                     334 	.db	9
      0002BD 00 08                  335 	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$10
      0002BF 03                     336 	.db	3
      0002C0 02                     337 	.sleb128	2
      0002C1 01                     338 	.db	1
      0002C2 09                     339 	.db	9
      0002C3 00 06                  340 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$14
      0002C5 03                     341 	.db	3
      0002C6 04                     342 	.sleb128	4
      0002C7 01                     343 	.db	1
      0002C8 09                     344 	.db	9
      0002C9 00 04                  345 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      0002CB 03                     346 	.db	3
      0002CC 03                     347 	.sleb128	3
      0002CD 01                     348 	.db	1
      0002CE 09                     349 	.db	9
      0002CF 00 0A                  350 	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$19
      0002D1 03                     351 	.db	3
      0002D2 05                     352 	.sleb128	5
      0002D3 01                     353 	.db	1
      0002D4 09                     354 	.db	9
      0002D5 00 08                  355 	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$22
      0002D7 03                     356 	.db	3
      0002D8 09                     357 	.sleb128	9
      0002D9 01                     358 	.db	1
      0002DA 09                     359 	.db	9
      0002DB 00 05                  360 	.dw	Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
      0002DD 03                     361 	.db	3
      0002DE 7E                     362 	.sleb128	-2
      0002DF 01                     363 	.db	1
      0002E0 09                     364 	.db	9
      0002E1 00 08                  365 	.dw	Sstm8s_gpio$GPIO_Init$29-Sstm8s_gpio$GPIO_Init$25
      0002E3 03                     366 	.db	3
      0002E4 02                     367 	.sleb128	2
      0002E5 01                     368 	.db	1
      0002E6 09                     369 	.db	9
      0002E7 00 05                  370 	.dw	Sstm8s_gpio$GPIO_Init$32-Sstm8s_gpio$GPIO_Init$29
      0002E9 03                     371 	.db	3
      0002EA 04                     372 	.sleb128	4
      0002EB 01                     373 	.db	1
      0002EC 09                     374 	.db	9
      0002ED 00 03                  375 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$32
      0002EF 03                     376 	.db	3
      0002F0 5D                     377 	.sleb128	-35
      0002F1 01                     378 	.db	1
      0002F2 09                     379 	.db	9
      0002F3 00 03                  380 	.dw	Sstm8s_gpio$GPIO_Init$35-Sstm8s_gpio$GPIO_Init$34
      0002F5 03                     381 	.db	3
      0002F6 2A                     382 	.sleb128	42
      0002F7 01                     383 	.db	1
      0002F8 09                     384 	.db	9
      0002F9 00 08                  385 	.dw	Sstm8s_gpio$GPIO_Init$39-Sstm8s_gpio$GPIO_Init$35
      0002FB 03                     386 	.db	3
      0002FC 02                     387 	.sleb128	2
      0002FD 01                     388 	.db	1
      0002FE 09                     389 	.db	9
      0002FF 00 07                  390 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$39
      000301 03                     391 	.db	3
      000302 04                     392 	.sleb128	4
      000303 01                     393 	.db	1
      000304 09                     394 	.db	9
      000305 00 05                  395 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      000307 03                     396 	.db	3
      000308 02                     397 	.sleb128	2
      000309 01                     398 	.db	1
      00030A 09                     399 	.db	9
      00030B 00 03                  400 	.dw	1+Sstm8s_gpio$GPIO_Init$46-Sstm8s_gpio$GPIO_Init$44
      00030D 00                     401 	.db	0
      00030E 01                     402 	.uleb128	1
      00030F 01                     403 	.db	1
      000310 00                     404 	.db	0
      000311 05                     405 	.uleb128	5
      000312 02                     406 	.db	2
      000313 00 00 82 AB            407 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$48)
      000317 03                     408 	.db	3
      000318 99 01                  409 	.sleb128	153
      00031A 01                     410 	.db	1
      00031B 09                     411 	.db	9
      00031C 00 00                  412 	.dw	Sstm8s_gpio$GPIO_WriteHigh$50-Sstm8s_gpio$GPIO_WriteHigh$48
      00031E 03                     413 	.db	3
      00031F 02                     414 	.sleb128	2
      000320 01                     415 	.db	1
      000321 09                     416 	.db	9
      000322 00 06                  417 	.dw	Sstm8s_gpio$GPIO_WriteHigh$51-Sstm8s_gpio$GPIO_WriteHigh$50
      000324 03                     418 	.db	3
      000325 01                     419 	.sleb128	1
      000326 01                     420 	.db	1
      000327 09                     421 	.db	9
      000328 00 01                  422 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$52-Sstm8s_gpio$GPIO_WriteHigh$51
      00032A 00                     423 	.db	0
      00032B 01                     424 	.uleb128	1
      00032C 01                     425 	.db	1
      00032D 00                     426 	.db	0
      00032E 05                     427 	.uleb128	5
      00032F 02                     428 	.db	2
      000330 00 00 82 B2            429 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$54)
      000334 03                     430 	.db	3
      000335 A6 01                  431 	.sleb128	166
      000337 01                     432 	.db	1
      000338 09                     433 	.db	9
      000339 00 01                  434 	.dw	Sstm8s_gpio$GPIO_WriteLow$57-Sstm8s_gpio$GPIO_WriteLow$54
      00033B 03                     435 	.db	3
      00033C 02                     436 	.sleb128	2
      00033D 01                     437 	.db	1
      00033E 09                     438 	.db	9
      00033F 00 0B                  439 	.dw	Sstm8s_gpio$GPIO_WriteLow$58-Sstm8s_gpio$GPIO_WriteLow$57
      000341 03                     440 	.db	3
      000342 01                     441 	.sleb128	1
      000343 01                     442 	.db	1
      000344 09                     443 	.db	9
      000345 00 02                  444 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$60-Sstm8s_gpio$GPIO_WriteLow$58
      000347 00                     445 	.db	0
      000348 01                     446 	.uleb128	1
      000349 01                     447 	.db	1
      00034A 00                     448 	.db	0
      00034B 05                     449 	.uleb128	5
      00034C 02                     450 	.db	2
      00034D 00 00 82 C0            451 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$62)
      000351 03                     452 	.db	3
      000352 D4 01                  453 	.sleb128	212
      000354 01                     454 	.db	1
      000355 09                     455 	.db	9
      000356 00 00                  456 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$64-Sstm8s_gpio$GPIO_ReadInputPin$62
      000358 03                     457 	.db	3
      000359 02                     458 	.sleb128	2
      00035A 01                     459 	.db	1
      00035B 09                     460 	.db	9
      00035C 00 06                  461 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$65-Sstm8s_gpio$GPIO_ReadInputPin$64
      00035E 03                     462 	.db	3
      00035F 01                     463 	.sleb128	1
      000360 01                     464 	.db	1
      000361 09                     465 	.db	9
      000362 00 01                  466 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$66-Sstm8s_gpio$GPIO_ReadInputPin$65
      000364 00                     467 	.db	0
      000365 01                     468 	.uleb128	1
      000366 01                     469 	.db	1
      000367                        470 Ldebug_line_end:
                                    471 
                                    472 	.area .debug_loc (NOLOAD)
      0003B8                        473 Ldebug_loc_start:
      0003B8 00 00 82 C0            474 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
      0003BC 00 00 82 C7            475 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$67)
      0003C0 00 02                  476 	.dw	2
      0003C2 78                     477 	.db	120
      0003C3 01                     478 	.sleb128	1
      0003C4 00 00 00 00            479 	.dw	0,0
      0003C8 00 00 00 00            480 	.dw	0,0
      0003CC 00 00 82 BF            481 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      0003D0 00 00 82 C0            482 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$61)
      0003D4 00 02                  483 	.dw	2
      0003D6 78                     484 	.db	120
      0003D7 01                     485 	.sleb128	1
      0003D8 00 00 82 B3            486 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      0003DC 00 00 82 BF            487 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      0003E0 00 02                  488 	.dw	2
      0003E2 78                     489 	.db	120
      0003E3 02                     490 	.sleb128	2
      0003E4 00 00 82 B2            491 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      0003E8 00 00 82 B3            492 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      0003EC 00 02                  493 	.dw	2
      0003EE 78                     494 	.db	120
      0003EF 01                     495 	.sleb128	1
      0003F0 00 00 00 00            496 	.dw	0,0
      0003F4 00 00 00 00            497 	.dw	0,0
      0003F8 00 00 82 AB            498 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      0003FC 00 00 82 B2            499 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$53)
      000400 00 02                  500 	.dw	2
      000402 78                     501 	.db	120
      000403 01                     502 	.sleb128	1
      000404 00 00 00 00            503 	.dw	0,0
      000408 00 00 00 00            504 	.dw	0,0
      00040C 00 00 82 AA            505 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      000410 00 00 82 AB            506 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      000414 00 02                  507 	.dw	2
      000416 78                     508 	.db	120
      000417 01                     509 	.sleb128	1
      000418 00 00 82 9A            510 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      00041C 00 00 82 AA            511 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      000420 00 02                  512 	.dw	2
      000422 78                     513 	.db	120
      000423 06                     514 	.sleb128	6
      000424 00 00 82 95            515 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000428 00 00 82 9A            516 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      00042C 00 02                  517 	.dw	2
      00042E 78                     518 	.db	120
      00042F 07                     519 	.sleb128	7
      000430 00 00 82 87            520 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000434 00 00 82 95            521 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000438 00 02                  522 	.dw	2
      00043A 78                     523 	.db	120
      00043B 06                     524 	.sleb128	6
      00043C 00 00 82 82            525 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000440 00 00 82 87            526 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000444 00 02                  527 	.dw	2
      000446 78                     528 	.db	120
      000447 07                     529 	.sleb128	7
      000448 00 00 82 5E            530 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      00044C 00 00 82 82            531 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000450 00 02                  532 	.dw	2
      000452 78                     533 	.db	120
      000453 06                     534 	.sleb128	6
      000454 00 00 82 59            535 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000458 00 00 82 5E            536 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      00045C 00 02                  537 	.dw	2
      00045E 78                     538 	.db	120
      00045F 07                     539 	.sleb128	7
      000460 00 00 82 48            540 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      000464 00 00 82 59            541 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000468 00 02                  542 	.dw	2
      00046A 78                     543 	.db	120
      00046B 06                     544 	.sleb128	6
      00046C 00 00 82 42            545 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      000470 00 00 82 48            546 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      000474 00 02                  547 	.dw	2
      000476 78                     548 	.db	120
      000477 07                     549 	.sleb128	7
      000478 00 00 82 38            550 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      00047C 00 00 82 42            551 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      000480 00 02                  552 	.dw	2
      000482 78                     553 	.db	120
      000483 06                     554 	.sleb128	6
      000484 00 00 82 36            555 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      000488 00 00 82 38            556 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      00048C 00 02                  557 	.dw	2
      00048E 78                     558 	.db	120
      00048F 01                     559 	.sleb128	1
      000490 00 00 00 00            560 	.dw	0,0
      000494 00 00 00 00            561 	.dw	0,0
                                    562 
                                    563 	.area .debug_abbrev (NOLOAD)
      0000AF                        564 Ldebug_abbrev:
      0000AF 06                     565 	.uleb128	6
      0000B0 0F                     566 	.uleb128	15
      0000B1 00                     567 	.db	0
      0000B2 0B                     568 	.uleb128	11
      0000B3 0B                     569 	.uleb128	11
      0000B4 49                     570 	.uleb128	73
      0000B5 13                     571 	.uleb128	19
      0000B6 00                     572 	.uleb128	0
      0000B7 00                     573 	.uleb128	0
      0000B8 04                     574 	.uleb128	4
      0000B9 35                     575 	.uleb128	53
      0000BA 00                     576 	.db	0
      0000BB 49                     577 	.uleb128	73
      0000BC 13                     578 	.uleb128	19
      0000BD 00                     579 	.uleb128	0
      0000BE 00                     580 	.uleb128	0
      0000BF 0B                     581 	.uleb128	11
      0000C0 2E                     582 	.uleb128	46
      0000C1 01                     583 	.db	1
      0000C2 03                     584 	.uleb128	3
      0000C3 08                     585 	.uleb128	8
      0000C4 11                     586 	.uleb128	17
      0000C5 01                     587 	.uleb128	1
      0000C6 12                     588 	.uleb128	18
      0000C7 01                     589 	.uleb128	1
      0000C8 3F                     590 	.uleb128	63
      0000C9 0C                     591 	.uleb128	12
      0000CA 40                     592 	.uleb128	64
      0000CB 06                     593 	.uleb128	6
      0000CC 49                     594 	.uleb128	73
      0000CD 13                     595 	.uleb128	19
      0000CE 00                     596 	.uleb128	0
      0000CF 00                     597 	.uleb128	0
      0000D0 07                     598 	.uleb128	7
      0000D1 05                     599 	.uleb128	5
      0000D2 00                     600 	.db	0
      0000D3 02                     601 	.uleb128	2
      0000D4 0A                     602 	.uleb128	10
      0000D5 03                     603 	.uleb128	3
      0000D6 08                     604 	.uleb128	8
      0000D7 49                     605 	.uleb128	73
      0000D8 13                     606 	.uleb128	19
      0000D9 00                     607 	.uleb128	0
      0000DA 00                     608 	.uleb128	0
      0000DB 02                     609 	.uleb128	2
      0000DC 2E                     610 	.uleb128	46
      0000DD 01                     611 	.db	1
      0000DE 01                     612 	.uleb128	1
      0000DF 13                     613 	.uleb128	19
      0000E0 03                     614 	.uleb128	3
      0000E1 08                     615 	.uleb128	8
      0000E2 11                     616 	.uleb128	17
      0000E3 01                     617 	.uleb128	1
      0000E4 12                     618 	.uleb128	18
      0000E5 01                     619 	.uleb128	1
      0000E6 3F                     620 	.uleb128	63
      0000E7 0C                     621 	.uleb128	12
      0000E8 40                     622 	.uleb128	64
      0000E9 06                     623 	.uleb128	6
      0000EA 00                     624 	.uleb128	0
      0000EB 00                     625 	.uleb128	0
      0000EC 01                     626 	.uleb128	1
      0000ED 11                     627 	.uleb128	17
      0000EE 01                     628 	.db	1
      0000EF 03                     629 	.uleb128	3
      0000F0 08                     630 	.uleb128	8
      0000F1 10                     631 	.uleb128	16
      0000F2 06                     632 	.uleb128	6
      0000F3 13                     633 	.uleb128	19
      0000F4 0B                     634 	.uleb128	11
      0000F5 25                     635 	.uleb128	37
      0000F6 08                     636 	.uleb128	8
      0000F7 00                     637 	.uleb128	0
      0000F8 00                     638 	.uleb128	0
      0000F9 05                     639 	.uleb128	5
      0000FA 0D                     640 	.uleb128	13
      0000FB 00                     641 	.db	0
      0000FC 03                     642 	.uleb128	3
      0000FD 08                     643 	.uleb128	8
      0000FE 38                     644 	.uleb128	56
      0000FF 0A                     645 	.uleb128	10
      000100 49                     646 	.uleb128	73
      000101 13                     647 	.uleb128	19
      000102 00                     648 	.uleb128	0
      000103 00                     649 	.uleb128	0
      000104 09                     650 	.uleb128	9
      000105 0B                     651 	.uleb128	11
      000106 00                     652 	.db	0
      000107 11                     653 	.uleb128	17
      000108 01                     654 	.uleb128	1
      000109 12                     655 	.uleb128	18
      00010A 01                     656 	.uleb128	1
      00010B 00                     657 	.uleb128	0
      00010C 00                     658 	.uleb128	0
      00010D 08                     659 	.uleb128	8
      00010E 0B                     660 	.uleb128	11
      00010F 01                     661 	.db	1
      000110 01                     662 	.uleb128	1
      000111 13                     663 	.uleb128	19
      000112 11                     664 	.uleb128	17
      000113 01                     665 	.uleb128	1
      000114 12                     666 	.uleb128	18
      000115 01                     667 	.uleb128	1
      000116 00                     668 	.uleb128	0
      000117 00                     669 	.uleb128	0
      000118 03                     670 	.uleb128	3
      000119 13                     671 	.uleb128	19
      00011A 01                     672 	.db	1
      00011B 01                     673 	.uleb128	1
      00011C 13                     674 	.uleb128	19
      00011D 03                     675 	.uleb128	3
      00011E 08                     676 	.uleb128	8
      00011F 0B                     677 	.uleb128	11
      000120 0B                     678 	.uleb128	11
      000121 00                     679 	.uleb128	0
      000122 00                     680 	.uleb128	0
      000123 0A                     681 	.uleb128	10
      000124 24                     682 	.uleb128	36
      000125 00                     683 	.db	0
      000126 03                     684 	.uleb128	3
      000127 08                     685 	.uleb128	8
      000128 0B                     686 	.uleb128	11
      000129 0B                     687 	.uleb128	11
      00012A 3E                     688 	.uleb128	62
      00012B 0B                     689 	.uleb128	11
      00012C 00                     690 	.uleb128	0
      00012D 00                     691 	.uleb128	0
      00012E 00                     692 	.uleb128	0
                                    693 
                                    694 	.area .debug_info (NOLOAD)
      000355 00 00 02 26            695 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000359                        696 Ldebug_info_start:
      000359 00 02                  697 	.dw	2
      00035B 00 00 00 AF            698 	.dw	0,(Ldebug_abbrev)
      00035F 04                     699 	.db	4
      000360 01                     700 	.uleb128	1
      000361 53 6F 75 72 63 65 2F   701 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      000380 00                     702 	.db	0
      000381 00 00 02 09            703 	.dw	0,(Ldebug_line_start+-4)
      000385 01                     704 	.db	1
      000386 53 44 43 43 20 76 65   705 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      00039F 00                     706 	.db	0
      0003A0 02                     707 	.uleb128	2
      0003A1 00 00 01 40            708 	.dw	0,320
      0003A5 47 50 49 4F 5F 49 6E   709 	.ascii "GPIO_Init"
             69 74
      0003AE 00                     710 	.db	0
      0003AF 00 00 82 36            711 	.dw	0,(_GPIO_Init)
      0003B3 00 00 82 AB            712 	.dw	0,(XG$GPIO_Init$0$0+1)
      0003B7 01                     713 	.db	1
      0003B8 00 00 04 0C            714 	.dw	0,(Ldebug_loc_start+84)
      0003BC 03                     715 	.uleb128	3
      0003BD 00 00 00 BB            716 	.dw	0,187
      0003C1 47 50 49 4F 5F 73 74   717 	.ascii "GPIO_struct"
             72 75 63 74
      0003CC 00                     718 	.db	0
      0003CD 05                     719 	.db	5
      0003CE 04                     720 	.uleb128	4
      0003CF 00 00 01 40            721 	.dw	0,320
      0003D3 05                     722 	.uleb128	5
      0003D4 4F 44 52               723 	.ascii "ODR"
      0003D7 00                     724 	.db	0
      0003D8 02                     725 	.db	2
      0003D9 23                     726 	.db	35
      0003DA 00                     727 	.uleb128	0
      0003DB 00 00 00 79            728 	.dw	0,121
      0003DF 05                     729 	.uleb128	5
      0003E0 49 44 52               730 	.ascii "IDR"
      0003E3 00                     731 	.db	0
      0003E4 02                     732 	.db	2
      0003E5 23                     733 	.db	35
      0003E6 01                     734 	.uleb128	1
      0003E7 00 00 00 79            735 	.dw	0,121
      0003EB 05                     736 	.uleb128	5
      0003EC 44 44 52               737 	.ascii "DDR"
      0003EF 00                     738 	.db	0
      0003F0 02                     739 	.db	2
      0003F1 23                     740 	.db	35
      0003F2 02                     741 	.uleb128	2
      0003F3 00 00 00 79            742 	.dw	0,121
      0003F7 05                     743 	.uleb128	5
      0003F8 43 52 31               744 	.ascii "CR1"
      0003FB 00                     745 	.db	0
      0003FC 02                     746 	.db	2
      0003FD 23                     747 	.db	35
      0003FE 03                     748 	.uleb128	3
      0003FF 00 00 00 79            749 	.dw	0,121
      000403 05                     750 	.uleb128	5
      000404 43 52 32               751 	.ascii "CR2"
      000407 00                     752 	.db	0
      000408 02                     753 	.db	2
      000409 23                     754 	.db	35
      00040A 04                     755 	.uleb128	4
      00040B 00 00 00 79            756 	.dw	0,121
      00040F 00                     757 	.uleb128	0
      000410 06                     758 	.uleb128	6
      000411 02                     759 	.db	2
      000412 00 00 00 67            760 	.dw	0,103
      000416 07                     761 	.uleb128	7
      000417 02                     762 	.db	2
      000418 91                     763 	.db	145
      000419 02                     764 	.sleb128	2
      00041A 47 50 49 4F 78         765 	.ascii "GPIOx"
      00041F 00                     766 	.db	0
      000420 00 00 00 BB            767 	.dw	0,187
      000424 07                     768 	.uleb128	7
      000425 02                     769 	.db	2
      000426 91                     770 	.db	145
      000427 04                     771 	.sleb128	4
      000428 47 50 49 4F 5F 50 69   772 	.ascii "GPIO_Pin"
             6E
      000430 00                     773 	.db	0
      000431 00 00 01 51            774 	.dw	0,337
      000435 07                     775 	.uleb128	7
      000436 02                     776 	.db	2
      000437 91                     777 	.db	145
      000438 05                     778 	.sleb128	5
      000439 47 50 49 4F 5F 4D 6F   779 	.ascii "GPIO_Mode"
             64 65
      000442 00                     780 	.db	0
      000443 00 00 01 51            781 	.dw	0,337
      000447 08                     782 	.uleb128	8
      000448 00 00 01 12            783 	.dw	0,274
      00044C 00 00 82 58            784 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      000450 00 00 82 72            785 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      000454 09                     786 	.uleb128	9
      000455 00 00 82 60            787 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      000459 00 00 82 64            788 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      00045D 09                     789 	.uleb128	9
      00045E 00 00 82 66            790 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      000462 00 00 82 6A            791 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      000466 00                     792 	.uleb128	0
      000467 09                     793 	.uleb128	9
      000468 00 00 82 74            794 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      00046C 00 00 82 7C            795 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      000470 09                     796 	.uleb128	9
      000471 00 00 82 89            797 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      000475 00 00 82 8C            798 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      000479 09                     799 	.uleb128	9
      00047A 00 00 82 8E            800 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      00047E 00 00 82 91            801 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      000482 09                     802 	.uleb128	9
      000483 00 00 82 9C            803 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      000487 00 00 82 A1            804 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      00048B 09                     805 	.uleb128	9
      00048C 00 00 82 A3            806 	.dw	0,(Sstm8s_gpio$GPIO_Init$41)
      000490 00 00 82 A8            807 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      000494 00                     808 	.uleb128	0
      000495 0A                     809 	.uleb128	10
      000496 75 6E 73 69 67 6E 65   810 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004A3 00                     811 	.db	0
      0004A4 01                     812 	.db	1
      0004A5 08                     813 	.db	8
      0004A6 0A                     814 	.uleb128	10
      0004A7 75 6E 73 69 67 6E 65   815 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004B4 00                     816 	.db	0
      0004B5 01                     817 	.db	1
      0004B6 08                     818 	.db	8
      0004B7 02                     819 	.uleb128	2
      0004B8 00 00 01 A3            820 	.dw	0,419
      0004BC 47 50 49 4F 5F 57 72   821 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      0004CA 00                     822 	.db	0
      0004CB 00 00 82 AB            823 	.dw	0,(_GPIO_WriteHigh)
      0004CF 00 00 82 B2            824 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      0004D3 01                     825 	.db	1
      0004D4 00 00 03 F8            826 	.dw	0,(Ldebug_loc_start+64)
      0004D8 07                     827 	.uleb128	7
      0004D9 02                     828 	.db	2
      0004DA 91                     829 	.db	145
      0004DB 02                     830 	.sleb128	2
      0004DC 47 50 49 4F 78         831 	.ascii "GPIOx"
      0004E1 00                     832 	.db	0
      0004E2 00 00 00 BB            833 	.dw	0,187
      0004E6 07                     834 	.uleb128	7
      0004E7 02                     835 	.db	2
      0004E8 91                     836 	.db	145
      0004E9 04                     837 	.sleb128	4
      0004EA 50 6F 72 74 50 69 6E   838 	.ascii "PortPins"
             73
      0004F2 00                     839 	.db	0
      0004F3 00 00 01 51            840 	.dw	0,337
      0004F7 00                     841 	.uleb128	0
      0004F8 02                     842 	.uleb128	2
      0004F9 00 00 01 E3            843 	.dw	0,483
      0004FD 47 50 49 4F 5F 57 72   844 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00050A 00                     845 	.db	0
      00050B 00 00 82 B2            846 	.dw	0,(_GPIO_WriteLow)
      00050F 00 00 82 C0            847 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      000513 01                     848 	.db	1
      000514 00 00 03 CC            849 	.dw	0,(Ldebug_loc_start+20)
      000518 07                     850 	.uleb128	7
      000519 02                     851 	.db	2
      00051A 91                     852 	.db	145
      00051B 02                     853 	.sleb128	2
      00051C 47 50 49 4F 78         854 	.ascii "GPIOx"
      000521 00                     855 	.db	0
      000522 00 00 00 BB            856 	.dw	0,187
      000526 07                     857 	.uleb128	7
      000527 02                     858 	.db	2
      000528 91                     859 	.db	145
      000529 04                     860 	.sleb128	4
      00052A 50 6F 72 74 50 69 6E   861 	.ascii "PortPins"
             73
      000532 00                     862 	.db	0
      000533 00 00 01 51            863 	.dw	0,337
      000537 00                     864 	.uleb128	0
      000538 0B                     865 	.uleb128	11
      000539 47 50 49 4F 5F 52 65   866 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00054A 00                     867 	.db	0
      00054B 00 00 82 C0            868 	.dw	0,(_GPIO_ReadInputPin)
      00054F 00 00 82 C7            869 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      000553 01                     870 	.db	1
      000554 00 00 03 B8            871 	.dw	0,(Ldebug_loc_start)
      000558 00 00 01 51            872 	.dw	0,337
      00055C 07                     873 	.uleb128	7
      00055D 02                     874 	.db	2
      00055E 91                     875 	.db	145
      00055F 02                     876 	.sleb128	2
      000560 47 50 49 4F 78         877 	.ascii "GPIOx"
      000565 00                     878 	.db	0
      000566 00 00 00 BB            879 	.dw	0,187
      00056A 07                     880 	.uleb128	7
      00056B 02                     881 	.db	2
      00056C 91                     882 	.db	145
      00056D 04                     883 	.sleb128	4
      00056E 47 50 49 4F 5F 50 69   884 	.ascii "GPIO_Pin"
             6E
      000576 00                     885 	.db	0
      000577 00 00 01 51            886 	.dw	0,337
      00057B 00                     887 	.uleb128	0
      00057C 00                     888 	.uleb128	0
      00057D 00                     889 	.uleb128	0
      00057E 00                     890 	.uleb128	0
      00057F                        891 Ldebug_info_end:
                                    892 
                                    893 	.area .debug_pubnames (NOLOAD)
      000109 00 00 00 57            894 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00010D                        895 Ldebug_pubnames_start:
      00010D 00 02                  896 	.dw	2
      00010F 00 00 03 55            897 	.dw	0,(Ldebug_info_start-4)
      000113 00 00 02 2A            898 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000117 00 00 00 4B            899 	.dw	0,75
      00011B 47 50 49 4F 5F 49 6E   900 	.ascii "GPIO_Init"
             69 74
      000124 00                     901 	.db	0
      000125 00 00 01 62            902 	.dw	0,354
      000129 47 50 49 4F 5F 57 72   903 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000137 00                     904 	.db	0
      000138 00 00 01 A3            905 	.dw	0,419
      00013C 47 50 49 4F 5F 57 72   906 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000149 00                     907 	.db	0
      00014A 00 00 01 E3            908 	.dw	0,483
      00014E 47 50 49 4F 5F 52 65   909 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      00015F 00                     910 	.db	0
      000160 00 00 00 00            911 	.dw	0,0
      000164                        912 Ldebug_pubnames_end:
                                    913 
                                    914 	.area .debug_frame (NOLOAD)
      0002BE 00 00                  915 	.dw	0
      0002C0 00 0E                  916 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0002C2                        917 Ldebug_CIE0_start:
      0002C2 FF FF                  918 	.dw	0xffff
      0002C4 FF FF                  919 	.dw	0xffff
      0002C6 01                     920 	.db	1
      0002C7 00                     921 	.db	0
      0002C8 01                     922 	.uleb128	1
      0002C9 7F                     923 	.sleb128	-1
      0002CA 09                     924 	.db	9
      0002CB 0C                     925 	.db	12
      0002CC 08                     926 	.uleb128	8
      0002CD 02                     927 	.uleb128	2
      0002CE 89                     928 	.db	137
      0002CF 01                     929 	.uleb128	1
      0002D0                        930 Ldebug_CIE0_end:
      0002D0 00 00 00 13            931 	.dw	0,19
      0002D4 00 00 02 BE            932 	.dw	0,(Ldebug_CIE0_start-4)
      0002D8 00 00 82 C0            933 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)	;initial loc
      0002DC 00 00 00 07            934 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$67-Sstm8s_gpio$GPIO_ReadInputPin$63
      0002E0 01                     935 	.db	1
      0002E1 00 00 82 C0            936 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
      0002E5 0E                     937 	.db	14
      0002E6 02                     938 	.uleb128	2
                                    939 
                                    940 	.area .debug_frame (NOLOAD)
      0002E7 00 00                  941 	.dw	0
      0002E9 00 0E                  942 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0002EB                        943 Ldebug_CIE1_start:
      0002EB FF FF                  944 	.dw	0xffff
      0002ED FF FF                  945 	.dw	0xffff
      0002EF 01                     946 	.db	1
      0002F0 00                     947 	.db	0
      0002F1 01                     948 	.uleb128	1
      0002F2 7F                     949 	.sleb128	-1
      0002F3 09                     950 	.db	9
      0002F4 0C                     951 	.db	12
      0002F5 08                     952 	.uleb128	8
      0002F6 02                     953 	.uleb128	2
      0002F7 89                     954 	.db	137
      0002F8 01                     955 	.uleb128	1
      0002F9                        956 Ldebug_CIE1_end:
      0002F9 00 00 00 21            957 	.dw	0,33
      0002FD 00 00 02 E7            958 	.dw	0,(Ldebug_CIE1_start-4)
      000301 00 00 82 B2            959 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)	;initial loc
      000305 00 00 00 0E            960 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$61-Sstm8s_gpio$GPIO_WriteLow$55
      000309 01                     961 	.db	1
      00030A 00 00 82 B2            962 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      00030E 0E                     963 	.db	14
      00030F 02                     964 	.uleb128	2
      000310 01                     965 	.db	1
      000311 00 00 82 B3            966 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      000315 0E                     967 	.db	14
      000316 03                     968 	.uleb128	3
      000317 01                     969 	.db	1
      000318 00 00 82 BF            970 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      00031C 0E                     971 	.db	14
      00031D 02                     972 	.uleb128	2
                                    973 
                                    974 	.area .debug_frame (NOLOAD)
      00031E 00 00                  975 	.dw	0
      000320 00 0E                  976 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000322                        977 Ldebug_CIE2_start:
      000322 FF FF                  978 	.dw	0xffff
      000324 FF FF                  979 	.dw	0xffff
      000326 01                     980 	.db	1
      000327 00                     981 	.db	0
      000328 01                     982 	.uleb128	1
      000329 7F                     983 	.sleb128	-1
      00032A 09                     984 	.db	9
      00032B 0C                     985 	.db	12
      00032C 08                     986 	.uleb128	8
      00032D 02                     987 	.uleb128	2
      00032E 89                     988 	.db	137
      00032F 01                     989 	.uleb128	1
      000330                        990 Ldebug_CIE2_end:
      000330 00 00 00 13            991 	.dw	0,19
      000334 00 00 03 1E            992 	.dw	0,(Ldebug_CIE2_start-4)
      000338 00 00 82 AB            993 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)	;initial loc
      00033C 00 00 00 07            994 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$53-Sstm8s_gpio$GPIO_WriteHigh$49
      000340 01                     995 	.db	1
      000341 00 00 82 AB            996 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      000345 0E                     997 	.db	14
      000346 02                     998 	.uleb128	2
                                    999 
                                   1000 	.area .debug_frame (NOLOAD)
      000347 00 00                 1001 	.dw	0
      000349 00 0E                 1002 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00034B                       1003 Ldebug_CIE3_start:
      00034B FF FF                 1004 	.dw	0xffff
      00034D FF FF                 1005 	.dw	0xffff
      00034F 01                    1006 	.db	1
      000350 00                    1007 	.db	0
      000351 01                    1008 	.uleb128	1
      000352 7F                    1009 	.sleb128	-1
      000353 09                    1010 	.db	9
      000354 0C                    1011 	.db	12
      000355 08                    1012 	.uleb128	8
      000356 02                    1013 	.uleb128	2
      000357 89                    1014 	.db	137
      000358 01                    1015 	.uleb128	1
      000359                       1016 Ldebug_CIE3_end:
      000359 00 00 00 59           1017 	.dw	0,89
      00035D 00 00 03 47           1018 	.dw	0,(Ldebug_CIE3_start-4)
      000361 00 00 82 36           1019 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)	;initial loc
      000365 00 00 00 75           1020 	.dw	0,Sstm8s_gpio$GPIO_Init$47-Sstm8s_gpio$GPIO_Init$1
      000369 01                    1021 	.db	1
      00036A 00 00 82 36           1022 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      00036E 0E                    1023 	.db	14
      00036F 02                    1024 	.uleb128	2
      000370 01                    1025 	.db	1
      000371 00 00 82 38           1026 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      000375 0E                    1027 	.db	14
      000376 07                    1028 	.uleb128	7
      000377 01                    1029 	.db	1
      000378 00 00 82 42           1030 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      00037C 0E                    1031 	.db	14
      00037D 08                    1032 	.uleb128	8
      00037E 01                    1033 	.db	1
      00037F 00 00 82 48           1034 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      000383 0E                    1035 	.db	14
      000384 07                    1036 	.uleb128	7
      000385 01                    1037 	.db	1
      000386 00 00 82 59           1038 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      00038A 0E                    1039 	.db	14
      00038B 08                    1040 	.uleb128	8
      00038C 01                    1041 	.db	1
      00038D 00 00 82 5E           1042 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      000391 0E                    1043 	.db	14
      000392 07                    1044 	.uleb128	7
      000393 01                    1045 	.db	1
      000394 00 00 82 82           1046 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000398 0E                    1047 	.db	14
      000399 08                    1048 	.uleb128	8
      00039A 01                    1049 	.db	1
      00039B 00 00 82 87           1050 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      00039F 0E                    1051 	.db	14
      0003A0 07                    1052 	.uleb128	7
      0003A1 01                    1053 	.db	1
      0003A2 00 00 82 95           1054 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0003A6 0E                    1055 	.db	14
      0003A7 08                    1056 	.uleb128	8
      0003A8 01                    1057 	.db	1
      0003A9 00 00 82 9A           1058 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      0003AD 0E                    1059 	.db	14
      0003AE 07                    1060 	.uleb128	7
      0003AF 01                    1061 	.db	1
      0003B0 00 00 82 AA           1062 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0003B4 0E                    1063 	.db	14
      0003B5 02                    1064 	.uleb128	2
