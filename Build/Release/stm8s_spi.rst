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
                                     54 ;	Source/Std_Lib/Src/stm8s_spi.c: 50: void SPI_DeInit(void)
                                     55 ;	-----------------------------------------
                                     56 ;	 function SPI_DeInit
                                     57 ;	-----------------------------------------
      0083B7                         58 _SPI_DeInit:
                                     59 ;	Source/Std_Lib/Src/stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
      0083B7 35 00 52 00      [ 1]   60 	mov	0x5200+0, #0x00
                                     61 ;	Source/Std_Lib/Src/stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
      0083BB 35 00 52 01      [ 1]   62 	mov	0x5201+0, #0x00
                                     63 ;	Source/Std_Lib/Src/stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
      0083BF 35 00 52 02      [ 1]   64 	mov	0x5202+0, #0x00
                                     65 ;	Source/Std_Lib/Src/stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
      0083C3 35 02 52 03      [ 1]   66 	mov	0x5203+0, #0x02
                                     67 ;	Source/Std_Lib/Src/stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
      0083C7 35 07 52 05      [ 1]   68 	mov	0x5205+0, #0x07
                                     69 ;	Source/Std_Lib/Src/stm8s_spi.c: 57: }
      0083CB 81               [ 4]   70 	ret
                                     71 ;	Source/Std_Lib/Src/stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     72 ;	-----------------------------------------
                                     73 ;	 function SPI_Init
                                     74 ;	-----------------------------------------
      0083CC                         75 _SPI_Init:
      0083CC 88               [ 1]   76 	push	a
                                     77 ;	Source/Std_Lib/Src/stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
      0083CD 7B 04            [ 1]   78 	ld	a, (0x04, sp)
      0083CF 1A 05            [ 1]   79 	or	a, (0x05, sp)
      0083D1 6B 01            [ 1]   80 	ld	(0x01, sp), a
                                     81 ;	Source/Std_Lib/Src/stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
      0083D3 7B 07            [ 1]   82 	ld	a, (0x07, sp)
      0083D5 1A 08            [ 1]   83 	or	a, (0x08, sp)
      0083D7 1A 01            [ 1]   84 	or	a, (0x01, sp)
      0083D9 C7 52 00         [ 1]   85 	ld	0x5200, a
                                     86 ;	Source/Std_Lib/Src/stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
      0083DC 7B 09            [ 1]   87 	ld	a, (0x09, sp)
      0083DE 1A 0A            [ 1]   88 	or	a, (0x0a, sp)
      0083E0 C7 52 01         [ 1]   89 	ld	0x5201, a
                                     90 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      0083E3 C6 52 01         [ 1]   91 	ld	a, 0x5201
                                     92 ;	Source/Std_Lib/Src/stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
      0083E6 88               [ 1]   93 	push	a
      0083E7 7B 07            [ 1]   94 	ld	a, (0x07, sp)
      0083E9 A1 04            [ 1]   95 	cp	a, #0x04
      0083EB 84               [ 1]   96 	pop	a
      0083EC 26 07            [ 1]   97 	jrne	00102$
                                     98 ;	Source/Std_Lib/Src/stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      0083EE AA 01            [ 1]   99 	or	a, #0x01
      0083F0 C7 52 01         [ 1]  100 	ld	0x5201, a
      0083F3 20 05            [ 2]  101 	jra	00103$
      0083F5                        102 00102$:
                                    103 ;	Source/Std_Lib/Src/stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      0083F5 A4 FE            [ 1]  104 	and	a, #0xfe
      0083F7 C7 52 01         [ 1]  105 	ld	0x5201, a
      0083FA                        106 00103$:
                                    107 ;	Source/Std_Lib/Src/stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
      0083FA C6 52 00         [ 1]  108 	ld	a, 0x5200
      0083FD 1A 06            [ 1]  109 	or	a, (0x06, sp)
      0083FF C7 52 00         [ 1]  110 	ld	0x5200, a
                                    111 ;	Source/Std_Lib/Src/stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
      008402 AE 52 05         [ 2]  112 	ldw	x, #0x5205
      008405 7B 0B            [ 1]  113 	ld	a, (0x0b, sp)
      008407 F7               [ 1]  114 	ld	(x), a
                                    115 ;	Source/Std_Lib/Src/stm8s_spi.c: 111: }
      008408 84               [ 1]  116 	pop	a
      008409 81               [ 4]  117 	ret
                                    118 ;	Source/Std_Lib/Src/stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    119 ;	-----------------------------------------
                                    120 ;	 function SPI_Cmd
                                    121 ;	-----------------------------------------
      00840A                        122 _SPI_Cmd:
                                    123 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      00840A C6 52 00         [ 1]  124 	ld	a, 0x5200
                                    125 ;	Source/Std_Lib/Src/stm8s_spi.c: 124: if (NewState != DISABLE)
      00840D 0D 03            [ 1]  126 	tnz	(0x03, sp)
      00840F 27 06            [ 1]  127 	jreq	00102$
                                    128 ;	Source/Std_Lib/Src/stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      008411 AA 40            [ 1]  129 	or	a, #0x40
      008413 C7 52 00         [ 1]  130 	ld	0x5200, a
      008416 81               [ 4]  131 	ret
      008417                        132 00102$:
                                    133 ;	Source/Std_Lib/Src/stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
      008417 A4 BF            [ 1]  134 	and	a, #0xbf
      008419 C7 52 00         [ 1]  135 	ld	0x5200, a
                                    136 ;	Source/Std_Lib/Src/stm8s_spi.c: 132: }
      00841C 81               [ 4]  137 	ret
                                    138 ;	Source/Std_Lib/Src/stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    139 ;	-----------------------------------------
                                    140 ;	 function SPI_SendData
                                    141 ;	-----------------------------------------
      00841D                        142 _SPI_SendData:
                                    143 ;	Source/Std_Lib/Src/stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      00841D AE 52 04         [ 2]  144 	ldw	x, #0x5204
      008420 7B 03            [ 1]  145 	ld	a, (0x03, sp)
      008422 F7               [ 1]  146 	ld	(x), a
                                    147 ;	Source/Std_Lib/Src/stm8s_spi.c: 169: }
      008423 81               [ 4]  148 	ret
                                    149 ;	Source/Std_Lib/Src/stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    150 ;	-----------------------------------------
                                    151 ;	 function SPI_GetFlagStatus
                                    152 ;	-----------------------------------------
      008424                        153 _SPI_GetFlagStatus:
                                    154 ;	Source/Std_Lib/Src/stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      008424 C6 52 03         [ 1]  155 	ld	a, 0x5203
      008427 14 03            [ 1]  156 	and	a, (0x03, sp)
      008429 27 03            [ 1]  157 	jreq	00102$
                                    158 ;	Source/Std_Lib/Src/stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
      00842B A6 01            [ 1]  159 	ld	a, #0x01
      00842D 81               [ 4]  160 	ret
      00842E                        161 00102$:
                                    162 ;	Source/Std_Lib/Src/stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
      00842E 4F               [ 1]  163 	clr	a
                                    164 ;	Source/Std_Lib/Src/stm8s_spi.c: 328: return status;
                                    165 ;	Source/Std_Lib/Src/stm8s_spi.c: 329: }
      00842F 81               [ 4]  166 	ret
                                    167 ;	Source/Std_Lib/Src/stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    168 ;	-----------------------------------------
                                    169 ;	 function SPI_ClearFlag
                                    170 ;	-----------------------------------------
      008430                        171 _SPI_ClearFlag:
                                    172 ;	Source/Std_Lib/Src/stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
      008430 7B 03            [ 1]  173 	ld	a, (0x03, sp)
      008432 43               [ 1]  174 	cpl	a
      008433 C7 52 03         [ 1]  175 	ld	0x5203, a
                                    176 ;	Source/Std_Lib/Src/stm8s_spi.c: 351: }
      008436 81               [ 4]  177 	ret
                                    178 	.area CODE
                                    179 	.area CONST
                                    180 	.area INITIALIZER
                                    181 	.area CABS (ABS)
