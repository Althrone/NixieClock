                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_spi
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SPI_DeInit
                                     12 	.globl _SPI_Init
                                     13 	.globl _SPI_Cmd
                                     14 	.globl _SPI_SendData
                                     15 	.globl _SPI_GetFlagStatus
                                     16 	.globl _SPI_ClearFlag
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 
                                     30 ; default segment ordering for linker
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area CONST
                                     35 	.area INITIALIZER
                                     36 	.area CODE
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; global & static initialisations
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area GSINIT
                                     45 ;--------------------------------------------------------
                                     46 ; Home
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area HOME
                                     50 ;--------------------------------------------------------
                                     51 ; code
                                     52 ;--------------------------------------------------------
                                     53 	.area CODE
                           000000    54 	Sstm8s_spi$SPI_DeInit$0 ==.
                                     55 ;	Source/Std_Lib/Src/stm8s_spi.c: 50: void SPI_DeInit(void)
                                     56 ;	-----------------------------------------
                                     57 ;	 function SPI_DeInit
                                     58 ;	-----------------------------------------
      0083C9                         59 _SPI_DeInit:
                           000000    60 	Sstm8s_spi$SPI_DeInit$1 ==.
                           000000    61 	Sstm8s_spi$SPI_DeInit$2 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
      0083C9 35 00 52 00      [ 1]   63 	mov	0x5200+0, #0x00
                           000004    64 	Sstm8s_spi$SPI_DeInit$3 ==.
                                     65 ;	Source/Std_Lib/Src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
      0083CD 35 00 52 01      [ 1]   66 	mov	0x5201+0, #0x00
                           000008    67 	Sstm8s_spi$SPI_DeInit$4 ==.
                                     68 ;	Source/Std_Lib/Src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
      0083D1 35 00 52 02      [ 1]   69 	mov	0x5202+0, #0x00
                           00000C    70 	Sstm8s_spi$SPI_DeInit$5 ==.
                                     71 ;	Source/Std_Lib/Src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
      0083D5 35 02 52 03      [ 1]   72 	mov	0x5203+0, #0x02
                           000010    73 	Sstm8s_spi$SPI_DeInit$6 ==.
                                     74 ;	Source/Std_Lib/Src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
      0083D9 35 07 52 05      [ 1]   75 	mov	0x5205+0, #0x07
                           000014    76 	Sstm8s_spi$SPI_DeInit$7 ==.
                                     77 ;	Source/Std_Lib/Src/stm8s_spi.c: 57: }
                           000014    78 	Sstm8s_spi$SPI_DeInit$8 ==.
                           000014    79 	XG$SPI_DeInit$0$0 ==.
      0083DD 81               [ 4]   80 	ret
                           000015    81 	Sstm8s_spi$SPI_DeInit$9 ==.
                           000015    82 	Sstm8s_spi$SPI_Init$10 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     84 ;	-----------------------------------------
                                     85 ;	 function SPI_Init
                                     86 ;	-----------------------------------------
      0083DE                         87 _SPI_Init:
                           000015    88 	Sstm8s_spi$SPI_Init$11 ==.
      0083DE 88               [ 1]   89 	push	a
                           000016    90 	Sstm8s_spi$SPI_Init$12 ==.
                           000016    91 	Sstm8s_spi$SPI_Init$13 ==.
                                     92 ;	Source/Std_Lib/Src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
      0083DF 7B 04            [ 1]   93 	ld	a, (0x04, sp)
      0083E1 1A 05            [ 1]   94 	or	a, (0x05, sp)
      0083E3 6B 01            [ 1]   95 	ld	(0x01, sp), a
                           00001C    96 	Sstm8s_spi$SPI_Init$14 ==.
                                     97 ;	Source/Std_Lib/Src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
      0083E5 7B 07            [ 1]   98 	ld	a, (0x07, sp)
      0083E7 1A 08            [ 1]   99 	or	a, (0x08, sp)
      0083E9 1A 01            [ 1]  100 	or	a, (0x01, sp)
      0083EB C7 52 00         [ 1]  101 	ld	0x5200, a
                           000025   102 	Sstm8s_spi$SPI_Init$15 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
      0083EE 7B 09            [ 1]  104 	ld	a, (0x09, sp)
      0083F0 1A 0A            [ 1]  105 	or	a, (0x0a, sp)
      0083F2 C7 52 01         [ 1]  106 	ld	0x5201, a
                           00002C   107 	Sstm8s_spi$SPI_Init$16 ==.
                                    108 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      0083F5 C6 52 01         [ 1]  109 	ld	a, 0x5201
                           00002F   110 	Sstm8s_spi$SPI_Init$17 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
      0083F8 88               [ 1]  112 	push	a
                           000030   113 	Sstm8s_spi$SPI_Init$18 ==.
      0083F9 7B 07            [ 1]  114 	ld	a, (0x07, sp)
      0083FB A1 04            [ 1]  115 	cp	a, #0x04
      0083FD 84               [ 1]  116 	pop	a
                           000035   117 	Sstm8s_spi$SPI_Init$19 ==.
      0083FE 26 07            [ 1]  118 	jrne	00102$
                           000037   119 	Sstm8s_spi$SPI_Init$20 ==.
                           000037   120 	Sstm8s_spi$SPI_Init$21 ==.
                           000037   121 	Sstm8s_spi$SPI_Init$22 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      008400 AA 01            [ 1]  123 	or	a, #0x01
      008402 C7 52 01         [ 1]  124 	ld	0x5201, a
                           00003C   125 	Sstm8s_spi$SPI_Init$23 ==.
      008405 20 05            [ 2]  126 	jra	00103$
      008407                        127 00102$:
                           00003E   128 	Sstm8s_spi$SPI_Init$24 ==.
                           00003E   129 	Sstm8s_spi$SPI_Init$25 ==.
                                    130 ;	Source/Std_Lib/Src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      008407 A4 FE            [ 1]  131 	and	a, #0xfe
      008409 C7 52 01         [ 1]  132 	ld	0x5201, a
                           000043   133 	Sstm8s_spi$SPI_Init$26 ==.
      00840C                        134 00103$:
                           000043   135 	Sstm8s_spi$SPI_Init$27 ==.
                                    136 ;	Source/Std_Lib/Src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
      00840C C6 52 00         [ 1]  137 	ld	a, 0x5200
      00840F 1A 06            [ 1]  138 	or	a, (0x06, sp)
      008411 C7 52 00         [ 1]  139 	ld	0x5200, a
                           00004B   140 	Sstm8s_spi$SPI_Init$28 ==.
                                    141 ;	Source/Std_Lib/Src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
      008414 AE 52 05         [ 2]  142 	ldw	x, #0x5205
      008417 7B 0B            [ 1]  143 	ld	a, (0x0b, sp)
      008419 F7               [ 1]  144 	ld	(x), a
                           000051   145 	Sstm8s_spi$SPI_Init$29 ==.
                                    146 ;	Source/Std_Lib/Src/stm8s_spi.c: 111: }
      00841A 84               [ 1]  147 	pop	a
                           000052   148 	Sstm8s_spi$SPI_Init$30 ==.
                           000052   149 	Sstm8s_spi$SPI_Init$31 ==.
                           000052   150 	XG$SPI_Init$0$0 ==.
      00841B 81               [ 4]  151 	ret
                           000053   152 	Sstm8s_spi$SPI_Init$32 ==.
                           000053   153 	Sstm8s_spi$SPI_Cmd$33 ==.
                                    154 ;	Source/Std_Lib/Src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    155 ;	-----------------------------------------
                                    156 ;	 function SPI_Cmd
                                    157 ;	-----------------------------------------
      00841C                        158 _SPI_Cmd:
                           000053   159 	Sstm8s_spi$SPI_Cmd$34 ==.
                           000053   160 	Sstm8s_spi$SPI_Cmd$35 ==.
                                    161 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      00841C C6 52 00         [ 1]  162 	ld	a, 0x5200
                           000056   163 	Sstm8s_spi$SPI_Cmd$36 ==.
                                    164 ;	Source/Std_Lib/Src/stm8s_spi.c: 124: if (NewState != DISABLE)
      00841F 0D 03            [ 1]  165 	tnz	(0x03, sp)
      008421 27 07            [ 1]  166 	jreq	00102$
                           00005A   167 	Sstm8s_spi$SPI_Cmd$37 ==.
                           00005A   168 	Sstm8s_spi$SPI_Cmd$38 ==.
                                    169 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      008423 AA 40            [ 1]  170 	or	a, #0x40
      008425 C7 52 00         [ 1]  171 	ld	0x5200, a
                           00005F   172 	Sstm8s_spi$SPI_Cmd$39 ==.
      008428 20 05            [ 2]  173 	jra	00104$
      00842A                        174 00102$:
                           000061   175 	Sstm8s_spi$SPI_Cmd$40 ==.
                           000061   176 	Sstm8s_spi$SPI_Cmd$41 ==.
                                    177 ;	Source/Std_Lib/Src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
      00842A A4 BF            [ 1]  178 	and	a, #0xbf
      00842C C7 52 00         [ 1]  179 	ld	0x5200, a
                           000066   180 	Sstm8s_spi$SPI_Cmd$42 ==.
      00842F                        181 00104$:
                           000066   182 	Sstm8s_spi$SPI_Cmd$43 ==.
                                    183 ;	Source/Std_Lib/Src/stm8s_spi.c: 132: }
                           000066   184 	Sstm8s_spi$SPI_Cmd$44 ==.
                           000066   185 	XG$SPI_Cmd$0$0 ==.
      00842F 81               [ 4]  186 	ret
                           000067   187 	Sstm8s_spi$SPI_Cmd$45 ==.
                           000067   188 	Sstm8s_spi$SPI_SendData$46 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    190 ;	-----------------------------------------
                                    191 ;	 function SPI_SendData
                                    192 ;	-----------------------------------------
      008430                        193 _SPI_SendData:
                           000067   194 	Sstm8s_spi$SPI_SendData$47 ==.
                           000067   195 	Sstm8s_spi$SPI_SendData$48 ==.
                                    196 ;	Source/Std_Lib/Src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      008430 AE 52 04         [ 2]  197 	ldw	x, #0x5204
      008433 7B 03            [ 1]  198 	ld	a, (0x03, sp)
      008435 F7               [ 1]  199 	ld	(x), a
                           00006D   200 	Sstm8s_spi$SPI_SendData$49 ==.
                                    201 ;	Source/Std_Lib/Src/stm8s_spi.c: 169: }
                           00006D   202 	Sstm8s_spi$SPI_SendData$50 ==.
                           00006D   203 	XG$SPI_SendData$0$0 ==.
      008436 81               [ 4]  204 	ret
                           00006E   205 	Sstm8s_spi$SPI_SendData$51 ==.
                           00006E   206 	Sstm8s_spi$SPI_GetFlagStatus$52 ==.
                                    207 ;	Source/Std_Lib/Src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    208 ;	-----------------------------------------
                                    209 ;	 function SPI_GetFlagStatus
                                    210 ;	-----------------------------------------
      008437                        211 _SPI_GetFlagStatus:
                           00006E   212 	Sstm8s_spi$SPI_GetFlagStatus$53 ==.
                           00006E   213 	Sstm8s_spi$SPI_GetFlagStatus$54 ==.
                                    214 ;	Source/Std_Lib/Src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      008437 C6 52 03         [ 1]  215 	ld	a, 0x5203
      00843A 14 03            [ 1]  216 	and	a, (0x03, sp)
      00843C 27 04            [ 1]  217 	jreq	00102$
                           000075   218 	Sstm8s_spi$SPI_GetFlagStatus$55 ==.
                           000075   219 	Sstm8s_spi$SPI_GetFlagStatus$56 ==.
                                    220 ;	Source/Std_Lib/Src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
      00843E A6 01            [ 1]  221 	ld	a, #0x01
                           000077   222 	Sstm8s_spi$SPI_GetFlagStatus$57 ==.
      008440 20 01            [ 2]  223 	jra	00103$
      008442                        224 00102$:
                           000079   225 	Sstm8s_spi$SPI_GetFlagStatus$58 ==.
                           000079   226 	Sstm8s_spi$SPI_GetFlagStatus$59 ==.
                                    227 ;	Source/Std_Lib/Src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
      008442 4F               [ 1]  228 	clr	a
                           00007A   229 	Sstm8s_spi$SPI_GetFlagStatus$60 ==.
      008443                        230 00103$:
                           00007A   231 	Sstm8s_spi$SPI_GetFlagStatus$61 ==.
                                    232 ;	Source/Std_Lib/Src/stm8s_spi.c: 328: return status;
                           00007A   233 	Sstm8s_spi$SPI_GetFlagStatus$62 ==.
                                    234 ;	Source/Std_Lib/Src/stm8s_spi.c: 329: }
                           00007A   235 	Sstm8s_spi$SPI_GetFlagStatus$63 ==.
                           00007A   236 	XG$SPI_GetFlagStatus$0$0 ==.
      008443 81               [ 4]  237 	ret
                           00007B   238 	Sstm8s_spi$SPI_GetFlagStatus$64 ==.
                           00007B   239 	Sstm8s_spi$SPI_ClearFlag$65 ==.
                                    240 ;	Source/Std_Lib/Src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    241 ;	-----------------------------------------
                                    242 ;	 function SPI_ClearFlag
                                    243 ;	-----------------------------------------
      008444                        244 _SPI_ClearFlag:
                           00007B   245 	Sstm8s_spi$SPI_ClearFlag$66 ==.
                           00007B   246 	Sstm8s_spi$SPI_ClearFlag$67 ==.
                                    247 ;	Source/Std_Lib/Src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
      008444 7B 03            [ 1]  248 	ld	a, (0x03, sp)
      008446 43               [ 1]  249 	cpl	a
      008447 C7 52 03         [ 1]  250 	ld	0x5203, a
                           000081   251 	Sstm8s_spi$SPI_ClearFlag$68 ==.
                                    252 ;	Source/Std_Lib/Src/stm8s_spi.c: 351: }
                           000081   253 	Sstm8s_spi$SPI_ClearFlag$69 ==.
                           000081   254 	XG$SPI_ClearFlag$0$0 ==.
      00844A 81               [ 4]  255 	ret
                           000082   256 	Sstm8s_spi$SPI_ClearFlag$70 ==.
                                    257 	.area CODE
                                    258 	.area CONST
                                    259 	.area INITIALIZER
                                    260 	.area CABS (ABS)
                                    261 
                                    262 	.area .debug_line (NOLOAD)
      00052B 00 00 01 9E            263 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00052F                        264 Ldebug_line_start:
      00052F 00 02                  265 	.dw	2
      000531 00 00 00 7F            266 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000535 01                     267 	.db	1
      000536 01                     268 	.db	1
      000537 FB                     269 	.db	-5
      000538 0F                     270 	.db	15
      000539 0A                     271 	.db	10
      00053A 00                     272 	.db	0
      00053B 01                     273 	.db	1
      00053C 01                     274 	.db	1
      00053D 01                     275 	.db	1
      00053E 01                     276 	.db	1
      00053F 00                     277 	.db	0
      000540 00                     278 	.db	0
      000541 00                     279 	.db	0
      000542 01                     280 	.db	1
      000543 43 3A 5C 50 72 6F 67   281 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      00056B 00                     282 	.db	0
      00056C 43 3A 5C 50 72 6F 67   283 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      00058F 00                     284 	.db	0
      000590 00                     285 	.db	0
      000591 53 6F 75 72 63 65 2F   286 	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 73 70 69
             2E 63
      0005AF 00                     287 	.db	0
      0005B0 00                     288 	.uleb128	0
      0005B1 00                     289 	.uleb128	0
      0005B2 00                     290 	.uleb128	0
      0005B3 00                     291 	.db	0
      0005B4                        292 Ldebug_line_stmt:
      0005B4 00                     293 	.db	0
      0005B5 05                     294 	.uleb128	5
      0005B6 02                     295 	.db	2
      0005B7 00 00 83 C9            296 	.dw	0,(Sstm8s_spi$SPI_DeInit$0)
      0005BB 03                     297 	.db	3
      0005BC 31                     298 	.sleb128	49
      0005BD 01                     299 	.db	1
      0005BE 09                     300 	.db	9
      0005BF 00 00                  301 	.dw	Sstm8s_spi$SPI_DeInit$2-Sstm8s_spi$SPI_DeInit$0
      0005C1 03                     302 	.db	3
      0005C2 02                     303 	.sleb128	2
      0005C3 01                     304 	.db	1
      0005C4 09                     305 	.db	9
      0005C5 00 04                  306 	.dw	Sstm8s_spi$SPI_DeInit$3-Sstm8s_spi$SPI_DeInit$2
      0005C7 03                     307 	.db	3
      0005C8 01                     308 	.sleb128	1
      0005C9 01                     309 	.db	1
      0005CA 09                     310 	.db	9
      0005CB 00 04                  311 	.dw	Sstm8s_spi$SPI_DeInit$4-Sstm8s_spi$SPI_DeInit$3
      0005CD 03                     312 	.db	3
      0005CE 01                     313 	.sleb128	1
      0005CF 01                     314 	.db	1
      0005D0 09                     315 	.db	9
      0005D1 00 04                  316 	.dw	Sstm8s_spi$SPI_DeInit$5-Sstm8s_spi$SPI_DeInit$4
      0005D3 03                     317 	.db	3
      0005D4 01                     318 	.sleb128	1
      0005D5 01                     319 	.db	1
      0005D6 09                     320 	.db	9
      0005D7 00 04                  321 	.dw	Sstm8s_spi$SPI_DeInit$6-Sstm8s_spi$SPI_DeInit$5
      0005D9 03                     322 	.db	3
      0005DA 01                     323 	.sleb128	1
      0005DB 01                     324 	.db	1
      0005DC 09                     325 	.db	9
      0005DD 00 04                  326 	.dw	Sstm8s_spi$SPI_DeInit$7-Sstm8s_spi$SPI_DeInit$6
      0005DF 03                     327 	.db	3
      0005E0 01                     328 	.sleb128	1
      0005E1 01                     329 	.db	1
      0005E2 09                     330 	.db	9
      0005E3 00 01                  331 	.dw	1+Sstm8s_spi$SPI_DeInit$8-Sstm8s_spi$SPI_DeInit$7
      0005E5 00                     332 	.db	0
      0005E6 01                     333 	.uleb128	1
      0005E7 01                     334 	.db	1
      0005E8 00                     335 	.db	0
      0005E9 05                     336 	.uleb128	5
      0005EA 02                     337 	.db	2
      0005EB 00 00 83 DE            338 	.dw	0,(Sstm8s_spi$SPI_Init$10)
      0005EF 03                     339 	.db	3
      0005F0 CD 00                  340 	.sleb128	77
      0005F2 01                     341 	.db	1
      0005F3 09                     342 	.db	9
      0005F4 00 01                  343 	.dw	Sstm8s_spi$SPI_Init$13-Sstm8s_spi$SPI_Init$10
      0005F6 03                     344 	.db	3
      0005F7 0D                     345 	.sleb128	13
      0005F8 01                     346 	.db	1
      0005F9 09                     347 	.db	9
      0005FA 00 06                  348 	.dw	Sstm8s_spi$SPI_Init$14-Sstm8s_spi$SPI_Init$13
      0005FC 03                     349 	.db	3
      0005FD 01                     350 	.sleb128	1
      0005FE 01                     351 	.db	1
      0005FF 09                     352 	.db	9
      000600 00 09                  353 	.dw	Sstm8s_spi$SPI_Init$15-Sstm8s_spi$SPI_Init$14
      000602 03                     354 	.db	3
      000603 03                     355 	.sleb128	3
      000604 01                     356 	.db	1
      000605 09                     357 	.db	9
      000606 00 07                  358 	.dw	Sstm8s_spi$SPI_Init$16-Sstm8s_spi$SPI_Init$15
      000608 03                     359 	.db	3
      000609 04                     360 	.sleb128	4
      00060A 01                     361 	.db	1
      00060B 09                     362 	.db	9
      00060C 00 03                  363 	.dw	Sstm8s_spi$SPI_Init$17-Sstm8s_spi$SPI_Init$16
      00060E 03                     364 	.db	3
      00060F 7E                     365 	.sleb128	-2
      000610 01                     366 	.db	1
      000611 09                     367 	.db	9
      000612 00 08                  368 	.dw	Sstm8s_spi$SPI_Init$22-Sstm8s_spi$SPI_Init$17
      000614 03                     369 	.db	3
      000615 02                     370 	.sleb128	2
      000616 01                     371 	.db	1
      000617 09                     372 	.db	9
      000618 00 07                  373 	.dw	Sstm8s_spi$SPI_Init$25-Sstm8s_spi$SPI_Init$22
      00061A 03                     374 	.db	3
      00061B 04                     375 	.sleb128	4
      00061C 01                     376 	.db	1
      00061D 09                     377 	.db	9
      00061E 00 05                  378 	.dw	Sstm8s_spi$SPI_Init$27-Sstm8s_spi$SPI_Init$25
      000620 03                     379 	.db	3
      000621 04                     380 	.sleb128	4
      000622 01                     381 	.db	1
      000623 09                     382 	.db	9
      000624 00 08                  383 	.dw	Sstm8s_spi$SPI_Init$28-Sstm8s_spi$SPI_Init$27
      000626 03                     384 	.db	3
      000627 03                     385 	.sleb128	3
      000628 01                     386 	.db	1
      000629 09                     387 	.db	9
      00062A 00 06                  388 	.dw	Sstm8s_spi$SPI_Init$29-Sstm8s_spi$SPI_Init$28
      00062C 03                     389 	.db	3
      00062D 01                     390 	.sleb128	1
      00062E 01                     391 	.db	1
      00062F 09                     392 	.db	9
      000630 00 02                  393 	.dw	1+Sstm8s_spi$SPI_Init$31-Sstm8s_spi$SPI_Init$29
      000632 00                     394 	.db	0
      000633 01                     395 	.uleb128	1
      000634 01                     396 	.db	1
      000635 00                     397 	.db	0
      000636 05                     398 	.uleb128	5
      000637 02                     399 	.db	2
      000638 00 00 84 1C            400 	.dw	0,(Sstm8s_spi$SPI_Cmd$33)
      00063C 03                     401 	.db	3
      00063D F6 00                  402 	.sleb128	118
      00063F 01                     403 	.db	1
      000640 09                     404 	.db	9
      000641 00 00                  405 	.dw	Sstm8s_spi$SPI_Cmd$35-Sstm8s_spi$SPI_Cmd$33
      000643 03                     406 	.db	3
      000644 07                     407 	.sleb128	7
      000645 01                     408 	.db	1
      000646 09                     409 	.db	9
      000647 00 03                  410 	.dw	Sstm8s_spi$SPI_Cmd$36-Sstm8s_spi$SPI_Cmd$35
      000649 03                     411 	.db	3
      00064A 7E                     412 	.sleb128	-2
      00064B 01                     413 	.db	1
      00064C 09                     414 	.db	9
      00064D 00 04                  415 	.dw	Sstm8s_spi$SPI_Cmd$38-Sstm8s_spi$SPI_Cmd$36
      00064F 03                     416 	.db	3
      000650 02                     417 	.sleb128	2
      000651 01                     418 	.db	1
      000652 09                     419 	.db	9
      000653 00 07                  420 	.dw	Sstm8s_spi$SPI_Cmd$41-Sstm8s_spi$SPI_Cmd$38
      000655 03                     421 	.db	3
      000656 04                     422 	.sleb128	4
      000657 01                     423 	.db	1
      000658 09                     424 	.db	9
      000659 00 05                  425 	.dw	Sstm8s_spi$SPI_Cmd$43-Sstm8s_spi$SPI_Cmd$41
      00065B 03                     426 	.db	3
      00065C 02                     427 	.sleb128	2
      00065D 01                     428 	.db	1
      00065E 09                     429 	.db	9
      00065F 00 01                  430 	.dw	1+Sstm8s_spi$SPI_Cmd$44-Sstm8s_spi$SPI_Cmd$43
      000661 00                     431 	.db	0
      000662 01                     432 	.uleb128	1
      000663 01                     433 	.db	1
      000664 00                     434 	.db	0
      000665 05                     435 	.uleb128	5
      000666 02                     436 	.db	2
      000667 00 00 84 30            437 	.dw	0,(Sstm8s_spi$SPI_SendData$46)
      00066B 03                     438 	.db	3
      00066C A5 01                  439 	.sleb128	165
      00066E 01                     440 	.db	1
      00066F 09                     441 	.db	9
      000670 00 00                  442 	.dw	Sstm8s_spi$SPI_SendData$48-Sstm8s_spi$SPI_SendData$46
      000672 03                     443 	.db	3
      000673 02                     444 	.sleb128	2
      000674 01                     445 	.db	1
      000675 09                     446 	.db	9
      000676 00 06                  447 	.dw	Sstm8s_spi$SPI_SendData$49-Sstm8s_spi$SPI_SendData$48
      000678 03                     448 	.db	3
      000679 01                     449 	.sleb128	1
      00067A 01                     450 	.db	1
      00067B 09                     451 	.db	9
      00067C 00 01                  452 	.dw	1+Sstm8s_spi$SPI_SendData$50-Sstm8s_spi$SPI_SendData$49
      00067E 00                     453 	.db	0
      00067F 01                     454 	.uleb128	1
      000680 01                     455 	.db	1
      000681 00                     456 	.db	0
      000682 05                     457 	.uleb128	5
      000683 02                     458 	.db	2
      000684 00 00 84 37            459 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$52)
      000688 03                     460 	.db	3
      000689 B6 02                  461 	.sleb128	310
      00068B 01                     462 	.db	1
      00068C 09                     463 	.db	9
      00068D 00 00                  464 	.dw	Sstm8s_spi$SPI_GetFlagStatus$54-Sstm8s_spi$SPI_GetFlagStatus$52
      00068F 03                     465 	.db	3
      000690 07                     466 	.sleb128	7
      000691 01                     467 	.db	1
      000692 09                     468 	.db	9
      000693 00 07                  469 	.dw	Sstm8s_spi$SPI_GetFlagStatus$56-Sstm8s_spi$SPI_GetFlagStatus$54
      000695 03                     470 	.db	3
      000696 02                     471 	.sleb128	2
      000697 01                     472 	.db	1
      000698 09                     473 	.db	9
      000699 00 04                  474 	.dw	Sstm8s_spi$SPI_GetFlagStatus$59-Sstm8s_spi$SPI_GetFlagStatus$56
      00069B 03                     475 	.db	3
      00069C 04                     476 	.sleb128	4
      00069D 01                     477 	.db	1
      00069E 09                     478 	.db	9
      00069F 00 01                  479 	.dw	Sstm8s_spi$SPI_GetFlagStatus$61-Sstm8s_spi$SPI_GetFlagStatus$59
      0006A1 03                     480 	.db	3
      0006A2 04                     481 	.sleb128	4
      0006A3 01                     482 	.db	1
      0006A4 09                     483 	.db	9
      0006A5 00 00                  484 	.dw	Sstm8s_spi$SPI_GetFlagStatus$62-Sstm8s_spi$SPI_GetFlagStatus$61
      0006A7 03                     485 	.db	3
      0006A8 01                     486 	.sleb128	1
      0006A9 01                     487 	.db	1
      0006AA 09                     488 	.db	9
      0006AB 00 01                  489 	.dw	1+Sstm8s_spi$SPI_GetFlagStatus$63-Sstm8s_spi$SPI_GetFlagStatus$62
      0006AD 00                     490 	.db	0
      0006AE 01                     491 	.uleb128	1
      0006AF 01                     492 	.db	1
      0006B0 00                     493 	.db	0
      0006B1 05                     494 	.uleb128	5
      0006B2 02                     495 	.db	2
      0006B3 00 00 84 44            496 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$65)
      0006B7 03                     497 	.db	3
      0006B8 D9 02                  498 	.sleb128	345
      0006BA 01                     499 	.db	1
      0006BB 09                     500 	.db	9
      0006BC 00 00                  501 	.dw	Sstm8s_spi$SPI_ClearFlag$67-Sstm8s_spi$SPI_ClearFlag$65
      0006BE 03                     502 	.db	3
      0006BF 04                     503 	.sleb128	4
      0006C0 01                     504 	.db	1
      0006C1 09                     505 	.db	9
      0006C2 00 06                  506 	.dw	Sstm8s_spi$SPI_ClearFlag$68-Sstm8s_spi$SPI_ClearFlag$67
      0006C4 03                     507 	.db	3
      0006C5 01                     508 	.sleb128	1
      0006C6 01                     509 	.db	1
      0006C7 09                     510 	.db	9
      0006C8 00 01                  511 	.dw	1+Sstm8s_spi$SPI_ClearFlag$69-Sstm8s_spi$SPI_ClearFlag$68
      0006CA 00                     512 	.db	0
      0006CB 01                     513 	.uleb128	1
      0006CC 01                     514 	.db	1
      0006CD                        515 Ldebug_line_end:
                                    516 
                                    517 	.area .debug_loc (NOLOAD)
      000594                        518 Ldebug_loc_start:
      000594 00 00 84 44            519 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
      000598 00 00 84 4B            520 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$70)
      00059C 00 02                  521 	.dw	2
      00059E 78                     522 	.db	120
      00059F 01                     523 	.sleb128	1
      0005A0 00 00 00 00            524 	.dw	0,0
      0005A4 00 00 00 00            525 	.dw	0,0
      0005A8 00 00 84 37            526 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
      0005AC 00 00 84 44            527 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$64)
      0005B0 00 02                  528 	.dw	2
      0005B2 78                     529 	.db	120
      0005B3 01                     530 	.sleb128	1
      0005B4 00 00 00 00            531 	.dw	0,0
      0005B8 00 00 00 00            532 	.dw	0,0
      0005BC 00 00 84 30            533 	.dw	0,(Sstm8s_spi$SPI_SendData$47)
      0005C0 00 00 84 37            534 	.dw	0,(Sstm8s_spi$SPI_SendData$51)
      0005C4 00 02                  535 	.dw	2
      0005C6 78                     536 	.db	120
      0005C7 01                     537 	.sleb128	1
      0005C8 00 00 00 00            538 	.dw	0,0
      0005CC 00 00 00 00            539 	.dw	0,0
      0005D0 00 00 84 1C            540 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
      0005D4 00 00 84 30            541 	.dw	0,(Sstm8s_spi$SPI_Cmd$45)
      0005D8 00 02                  542 	.dw	2
      0005DA 78                     543 	.db	120
      0005DB 01                     544 	.sleb128	1
      0005DC 00 00 00 00            545 	.dw	0,0
      0005E0 00 00 00 00            546 	.dw	0,0
      0005E4 00 00 84 1B            547 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      0005E8 00 00 84 1C            548 	.dw	0,(Sstm8s_spi$SPI_Init$32)
      0005EC 00 02                  549 	.dw	2
      0005EE 78                     550 	.db	120
      0005EF 01                     551 	.sleb128	1
      0005F0 00 00 84 00            552 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      0005F4 00 00 84 1B            553 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      0005F8 00 02                  554 	.dw	2
      0005FA 78                     555 	.db	120
      0005FB 02                     556 	.sleb128	2
      0005FC 00 00 83 FE            557 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      000600 00 00 84 00            558 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      000604 00 02                  559 	.dw	2
      000606 78                     560 	.db	120
      000607 02                     561 	.sleb128	2
      000608 00 00 83 F9            562 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      00060C 00 00 83 FE            563 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      000610 00 02                  564 	.dw	2
      000612 78                     565 	.db	120
      000613 03                     566 	.sleb128	3
      000614 00 00 83 DF            567 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      000618 00 00 83 F9            568 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      00061C 00 02                  569 	.dw	2
      00061E 78                     570 	.db	120
      00061F 02                     571 	.sleb128	2
      000620 00 00 83 DE            572 	.dw	0,(Sstm8s_spi$SPI_Init$11)
      000624 00 00 83 DF            573 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      000628 00 02                  574 	.dw	2
      00062A 78                     575 	.db	120
      00062B 01                     576 	.sleb128	1
      00062C 00 00 00 00            577 	.dw	0,0
      000630 00 00 00 00            578 	.dw	0,0
      000634 00 00 83 C9            579 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
      000638 00 00 83 DE            580 	.dw	0,(Sstm8s_spi$SPI_DeInit$9)
      00063C 00 02                  581 	.dw	2
      00063E 78                     582 	.db	120
      00063F 01                     583 	.sleb128	1
      000640 00 00 00 00            584 	.dw	0,0
      000644 00 00 00 00            585 	.dw	0,0
                                    586 
                                    587 	.area .debug_abbrev (NOLOAD)
      0001AA                        588 Ldebug_abbrev:
      0001AA 04                     589 	.uleb128	4
      0001AB 05                     590 	.uleb128	5
      0001AC 00                     591 	.db	0
      0001AD 02                     592 	.uleb128	2
      0001AE 0A                     593 	.uleb128	10
      0001AF 03                     594 	.uleb128	3
      0001B0 08                     595 	.uleb128	8
      0001B1 49                     596 	.uleb128	73
      0001B2 13                     597 	.uleb128	19
      0001B3 00                     598 	.uleb128	0
      0001B4 00                     599 	.uleb128	0
      0001B5 03                     600 	.uleb128	3
      0001B6 2E                     601 	.uleb128	46
      0001B7 01                     602 	.db	1
      0001B8 01                     603 	.uleb128	1
      0001B9 13                     604 	.uleb128	19
      0001BA 03                     605 	.uleb128	3
      0001BB 08                     606 	.uleb128	8
      0001BC 11                     607 	.uleb128	17
      0001BD 01                     608 	.uleb128	1
      0001BE 12                     609 	.uleb128	18
      0001BF 01                     610 	.uleb128	1
      0001C0 3F                     611 	.uleb128	63
      0001C1 0C                     612 	.uleb128	12
      0001C2 40                     613 	.uleb128	64
      0001C3 06                     614 	.uleb128	6
      0001C4 00                     615 	.uleb128	0
      0001C5 00                     616 	.uleb128	0
      0001C6 08                     617 	.uleb128	8
      0001C7 34                     618 	.uleb128	52
      0001C8 00                     619 	.db	0
      0001C9 02                     620 	.uleb128	2
      0001CA 0A                     621 	.uleb128	10
      0001CB 03                     622 	.uleb128	3
      0001CC 08                     623 	.uleb128	8
      0001CD 49                     624 	.uleb128	73
      0001CE 13                     625 	.uleb128	19
      0001CF 00                     626 	.uleb128	0
      0001D0 00                     627 	.uleb128	0
      0001D1 07                     628 	.uleb128	7
      0001D2 2E                     629 	.uleb128	46
      0001D3 01                     630 	.db	1
      0001D4 01                     631 	.uleb128	1
      0001D5 13                     632 	.uleb128	19
      0001D6 03                     633 	.uleb128	3
      0001D7 08                     634 	.uleb128	8
      0001D8 11                     635 	.uleb128	17
      0001D9 01                     636 	.uleb128	1
      0001DA 12                     637 	.uleb128	18
      0001DB 01                     638 	.uleb128	1
      0001DC 3F                     639 	.uleb128	63
      0001DD 0C                     640 	.uleb128	12
      0001DE 40                     641 	.uleb128	64
      0001DF 06                     642 	.uleb128	6
      0001E0 49                     643 	.uleb128	73
      0001E1 13                     644 	.uleb128	19
      0001E2 00                     645 	.uleb128	0
      0001E3 00                     646 	.uleb128	0
      0001E4 01                     647 	.uleb128	1
      0001E5 11                     648 	.uleb128	17
      0001E6 01                     649 	.db	1
      0001E7 03                     650 	.uleb128	3
      0001E8 08                     651 	.uleb128	8
      0001E9 10                     652 	.uleb128	16
      0001EA 06                     653 	.uleb128	6
      0001EB 13                     654 	.uleb128	19
      0001EC 0B                     655 	.uleb128	11
      0001ED 25                     656 	.uleb128	37
      0001EE 08                     657 	.uleb128	8
      0001EF 00                     658 	.uleb128	0
      0001F0 00                     659 	.uleb128	0
      0001F1 05                     660 	.uleb128	5
      0001F2 0B                     661 	.uleb128	11
      0001F3 00                     662 	.db	0
      0001F4 11                     663 	.uleb128	17
      0001F5 01                     664 	.uleb128	1
      0001F6 12                     665 	.uleb128	18
      0001F7 01                     666 	.uleb128	1
      0001F8 00                     667 	.uleb128	0
      0001F9 00                     668 	.uleb128	0
      0001FA 02                     669 	.uleb128	2
      0001FB 2E                     670 	.uleb128	46
      0001FC 00                     671 	.db	0
      0001FD 03                     672 	.uleb128	3
      0001FE 08                     673 	.uleb128	8
      0001FF 11                     674 	.uleb128	17
      000200 01                     675 	.uleb128	1
      000201 12                     676 	.uleb128	18
      000202 01                     677 	.uleb128	1
      000203 3F                     678 	.uleb128	63
      000204 0C                     679 	.uleb128	12
      000205 40                     680 	.uleb128	64
      000206 06                     681 	.uleb128	6
      000207 00                     682 	.uleb128	0
      000208 00                     683 	.uleb128	0
      000209 09                     684 	.uleb128	9
      00020A 2E                     685 	.uleb128	46
      00020B 01                     686 	.db	1
      00020C 03                     687 	.uleb128	3
      00020D 08                     688 	.uleb128	8
      00020E 11                     689 	.uleb128	17
      00020F 01                     690 	.uleb128	1
      000210 12                     691 	.uleb128	18
      000211 01                     692 	.uleb128	1
      000212 3F                     693 	.uleb128	63
      000213 0C                     694 	.uleb128	12
      000214 40                     695 	.uleb128	64
      000215 06                     696 	.uleb128	6
      000216 00                     697 	.uleb128	0
      000217 00                     698 	.uleb128	0
      000218 06                     699 	.uleb128	6
      000219 24                     700 	.uleb128	36
      00021A 00                     701 	.db	0
      00021B 03                     702 	.uleb128	3
      00021C 08                     703 	.uleb128	8
      00021D 0B                     704 	.uleb128	11
      00021E 0B                     705 	.uleb128	11
      00021F 3E                     706 	.uleb128	62
      000220 0B                     707 	.uleb128	11
      000221 00                     708 	.uleb128	0
      000222 00                     709 	.uleb128	0
      000223 00                     710 	.uleb128	0
                                    711 
                                    712 	.area .debug_info (NOLOAD)
      0007C7 00 00 02 3B            713 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0007CB                        714 Ldebug_info_start:
      0007CB 00 02                  715 	.dw	2
      0007CD 00 00 01 AA            716 	.dw	0,(Ldebug_abbrev)
      0007D1 04                     717 	.db	4
      0007D2 01                     718 	.uleb128	1
      0007D3 53 6F 75 72 63 65 2F   719 	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 73 70 69
             2E 63
      0007F1 00                     720 	.db	0
      0007F2 00 00 05 2B            721 	.dw	0,(Ldebug_line_start+-4)
      0007F6 01                     722 	.db	1
      0007F7 53 44 43 43 20 76 65   723 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000810 00                     724 	.db	0
      000811 02                     725 	.uleb128	2
      000812 53 50 49 5F 44 65 49   726 	.ascii "SPI_DeInit"
             6E 69 74
      00081C 00                     727 	.db	0
      00081D 00 00 83 C9            728 	.dw	0,(_SPI_DeInit)
      000821 00 00 83 DE            729 	.dw	0,(XG$SPI_DeInit$0$0+1)
      000825 01                     730 	.db	1
      000826 00 00 06 34            731 	.dw	0,(Ldebug_loc_start+160)
      00082A 03                     732 	.uleb128	3
      00082B 00 00 01 38            733 	.dw	0,312
      00082F 53 50 49 5F 49 6E 69   734 	.ascii "SPI_Init"
             74
      000837 00                     735 	.db	0
      000838 00 00 83 DE            736 	.dw	0,(_SPI_Init)
      00083C 00 00 84 1C            737 	.dw	0,(XG$SPI_Init$0$0+1)
      000840 01                     738 	.db	1
      000841 00 00 05 E4            739 	.dw	0,(Ldebug_loc_start+80)
      000845 04                     740 	.uleb128	4
      000846 02                     741 	.db	2
      000847 91                     742 	.db	145
      000848 02                     743 	.sleb128	2
      000849 46 69 72 73 74 42 69   744 	.ascii "FirstBit"
             74
      000851 00                     745 	.db	0
      000852 00 00 01 38            746 	.dw	0,312
      000856 04                     747 	.uleb128	4
      000857 02                     748 	.db	2
      000858 91                     749 	.db	145
      000859 03                     750 	.sleb128	3
      00085A 42 61 75 64 52 61 74   751 	.ascii "BaudRatePrescaler"
             65 50 72 65 73 63 61
             6C 65 72
      00086B 00                     752 	.db	0
      00086C 00 00 01 38            753 	.dw	0,312
      000870 04                     754 	.uleb128	4
      000871 02                     755 	.db	2
      000872 91                     756 	.db	145
      000873 04                     757 	.sleb128	4
      000874 4D 6F 64 65            758 	.ascii "Mode"
      000878 00                     759 	.db	0
      000879 00 00 01 38            760 	.dw	0,312
      00087D 04                     761 	.uleb128	4
      00087E 02                     762 	.db	2
      00087F 91                     763 	.db	145
      000880 05                     764 	.sleb128	5
      000881 43 6C 6F 63 6B 50 6F   765 	.ascii "ClockPolarity"
             6C 61 72 69 74 79
      00088E 00                     766 	.db	0
      00088F 00 00 01 38            767 	.dw	0,312
      000893 04                     768 	.uleb128	4
      000894 02                     769 	.db	2
      000895 91                     770 	.db	145
      000896 06                     771 	.sleb128	6
      000897 43 6C 6F 63 6B 50 68   772 	.ascii "ClockPhase"
             61 73 65
      0008A1 00                     773 	.db	0
      0008A2 00 00 01 38            774 	.dw	0,312
      0008A6 04                     775 	.uleb128	4
      0008A7 02                     776 	.db	2
      0008A8 91                     777 	.db	145
      0008A9 07                     778 	.sleb128	7
      0008AA 44 61 74 61 5F 44 69   779 	.ascii "Data_Direction"
             72 65 63 74 69 6F 6E
      0008B8 00                     780 	.db	0
      0008B9 00 00 01 38            781 	.dw	0,312
      0008BD 04                     782 	.uleb128	4
      0008BE 02                     783 	.db	2
      0008BF 91                     784 	.db	145
      0008C0 08                     785 	.sleb128	8
      0008C1 53 6C 61 76 65 5F 4D   786 	.ascii "Slave_Management"
             61 6E 61 67 65 6D 65
             6E 74
      0008D1 00                     787 	.db	0
      0008D2 00 00 01 38            788 	.dw	0,312
      0008D6 04                     789 	.uleb128	4
      0008D7 02                     790 	.db	2
      0008D8 91                     791 	.db	145
      0008D9 09                     792 	.sleb128	9
      0008DA 43 52 43 50 6F 6C 79   793 	.ascii "CRCPolynomial"
             6E 6F 6D 69 61 6C
      0008E7 00                     794 	.db	0
      0008E8 00 00 01 38            795 	.dw	0,312
      0008EC 05                     796 	.uleb128	5
      0008ED 00 00 84 00            797 	.dw	0,(Sstm8s_spi$SPI_Init$21)
      0008F1 00 00 84 05            798 	.dw	0,(Sstm8s_spi$SPI_Init$23)
      0008F5 05                     799 	.uleb128	5
      0008F6 00 00 84 07            800 	.dw	0,(Sstm8s_spi$SPI_Init$24)
      0008FA 00 00 84 0C            801 	.dw	0,(Sstm8s_spi$SPI_Init$26)
      0008FE 00                     802 	.uleb128	0
      0008FF 06                     803 	.uleb128	6
      000900 75 6E 73 69 67 6E 65   804 	.ascii "unsigned char"
             64 20 63 68 61 72
      00090D 00                     805 	.db	0
      00090E 01                     806 	.db	1
      00090F 08                     807 	.db	8
      000910 03                     808 	.uleb128	3
      000911 00 00 01 87            809 	.dw	0,391
      000915 53 50 49 5F 43 6D 64   810 	.ascii "SPI_Cmd"
      00091C 00                     811 	.db	0
      00091D 00 00 84 1C            812 	.dw	0,(_SPI_Cmd)
      000921 00 00 84 30            813 	.dw	0,(XG$SPI_Cmd$0$0+1)
      000925 01                     814 	.db	1
      000926 00 00 05 D0            815 	.dw	0,(Ldebug_loc_start+60)
      00092A 04                     816 	.uleb128	4
      00092B 02                     817 	.db	2
      00092C 91                     818 	.db	145
      00092D 02                     819 	.sleb128	2
      00092E 4E 65 77 53 74 61 74   820 	.ascii "NewState"
             65
      000936 00                     821 	.db	0
      000937 00 00 01 38            822 	.dw	0,312
      00093B 05                     823 	.uleb128	5
      00093C 00 00 84 23            824 	.dw	0,(Sstm8s_spi$SPI_Cmd$37)
      000940 00 00 84 28            825 	.dw	0,(Sstm8s_spi$SPI_Cmd$39)
      000944 05                     826 	.uleb128	5
      000945 00 00 84 2A            827 	.dw	0,(Sstm8s_spi$SPI_Cmd$40)
      000949 00 00 84 2F            828 	.dw	0,(Sstm8s_spi$SPI_Cmd$42)
      00094D 00                     829 	.uleb128	0
      00094E 03                     830 	.uleb128	3
      00094F 00 00 01 B4            831 	.dw	0,436
      000953 53 50 49 5F 53 65 6E   832 	.ascii "SPI_SendData"
             64 44 61 74 61
      00095F 00                     833 	.db	0
      000960 00 00 84 30            834 	.dw	0,(_SPI_SendData)
      000964 00 00 84 37            835 	.dw	0,(XG$SPI_SendData$0$0+1)
      000968 01                     836 	.db	1
      000969 00 00 05 BC            837 	.dw	0,(Ldebug_loc_start+40)
      00096D 04                     838 	.uleb128	4
      00096E 02                     839 	.db	2
      00096F 91                     840 	.db	145
      000970 02                     841 	.sleb128	2
      000971 44 61 74 61            842 	.ascii "Data"
      000975 00                     843 	.db	0
      000976 00 00 01 38            844 	.dw	0,312
      00097A 00                     845 	.uleb128	0
      00097B 07                     846 	.uleb128	7
      00097C 00 00 02 0E            847 	.dw	0,526
      000980 53 50 49 5F 47 65 74   848 	.ascii "SPI_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000991 00                     849 	.db	0
      000992 00 00 84 37            850 	.dw	0,(_SPI_GetFlagStatus)
      000996 00 00 84 44            851 	.dw	0,(XG$SPI_GetFlagStatus$0$0+1)
      00099A 01                     852 	.db	1
      00099B 00 00 05 A8            853 	.dw	0,(Ldebug_loc_start+20)
      00099F 00 00 01 38            854 	.dw	0,312
      0009A3 04                     855 	.uleb128	4
      0009A4 02                     856 	.db	2
      0009A5 91                     857 	.db	145
      0009A6 02                     858 	.sleb128	2
      0009A7 53 50 49 5F 46 4C 41   859 	.ascii "SPI_FLAG"
             47
      0009AF 00                     860 	.db	0
      0009B0 00 00 01 38            861 	.dw	0,312
      0009B4 05                     862 	.uleb128	5
      0009B5 00 00 84 3E            863 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$55)
      0009B9 00 00 84 40            864 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$57)
      0009BD 05                     865 	.uleb128	5
      0009BE 00 00 84 42            866 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$58)
      0009C2 00 00 84 43            867 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$60)
      0009C6 08                     868 	.uleb128	8
      0009C7 01                     869 	.db	1
      0009C8 50                     870 	.db	80
      0009C9 73 74 61 74 75 73      871 	.ascii "status"
      0009CF 00                     872 	.db	0
      0009D0 00 00 01 38            873 	.dw	0,312
      0009D4 00                     874 	.uleb128	0
      0009D5 09                     875 	.uleb128	9
      0009D6 53 50 49 5F 43 6C 65   876 	.ascii "SPI_ClearFlag"
             61 72 46 6C 61 67
      0009E3 00                     877 	.db	0
      0009E4 00 00 84 44            878 	.dw	0,(_SPI_ClearFlag)
      0009E8 00 00 84 4B            879 	.dw	0,(XG$SPI_ClearFlag$0$0+1)
      0009EC 01                     880 	.db	1
      0009ED 00 00 05 94            881 	.dw	0,(Ldebug_loc_start)
      0009F1 04                     882 	.uleb128	4
      0009F2 02                     883 	.db	2
      0009F3 91                     884 	.db	145
      0009F4 02                     885 	.sleb128	2
      0009F5 53 50 49 5F 46 4C 41   886 	.ascii "SPI_FLAG"
             47
      0009FD 00                     887 	.db	0
      0009FE 00 00 01 38            888 	.dw	0,312
      000A02 00                     889 	.uleb128	0
      000A03 00                     890 	.uleb128	0
      000A04 00                     891 	.uleb128	0
      000A05 00                     892 	.uleb128	0
      000A06                        893 Ldebug_info_end:
                                    894 
                                    895 	.area .debug_pubnames (NOLOAD)
      0001D9 00 00 00 6F            896 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0001DD                        897 Ldebug_pubnames_start:
      0001DD 00 02                  898 	.dw	2
      0001DF 00 00 07 C7            899 	.dw	0,(Ldebug_info_start-4)
      0001E3 00 00 02 3F            900 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0001E7 00 00 00 4A            901 	.dw	0,74
      0001EB 53 50 49 5F 44 65 49   902 	.ascii "SPI_DeInit"
             6E 69 74
      0001F5 00                     903 	.db	0
      0001F6 00 00 00 63            904 	.dw	0,99
      0001FA 53 50 49 5F 49 6E 69   905 	.ascii "SPI_Init"
             74
      000202 00                     906 	.db	0
      000203 00 00 01 49            907 	.dw	0,329
      000207 53 50 49 5F 43 6D 64   908 	.ascii "SPI_Cmd"
      00020E 00                     909 	.db	0
      00020F 00 00 01 87            910 	.dw	0,391
      000213 53 50 49 5F 53 65 6E   911 	.ascii "SPI_SendData"
             64 44 61 74 61
      00021F 00                     912 	.db	0
      000220 00 00 01 B4            913 	.dw	0,436
      000224 53 50 49 5F 47 65 74   914 	.ascii "SPI_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000235 00                     915 	.db	0
      000236 00 00 02 0E            916 	.dw	0,526
      00023A 53 50 49 5F 43 6C 65   917 	.ascii "SPI_ClearFlag"
             61 72 46 6C 61 67
      000247 00                     918 	.db	0
      000248 00 00 00 00            919 	.dw	0,0
      00024C                        920 Ldebug_pubnames_end:
                                    921 
                                    922 	.area .debug_frame (NOLOAD)
      0004A1 00 00                  923 	.dw	0
      0004A3 00 0E                  924 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0004A5                        925 Ldebug_CIE0_start:
      0004A5 FF FF                  926 	.dw	0xffff
      0004A7 FF FF                  927 	.dw	0xffff
      0004A9 01                     928 	.db	1
      0004AA 00                     929 	.db	0
      0004AB 01                     930 	.uleb128	1
      0004AC 7F                     931 	.sleb128	-1
      0004AD 09                     932 	.db	9
      0004AE 0C                     933 	.db	12
      0004AF 08                     934 	.uleb128	8
      0004B0 02                     935 	.uleb128	2
      0004B1 89                     936 	.db	137
      0004B2 01                     937 	.uleb128	1
      0004B3                        938 Ldebug_CIE0_end:
      0004B3 00 00 00 13            939 	.dw	0,19
      0004B7 00 00 04 A1            940 	.dw	0,(Ldebug_CIE0_start-4)
      0004BB 00 00 84 44            941 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)	;initial loc
      0004BF 00 00 00 07            942 	.dw	0,Sstm8s_spi$SPI_ClearFlag$70-Sstm8s_spi$SPI_ClearFlag$66
      0004C3 01                     943 	.db	1
      0004C4 00 00 84 44            944 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
      0004C8 0E                     945 	.db	14
      0004C9 02                     946 	.uleb128	2
                                    947 
                                    948 	.area .debug_frame (NOLOAD)
      0004CA 00 00                  949 	.dw	0
      0004CC 00 0E                  950 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0004CE                        951 Ldebug_CIE1_start:
      0004CE FF FF                  952 	.dw	0xffff
      0004D0 FF FF                  953 	.dw	0xffff
      0004D2 01                     954 	.db	1
      0004D3 00                     955 	.db	0
      0004D4 01                     956 	.uleb128	1
      0004D5 7F                     957 	.sleb128	-1
      0004D6 09                     958 	.db	9
      0004D7 0C                     959 	.db	12
      0004D8 08                     960 	.uleb128	8
      0004D9 02                     961 	.uleb128	2
      0004DA 89                     962 	.db	137
      0004DB 01                     963 	.uleb128	1
      0004DC                        964 Ldebug_CIE1_end:
      0004DC 00 00 00 13            965 	.dw	0,19
      0004E0 00 00 04 CA            966 	.dw	0,(Ldebug_CIE1_start-4)
      0004E4 00 00 84 37            967 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)	;initial loc
      0004E8 00 00 00 0D            968 	.dw	0,Sstm8s_spi$SPI_GetFlagStatus$64-Sstm8s_spi$SPI_GetFlagStatus$53
      0004EC 01                     969 	.db	1
      0004ED 00 00 84 37            970 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
      0004F1 0E                     971 	.db	14
      0004F2 02                     972 	.uleb128	2
                                    973 
                                    974 	.area .debug_frame (NOLOAD)
      0004F3 00 00                  975 	.dw	0
      0004F5 00 0E                  976 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0004F7                        977 Ldebug_CIE2_start:
      0004F7 FF FF                  978 	.dw	0xffff
      0004F9 FF FF                  979 	.dw	0xffff
      0004FB 01                     980 	.db	1
      0004FC 00                     981 	.db	0
      0004FD 01                     982 	.uleb128	1
      0004FE 7F                     983 	.sleb128	-1
      0004FF 09                     984 	.db	9
      000500 0C                     985 	.db	12
      000501 08                     986 	.uleb128	8
      000502 02                     987 	.uleb128	2
      000503 89                     988 	.db	137
      000504 01                     989 	.uleb128	1
      000505                        990 Ldebug_CIE2_end:
      000505 00 00 00 13            991 	.dw	0,19
      000509 00 00 04 F3            992 	.dw	0,(Ldebug_CIE2_start-4)
      00050D 00 00 84 30            993 	.dw	0,(Sstm8s_spi$SPI_SendData$47)	;initial loc
      000511 00 00 00 07            994 	.dw	0,Sstm8s_spi$SPI_SendData$51-Sstm8s_spi$SPI_SendData$47
      000515 01                     995 	.db	1
      000516 00 00 84 30            996 	.dw	0,(Sstm8s_spi$SPI_SendData$47)
      00051A 0E                     997 	.db	14
      00051B 02                     998 	.uleb128	2
                                    999 
                                   1000 	.area .debug_frame (NOLOAD)
      00051C 00 00                 1001 	.dw	0
      00051E 00 0E                 1002 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      000520                       1003 Ldebug_CIE3_start:
      000520 FF FF                 1004 	.dw	0xffff
      000522 FF FF                 1005 	.dw	0xffff
      000524 01                    1006 	.db	1
      000525 00                    1007 	.db	0
      000526 01                    1008 	.uleb128	1
      000527 7F                    1009 	.sleb128	-1
      000528 09                    1010 	.db	9
      000529 0C                    1011 	.db	12
      00052A 08                    1012 	.uleb128	8
      00052B 02                    1013 	.uleb128	2
      00052C 89                    1014 	.db	137
      00052D 01                    1015 	.uleb128	1
      00052E                       1016 Ldebug_CIE3_end:
      00052E 00 00 00 13           1017 	.dw	0,19
      000532 00 00 05 1C           1018 	.dw	0,(Ldebug_CIE3_start-4)
      000536 00 00 84 1C           1019 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)	;initial loc
      00053A 00 00 00 14           1020 	.dw	0,Sstm8s_spi$SPI_Cmd$45-Sstm8s_spi$SPI_Cmd$34
      00053E 01                    1021 	.db	1
      00053F 00 00 84 1C           1022 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
      000543 0E                    1023 	.db	14
      000544 02                    1024 	.uleb128	2
                                   1025 
                                   1026 	.area .debug_frame (NOLOAD)
      000545 00 00                 1027 	.dw	0
      000547 00 0E                 1028 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000549                       1029 Ldebug_CIE4_start:
      000549 FF FF                 1030 	.dw	0xffff
      00054B FF FF                 1031 	.dw	0xffff
      00054D 01                    1032 	.db	1
      00054E 00                    1033 	.db	0
      00054F 01                    1034 	.uleb128	1
      000550 7F                    1035 	.sleb128	-1
      000551 09                    1036 	.db	9
      000552 0C                    1037 	.db	12
      000553 08                    1038 	.uleb128	8
      000554 02                    1039 	.uleb128	2
      000555 89                    1040 	.db	137
      000556 01                    1041 	.uleb128	1
      000557                       1042 Ldebug_CIE4_end:
      000557 00 00 00 36           1043 	.dw	0,54
      00055B 00 00 05 45           1044 	.dw	0,(Ldebug_CIE4_start-4)
      00055F 00 00 83 DE           1045 	.dw	0,(Sstm8s_spi$SPI_Init$11)	;initial loc
      000563 00 00 00 3E           1046 	.dw	0,Sstm8s_spi$SPI_Init$32-Sstm8s_spi$SPI_Init$11
      000567 01                    1047 	.db	1
      000568 00 00 83 DE           1048 	.dw	0,(Sstm8s_spi$SPI_Init$11)
      00056C 0E                    1049 	.db	14
      00056D 02                    1050 	.uleb128	2
      00056E 01                    1051 	.db	1
      00056F 00 00 83 DF           1052 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      000573 0E                    1053 	.db	14
      000574 03                    1054 	.uleb128	3
      000575 01                    1055 	.db	1
      000576 00 00 83 F9           1056 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      00057A 0E                    1057 	.db	14
      00057B 04                    1058 	.uleb128	4
      00057C 01                    1059 	.db	1
      00057D 00 00 83 FE           1060 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      000581 0E                    1061 	.db	14
      000582 03                    1062 	.uleb128	3
      000583 01                    1063 	.db	1
      000584 00 00 84 00           1064 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      000588 0E                    1065 	.db	14
      000589 03                    1066 	.uleb128	3
      00058A 01                    1067 	.db	1
      00058B 00 00 84 1B           1068 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      00058F 0E                    1069 	.db	14
      000590 02                    1070 	.uleb128	2
                                   1071 
                                   1072 	.area .debug_frame (NOLOAD)
      000591 00 00                 1073 	.dw	0
      000593 00 0E                 1074 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      000595                       1075 Ldebug_CIE5_start:
      000595 FF FF                 1076 	.dw	0xffff
      000597 FF FF                 1077 	.dw	0xffff
      000599 01                    1078 	.db	1
      00059A 00                    1079 	.db	0
      00059B 01                    1080 	.uleb128	1
      00059C 7F                    1081 	.sleb128	-1
      00059D 09                    1082 	.db	9
      00059E 0C                    1083 	.db	12
      00059F 08                    1084 	.uleb128	8
      0005A0 02                    1085 	.uleb128	2
      0005A1 89                    1086 	.db	137
      0005A2 01                    1087 	.uleb128	1
      0005A3                       1088 Ldebug_CIE5_end:
      0005A3 00 00 00 13           1089 	.dw	0,19
      0005A7 00 00 05 91           1090 	.dw	0,(Ldebug_CIE5_start-4)
      0005AB 00 00 83 C9           1091 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)	;initial loc
      0005AF 00 00 00 15           1092 	.dw	0,Sstm8s_spi$SPI_DeInit$9-Sstm8s_spi$SPI_DeInit$1
      0005B3 01                    1093 	.db	1
      0005B4 00 00 83 C9           1094 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
      0005B8 0E                    1095 	.db	14
      0005B9 02                    1096 	.uleb128	2
