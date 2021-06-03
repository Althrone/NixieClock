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
                           000000    52 	Sstm8s_clk$CLK_DeInit$0 ==.
                                     53 ;	Source/Std_Lib/Src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     54 ;	-----------------------------------------
                                     55 ;	 function CLK_DeInit
                                     56 ;	-----------------------------------------
      008152                         57 _CLK_DeInit:
                           000000    58 	Sstm8s_clk$CLK_DeInit$1 ==.
                           000000    59 	Sstm8s_clk$CLK_DeInit$2 ==.
                                     60 ;	Source/Std_Lib/Src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      008152 35 01 50 C0      [ 1]   61 	mov	0x50c0+0, #0x01
                           000004    62 	Sstm8s_clk$CLK_DeInit$3 ==.
                                     63 ;	Source/Std_Lib/Src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008156 35 00 50 C1      [ 1]   64 	mov	0x50c1+0, #0x00
                           000008    65 	Sstm8s_clk$CLK_DeInit$4 ==.
                                     66 ;	Source/Std_Lib/Src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      00815A 35 E1 50 C4      [ 1]   67 	mov	0x50c4+0, #0xe1
                           00000C    68 	Sstm8s_clk$CLK_DeInit$5 ==.
                                     69 ;	Source/Std_Lib/Src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00815E 35 00 50 C5      [ 1]   70 	mov	0x50c5+0, #0x00
                           000010    71 	Sstm8s_clk$CLK_DeInit$6 ==.
                                     72 ;	Source/Std_Lib/Src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008162 35 18 50 C6      [ 1]   73 	mov	0x50c6+0, #0x18
                           000014    74 	Sstm8s_clk$CLK_DeInit$7 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008166 35 FF 50 C7      [ 1]   76 	mov	0x50c7+0, #0xff
                           000018    77 	Sstm8s_clk$CLK_DeInit$8 ==.
                                     78 ;	Source/Std_Lib/Src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00816A 35 FF 50 CA      [ 1]   79 	mov	0x50ca+0, #0xff
                           00001C    80 	Sstm8s_clk$CLK_DeInit$9 ==.
                                     81 ;	Source/Std_Lib/Src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00816E 35 00 50 C8      [ 1]   82 	mov	0x50c8+0, #0x00
                           000020    83 	Sstm8s_clk$CLK_DeInit$10 ==.
                                     84 ;	Source/Std_Lib/Src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008172 35 00 50 C9      [ 1]   85 	mov	0x50c9+0, #0x00
                           000024    86 	Sstm8s_clk$CLK_DeInit$11 ==.
                                     87 ;	Source/Std_Lib/Src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008176                         88 00101$:
      008176 C6 50 C9         [ 1]   89 	ld	a, 0x50c9
      008179 44               [ 1]   90 	srl	a
      00817A 25 FA            [ 1]   91 	jrc	00101$
                           00002A    92 	Sstm8s_clk$CLK_DeInit$12 ==.
                                     93 ;	Source/Std_Lib/Src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00817C 35 00 50 C9      [ 1]   94 	mov	0x50c9+0, #0x00
                           00002E    95 	Sstm8s_clk$CLK_DeInit$13 ==.
                                     96 ;	Source/Std_Lib/Src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008180 35 00 50 CC      [ 1]   97 	mov	0x50cc+0, #0x00
                           000032    98 	Sstm8s_clk$CLK_DeInit$14 ==.
                                     99 ;	Source/Std_Lib/Src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008184 35 00 50 CD      [ 1]  100 	mov	0x50cd+0, #0x00
                           000036   101 	Sstm8s_clk$CLK_DeInit$15 ==.
                                    102 ;	Source/Std_Lib/Src/stm8s_clk.c: 88: }
                           000036   103 	Sstm8s_clk$CLK_DeInit$16 ==.
                           000036   104 	XG$CLK_DeInit$0$0 ==.
      008188 81               [ 4]  105 	ret
                           000037   106 	Sstm8s_clk$CLK_DeInit$17 ==.
                           000037   107 	Sstm8s_clk$CLK_GetClockFreq$18 ==.
                                    108 ;	Source/Std_Lib/Src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    109 ;	-----------------------------------------
                                    110 ;	 function CLK_GetClockFreq
                                    111 ;	-----------------------------------------
      008189                        112 _CLK_GetClockFreq:
                           000037   113 	Sstm8s_clk$CLK_GetClockFreq$19 ==.
      008189 52 04            [ 2]  114 	sub	sp, #4
                           000039   115 	Sstm8s_clk$CLK_GetClockFreq$20 ==.
                           000039   116 	Sstm8s_clk$CLK_GetClockFreq$21 ==.
                                    117 ;	Source/Std_Lib/Src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      00818B C6 50 C3         [ 1]  118 	ld	a, 0x50c3
      00818E 6B 04            [ 1]  119 	ld	(0x04, sp), a
                           00003E   120 	Sstm8s_clk$CLK_GetClockFreq$22 ==.
                                    121 ;	Source/Std_Lib/Src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008190 7B 04            [ 1]  122 	ld	a, (0x04, sp)
      008192 A1 E1            [ 1]  123 	cp	a, #0xe1
      008194 26 26            [ 1]  124 	jrne	00105$
                           000044   125 	Sstm8s_clk$CLK_GetClockFreq$23 ==.
                           000044   126 	Sstm8s_clk$CLK_GetClockFreq$24 ==.
                           000044   127 	Sstm8s_clk$CLK_GetClockFreq$25 ==.
                                    128 ;	Source/Std_Lib/Src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008196 C6 50 C6         [ 1]  129 	ld	a, 0x50c6
      008199 A4 18            [ 1]  130 	and	a, #0x18
                           000049   131 	Sstm8s_clk$CLK_GetClockFreq$26 ==.
                                    132 ;	Source/Std_Lib/Src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      00819B 44               [ 1]  133 	srl	a
      00819C 44               [ 1]  134 	srl	a
      00819D 44               [ 1]  135 	srl	a
                           00004C   136 	Sstm8s_clk$CLK_GetClockFreq$27 ==.
                                    137 ;	Source/Std_Lib/Src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00819E 5F               [ 1]  138 	clrw	x
      00819F 97               [ 1]  139 	ld	xl, a
      0081A0 1C 80 74         [ 2]  140 	addw	x, #(_HSIDivFactor + 0)
      0081A3 F6               [ 1]  141 	ld	a, (x)
                           000052   142 	Sstm8s_clk$CLK_GetClockFreq$28 ==.
                                    143 ;	Source/Std_Lib/Src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0081A4 5F               [ 1]  144 	clrw	x
      0081A5 97               [ 1]  145 	ld	xl, a
      0081A6 90 5F            [ 1]  146 	clrw	y
                           000056   147 	Sstm8s_clk$CLK_GetClockFreq$29 ==.
      0081A8 89               [ 2]  148 	pushw	x
                           000057   149 	Sstm8s_clk$CLK_GetClockFreq$30 ==.
      0081A9 90 89            [ 2]  150 	pushw	y
                           000059   151 	Sstm8s_clk$CLK_GetClockFreq$31 ==.
      0081AB 4B 00            [ 1]  152 	push	#0x00
                           00005B   153 	Sstm8s_clk$CLK_GetClockFreq$32 ==.
      0081AD 4B 24            [ 1]  154 	push	#0x24
                           00005D   155 	Sstm8s_clk$CLK_GetClockFreq$33 ==.
      0081AF 4B F4            [ 1]  156 	push	#0xf4
                           00005F   157 	Sstm8s_clk$CLK_GetClockFreq$34 ==.
      0081B1 4B 00            [ 1]  158 	push	#0x00
                           000061   159 	Sstm8s_clk$CLK_GetClockFreq$35 ==.
      0081B3 CD 8D E1         [ 4]  160 	call	__divulong
      0081B6 5B 08            [ 2]  161 	addw	sp, #8
                           000066   162 	Sstm8s_clk$CLK_GetClockFreq$36 ==.
      0081B8 1F 03            [ 2]  163 	ldw	(0x03, sp), x
      0081BA 20 1A            [ 2]  164 	jra	00106$
      0081BC                        165 00105$:
                           00006A   166 	Sstm8s_clk$CLK_GetClockFreq$37 ==.
                                    167 ;	Source/Std_Lib/Src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0081BC 7B 04            [ 1]  168 	ld	a, (0x04, sp)
      0081BE A1 D2            [ 1]  169 	cp	a, #0xd2
      0081C0 26 0B            [ 1]  170 	jrne	00102$
                           000070   171 	Sstm8s_clk$CLK_GetClockFreq$38 ==.
                           000070   172 	Sstm8s_clk$CLK_GetClockFreq$39 ==.
                           000070   173 	Sstm8s_clk$CLK_GetClockFreq$40 ==.
                                    174 ;	Source/Std_Lib/Src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0081C2 AE F4 00         [ 2]  175 	ldw	x, #0xf400
      0081C5 1F 03            [ 2]  176 	ldw	(0x03, sp), x
      0081C7 90 AE 00 01      [ 2]  177 	ldw	y, #0x0001
                           000079   178 	Sstm8s_clk$CLK_GetClockFreq$41 ==.
      0081CB 20 09            [ 2]  179 	jra	00106$
      0081CD                        180 00102$:
                           00007B   181 	Sstm8s_clk$CLK_GetClockFreq$42 ==.
                           00007B   182 	Sstm8s_clk$CLK_GetClockFreq$43 ==.
                                    183 ;	Source/Std_Lib/Src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0081CD AE 24 00         [ 2]  184 	ldw	x, #0x2400
      0081D0 1F 03            [ 2]  185 	ldw	(0x03, sp), x
      0081D2 90 AE 00 F4      [ 2]  186 	ldw	y, #0x00f4
                           000084   187 	Sstm8s_clk$CLK_GetClockFreq$44 ==.
      0081D6                        188 00106$:
                           000084   189 	Sstm8s_clk$CLK_GetClockFreq$45 ==.
                                    190 ;	Source/Std_Lib/Src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0081D6 1E 03            [ 2]  191 	ldw	x, (0x03, sp)
                           000086   192 	Sstm8s_clk$CLK_GetClockFreq$46 ==.
                                    193 ;	Source/Std_Lib/Src/stm8s_clk.c: 595: }
      0081D8 5B 04            [ 2]  194 	addw	sp, #4
                           000088   195 	Sstm8s_clk$CLK_GetClockFreq$47 ==.
                           000088   196 	Sstm8s_clk$CLK_GetClockFreq$48 ==.
                           000088   197 	XG$CLK_GetClockFreq$0$0 ==.
      0081DA 81               [ 4]  198 	ret
                           000089   199 	Sstm8s_clk$CLK_GetClockFreq$49 ==.
                                    200 	.area CODE
                                    201 	.area CONST
                           000000   202 G$HSIDivFactor$0_0$0 == .
      008074                        203 _HSIDivFactor:
      008074 01                     204 	.db #0x01	; 1
      008075 02                     205 	.db #0x02	; 2
      008076 04                     206 	.db #0x04	; 4
      008077 08                     207 	.db #0x08	; 8
                           000004   208 G$CLKPrescTable$0_0$0 == .
      008078                        209 _CLKPrescTable:
      008078 01                     210 	.db #0x01	; 1
      008079 02                     211 	.db #0x02	; 2
      00807A 04                     212 	.db #0x04	; 4
      00807B 08                     213 	.db #0x08	; 8
      00807C 0A                     214 	.db #0x0a	; 10
      00807D 10                     215 	.db #0x10	; 16
      00807E 14                     216 	.db #0x14	; 20
      00807F 28                     217 	.db #0x28	; 40
                                    218 	.area INITIALIZER
                                    219 	.area CABS (ABS)
                                    220 
                                    221 	.area .debug_line (NOLOAD)
      000204 00 00 01 3D            222 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000208                        223 Ldebug_line_start:
      000208 00 02                  224 	.dw	2
      00020A 00 00 00 7F            225 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00020E 01                     226 	.db	1
      00020F 01                     227 	.db	1
      000210 FB                     228 	.db	-5
      000211 0F                     229 	.db	15
      000212 0A                     230 	.db	10
      000213 00                     231 	.db	0
      000214 01                     232 	.db	1
      000215 01                     233 	.db	1
      000216 01                     234 	.db	1
      000217 01                     235 	.db	1
      000218 00                     236 	.db	0
      000219 00                     237 	.db	0
      00021A 00                     238 	.db	0
      00021B 01                     239 	.db	1
      00021C 43 3A 5C 50 72 6F 67   240 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000244 00                     241 	.db	0
      000245 43 3A 5C 50 72 6F 67   242 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000268 00                     243 	.db	0
      000269 00                     244 	.db	0
      00026A 53 6F 75 72 63 65 2F   245 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      000288 00                     246 	.db	0
      000289 00                     247 	.uleb128	0
      00028A 00                     248 	.uleb128	0
      00028B 00                     249 	.uleb128	0
      00028C 00                     250 	.db	0
      00028D                        251 Ldebug_line_stmt:
      00028D 00                     252 	.db	0
      00028E 05                     253 	.uleb128	5
      00028F 02                     254 	.db	2
      000290 00 00 81 52            255 	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
      000294 03                     256 	.db	3
      000295 C7 00                  257 	.sleb128	71
      000297 01                     258 	.db	1
      000298 09                     259 	.db	9
      000299 00 00                  260 	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
      00029B 03                     261 	.db	3
      00029C 02                     262 	.sleb128	2
      00029D 01                     263 	.db	1
      00029E 09                     264 	.db	9
      00029F 00 04                  265 	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
      0002A1 03                     266 	.db	3
      0002A2 01                     267 	.sleb128	1
      0002A3 01                     268 	.db	1
      0002A4 09                     269 	.db	9
      0002A5 00 04                  270 	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
      0002A7 03                     271 	.db	3
      0002A8 01                     272 	.sleb128	1
      0002A9 01                     273 	.db	1
      0002AA 09                     274 	.db	9
      0002AB 00 04                  275 	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
      0002AD 03                     276 	.db	3
      0002AE 01                     277 	.sleb128	1
      0002AF 01                     278 	.db	1
      0002B0 09                     279 	.db	9
      0002B1 00 04                  280 	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
      0002B3 03                     281 	.db	3
      0002B4 01                     282 	.sleb128	1
      0002B5 01                     283 	.db	1
      0002B6 09                     284 	.db	9
      0002B7 00 04                  285 	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
      0002B9 03                     286 	.db	3
      0002BA 01                     287 	.sleb128	1
      0002BB 01                     288 	.db	1
      0002BC 09                     289 	.db	9
      0002BD 00 04                  290 	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
      0002BF 03                     291 	.db	3
      0002C0 01                     292 	.sleb128	1
      0002C1 01                     293 	.db	1
      0002C2 09                     294 	.db	9
      0002C3 00 04                  295 	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
      0002C5 03                     296 	.db	3
      0002C6 01                     297 	.sleb128	1
      0002C7 01                     298 	.db	1
      0002C8 09                     299 	.db	9
      0002C9 00 04                  300 	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
      0002CB 03                     301 	.db	3
      0002CC 01                     302 	.sleb128	1
      0002CD 01                     303 	.db	1
      0002CE 09                     304 	.db	9
      0002CF 00 04                  305 	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
      0002D1 03                     306 	.db	3
      0002D2 01                     307 	.sleb128	1
      0002D3 01                     308 	.db	1
      0002D4 09                     309 	.db	9
      0002D5 00 06                  310 	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
      0002D7 03                     311 	.db	3
      0002D8 02                     312 	.sleb128	2
      0002D9 01                     313 	.db	1
      0002DA 09                     314 	.db	9
      0002DB 00 04                  315 	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
      0002DD 03                     316 	.db	3
      0002DE 01                     317 	.sleb128	1
      0002DF 01                     318 	.db	1
      0002E0 09                     319 	.db	9
      0002E1 00 04                  320 	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
      0002E3 03                     321 	.db	3
      0002E4 01                     322 	.sleb128	1
      0002E5 01                     323 	.db	1
      0002E6 09                     324 	.db	9
      0002E7 00 04                  325 	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
      0002E9 03                     326 	.db	3
      0002EA 01                     327 	.sleb128	1
      0002EB 01                     328 	.db	1
      0002EC 09                     329 	.db	9
      0002ED 00 01                  330 	.dw	1+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
      0002EF 00                     331 	.db	0
      0002F0 01                     332 	.uleb128	1
      0002F1 01                     333 	.db	1
      0002F2 00                     334 	.db	0
      0002F3 05                     335 	.uleb128	5
      0002F4 02                     336 	.db	2
      0002F5 00 00 81 89            337 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$18)
      0002F9 03                     338 	.db	3
      0002FA B8 04                  339 	.sleb128	568
      0002FC 01                     340 	.db	1
      0002FD 09                     341 	.db	9
      0002FE 00 02                  342 	.dw	Sstm8s_clk$CLK_GetClockFreq$21-Sstm8s_clk$CLK_GetClockFreq$18
      000300 03                     343 	.db	3
      000301 07                     344 	.sleb128	7
      000302 01                     345 	.db	1
      000303 09                     346 	.db	9
      000304 00 05                  347 	.dw	Sstm8s_clk$CLK_GetClockFreq$22-Sstm8s_clk$CLK_GetClockFreq$21
      000306 03                     348 	.db	3
      000307 02                     349 	.sleb128	2
      000308 01                     350 	.db	1
      000309 09                     351 	.db	9
      00030A 00 06                  352 	.dw	Sstm8s_clk$CLK_GetClockFreq$25-Sstm8s_clk$CLK_GetClockFreq$22
      00030C 03                     353 	.db	3
      00030D 02                     354 	.sleb128	2
      00030E 01                     355 	.db	1
      00030F 09                     356 	.db	9
      000310 00 05                  357 	.dw	Sstm8s_clk$CLK_GetClockFreq$26-Sstm8s_clk$CLK_GetClockFreq$25
      000312 03                     358 	.db	3
      000313 01                     359 	.sleb128	1
      000314 01                     360 	.db	1
      000315 09                     361 	.db	9
      000316 00 03                  362 	.dw	Sstm8s_clk$CLK_GetClockFreq$27-Sstm8s_clk$CLK_GetClockFreq$26
      000318 03                     363 	.db	3
      000319 01                     364 	.sleb128	1
      00031A 01                     365 	.db	1
      00031B 09                     366 	.db	9
      00031C 00 06                  367 	.dw	Sstm8s_clk$CLK_GetClockFreq$28-Sstm8s_clk$CLK_GetClockFreq$27
      00031E 03                     368 	.db	3
      00031F 01                     369 	.sleb128	1
      000320 01                     370 	.db	1
      000321 09                     371 	.db	9
      000322 00 18                  372 	.dw	Sstm8s_clk$CLK_GetClockFreq$37-Sstm8s_clk$CLK_GetClockFreq$28
      000324 03                     373 	.db	3
      000325 02                     374 	.sleb128	2
      000326 01                     375 	.db	1
      000327 09                     376 	.db	9
      000328 00 06                  377 	.dw	Sstm8s_clk$CLK_GetClockFreq$40-Sstm8s_clk$CLK_GetClockFreq$37
      00032A 03                     378 	.db	3
      00032B 02                     379 	.sleb128	2
      00032C 01                     380 	.db	1
      00032D 09                     381 	.db	9
      00032E 00 0B                  382 	.dw	Sstm8s_clk$CLK_GetClockFreq$43-Sstm8s_clk$CLK_GetClockFreq$40
      000330 03                     383 	.db	3
      000331 04                     384 	.sleb128	4
      000332 01                     385 	.db	1
      000333 09                     386 	.db	9
      000334 00 09                  387 	.dw	Sstm8s_clk$CLK_GetClockFreq$45-Sstm8s_clk$CLK_GetClockFreq$43
      000336 03                     388 	.db	3
      000337 03                     389 	.sleb128	3
      000338 01                     390 	.db	1
      000339 09                     391 	.db	9
      00033A 00 02                  392 	.dw	Sstm8s_clk$CLK_GetClockFreq$46-Sstm8s_clk$CLK_GetClockFreq$45
      00033C 03                     393 	.db	3
      00033D 01                     394 	.sleb128	1
      00033E 01                     395 	.db	1
      00033F 09                     396 	.db	9
      000340 00 03                  397 	.dw	1+Sstm8s_clk$CLK_GetClockFreq$48-Sstm8s_clk$CLK_GetClockFreq$46
      000342 00                     398 	.db	0
      000343 01                     399 	.uleb128	1
      000344 01                     400 	.db	1
      000345                        401 Ldebug_line_end:
                                    402 
                                    403 	.area .debug_loc (NOLOAD)
      000104                        404 Ldebug_loc_start:
      000104 00 00 81 DA            405 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$47)
      000108 00 00 81 DB            406 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$49)
      00010C 00 02                  407 	.dw	2
      00010E 78                     408 	.db	120
      00010F 01                     409 	.sleb128	1
      000110 00 00 81 C2            410 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$38)
      000114 00 00 81 DA            411 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$47)
      000118 00 02                  412 	.dw	2
      00011A 78                     413 	.db	120
      00011B 05                     414 	.sleb128	5
      00011C 00 00 81 B8            415 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$36)
      000120 00 00 81 C2            416 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$38)
      000124 00 02                  417 	.dw	2
      000126 78                     418 	.db	120
      000127 05                     419 	.sleb128	5
      000128 00 00 81 B3            420 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$35)
      00012C 00 00 81 B8            421 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$36)
      000130 00 02                  422 	.dw	2
      000132 78                     423 	.db	120
      000133 0D                     424 	.sleb128	13
      000134 00 00 81 B1            425 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$34)
      000138 00 00 81 B3            426 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$35)
      00013C 00 02                  427 	.dw	2
      00013E 78                     428 	.db	120
      00013F 0C                     429 	.sleb128	12
      000140 00 00 81 AF            430 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$33)
      000144 00 00 81 B1            431 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$34)
      000148 00 02                  432 	.dw	2
      00014A 78                     433 	.db	120
      00014B 0B                     434 	.sleb128	11
      00014C 00 00 81 AD            435 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$32)
      000150 00 00 81 AF            436 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$33)
      000154 00 02                  437 	.dw	2
      000156 78                     438 	.db	120
      000157 0A                     439 	.sleb128	10
      000158 00 00 81 AB            440 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$31)
      00015C 00 00 81 AD            441 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$32)
      000160 00 02                  442 	.dw	2
      000162 78                     443 	.db	120
      000163 09                     444 	.sleb128	9
      000164 00 00 81 A9            445 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$30)
      000168 00 00 81 AB            446 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$31)
      00016C 00 02                  447 	.dw	2
      00016E 78                     448 	.db	120
      00016F 07                     449 	.sleb128	7
      000170 00 00 81 96            450 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$23)
      000174 00 00 81 A9            451 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$30)
      000178 00 02                  452 	.dw	2
      00017A 78                     453 	.db	120
      00017B 05                     454 	.sleb128	5
      00017C 00 00 81 8B            455 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$20)
      000180 00 00 81 96            456 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$23)
      000184 00 02                  457 	.dw	2
      000186 78                     458 	.db	120
      000187 05                     459 	.sleb128	5
      000188 00 00 81 89            460 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$19)
      00018C 00 00 81 8B            461 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$20)
      000190 00 02                  462 	.dw	2
      000192 78                     463 	.db	120
      000193 01                     464 	.sleb128	1
      000194 00 00 00 00            465 	.dw	0,0
      000198 00 00 00 00            466 	.dw	0,0
      00019C 00 00 81 52            467 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      0001A0 00 00 81 89            468 	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
      0001A4 00 02                  469 	.dw	2
      0001A6 78                     470 	.db	120
      0001A7 01                     471 	.sleb128	1
      0001A8 00 00 00 00            472 	.dw	0,0
      0001AC 00 00 00 00            473 	.dw	0,0
                                    474 
                                    475 	.area .debug_abbrev (NOLOAD)
      0000B1                        476 Ldebug_abbrev:
      0000B1 0A                     477 	.uleb128	10
      0000B2 34                     478 	.uleb128	52
      0000B3 00                     479 	.db	0
      0000B4 02                     480 	.uleb128	2
      0000B5 0A                     481 	.uleb128	10
      0000B6 03                     482 	.uleb128	3
      0000B7 08                     483 	.uleb128	8
      0000B8 3F                     484 	.uleb128	63
      0000B9 0C                     485 	.uleb128	12
      0000BA 49                     486 	.uleb128	73
      0000BB 13                     487 	.uleb128	19
      0000BC 00                     488 	.uleb128	0
      0000BD 00                     489 	.uleb128	0
      0000BE 08                     490 	.uleb128	8
      0000BF 01                     491 	.uleb128	1
      0000C0 01                     492 	.db	1
      0000C1 01                     493 	.uleb128	1
      0000C2 13                     494 	.uleb128	19
      0000C3 0B                     495 	.uleb128	11
      0000C4 0B                     496 	.uleb128	11
      0000C5 49                     497 	.uleb128	73
      0000C6 13                     498 	.uleb128	19
      0000C7 00                     499 	.uleb128	0
      0000C8 00                     500 	.uleb128	0
      0000C9 06                     501 	.uleb128	6
      0000CA 34                     502 	.uleb128	52
      0000CB 00                     503 	.db	0
      0000CC 02                     504 	.uleb128	2
      0000CD 0A                     505 	.uleb128	10
      0000CE 03                     506 	.uleb128	3
      0000CF 08                     507 	.uleb128	8
      0000D0 49                     508 	.uleb128	73
      0000D1 13                     509 	.uleb128	19
      0000D2 00                     510 	.uleb128	0
      0000D3 00                     511 	.uleb128	0
      0000D4 04                     512 	.uleb128	4
      0000D5 2E                     513 	.uleb128	46
      0000D6 01                     514 	.db	1
      0000D7 01                     515 	.uleb128	1
      0000D8 13                     516 	.uleb128	19
      0000D9 03                     517 	.uleb128	3
      0000DA 08                     518 	.uleb128	8
      0000DB 11                     519 	.uleb128	17
      0000DC 01                     520 	.uleb128	1
      0000DD 12                     521 	.uleb128	18
      0000DE 01                     522 	.uleb128	1
      0000DF 3F                     523 	.uleb128	63
      0000E0 0C                     524 	.uleb128	12
      0000E1 40                     525 	.uleb128	64
      0000E2 06                     526 	.uleb128	6
      0000E3 49                     527 	.uleb128	73
      0000E4 13                     528 	.uleb128	19
      0000E5 00                     529 	.uleb128	0
      0000E6 00                     530 	.uleb128	0
      0000E7 07                     531 	.uleb128	7
      0000E8 26                     532 	.uleb128	38
      0000E9 00                     533 	.db	0
      0000EA 49                     534 	.uleb128	73
      0000EB 13                     535 	.uleb128	19
      0000EC 00                     536 	.uleb128	0
      0000ED 00                     537 	.uleb128	0
      0000EE 01                     538 	.uleb128	1
      0000EF 11                     539 	.uleb128	17
      0000F0 01                     540 	.db	1
      0000F1 03                     541 	.uleb128	3
      0000F2 08                     542 	.uleb128	8
      0000F3 10                     543 	.uleb128	16
      0000F4 06                     544 	.uleb128	6
      0000F5 13                     545 	.uleb128	19
      0000F6 0B                     546 	.uleb128	11
      0000F7 25                     547 	.uleb128	37
      0000F8 08                     548 	.uleb128	8
      0000F9 00                     549 	.uleb128	0
      0000FA 00                     550 	.uleb128	0
      0000FB 05                     551 	.uleb128	5
      0000FC 0B                     552 	.uleb128	11
      0000FD 00                     553 	.db	0
      0000FE 11                     554 	.uleb128	17
      0000FF 01                     555 	.uleb128	1
      000100 12                     556 	.uleb128	18
      000101 01                     557 	.uleb128	1
      000102 00                     558 	.uleb128	0
      000103 00                     559 	.uleb128	0
      000104 02                     560 	.uleb128	2
      000105 2E                     561 	.uleb128	46
      000106 00                     562 	.db	0
      000107 03                     563 	.uleb128	3
      000108 08                     564 	.uleb128	8
      000109 11                     565 	.uleb128	17
      00010A 01                     566 	.uleb128	1
      00010B 12                     567 	.uleb128	18
      00010C 01                     568 	.uleb128	1
      00010D 3F                     569 	.uleb128	63
      00010E 0C                     570 	.uleb128	12
      00010F 40                     571 	.uleb128	64
      000110 06                     572 	.uleb128	6
      000111 00                     573 	.uleb128	0
      000112 00                     574 	.uleb128	0
      000113 09                     575 	.uleb128	9
      000114 21                     576 	.uleb128	33
      000115 00                     577 	.db	0
      000116 2F                     578 	.uleb128	47
      000117 0B                     579 	.uleb128	11
      000118 00                     580 	.uleb128	0
      000119 00                     581 	.uleb128	0
      00011A 03                     582 	.uleb128	3
      00011B 24                     583 	.uleb128	36
      00011C 00                     584 	.db	0
      00011D 03                     585 	.uleb128	3
      00011E 08                     586 	.uleb128	8
      00011F 0B                     587 	.uleb128	11
      000120 0B                     588 	.uleb128	11
      000121 3E                     589 	.uleb128	62
      000122 0B                     590 	.uleb128	11
      000123 00                     591 	.uleb128	0
      000124 00                     592 	.uleb128	0
      000125 00                     593 	.uleb128	0
                                    594 
                                    595 	.area .debug_info (NOLOAD)
      00024B 00 00 01 68            596 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00024F                        597 Ldebug_info_start:
      00024F 00 02                  598 	.dw	2
      000251 00 00 00 B1            599 	.dw	0,(Ldebug_abbrev)
      000255 04                     600 	.db	4
      000256 01                     601 	.uleb128	1
      000257 53 6F 75 72 63 65 2F   602 	.ascii "Source/Std_Lib/Src/stm8s_clk.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 63 6C 6B
             2E 63
      000275 00                     603 	.db	0
      000276 00 00 02 04            604 	.dw	0,(Ldebug_line_start+-4)
      00027A 01                     605 	.db	1
      00027B 53 44 43 43 20 76 65   606 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000294 00                     607 	.db	0
      000295 02                     608 	.uleb128	2
      000296 43 4C 4B 5F 44 65 49   609 	.ascii "CLK_DeInit"
             6E 69 74
      0002A0 00                     610 	.db	0
      0002A1 00 00 81 52            611 	.dw	0,(_CLK_DeInit)
      0002A5 00 00 81 89            612 	.dw	0,(XG$CLK_DeInit$0$0+1)
      0002A9 01                     613 	.db	1
      0002AA 00 00 01 9C            614 	.dw	0,(Ldebug_loc_start+152)
      0002AE 03                     615 	.uleb128	3
      0002AF 75 6E 73 69 67 6E 65   616 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0002BC 00                     617 	.db	0
      0002BD 04                     618 	.db	4
      0002BE 07                     619 	.db	7
      0002BF 04                     620 	.uleb128	4
      0002C0 00 00 01 06            621 	.dw	0,262
      0002C4 43 4C 4B 5F 47 65 74   622 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0002D4 00                     623 	.db	0
      0002D5 00 00 81 89            624 	.dw	0,(_CLK_GetClockFreq)
      0002D9 00 00 81 DB            625 	.dw	0,(XG$CLK_GetClockFreq$0$0+1)
      0002DD 01                     626 	.db	1
      0002DE 00 00 01 04            627 	.dw	0,(Ldebug_loc_start)
      0002E2 00 00 00 63            628 	.dw	0,99
      0002E6 05                     629 	.uleb128	5
      0002E7 00 00 81 96            630 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$24)
      0002EB 00 00 81 A8            631 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$29)
      0002EF 05                     632 	.uleb128	5
      0002F0 00 00 81 C2            633 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$39)
      0002F4 00 00 81 CB            634 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$41)
      0002F8 05                     635 	.uleb128	5
      0002F9 00 00 81 CD            636 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$42)
      0002FD 00 00 81 D6            637 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$44)
      000301 06                     638 	.uleb128	6
      000302 0E                     639 	.db	14
      000303 54                     640 	.db	84
      000304 93                     641 	.db	147
      000305 01                     642 	.uleb128	1
      000306 53                     643 	.db	83
      000307 93                     644 	.db	147
      000308 01                     645 	.uleb128	1
      000309 91                     646 	.db	145
      00030A 7E                     647 	.sleb128	-2
      00030B 93                     648 	.db	147
      00030C 01                     649 	.uleb128	1
      00030D 91                     650 	.db	145
      00030E 7F                     651 	.sleb128	-1
      00030F 93                     652 	.db	147
      000310 01                     653 	.uleb128	1
      000311 63 6C 6F 63 6B 66 72   654 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      00031F 00                     655 	.db	0
      000320 00 00 00 63            656 	.dw	0,99
      000324 06                     657 	.uleb128	6
      000325 02                     658 	.db	2
      000326 91                     659 	.db	145
      000327 7F                     660 	.sleb128	-1
      000328 63 6C 6F 63 6B 73 6F   661 	.ascii "clocksource"
             75 72 63 65
      000333 00                     662 	.db	0
      000334 00 00 01 06            663 	.dw	0,262
      000338 06                     664 	.uleb128	6
      000339 01                     665 	.db	1
      00033A 50                     666 	.db	80
      00033B 74 6D 70               667 	.ascii "tmp"
      00033E 00                     668 	.db	0
      00033F 00 00 01 06            669 	.dw	0,262
      000343 06                     670 	.uleb128	6
      000344 01                     671 	.db	1
      000345 50                     672 	.db	80
      000346 70 72 65 73 63         673 	.ascii "presc"
      00034B 00                     674 	.db	0
      00034C 00 00 01 06            675 	.dw	0,262
      000350 00                     676 	.uleb128	0
      000351 03                     677 	.uleb128	3
      000352 75 6E 73 69 67 6E 65   678 	.ascii "unsigned char"
             64 20 63 68 61 72
      00035F 00                     679 	.db	0
      000360 01                     680 	.db	1
      000361 08                     681 	.db	8
      000362 07                     682 	.uleb128	7
      000363 00 00 01 06            683 	.dw	0,262
      000367 08                     684 	.uleb128	8
      000368 00 00 01 29            685 	.dw	0,297
      00036C 04                     686 	.db	4
      00036D 00 00 01 17            687 	.dw	0,279
      000371 09                     688 	.uleb128	9
      000372 03                     689 	.db	3
      000373 00                     690 	.uleb128	0
      000374 0A                     691 	.uleb128	10
      000375 05                     692 	.db	5
      000376 03                     693 	.db	3
      000377 00 00 80 74            694 	.dw	0,(_HSIDivFactor)
      00037B 48 53 49 44 69 76 46   695 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      000387 00                     696 	.db	0
      000388 01                     697 	.db	1
      000389 00 00 01 1C            698 	.dw	0,284
      00038D 08                     699 	.uleb128	8
      00038E 00 00 01 4F            700 	.dw	0,335
      000392 08                     701 	.db	8
      000393 00 00 01 17            702 	.dw	0,279
      000397 09                     703 	.uleb128	9
      000398 07                     704 	.db	7
      000399 00                     705 	.uleb128	0
      00039A 0A                     706 	.uleb128	10
      00039B 05                     707 	.db	5
      00039C 03                     708 	.db	3
      00039D 00 00 80 78            709 	.dw	0,(_CLKPrescTable)
      0003A1 43 4C 4B 50 72 65 73   710 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0003AE 00                     711 	.db	0
      0003AF 01                     712 	.db	1
      0003B0 00 00 01 42            713 	.dw	0,322
      0003B4 00                     714 	.uleb128	0
      0003B5 00                     715 	.uleb128	0
      0003B6 00                     716 	.uleb128	0
      0003B7                        717 Ldebug_info_end:
                                    718 
                                    719 	.area .debug_pubnames (NOLOAD)
      000060 00 00 00 55            720 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000064                        721 Ldebug_pubnames_start:
      000064 00 02                  722 	.dw	2
      000066 00 00 02 4B            723 	.dw	0,(Ldebug_info_start-4)
      00006A 00 00 01 6C            724 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00006E 00 00 00 4A            725 	.dw	0,74
      000072 43 4C 4B 5F 44 65 49   726 	.ascii "CLK_DeInit"
             6E 69 74
      00007C 00                     727 	.db	0
      00007D 00 00 00 74            728 	.dw	0,116
      000081 43 4C 4B 5F 47 65 74   729 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      000091 00                     730 	.db	0
      000092 00 00 01 29            731 	.dw	0,297
      000096 48 53 49 44 69 76 46   732 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      0000A2 00                     733 	.db	0
      0000A3 00 00 01 4F            734 	.dw	0,335
      0000A7 43 4C 4B 50 72 65 73   735 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      0000B4 00                     736 	.db	0
      0000B5 00 00 00 00            737 	.dw	0,0
      0000B9                        738 Ldebug_pubnames_end:
                                    739 
                                    740 	.area .debug_frame (NOLOAD)
      00010D 00 00                  741 	.dw	0
      00010F 00 0E                  742 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000111                        743 Ldebug_CIE0_start:
      000111 FF FF                  744 	.dw	0xffff
      000113 FF FF                  745 	.dw	0xffff
      000115 01                     746 	.db	1
      000116 00                     747 	.db	0
      000117 01                     748 	.uleb128	1
      000118 7F                     749 	.sleb128	-1
      000119 09                     750 	.db	9
      00011A 0C                     751 	.db	12
      00011B 08                     752 	.uleb128	8
      00011C 02                     753 	.uleb128	2
      00011D 89                     754 	.db	137
      00011E 01                     755 	.uleb128	1
      00011F                        756 Ldebug_CIE0_end:
      00011F 00 00 00 60            757 	.dw	0,96
      000123 00 00 01 0D            758 	.dw	0,(Ldebug_CIE0_start-4)
      000127 00 00 81 89            759 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$19)	;initial loc
      00012B 00 00 00 52            760 	.dw	0,Sstm8s_clk$CLK_GetClockFreq$49-Sstm8s_clk$CLK_GetClockFreq$19
      00012F 01                     761 	.db	1
      000130 00 00 81 89            762 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$19)
      000134 0E                     763 	.db	14
      000135 02                     764 	.uleb128	2
      000136 01                     765 	.db	1
      000137 00 00 81 8B            766 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$20)
      00013B 0E                     767 	.db	14
      00013C 06                     768 	.uleb128	6
      00013D 01                     769 	.db	1
      00013E 00 00 81 96            770 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$23)
      000142 0E                     771 	.db	14
      000143 06                     772 	.uleb128	6
      000144 01                     773 	.db	1
      000145 00 00 81 A9            774 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$30)
      000149 0E                     775 	.db	14
      00014A 08                     776 	.uleb128	8
      00014B 01                     777 	.db	1
      00014C 00 00 81 AB            778 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$31)
      000150 0E                     779 	.db	14
      000151 0A                     780 	.uleb128	10
      000152 01                     781 	.db	1
      000153 00 00 81 AD            782 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$32)
      000157 0E                     783 	.db	14
      000158 0B                     784 	.uleb128	11
      000159 01                     785 	.db	1
      00015A 00 00 81 AF            786 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$33)
      00015E 0E                     787 	.db	14
      00015F 0C                     788 	.uleb128	12
      000160 01                     789 	.db	1
      000161 00 00 81 B1            790 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$34)
      000165 0E                     791 	.db	14
      000166 0D                     792 	.uleb128	13
      000167 01                     793 	.db	1
      000168 00 00 81 B3            794 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$35)
      00016C 0E                     795 	.db	14
      00016D 0E                     796 	.uleb128	14
      00016E 01                     797 	.db	1
      00016F 00 00 81 B8            798 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$36)
      000173 0E                     799 	.db	14
      000174 06                     800 	.uleb128	6
      000175 01                     801 	.db	1
      000176 00 00 81 C2            802 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$38)
      00017A 0E                     803 	.db	14
      00017B 06                     804 	.uleb128	6
      00017C 01                     805 	.db	1
      00017D 00 00 81 DA            806 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$47)
      000181 0E                     807 	.db	14
      000182 02                     808 	.uleb128	2
                                    809 
                                    810 	.area .debug_frame (NOLOAD)
      000183 00 00                  811 	.dw	0
      000185 00 0E                  812 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000187                        813 Ldebug_CIE1_start:
      000187 FF FF                  814 	.dw	0xffff
      000189 FF FF                  815 	.dw	0xffff
      00018B 01                     816 	.db	1
      00018C 00                     817 	.db	0
      00018D 01                     818 	.uleb128	1
      00018E 7F                     819 	.sleb128	-1
      00018F 09                     820 	.db	9
      000190 0C                     821 	.db	12
      000191 08                     822 	.uleb128	8
      000192 02                     823 	.uleb128	2
      000193 89                     824 	.db	137
      000194 01                     825 	.uleb128	1
      000195                        826 Ldebug_CIE1_end:
      000195 00 00 00 13            827 	.dw	0,19
      000199 00 00 01 83            828 	.dw	0,(Ldebug_CIE1_start-4)
      00019D 00 00 81 52            829 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)	;initial loc
      0001A1 00 00 00 37            830 	.dw	0,Sstm8s_clk$CLK_DeInit$17-Sstm8s_clk$CLK_DeInit$1
      0001A5 01                     831 	.db	1
      0001A6 00 00 81 52            832 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      0001AA 0E                     833 	.db	14
      0001AB 02                     834 	.uleb128	2
