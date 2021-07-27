                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_beep
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _BEEP_DeInit
                                     12 	.globl _BEEP_Init
                                     13 	.globl _BEEP_Cmd
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
                           000000    51 	Sstm8s_beep$BEEP_DeInit$0 ==.
                                     52 ;	Source/Std_Lib/Src/stm8s_beep.c: 54: void BEEP_DeInit(void)
                                     53 ;	-----------------------------------------
                                     54 ;	 function BEEP_DeInit
                                     55 ;	-----------------------------------------
      00877D                         56 _BEEP_DeInit:
                           000000    57 	Sstm8s_beep$BEEP_DeInit$1 ==.
                           000000    58 	Sstm8s_beep$BEEP_DeInit$2 ==.
                                     59 ;	Source/Std_Lib/Src/stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
      00877D 35 1F 50 F3      [ 1]   60 	mov	0x50f3+0, #0x1f
                           000004    61 	Sstm8s_beep$BEEP_DeInit$3 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_beep.c: 57: }
                           000004    63 	Sstm8s_beep$BEEP_DeInit$4 ==.
                           000004    64 	XG$BEEP_DeInit$0$0 ==.
      008781 81               [ 4]   65 	ret
                           000005    66 	Sstm8s_beep$BEEP_DeInit$5 ==.
                           000005    67 	Sstm8s_beep$BEEP_Init$6 ==.
                                     68 ;	Source/Std_Lib/Src/stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
                                     69 ;	-----------------------------------------
                                     70 ;	 function BEEP_Init
                                     71 ;	-----------------------------------------
      008782                         72 _BEEP_Init:
                           000005    73 	Sstm8s_beep$BEEP_Init$7 ==.
                           000005    74 	Sstm8s_beep$BEEP_Init$8 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
      008782 C6 50 F3         [ 1]   76 	ld	a, 0x50f3
      008785 A4 1F            [ 1]   77 	and	a, #0x1f
      008787 A1 1F            [ 1]   78 	cp	a, #0x1f
      008789 26 10            [ 1]   79 	jrne	00102$
                           00000E    80 	Sstm8s_beep$BEEP_Init$9 ==.
                           00000E    81 	Sstm8s_beep$BEEP_Init$10 ==.
                           00000E    82 	Sstm8s_beep$BEEP_Init$11 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      00878B C6 50 F3         [ 1]   84 	ld	a, 0x50f3
      00878E A4 E0            [ 1]   85 	and	a, #0xe0
      008790 C7 50 F3         [ 1]   86 	ld	0x50f3, a
                           000016    87 	Sstm8s_beep$BEEP_Init$12 ==.
                                     88 ;	Source/Std_Lib/Src/stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
      008793 C6 50 F3         [ 1]   89 	ld	a, 0x50f3
      008796 AA 0B            [ 1]   90 	or	a, #0x0b
      008798 C7 50 F3         [ 1]   91 	ld	0x50f3, a
                           00001E    92 	Sstm8s_beep$BEEP_Init$13 ==.
      00879B                         93 00102$:
                           00001E    94 	Sstm8s_beep$BEEP_Init$14 ==.
                                     95 ;	Source/Std_Lib/Src/stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
      00879B C6 50 F3         [ 1]   96 	ld	a, 0x50f3
      00879E A4 3F            [ 1]   97 	and	a, #0x3f
      0087A0 C7 50 F3         [ 1]   98 	ld	0x50f3, a
                           000026    99 	Sstm8s_beep$BEEP_Init$15 ==.
                                    100 ;	Source/Std_Lib/Src/stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
      0087A3 C6 50 F3         [ 1]  101 	ld	a, 0x50f3
      0087A6 1A 03            [ 1]  102 	or	a, (0x03, sp)
      0087A8 C7 50 F3         [ 1]  103 	ld	0x50f3, a
                           00002E   104 	Sstm8s_beep$BEEP_Init$16 ==.
                                    105 ;	Source/Std_Lib/Src/stm8s_beep.c: 82: }
                           00002E   106 	Sstm8s_beep$BEEP_Init$17 ==.
                           00002E   107 	XG$BEEP_Init$0$0 ==.
      0087AB 81               [ 4]  108 	ret
                           00002F   109 	Sstm8s_beep$BEEP_Init$18 ==.
                           00002F   110 	Sstm8s_beep$BEEP_Cmd$19 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
                                    112 ;	-----------------------------------------
                                    113 ;	 function BEEP_Cmd
                                    114 ;	-----------------------------------------
      0087AC                        115 _BEEP_Cmd:
                           00002F   116 	Sstm8s_beep$BEEP_Cmd$20 ==.
                           00002F   117 	Sstm8s_beep$BEEP_Cmd$21 ==.
                                    118 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      0087AC C6 50 F3         [ 1]  119 	ld	a, 0x50f3
                           000032   120 	Sstm8s_beep$BEEP_Cmd$22 ==.
                                    121 ;	Source/Std_Lib/Src/stm8s_beep.c: 93: if (NewState != DISABLE)
      0087AF 0D 03            [ 1]  122 	tnz	(0x03, sp)
      0087B1 27 07            [ 1]  123 	jreq	00102$
                           000036   124 	Sstm8s_beep$BEEP_Cmd$23 ==.
                           000036   125 	Sstm8s_beep$BEEP_Cmd$24 ==.
                                    126 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      0087B3 AA 20            [ 1]  127 	or	a, #0x20
      0087B5 C7 50 F3         [ 1]  128 	ld	0x50f3, a
                           00003B   129 	Sstm8s_beep$BEEP_Cmd$25 ==.
      0087B8 20 05            [ 2]  130 	jra	00104$
      0087BA                        131 00102$:
                           00003D   132 	Sstm8s_beep$BEEP_Cmd$26 ==.
                           00003D   133 	Sstm8s_beep$BEEP_Cmd$27 ==.
                                    134 ;	Source/Std_Lib/Src/stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
      0087BA A4 DF            [ 1]  135 	and	a, #0xdf
      0087BC C7 50 F3         [ 1]  136 	ld	0x50f3, a
                           000042   137 	Sstm8s_beep$BEEP_Cmd$28 ==.
      0087BF                        138 00104$:
                           000042   139 	Sstm8s_beep$BEEP_Cmd$29 ==.
                                    140 ;	Source/Std_Lib/Src/stm8s_beep.c: 103: }
                           000042   141 	Sstm8s_beep$BEEP_Cmd$30 ==.
                           000042   142 	XG$BEEP_Cmd$0$0 ==.
      0087BF 81               [ 4]  143 	ret
                           000043   144 	Sstm8s_beep$BEEP_Cmd$31 ==.
                                    145 	.area CODE
                                    146 	.area CONST
                                    147 	.area INITIALIZER
                                    148 	.area CABS (ABS)
                                    149 
                                    150 	.area .debug_line (NOLOAD)
      000A84 00 00 01 06            151 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000A88                        152 Ldebug_line_start:
      000A88 00 02                  153 	.dw	2
      000A8A 00 00 00 80            154 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000A8E 01                     155 	.db	1
      000A8F 01                     156 	.db	1
      000A90 FB                     157 	.db	-5
      000A91 0F                     158 	.db	15
      000A92 0A                     159 	.db	10
      000A93 00                     160 	.db	0
      000A94 01                     161 	.db	1
      000A95 01                     162 	.db	1
      000A96 01                     163 	.db	1
      000A97 01                     164 	.db	1
      000A98 00                     165 	.db	0
      000A99 00                     166 	.db	0
      000A9A 00                     167 	.db	0
      000A9B 01                     168 	.db	1
      000A9C 43 3A 5C 50 72 6F 67   169 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000AC4 00                     170 	.db	0
      000AC5 43 3A 5C 50 72 6F 67   171 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000AE8 00                     172 	.db	0
      000AE9 00                     173 	.db	0
      000AEA 53 6F 75 72 63 65 2F   174 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      000B09 00                     175 	.db	0
      000B0A 00                     176 	.uleb128	0
      000B0B 00                     177 	.uleb128	0
      000B0C 00                     178 	.uleb128	0
      000B0D 00                     179 	.db	0
      000B0E                        180 Ldebug_line_stmt:
      000B0E 00                     181 	.db	0
      000B0F 05                     182 	.uleb128	5
      000B10 02                     183 	.db	2
      000B11 00 00 87 7D            184 	.dw	0,(Sstm8s_beep$BEEP_DeInit$0)
      000B15 03                     185 	.db	3
      000B16 35                     186 	.sleb128	53
      000B17 01                     187 	.db	1
      000B18 09                     188 	.db	9
      000B19 00 00                  189 	.dw	Sstm8s_beep$BEEP_DeInit$2-Sstm8s_beep$BEEP_DeInit$0
      000B1B 03                     190 	.db	3
      000B1C 02                     191 	.sleb128	2
      000B1D 01                     192 	.db	1
      000B1E 09                     193 	.db	9
      000B1F 00 04                  194 	.dw	Sstm8s_beep$BEEP_DeInit$3-Sstm8s_beep$BEEP_DeInit$2
      000B21 03                     195 	.db	3
      000B22 01                     196 	.sleb128	1
      000B23 01                     197 	.db	1
      000B24 09                     198 	.db	9
      000B25 00 01                  199 	.dw	1+Sstm8s_beep$BEEP_DeInit$4-Sstm8s_beep$BEEP_DeInit$3
      000B27 00                     200 	.db	0
      000B28 01                     201 	.uleb128	1
      000B29 01                     202 	.db	1
      000B2A 00                     203 	.db	0
      000B2B 05                     204 	.uleb128	5
      000B2C 02                     205 	.db	2
      000B2D 00 00 87 82            206 	.dw	0,(Sstm8s_beep$BEEP_Init$6)
      000B31 03                     207 	.db	3
      000B32 C2 00                  208 	.sleb128	66
      000B34 01                     209 	.db	1
      000B35 09                     210 	.db	9
      000B36 00 00                  211 	.dw	Sstm8s_beep$BEEP_Init$8-Sstm8s_beep$BEEP_Init$6
      000B38 03                     212 	.db	3
      000B39 06                     213 	.sleb128	6
      000B3A 01                     214 	.db	1
      000B3B 09                     215 	.db	9
      000B3C 00 09                  216 	.dw	Sstm8s_beep$BEEP_Init$11-Sstm8s_beep$BEEP_Init$8
      000B3E 03                     217 	.db	3
      000B3F 02                     218 	.sleb128	2
      000B40 01                     219 	.db	1
      000B41 09                     220 	.db	9
      000B42 00 08                  221 	.dw	Sstm8s_beep$BEEP_Init$12-Sstm8s_beep$BEEP_Init$11
      000B44 03                     222 	.db	3
      000B45 01                     223 	.sleb128	1
      000B46 01                     224 	.db	1
      000B47 09                     225 	.db	9
      000B48 00 08                  226 	.dw	Sstm8s_beep$BEEP_Init$14-Sstm8s_beep$BEEP_Init$12
      000B4A 03                     227 	.db	3
      000B4B 04                     228 	.sleb128	4
      000B4C 01                     229 	.db	1
      000B4D 09                     230 	.db	9
      000B4E 00 08                  231 	.dw	Sstm8s_beep$BEEP_Init$15-Sstm8s_beep$BEEP_Init$14
      000B50 03                     232 	.db	3
      000B51 01                     233 	.sleb128	1
      000B52 01                     234 	.db	1
      000B53 09                     235 	.db	9
      000B54 00 08                  236 	.dw	Sstm8s_beep$BEEP_Init$16-Sstm8s_beep$BEEP_Init$15
      000B56 03                     237 	.db	3
      000B57 01                     238 	.sleb128	1
      000B58 01                     239 	.db	1
      000B59 09                     240 	.db	9
      000B5A 00 01                  241 	.dw	1+Sstm8s_beep$BEEP_Init$17-Sstm8s_beep$BEEP_Init$16
      000B5C 00                     242 	.db	0
      000B5D 01                     243 	.uleb128	1
      000B5E 01                     244 	.db	1
      000B5F 00                     245 	.db	0
      000B60 05                     246 	.uleb128	5
      000B61 02                     247 	.db	2
      000B62 00 00 87 AC            248 	.dw	0,(Sstm8s_beep$BEEP_Cmd$19)
      000B66 03                     249 	.db	3
      000B67 DA 00                  250 	.sleb128	90
      000B69 01                     251 	.db	1
      000B6A 09                     252 	.db	9
      000B6B 00 00                  253 	.dw	Sstm8s_beep$BEEP_Cmd$21-Sstm8s_beep$BEEP_Cmd$19
      000B6D 03                     254 	.db	3
      000B6E 05                     255 	.sleb128	5
      000B6F 01                     256 	.db	1
      000B70 09                     257 	.db	9
      000B71 00 03                  258 	.dw	Sstm8s_beep$BEEP_Cmd$22-Sstm8s_beep$BEEP_Cmd$21
      000B73 03                     259 	.db	3
      000B74 7D                     260 	.sleb128	-3
      000B75 01                     261 	.db	1
      000B76 09                     262 	.db	9
      000B77 00 04                  263 	.dw	Sstm8s_beep$BEEP_Cmd$24-Sstm8s_beep$BEEP_Cmd$22
      000B79 03                     264 	.db	3
      000B7A 03                     265 	.sleb128	3
      000B7B 01                     266 	.db	1
      000B7C 09                     267 	.db	9
      000B7D 00 07                  268 	.dw	Sstm8s_beep$BEEP_Cmd$27-Sstm8s_beep$BEEP_Cmd$24
      000B7F 03                     269 	.db	3
      000B80 05                     270 	.sleb128	5
      000B81 01                     271 	.db	1
      000B82 09                     272 	.db	9
      000B83 00 05                  273 	.dw	Sstm8s_beep$BEEP_Cmd$29-Sstm8s_beep$BEEP_Cmd$27
      000B85 03                     274 	.db	3
      000B86 02                     275 	.sleb128	2
      000B87 01                     276 	.db	1
      000B88 09                     277 	.db	9
      000B89 00 01                  278 	.dw	1+Sstm8s_beep$BEEP_Cmd$30-Sstm8s_beep$BEEP_Cmd$29
      000B8B 00                     279 	.db	0
      000B8C 01                     280 	.uleb128	1
      000B8D 01                     281 	.db	1
      000B8E                        282 Ldebug_line_end:
                                    283 
                                    284 	.area .debug_loc (NOLOAD)
      0009A8                        285 Ldebug_loc_start:
      0009A8 00 00 87 AC            286 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0009AC 00 00 87 C0            287 	.dw	0,(Sstm8s_beep$BEEP_Cmd$31)
      0009B0 00 02                  288 	.dw	2
      0009B2 78                     289 	.db	120
      0009B3 01                     290 	.sleb128	1
      0009B4 00 00 00 00            291 	.dw	0,0
      0009B8 00 00 00 00            292 	.dw	0,0
      0009BC 00 00 87 8B            293 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0009C0 00 00 87 AC            294 	.dw	0,(Sstm8s_beep$BEEP_Init$18)
      0009C4 00 02                  295 	.dw	2
      0009C6 78                     296 	.db	120
      0009C7 01                     297 	.sleb128	1
      0009C8 00 00 87 82            298 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      0009CC 00 00 87 8B            299 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0009D0 00 02                  300 	.dw	2
      0009D2 78                     301 	.db	120
      0009D3 01                     302 	.sleb128	1
      0009D4 00 00 00 00            303 	.dw	0,0
      0009D8 00 00 00 00            304 	.dw	0,0
      0009DC 00 00 87 7D            305 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      0009E0 00 00 87 82            306 	.dw	0,(Sstm8s_beep$BEEP_DeInit$5)
      0009E4 00 02                  307 	.dw	2
      0009E6 78                     308 	.db	120
      0009E7 01                     309 	.sleb128	1
      0009E8 00 00 00 00            310 	.dw	0,0
      0009EC 00 00 00 00            311 	.dw	0,0
                                    312 
                                    313 	.area .debug_abbrev (NOLOAD)
      0002D3                        314 Ldebug_abbrev:
      0002D3 04                     315 	.uleb128	4
      0002D4 05                     316 	.uleb128	5
      0002D5 00                     317 	.db	0
      0002D6 02                     318 	.uleb128	2
      0002D7 0A                     319 	.uleb128	10
      0002D8 03                     320 	.uleb128	3
      0002D9 08                     321 	.uleb128	8
      0002DA 49                     322 	.uleb128	73
      0002DB 13                     323 	.uleb128	19
      0002DC 00                     324 	.uleb128	0
      0002DD 00                     325 	.uleb128	0
      0002DE 03                     326 	.uleb128	3
      0002DF 2E                     327 	.uleb128	46
      0002E0 01                     328 	.db	1
      0002E1 01                     329 	.uleb128	1
      0002E2 13                     330 	.uleb128	19
      0002E3 03                     331 	.uleb128	3
      0002E4 08                     332 	.uleb128	8
      0002E5 11                     333 	.uleb128	17
      0002E6 01                     334 	.uleb128	1
      0002E7 12                     335 	.uleb128	18
      0002E8 01                     336 	.uleb128	1
      0002E9 3F                     337 	.uleb128	63
      0002EA 0C                     338 	.uleb128	12
      0002EB 40                     339 	.uleb128	64
      0002EC 06                     340 	.uleb128	6
      0002ED 00                     341 	.uleb128	0
      0002EE 00                     342 	.uleb128	0
      0002EF 01                     343 	.uleb128	1
      0002F0 11                     344 	.uleb128	17
      0002F1 01                     345 	.db	1
      0002F2 03                     346 	.uleb128	3
      0002F3 08                     347 	.uleb128	8
      0002F4 10                     348 	.uleb128	16
      0002F5 06                     349 	.uleb128	6
      0002F6 13                     350 	.uleb128	19
      0002F7 0B                     351 	.uleb128	11
      0002F8 25                     352 	.uleb128	37
      0002F9 08                     353 	.uleb128	8
      0002FA 00                     354 	.uleb128	0
      0002FB 00                     355 	.uleb128	0
      0002FC 05                     356 	.uleb128	5
      0002FD 0B                     357 	.uleb128	11
      0002FE 00                     358 	.db	0
      0002FF 11                     359 	.uleb128	17
      000300 01                     360 	.uleb128	1
      000301 12                     361 	.uleb128	18
      000302 01                     362 	.uleb128	1
      000303 00                     363 	.uleb128	0
      000304 00                     364 	.uleb128	0
      000305 02                     365 	.uleb128	2
      000306 2E                     366 	.uleb128	46
      000307 00                     367 	.db	0
      000308 03                     368 	.uleb128	3
      000309 08                     369 	.uleb128	8
      00030A 11                     370 	.uleb128	17
      00030B 01                     371 	.uleb128	1
      00030C 12                     372 	.uleb128	18
      00030D 01                     373 	.uleb128	1
      00030E 3F                     374 	.uleb128	63
      00030F 0C                     375 	.uleb128	12
      000310 40                     376 	.uleb128	64
      000311 06                     377 	.uleb128	6
      000312 00                     378 	.uleb128	0
      000313 00                     379 	.uleb128	0
      000314 07                     380 	.uleb128	7
      000315 2E                     381 	.uleb128	46
      000316 01                     382 	.db	1
      000317 03                     383 	.uleb128	3
      000318 08                     384 	.uleb128	8
      000319 11                     385 	.uleb128	17
      00031A 01                     386 	.uleb128	1
      00031B 12                     387 	.uleb128	18
      00031C 01                     388 	.uleb128	1
      00031D 3F                     389 	.uleb128	63
      00031E 0C                     390 	.uleb128	12
      00031F 40                     391 	.uleb128	64
      000320 06                     392 	.uleb128	6
      000321 00                     393 	.uleb128	0
      000322 00                     394 	.uleb128	0
      000323 06                     395 	.uleb128	6
      000324 24                     396 	.uleb128	36
      000325 00                     397 	.db	0
      000326 03                     398 	.uleb128	3
      000327 08                     399 	.uleb128	8
      000328 0B                     400 	.uleb128	11
      000329 0B                     401 	.uleb128	11
      00032A 3E                     402 	.uleb128	62
      00032B 0B                     403 	.uleb128	11
      00032C 00                     404 	.uleb128	0
      00032D 00                     405 	.uleb128	0
      00032E 00                     406 	.uleb128	0
                                    407 
                                    408 	.area .debug_info (NOLOAD)
      000F56 00 00 00 ED            409 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000F5A                        410 Ldebug_info_start:
      000F5A 00 02                  411 	.dw	2
      000F5C 00 00 02 D3            412 	.dw	0,(Ldebug_abbrev)
      000F60 04                     413 	.db	4
      000F61 01                     414 	.uleb128	1
      000F62 53 6F 75 72 63 65 2F   415 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      000F81 00                     416 	.db	0
      000F82 00 00 0A 84            417 	.dw	0,(Ldebug_line_start+-4)
      000F86 01                     418 	.db	1
      000F87 53 44 43 43 20 76 65   419 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000FA0 00                     420 	.db	0
      000FA1 02                     421 	.uleb128	2
      000FA2 42 45 45 50 5F 44 65   422 	.ascii "BEEP_DeInit"
             49 6E 69 74
      000FAD 00                     423 	.db	0
      000FAE 00 00 87 7D            424 	.dw	0,(_BEEP_DeInit)
      000FB2 00 00 87 82            425 	.dw	0,(XG$BEEP_DeInit$0$0+1)
      000FB6 01                     426 	.db	1
      000FB7 00 00 09 DC            427 	.dw	0,(Ldebug_loc_start+52)
      000FBB 03                     428 	.uleb128	3
      000FBC 00 00 00 A2            429 	.dw	0,162
      000FC0 42 45 45 50 5F 49 6E   430 	.ascii "BEEP_Init"
             69 74
      000FC9 00                     431 	.db	0
      000FCA 00 00 87 82            432 	.dw	0,(_BEEP_Init)
      000FCE 00 00 87 AC            433 	.dw	0,(XG$BEEP_Init$0$0+1)
      000FD2 01                     434 	.db	1
      000FD3 00 00 09 BC            435 	.dw	0,(Ldebug_loc_start+20)
      000FD7 04                     436 	.uleb128	4
      000FD8 02                     437 	.db	2
      000FD9 91                     438 	.db	145
      000FDA 02                     439 	.sleb128	2
      000FDB 42 45 45 50 5F 46 72   440 	.ascii "BEEP_Frequency"
             65 71 75 65 6E 63 79
      000FE9 00                     441 	.db	0
      000FEA 00 00 00 A2            442 	.dw	0,162
      000FEE 05                     443 	.uleb128	5
      000FEF 00 00 87 8B            444 	.dw	0,(Sstm8s_beep$BEEP_Init$10)
      000FF3 00 00 87 9B            445 	.dw	0,(Sstm8s_beep$BEEP_Init$13)
      000FF7 00                     446 	.uleb128	0
      000FF8 06                     447 	.uleb128	6
      000FF9 75 6E 73 69 67 6E 65   448 	.ascii "unsigned char"
             64 20 63 68 61 72
      001006 00                     449 	.db	0
      001007 01                     450 	.db	1
      001008 08                     451 	.db	8
      001009 07                     452 	.uleb128	7
      00100A 42 45 45 50 5F 43 6D   453 	.ascii "BEEP_Cmd"
             64
      001012 00                     454 	.db	0
      001013 00 00 87 AC            455 	.dw	0,(_BEEP_Cmd)
      001017 00 00 87 C0            456 	.dw	0,(XG$BEEP_Cmd$0$0+1)
      00101B 01                     457 	.db	1
      00101C 00 00 09 A8            458 	.dw	0,(Ldebug_loc_start)
      001020 04                     459 	.uleb128	4
      001021 02                     460 	.db	2
      001022 91                     461 	.db	145
      001023 02                     462 	.sleb128	2
      001024 4E 65 77 53 74 61 74   463 	.ascii "NewState"
             65
      00102C 00                     464 	.db	0
      00102D 00 00 00 A2            465 	.dw	0,162
      001031 05                     466 	.uleb128	5
      001032 00 00 87 B3            467 	.dw	0,(Sstm8s_beep$BEEP_Cmd$23)
      001036 00 00 87 B8            468 	.dw	0,(Sstm8s_beep$BEEP_Cmd$25)
      00103A 05                     469 	.uleb128	5
      00103B 00 00 87 BA            470 	.dw	0,(Sstm8s_beep$BEEP_Cmd$26)
      00103F 00 00 87 BF            471 	.dw	0,(Sstm8s_beep$BEEP_Cmd$28)
      001043 00                     472 	.uleb128	0
      001044 00                     473 	.uleb128	0
      001045 00                     474 	.uleb128	0
      001046 00                     475 	.uleb128	0
      001047                        476 Ldebug_info_end:
                                    477 
                                    478 	.area .debug_pubnames (NOLOAD)
      000312 00 00 00 39            479 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000316                        480 Ldebug_pubnames_start:
      000316 00 02                  481 	.dw	2
      000318 00 00 0F 56            482 	.dw	0,(Ldebug_info_start-4)
      00031C 00 00 00 F1            483 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000320 00 00 00 4B            484 	.dw	0,75
      000324 42 45 45 50 5F 44 65   485 	.ascii "BEEP_DeInit"
             49 6E 69 74
      00032F 00                     486 	.db	0
      000330 00 00 00 65            487 	.dw	0,101
      000334 42 45 45 50 5F 49 6E   488 	.ascii "BEEP_Init"
             69 74
      00033D 00                     489 	.db	0
      00033E 00 00 00 B3            490 	.dw	0,179
      000342 42 45 45 50 5F 43 6D   491 	.ascii "BEEP_Cmd"
             64
      00034A 00                     492 	.db	0
      00034B 00 00 00 00            493 	.dw	0,0
      00034F                        494 Ldebug_pubnames_end:
                                    495 
                                    496 	.area .debug_frame (NOLOAD)
      0008BA 00 00                  497 	.dw	0
      0008BC 00 0E                  498 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0008BE                        499 Ldebug_CIE0_start:
      0008BE FF FF                  500 	.dw	0xffff
      0008C0 FF FF                  501 	.dw	0xffff
      0008C2 01                     502 	.db	1
      0008C3 00                     503 	.db	0
      0008C4 01                     504 	.uleb128	1
      0008C5 7F                     505 	.sleb128	-1
      0008C6 09                     506 	.db	9
      0008C7 0C                     507 	.db	12
      0008C8 08                     508 	.uleb128	8
      0008C9 02                     509 	.uleb128	2
      0008CA 89                     510 	.db	137
      0008CB 01                     511 	.uleb128	1
      0008CC                        512 Ldebug_CIE0_end:
      0008CC 00 00 00 13            513 	.dw	0,19
      0008D0 00 00 08 BA            514 	.dw	0,(Ldebug_CIE0_start-4)
      0008D4 00 00 87 AC            515 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)	;initial loc
      0008D8 00 00 00 14            516 	.dw	0,Sstm8s_beep$BEEP_Cmd$31-Sstm8s_beep$BEEP_Cmd$20
      0008DC 01                     517 	.db	1
      0008DD 00 00 87 AC            518 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0008E1 0E                     519 	.db	14
      0008E2 02                     520 	.uleb128	2
                                    521 
                                    522 	.area .debug_frame (NOLOAD)
      0008E3 00 00                  523 	.dw	0
      0008E5 00 0E                  524 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0008E7                        525 Ldebug_CIE1_start:
      0008E7 FF FF                  526 	.dw	0xffff
      0008E9 FF FF                  527 	.dw	0xffff
      0008EB 01                     528 	.db	1
      0008EC 00                     529 	.db	0
      0008ED 01                     530 	.uleb128	1
      0008EE 7F                     531 	.sleb128	-1
      0008EF 09                     532 	.db	9
      0008F0 0C                     533 	.db	12
      0008F1 08                     534 	.uleb128	8
      0008F2 02                     535 	.uleb128	2
      0008F3 89                     536 	.db	137
      0008F4 01                     537 	.uleb128	1
      0008F5                        538 Ldebug_CIE1_end:
      0008F5 00 00 00 1A            539 	.dw	0,26
      0008F9 00 00 08 E3            540 	.dw	0,(Ldebug_CIE1_start-4)
      0008FD 00 00 87 82            541 	.dw	0,(Sstm8s_beep$BEEP_Init$7)	;initial loc
      000901 00 00 00 2A            542 	.dw	0,Sstm8s_beep$BEEP_Init$18-Sstm8s_beep$BEEP_Init$7
      000905 01                     543 	.db	1
      000906 00 00 87 82            544 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      00090A 0E                     545 	.db	14
      00090B 02                     546 	.uleb128	2
      00090C 01                     547 	.db	1
      00090D 00 00 87 8B            548 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      000911 0E                     549 	.db	14
      000912 02                     550 	.uleb128	2
                                    551 
                                    552 	.area .debug_frame (NOLOAD)
      000913 00 00                  553 	.dw	0
      000915 00 0E                  554 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000917                        555 Ldebug_CIE2_start:
      000917 FF FF                  556 	.dw	0xffff
      000919 FF FF                  557 	.dw	0xffff
      00091B 01                     558 	.db	1
      00091C 00                     559 	.db	0
      00091D 01                     560 	.uleb128	1
      00091E 7F                     561 	.sleb128	-1
      00091F 09                     562 	.db	9
      000920 0C                     563 	.db	12
      000921 08                     564 	.uleb128	8
      000922 02                     565 	.uleb128	2
      000923 89                     566 	.db	137
      000924 01                     567 	.uleb128	1
      000925                        568 Ldebug_CIE2_end:
      000925 00 00 00 13            569 	.dw	0,19
      000929 00 00 09 13            570 	.dw	0,(Ldebug_CIE2_start-4)
      00092D 00 00 87 7D            571 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)	;initial loc
      000931 00 00 00 05            572 	.dw	0,Sstm8s_beep$BEEP_DeInit$5-Sstm8s_beep$BEEP_DeInit$1
      000935 01                     573 	.db	1
      000936 00 00 87 7D            574 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      00093A 0E                     575 	.db	14
      00093B 02                     576 	.uleb128	2
