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
                                     14 ;--------------------------------------------------------
                                     15 ; ram data
                                     16 ;--------------------------------------------------------
                                     17 	.area DATA
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area INITIALIZED
                                     22 ;--------------------------------------------------------
                                     23 ; absolute external ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DABS (ABS)
                                     26 
                                     27 ; default segment ordering for linker
                                     28 	.area HOME
                                     29 	.area GSINIT
                                     30 	.area GSFINAL
                                     31 	.area CONST
                                     32 	.area INITIALIZER
                                     33 	.area CODE
                                     34 
                                     35 ;--------------------------------------------------------
                                     36 ; global & static initialisations
                                     37 ;--------------------------------------------------------
                                     38 	.area HOME
                                     39 	.area GSINIT
                                     40 	.area GSFINAL
                                     41 	.area GSINIT
                                     42 ;--------------------------------------------------------
                                     43 ; Home
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area HOME
                                     47 ;--------------------------------------------------------
                                     48 ; code
                                     49 ;--------------------------------------------------------
                                     50 	.area CODE
                           000000    51 	Sstm8s_gpio$GPIO_Init$0 ==.
                                     52 ;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     53 ;	-----------------------------------------
                                     54 ;	 function GPIO_Init
                                     55 ;	-----------------------------------------
      0080C8                         56 _GPIO_Init:
                           000000    57 	Sstm8s_gpio$GPIO_Init$1 ==.
      0080C8 52 05            [ 2]   58 	sub	sp, #5
                           000002    59 	Sstm8s_gpio$GPIO_Init$2 ==.
                           000002    60 	Sstm8s_gpio$GPIO_Init$3 ==.
                                     61 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0080CA 16 08            [ 2]   62 	ldw	y, (0x08, sp)
      0080CC 93               [ 1]   63 	ldw	x, y
      0080CD 1C 00 04         [ 2]   64 	addw	x, #0x0004
      0080D0 1F 01            [ 2]   65 	ldw	(0x01, sp), x
      0080D2 F6               [ 1]   66 	ld	a, (x)
      0080D3 88               [ 1]   67 	push	a
                           00000C    68 	Sstm8s_gpio$GPIO_Init$4 ==.
      0080D4 7B 0B            [ 1]   69 	ld	a, (0x0b, sp)
      0080D6 43               [ 1]   70 	cpl	a
      0080D7 6B 04            [ 1]   71 	ld	(0x04, sp), a
      0080D9 84               [ 1]   72 	pop	a
                           000012    73 	Sstm8s_gpio$GPIO_Init$5 ==.
      0080DA 14 03            [ 1]   74 	and	a, (0x03, sp)
      0080DC 1E 01            [ 2]   75 	ldw	x, (0x01, sp)
      0080DE F7               [ 1]   76 	ld	(x), a
                           000017    77 	Sstm8s_gpio$GPIO_Init$6 ==.
                                     78 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080DF 93               [ 1]   79 	ldw	x, y
      0080E0 5C               [ 1]   80 	incw	x
      0080E1 5C               [ 1]   81 	incw	x
      0080E2 1F 04            [ 2]   82 	ldw	(0x04, sp), x
                           00001C    83 	Sstm8s_gpio$GPIO_Init$7 ==.
                                     84 ;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0080E4 0D 0B            [ 1]   85 	tnz	(0x0b, sp)
      0080E6 2A 1E            [ 1]   86 	jrpl	00105$
                           000020    87 	Sstm8s_gpio$GPIO_Init$8 ==.
                                     88 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080E8 90 F6            [ 1]   89 	ld	a, (y)
                           000022    90 	Sstm8s_gpio$GPIO_Init$9 ==.
                           000022    91 	Sstm8s_gpio$GPIO_Init$10 ==.
                                     92 ;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0080EA 88               [ 1]   93 	push	a
                           000023    94 	Sstm8s_gpio$GPIO_Init$11 ==.
      0080EB 7B 0C            [ 1]   95 	ld	a, (0x0c, sp)
      0080ED A5 10            [ 1]   96 	bcp	a, #0x10
      0080EF 84               [ 1]   97 	pop	a
                           000028    98 	Sstm8s_gpio$GPIO_Init$12 ==.
      0080F0 27 06            [ 1]   99 	jreq	00102$
                           00002A   100 	Sstm8s_gpio$GPIO_Init$13 ==.
                           00002A   101 	Sstm8s_gpio$GPIO_Init$14 ==.
                                    102 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080F2 1A 0A            [ 1]  103 	or	a, (0x0a, sp)
      0080F4 90 F7            [ 1]  104 	ld	(y), a
                           00002E   105 	Sstm8s_gpio$GPIO_Init$15 ==.
      0080F6 20 04            [ 2]  106 	jra	00103$
      0080F8                        107 00102$:
                           000030   108 	Sstm8s_gpio$GPIO_Init$16 ==.
                           000030   109 	Sstm8s_gpio$GPIO_Init$17 ==.
                                    110 ;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0080F8 14 03            [ 1]  111 	and	a, (0x03, sp)
      0080FA 90 F7            [ 1]  112 	ld	(y), a
                           000034   113 	Sstm8s_gpio$GPIO_Init$18 ==.
      0080FC                        114 00103$:
                           000034   115 	Sstm8s_gpio$GPIO_Init$19 ==.
                                    116 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080FC 1E 04            [ 2]  117 	ldw	x, (0x04, sp)
      0080FE F6               [ 1]  118 	ld	a, (x)
      0080FF 1A 0A            [ 1]  119 	or	a, (0x0a, sp)
      008101 1E 04            [ 2]  120 	ldw	x, (0x04, sp)
      008103 F7               [ 1]  121 	ld	(x), a
                           00003C   122 	Sstm8s_gpio$GPIO_Init$20 ==.
      008104 20 08            [ 2]  123 	jra	00106$
      008106                        124 00105$:
                           00003E   125 	Sstm8s_gpio$GPIO_Init$21 ==.
                           00003E   126 	Sstm8s_gpio$GPIO_Init$22 ==.
                                    127 ;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008106 1E 04            [ 2]  128 	ldw	x, (0x04, sp)
      008108 F6               [ 1]  129 	ld	a, (x)
      008109 14 03            [ 1]  130 	and	a, (0x03, sp)
      00810B 1E 04            [ 2]  131 	ldw	x, (0x04, sp)
      00810D F7               [ 1]  132 	ld	(x), a
                           000046   133 	Sstm8s_gpio$GPIO_Init$23 ==.
      00810E                        134 00106$:
                           000046   135 	Sstm8s_gpio$GPIO_Init$24 ==.
                                    136 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00810E 93               [ 1]  137 	ldw	x, y
      00810F 1C 00 03         [ 2]  138 	addw	x, #0x0003
      008112 F6               [ 1]  139 	ld	a, (x)
                           00004B   140 	Sstm8s_gpio$GPIO_Init$25 ==.
                                    141 ;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008113 88               [ 1]  142 	push	a
                           00004C   143 	Sstm8s_gpio$GPIO_Init$26 ==.
      008114 7B 0C            [ 1]  144 	ld	a, (0x0c, sp)
      008116 A5 40            [ 1]  145 	bcp	a, #0x40
      008118 84               [ 1]  146 	pop	a
                           000051   147 	Sstm8s_gpio$GPIO_Init$27 ==.
      008119 27 05            [ 1]  148 	jreq	00108$
                           000053   149 	Sstm8s_gpio$GPIO_Init$28 ==.
                           000053   150 	Sstm8s_gpio$GPIO_Init$29 ==.
                                    151 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00811B 1A 0A            [ 1]  152 	or	a, (0x0a, sp)
      00811D F7               [ 1]  153 	ld	(x), a
                           000056   154 	Sstm8s_gpio$GPIO_Init$30 ==.
      00811E 20 03            [ 2]  155 	jra	00109$
      008120                        156 00108$:
                           000058   157 	Sstm8s_gpio$GPIO_Init$31 ==.
                           000058   158 	Sstm8s_gpio$GPIO_Init$32 ==.
                                    159 ;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008120 14 03            [ 1]  160 	and	a, (0x03, sp)
      008122 F7               [ 1]  161 	ld	(x), a
                           00005B   162 	Sstm8s_gpio$GPIO_Init$33 ==.
      008123                        163 00109$:
                           00005B   164 	Sstm8s_gpio$GPIO_Init$34 ==.
                                    165 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008123 1E 01            [ 2]  166 	ldw	x, (0x01, sp)
      008125 F6               [ 1]  167 	ld	a, (x)
                           00005E   168 	Sstm8s_gpio$GPIO_Init$35 ==.
                                    169 ;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008126 88               [ 1]  170 	push	a
                           00005F   171 	Sstm8s_gpio$GPIO_Init$36 ==.
      008127 7B 0C            [ 1]  172 	ld	a, (0x0c, sp)
      008129 A5 20            [ 1]  173 	bcp	a, #0x20
      00812B 84               [ 1]  174 	pop	a
                           000064   175 	Sstm8s_gpio$GPIO_Init$37 ==.
      00812C 27 07            [ 1]  176 	jreq	00111$
                           000066   177 	Sstm8s_gpio$GPIO_Init$38 ==.
                           000066   178 	Sstm8s_gpio$GPIO_Init$39 ==.
                                    179 ;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00812E 1A 0A            [ 1]  180 	or	a, (0x0a, sp)
      008130 1E 01            [ 2]  181 	ldw	x, (0x01, sp)
      008132 F7               [ 1]  182 	ld	(x), a
                           00006B   183 	Sstm8s_gpio$GPIO_Init$40 ==.
      008133 20 05            [ 2]  184 	jra	00113$
      008135                        185 00111$:
                           00006D   186 	Sstm8s_gpio$GPIO_Init$41 ==.
                           00006D   187 	Sstm8s_gpio$GPIO_Init$42 ==.
                                    188 ;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008135 14 03            [ 1]  189 	and	a, (0x03, sp)
      008137 1E 01            [ 2]  190 	ldw	x, (0x01, sp)
      008139 F7               [ 1]  191 	ld	(x), a
                           000072   192 	Sstm8s_gpio$GPIO_Init$43 ==.
      00813A                        193 00113$:
                           000072   194 	Sstm8s_gpio$GPIO_Init$44 ==.
                                    195 ;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
      00813A 5B 05            [ 2]  196 	addw	sp, #5
                           000074   197 	Sstm8s_gpio$GPIO_Init$45 ==.
                           000074   198 	Sstm8s_gpio$GPIO_Init$46 ==.
                           000074   199 	XG$GPIO_Init$0$0 ==.
      00813C 81               [ 4]  200 	ret
                           000075   201 	Sstm8s_gpio$GPIO_Init$47 ==.
                           000075   202 	Sstm8s_gpio$GPIO_WriteHigh$48 ==.
                                    203 ;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    204 ;	-----------------------------------------
                                    205 ;	 function GPIO_WriteHigh
                                    206 ;	-----------------------------------------
      00813D                        207 _GPIO_WriteHigh:
                           000075   208 	Sstm8s_gpio$GPIO_WriteHigh$49 ==.
                           000075   209 	Sstm8s_gpio$GPIO_WriteHigh$50 ==.
                                    210 ;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00813D 1E 03            [ 2]  211 	ldw	x, (0x03, sp)
      00813F F6               [ 1]  212 	ld	a, (x)
      008140 1A 05            [ 1]  213 	or	a, (0x05, sp)
      008142 F7               [ 1]  214 	ld	(x), a
                           00007B   215 	Sstm8s_gpio$GPIO_WriteHigh$51 ==.
                                    216 ;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
                           00007B   217 	Sstm8s_gpio$GPIO_WriteHigh$52 ==.
                           00007B   218 	XG$GPIO_WriteHigh$0$0 ==.
      008143 81               [ 4]  219 	ret
                           00007C   220 	Sstm8s_gpio$GPIO_WriteHigh$53 ==.
                           00007C   221 	Sstm8s_gpio$GPIO_WriteLow$54 ==.
                                    222 ;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    223 ;	-----------------------------------------
                                    224 ;	 function GPIO_WriteLow
                                    225 ;	-----------------------------------------
      008144                        226 _GPIO_WriteLow:
                           00007C   227 	Sstm8s_gpio$GPIO_WriteLow$55 ==.
      008144 88               [ 1]  228 	push	a
                           00007D   229 	Sstm8s_gpio$GPIO_WriteLow$56 ==.
                           00007D   230 	Sstm8s_gpio$GPIO_WriteLow$57 ==.
                                    231 ;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008145 1E 04            [ 2]  232 	ldw	x, (0x04, sp)
      008147 F6               [ 1]  233 	ld	a, (x)
      008148 6B 01            [ 1]  234 	ld	(0x01, sp), a
      00814A 7B 06            [ 1]  235 	ld	a, (0x06, sp)
      00814C 43               [ 1]  236 	cpl	a
      00814D 14 01            [ 1]  237 	and	a, (0x01, sp)
      00814F F7               [ 1]  238 	ld	(x), a
                           000088   239 	Sstm8s_gpio$GPIO_WriteLow$58 ==.
                                    240 ;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
      008150 84               [ 1]  241 	pop	a
                           000089   242 	Sstm8s_gpio$GPIO_WriteLow$59 ==.
                           000089   243 	Sstm8s_gpio$GPIO_WriteLow$60 ==.
                           000089   244 	XG$GPIO_WriteLow$0$0 ==.
      008151 81               [ 4]  245 	ret
                           00008A   246 	Sstm8s_gpio$GPIO_WriteLow$61 ==.
                                    247 	.area CODE
                                    248 	.area CONST
                                    249 	.area INITIALIZER
                                    250 	.area CABS (ABS)
                                    251 
                                    252 	.area .debug_line (NOLOAD)
      0000C3 00 00 01 3D            253 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0000C7                        254 Ldebug_line_start:
      0000C7 00 02                  255 	.dw	2
      0000C9 00 00 00 80            256 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0000CD 01                     257 	.db	1
      0000CE 01                     258 	.db	1
      0000CF FB                     259 	.db	-5
      0000D0 0F                     260 	.db	15
      0000D1 0A                     261 	.db	10
      0000D2 00                     262 	.db	0
      0000D3 01                     263 	.db	1
      0000D4 01                     264 	.db	1
      0000D5 01                     265 	.db	1
      0000D6 01                     266 	.db	1
      0000D7 00                     267 	.db	0
      0000D8 00                     268 	.db	0
      0000D9 00                     269 	.db	0
      0000DA 01                     270 	.db	1
      0000DB 43 3A 5C 50 72 6F 67   271 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000103 00                     272 	.db	0
      000104 43 3A 5C 50 72 6F 67   273 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000127 00                     274 	.db	0
      000128 00                     275 	.db	0
      000129 53 6F 75 72 63 65 2F   276 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      000148 00                     277 	.db	0
      000149 00                     278 	.uleb128	0
      00014A 00                     279 	.uleb128	0
      00014B 00                     280 	.uleb128	0
      00014C 00                     281 	.db	0
      00014D                        282 Ldebug_line_stmt:
      00014D 00                     283 	.db	0
      00014E 05                     284 	.uleb128	5
      00014F 02                     285 	.db	2
      000150 00 00 80 C8            286 	.dw	0,(Sstm8s_gpio$GPIO_Init$0)
      000154 03                     287 	.db	3
      000155 C6 00                  288 	.sleb128	70
      000157 01                     289 	.db	1
      000158 09                     290 	.db	9
      000159 00 02                  291 	.dw	Sstm8s_gpio$GPIO_Init$3-Sstm8s_gpio$GPIO_Init$0
      00015B 03                     292 	.db	3
      00015C 0A                     293 	.sleb128	10
      00015D 01                     294 	.db	1
      00015E 09                     295 	.db	9
      00015F 00 15                  296 	.dw	Sstm8s_gpio$GPIO_Init$6-Sstm8s_gpio$GPIO_Init$3
      000161 03                     297 	.db	3
      000162 11                     298 	.sleb128	17
      000163 01                     299 	.db	1
      000164 09                     300 	.db	9
      000165 00 05                  301 	.dw	Sstm8s_gpio$GPIO_Init$7-Sstm8s_gpio$GPIO_Init$6
      000167 03                     302 	.db	3
      000168 75                     303 	.sleb128	-11
      000169 01                     304 	.db	1
      00016A 09                     305 	.db	9
      00016B 00 04                  306 	.dw	Sstm8s_gpio$GPIO_Init$8-Sstm8s_gpio$GPIO_Init$7
      00016D 03                     307 	.db	3
      00016E 04                     308 	.sleb128	4
      00016F 01                     309 	.db	1
      000170 09                     310 	.db	9
      000171 00 02                  311 	.dw	Sstm8s_gpio$GPIO_Init$10-Sstm8s_gpio$GPIO_Init$8
      000173 03                     312 	.db	3
      000174 7E                     313 	.sleb128	-2
      000175 01                     314 	.db	1
      000176 09                     315 	.db	9
      000177 00 08                  316 	.dw	Sstm8s_gpio$GPIO_Init$14-Sstm8s_gpio$GPIO_Init$10
      000179 03                     317 	.db	3
      00017A 02                     318 	.sleb128	2
      00017B 01                     319 	.db	1
      00017C 09                     320 	.db	9
      00017D 00 06                  321 	.dw	Sstm8s_gpio$GPIO_Init$17-Sstm8s_gpio$GPIO_Init$14
      00017F 03                     322 	.db	3
      000180 04                     323 	.sleb128	4
      000181 01                     324 	.db	1
      000182 09                     325 	.db	9
      000183 00 04                  326 	.dw	Sstm8s_gpio$GPIO_Init$19-Sstm8s_gpio$GPIO_Init$17
      000185 03                     327 	.db	3
      000186 03                     328 	.sleb128	3
      000187 01                     329 	.db	1
      000188 09                     330 	.db	9
      000189 00 0A                  331 	.dw	Sstm8s_gpio$GPIO_Init$22-Sstm8s_gpio$GPIO_Init$19
      00018B 03                     332 	.db	3
      00018C 05                     333 	.sleb128	5
      00018D 01                     334 	.db	1
      00018E 09                     335 	.db	9
      00018F 00 08                  336 	.dw	Sstm8s_gpio$GPIO_Init$24-Sstm8s_gpio$GPIO_Init$22
      000191 03                     337 	.db	3
      000192 09                     338 	.sleb128	9
      000193 01                     339 	.db	1
      000194 09                     340 	.db	9
      000195 00 05                  341 	.dw	Sstm8s_gpio$GPIO_Init$25-Sstm8s_gpio$GPIO_Init$24
      000197 03                     342 	.db	3
      000198 7E                     343 	.sleb128	-2
      000199 01                     344 	.db	1
      00019A 09                     345 	.db	9
      00019B 00 08                  346 	.dw	Sstm8s_gpio$GPIO_Init$29-Sstm8s_gpio$GPIO_Init$25
      00019D 03                     347 	.db	3
      00019E 02                     348 	.sleb128	2
      00019F 01                     349 	.db	1
      0001A0 09                     350 	.db	9
      0001A1 00 05                  351 	.dw	Sstm8s_gpio$GPIO_Init$32-Sstm8s_gpio$GPIO_Init$29
      0001A3 03                     352 	.db	3
      0001A4 04                     353 	.sleb128	4
      0001A5 01                     354 	.db	1
      0001A6 09                     355 	.db	9
      0001A7 00 03                  356 	.dw	Sstm8s_gpio$GPIO_Init$34-Sstm8s_gpio$GPIO_Init$32
      0001A9 03                     357 	.db	3
      0001AA 5D                     358 	.sleb128	-35
      0001AB 01                     359 	.db	1
      0001AC 09                     360 	.db	9
      0001AD 00 03                  361 	.dw	Sstm8s_gpio$GPIO_Init$35-Sstm8s_gpio$GPIO_Init$34
      0001AF 03                     362 	.db	3
      0001B0 2A                     363 	.sleb128	42
      0001B1 01                     364 	.db	1
      0001B2 09                     365 	.db	9
      0001B3 00 08                  366 	.dw	Sstm8s_gpio$GPIO_Init$39-Sstm8s_gpio$GPIO_Init$35
      0001B5 03                     367 	.db	3
      0001B6 02                     368 	.sleb128	2
      0001B7 01                     369 	.db	1
      0001B8 09                     370 	.db	9
      0001B9 00 07                  371 	.dw	Sstm8s_gpio$GPIO_Init$42-Sstm8s_gpio$GPIO_Init$39
      0001BB 03                     372 	.db	3
      0001BC 04                     373 	.sleb128	4
      0001BD 01                     374 	.db	1
      0001BE 09                     375 	.db	9
      0001BF 00 05                  376 	.dw	Sstm8s_gpio$GPIO_Init$44-Sstm8s_gpio$GPIO_Init$42
      0001C1 03                     377 	.db	3
      0001C2 02                     378 	.sleb128	2
      0001C3 01                     379 	.db	1
      0001C4 09                     380 	.db	9
      0001C5 00 03                  381 	.dw	1+Sstm8s_gpio$GPIO_Init$46-Sstm8s_gpio$GPIO_Init$44
      0001C7 00                     382 	.db	0
      0001C8 01                     383 	.uleb128	1
      0001C9 01                     384 	.db	1
      0001CA 00                     385 	.db	0
      0001CB 05                     386 	.uleb128	5
      0001CC 02                     387 	.db	2
      0001CD 00 00 81 3D            388 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$48)
      0001D1 03                     389 	.db	3
      0001D2 99 01                  390 	.sleb128	153
      0001D4 01                     391 	.db	1
      0001D5 09                     392 	.db	9
      0001D6 00 00                  393 	.dw	Sstm8s_gpio$GPIO_WriteHigh$50-Sstm8s_gpio$GPIO_WriteHigh$48
      0001D8 03                     394 	.db	3
      0001D9 02                     395 	.sleb128	2
      0001DA 01                     396 	.db	1
      0001DB 09                     397 	.db	9
      0001DC 00 06                  398 	.dw	Sstm8s_gpio$GPIO_WriteHigh$51-Sstm8s_gpio$GPIO_WriteHigh$50
      0001DE 03                     399 	.db	3
      0001DF 01                     400 	.sleb128	1
      0001E0 01                     401 	.db	1
      0001E1 09                     402 	.db	9
      0001E2 00 01                  403 	.dw	1+Sstm8s_gpio$GPIO_WriteHigh$52-Sstm8s_gpio$GPIO_WriteHigh$51
      0001E4 00                     404 	.db	0
      0001E5 01                     405 	.uleb128	1
      0001E6 01                     406 	.db	1
      0001E7 00                     407 	.db	0
      0001E8 05                     408 	.uleb128	5
      0001E9 02                     409 	.db	2
      0001EA 00 00 81 44            410 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$54)
      0001EE 03                     411 	.db	3
      0001EF A6 01                  412 	.sleb128	166
      0001F1 01                     413 	.db	1
      0001F2 09                     414 	.db	9
      0001F3 00 01                  415 	.dw	Sstm8s_gpio$GPIO_WriteLow$57-Sstm8s_gpio$GPIO_WriteLow$54
      0001F5 03                     416 	.db	3
      0001F6 02                     417 	.sleb128	2
      0001F7 01                     418 	.db	1
      0001F8 09                     419 	.db	9
      0001F9 00 0B                  420 	.dw	Sstm8s_gpio$GPIO_WriteLow$58-Sstm8s_gpio$GPIO_WriteLow$57
      0001FB 03                     421 	.db	3
      0001FC 01                     422 	.sleb128	1
      0001FD 01                     423 	.db	1
      0001FE 09                     424 	.db	9
      0001FF 00 02                  425 	.dw	1+Sstm8s_gpio$GPIO_WriteLow$60-Sstm8s_gpio$GPIO_WriteLow$58
      000201 00                     426 	.db	0
      000202 01                     427 	.uleb128	1
      000203 01                     428 	.db	1
      000204                        429 Ldebug_line_end:
                                    430 
                                    431 	.area .debug_loc (NOLOAD)
      000038                        432 Ldebug_loc_start:
      000038 00 00 81 51            433 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      00003C 00 00 81 52            434 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$61)
      000040 00 02                  435 	.dw	2
      000042 78                     436 	.db	120
      000043 01                     437 	.sleb128	1
      000044 00 00 81 45            438 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      000048 00 00 81 51            439 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      00004C 00 02                  440 	.dw	2
      00004E 78                     441 	.db	120
      00004F 02                     442 	.sleb128	2
      000050 00 00 81 44            443 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      000054 00 00 81 45            444 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      000058 00 02                  445 	.dw	2
      00005A 78                     446 	.db	120
      00005B 01                     447 	.sleb128	1
      00005C 00 00 00 00            448 	.dw	0,0
      000060 00 00 00 00            449 	.dw	0,0
      000064 00 00 81 3D            450 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      000068 00 00 81 44            451 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$53)
      00006C 00 02                  452 	.dw	2
      00006E 78                     453 	.db	120
      00006F 01                     454 	.sleb128	1
      000070 00 00 00 00            455 	.dw	0,0
      000074 00 00 00 00            456 	.dw	0,0
      000078 00 00 81 3C            457 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00007C 00 00 81 3D            458 	.dw	0,(Sstm8s_gpio$GPIO_Init$47)
      000080 00 02                  459 	.dw	2
      000082 78                     460 	.db	120
      000083 01                     461 	.sleb128	1
      000084 00 00 81 2C            462 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000088 00 00 81 3C            463 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00008C 00 02                  464 	.dw	2
      00008E 78                     465 	.db	120
      00008F 06                     466 	.sleb128	6
      000090 00 00 81 27            467 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      000094 00 00 81 2C            468 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000098 00 02                  469 	.dw	2
      00009A 78                     470 	.db	120
      00009B 07                     471 	.sleb128	7
      00009C 00 00 81 19            472 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0000A0 00 00 81 27            473 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0000A4 00 02                  474 	.dw	2
      0000A6 78                     475 	.db	120
      0000A7 06                     476 	.sleb128	6
      0000A8 00 00 81 14            477 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0000AC 00 00 81 19            478 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0000B0 00 02                  479 	.dw	2
      0000B2 78                     480 	.db	120
      0000B3 07                     481 	.sleb128	7
      0000B4 00 00 80 F0            482 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      0000B8 00 00 81 14            483 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0000BC 00 02                  484 	.dw	2
      0000BE 78                     485 	.db	120
      0000BF 06                     486 	.sleb128	6
      0000C0 00 00 80 EB            487 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      0000C4 00 00 80 F0            488 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      0000C8 00 02                  489 	.dw	2
      0000CA 78                     490 	.db	120
      0000CB 07                     491 	.sleb128	7
      0000CC 00 00 80 DA            492 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      0000D0 00 00 80 EB            493 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      0000D4 00 02                  494 	.dw	2
      0000D6 78                     495 	.db	120
      0000D7 06                     496 	.sleb128	6
      0000D8 00 00 80 D4            497 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      0000DC 00 00 80 DA            498 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      0000E0 00 02                  499 	.dw	2
      0000E2 78                     500 	.db	120
      0000E3 07                     501 	.sleb128	7
      0000E4 00 00 80 CA            502 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      0000E8 00 00 80 D4            503 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      0000EC 00 02                  504 	.dw	2
      0000EE 78                     505 	.db	120
      0000EF 06                     506 	.sleb128	6
      0000F0 00 00 80 C8            507 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      0000F4 00 00 80 CA            508 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      0000F8 00 02                  509 	.dw	2
      0000FA 78                     510 	.db	120
      0000FB 01                     511 	.sleb128	1
      0000FC 00 00 00 00            512 	.dw	0,0
      000100 00 00 00 00            513 	.dw	0,0
                                    514 
                                    515 	.area .debug_abbrev (NOLOAD)
      000033                        516 Ldebug_abbrev:
      000033 06                     517 	.uleb128	6
      000034 0F                     518 	.uleb128	15
      000035 00                     519 	.db	0
      000036 0B                     520 	.uleb128	11
      000037 0B                     521 	.uleb128	11
      000038 49                     522 	.uleb128	73
      000039 13                     523 	.uleb128	19
      00003A 00                     524 	.uleb128	0
      00003B 00                     525 	.uleb128	0
      00003C 04                     526 	.uleb128	4
      00003D 35                     527 	.uleb128	53
      00003E 00                     528 	.db	0
      00003F 49                     529 	.uleb128	73
      000040 13                     530 	.uleb128	19
      000041 00                     531 	.uleb128	0
      000042 00                     532 	.uleb128	0
      000043 07                     533 	.uleb128	7
      000044 05                     534 	.uleb128	5
      000045 00                     535 	.db	0
      000046 02                     536 	.uleb128	2
      000047 0A                     537 	.uleb128	10
      000048 03                     538 	.uleb128	3
      000049 08                     539 	.uleb128	8
      00004A 49                     540 	.uleb128	73
      00004B 13                     541 	.uleb128	19
      00004C 00                     542 	.uleb128	0
      00004D 00                     543 	.uleb128	0
      00004E 02                     544 	.uleb128	2
      00004F 2E                     545 	.uleb128	46
      000050 01                     546 	.db	1
      000051 01                     547 	.uleb128	1
      000052 13                     548 	.uleb128	19
      000053 03                     549 	.uleb128	3
      000054 08                     550 	.uleb128	8
      000055 11                     551 	.uleb128	17
      000056 01                     552 	.uleb128	1
      000057 12                     553 	.uleb128	18
      000058 01                     554 	.uleb128	1
      000059 3F                     555 	.uleb128	63
      00005A 0C                     556 	.uleb128	12
      00005B 40                     557 	.uleb128	64
      00005C 06                     558 	.uleb128	6
      00005D 00                     559 	.uleb128	0
      00005E 00                     560 	.uleb128	0
      00005F 01                     561 	.uleb128	1
      000060 11                     562 	.uleb128	17
      000061 01                     563 	.db	1
      000062 03                     564 	.uleb128	3
      000063 08                     565 	.uleb128	8
      000064 10                     566 	.uleb128	16
      000065 06                     567 	.uleb128	6
      000066 13                     568 	.uleb128	19
      000067 0B                     569 	.uleb128	11
      000068 25                     570 	.uleb128	37
      000069 08                     571 	.uleb128	8
      00006A 00                     572 	.uleb128	0
      00006B 00                     573 	.uleb128	0
      00006C 05                     574 	.uleb128	5
      00006D 0D                     575 	.uleb128	13
      00006E 00                     576 	.db	0
      00006F 03                     577 	.uleb128	3
      000070 08                     578 	.uleb128	8
      000071 38                     579 	.uleb128	56
      000072 0A                     580 	.uleb128	10
      000073 49                     581 	.uleb128	73
      000074 13                     582 	.uleb128	19
      000075 00                     583 	.uleb128	0
      000076 00                     584 	.uleb128	0
      000077 09                     585 	.uleb128	9
      000078 0B                     586 	.uleb128	11
      000079 00                     587 	.db	0
      00007A 11                     588 	.uleb128	17
      00007B 01                     589 	.uleb128	1
      00007C 12                     590 	.uleb128	18
      00007D 01                     591 	.uleb128	1
      00007E 00                     592 	.uleb128	0
      00007F 00                     593 	.uleb128	0
      000080 0B                     594 	.uleb128	11
      000081 2E                     595 	.uleb128	46
      000082 01                     596 	.db	1
      000083 03                     597 	.uleb128	3
      000084 08                     598 	.uleb128	8
      000085 11                     599 	.uleb128	17
      000086 01                     600 	.uleb128	1
      000087 12                     601 	.uleb128	18
      000088 01                     602 	.uleb128	1
      000089 3F                     603 	.uleb128	63
      00008A 0C                     604 	.uleb128	12
      00008B 40                     605 	.uleb128	64
      00008C 06                     606 	.uleb128	6
      00008D 00                     607 	.uleb128	0
      00008E 00                     608 	.uleb128	0
      00008F 08                     609 	.uleb128	8
      000090 0B                     610 	.uleb128	11
      000091 01                     611 	.db	1
      000092 01                     612 	.uleb128	1
      000093 13                     613 	.uleb128	19
      000094 11                     614 	.uleb128	17
      000095 01                     615 	.uleb128	1
      000096 12                     616 	.uleb128	18
      000097 01                     617 	.uleb128	1
      000098 00                     618 	.uleb128	0
      000099 00                     619 	.uleb128	0
      00009A 03                     620 	.uleb128	3
      00009B 13                     621 	.uleb128	19
      00009C 01                     622 	.db	1
      00009D 01                     623 	.uleb128	1
      00009E 13                     624 	.uleb128	19
      00009F 03                     625 	.uleb128	3
      0000A0 08                     626 	.uleb128	8
      0000A1 0B                     627 	.uleb128	11
      0000A2 0B                     628 	.uleb128	11
      0000A3 00                     629 	.uleb128	0
      0000A4 00                     630 	.uleb128	0
      0000A5 0A                     631 	.uleb128	10
      0000A6 24                     632 	.uleb128	36
      0000A7 00                     633 	.db	0
      0000A8 03                     634 	.uleb128	3
      0000A9 08                     635 	.uleb128	8
      0000AA 0B                     636 	.uleb128	11
      0000AB 0B                     637 	.uleb128	11
      0000AC 3E                     638 	.uleb128	62
      0000AD 0B                     639 	.uleb128	11
      0000AE 00                     640 	.uleb128	0
      0000AF 00                     641 	.uleb128	0
      0000B0 00                     642 	.uleb128	0
                                    643 
                                    644 	.area .debug_info (NOLOAD)
      000069 00 00 01 DE            645 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00006D                        646 Ldebug_info_start:
      00006D 00 02                  647 	.dw	2
      00006F 00 00 00 33            648 	.dw	0,(Ldebug_abbrev)
      000073 04                     649 	.db	4
      000074 01                     650 	.uleb128	1
      000075 53 6F 75 72 63 65 2F   651 	.ascii "Source/Std_Lib/Src/stm8s_gpio.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 67 70 69
             6F 2E 63
      000094 00                     652 	.db	0
      000095 00 00 00 C3            653 	.dw	0,(Ldebug_line_start+-4)
      000099 01                     654 	.db	1
      00009A 53 44 43 43 20 76 65   655 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      0000B3 00                     656 	.db	0
      0000B4 02                     657 	.uleb128	2
      0000B5 00 00 01 40            658 	.dw	0,320
      0000B9 47 50 49 4F 5F 49 6E   659 	.ascii "GPIO_Init"
             69 74
      0000C2 00                     660 	.db	0
      0000C3 00 00 80 C8            661 	.dw	0,(_GPIO_Init)
      0000C7 00 00 81 3D            662 	.dw	0,(XG$GPIO_Init$0$0+1)
      0000CB 01                     663 	.db	1
      0000CC 00 00 00 78            664 	.dw	0,(Ldebug_loc_start+64)
      0000D0 03                     665 	.uleb128	3
      0000D1 00 00 00 BB            666 	.dw	0,187
      0000D5 47 50 49 4F 5F 73 74   667 	.ascii "GPIO_struct"
             72 75 63 74
      0000E0 00                     668 	.db	0
      0000E1 05                     669 	.db	5
      0000E2 04                     670 	.uleb128	4
      0000E3 00 00 01 40            671 	.dw	0,320
      0000E7 05                     672 	.uleb128	5
      0000E8 4F 44 52               673 	.ascii "ODR"
      0000EB 00                     674 	.db	0
      0000EC 02                     675 	.db	2
      0000ED 23                     676 	.db	35
      0000EE 00                     677 	.uleb128	0
      0000EF 00 00 00 79            678 	.dw	0,121
      0000F3 05                     679 	.uleb128	5
      0000F4 49 44 52               680 	.ascii "IDR"
      0000F7 00                     681 	.db	0
      0000F8 02                     682 	.db	2
      0000F9 23                     683 	.db	35
      0000FA 01                     684 	.uleb128	1
      0000FB 00 00 00 79            685 	.dw	0,121
      0000FF 05                     686 	.uleb128	5
      000100 44 44 52               687 	.ascii "DDR"
      000103 00                     688 	.db	0
      000104 02                     689 	.db	2
      000105 23                     690 	.db	35
      000106 02                     691 	.uleb128	2
      000107 00 00 00 79            692 	.dw	0,121
      00010B 05                     693 	.uleb128	5
      00010C 43 52 31               694 	.ascii "CR1"
      00010F 00                     695 	.db	0
      000110 02                     696 	.db	2
      000111 23                     697 	.db	35
      000112 03                     698 	.uleb128	3
      000113 00 00 00 79            699 	.dw	0,121
      000117 05                     700 	.uleb128	5
      000118 43 52 32               701 	.ascii "CR2"
      00011B 00                     702 	.db	0
      00011C 02                     703 	.db	2
      00011D 23                     704 	.db	35
      00011E 04                     705 	.uleb128	4
      00011F 00 00 00 79            706 	.dw	0,121
      000123 00                     707 	.uleb128	0
      000124 06                     708 	.uleb128	6
      000125 02                     709 	.db	2
      000126 00 00 00 67            710 	.dw	0,103
      00012A 07                     711 	.uleb128	7
      00012B 02                     712 	.db	2
      00012C 91                     713 	.db	145
      00012D 02                     714 	.sleb128	2
      00012E 47 50 49 4F 78         715 	.ascii "GPIOx"
      000133 00                     716 	.db	0
      000134 00 00 00 BB            717 	.dw	0,187
      000138 07                     718 	.uleb128	7
      000139 02                     719 	.db	2
      00013A 91                     720 	.db	145
      00013B 04                     721 	.sleb128	4
      00013C 47 50 49 4F 5F 50 69   722 	.ascii "GPIO_Pin"
             6E
      000144 00                     723 	.db	0
      000145 00 00 01 51            724 	.dw	0,337
      000149 07                     725 	.uleb128	7
      00014A 02                     726 	.db	2
      00014B 91                     727 	.db	145
      00014C 05                     728 	.sleb128	5
      00014D 47 50 49 4F 5F 4D 6F   729 	.ascii "GPIO_Mode"
             64 65
      000156 00                     730 	.db	0
      000157 00 00 01 51            731 	.dw	0,337
      00015B 08                     732 	.uleb128	8
      00015C 00 00 01 12            733 	.dw	0,274
      000160 00 00 80 EA            734 	.dw	0,(Sstm8s_gpio$GPIO_Init$9)
      000164 00 00 81 04            735 	.dw	0,(Sstm8s_gpio$GPIO_Init$20)
      000168 09                     736 	.uleb128	9
      000169 00 00 80 F2            737 	.dw	0,(Sstm8s_gpio$GPIO_Init$13)
      00016D 00 00 80 F6            738 	.dw	0,(Sstm8s_gpio$GPIO_Init$15)
      000171 09                     739 	.uleb128	9
      000172 00 00 80 F8            740 	.dw	0,(Sstm8s_gpio$GPIO_Init$16)
      000176 00 00 80 FC            741 	.dw	0,(Sstm8s_gpio$GPIO_Init$18)
      00017A 00                     742 	.uleb128	0
      00017B 09                     743 	.uleb128	9
      00017C 00 00 81 06            744 	.dw	0,(Sstm8s_gpio$GPIO_Init$21)
      000180 00 00 81 0E            745 	.dw	0,(Sstm8s_gpio$GPIO_Init$23)
      000184 09                     746 	.uleb128	9
      000185 00 00 81 1B            747 	.dw	0,(Sstm8s_gpio$GPIO_Init$28)
      000189 00 00 81 1E            748 	.dw	0,(Sstm8s_gpio$GPIO_Init$30)
      00018D 09                     749 	.uleb128	9
      00018E 00 00 81 20            750 	.dw	0,(Sstm8s_gpio$GPIO_Init$31)
      000192 00 00 81 23            751 	.dw	0,(Sstm8s_gpio$GPIO_Init$33)
      000196 09                     752 	.uleb128	9
      000197 00 00 81 2E            753 	.dw	0,(Sstm8s_gpio$GPIO_Init$38)
      00019B 00 00 81 33            754 	.dw	0,(Sstm8s_gpio$GPIO_Init$40)
      00019F 09                     755 	.uleb128	9
      0001A0 00 00 81 35            756 	.dw	0,(Sstm8s_gpio$GPIO_Init$41)
      0001A4 00 00 81 3A            757 	.dw	0,(Sstm8s_gpio$GPIO_Init$43)
      0001A8 00                     758 	.uleb128	0
      0001A9 0A                     759 	.uleb128	10
      0001AA 75 6E 73 69 67 6E 65   760 	.ascii "unsigned char"
             64 20 63 68 61 72
      0001B7 00                     761 	.db	0
      0001B8 01                     762 	.db	1
      0001B9 08                     763 	.db	8
      0001BA 0A                     764 	.uleb128	10
      0001BB 75 6E 73 69 67 6E 65   765 	.ascii "unsigned char"
             64 20 63 68 61 72
      0001C8 00                     766 	.db	0
      0001C9 01                     767 	.db	1
      0001CA 08                     768 	.db	8
      0001CB 02                     769 	.uleb128	2
      0001CC 00 00 01 A3            770 	.dw	0,419
      0001D0 47 50 49 4F 5F 57 72   771 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      0001DE 00                     772 	.db	0
      0001DF 00 00 81 3D            773 	.dw	0,(_GPIO_WriteHigh)
      0001E3 00 00 81 44            774 	.dw	0,(XG$GPIO_WriteHigh$0$0+1)
      0001E7 01                     775 	.db	1
      0001E8 00 00 00 64            776 	.dw	0,(Ldebug_loc_start+44)
      0001EC 07                     777 	.uleb128	7
      0001ED 02                     778 	.db	2
      0001EE 91                     779 	.db	145
      0001EF 02                     780 	.sleb128	2
      0001F0 47 50 49 4F 78         781 	.ascii "GPIOx"
      0001F5 00                     782 	.db	0
      0001F6 00 00 00 BB            783 	.dw	0,187
      0001FA 07                     784 	.uleb128	7
      0001FB 02                     785 	.db	2
      0001FC 91                     786 	.db	145
      0001FD 04                     787 	.sleb128	4
      0001FE 50 6F 72 74 50 69 6E   788 	.ascii "PortPins"
             73
      000206 00                     789 	.db	0
      000207 00 00 01 51            790 	.dw	0,337
      00020B 00                     791 	.uleb128	0
      00020C 0B                     792 	.uleb128	11
      00020D 47 50 49 4F 5F 57 72   793 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00021A 00                     794 	.db	0
      00021B 00 00 81 44            795 	.dw	0,(_GPIO_WriteLow)
      00021F 00 00 81 52            796 	.dw	0,(XG$GPIO_WriteLow$0$0+1)
      000223 01                     797 	.db	1
      000224 00 00 00 38            798 	.dw	0,(Ldebug_loc_start)
      000228 07                     799 	.uleb128	7
      000229 02                     800 	.db	2
      00022A 91                     801 	.db	145
      00022B 02                     802 	.sleb128	2
      00022C 47 50 49 4F 78         803 	.ascii "GPIOx"
      000231 00                     804 	.db	0
      000232 00 00 00 BB            805 	.dw	0,187
      000236 07                     806 	.uleb128	7
      000237 02                     807 	.db	2
      000238 91                     808 	.db	145
      000239 04                     809 	.sleb128	4
      00023A 50 6F 72 74 50 69 6E   810 	.ascii "PortPins"
             73
      000242 00                     811 	.db	0
      000243 00 00 01 51            812 	.dw	0,337
      000247 00                     813 	.uleb128	0
      000248 00                     814 	.uleb128	0
      000249 00                     815 	.uleb128	0
      00024A 00                     816 	.uleb128	0
      00024B                        817 Ldebug_info_end:
                                    818 
                                    819 	.area .debug_pubnames (NOLOAD)
      00001B 00 00 00 41            820 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00001F                        821 Ldebug_pubnames_start:
      00001F 00 02                  822 	.dw	2
      000021 00 00 00 69            823 	.dw	0,(Ldebug_info_start-4)
      000025 00 00 01 E2            824 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000029 00 00 00 4B            825 	.dw	0,75
      00002D 47 50 49 4F 5F 49 6E   826 	.ascii "GPIO_Init"
             69 74
      000036 00                     827 	.db	0
      000037 00 00 01 62            828 	.dw	0,354
      00003B 47 50 49 4F 5F 57 72   829 	.ascii "GPIO_WriteHigh"
             69 74 65 48 69 67 68
      000049 00                     830 	.db	0
      00004A 00 00 01 A3            831 	.dw	0,419
      00004E 47 50 49 4F 5F 57 72   832 	.ascii "GPIO_WriteLow"
             69 74 65 4C 6F 77
      00005B 00                     833 	.db	0
      00005C 00 00 00 00            834 	.dw	0,0
      000060                        835 Ldebug_pubnames_end:
                                    836 
                                    837 	.area .debug_frame (NOLOAD)
      00003E 00 00                  838 	.dw	0
      000040 00 0E                  839 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000042                        840 Ldebug_CIE0_start:
      000042 FF FF                  841 	.dw	0xffff
      000044 FF FF                  842 	.dw	0xffff
      000046 01                     843 	.db	1
      000047 00                     844 	.db	0
      000048 01                     845 	.uleb128	1
      000049 7F                     846 	.sleb128	-1
      00004A 09                     847 	.db	9
      00004B 0C                     848 	.db	12
      00004C 08                     849 	.uleb128	8
      00004D 02                     850 	.uleb128	2
      00004E 89                     851 	.db	137
      00004F 01                     852 	.uleb128	1
      000050                        853 Ldebug_CIE0_end:
      000050 00 00 00 21            854 	.dw	0,33
      000054 00 00 00 3E            855 	.dw	0,(Ldebug_CIE0_start-4)
      000058 00 00 81 44            856 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)	;initial loc
      00005C 00 00 00 0E            857 	.dw	0,Sstm8s_gpio$GPIO_WriteLow$61-Sstm8s_gpio$GPIO_WriteLow$55
      000060 01                     858 	.db	1
      000061 00 00 81 44            859 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$55)
      000065 0E                     860 	.db	14
      000066 02                     861 	.uleb128	2
      000067 01                     862 	.db	1
      000068 00 00 81 45            863 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$56)
      00006C 0E                     864 	.db	14
      00006D 03                     865 	.uleb128	3
      00006E 01                     866 	.db	1
      00006F 00 00 81 51            867 	.dw	0,(Sstm8s_gpio$GPIO_WriteLow$59)
      000073 0E                     868 	.db	14
      000074 02                     869 	.uleb128	2
                                    870 
                                    871 	.area .debug_frame (NOLOAD)
      000075 00 00                  872 	.dw	0
      000077 00 0E                  873 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000079                        874 Ldebug_CIE1_start:
      000079 FF FF                  875 	.dw	0xffff
      00007B FF FF                  876 	.dw	0xffff
      00007D 01                     877 	.db	1
      00007E 00                     878 	.db	0
      00007F 01                     879 	.uleb128	1
      000080 7F                     880 	.sleb128	-1
      000081 09                     881 	.db	9
      000082 0C                     882 	.db	12
      000083 08                     883 	.uleb128	8
      000084 02                     884 	.uleb128	2
      000085 89                     885 	.db	137
      000086 01                     886 	.uleb128	1
      000087                        887 Ldebug_CIE1_end:
      000087 00 00 00 13            888 	.dw	0,19
      00008B 00 00 00 75            889 	.dw	0,(Ldebug_CIE1_start-4)
      00008F 00 00 81 3D            890 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)	;initial loc
      000093 00 00 00 07            891 	.dw	0,Sstm8s_gpio$GPIO_WriteHigh$53-Sstm8s_gpio$GPIO_WriteHigh$49
      000097 01                     892 	.db	1
      000098 00 00 81 3D            893 	.dw	0,(Sstm8s_gpio$GPIO_WriteHigh$49)
      00009C 0E                     894 	.db	14
      00009D 02                     895 	.uleb128	2
                                    896 
                                    897 	.area .debug_frame (NOLOAD)
      00009E 00 00                  898 	.dw	0
      0000A0 00 0E                  899 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0000A2                        900 Ldebug_CIE2_start:
      0000A2 FF FF                  901 	.dw	0xffff
      0000A4 FF FF                  902 	.dw	0xffff
      0000A6 01                     903 	.db	1
      0000A7 00                     904 	.db	0
      0000A8 01                     905 	.uleb128	1
      0000A9 7F                     906 	.sleb128	-1
      0000AA 09                     907 	.db	9
      0000AB 0C                     908 	.db	12
      0000AC 08                     909 	.uleb128	8
      0000AD 02                     910 	.uleb128	2
      0000AE 89                     911 	.db	137
      0000AF 01                     912 	.uleb128	1
      0000B0                        913 Ldebug_CIE2_end:
      0000B0 00 00 00 59            914 	.dw	0,89
      0000B4 00 00 00 9E            915 	.dw	0,(Ldebug_CIE2_start-4)
      0000B8 00 00 80 C8            916 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)	;initial loc
      0000BC 00 00 00 75            917 	.dw	0,Sstm8s_gpio$GPIO_Init$47-Sstm8s_gpio$GPIO_Init$1
      0000C0 01                     918 	.db	1
      0000C1 00 00 80 C8            919 	.dw	0,(Sstm8s_gpio$GPIO_Init$1)
      0000C5 0E                     920 	.db	14
      0000C6 02                     921 	.uleb128	2
      0000C7 01                     922 	.db	1
      0000C8 00 00 80 CA            923 	.dw	0,(Sstm8s_gpio$GPIO_Init$2)
      0000CC 0E                     924 	.db	14
      0000CD 07                     925 	.uleb128	7
      0000CE 01                     926 	.db	1
      0000CF 00 00 80 D4            927 	.dw	0,(Sstm8s_gpio$GPIO_Init$4)
      0000D3 0E                     928 	.db	14
      0000D4 08                     929 	.uleb128	8
      0000D5 01                     930 	.db	1
      0000D6 00 00 80 DA            931 	.dw	0,(Sstm8s_gpio$GPIO_Init$5)
      0000DA 0E                     932 	.db	14
      0000DB 07                     933 	.uleb128	7
      0000DC 01                     934 	.db	1
      0000DD 00 00 80 EB            935 	.dw	0,(Sstm8s_gpio$GPIO_Init$11)
      0000E1 0E                     936 	.db	14
      0000E2 08                     937 	.uleb128	8
      0000E3 01                     938 	.db	1
      0000E4 00 00 80 F0            939 	.dw	0,(Sstm8s_gpio$GPIO_Init$12)
      0000E8 0E                     940 	.db	14
      0000E9 07                     941 	.uleb128	7
      0000EA 01                     942 	.db	1
      0000EB 00 00 81 14            943 	.dw	0,(Sstm8s_gpio$GPIO_Init$26)
      0000EF 0E                     944 	.db	14
      0000F0 08                     945 	.uleb128	8
      0000F1 01                     946 	.db	1
      0000F2 00 00 81 19            947 	.dw	0,(Sstm8s_gpio$GPIO_Init$27)
      0000F6 0E                     948 	.db	14
      0000F7 07                     949 	.uleb128	7
      0000F8 01                     950 	.db	1
      0000F9 00 00 81 27            951 	.dw	0,(Sstm8s_gpio$GPIO_Init$36)
      0000FD 0E                     952 	.db	14
      0000FE 08                     953 	.uleb128	8
      0000FF 01                     954 	.db	1
      000100 00 00 81 2C            955 	.dw	0,(Sstm8s_gpio$GPIO_Init$37)
      000104 0E                     956 	.db	14
      000105 07                     957 	.uleb128	7
      000106 01                     958 	.db	1
      000107 00 00 81 3C            959 	.dw	0,(Sstm8s_gpio$GPIO_Init$45)
      00010B 0E                     960 	.db	14
      00010C 02                     961 	.uleb128	2
