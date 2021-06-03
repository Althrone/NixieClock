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
      0081DB                         59 _SPI_DeInit:
                           000000    60 	Sstm8s_spi$SPI_DeInit$1 ==.
                           000000    61 	Sstm8s_spi$SPI_DeInit$2 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
      0081DB 35 00 52 00      [ 1]   63 	mov	0x5200+0, #0x00
                           000004    64 	Sstm8s_spi$SPI_DeInit$3 ==.
                                     65 ;	Source/Std_Lib/Src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
      0081DF 35 00 52 01      [ 1]   66 	mov	0x5201+0, #0x00
                           000008    67 	Sstm8s_spi$SPI_DeInit$4 ==.
                                     68 ;	Source/Std_Lib/Src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
      0081E3 35 00 52 02      [ 1]   69 	mov	0x5202+0, #0x00
                           00000C    70 	Sstm8s_spi$SPI_DeInit$5 ==.
                                     71 ;	Source/Std_Lib/Src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
      0081E7 35 02 52 03      [ 1]   72 	mov	0x5203+0, #0x02
                           000010    73 	Sstm8s_spi$SPI_DeInit$6 ==.
                                     74 ;	Source/Std_Lib/Src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
      0081EB 35 07 52 05      [ 1]   75 	mov	0x5205+0, #0x07
                           000014    76 	Sstm8s_spi$SPI_DeInit$7 ==.
                                     77 ;	Source/Std_Lib/Src/stm8s_spi.c: 57: }
                           000014    78 	Sstm8s_spi$SPI_DeInit$8 ==.
                           000014    79 	XG$SPI_DeInit$0$0 ==.
      0081EF 81               [ 4]   80 	ret
                           000015    81 	Sstm8s_spi$SPI_DeInit$9 ==.
                           000015    82 	Sstm8s_spi$SPI_Init$10 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     84 ;	-----------------------------------------
                                     85 ;	 function SPI_Init
                                     86 ;	-----------------------------------------
      0081F0                         87 _SPI_Init:
                           000015    88 	Sstm8s_spi$SPI_Init$11 ==.
      0081F0 88               [ 1]   89 	push	a
                           000016    90 	Sstm8s_spi$SPI_Init$12 ==.
                           000016    91 	Sstm8s_spi$SPI_Init$13 ==.
                                     92 ;	Source/Std_Lib/Src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
      0081F1 7B 04            [ 1]   93 	ld	a, (0x04, sp)
      0081F3 1A 05            [ 1]   94 	or	a, (0x05, sp)
      0081F5 6B 01            [ 1]   95 	ld	(0x01, sp), a
                           00001C    96 	Sstm8s_spi$SPI_Init$14 ==.
                                     97 ;	Source/Std_Lib/Src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
      0081F7 7B 07            [ 1]   98 	ld	a, (0x07, sp)
      0081F9 1A 08            [ 1]   99 	or	a, (0x08, sp)
      0081FB 1A 01            [ 1]  100 	or	a, (0x01, sp)
      0081FD C7 52 00         [ 1]  101 	ld	0x5200, a
                           000025   102 	Sstm8s_spi$SPI_Init$15 ==.
                                    103 ;	Source/Std_Lib/Src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
      008200 7B 09            [ 1]  104 	ld	a, (0x09, sp)
      008202 1A 0A            [ 1]  105 	or	a, (0x0a, sp)
      008204 C7 52 01         [ 1]  106 	ld	0x5201, a
                           00002C   107 	Sstm8s_spi$SPI_Init$16 ==.
                                    108 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      008207 C6 52 01         [ 1]  109 	ld	a, 0x5201
                           00002F   110 	Sstm8s_spi$SPI_Init$17 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
      00820A 88               [ 1]  112 	push	a
                           000030   113 	Sstm8s_spi$SPI_Init$18 ==.
      00820B 7B 07            [ 1]  114 	ld	a, (0x07, sp)
      00820D A1 04            [ 1]  115 	cp	a, #0x04
      00820F 84               [ 1]  116 	pop	a
                           000035   117 	Sstm8s_spi$SPI_Init$19 ==.
      008210 26 07            [ 1]  118 	jrne	00102$
                           000037   119 	Sstm8s_spi$SPI_Init$20 ==.
                           000037   120 	Sstm8s_spi$SPI_Init$21 ==.
                           000037   121 	Sstm8s_spi$SPI_Init$22 ==.
                                    122 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      008212 AA 01            [ 1]  123 	or	a, #0x01
      008214 C7 52 01         [ 1]  124 	ld	0x5201, a
                           00003C   125 	Sstm8s_spi$SPI_Init$23 ==.
      008217 20 05            [ 2]  126 	jra	00103$
      008219                        127 00102$:
                           00003E   128 	Sstm8s_spi$SPI_Init$24 ==.
                           00003E   129 	Sstm8s_spi$SPI_Init$25 ==.
                                    130 ;	Source/Std_Lib/Src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      008219 A4 FE            [ 1]  131 	and	a, #0xfe
      00821B C7 52 01         [ 1]  132 	ld	0x5201, a
                           000043   133 	Sstm8s_spi$SPI_Init$26 ==.
      00821E                        134 00103$:
                           000043   135 	Sstm8s_spi$SPI_Init$27 ==.
                                    136 ;	Source/Std_Lib/Src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
      00821E C6 52 00         [ 1]  137 	ld	a, 0x5200
      008221 1A 06            [ 1]  138 	or	a, (0x06, sp)
      008223 C7 52 00         [ 1]  139 	ld	0x5200, a
                           00004B   140 	Sstm8s_spi$SPI_Init$28 ==.
                                    141 ;	Source/Std_Lib/Src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
      008226 AE 52 05         [ 2]  142 	ldw	x, #0x5205
      008229 7B 0B            [ 1]  143 	ld	a, (0x0b, sp)
      00822B F7               [ 1]  144 	ld	(x), a
                           000051   145 	Sstm8s_spi$SPI_Init$29 ==.
                                    146 ;	Source/Std_Lib/Src/stm8s_spi.c: 111: }
      00822C 84               [ 1]  147 	pop	a
                           000052   148 	Sstm8s_spi$SPI_Init$30 ==.
                           000052   149 	Sstm8s_spi$SPI_Init$31 ==.
                           000052   150 	XG$SPI_Init$0$0 ==.
      00822D 81               [ 4]  151 	ret
                           000053   152 	Sstm8s_spi$SPI_Init$32 ==.
                           000053   153 	Sstm8s_spi$SPI_Cmd$33 ==.
                                    154 ;	Source/Std_Lib/Src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    155 ;	-----------------------------------------
                                    156 ;	 function SPI_Cmd
                                    157 ;	-----------------------------------------
      00822E                        158 _SPI_Cmd:
                           000053   159 	Sstm8s_spi$SPI_Cmd$34 ==.
                           000053   160 	Sstm8s_spi$SPI_Cmd$35 ==.
                                    161 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      00822E C6 52 00         [ 1]  162 	ld	a, 0x5200
                           000056   163 	Sstm8s_spi$SPI_Cmd$36 ==.
                                    164 ;	Source/Std_Lib/Src/stm8s_spi.c: 124: if (NewState != DISABLE)
      008231 0D 03            [ 1]  165 	tnz	(0x03, sp)
      008233 27 07            [ 1]  166 	jreq	00102$
                           00005A   167 	Sstm8s_spi$SPI_Cmd$37 ==.
                           00005A   168 	Sstm8s_spi$SPI_Cmd$38 ==.
                                    169 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      008235 AA 40            [ 1]  170 	or	a, #0x40
      008237 C7 52 00         [ 1]  171 	ld	0x5200, a
                           00005F   172 	Sstm8s_spi$SPI_Cmd$39 ==.
      00823A 20 05            [ 2]  173 	jra	00104$
      00823C                        174 00102$:
                           000061   175 	Sstm8s_spi$SPI_Cmd$40 ==.
                           000061   176 	Sstm8s_spi$SPI_Cmd$41 ==.
                                    177 ;	Source/Std_Lib/Src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
      00823C A4 BF            [ 1]  178 	and	a, #0xbf
      00823E C7 52 00         [ 1]  179 	ld	0x5200, a
                           000066   180 	Sstm8s_spi$SPI_Cmd$42 ==.
      008241                        181 00104$:
                           000066   182 	Sstm8s_spi$SPI_Cmd$43 ==.
                                    183 ;	Source/Std_Lib/Src/stm8s_spi.c: 132: }
                           000066   184 	Sstm8s_spi$SPI_Cmd$44 ==.
                           000066   185 	XG$SPI_Cmd$0$0 ==.
      008241 81               [ 4]  186 	ret
                           000067   187 	Sstm8s_spi$SPI_Cmd$45 ==.
                           000067   188 	Sstm8s_spi$SPI_SendData$46 ==.
                                    189 ;	Source/Std_Lib/Src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    190 ;	-----------------------------------------
                                    191 ;	 function SPI_SendData
                                    192 ;	-----------------------------------------
      008242                        193 _SPI_SendData:
                           000067   194 	Sstm8s_spi$SPI_SendData$47 ==.
                           000067   195 	Sstm8s_spi$SPI_SendData$48 ==.
                                    196 ;	Source/Std_Lib/Src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      008242 AE 52 04         [ 2]  197 	ldw	x, #0x5204
      008245 7B 03            [ 1]  198 	ld	a, (0x03, sp)
      008247 F7               [ 1]  199 	ld	(x), a
                           00006D   200 	Sstm8s_spi$SPI_SendData$49 ==.
                                    201 ;	Source/Std_Lib/Src/stm8s_spi.c: 169: }
                           00006D   202 	Sstm8s_spi$SPI_SendData$50 ==.
                           00006D   203 	XG$SPI_SendData$0$0 ==.
      008248 81               [ 4]  204 	ret
                           00006E   205 	Sstm8s_spi$SPI_SendData$51 ==.
                           00006E   206 	Sstm8s_spi$SPI_GetFlagStatus$52 ==.
                                    207 ;	Source/Std_Lib/Src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    208 ;	-----------------------------------------
                                    209 ;	 function SPI_GetFlagStatus
                                    210 ;	-----------------------------------------
      008249                        211 _SPI_GetFlagStatus:
                           00006E   212 	Sstm8s_spi$SPI_GetFlagStatus$53 ==.
                           00006E   213 	Sstm8s_spi$SPI_GetFlagStatus$54 ==.
                                    214 ;	Source/Std_Lib/Src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      008249 C6 52 03         [ 1]  215 	ld	a, 0x5203
      00824C 14 03            [ 1]  216 	and	a, (0x03, sp)
      00824E 27 04            [ 1]  217 	jreq	00102$
                           000075   218 	Sstm8s_spi$SPI_GetFlagStatus$55 ==.
                           000075   219 	Sstm8s_spi$SPI_GetFlagStatus$56 ==.
                                    220 ;	Source/Std_Lib/Src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
      008250 A6 01            [ 1]  221 	ld	a, #0x01
                           000077   222 	Sstm8s_spi$SPI_GetFlagStatus$57 ==.
      008252 20 01            [ 2]  223 	jra	00103$
      008254                        224 00102$:
                           000079   225 	Sstm8s_spi$SPI_GetFlagStatus$58 ==.
                           000079   226 	Sstm8s_spi$SPI_GetFlagStatus$59 ==.
                                    227 ;	Source/Std_Lib/Src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
      008254 4F               [ 1]  228 	clr	a
                           00007A   229 	Sstm8s_spi$SPI_GetFlagStatus$60 ==.
      008255                        230 00103$:
                           00007A   231 	Sstm8s_spi$SPI_GetFlagStatus$61 ==.
                                    232 ;	Source/Std_Lib/Src/stm8s_spi.c: 328: return status;
                           00007A   233 	Sstm8s_spi$SPI_GetFlagStatus$62 ==.
                                    234 ;	Source/Std_Lib/Src/stm8s_spi.c: 329: }
                           00007A   235 	Sstm8s_spi$SPI_GetFlagStatus$63 ==.
                           00007A   236 	XG$SPI_GetFlagStatus$0$0 ==.
      008255 81               [ 4]  237 	ret
                           00007B   238 	Sstm8s_spi$SPI_GetFlagStatus$64 ==.
                           00007B   239 	Sstm8s_spi$SPI_ClearFlag$65 ==.
                                    240 ;	Source/Std_Lib/Src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    241 ;	-----------------------------------------
                                    242 ;	 function SPI_ClearFlag
                                    243 ;	-----------------------------------------
      008256                        244 _SPI_ClearFlag:
                           00007B   245 	Sstm8s_spi$SPI_ClearFlag$66 ==.
                           00007B   246 	Sstm8s_spi$SPI_ClearFlag$67 ==.
                                    247 ;	Source/Std_Lib/Src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
      008256 7B 03            [ 1]  248 	ld	a, (0x03, sp)
      008258 43               [ 1]  249 	cpl	a
      008259 C7 52 03         [ 1]  250 	ld	0x5203, a
                           000081   251 	Sstm8s_spi$SPI_ClearFlag$68 ==.
                                    252 ;	Source/Std_Lib/Src/stm8s_spi.c: 351: }
                           000081   253 	Sstm8s_spi$SPI_ClearFlag$69 ==.
                           000081   254 	XG$SPI_ClearFlag$0$0 ==.
      00825C 81               [ 4]  255 	ret
                           000082   256 	Sstm8s_spi$SPI_ClearFlag$70 ==.
                                    257 	.area CODE
                                    258 	.area CONST
                                    259 	.area INITIALIZER
                                    260 	.area CABS (ABS)
                                    261 
                                    262 	.area .debug_line (NOLOAD)
      000345 00 00 01 9E            263 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000349                        264 Ldebug_line_start:
      000349 00 02                  265 	.dw	2
      00034B 00 00 00 7F            266 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00034F 01                     267 	.db	1
      000350 01                     268 	.db	1
      000351 FB                     269 	.db	-5
      000352 0F                     270 	.db	15
      000353 0A                     271 	.db	10
      000354 00                     272 	.db	0
      000355 01                     273 	.db	1
      000356 01                     274 	.db	1
      000357 01                     275 	.db	1
      000358 01                     276 	.db	1
      000359 00                     277 	.db	0
      00035A 00                     278 	.db	0
      00035B 00                     279 	.db	0
      00035C 01                     280 	.db	1
      00035D 43 3A 5C 50 72 6F 67   281 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000385 00                     282 	.db	0
      000386 43 3A 5C 50 72 6F 67   283 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0003A9 00                     284 	.db	0
      0003AA 00                     285 	.db	0
      0003AB 53 6F 75 72 63 65 2F   286 	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 73 70 69
             2E 63
      0003C9 00                     287 	.db	0
      0003CA 00                     288 	.uleb128	0
      0003CB 00                     289 	.uleb128	0
      0003CC 00                     290 	.uleb128	0
      0003CD 00                     291 	.db	0
      0003CE                        292 Ldebug_line_stmt:
      0003CE 00                     293 	.db	0
      0003CF 05                     294 	.uleb128	5
      0003D0 02                     295 	.db	2
      0003D1 00 00 81 DB            296 	.dw	0,(Sstm8s_spi$SPI_DeInit$0)
      0003D5 03                     297 	.db	3
      0003D6 31                     298 	.sleb128	49
      0003D7 01                     299 	.db	1
      0003D8 09                     300 	.db	9
      0003D9 00 00                  301 	.dw	Sstm8s_spi$SPI_DeInit$2-Sstm8s_spi$SPI_DeInit$0
      0003DB 03                     302 	.db	3
      0003DC 02                     303 	.sleb128	2
      0003DD 01                     304 	.db	1
      0003DE 09                     305 	.db	9
      0003DF 00 04                  306 	.dw	Sstm8s_spi$SPI_DeInit$3-Sstm8s_spi$SPI_DeInit$2
      0003E1 03                     307 	.db	3
      0003E2 01                     308 	.sleb128	1
      0003E3 01                     309 	.db	1
      0003E4 09                     310 	.db	9
      0003E5 00 04                  311 	.dw	Sstm8s_spi$SPI_DeInit$4-Sstm8s_spi$SPI_DeInit$3
      0003E7 03                     312 	.db	3
      0003E8 01                     313 	.sleb128	1
      0003E9 01                     314 	.db	1
      0003EA 09                     315 	.db	9
      0003EB 00 04                  316 	.dw	Sstm8s_spi$SPI_DeInit$5-Sstm8s_spi$SPI_DeInit$4
      0003ED 03                     317 	.db	3
      0003EE 01                     318 	.sleb128	1
      0003EF 01                     319 	.db	1
      0003F0 09                     320 	.db	9
      0003F1 00 04                  321 	.dw	Sstm8s_spi$SPI_DeInit$6-Sstm8s_spi$SPI_DeInit$5
      0003F3 03                     322 	.db	3
      0003F4 01                     323 	.sleb128	1
      0003F5 01                     324 	.db	1
      0003F6 09                     325 	.db	9
      0003F7 00 04                  326 	.dw	Sstm8s_spi$SPI_DeInit$7-Sstm8s_spi$SPI_DeInit$6
      0003F9 03                     327 	.db	3
      0003FA 01                     328 	.sleb128	1
      0003FB 01                     329 	.db	1
      0003FC 09                     330 	.db	9
      0003FD 00 01                  331 	.dw	1+Sstm8s_spi$SPI_DeInit$8-Sstm8s_spi$SPI_DeInit$7
      0003FF 00                     332 	.db	0
      000400 01                     333 	.uleb128	1
      000401 01                     334 	.db	1
      000402 00                     335 	.db	0
      000403 05                     336 	.uleb128	5
      000404 02                     337 	.db	2
      000405 00 00 81 F0            338 	.dw	0,(Sstm8s_spi$SPI_Init$10)
      000409 03                     339 	.db	3
      00040A CD 00                  340 	.sleb128	77
      00040C 01                     341 	.db	1
      00040D 09                     342 	.db	9
      00040E 00 01                  343 	.dw	Sstm8s_spi$SPI_Init$13-Sstm8s_spi$SPI_Init$10
      000410 03                     344 	.db	3
      000411 0D                     345 	.sleb128	13
      000412 01                     346 	.db	1
      000413 09                     347 	.db	9
      000414 00 06                  348 	.dw	Sstm8s_spi$SPI_Init$14-Sstm8s_spi$SPI_Init$13
      000416 03                     349 	.db	3
      000417 01                     350 	.sleb128	1
      000418 01                     351 	.db	1
      000419 09                     352 	.db	9
      00041A 00 09                  353 	.dw	Sstm8s_spi$SPI_Init$15-Sstm8s_spi$SPI_Init$14
      00041C 03                     354 	.db	3
      00041D 03                     355 	.sleb128	3
      00041E 01                     356 	.db	1
      00041F 09                     357 	.db	9
      000420 00 07                  358 	.dw	Sstm8s_spi$SPI_Init$16-Sstm8s_spi$SPI_Init$15
      000422 03                     359 	.db	3
      000423 04                     360 	.sleb128	4
      000424 01                     361 	.db	1
      000425 09                     362 	.db	9
      000426 00 03                  363 	.dw	Sstm8s_spi$SPI_Init$17-Sstm8s_spi$SPI_Init$16
      000428 03                     364 	.db	3
      000429 7E                     365 	.sleb128	-2
      00042A 01                     366 	.db	1
      00042B 09                     367 	.db	9
      00042C 00 08                  368 	.dw	Sstm8s_spi$SPI_Init$22-Sstm8s_spi$SPI_Init$17
      00042E 03                     369 	.db	3
      00042F 02                     370 	.sleb128	2
      000430 01                     371 	.db	1
      000431 09                     372 	.db	9
      000432 00 07                  373 	.dw	Sstm8s_spi$SPI_Init$25-Sstm8s_spi$SPI_Init$22
      000434 03                     374 	.db	3
      000435 04                     375 	.sleb128	4
      000436 01                     376 	.db	1
      000437 09                     377 	.db	9
      000438 00 05                  378 	.dw	Sstm8s_spi$SPI_Init$27-Sstm8s_spi$SPI_Init$25
      00043A 03                     379 	.db	3
      00043B 04                     380 	.sleb128	4
      00043C 01                     381 	.db	1
      00043D 09                     382 	.db	9
      00043E 00 08                  383 	.dw	Sstm8s_spi$SPI_Init$28-Sstm8s_spi$SPI_Init$27
      000440 03                     384 	.db	3
      000441 03                     385 	.sleb128	3
      000442 01                     386 	.db	1
      000443 09                     387 	.db	9
      000444 00 06                  388 	.dw	Sstm8s_spi$SPI_Init$29-Sstm8s_spi$SPI_Init$28
      000446 03                     389 	.db	3
      000447 01                     390 	.sleb128	1
      000448 01                     391 	.db	1
      000449 09                     392 	.db	9
      00044A 00 02                  393 	.dw	1+Sstm8s_spi$SPI_Init$31-Sstm8s_spi$SPI_Init$29
      00044C 00                     394 	.db	0
      00044D 01                     395 	.uleb128	1
      00044E 01                     396 	.db	1
      00044F 00                     397 	.db	0
      000450 05                     398 	.uleb128	5
      000451 02                     399 	.db	2
      000452 00 00 82 2E            400 	.dw	0,(Sstm8s_spi$SPI_Cmd$33)
      000456 03                     401 	.db	3
      000457 F6 00                  402 	.sleb128	118
      000459 01                     403 	.db	1
      00045A 09                     404 	.db	9
      00045B 00 00                  405 	.dw	Sstm8s_spi$SPI_Cmd$35-Sstm8s_spi$SPI_Cmd$33
      00045D 03                     406 	.db	3
      00045E 07                     407 	.sleb128	7
      00045F 01                     408 	.db	1
      000460 09                     409 	.db	9
      000461 00 03                  410 	.dw	Sstm8s_spi$SPI_Cmd$36-Sstm8s_spi$SPI_Cmd$35
      000463 03                     411 	.db	3
      000464 7E                     412 	.sleb128	-2
      000465 01                     413 	.db	1
      000466 09                     414 	.db	9
      000467 00 04                  415 	.dw	Sstm8s_spi$SPI_Cmd$38-Sstm8s_spi$SPI_Cmd$36
      000469 03                     416 	.db	3
      00046A 02                     417 	.sleb128	2
      00046B 01                     418 	.db	1
      00046C 09                     419 	.db	9
      00046D 00 07                  420 	.dw	Sstm8s_spi$SPI_Cmd$41-Sstm8s_spi$SPI_Cmd$38
      00046F 03                     421 	.db	3
      000470 04                     422 	.sleb128	4
      000471 01                     423 	.db	1
      000472 09                     424 	.db	9
      000473 00 05                  425 	.dw	Sstm8s_spi$SPI_Cmd$43-Sstm8s_spi$SPI_Cmd$41
      000475 03                     426 	.db	3
      000476 02                     427 	.sleb128	2
      000477 01                     428 	.db	1
      000478 09                     429 	.db	9
      000479 00 01                  430 	.dw	1+Sstm8s_spi$SPI_Cmd$44-Sstm8s_spi$SPI_Cmd$43
      00047B 00                     431 	.db	0
      00047C 01                     432 	.uleb128	1
      00047D 01                     433 	.db	1
      00047E 00                     434 	.db	0
      00047F 05                     435 	.uleb128	5
      000480 02                     436 	.db	2
      000481 00 00 82 42            437 	.dw	0,(Sstm8s_spi$SPI_SendData$46)
      000485 03                     438 	.db	3
      000486 A5 01                  439 	.sleb128	165
      000488 01                     440 	.db	1
      000489 09                     441 	.db	9
      00048A 00 00                  442 	.dw	Sstm8s_spi$SPI_SendData$48-Sstm8s_spi$SPI_SendData$46
      00048C 03                     443 	.db	3
      00048D 02                     444 	.sleb128	2
      00048E 01                     445 	.db	1
      00048F 09                     446 	.db	9
      000490 00 06                  447 	.dw	Sstm8s_spi$SPI_SendData$49-Sstm8s_spi$SPI_SendData$48
      000492 03                     448 	.db	3
      000493 01                     449 	.sleb128	1
      000494 01                     450 	.db	1
      000495 09                     451 	.db	9
      000496 00 01                  452 	.dw	1+Sstm8s_spi$SPI_SendData$50-Sstm8s_spi$SPI_SendData$49
      000498 00                     453 	.db	0
      000499 01                     454 	.uleb128	1
      00049A 01                     455 	.db	1
      00049B 00                     456 	.db	0
      00049C 05                     457 	.uleb128	5
      00049D 02                     458 	.db	2
      00049E 00 00 82 49            459 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$52)
      0004A2 03                     460 	.db	3
      0004A3 B6 02                  461 	.sleb128	310
      0004A5 01                     462 	.db	1
      0004A6 09                     463 	.db	9
      0004A7 00 00                  464 	.dw	Sstm8s_spi$SPI_GetFlagStatus$54-Sstm8s_spi$SPI_GetFlagStatus$52
      0004A9 03                     465 	.db	3
      0004AA 07                     466 	.sleb128	7
      0004AB 01                     467 	.db	1
      0004AC 09                     468 	.db	9
      0004AD 00 07                  469 	.dw	Sstm8s_spi$SPI_GetFlagStatus$56-Sstm8s_spi$SPI_GetFlagStatus$54
      0004AF 03                     470 	.db	3
      0004B0 02                     471 	.sleb128	2
      0004B1 01                     472 	.db	1
      0004B2 09                     473 	.db	9
      0004B3 00 04                  474 	.dw	Sstm8s_spi$SPI_GetFlagStatus$59-Sstm8s_spi$SPI_GetFlagStatus$56
      0004B5 03                     475 	.db	3
      0004B6 04                     476 	.sleb128	4
      0004B7 01                     477 	.db	1
      0004B8 09                     478 	.db	9
      0004B9 00 01                  479 	.dw	Sstm8s_spi$SPI_GetFlagStatus$61-Sstm8s_spi$SPI_GetFlagStatus$59
      0004BB 03                     480 	.db	3
      0004BC 04                     481 	.sleb128	4
      0004BD 01                     482 	.db	1
      0004BE 09                     483 	.db	9
      0004BF 00 00                  484 	.dw	Sstm8s_spi$SPI_GetFlagStatus$62-Sstm8s_spi$SPI_GetFlagStatus$61
      0004C1 03                     485 	.db	3
      0004C2 01                     486 	.sleb128	1
      0004C3 01                     487 	.db	1
      0004C4 09                     488 	.db	9
      0004C5 00 01                  489 	.dw	1+Sstm8s_spi$SPI_GetFlagStatus$63-Sstm8s_spi$SPI_GetFlagStatus$62
      0004C7 00                     490 	.db	0
      0004C8 01                     491 	.uleb128	1
      0004C9 01                     492 	.db	1
      0004CA 00                     493 	.db	0
      0004CB 05                     494 	.uleb128	5
      0004CC 02                     495 	.db	2
      0004CD 00 00 82 56            496 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$65)
      0004D1 03                     497 	.db	3
      0004D2 D9 02                  498 	.sleb128	345
      0004D4 01                     499 	.db	1
      0004D5 09                     500 	.db	9
      0004D6 00 00                  501 	.dw	Sstm8s_spi$SPI_ClearFlag$67-Sstm8s_spi$SPI_ClearFlag$65
      0004D8 03                     502 	.db	3
      0004D9 04                     503 	.sleb128	4
      0004DA 01                     504 	.db	1
      0004DB 09                     505 	.db	9
      0004DC 00 06                  506 	.dw	Sstm8s_spi$SPI_ClearFlag$68-Sstm8s_spi$SPI_ClearFlag$67
      0004DE 03                     507 	.db	3
      0004DF 01                     508 	.sleb128	1
      0004E0 01                     509 	.db	1
      0004E1 09                     510 	.db	9
      0004E2 00 01                  511 	.dw	1+Sstm8s_spi$SPI_ClearFlag$69-Sstm8s_spi$SPI_ClearFlag$68
      0004E4 00                     512 	.db	0
      0004E5 01                     513 	.uleb128	1
      0004E6 01                     514 	.db	1
      0004E7                        515 Ldebug_line_end:
                                    516 
                                    517 	.area .debug_loc (NOLOAD)
      0001B0                        518 Ldebug_loc_start:
      0001B0 00 00 82 56            519 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
      0001B4 00 00 82 5D            520 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$70)
      0001B8 00 02                  521 	.dw	2
      0001BA 78                     522 	.db	120
      0001BB 01                     523 	.sleb128	1
      0001BC 00 00 00 00            524 	.dw	0,0
      0001C0 00 00 00 00            525 	.dw	0,0
      0001C4 00 00 82 49            526 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
      0001C8 00 00 82 56            527 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$64)
      0001CC 00 02                  528 	.dw	2
      0001CE 78                     529 	.db	120
      0001CF 01                     530 	.sleb128	1
      0001D0 00 00 00 00            531 	.dw	0,0
      0001D4 00 00 00 00            532 	.dw	0,0
      0001D8 00 00 82 42            533 	.dw	0,(Sstm8s_spi$SPI_SendData$47)
      0001DC 00 00 82 49            534 	.dw	0,(Sstm8s_spi$SPI_SendData$51)
      0001E0 00 02                  535 	.dw	2
      0001E2 78                     536 	.db	120
      0001E3 01                     537 	.sleb128	1
      0001E4 00 00 00 00            538 	.dw	0,0
      0001E8 00 00 00 00            539 	.dw	0,0
      0001EC 00 00 82 2E            540 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
      0001F0 00 00 82 42            541 	.dw	0,(Sstm8s_spi$SPI_Cmd$45)
      0001F4 00 02                  542 	.dw	2
      0001F6 78                     543 	.db	120
      0001F7 01                     544 	.sleb128	1
      0001F8 00 00 00 00            545 	.dw	0,0
      0001FC 00 00 00 00            546 	.dw	0,0
      000200 00 00 82 2D            547 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      000204 00 00 82 2E            548 	.dw	0,(Sstm8s_spi$SPI_Init$32)
      000208 00 02                  549 	.dw	2
      00020A 78                     550 	.db	120
      00020B 01                     551 	.sleb128	1
      00020C 00 00 82 12            552 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      000210 00 00 82 2D            553 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      000214 00 02                  554 	.dw	2
      000216 78                     555 	.db	120
      000217 02                     556 	.sleb128	2
      000218 00 00 82 10            557 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      00021C 00 00 82 12            558 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      000220 00 02                  559 	.dw	2
      000222 78                     560 	.db	120
      000223 02                     561 	.sleb128	2
      000224 00 00 82 0B            562 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      000228 00 00 82 10            563 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      00022C 00 02                  564 	.dw	2
      00022E 78                     565 	.db	120
      00022F 03                     566 	.sleb128	3
      000230 00 00 81 F1            567 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      000234 00 00 82 0B            568 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      000238 00 02                  569 	.dw	2
      00023A 78                     570 	.db	120
      00023B 02                     571 	.sleb128	2
      00023C 00 00 81 F0            572 	.dw	0,(Sstm8s_spi$SPI_Init$11)
      000240 00 00 81 F1            573 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      000244 00 02                  574 	.dw	2
      000246 78                     575 	.db	120
      000247 01                     576 	.sleb128	1
      000248 00 00 00 00            577 	.dw	0,0
      00024C 00 00 00 00            578 	.dw	0,0
      000250 00 00 81 DB            579 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
      000254 00 00 81 F0            580 	.dw	0,(Sstm8s_spi$SPI_DeInit$9)
      000258 00 02                  581 	.dw	2
      00025A 78                     582 	.db	120
      00025B 01                     583 	.sleb128	1
      00025C 00 00 00 00            584 	.dw	0,0
      000260 00 00 00 00            585 	.dw	0,0
                                    586 
                                    587 	.area .debug_abbrev (NOLOAD)
      000126                        588 Ldebug_abbrev:
      000126 04                     589 	.uleb128	4
      000127 05                     590 	.uleb128	5
      000128 00                     591 	.db	0
      000129 02                     592 	.uleb128	2
      00012A 0A                     593 	.uleb128	10
      00012B 03                     594 	.uleb128	3
      00012C 08                     595 	.uleb128	8
      00012D 49                     596 	.uleb128	73
      00012E 13                     597 	.uleb128	19
      00012F 00                     598 	.uleb128	0
      000130 00                     599 	.uleb128	0
      000131 03                     600 	.uleb128	3
      000132 2E                     601 	.uleb128	46
      000133 01                     602 	.db	1
      000134 01                     603 	.uleb128	1
      000135 13                     604 	.uleb128	19
      000136 03                     605 	.uleb128	3
      000137 08                     606 	.uleb128	8
      000138 11                     607 	.uleb128	17
      000139 01                     608 	.uleb128	1
      00013A 12                     609 	.uleb128	18
      00013B 01                     610 	.uleb128	1
      00013C 3F                     611 	.uleb128	63
      00013D 0C                     612 	.uleb128	12
      00013E 40                     613 	.uleb128	64
      00013F 06                     614 	.uleb128	6
      000140 00                     615 	.uleb128	0
      000141 00                     616 	.uleb128	0
      000142 08                     617 	.uleb128	8
      000143 34                     618 	.uleb128	52
      000144 00                     619 	.db	0
      000145 02                     620 	.uleb128	2
      000146 0A                     621 	.uleb128	10
      000147 03                     622 	.uleb128	3
      000148 08                     623 	.uleb128	8
      000149 49                     624 	.uleb128	73
      00014A 13                     625 	.uleb128	19
      00014B 00                     626 	.uleb128	0
      00014C 00                     627 	.uleb128	0
      00014D 07                     628 	.uleb128	7
      00014E 2E                     629 	.uleb128	46
      00014F 01                     630 	.db	1
      000150 01                     631 	.uleb128	1
      000151 13                     632 	.uleb128	19
      000152 03                     633 	.uleb128	3
      000153 08                     634 	.uleb128	8
      000154 11                     635 	.uleb128	17
      000155 01                     636 	.uleb128	1
      000156 12                     637 	.uleb128	18
      000157 01                     638 	.uleb128	1
      000158 3F                     639 	.uleb128	63
      000159 0C                     640 	.uleb128	12
      00015A 40                     641 	.uleb128	64
      00015B 06                     642 	.uleb128	6
      00015C 49                     643 	.uleb128	73
      00015D 13                     644 	.uleb128	19
      00015E 00                     645 	.uleb128	0
      00015F 00                     646 	.uleb128	0
      000160 01                     647 	.uleb128	1
      000161 11                     648 	.uleb128	17
      000162 01                     649 	.db	1
      000163 03                     650 	.uleb128	3
      000164 08                     651 	.uleb128	8
      000165 10                     652 	.uleb128	16
      000166 06                     653 	.uleb128	6
      000167 13                     654 	.uleb128	19
      000168 0B                     655 	.uleb128	11
      000169 25                     656 	.uleb128	37
      00016A 08                     657 	.uleb128	8
      00016B 00                     658 	.uleb128	0
      00016C 00                     659 	.uleb128	0
      00016D 05                     660 	.uleb128	5
      00016E 0B                     661 	.uleb128	11
      00016F 00                     662 	.db	0
      000170 11                     663 	.uleb128	17
      000171 01                     664 	.uleb128	1
      000172 12                     665 	.uleb128	18
      000173 01                     666 	.uleb128	1
      000174 00                     667 	.uleb128	0
      000175 00                     668 	.uleb128	0
      000176 02                     669 	.uleb128	2
      000177 2E                     670 	.uleb128	46
      000178 00                     671 	.db	0
      000179 03                     672 	.uleb128	3
      00017A 08                     673 	.uleb128	8
      00017B 11                     674 	.uleb128	17
      00017C 01                     675 	.uleb128	1
      00017D 12                     676 	.uleb128	18
      00017E 01                     677 	.uleb128	1
      00017F 3F                     678 	.uleb128	63
      000180 0C                     679 	.uleb128	12
      000181 40                     680 	.uleb128	64
      000182 06                     681 	.uleb128	6
      000183 00                     682 	.uleb128	0
      000184 00                     683 	.uleb128	0
      000185 09                     684 	.uleb128	9
      000186 2E                     685 	.uleb128	46
      000187 01                     686 	.db	1
      000188 03                     687 	.uleb128	3
      000189 08                     688 	.uleb128	8
      00018A 11                     689 	.uleb128	17
      00018B 01                     690 	.uleb128	1
      00018C 12                     691 	.uleb128	18
      00018D 01                     692 	.uleb128	1
      00018E 3F                     693 	.uleb128	63
      00018F 0C                     694 	.uleb128	12
      000190 40                     695 	.uleb128	64
      000191 06                     696 	.uleb128	6
      000192 00                     697 	.uleb128	0
      000193 00                     698 	.uleb128	0
      000194 06                     699 	.uleb128	6
      000195 24                     700 	.uleb128	36
      000196 00                     701 	.db	0
      000197 03                     702 	.uleb128	3
      000198 08                     703 	.uleb128	8
      000199 0B                     704 	.uleb128	11
      00019A 0B                     705 	.uleb128	11
      00019B 3E                     706 	.uleb128	62
      00019C 0B                     707 	.uleb128	11
      00019D 00                     708 	.uleb128	0
      00019E 00                     709 	.uleb128	0
      00019F 00                     710 	.uleb128	0
                                    711 
                                    712 	.area .debug_info (NOLOAD)
      0003B7 00 00 02 3B            713 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0003BB                        714 Ldebug_info_start:
      0003BB 00 02                  715 	.dw	2
      0003BD 00 00 01 26            716 	.dw	0,(Ldebug_abbrev)
      0003C1 04                     717 	.db	4
      0003C2 01                     718 	.uleb128	1
      0003C3 53 6F 75 72 63 65 2F   719 	.ascii "Source/Std_Lib/Src/stm8s_spi.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 73 70 69
             2E 63
      0003E1 00                     720 	.db	0
      0003E2 00 00 03 45            721 	.dw	0,(Ldebug_line_start+-4)
      0003E6 01                     722 	.db	1
      0003E7 53 44 43 43 20 76 65   723 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000400 00                     724 	.db	0
      000401 02                     725 	.uleb128	2
      000402 53 50 49 5F 44 65 49   726 	.ascii "SPI_DeInit"
             6E 69 74
      00040C 00                     727 	.db	0
      00040D 00 00 81 DB            728 	.dw	0,(_SPI_DeInit)
      000411 00 00 81 F0            729 	.dw	0,(XG$SPI_DeInit$0$0+1)
      000415 01                     730 	.db	1
      000416 00 00 02 50            731 	.dw	0,(Ldebug_loc_start+160)
      00041A 03                     732 	.uleb128	3
      00041B 00 00 01 38            733 	.dw	0,312
      00041F 53 50 49 5F 49 6E 69   734 	.ascii "SPI_Init"
             74
      000427 00                     735 	.db	0
      000428 00 00 81 F0            736 	.dw	0,(_SPI_Init)
      00042C 00 00 82 2E            737 	.dw	0,(XG$SPI_Init$0$0+1)
      000430 01                     738 	.db	1
      000431 00 00 02 00            739 	.dw	0,(Ldebug_loc_start+80)
      000435 04                     740 	.uleb128	4
      000436 02                     741 	.db	2
      000437 91                     742 	.db	145
      000438 02                     743 	.sleb128	2
      000439 46 69 72 73 74 42 69   744 	.ascii "FirstBit"
             74
      000441 00                     745 	.db	0
      000442 00 00 01 38            746 	.dw	0,312
      000446 04                     747 	.uleb128	4
      000447 02                     748 	.db	2
      000448 91                     749 	.db	145
      000449 03                     750 	.sleb128	3
      00044A 42 61 75 64 52 61 74   751 	.ascii "BaudRatePrescaler"
             65 50 72 65 73 63 61
             6C 65 72
      00045B 00                     752 	.db	0
      00045C 00 00 01 38            753 	.dw	0,312
      000460 04                     754 	.uleb128	4
      000461 02                     755 	.db	2
      000462 91                     756 	.db	145
      000463 04                     757 	.sleb128	4
      000464 4D 6F 64 65            758 	.ascii "Mode"
      000468 00                     759 	.db	0
      000469 00 00 01 38            760 	.dw	0,312
      00046D 04                     761 	.uleb128	4
      00046E 02                     762 	.db	2
      00046F 91                     763 	.db	145
      000470 05                     764 	.sleb128	5
      000471 43 6C 6F 63 6B 50 6F   765 	.ascii "ClockPolarity"
             6C 61 72 69 74 79
      00047E 00                     766 	.db	0
      00047F 00 00 01 38            767 	.dw	0,312
      000483 04                     768 	.uleb128	4
      000484 02                     769 	.db	2
      000485 91                     770 	.db	145
      000486 06                     771 	.sleb128	6
      000487 43 6C 6F 63 6B 50 68   772 	.ascii "ClockPhase"
             61 73 65
      000491 00                     773 	.db	0
      000492 00 00 01 38            774 	.dw	0,312
      000496 04                     775 	.uleb128	4
      000497 02                     776 	.db	2
      000498 91                     777 	.db	145
      000499 07                     778 	.sleb128	7
      00049A 44 61 74 61 5F 44 69   779 	.ascii "Data_Direction"
             72 65 63 74 69 6F 6E
      0004A8 00                     780 	.db	0
      0004A9 00 00 01 38            781 	.dw	0,312
      0004AD 04                     782 	.uleb128	4
      0004AE 02                     783 	.db	2
      0004AF 91                     784 	.db	145
      0004B0 08                     785 	.sleb128	8
      0004B1 53 6C 61 76 65 5F 4D   786 	.ascii "Slave_Management"
             61 6E 61 67 65 6D 65
             6E 74
      0004C1 00                     787 	.db	0
      0004C2 00 00 01 38            788 	.dw	0,312
      0004C6 04                     789 	.uleb128	4
      0004C7 02                     790 	.db	2
      0004C8 91                     791 	.db	145
      0004C9 09                     792 	.sleb128	9
      0004CA 43 52 43 50 6F 6C 79   793 	.ascii "CRCPolynomial"
             6E 6F 6D 69 61 6C
      0004D7 00                     794 	.db	0
      0004D8 00 00 01 38            795 	.dw	0,312
      0004DC 05                     796 	.uleb128	5
      0004DD 00 00 82 12            797 	.dw	0,(Sstm8s_spi$SPI_Init$21)
      0004E1 00 00 82 17            798 	.dw	0,(Sstm8s_spi$SPI_Init$23)
      0004E5 05                     799 	.uleb128	5
      0004E6 00 00 82 19            800 	.dw	0,(Sstm8s_spi$SPI_Init$24)
      0004EA 00 00 82 1E            801 	.dw	0,(Sstm8s_spi$SPI_Init$26)
      0004EE 00                     802 	.uleb128	0
      0004EF 06                     803 	.uleb128	6
      0004F0 75 6E 73 69 67 6E 65   804 	.ascii "unsigned char"
             64 20 63 68 61 72
      0004FD 00                     805 	.db	0
      0004FE 01                     806 	.db	1
      0004FF 08                     807 	.db	8
      000500 03                     808 	.uleb128	3
      000501 00 00 01 87            809 	.dw	0,391
      000505 53 50 49 5F 43 6D 64   810 	.ascii "SPI_Cmd"
      00050C 00                     811 	.db	0
      00050D 00 00 82 2E            812 	.dw	0,(_SPI_Cmd)
      000511 00 00 82 42            813 	.dw	0,(XG$SPI_Cmd$0$0+1)
      000515 01                     814 	.db	1
      000516 00 00 01 EC            815 	.dw	0,(Ldebug_loc_start+60)
      00051A 04                     816 	.uleb128	4
      00051B 02                     817 	.db	2
      00051C 91                     818 	.db	145
      00051D 02                     819 	.sleb128	2
      00051E 4E 65 77 53 74 61 74   820 	.ascii "NewState"
             65
      000526 00                     821 	.db	0
      000527 00 00 01 38            822 	.dw	0,312
      00052B 05                     823 	.uleb128	5
      00052C 00 00 82 35            824 	.dw	0,(Sstm8s_spi$SPI_Cmd$37)
      000530 00 00 82 3A            825 	.dw	0,(Sstm8s_spi$SPI_Cmd$39)
      000534 05                     826 	.uleb128	5
      000535 00 00 82 3C            827 	.dw	0,(Sstm8s_spi$SPI_Cmd$40)
      000539 00 00 82 41            828 	.dw	0,(Sstm8s_spi$SPI_Cmd$42)
      00053D 00                     829 	.uleb128	0
      00053E 03                     830 	.uleb128	3
      00053F 00 00 01 B4            831 	.dw	0,436
      000543 53 50 49 5F 53 65 6E   832 	.ascii "SPI_SendData"
             64 44 61 74 61
      00054F 00                     833 	.db	0
      000550 00 00 82 42            834 	.dw	0,(_SPI_SendData)
      000554 00 00 82 49            835 	.dw	0,(XG$SPI_SendData$0$0+1)
      000558 01                     836 	.db	1
      000559 00 00 01 D8            837 	.dw	0,(Ldebug_loc_start+40)
      00055D 04                     838 	.uleb128	4
      00055E 02                     839 	.db	2
      00055F 91                     840 	.db	145
      000560 02                     841 	.sleb128	2
      000561 44 61 74 61            842 	.ascii "Data"
      000565 00                     843 	.db	0
      000566 00 00 01 38            844 	.dw	0,312
      00056A 00                     845 	.uleb128	0
      00056B 07                     846 	.uleb128	7
      00056C 00 00 02 0E            847 	.dw	0,526
      000570 53 50 49 5F 47 65 74   848 	.ascii "SPI_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000581 00                     849 	.db	0
      000582 00 00 82 49            850 	.dw	0,(_SPI_GetFlagStatus)
      000586 00 00 82 56            851 	.dw	0,(XG$SPI_GetFlagStatus$0$0+1)
      00058A 01                     852 	.db	1
      00058B 00 00 01 C4            853 	.dw	0,(Ldebug_loc_start+20)
      00058F 00 00 01 38            854 	.dw	0,312
      000593 04                     855 	.uleb128	4
      000594 02                     856 	.db	2
      000595 91                     857 	.db	145
      000596 02                     858 	.sleb128	2
      000597 53 50 49 5F 46 4C 41   859 	.ascii "SPI_FLAG"
             47
      00059F 00                     860 	.db	0
      0005A0 00 00 01 38            861 	.dw	0,312
      0005A4 05                     862 	.uleb128	5
      0005A5 00 00 82 50            863 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$55)
      0005A9 00 00 82 52            864 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$57)
      0005AD 05                     865 	.uleb128	5
      0005AE 00 00 82 54            866 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$58)
      0005B2 00 00 82 55            867 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$60)
      0005B6 08                     868 	.uleb128	8
      0005B7 01                     869 	.db	1
      0005B8 50                     870 	.db	80
      0005B9 73 74 61 74 75 73      871 	.ascii "status"
      0005BF 00                     872 	.db	0
      0005C0 00 00 01 38            873 	.dw	0,312
      0005C4 00                     874 	.uleb128	0
      0005C5 09                     875 	.uleb128	9
      0005C6 53 50 49 5F 43 6C 65   876 	.ascii "SPI_ClearFlag"
             61 72 46 6C 61 67
      0005D3 00                     877 	.db	0
      0005D4 00 00 82 56            878 	.dw	0,(_SPI_ClearFlag)
      0005D8 00 00 82 5D            879 	.dw	0,(XG$SPI_ClearFlag$0$0+1)
      0005DC 01                     880 	.db	1
      0005DD 00 00 01 B0            881 	.dw	0,(Ldebug_loc_start)
      0005E1 04                     882 	.uleb128	4
      0005E2 02                     883 	.db	2
      0005E3 91                     884 	.db	145
      0005E4 02                     885 	.sleb128	2
      0005E5 53 50 49 5F 46 4C 41   886 	.ascii "SPI_FLAG"
             47
      0005ED 00                     887 	.db	0
      0005EE 00 00 01 38            888 	.dw	0,312
      0005F2 00                     889 	.uleb128	0
      0005F3 00                     890 	.uleb128	0
      0005F4 00                     891 	.uleb128	0
      0005F5 00                     892 	.uleb128	0
      0005F6                        893 Ldebug_info_end:
                                    894 
                                    895 	.area .debug_pubnames (NOLOAD)
      0000B9 00 00 00 6F            896 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0000BD                        897 Ldebug_pubnames_start:
      0000BD 00 02                  898 	.dw	2
      0000BF 00 00 03 B7            899 	.dw	0,(Ldebug_info_start-4)
      0000C3 00 00 02 3F            900 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0000C7 00 00 00 4A            901 	.dw	0,74
      0000CB 53 50 49 5F 44 65 49   902 	.ascii "SPI_DeInit"
             6E 69 74
      0000D5 00                     903 	.db	0
      0000D6 00 00 00 63            904 	.dw	0,99
      0000DA 53 50 49 5F 49 6E 69   905 	.ascii "SPI_Init"
             74
      0000E2 00                     906 	.db	0
      0000E3 00 00 01 49            907 	.dw	0,329
      0000E7 53 50 49 5F 43 6D 64   908 	.ascii "SPI_Cmd"
      0000EE 00                     909 	.db	0
      0000EF 00 00 01 87            910 	.dw	0,391
      0000F3 53 50 49 5F 53 65 6E   911 	.ascii "SPI_SendData"
             64 44 61 74 61
      0000FF 00                     912 	.db	0
      000100 00 00 01 B4            913 	.dw	0,436
      000104 53 50 49 5F 47 65 74   914 	.ascii "SPI_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000115 00                     915 	.db	0
      000116 00 00 02 0E            916 	.dw	0,526
      00011A 53 50 49 5F 43 6C 65   917 	.ascii "SPI_ClearFlag"
             61 72 46 6C 61 67
      000127 00                     918 	.db	0
      000128 00 00 00 00            919 	.dw	0,0
      00012C                        920 Ldebug_pubnames_end:
                                    921 
                                    922 	.area .debug_frame (NOLOAD)
      0001AC 00 00                  923 	.dw	0
      0001AE 00 0E                  924 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0001B0                        925 Ldebug_CIE0_start:
      0001B0 FF FF                  926 	.dw	0xffff
      0001B2 FF FF                  927 	.dw	0xffff
      0001B4 01                     928 	.db	1
      0001B5 00                     929 	.db	0
      0001B6 01                     930 	.uleb128	1
      0001B7 7F                     931 	.sleb128	-1
      0001B8 09                     932 	.db	9
      0001B9 0C                     933 	.db	12
      0001BA 08                     934 	.uleb128	8
      0001BB 02                     935 	.uleb128	2
      0001BC 89                     936 	.db	137
      0001BD 01                     937 	.uleb128	1
      0001BE                        938 Ldebug_CIE0_end:
      0001BE 00 00 00 13            939 	.dw	0,19
      0001C2 00 00 01 AC            940 	.dw	0,(Ldebug_CIE0_start-4)
      0001C6 00 00 82 56            941 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)	;initial loc
      0001CA 00 00 00 07            942 	.dw	0,Sstm8s_spi$SPI_ClearFlag$70-Sstm8s_spi$SPI_ClearFlag$66
      0001CE 01                     943 	.db	1
      0001CF 00 00 82 56            944 	.dw	0,(Sstm8s_spi$SPI_ClearFlag$66)
      0001D3 0E                     945 	.db	14
      0001D4 02                     946 	.uleb128	2
                                    947 
                                    948 	.area .debug_frame (NOLOAD)
      0001D5 00 00                  949 	.dw	0
      0001D7 00 0E                  950 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0001D9                        951 Ldebug_CIE1_start:
      0001D9 FF FF                  952 	.dw	0xffff
      0001DB FF FF                  953 	.dw	0xffff
      0001DD 01                     954 	.db	1
      0001DE 00                     955 	.db	0
      0001DF 01                     956 	.uleb128	1
      0001E0 7F                     957 	.sleb128	-1
      0001E1 09                     958 	.db	9
      0001E2 0C                     959 	.db	12
      0001E3 08                     960 	.uleb128	8
      0001E4 02                     961 	.uleb128	2
      0001E5 89                     962 	.db	137
      0001E6 01                     963 	.uleb128	1
      0001E7                        964 Ldebug_CIE1_end:
      0001E7 00 00 00 13            965 	.dw	0,19
      0001EB 00 00 01 D5            966 	.dw	0,(Ldebug_CIE1_start-4)
      0001EF 00 00 82 49            967 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)	;initial loc
      0001F3 00 00 00 0D            968 	.dw	0,Sstm8s_spi$SPI_GetFlagStatus$64-Sstm8s_spi$SPI_GetFlagStatus$53
      0001F7 01                     969 	.db	1
      0001F8 00 00 82 49            970 	.dw	0,(Sstm8s_spi$SPI_GetFlagStatus$53)
      0001FC 0E                     971 	.db	14
      0001FD 02                     972 	.uleb128	2
                                    973 
                                    974 	.area .debug_frame (NOLOAD)
      0001FE 00 00                  975 	.dw	0
      000200 00 0E                  976 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000202                        977 Ldebug_CIE2_start:
      000202 FF FF                  978 	.dw	0xffff
      000204 FF FF                  979 	.dw	0xffff
      000206 01                     980 	.db	1
      000207 00                     981 	.db	0
      000208 01                     982 	.uleb128	1
      000209 7F                     983 	.sleb128	-1
      00020A 09                     984 	.db	9
      00020B 0C                     985 	.db	12
      00020C 08                     986 	.uleb128	8
      00020D 02                     987 	.uleb128	2
      00020E 89                     988 	.db	137
      00020F 01                     989 	.uleb128	1
      000210                        990 Ldebug_CIE2_end:
      000210 00 00 00 13            991 	.dw	0,19
      000214 00 00 01 FE            992 	.dw	0,(Ldebug_CIE2_start-4)
      000218 00 00 82 42            993 	.dw	0,(Sstm8s_spi$SPI_SendData$47)	;initial loc
      00021C 00 00 00 07            994 	.dw	0,Sstm8s_spi$SPI_SendData$51-Sstm8s_spi$SPI_SendData$47
      000220 01                     995 	.db	1
      000221 00 00 82 42            996 	.dw	0,(Sstm8s_spi$SPI_SendData$47)
      000225 0E                     997 	.db	14
      000226 02                     998 	.uleb128	2
                                    999 
                                   1000 	.area .debug_frame (NOLOAD)
      000227 00 00                 1001 	.dw	0
      000229 00 0E                 1002 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      00022B                       1003 Ldebug_CIE3_start:
      00022B FF FF                 1004 	.dw	0xffff
      00022D FF FF                 1005 	.dw	0xffff
      00022F 01                    1006 	.db	1
      000230 00                    1007 	.db	0
      000231 01                    1008 	.uleb128	1
      000232 7F                    1009 	.sleb128	-1
      000233 09                    1010 	.db	9
      000234 0C                    1011 	.db	12
      000235 08                    1012 	.uleb128	8
      000236 02                    1013 	.uleb128	2
      000237 89                    1014 	.db	137
      000238 01                    1015 	.uleb128	1
      000239                       1016 Ldebug_CIE3_end:
      000239 00 00 00 13           1017 	.dw	0,19
      00023D 00 00 02 27           1018 	.dw	0,(Ldebug_CIE3_start-4)
      000241 00 00 82 2E           1019 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)	;initial loc
      000245 00 00 00 14           1020 	.dw	0,Sstm8s_spi$SPI_Cmd$45-Sstm8s_spi$SPI_Cmd$34
      000249 01                    1021 	.db	1
      00024A 00 00 82 2E           1022 	.dw	0,(Sstm8s_spi$SPI_Cmd$34)
      00024E 0E                    1023 	.db	14
      00024F 02                    1024 	.uleb128	2
                                   1025 
                                   1026 	.area .debug_frame (NOLOAD)
      000250 00 00                 1027 	.dw	0
      000252 00 0E                 1028 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000254                       1029 Ldebug_CIE4_start:
      000254 FF FF                 1030 	.dw	0xffff
      000256 FF FF                 1031 	.dw	0xffff
      000258 01                    1032 	.db	1
      000259 00                    1033 	.db	0
      00025A 01                    1034 	.uleb128	1
      00025B 7F                    1035 	.sleb128	-1
      00025C 09                    1036 	.db	9
      00025D 0C                    1037 	.db	12
      00025E 08                    1038 	.uleb128	8
      00025F 02                    1039 	.uleb128	2
      000260 89                    1040 	.db	137
      000261 01                    1041 	.uleb128	1
      000262                       1042 Ldebug_CIE4_end:
      000262 00 00 00 36           1043 	.dw	0,54
      000266 00 00 02 50           1044 	.dw	0,(Ldebug_CIE4_start-4)
      00026A 00 00 81 F0           1045 	.dw	0,(Sstm8s_spi$SPI_Init$11)	;initial loc
      00026E 00 00 00 3E           1046 	.dw	0,Sstm8s_spi$SPI_Init$32-Sstm8s_spi$SPI_Init$11
      000272 01                    1047 	.db	1
      000273 00 00 81 F0           1048 	.dw	0,(Sstm8s_spi$SPI_Init$11)
      000277 0E                    1049 	.db	14
      000278 02                    1050 	.uleb128	2
      000279 01                    1051 	.db	1
      00027A 00 00 81 F1           1052 	.dw	0,(Sstm8s_spi$SPI_Init$12)
      00027E 0E                    1053 	.db	14
      00027F 03                    1054 	.uleb128	3
      000280 01                    1055 	.db	1
      000281 00 00 82 0B           1056 	.dw	0,(Sstm8s_spi$SPI_Init$18)
      000285 0E                    1057 	.db	14
      000286 04                    1058 	.uleb128	4
      000287 01                    1059 	.db	1
      000288 00 00 82 10           1060 	.dw	0,(Sstm8s_spi$SPI_Init$19)
      00028C 0E                    1061 	.db	14
      00028D 03                    1062 	.uleb128	3
      00028E 01                    1063 	.db	1
      00028F 00 00 82 12           1064 	.dw	0,(Sstm8s_spi$SPI_Init$20)
      000293 0E                    1065 	.db	14
      000294 03                    1066 	.uleb128	3
      000295 01                    1067 	.db	1
      000296 00 00 82 2D           1068 	.dw	0,(Sstm8s_spi$SPI_Init$30)
      00029A 0E                    1069 	.db	14
      00029B 02                    1070 	.uleb128	2
                                   1071 
                                   1072 	.area .debug_frame (NOLOAD)
      00029C 00 00                 1073 	.dw	0
      00029E 00 0E                 1074 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      0002A0                       1075 Ldebug_CIE5_start:
      0002A0 FF FF                 1076 	.dw	0xffff
      0002A2 FF FF                 1077 	.dw	0xffff
      0002A4 01                    1078 	.db	1
      0002A5 00                    1079 	.db	0
      0002A6 01                    1080 	.uleb128	1
      0002A7 7F                    1081 	.sleb128	-1
      0002A8 09                    1082 	.db	9
      0002A9 0C                    1083 	.db	12
      0002AA 08                    1084 	.uleb128	8
      0002AB 02                    1085 	.uleb128	2
      0002AC 89                    1086 	.db	137
      0002AD 01                    1087 	.uleb128	1
      0002AE                       1088 Ldebug_CIE5_end:
      0002AE 00 00 00 13           1089 	.dw	0,19
      0002B2 00 00 02 9C           1090 	.dw	0,(Ldebug_CIE5_start-4)
      0002B6 00 00 81 DB           1091 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)	;initial loc
      0002BA 00 00 00 15           1092 	.dw	0,Sstm8s_spi$SPI_DeInit$9-Sstm8s_spi$SPI_DeInit$1
      0002BE 01                    1093 	.db	1
      0002BF 00 00 81 DB           1094 	.dw	0,(Sstm8s_spi$SPI_DeInit$1)
      0002C3 0E                    1095 	.db	14
      0002C4 02                    1096 	.uleb128	2
