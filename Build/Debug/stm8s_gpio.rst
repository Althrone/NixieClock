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
      00821E                         57 _GPIO_Init:
                           000000    58 	Sstm8s_gpio$GPIO_Init$1 ==.
      00821E 52 05            [ 2]   59 	sub	sp, #5
                           000002    60 	Sstm8s_gpio$GPIO_Init$2 ==.
                           000002    61 	Sstm8s_gpio$GPIO_Init$3 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008220 16 08            [ 2]   63 	ldw	y, (0x08, sp)
      008222 93               [ 1]   64 	ldw	x, y
      008223 1C 00 04         [ 2]   65 	addw	x, #0x0004
      008226 1F 01            [ 2]   66 	ldw	(0x01, sp), x
      008228 F6               [ 1]   67 	ld	a, (x)
      008229 88               [ 1]   68 	push	a
                           00000C    69 	Sstm8s_gpio$GPIO_Init$4 ==.
      00822A 7B 0B            [ 1]   70 	ld	a, (0x0b, sp)
      00822C 43               [ 1]   71 	cpl	a
      00822D 6B 04            [ 1]   72 	ld	(0x04, sp), a
      00822F 84               [ 1]   73 	pop	a
                           000012    74 	Sstm8s_gpio$GPIO_Init$5 ==.
      008230 14 03            [ 1]   75 	and	a, (0x03, sp)
      008232 1E 01            [ 2]   76 	ldw	x, (0x01, sp)
      008234 F7               [ 1]   77 	ld	(x), a
                           000017    78 	Sstm8s_gpio$GPIO_Init$6 ==.
                                     79 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008235 93               [ 1]   80 	ldw	x, y
      008236 5C               [ 1]   81 	incw	x
      008237 5C               [ 1]   82 	incw	x
      008238 1F 04            [ 2]   83 	ldw	(0x04, sp), x
                           00001C    84 	Sstm8s_gpio$GPIO_Init$7 ==.
                                     85 ;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      00823A 0D 0B            [ 1]   86 	tnz	(0x0b, sp)
      00823C 2A 1E            [ 1]   87 	jrpl	00105$
                           000020    88 	Sstm8s_gpio$GPIO_Init$8 ==.
                                     89 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      00823E 90 F6            [ 1]   90 	ld	a, (y)
                           000022    91 	Sstm8s_gpio$GPIO_Init$9 ==.
                           000022    92 	Sstm8s_gpio$GPIO_Init$10 ==.
                                     93 ;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008240 88               [ 1]   94 	push	a
                           000023    95 	Sstm8s_gpio$GPIO_Init$11 ==.
      008241 7B 0C            [ 1]   96 	ld	a, (0x0c, sp)
      008243 A5 10            [ 1]   97 	bcp	a, #0x10
      008245 84               [ 1]   98 	pop	a
                           000028    99 	Sstm8s_gpio$GPIO_Init$12 ==.
      008246 27 06            [ 1]  100 	jreq	00102$
                           00002A   101 	Sstm8s_gpio$GPIO_Init$13 ==.
                           00002A   102 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008248 1A 0A            [ 1]  104 	or	a, (0x0a, sp)
      00824A 90 F7            [ 1]  105 	ld	(y), a
                           00002E   106 	Sstm8s_gpio$GPIO_Init$15 ==.
      00824C 20 04            [ 2]  107 	jra	00103$
      00824E                        108 00102$:
                           000030   109 	Sstm8s_gpio$GPIO_Init$16 ==.
                           000030   110 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      00824E 14 03            [ 1]  112 	and	a, (0x03, sp)
      008250 90 F7            [ 1]  113 	ld	(y), a
                           000034   114 	Sstm8s_gpio$GPIO_Init$18 ==.
      008252                        115 00103$:
                           000034   116 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    117 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008252 1E 04            [ 2]  118 	ldw	x, (0x04, sp)
      008254 F6               [ 1]  119 	ld	a, (x)
      008255 1A 0A            [ 1]  120 	or	a, (0x0a, sp)
      008257 1E 04            [ 2]  121 	ldw	x, (0x04, sp)
      008259 F7               [ 1]  122 	ld	(x), a
                           00003C   123 	Sstm8s_gpio$GPIO_Init$20 ==.
      00825A 20 08            [ 2]  124 	jra	00106$
      00825C                        125 00105$:
                           00003E   126 	Sstm8s_gpio$GPIO_Init$21 ==.
                           00003E   127 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    128 ;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      00825C 1E 04            [ 2]  129 	ldw	x, (0x04, sp)
      00825E F6               [ 1]  130 	ld	a, (x)
      00825F 14 03            [ 1]  131 	and	a, (0x03, sp)
      008261 1E 04            [ 2]  132 	ldw	x, (0x04, sp)
      008263 F7               [ 1]  133 	ld	(x), a
                           000046   134 	Sstm8s_gpio$GPIO_Init$23 ==.
      008264                        135 00106$:
                           000046   136 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    137 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008264 93               [ 1]  138 	ldw	x, y
      008265 1C 00 03         [ 2]  139 	addw	x, #0x0003
      008268 F6               [ 1]  140 	ld	a, (x)
                           00004B   141 	Sstm8s_gpio$GPIO_Init$25 ==.
                                    142 ;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008269 88               [ 1]  143 	push	a
                           00004C   144 	Sstm8s_gpio$GPIO_Init$26 ==.
      00826A 7B 0C            [ 1]  145 	ld	a, (0x0c, sp)
      00826C A5 40            [ 1]  146 	bcp	a, #0x40
      00826E 84               [ 1]  147 	pop	a
                           000051   148 	Sstm8s_gpio$GPIO_Init$27 ==.
      00826F 27 05            [ 1]  149 	jreq	00108$
                           000053   150 	Sstm8s_gpio$GPIO_Init$28 ==.
                           000053   151 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    152 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008271 1A 0A            [ 1]  153 	or	a, (0x0a, sp)
      008273 F7               [ 1]  154 	ld	(x), a
                           000056   155 	Sstm8s_gpio$GPIO_Init$30 ==.
      008274 20 03            [ 2]  156 	jra	00109$
      008276                        157 00108$:
                           000058   158 	Sstm8s_gpio$GPIO_Init$31 ==.
                           000058   159 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    160 ;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008276 14 03            [ 1]  161 	and	a, (0x03, sp)
      008278 F7               [ 1]  162 	ld	(x), a
                           00005B   163 	Sstm8s_gpio$GPIO_Init$33 ==.
      008279                        164 00109$:
                           00005B   165 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    166 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008279 1E 01            [ 2]  167 	ldw	x, (0x01, sp)
      00827B F6               [ 1]  168 	ld	a, (x)
                           00005E   169 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    170 ;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      00827C 88               [ 1]  171 	push	a
                           00005F   172 	Sstm8s_gpio$GPIO_Init$36 ==.
      00827D 7B 0C            [ 1]  173 	ld	a, (0x0c, sp)
      00827F A5 20            [ 1]  174 	bcp	a, #0x20
      008281 84               [ 1]  175 	pop	a
                           000064   176 	Sstm8s_gpio$GPIO_Init$37 ==.
      008282 27 07            [ 1]  177 	jreq	00111$
                           000066   178 	Sstm8s_gpio$GPIO_Init$38 ==.
                           000066   179 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    180 ;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008284 1A 0A            [ 1]  181 	or	a, (0x0a, sp)
      008286 1E 01            [ 2]  182 	ldw	x, (0x01, sp)
      008288 F7               [ 1]  183 	ld	(x), a
                           00006B   184 	Sstm8s_gpio$GPIO_Init$40 ==.
      008289 20 05            [ 2]  185 	jra	00113$
      00828B                        186 00111$:
                           00006D   187 	Sstm8s_gpio$GPIO_Init$41 ==.
                           00006D   188 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00828B 14 03            [ 1]  190 	and	a, (0x03, sp)
      00828D 1E 01            [ 2]  191 	ldw	x, (0x01, sp)
      00828F F7               [ 1]  192 	ld	(x), a
                           000072   193 	Sstm8s_gpio$GPIO_Init$43 ==.
      008290                        194 00113$:
                           000072   195 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    196 ;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
      008290 5B 05            [ 2]  197 	addw	sp, #5
                           000074   198 	Sstm8s_gpio$GPIO_Init$45 ==.
                           000074   199 	Sstm8s_gpio$GPIO_Init$46 ==.
                           000074   200 	XG$GPIO_Init$0$0 ==.
      008292 81               [ 4]  201 	ret
                           000075   202 	Sstm8s_gpio$GPIO_Init$47 ==.
                           000075   203 	Sstm8s_gpio$GPIO_WriteHigh$48 ==.
                                    204 ;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    205 ;	-----------------------------------------
                                    206 ;	 function GPIO_WriteHigh
                                    207 ;	-----------------------------------------
      008293                        208 _GPIO_WriteHigh:
                           000075   209 	Sstm8s_gpio$GPIO_WriteHigh$49 ==.
                           000075   210 	Sstm8s_gpio$GPIO_WriteHigh$50 ==.
                                    211 ;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008293 1E 03            [ 2]  212 	ldw	x, (0x03, sp)
      008295 F6               [ 1]  213 	ld	a, (x)
      008296 1A 05            [ 1]  214 	or	a, (0x05, sp)
      008298 F7               [ 1]  215 	ld	(x), a
                           00007B   216 	Sstm8s_gpio$GPIO_WriteHigh$51 ==.
                                    217 ;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
                           00007B   218 	Sstm8s_gpio$GPIO_WriteHigh$52 ==.
                           00007B   219 	XG$GPIO_WriteHigh$0$0 ==.
      008299 81               [ 4]  220 	ret
                           00007C   221 	Sstm8s_gpio$GPIO_WriteHigh$53 ==.
                           00007C   222 	Sstm8s_gpio$GPIO_WriteLow$54 ==.
                                    223 ;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    224 ;	-----------------------------------------
                                    225 ;	 function GPIO_WriteLow
                                    226 ;	-----------------------------------------
      00829A                        227 _GPIO_WriteLow:
                           00007C   228 	Sstm8s_gpio$GPIO_WriteLow$55 ==.
      00829A 88               [ 1]  229 	push	a
                           00007D   230 	Sstm8s_gpio$GPIO_WriteLow$56 ==.
                           00007D   231 	Sstm8s_gpio$GPIO_WriteLow$57 ==.
                                    232 ;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00829B 1E 04            [ 2]  233 	ldw	x, (0x04, sp)
      00829D F6               [ 1]  234 	ld	a, (x)
      00829E 6B 01            [ 1]  235 	ld	(0x01, sp), a
      0082A0 7B 06            [ 1]  236 	ld	a, (0x06, sp)
      0082A2 43               [ 1]  237 	cpl	a
      0082A3 14 01            [ 1]  238 	and	a, (0x01, sp)
      0082A5 F7               [ 1]  239 	ld	(x), a
                           000088   240 	Sstm8s_gpio$GPIO_WriteLow$58 ==.
                                    241 ;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
      0082A6 84               [ 1]  242 	pop	a
                           000089   243 	Sstm8s_gpio$GPIO_WriteLow$59 ==.
                           000089   244 	Sstm8s_gpio$GPIO_WriteLow$60 ==.
                           000089   245 	XG$GPIO_WriteLow$0$0 ==.
      0082A7 81               [ 4]  246 	ret
                           00008A   247 	Sstm8s_gpio$GPIO_WriteLow$61 ==.
                           00008A   248 	Sstm8s_gpio$GPIO_ReadInputPin$62 ==.
                                    249 ;	Source/Std_Lib/Src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    250 ;	-----------------------------------------
                                    251 ;	 function GPIO_ReadInputPin
                                    252 ;	-----------------------------------------
      0082A8                        253 _GPIO_ReadInputPin:
                           00008A   254 	Sstm8s_gpio$GPIO_ReadInputPin$63 ==.
                           00008A   255 	Sstm8s_gpio$GPIO_ReadInputPin$64 ==.
                                    256 ;	Source/Std_Lib/Src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      0082A8 1E 03            [ 2]  257 	ldw	x, (0x03, sp)
      0082AA E6 01            [ 1]  258 	ld	a, (0x1, x)
      0082AC 14 05            [ 1]  259 	and	a, (0x05, sp)
                           000090   260 	Sstm8s_gpio$GPIO_ReadInputPin$65 ==.
                                    261 ;	Source/Std_Lib/Src/stm8s_gpio.c: 216: }
                           000090   262 	Sstm8s_gpio$GPIO_ReadInputPin$66 ==.
                           000090   263 	XG$GPIO_ReadInputPin$0$0 ==.
      0082AE 81               [ 4]  264 	ret
                           000091   265 	Sstm8s_gpio$GPIO_ReadInputPin$67 ==.
                                    266 	.area CODE
                                    267 	.area CONST
                                    268 	.area INITIALIZER
                                    269 	.area CABS (ABS)
                                    270 
                                    271 	.area .debug_line (NOLOAD)
      0001F1 00 00 01 5A            272 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0001F5                        273 Ldebug_line_start:
      0001F5 00 02                  274 	.dw	2
      0001F7 00 00 00 80            275 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0001FB 01                     276 	.db	1
      0001FC 01                     277 	.db	1
      0001FD FB                     278 	.db	-5
      0001FE 0F                     279 	.db	15
      0001FF 0A                     280 	.db	10
      000200 00                     281 	.db	0
      000201 01                     282 	.db	1
      000202 01                     283 	.db	1
      000203 01                     284 	.db	1
      000204 01                     285 	.db	1
      000205 00                     286 	.db	0
      000206 00                     287 	.db	0
      000207 00                     288 	.db	0
      000208 01                     289 	.db	1
      000209 43 3A 5C 50 72 6F 67   290 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000231 00                     291 	.db	0
      000232 43 3A 5C 50 72 6F 67   292 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000255 00                     293 	.db	0
      000256 00                     294 	.db	0
      000257 53 6F 75 72 63 65 2F   295 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      000276 00                     296 	.db	0
      000277 00                     297 	.uleb128	0
      000278 00                     298 	.uleb128	0
      000279 00                     299 	.uleb128	0
      00027A 00                     300 	.db	0
      00027B                        301 Ldebug_line_stmt:
      00027B 00                     302 	.db	0
      00027C 05                     303 	.uleb128	5
      00027D 02                     304 	.db	2
      00027E 00 00 82 1E            305 	.dw	0,(Sstm8s_gpio$GPIO_Init$0)
      000282 03                     306 	.db	3
      000283 C6 00                  307 	.sleb128	70
      000285 01                     308 	.db	1
      000286 09                     309 	.db	9
      000287 00 02                  310 	.dw	Sstm8s_gpio$GPIO_Init$3-Sstm8s_gpio$GPIO_Init$0
      000289 03                     311 	.db	3
      00028A 0A                     312 	.sleb128	10
      00028B 01                     313 	.db	1
      00028C 09                     314 	.db	9
      00028D 00 15                  315 	.dw	Sstm8s_gpio$GPIO_Init$6-Sstm8s_gpio$GPIO_Init$3
      00028F 03                     316 	.db	3
      000290 11                     317 	.sleb128	17
      000291 01                     318 	.db	1
      000292 09                     319 	.db	9
      000293 00 05                  320 	.dw	Sstm8s_gpio$GPIO_Init$7-Sstm8s_gpio$GPIO_Init$6
      000295 03                     321 	.db	3
      000296 75                     322 	.sleb128	-11
      000297 01                     323 	.db	1
      000298 09                     324 	.db	9
      000299 00 04                  325 	.dw	Sstm8s_gpio$GPIO_Init$8-Sstm8s_gpio$GPIO_Init$7
      00029B 03                     326 	.db	3
      00029C 04                     327 	.sleb128	4
      00029D 01                     328 	.db	1
      00029E 09                     329 	.db	9
      00029F 00 02                  330 	.dw	Sstm8s_gpio$GPIO_Init$10-Sstm8s_gpio$GPIO_Init$8
      0002A1 03                     331 	.db	3
      0002A2 7E                     332 	.sleb128	-2
      0002A3 01                     333 	.db	1
      0002A4 09                     334 	.db	9
      0002A5 00 08                  335 	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$10
      0002A7 03                     336 	.db	3
      0002A8 02                     337 	.sleb128	2
      0002A9 01                     338 	.db	1
      0002AA 09                     339 	.db	9
      0002AB 00 06                  340 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$14
      0002AD 03                     341 	.db	3
      0002AE 04                     342 	.sleb128	4
      0002AF 01                     343 	.db	1
      0002B0 09                     344 	.db	9
      0002B1 00 04                  345 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      0002B3 03                     346 	.db	3
      0002B4 03                     347 	.sleb128	3
      0002B5 01                     348 	.db	1
      0002B6 09                     349 	.db	9
      0002B7 00 0A                  350 	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$19
      0002B9 03                     351 	.db	3
      0002BA 05                     352 	.sleb128	5
      0002BB 01                     353 	.db	1
      0002BC 09                     354 	.db	9
      0002BD 00 08                  355 	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$22
      0002BF 03                     356 	.db	3
      0002C0 09                     357 	.sleb128	9
      0002C1 01                     358 	.db	1
      0002C2 09                     359 	.db	9
      0002C3 00 05                  360 	.dw	Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
      0002C5 03                     361 	.db	3
      0002C6 7E                     362 	.sleb128	-2
      0002C7 01                     363 	.db	1
      0002C8 09                     364 	.db	9
      0002C9 00 08                  365 	.dw	Sstm8s_gpio$GPIO_Init$29-Sstm8s_gpio$GPIO_Init$25
      0002CB 03                     366 	.db	3
      0002CC 02                     367 	.sleb128	2
      0002CD 01                     368 	.db	1
      0002CE 09                     369 	.db	9
      0002CF 00 05                  370 	.dw	Sstm8s_gpio$GPIO_Init$32-Sstm8s_gpio$GPIO_Init$29
      0002D1 03                     371 	.db	3
      0002D2 04                     372 	.sleb128	4
      0002D3 01                     373 	.db	1
      0002D4 09                     374 	.db	9
      0002D5 00 03                  375 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$32
      0002D7 03                     376 	.db	3
      0002D8 5D                     377 	.sleb128	-35
      0002D9 01                     378 	.db	1
      0002DA 09                     379 	.db	9
      0002DB 00 03                  380 	.dw	Sstm8s_gpio$GPIO_Init$35-Sstm8s_gpio$GPIO_Init$34
      0002DD 03                     381 	.db	3
      0002DE 2A                     382 	.sleb128	42
      0002DF 01                     383 	.db	1
      0002E0 09                     384 	.db	9
      0002E1 00 08                  385 	.dw	Sstm8s_gpio$GPIO_Init$39-Sstm8s_gpio$GPIO_Init$35
      0002E3 03                     386 	.db	3
      0002E4 02                     387 	.sleb128	2
      0002E5 01                     388 	.db	1
      0002E6 09                     389 	.db	9
      0002E7 00 07                  390 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$39
      0002E9 03                     391 	.db	3
      0002EA 04                     392 	.sleb128	4
      0002EB 01                     393 	.db	1
      0002EC 09                     394 	.db	9
      0002ED 00 05                  395 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      0002EF 03                     396 	.db	3
      0002F0 02                     397 	.sleb128	2
      0002F1 01                     398 	.db	1
      0002F2 09                     399 	.db	9
      0002F3 00 03                  400 	.dw	1+Sstm8s_gpio$GPIO_Init$46-Sstm8s_gpio$GPIO_Init$44
      0002F5 00                     401 	.db	0
      0002F6 01                     402 	.uleb128	1
      0002F7 01                     403 	.db	1
      0002F8 00                     404 	.db	0
      0002F9 05                     405 	.uleb128	5
      0002FA 02                     406 	.db	2
      0002FB 00 00 82 93            407 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$48)
      0002FF 03                     408 	.db	3
      000300 99 01                  409 	.sleb128	153
      000302 01                     410 	.db	1
      000303 09                     411 	.db	9
      000304 00 00                  412 	.dw	Sstm8s_gpio$GPIO_WriteHigh$50-Sstm8s_gpio$GPIO_WriteHigh$48
      000306 03                     413 	.db	3
      000307 02                     414 	.sleb128	2
      000308 01                     415 	.db	1
      000309 09                     416 	.db	9
      00030A 00 06                  417 	.dw	Sstm8s_gpio$GPIO_WriteHigh$51-Sstm8s_gpio$GPIO_WriteHigh$50
      00030C 03                     418 	.db	3
      00030D 01                     419 	.sleb128	1
      00030E 01                     420 	.db	1
      00030F 09                     421 	.db	9
      000310 00 01                  422 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$52-Sstm8s_gpio$GPIO_WriteHigh$51
      000312 00                     423 	.db	0
      000313 01                     424 	.uleb128	1
      000314 01                     425 	.db	1
      000315 00                     426 	.db	0
      000316 05                     427 	.uleb128	5
      000317 02                     428 	.db	2
      000318 00 00 82 9A            429 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$54)
      00031C 03                     430 	.db	3
      00031D A6 01                  431 	.sleb128	166
      00031F 01                     432 	.db	1
      000320 09                     433 	.db	9
      000321 00 01                  434 	.dw	Sstm8s_gpio$GPIO_WriteLow$57-Sstm8s_gpio$GPIO_WriteLow$54
      000323 03                     435 	.db	3
      000324 02                     436 	.sleb128	2
      000325 01                     437 	.db	1
      000326 09                     438 	.db	9
      000327 00 0B                  439 	.dw	Sstm8s_gpio$GPIO_WriteLow$58-Sstm8s_gpio$GPIO_WriteLow$57
      000329 03                     440 	.db	3
      00032A 01                     441 	.sleb128	1
      00032B 01                     442 	.db	1
      00032C 09                     443 	.db	9
      00032D 00 02                  444 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$60-Sstm8s_gpio$GPIO_WriteLow$58
      00032F 00                     445 	.db	0
      000330 01                     446 	.uleb128	1
      000331 01                     447 	.db	1
      000332 00                     448 	.db	0
      000333 05                     449 	.uleb128	5
      000334 02                     450 	.db	2
      000335 00 00 82 A8            451 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$62)
      000339 03                     452 	.db	3
      00033A D4 01                  453 	.sleb128	212
      00033C 01                     454 	.db	1
      00033D 09                     455 	.db	9
      00033E 00 00                  456 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$64-Sstm8s_gpio$GPIO_ReadInputPin$62
      000340 03                     457 	.db	3
      000341 02                     458 	.sleb128	2
      000342 01                     459 	.db	1
      000343 09                     460 	.db	9
      000344 00 06                  461 	.dw	Sstm8s_gpio$GPIO_ReadInputPin$65-Sstm8s_gpio$GPIO_ReadInputPin$64
      000346 03                     462 	.db	3
      000347 01                     463 	.sleb128	1
      000348 01                     464 	.db	1
      000349 09                     465 	.db	9
      00034A 00 01                  466 	.dw	1+Sstm8s_gpio$GPIO_ReadInputPin$66-Sstm8s_gpio$GPIO_ReadInputPin$65
      00034C 00                     467 	.db	0
      00034D 01                     468 	.uleb128	1
      00034E 01                     469 	.db	1
      00034F                        470 Ldebug_line_end:
                                    471 
                                    472 	.area .debug_loc (NOLOAD)
      0003AC                        473 Ldebug_loc_start:
      0003AC 00 00 82 A8            474 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
      0003B0 00 00 82 AF            475 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$67)
      0003B4 00 02                  476 	.dw	2
      0003B6 78                     477 	.db	120
      0003B7 01                     478 	.sleb128	1
      0003B8 00 00 00 00            479 	.dw	0,0
      0003BC 00 00 00 00            480 	.dw	0,0
      0003C0 00 00 82 A7            481 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      0003C4 00 00 82 A8            482 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$61)
      0003C8 00 02                  483 	.dw	2
      0003CA 78                     484 	.db	120
      0003CB 01                     485 	.sleb128	1
      0003CC 00 00 82 9B            486 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      0003D0 00 00 82 A7            487 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      0003D4 00 02                  488 	.dw	2
      0003D6 78                     489 	.db	120
      0003D7 02                     490 	.sleb128	2
      0003D8 00 00 82 9A            491 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      0003DC 00 00 82 9B            492 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      0003E0 00 02                  493 	.dw	2
      0003E2 78                     494 	.db	120
      0003E3 01                     495 	.sleb128	1
      0003E4 00 00 00 00            496 	.dw	0,0
      0003E8 00 00 00 00            497 	.dw	0,0
      0003EC 00 00 82 93            498 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      0003F0 00 00 82 9A            499 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$53)
      0003F4 00 02                  500 	.dw	2
      0003F6 78                     501 	.db	120
      0003F7 01                     502 	.sleb128	1
      0003F8 00 00 00 00            503 	.dw	0,0
      0003FC 00 00 00 00            504 	.dw	0,0
      000400 00 00 82 92            505 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      000404 00 00 82 93            506 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      000408 00 02                  507 	.dw	2
      00040A 78                     508 	.db	120
      00040B 01                     509 	.sleb128	1
      00040C 00 00 82 82            510 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000410 00 00 82 92            511 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      000414 00 02                  512 	.dw	2
      000416 78                     513 	.db	120
      000417 06                     514 	.sleb128	6
      000418 00 00 82 7D            515 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      00041C 00 00 82 82            516 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000420 00 02                  517 	.dw	2
      000422 78                     518 	.db	120
      000423 07                     519 	.sleb128	7
      000424 00 00 82 6F            520 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000428 00 00 82 7D            521 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      00042C 00 02                  522 	.dw	2
      00042E 78                     523 	.db	120
      00042F 06                     524 	.sleb128	6
      000430 00 00 82 6A            525 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000434 00 00 82 6F            526 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000438 00 02                  527 	.dw	2
      00043A 78                     528 	.db	120
      00043B 07                     529 	.sleb128	7
      00043C 00 00 82 46            530 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      000440 00 00 82 6A            531 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000444 00 02                  532 	.dw	2
      000446 78                     533 	.db	120
      000447 06                     534 	.sleb128	6
      000448 00 00 82 41            535 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      00044C 00 00 82 46            536 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      000450 00 02                  537 	.dw	2
      000452 78                     538 	.db	120
      000453 07                     539 	.sleb128	7
      000454 00 00 82 30            540 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      000458 00 00 82 41            541 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      00045C 00 02                  542 	.dw	2
      00045E 78                     543 	.db	120
      00045F 06                     544 	.sleb128	6
      000460 00 00 82 2A            545 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      000464 00 00 82 30            546 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      000468 00 02                  547 	.dw	2
      00046A 78                     548 	.db	120
      00046B 07                     549 	.sleb128	7
      00046C 00 00 82 20            550 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      000470 00 00 82 2A            551 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      000474 00 02                  552 	.dw	2
      000476 78                     553 	.db	120
      000477 06                     554 	.sleb128	6
      000478 00 00 82 1E            555 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      00047C 00 00 82 20            556 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      000480 00 02                  557 	.dw	2
      000482 78                     558 	.db	120
      000483 01                     559 	.sleb128	1
      000484 00 00 00 00            560 	.dw	0,0
      000488 00 00 00 00            561 	.dw	0,0
                                    562 
                                    563 	.area .debug_abbrev (NOLOAD)
      000094                        564 Ldebug_abbrev:
      000094 06                     565 	.uleb128	6
      000095 0F                     566 	.uleb128	15
      000096 00                     567 	.db	0
      000097 0B                     568 	.uleb128	11
      000098 0B                     569 	.uleb128	11
      000099 49                     570 	.uleb128	73
      00009A 13                     571 	.uleb128	19
      00009B 00                     572 	.uleb128	0
      00009C 00                     573 	.uleb128	0
      00009D 04                     574 	.uleb128	4
      00009E 35                     575 	.uleb128	53
      00009F 00                     576 	.db	0
      0000A0 49                     577 	.uleb128	73
      0000A1 13                     578 	.uleb128	19
      0000A2 00                     579 	.uleb128	0
      0000A3 00                     580 	.uleb128	0
      0000A4 0B                     581 	.uleb128	11
      0000A5 2E                     582 	.uleb128	46
      0000A6 01                     583 	.db	1
      0000A7 03                     584 	.uleb128	3
      0000A8 08                     585 	.uleb128	8
      0000A9 11                     586 	.uleb128	17
      0000AA 01                     587 	.uleb128	1
      0000AB 12                     588 	.uleb128	18
      0000AC 01                     589 	.uleb128	1
      0000AD 3F                     590 	.uleb128	63
      0000AE 0C                     591 	.uleb128	12
      0000AF 40                     592 	.uleb128	64
      0000B0 06                     593 	.uleb128	6
      0000B1 49                     594 	.uleb128	73
      0000B2 13                     595 	.uleb128	19
      0000B3 00                     596 	.uleb128	0
      0000B4 00                     597 	.uleb128	0
      0000B5 07                     598 	.uleb128	7
      0000B6 05                     599 	.uleb128	5
      0000B7 00                     600 	.db	0
      0000B8 02                     601 	.uleb128	2
      0000B9 0A                     602 	.uleb128	10
      0000BA 03                     603 	.uleb128	3
      0000BB 08                     604 	.uleb128	8
      0000BC 49                     605 	.uleb128	73
      0000BD 13                     606 	.uleb128	19
      0000BE 00                     607 	.uleb128	0
      0000BF 00                     608 	.uleb128	0
      0000C0 02                     609 	.uleb128	2
      0000C1 2E                     610 	.uleb128	46
      0000C2 01                     611 	.db	1
      0000C3 01                     612 	.uleb128	1
      0000C4 13                     613 	.uleb128	19
      0000C5 03                     614 	.uleb128	3
      0000C6 08                     615 	.uleb128	8
      0000C7 11                     616 	.uleb128	17
      0000C8 01                     617 	.uleb128	1
      0000C9 12                     618 	.uleb128	18
      0000CA 01                     619 	.uleb128	1
      0000CB 3F                     620 	.uleb128	63
      0000CC 0C                     621 	.uleb128	12
      0000CD 40                     622 	.uleb128	64
      0000CE 06                     623 	.uleb128	6
      0000CF 00                     624 	.uleb128	0
      0000D0 00                     625 	.uleb128	0
      0000D1 01                     626 	.uleb128	1
      0000D2 11                     627 	.uleb128	17
      0000D3 01                     628 	.db	1
      0000D4 03                     629 	.uleb128	3
      0000D5 08                     630 	.uleb128	8
      0000D6 10                     631 	.uleb128	16
      0000D7 06                     632 	.uleb128	6
      0000D8 13                     633 	.uleb128	19
      0000D9 0B                     634 	.uleb128	11
      0000DA 25                     635 	.uleb128	37
      0000DB 08                     636 	.uleb128	8
      0000DC 00                     637 	.uleb128	0
      0000DD 00                     638 	.uleb128	0
      0000DE 05                     639 	.uleb128	5
      0000DF 0D                     640 	.uleb128	13
      0000E0 00                     641 	.db	0
      0000E1 03                     642 	.uleb128	3
      0000E2 08                     643 	.uleb128	8
      0000E3 38                     644 	.uleb128	56
      0000E4 0A                     645 	.uleb128	10
      0000E5 49                     646 	.uleb128	73
      0000E6 13                     647 	.uleb128	19
      0000E7 00                     648 	.uleb128	0
      0000E8 00                     649 	.uleb128	0
      0000E9 09                     650 	.uleb128	9
      0000EA 0B                     651 	.uleb128	11
      0000EB 00                     652 	.db	0
      0000EC 11                     653 	.uleb128	17
      0000ED 01                     654 	.uleb128	1
      0000EE 12                     655 	.uleb128	18
      0000EF 01                     656 	.uleb128	1
      0000F0 00                     657 	.uleb128	0
      0000F1 00                     658 	.uleb128	0
      0000F2 08                     659 	.uleb128	8
      0000F3 0B                     660 	.uleb128	11
      0000F4 01                     661 	.db	1
      0000F5 01                     662 	.uleb128	1
      0000F6 13                     663 	.uleb128	19
      0000F7 11                     664 	.uleb128	17
      0000F8 01                     665 	.uleb128	1
      0000F9 12                     666 	.uleb128	18
      0000FA 01                     667 	.uleb128	1
      0000FB 00                     668 	.uleb128	0
      0000FC 00                     669 	.uleb128	0
      0000FD 03                     670 	.uleb128	3
      0000FE 13                     671 	.uleb128	19
      0000FF 01                     672 	.db	1
      000100 01                     673 	.uleb128	1
      000101 13                     674 	.uleb128	19
      000102 03                     675 	.uleb128	3
      000103 08                     676 	.uleb128	8
      000104 0B                     677 	.uleb128	11
      000105 0B                     678 	.uleb128	11
      000106 00                     679 	.uleb128	0
      000107 00                     680 	.uleb128	0
      000108 0A                     681 	.uleb128	10
      000109 24                     682 	.uleb128	36
      00010A 00                     683 	.db	0
      00010B 03                     684 	.uleb128	3
      00010C 08                     685 	.uleb128	8
      00010D 0B                     686 	.uleb128	11
      00010E 0B                     687 	.uleb128	11
      00010F 3E                     688 	.uleb128	62
      000110 0B                     689 	.uleb128	11
      000111 00                     690 	.uleb128	0
      000112 00                     691 	.uleb128	0
      000113 00                     692 	.uleb128	0
                                    693 
                                    694 	.area .debug_info (NOLOAD)
      00029F 00 00 02 26            695 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0002A3                        696 Ldebug_info_start:
      0002A3 00 02                  697 	.dw	2
      0002A5 00 00 00 94            698 	.dw	0,(Ldebug_abbrev)
      0002A9 04                     699 	.db	4
      0002AA 01                     700 	.uleb128	1
      0002AB 53 6F 75 72 63 65 2F   701 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      0002CA 00                     702 	.db	0
      0002CB 00 00 01 F1            703 	.dw	0,(Ldebug_line_start+-4)
      0002CF 01                     704 	.db	1
      0002D0 53 44 43 43 20 76 65   705 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      0002E9 00                     706 	.db	0
      0002EA 02                     707 	.uleb128	2
      0002EB 00 00 01 40            708 	.dw	0,320
      0002EF 47 50 49 4F 5F 49 6E   709 	.ascii "GPIO_Init"
             69 74
      0002F8 00                     710 	.db	0
      0002F9 00 00 82 1E            711 	.dw	0,(_GPIO_Init)
      0002FD 00 00 82 93            712 	.dw	0,(XG$GPIO_Init$0$0+1)
      000301 01                     713 	.db	1
      000302 00 00 04 00            714 	.dw	0,(Ldebug_loc_start+84)
      000306 03                     715 	.uleb128	3
      000307 00 00 00 BB            716 	.dw	0,187
      00030B 47 50 49 4F 5F 73 74   717 	.ascii "GPIO_struct"
             72 75 63 74
      000316 00                     718 	.db	0
      000317 05                     719 	.db	5
      000318 04                     720 	.uleb128	4
      000319 00 00 01 40            721 	.dw	0,320
      00031D 05                     722 	.uleb128	5
      00031E 4F 44 52               723 	.ascii "ODR"
      000321 00                     724 	.db	0
      000322 02                     725 	.db	2
      000323 23                     726 	.db	35
      000324 00                     727 	.uleb128	0
      000325 00 00 00 79            728 	.dw	0,121
      000329 05                     729 	.uleb128	5
      00032A 49 44 52               730 	.ascii "IDR"
      00032D 00                     731 	.db	0
      00032E 02                     732 	.db	2
      00032F 23                     733 	.db	35
      000330 01                     734 	.uleb128	1
      000331 00 00 00 79            735 	.dw	0,121
      000335 05                     736 	.uleb128	5
      000336 44 44 52               737 	.ascii "DDR"
      000339 00                     738 	.db	0
      00033A 02                     739 	.db	2
      00033B 23                     740 	.db	35
      00033C 02                     741 	.uleb128	2
      00033D 00 00 00 79            742 	.dw	0,121
      000341 05                     743 	.uleb128	5
      000342 43 52 31               744 	.ascii "CR1"
      000345 00                     745 	.db	0
      000346 02                     746 	.db	2
      000347 23                     747 	.db	35
      000348 03                     748 	.uleb128	3
      000349 00 00 00 79            749 	.dw	0,121
      00034D 05                     750 	.uleb128	5
      00034E 43 52 32               751 	.ascii "CR2"
      000351 00                     752 	.db	0
      000352 02                     753 	.db	2
      000353 23                     754 	.db	35
      000354 04                     755 	.uleb128	4
      000355 00 00 00 79            756 	.dw	0,121
      000359 00                     757 	.uleb128	0
      00035A 06                     758 	.uleb128	6
      00035B 02                     759 	.db	2
      00035C 00 00 00 67            760 	.dw	0,103
      000360 07                     761 	.uleb128	7
      000361 02                     762 	.db	2
      000362 91                     763 	.db	145
      000363 02                     764 	.sleb128	2
      000364 47 50 49 4F 78         765 	.ascii "GPIOx"
      000369 00                     766 	.db	0
      00036A 00 00 00 BB            767 	.dw	0,187
      00036E 07                     768 	.uleb128	7
      00036F 02                     769 	.db	2
      000370 91                     770 	.db	145
      000371 04                     771 	.sleb128	4
      000372 47 50 49 4F 5F 50 69   772 	.ascii "GPIO_Pin"
             6E
      00037A 00                     773 	.db	0
      00037B 00 00 01 51            774 	.dw	0,337
      00037F 07                     775 	.uleb128	7
      000380 02                     776 	.db	2
      000381 91                     777 	.db	145
      000382 05                     778 	.sleb128	5
      000383 47 50 49 4F 5F 4D 6F   779 	.ascii "GPIO_Mode"
             64 65
      00038C 00                     780 	.db	0
      00038D 00 00 01 51            781 	.dw	0,337
      000391 08                     782 	.uleb128	8
      000392 00 00 01 12            783 	.dw	0,274
      000396 00 00 82 40            784 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      00039A 00 00 82 5A            785 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      00039E 09                     786 	.uleb128	9
      00039F 00 00 82 48            787 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      0003A3 00 00 82 4C            788 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      0003A7 09                     789 	.uleb128	9
      0003A8 00 00 82 4E            790 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      0003AC 00 00 82 52            791 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      0003B0 00                     792 	.uleb128	0
      0003B1 09                     793 	.uleb128	9
      0003B2 00 00 82 5C            794 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      0003B6 00 00 82 64            795 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      0003BA 09                     796 	.uleb128	9
      0003BB 00 00 82 71            797 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      0003BF 00 00 82 74            798 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      0003C3 09                     799 	.uleb128	9
      0003C4 00 00 82 76            800 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      0003C8 00 00 82 79            801 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      0003CC 09                     802 	.uleb128	9
      0003CD 00 00 82 84            803 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      0003D1 00 00 82 89            804 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      0003D5 09                     805 	.uleb128	9
      0003D6 00 00 82 8B            806 	.dw	0,(Sstm8s_gpio$GPIO_Init$41)
      0003DA 00 00 82 90            807 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      0003DE 00                     808 	.uleb128	0
      0003DF 0A                     809 	.uleb128	10
      0003E0 75 6E 73 69 67 6E 65   810 	.ascii "unsigned char"
             64 20 63 68 61 72
      0003ED 00                     811 	.db	0
      0003EE 01                     812 	.db	1
      0003EF 08                     813 	.db	8
      0003F0 0A                     814 	.uleb128	10
      0003F1 75 6E 73 69 67 6E 65   815 	.ascii "unsigned char"
             64 20 63 68 61 72
      0003FE 00                     816 	.db	0
      0003FF 01                     817 	.db	1
      000400 08                     818 	.db	8
      000401 02                     819 	.uleb128	2
      000402 00 00 01 A3            820 	.dw	0,419
      000406 47 50 49 4F 5F 57 72   821 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000414 00                     822 	.db	0
      000415 00 00 82 93            823 	.dw	0,(_GPIO_WriteHigh)
      000419 00 00 82 9A            824 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      00041D 01                     825 	.db	1
      00041E 00 00 03 EC            826 	.dw	0,(Ldebug_loc_start+64)
      000422 07                     827 	.uleb128	7
      000423 02                     828 	.db	2
      000424 91                     829 	.db	145
      000425 02                     830 	.sleb128	2
      000426 47 50 49 4F 78         831 	.ascii "GPIOx"
      00042B 00                     832 	.db	0
      00042C 00 00 00 BB            833 	.dw	0,187
      000430 07                     834 	.uleb128	7
      000431 02                     835 	.db	2
      000432 91                     836 	.db	145
      000433 04                     837 	.sleb128	4
      000434 50 6F 72 74 50 69 6E   838 	.ascii "PortPins"
             73
      00043C 00                     839 	.db	0
      00043D 00 00 01 51            840 	.dw	0,337
      000441 00                     841 	.uleb128	0
      000442 02                     842 	.uleb128	2
      000443 00 00 01 E3            843 	.dw	0,483
      000447 47 50 49 4F 5F 57 72   844 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      000454 00                     845 	.db	0
      000455 00 00 82 9A            846 	.dw	0,(_GPIO_WriteLow)
      000459 00 00 82 A8            847 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      00045D 01                     848 	.db	1
      00045E 00 00 03 C0            849 	.dw	0,(Ldebug_loc_start+20)
      000462 07                     850 	.uleb128	7
      000463 02                     851 	.db	2
      000464 91                     852 	.db	145
      000465 02                     853 	.sleb128	2
      000466 47 50 49 4F 78         854 	.ascii "GPIOx"
      00046B 00                     855 	.db	0
      00046C 00 00 00 BB            856 	.dw	0,187
      000470 07                     857 	.uleb128	7
      000471 02                     858 	.db	2
      000472 91                     859 	.db	145
      000473 04                     860 	.sleb128	4
      000474 50 6F 72 74 50 69 6E   861 	.ascii "PortPins"
             73
      00047C 00                     862 	.db	0
      00047D 00 00 01 51            863 	.dw	0,337
      000481 00                     864 	.uleb128	0
      000482 0B                     865 	.uleb128	11
      000483 47 50 49 4F 5F 52 65   866 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000494 00                     867 	.db	0
      000495 00 00 82 A8            868 	.dw	0,(_GPIO_ReadInputPin)
      000499 00 00 82 AF            869 	.dw	0,(XG$GPIO_ReadInputPin$0$0+1)
      00049D 01                     870 	.db	1
      00049E 00 00 03 AC            871 	.dw	0,(Ldebug_loc_start)
      0004A2 00 00 01 51            872 	.dw	0,337
      0004A6 07                     873 	.uleb128	7
      0004A7 02                     874 	.db	2
      0004A8 91                     875 	.db	145
      0004A9 02                     876 	.sleb128	2
      0004AA 47 50 49 4F 78         877 	.ascii "GPIOx"
      0004AF 00                     878 	.db	0
      0004B0 00 00 00 BB            879 	.dw	0,187
      0004B4 07                     880 	.uleb128	7
      0004B5 02                     881 	.db	2
      0004B6 91                     882 	.db	145
      0004B7 04                     883 	.sleb128	4
      0004B8 47 50 49 4F 5F 50 69   884 	.ascii "GPIO_Pin"
             6E
      0004C0 00                     885 	.db	0
      0004C1 00 00 01 51            886 	.dw	0,337
      0004C5 00                     887 	.uleb128	0
      0004C6 00                     888 	.uleb128	0
      0004C7 00                     889 	.uleb128	0
      0004C8 00                     890 	.uleb128	0
      0004C9                        891 Ldebug_info_end:
                                    892 
                                    893 	.area .debug_pubnames (NOLOAD)
      00010B 00 00 00 57            894 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00010F                        895 Ldebug_pubnames_start:
      00010F 00 02                  896 	.dw	2
      000111 00 00 02 9F            897 	.dw	0,(Ldebug_info_start-4)
      000115 00 00 02 2A            898 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000119 00 00 00 4B            899 	.dw	0,75
      00011D 47 50 49 4F 5F 49 6E   900 	.ascii "GPIO_Init"
             69 74
      000126 00                     901 	.db	0
      000127 00 00 01 62            902 	.dw	0,354
      00012B 47 50 49 4F 5F 57 72   903 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000139 00                     904 	.db	0
      00013A 00 00 01 A3            905 	.dw	0,419
      00013E 47 50 49 4F 5F 57 72   906 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00014B 00                     907 	.db	0
      00014C 00 00 01 E3            908 	.dw	0,483
      000150 47 50 49 4F 5F 52 65   909 	.ascii "GPIO_ReadInputPin"
             61 64 49 6E 70 75 74
             50 69 6E
      000161 00                     910 	.db	0
      000162 00 00 00 00            911 	.dw	0,0
      000166                        912 Ldebug_pubnames_end:
                                    913 
                                    914 	.area .debug_frame (NOLOAD)
      0002B7 00 00                  915 	.dw	0
      0002B9 00 0E                  916 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0002BB                        917 Ldebug_CIE0_start:
      0002BB FF FF                  918 	.dw	0xffff
      0002BD FF FF                  919 	.dw	0xffff
      0002BF 01                     920 	.db	1
      0002C0 00                     921 	.db	0
      0002C1 01                     922 	.uleb128	1
      0002C2 7F                     923 	.sleb128	-1
      0002C3 09                     924 	.db	9
      0002C4 0C                     925 	.db	12
      0002C5 08                     926 	.uleb128	8
      0002C6 02                     927 	.uleb128	2
      0002C7 89                     928 	.db	137
      0002C8 01                     929 	.uleb128	1
      0002C9                        930 Ldebug_CIE0_end:
      0002C9 00 00 00 13            931 	.dw	0,19
      0002CD 00 00 02 B7            932 	.dw	0,(Ldebug_CIE0_start-4)
      0002D1 00 00 82 A8            933 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)	;initial loc
      0002D5 00 00 00 07            934 	.dw	0,Sstm8s_gpio$GPIO_ReadInputPin$67-Sstm8s_gpio$GPIO_ReadInputPin$63
      0002D9 01                     935 	.db	1
      0002DA 00 00 82 A8            936 	.dw	0,(Sstm8s_gpio$GPIO_ReadInputPin$63)
      0002DE 0E                     937 	.db	14
      0002DF 02                     938 	.uleb128	2
                                    939 
                                    940 	.area .debug_frame (NOLOAD)
      0002E0 00 00                  941 	.dw	0
      0002E2 00 0E                  942 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0002E4                        943 Ldebug_CIE1_start:
      0002E4 FF FF                  944 	.dw	0xffff
      0002E6 FF FF                  945 	.dw	0xffff
      0002E8 01                     946 	.db	1
      0002E9 00                     947 	.db	0
      0002EA 01                     948 	.uleb128	1
      0002EB 7F                     949 	.sleb128	-1
      0002EC 09                     950 	.db	9
      0002ED 0C                     951 	.db	12
      0002EE 08                     952 	.uleb128	8
      0002EF 02                     953 	.uleb128	2
      0002F0 89                     954 	.db	137
      0002F1 01                     955 	.uleb128	1
      0002F2                        956 Ldebug_CIE1_end:
      0002F2 00 00 00 21            957 	.dw	0,33
      0002F6 00 00 02 E0            958 	.dw	0,(Ldebug_CIE1_start-4)
      0002FA 00 00 82 9A            959 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)	;initial loc
      0002FE 00 00 00 0E            960 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$61-Sstm8s_gpio$GPIO_WriteLow$55
      000302 01                     961 	.db	1
      000303 00 00 82 9A            962 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      000307 0E                     963 	.db	14
      000308 02                     964 	.uleb128	2
      000309 01                     965 	.db	1
      00030A 00 00 82 9B            966 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      00030E 0E                     967 	.db	14
      00030F 03                     968 	.uleb128	3
      000310 01                     969 	.db	1
      000311 00 00 82 A7            970 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      000315 0E                     971 	.db	14
      000316 02                     972 	.uleb128	2
                                    973 
                                    974 	.area .debug_frame (NOLOAD)
      000317 00 00                  975 	.dw	0
      000319 00 0E                  976 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00031B                        977 Ldebug_CIE2_start:
      00031B FF FF                  978 	.dw	0xffff
      00031D FF FF                  979 	.dw	0xffff
      00031F 01                     980 	.db	1
      000320 00                     981 	.db	0
      000321 01                     982 	.uleb128	1
      000322 7F                     983 	.sleb128	-1
      000323 09                     984 	.db	9
      000324 0C                     985 	.db	12
      000325 08                     986 	.uleb128	8
      000326 02                     987 	.uleb128	2
      000327 89                     988 	.db	137
      000328 01                     989 	.uleb128	1
      000329                        990 Ldebug_CIE2_end:
      000329 00 00 00 13            991 	.dw	0,19
      00032D 00 00 03 17            992 	.dw	0,(Ldebug_CIE2_start-4)
      000331 00 00 82 93            993 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)	;initial loc
      000335 00 00 00 07            994 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$53-Sstm8s_gpio$GPIO_WriteHigh$49
      000339 01                     995 	.db	1
      00033A 00 00 82 93            996 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      00033E 0E                     997 	.db	14
      00033F 02                     998 	.uleb128	2
                                    999 
                                   1000 	.area .debug_frame (NOLOAD)
      000340 00 00                 1001 	.dw	0
      000342 00 0E                 1002 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000344                       1003 Ldebug_CIE3_start:
      000344 FF FF                 1004 	.dw	0xffff
      000346 FF FF                 1005 	.dw	0xffff
      000348 01                    1006 	.db	1
      000349 00                    1007 	.db	0
      00034A 01                    1008 	.uleb128	1
      00034B 7F                    1009 	.sleb128	-1
      00034C 09                    1010 	.db	9
      00034D 0C                    1011 	.db	12
      00034E 08                    1012 	.uleb128	8
      00034F 02                    1013 	.uleb128	2
      000350 89                    1014 	.db	137
      000351 01                    1015 	.uleb128	1
      000352                       1016 Ldebug_CIE3_end:
      000352 00 00 00 59           1017 	.dw	0,89
      000356 00 00 03 40           1018 	.dw	0,(Ldebug_CIE3_start-4)
      00035A 00 00 82 1E           1019 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)	;initial loc
      00035E 00 00 00 75           1020 	.dw	0,Sstm8s_gpio$GPIO_Init$47-Sstm8s_gpio$GPIO_Init$1
      000362 01                    1021 	.db	1
      000363 00 00 82 1E           1022 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      000367 0E                    1023 	.db	14
      000368 02                    1024 	.uleb128	2
      000369 01                    1025 	.db	1
      00036A 00 00 82 20           1026 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      00036E 0E                    1027 	.db	14
      00036F 07                    1028 	.uleb128	7
      000370 01                    1029 	.db	1
      000371 00 00 82 2A           1030 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      000375 0E                    1031 	.db	14
      000376 08                    1032 	.uleb128	8
      000377 01                    1033 	.db	1
      000378 00 00 82 30           1034 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      00037C 0E                    1035 	.db	14
      00037D 07                    1036 	.uleb128	7
      00037E 01                    1037 	.db	1
      00037F 00 00 82 41           1038 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      000383 0E                    1039 	.db	14
      000384 08                    1040 	.uleb128	8
      000385 01                    1041 	.db	1
      000386 00 00 82 46           1042 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      00038A 0E                    1043 	.db	14
      00038B 07                    1044 	.uleb128	7
      00038C 01                    1045 	.db	1
      00038D 00 00 82 6A           1046 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      000391 0E                    1047 	.db	14
      000392 08                    1048 	.uleb128	8
      000393 01                    1049 	.db	1
      000394 00 00 82 6F           1050 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      000398 0E                    1051 	.db	14
      000399 07                    1052 	.uleb128	7
      00039A 01                    1053 	.db	1
      00039B 00 00 82 7D           1054 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      00039F 0E                    1055 	.db	14
      0003A0 08                    1056 	.uleb128	8
      0003A1 01                    1057 	.db	1
      0003A2 00 00 82 82           1058 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      0003A6 0E                    1059 	.db	14
      0003A7 07                    1060 	.uleb128	7
      0003A8 01                    1061 	.db	1
      0003A9 00 00 82 92           1062 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      0003AD 0E                    1063 	.db	14
      0003AE 02                    1064 	.uleb128	2
