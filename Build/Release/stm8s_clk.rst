                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_GetClockFreq
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
                                     52 ;	Source/Std_Lib/Src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function CLK_DeInit
                                     55 ;	-----------------------------------------
      008152                         56 _CLK_DeInit:
                                     57 ;	Source/Std_Lib/Src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008152 35 01 50 C0      [ 1]   58 	mov	0x50c0+0, #0x01
                                     59 ;	Source/Std_Lib/Src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008156 35 00 50 C1      [ 1]   60 	mov	0x50c1+0, #0x00
                                     61 ;	Source/Std_Lib/Src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00815A 35 E1 50 C4      [ 1]   62 	mov	0x50c4+0, #0xe1
                                     63 ;	Source/Std_Lib/Src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00815E 35 00 50 C5      [ 1]   64 	mov	0x50c5+0, #0x00
                                     65 ;	Source/Std_Lib/Src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008162 35 18 50 C6      [ 1]   66 	mov	0x50c6+0, #0x18
                                     67 ;	Source/Std_Lib/Src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008166 35 FF 50 C7      [ 1]   68 	mov	0x50c7+0, #0xff
                                     69 ;	Source/Std_Lib/Src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00816A 35 FF 50 CA      [ 1]   70 	mov	0x50ca+0, #0xff
                                     71 ;	Source/Std_Lib/Src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00816E 35 00 50 C8      [ 1]   72 	mov	0x50c8+0, #0x00
                                     73 ;	Source/Std_Lib/Src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008172 35 00 50 C9      [ 1]   74 	mov	0x50c9+0, #0x00
                                     75 ;	Source/Std_Lib/Src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008176                         76 00101$:
      008176 C6 50 C9         [ 1]   77 	ld	a, 0x50c9
      008179 44               [ 1]   78 	srl	a
      00817A 25 FA            [ 1]   79 	jrc	00101$
                                     80 ;	Source/Std_Lib/Src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00817C 35 00 50 C9      [ 1]   81 	mov	0x50c9+0, #0x00
                                     82 ;	Source/Std_Lib/Src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008180 35 00 50 CC      [ 1]   83 	mov	0x50cc+0, #0x00
                                     84 ;	Source/Std_Lib/Src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008184 35 00 50 CD      [ 1]   85 	mov	0x50cd+0, #0x00
                                     86 ;	Source/Std_Lib/Src/stm8s_clk.c: 88: }
      008188 81               [ 4]   87 	ret
                                     88 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                     89 ;	-----------------------------------------
                                     90 ;	 function CLK_GetClockFreq
                                     91 ;	-----------------------------------------
      008189                         92 _CLK_GetClockFreq:
      008189 52 04            [ 2]   93 	sub	sp, #4
                                     94 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00818B C6 50 C3         [ 1]   95 	ld	a, 0x50c3
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      00818E 6B 04            [ 1]   97 	ld	(0x04, sp), a
      008190 A1 E1            [ 1]   98 	cp	a, #0xe1
      008192 26 26            [ 1]   99 	jrne	00105$
                                    100 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008194 C6 50 C6         [ 1]  101 	ld	a, 0x50c6
      008197 A4 18            [ 1]  102 	and	a, #0x18
                                    103 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008199 44               [ 1]  104 	srl	a
      00819A 44               [ 1]  105 	srl	a
      00819B 44               [ 1]  106 	srl	a
                                    107 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00819C 5F               [ 1]  108 	clrw	x
      00819D 97               [ 1]  109 	ld	xl, a
      00819E 1C 80 74         [ 2]  110 	addw	x, #(_HSIDivFactor + 0)
      0081A1 F6               [ 1]  111 	ld	a, (x)
                                    112 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0081A2 5F               [ 1]  113 	clrw	x
      0081A3 97               [ 1]  114 	ld	xl, a
      0081A4 90 5F            [ 1]  115 	clrw	y
      0081A6 89               [ 2]  116 	pushw	x
      0081A7 90 89            [ 2]  117 	pushw	y
      0081A9 4B 00            [ 1]  118 	push	#0x00
      0081AB 4B 24            [ 1]  119 	push	#0x24
      0081AD 4B F4            [ 1]  120 	push	#0xf4
      0081AF 4B 00            [ 1]  121 	push	#0x00
      0081B1 CD 8D BE         [ 4]  122 	call	__divulong
      0081B4 5B 08            [ 2]  123 	addw	sp, #8
      0081B6 1F 03            [ 2]  124 	ldw	(0x03, sp), x
      0081B8 20 1A            [ 2]  125 	jra	00106$
      0081BA                        126 00105$:
                                    127 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0081BA 7B 04            [ 1]  128 	ld	a, (0x04, sp)
      0081BC A1 D2            [ 1]  129 	cp	a, #0xd2
      0081BE 26 0B            [ 1]  130 	jrne	00102$
                                    131 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0081C0 AE F4 00         [ 2]  132 	ldw	x, #0xf400
      0081C3 1F 03            [ 2]  133 	ldw	(0x03, sp), x
      0081C5 90 AE 00 01      [ 2]  134 	ldw	y, #0x0001
      0081C9 20 09            [ 2]  135 	jra	00106$
      0081CB                        136 00102$:
                                    137 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0081CB AE 24 00         [ 2]  138 	ldw	x, #0x2400
      0081CE 1F 03            [ 2]  139 	ldw	(0x03, sp), x
      0081D0 90 AE 00 F4      [ 2]  140 	ldw	y, #0x00f4
      0081D4                        141 00106$:
                                    142 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0081D4 1E 03            [ 2]  143 	ldw	x, (0x03, sp)
                                    144 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0081D6 5B 04            [ 2]  145 	addw	sp, #4
      0081D8 81               [ 4]  146 	ret
                                    147 	.area CODE
                                    148 	.area CONST
      008074                        149 _HSIDivFactor:
      008074 01                     150 	.db #0x01	; 1
      008075 02                     151 	.db #0x02	; 2
      008076 04                     152 	.db #0x04	; 4
      008077 08                     153 	.db #0x08	; 8
      008078                        154 _CLKPrescTable:
      008078 01                     155 	.db #0x01	; 1
      008079 02                     156 	.db #0x02	; 2
      00807A 04                     157 	.db #0x04	; 4
      00807B 08                     158 	.db #0x08	; 8
      00807C 0A                     159 	.db #0x0a	; 10
      00807D 10                     160 	.db #0x10	; 16
      00807E 14                     161 	.db #0x14	; 20
      00807F 28                     162 	.db #0x28	; 40
                                    163 	.area INITIALIZER
                                    164 	.area CABS (ABS)
