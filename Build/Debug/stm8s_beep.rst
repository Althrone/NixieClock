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
      008765                         56 _BEEP_DeInit:
                           000000    57 	Sstm8s_beep$BEEP_DeInit$1 ==.
                           000000    58 	Sstm8s_beep$BEEP_DeInit$2 ==.
                                     59 ;	Source/Std_Lib/Src/stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
      008765 35 1F 50 F3      [ 1]   60 	mov	0x50f3+0, #0x1f
                           000004    61 	Sstm8s_beep$BEEP_DeInit$3 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_beep.c: 57: }
                           000004    63 	Sstm8s_beep$BEEP_DeInit$4 ==.
                           000004    64 	XG$BEEP_DeInit$0$0 ==.
      008769 81               [ 4]   65 	ret
                           000005    66 	Sstm8s_beep$BEEP_DeInit$5 ==.
                           000005    67 	Sstm8s_beep$BEEP_Init$6 ==.
                                     68 ;	Source/Std_Lib/Src/stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
                                     69 ;	-----------------------------------------
                                     70 ;	 function BEEP_Init
                                     71 ;	-----------------------------------------
      00876A                         72 _BEEP_Init:
                           000005    73 	Sstm8s_beep$BEEP_Init$7 ==.
                           000005    74 	Sstm8s_beep$BEEP_Init$8 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
      00876A C6 50 F3         [ 1]   76 	ld	a, 0x50f3
      00876D A4 1F            [ 1]   77 	and	a, #0x1f
      00876F A1 1F            [ 1]   78 	cp	a, #0x1f
      008771 26 10            [ 1]   79 	jrne	00102$
                           00000E    80 	Sstm8s_beep$BEEP_Init$9 ==.
                           00000E    81 	Sstm8s_beep$BEEP_Init$10 ==.
                           00000E    82 	Sstm8s_beep$BEEP_Init$11 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      008773 C6 50 F3         [ 1]   84 	ld	a, 0x50f3
      008776 A4 E0            [ 1]   85 	and	a, #0xe0
      008778 C7 50 F3         [ 1]   86 	ld	0x50f3, a
                           000016    87 	Sstm8s_beep$BEEP_Init$12 ==.
                                     88 ;	Source/Std_Lib/Src/stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
      00877B C6 50 F3         [ 1]   89 	ld	a, 0x50f3
      00877E AA 0B            [ 1]   90 	or	a, #0x0b
      008780 C7 50 F3         [ 1]   91 	ld	0x50f3, a
                           00001E    92 	Sstm8s_beep$BEEP_Init$13 ==.
      008783                         93 00102$:
                           00001E    94 	Sstm8s_beep$BEEP_Init$14 ==.
                                     95 ;	Source/Std_Lib/Src/stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
      008783 C6 50 F3         [ 1]   96 	ld	a, 0x50f3
      008786 A4 3F            [ 1]   97 	and	a, #0x3f
      008788 C7 50 F3         [ 1]   98 	ld	0x50f3, a
                           000026    99 	Sstm8s_beep$BEEP_Init$15 ==.
                                    100 ;	Source/Std_Lib/Src/stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
      00878B C6 50 F3         [ 1]  101 	ld	a, 0x50f3
      00878E 1A 03            [ 1]  102 	or	a, (0x03, sp)
      008790 C7 50 F3         [ 1]  103 	ld	0x50f3, a
                           00002E   104 	Sstm8s_beep$BEEP_Init$16 ==.
                                    105 ;	Source/Std_Lib/Src/stm8s_beep.c: 82: }
                           00002E   106 	Sstm8s_beep$BEEP_Init$17 ==.
                           00002E   107 	XG$BEEP_Init$0$0 ==.
      008793 81               [ 4]  108 	ret
                           00002F   109 	Sstm8s_beep$BEEP_Init$18 ==.
                           00002F   110 	Sstm8s_beep$BEEP_Cmd$19 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
                                    112 ;	-----------------------------------------
                                    113 ;	 function BEEP_Cmd
                                    114 ;	-----------------------------------------
      008794                        115 _BEEP_Cmd:
                           00002F   116 	Sstm8s_beep$BEEP_Cmd$20 ==.
                           00002F   117 	Sstm8s_beep$BEEP_Cmd$21 ==.
                                    118 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      008794 C6 50 F3         [ 1]  119 	ld	a, 0x50f3
                           000032   120 	Sstm8s_beep$BEEP_Cmd$22 ==.
                                    121 ;	Source/Std_Lib/Src/stm8s_beep.c: 93: if (NewState != DISABLE)
      008797 0D 03            [ 1]  122 	tnz	(0x03, sp)
      008799 27 07            [ 1]  123 	jreq	00102$
                           000036   124 	Sstm8s_beep$BEEP_Cmd$23 ==.
                           000036   125 	Sstm8s_beep$BEEP_Cmd$24 ==.
                                    126 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      00879B AA 20            [ 1]  127 	or	a, #0x20
      00879D C7 50 F3         [ 1]  128 	ld	0x50f3, a
                           00003B   129 	Sstm8s_beep$BEEP_Cmd$25 ==.
      0087A0 20 05            [ 2]  130 	jra	00104$
      0087A2                        131 00102$:
                           00003D   132 	Sstm8s_beep$BEEP_Cmd$26 ==.
                           00003D   133 	Sstm8s_beep$BEEP_Cmd$27 ==.
                                    134 ;	Source/Std_Lib/Src/stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
      0087A2 A4 DF            [ 1]  135 	and	a, #0xdf
      0087A4 C7 50 F3         [ 1]  136 	ld	0x50f3, a
                           000042   137 	Sstm8s_beep$BEEP_Cmd$28 ==.
      0087A7                        138 00104$:
                           000042   139 	Sstm8s_beep$BEEP_Cmd$29 ==.
                                    140 ;	Source/Std_Lib/Src/stm8s_beep.c: 103: }
                           000042   141 	Sstm8s_beep$BEEP_Cmd$30 ==.
                           000042   142 	XG$BEEP_Cmd$0$0 ==.
      0087A7 81               [ 4]  143 	ret
                           000043   144 	Sstm8s_beep$BEEP_Cmd$31 ==.
                                    145 	.area CODE
                                    146 	.area CONST
                                    147 	.area INITIALIZER
                                    148 	.area CABS (ABS)
                                    149 
                                    150 	.area .debug_line (NOLOAD)
      000A6C 00 00 01 06            151 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000A70                        152 Ldebug_line_start:
      000A70 00 02                  153 	.dw	2
      000A72 00 00 00 80            154 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000A76 01                     155 	.db	1
      000A77 01                     156 	.db	1
      000A78 FB                     157 	.db	-5
      000A79 0F                     158 	.db	15
      000A7A 0A                     159 	.db	10
      000A7B 00                     160 	.db	0
      000A7C 01                     161 	.db	1
      000A7D 01                     162 	.db	1
      000A7E 01                     163 	.db	1
      000A7F 01                     164 	.db	1
      000A80 00                     165 	.db	0
      000A81 00                     166 	.db	0
      000A82 00                     167 	.db	0
      000A83 01                     168 	.db	1
      000A84 43 3A 5C 50 72 6F 67   169 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000AAC 00                     170 	.db	0
      000AAD 43 3A 5C 50 72 6F 67   171 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000AD0 00                     172 	.db	0
      000AD1 00                     173 	.db	0
      000AD2 53 6F 75 72 63 65 2F   174 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      000AF1 00                     175 	.db	0
      000AF2 00                     176 	.uleb128	0
      000AF3 00                     177 	.uleb128	0
      000AF4 00                     178 	.uleb128	0
      000AF5 00                     179 	.db	0
      000AF6                        180 Ldebug_line_stmt:
      000AF6 00                     181 	.db	0
      000AF7 05                     182 	.uleb128	5
      000AF8 02                     183 	.db	2
      000AF9 00 00 87 65            184 	.dw	0,(Sstm8s_beep$BEEP_DeInit$0)
      000AFD 03                     185 	.db	3
      000AFE 35                     186 	.sleb128	53
      000AFF 01                     187 	.db	1
      000B00 09                     188 	.db	9
      000B01 00 00                  189 	.dw	Sstm8s_beep$BEEP_DeInit$2-Sstm8s_beep$BEEP_DeInit$0
      000B03 03                     190 	.db	3
      000B04 02                     191 	.sleb128	2
      000B05 01                     192 	.db	1
      000B06 09                     193 	.db	9
      000B07 00 04                  194 	.dw	Sstm8s_beep$BEEP_DeInit$3-Sstm8s_beep$BEEP_DeInit$2
      000B09 03                     195 	.db	3
      000B0A 01                     196 	.sleb128	1
      000B0B 01                     197 	.db	1
      000B0C 09                     198 	.db	9
      000B0D 00 01                  199 	.dw	1+Sstm8s_beep$BEEP_DeInit$4-Sstm8s_beep$BEEP_DeInit$3
      000B0F 00                     200 	.db	0
      000B10 01                     201 	.uleb128	1
      000B11 01                     202 	.db	1
      000B12 00                     203 	.db	0
      000B13 05                     204 	.uleb128	5
      000B14 02                     205 	.db	2
      000B15 00 00 87 6A            206 	.dw	0,(Sstm8s_beep$BEEP_Init$6)
      000B19 03                     207 	.db	3
      000B1A C2 00                  208 	.sleb128	66
      000B1C 01                     209 	.db	1
      000B1D 09                     210 	.db	9
      000B1E 00 00                  211 	.dw	Sstm8s_beep$BEEP_Init$8-Sstm8s_beep$BEEP_Init$6
      000B20 03                     212 	.db	3
      000B21 06                     213 	.sleb128	6
      000B22 01                     214 	.db	1
      000B23 09                     215 	.db	9
      000B24 00 09                  216 	.dw	Sstm8s_beep$BEEP_Init$11-Sstm8s_beep$BEEP_Init$8
      000B26 03                     217 	.db	3
      000B27 02                     218 	.sleb128	2
      000B28 01                     219 	.db	1
      000B29 09                     220 	.db	9
      000B2A 00 08                  221 	.dw	Sstm8s_beep$BEEP_Init$12-Sstm8s_beep$BEEP_Init$11
      000B2C 03                     222 	.db	3
      000B2D 01                     223 	.sleb128	1
      000B2E 01                     224 	.db	1
      000B2F 09                     225 	.db	9
      000B30 00 08                  226 	.dw	Sstm8s_beep$BEEP_Init$14-Sstm8s_beep$BEEP_Init$12
      000B32 03                     227 	.db	3
      000B33 04                     228 	.sleb128	4
      000B34 01                     229 	.db	1
      000B35 09                     230 	.db	9
      000B36 00 08                  231 	.dw	Sstm8s_beep$BEEP_Init$15-Sstm8s_beep$BEEP_Init$14
      000B38 03                     232 	.db	3
      000B39 01                     233 	.sleb128	1
      000B3A 01                     234 	.db	1
      000B3B 09                     235 	.db	9
      000B3C 00 08                  236 	.dw	Sstm8s_beep$BEEP_Init$16-Sstm8s_beep$BEEP_Init$15
      000B3E 03                     237 	.db	3
      000B3F 01                     238 	.sleb128	1
      000B40 01                     239 	.db	1
      000B41 09                     240 	.db	9
      000B42 00 01                  241 	.dw	1+Sstm8s_beep$BEEP_Init$17-Sstm8s_beep$BEEP_Init$16
      000B44 00                     242 	.db	0
      000B45 01                     243 	.uleb128	1
      000B46 01                     244 	.db	1
      000B47 00                     245 	.db	0
      000B48 05                     246 	.uleb128	5
      000B49 02                     247 	.db	2
      000B4A 00 00 87 94            248 	.dw	0,(Sstm8s_beep$BEEP_Cmd$19)
      000B4E 03                     249 	.db	3
      000B4F DA 00                  250 	.sleb128	90
      000B51 01                     251 	.db	1
      000B52 09                     252 	.db	9
      000B53 00 00                  253 	.dw	Sstm8s_beep$BEEP_Cmd$21-Sstm8s_beep$BEEP_Cmd$19
      000B55 03                     254 	.db	3
      000B56 05                     255 	.sleb128	5
      000B57 01                     256 	.db	1
      000B58 09                     257 	.db	9
      000B59 00 03                  258 	.dw	Sstm8s_beep$BEEP_Cmd$22-Sstm8s_beep$BEEP_Cmd$21
      000B5B 03                     259 	.db	3
      000B5C 7D                     260 	.sleb128	-3
      000B5D 01                     261 	.db	1
      000B5E 09                     262 	.db	9
      000B5F 00 04                  263 	.dw	Sstm8s_beep$BEEP_Cmd$24-Sstm8s_beep$BEEP_Cmd$22
      000B61 03                     264 	.db	3
      000B62 03                     265 	.sleb128	3
      000B63 01                     266 	.db	1
      000B64 09                     267 	.db	9
      000B65 00 07                  268 	.dw	Sstm8s_beep$BEEP_Cmd$27-Sstm8s_beep$BEEP_Cmd$24
      000B67 03                     269 	.db	3
      000B68 05                     270 	.sleb128	5
      000B69 01                     271 	.db	1
      000B6A 09                     272 	.db	9
      000B6B 00 05                  273 	.dw	Sstm8s_beep$BEEP_Cmd$29-Sstm8s_beep$BEEP_Cmd$27
      000B6D 03                     274 	.db	3
      000B6E 02                     275 	.sleb128	2
      000B6F 01                     276 	.db	1
      000B70 09                     277 	.db	9
      000B71 00 01                  278 	.dw	1+Sstm8s_beep$BEEP_Cmd$30-Sstm8s_beep$BEEP_Cmd$29
      000B73 00                     279 	.db	0
      000B74 01                     280 	.uleb128	1
      000B75 01                     281 	.db	1
      000B76                        282 Ldebug_line_end:
                                    283 
                                    284 	.area .debug_loc (NOLOAD)
      00099C                        285 Ldebug_loc_start:
      00099C 00 00 87 94            286 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0009A0 00 00 87 A8            287 	.dw	0,(Sstm8s_beep$BEEP_Cmd$31)
      0009A4 00 02                  288 	.dw	2
      0009A6 78                     289 	.db	120
      0009A7 01                     290 	.sleb128	1
      0009A8 00 00 00 00            291 	.dw	0,0
      0009AC 00 00 00 00            292 	.dw	0,0
      0009B0 00 00 87 73            293 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0009B4 00 00 87 94            294 	.dw	0,(Sstm8s_beep$BEEP_Init$18)
      0009B8 00 02                  295 	.dw	2
      0009BA 78                     296 	.db	120
      0009BB 01                     297 	.sleb128	1
      0009BC 00 00 87 6A            298 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      0009C0 00 00 87 73            299 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0009C4 00 02                  300 	.dw	2
      0009C6 78                     301 	.db	120
      0009C7 01                     302 	.sleb128	1
      0009C8 00 00 00 00            303 	.dw	0,0
      0009CC 00 00 00 00            304 	.dw	0,0
      0009D0 00 00 87 65            305 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      0009D4 00 00 87 6A            306 	.dw	0,(Sstm8s_beep$BEEP_DeInit$5)
      0009D8 00 02                  307 	.dw	2
      0009DA 78                     308 	.db	120
      0009DB 01                     309 	.sleb128	1
      0009DC 00 00 00 00            310 	.dw	0,0
      0009E0 00 00 00 00            311 	.dw	0,0
                                    312 
                                    313 	.area .debug_abbrev (NOLOAD)
      0002B8                        314 Ldebug_abbrev:
      0002B8 04                     315 	.uleb128	4
      0002B9 05                     316 	.uleb128	5
      0002BA 00                     317 	.db	0
      0002BB 02                     318 	.uleb128	2
      0002BC 0A                     319 	.uleb128	10
      0002BD 03                     320 	.uleb128	3
      0002BE 08                     321 	.uleb128	8
      0002BF 49                     322 	.uleb128	73
      0002C0 13                     323 	.uleb128	19
      0002C1 00                     324 	.uleb128	0
      0002C2 00                     325 	.uleb128	0
      0002C3 03                     326 	.uleb128	3
      0002C4 2E                     327 	.uleb128	46
      0002C5 01                     328 	.db	1
      0002C6 01                     329 	.uleb128	1
      0002C7 13                     330 	.uleb128	19
      0002C8 03                     331 	.uleb128	3
      0002C9 08                     332 	.uleb128	8
      0002CA 11                     333 	.uleb128	17
      0002CB 01                     334 	.uleb128	1
      0002CC 12                     335 	.uleb128	18
      0002CD 01                     336 	.uleb128	1
      0002CE 3F                     337 	.uleb128	63
      0002CF 0C                     338 	.uleb128	12
      0002D0 40                     339 	.uleb128	64
      0002D1 06                     340 	.uleb128	6
      0002D2 00                     341 	.uleb128	0
      0002D3 00                     342 	.uleb128	0
      0002D4 01                     343 	.uleb128	1
      0002D5 11                     344 	.uleb128	17
      0002D6 01                     345 	.db	1
      0002D7 03                     346 	.uleb128	3
      0002D8 08                     347 	.uleb128	8
      0002D9 10                     348 	.uleb128	16
      0002DA 06                     349 	.uleb128	6
      0002DB 13                     350 	.uleb128	19
      0002DC 0B                     351 	.uleb128	11
      0002DD 25                     352 	.uleb128	37
      0002DE 08                     353 	.uleb128	8
      0002DF 00                     354 	.uleb128	0
      0002E0 00                     355 	.uleb128	0
      0002E1 05                     356 	.uleb128	5
      0002E2 0B                     357 	.uleb128	11
      0002E3 00                     358 	.db	0
      0002E4 11                     359 	.uleb128	17
      0002E5 01                     360 	.uleb128	1
      0002E6 12                     361 	.uleb128	18
      0002E7 01                     362 	.uleb128	1
      0002E8 00                     363 	.uleb128	0
      0002E9 00                     364 	.uleb128	0
      0002EA 02                     365 	.uleb128	2
      0002EB 2E                     366 	.uleb128	46
      0002EC 00                     367 	.db	0
      0002ED 03                     368 	.uleb128	3
      0002EE 08                     369 	.uleb128	8
      0002EF 11                     370 	.uleb128	17
      0002F0 01                     371 	.uleb128	1
      0002F1 12                     372 	.uleb128	18
      0002F2 01                     373 	.uleb128	1
      0002F3 3F                     374 	.uleb128	63
      0002F4 0C                     375 	.uleb128	12
      0002F5 40                     376 	.uleb128	64
      0002F6 06                     377 	.uleb128	6
      0002F7 00                     378 	.uleb128	0
      0002F8 00                     379 	.uleb128	0
      0002F9 07                     380 	.uleb128	7
      0002FA 2E                     381 	.uleb128	46
      0002FB 01                     382 	.db	1
      0002FC 03                     383 	.uleb128	3
      0002FD 08                     384 	.uleb128	8
      0002FE 11                     385 	.uleb128	17
      0002FF 01                     386 	.uleb128	1
      000300 12                     387 	.uleb128	18
      000301 01                     388 	.uleb128	1
      000302 3F                     389 	.uleb128	63
      000303 0C                     390 	.uleb128	12
      000304 40                     391 	.uleb128	64
      000305 06                     392 	.uleb128	6
      000306 00                     393 	.uleb128	0
      000307 00                     394 	.uleb128	0
      000308 06                     395 	.uleb128	6
      000309 24                     396 	.uleb128	36
      00030A 00                     397 	.db	0
      00030B 03                     398 	.uleb128	3
      00030C 08                     399 	.uleb128	8
      00030D 0B                     400 	.uleb128	11
      00030E 0B                     401 	.uleb128	11
      00030F 3E                     402 	.uleb128	62
      000310 0B                     403 	.uleb128	11
      000311 00                     404 	.uleb128	0
      000312 00                     405 	.uleb128	0
      000313 00                     406 	.uleb128	0
                                    407 
                                    408 	.area .debug_info (NOLOAD)
      000EA0 00 00 00 ED            409 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000EA4                        410 Ldebug_info_start:
      000EA4 00 02                  411 	.dw	2
      000EA6 00 00 02 B8            412 	.dw	0,(Ldebug_abbrev)
      000EAA 04                     413 	.db	4
      000EAB 01                     414 	.uleb128	1
      000EAC 53 6F 75 72 63 65 2F   415 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      000ECB 00                     416 	.db	0
      000ECC 00 00 0A 6C            417 	.dw	0,(Ldebug_line_start+-4)
      000ED0 01                     418 	.db	1
      000ED1 53 44 43 43 20 76 65   419 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000EEA 00                     420 	.db	0
      000EEB 02                     421 	.uleb128	2
      000EEC 42 45 45 50 5F 44 65   422 	.ascii "BEEP_DeInit"
             49 6E 69 74
      000EF7 00                     423 	.db	0
      000EF8 00 00 87 65            424 	.dw	0,(_BEEP_DeInit)
      000EFC 00 00 87 6A            425 	.dw	0,(XG$BEEP_DeInit$0$0+1)
      000F00 01                     426 	.db	1
      000F01 00 00 09 D0            427 	.dw	0,(Ldebug_loc_start+52)
      000F05 03                     428 	.uleb128	3
      000F06 00 00 00 A2            429 	.dw	0,162
      000F0A 42 45 45 50 5F 49 6E   430 	.ascii "BEEP_Init"
             69 74
      000F13 00                     431 	.db	0
      000F14 00 00 87 6A            432 	.dw	0,(_BEEP_Init)
      000F18 00 00 87 94            433 	.dw	0,(XG$BEEP_Init$0$0+1)
      000F1C 01                     434 	.db	1
      000F1D 00 00 09 B0            435 	.dw	0,(Ldebug_loc_start+20)
      000F21 04                     436 	.uleb128	4
      000F22 02                     437 	.db	2
      000F23 91                     438 	.db	145
      000F24 02                     439 	.sleb128	2
      000F25 42 45 45 50 5F 46 72   440 	.ascii "BEEP_Frequency"
             65 71 75 65 6E 63 79
      000F33 00                     441 	.db	0
      000F34 00 00 00 A2            442 	.dw	0,162
      000F38 05                     443 	.uleb128	5
      000F39 00 00 87 73            444 	.dw	0,(Sstm8s_beep$BEEP_Init$10)
      000F3D 00 00 87 83            445 	.dw	0,(Sstm8s_beep$BEEP_Init$13)
      000F41 00                     446 	.uleb128	0
      000F42 06                     447 	.uleb128	6
      000F43 75 6E 73 69 67 6E 65   448 	.ascii "unsigned char"
             64 20 63 68 61 72
      000F50 00                     449 	.db	0
      000F51 01                     450 	.db	1
      000F52 08                     451 	.db	8
      000F53 07                     452 	.uleb128	7
      000F54 42 45 45 50 5F 43 6D   453 	.ascii "BEEP_Cmd"
             64
      000F5C 00                     454 	.db	0
      000F5D 00 00 87 94            455 	.dw	0,(_BEEP_Cmd)
      000F61 00 00 87 A8            456 	.dw	0,(XG$BEEP_Cmd$0$0+1)
      000F65 01                     457 	.db	1
      000F66 00 00 09 9C            458 	.dw	0,(Ldebug_loc_start)
      000F6A 04                     459 	.uleb128	4
      000F6B 02                     460 	.db	2
      000F6C 91                     461 	.db	145
      000F6D 02                     462 	.sleb128	2
      000F6E 4E 65 77 53 74 61 74   463 	.ascii "NewState"
             65
      000F76 00                     464 	.db	0
      000F77 00 00 00 A2            465 	.dw	0,162
      000F7B 05                     466 	.uleb128	5
      000F7C 00 00 87 9B            467 	.dw	0,(Sstm8s_beep$BEEP_Cmd$23)
      000F80 00 00 87 A0            468 	.dw	0,(Sstm8s_beep$BEEP_Cmd$25)
      000F84 05                     469 	.uleb128	5
      000F85 00 00 87 A2            470 	.dw	0,(Sstm8s_beep$BEEP_Cmd$26)
      000F89 00 00 87 A7            471 	.dw	0,(Sstm8s_beep$BEEP_Cmd$28)
      000F8D 00                     472 	.uleb128	0
      000F8E 00                     473 	.uleb128	0
      000F8F 00                     474 	.uleb128	0
      000F90 00                     475 	.uleb128	0
      000F91                        476 Ldebug_info_end:
                                    477 
                                    478 	.area .debug_pubnames (NOLOAD)
      000314 00 00 00 39            479 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000318                        480 Ldebug_pubnames_start:
      000318 00 02                  481 	.dw	2
      00031A 00 00 0E A0            482 	.dw	0,(Ldebug_info_start-4)
      00031E 00 00 00 F1            483 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000322 00 00 00 4B            484 	.dw	0,75
      000326 42 45 45 50 5F 44 65   485 	.ascii "BEEP_DeInit"
             49 6E 69 74
      000331 00                     486 	.db	0
      000332 00 00 00 65            487 	.dw	0,101
      000336 42 45 45 50 5F 49 6E   488 	.ascii "BEEP_Init"
             69 74
      00033F 00                     489 	.db	0
      000340 00 00 00 B3            490 	.dw	0,179
      000344 42 45 45 50 5F 43 6D   491 	.ascii "BEEP_Cmd"
             64
      00034C 00                     492 	.db	0
      00034D 00 00 00 00            493 	.dw	0,0
      000351                        494 Ldebug_pubnames_end:
                                    495 
                                    496 	.area .debug_frame (NOLOAD)
      0008B3 00 00                  497 	.dw	0
      0008B5 00 0E                  498 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0008B7                        499 Ldebug_CIE0_start:
      0008B7 FF FF                  500 	.dw	0xffff
      0008B9 FF FF                  501 	.dw	0xffff
      0008BB 01                     502 	.db	1
      0008BC 00                     503 	.db	0
      0008BD 01                     504 	.uleb128	1
      0008BE 7F                     505 	.sleb128	-1
      0008BF 09                     506 	.db	9
      0008C0 0C                     507 	.db	12
      0008C1 08                     508 	.uleb128	8
      0008C2 02                     509 	.uleb128	2
      0008C3 89                     510 	.db	137
      0008C4 01                     511 	.uleb128	1
      0008C5                        512 Ldebug_CIE0_end:
      0008C5 00 00 00 13            513 	.dw	0,19
      0008C9 00 00 08 B3            514 	.dw	0,(Ldebug_CIE0_start-4)
      0008CD 00 00 87 94            515 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)	;initial loc
      0008D1 00 00 00 14            516 	.dw	0,Sstm8s_beep$BEEP_Cmd$31-Sstm8s_beep$BEEP_Cmd$20
      0008D5 01                     517 	.db	1
      0008D6 00 00 87 94            518 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0008DA 0E                     519 	.db	14
      0008DB 02                     520 	.uleb128	2
                                    521 
                                    522 	.area .debug_frame (NOLOAD)
      0008DC 00 00                  523 	.dw	0
      0008DE 00 0E                  524 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0008E0                        525 Ldebug_CIE1_start:
      0008E0 FF FF                  526 	.dw	0xffff
      0008E2 FF FF                  527 	.dw	0xffff
      0008E4 01                     528 	.db	1
      0008E5 00                     529 	.db	0
      0008E6 01                     530 	.uleb128	1
      0008E7 7F                     531 	.sleb128	-1
      0008E8 09                     532 	.db	9
      0008E9 0C                     533 	.db	12
      0008EA 08                     534 	.uleb128	8
      0008EB 02                     535 	.uleb128	2
      0008EC 89                     536 	.db	137
      0008ED 01                     537 	.uleb128	1
      0008EE                        538 Ldebug_CIE1_end:
      0008EE 00 00 00 1A            539 	.dw	0,26
      0008F2 00 00 08 DC            540 	.dw	0,(Ldebug_CIE1_start-4)
      0008F6 00 00 87 6A            541 	.dw	0,(Sstm8s_beep$BEEP_Init$7)	;initial loc
      0008FA 00 00 00 2A            542 	.dw	0,Sstm8s_beep$BEEP_Init$18-Sstm8s_beep$BEEP_Init$7
      0008FE 01                     543 	.db	1
      0008FF 00 00 87 6A            544 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      000903 0E                     545 	.db	14
      000904 02                     546 	.uleb128	2
      000905 01                     547 	.db	1
      000906 00 00 87 73            548 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      00090A 0E                     549 	.db	14
      00090B 02                     550 	.uleb128	2
                                    551 
                                    552 	.area .debug_frame (NOLOAD)
      00090C 00 00                  553 	.dw	0
      00090E 00 0E                  554 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      000910                        555 Ldebug_CIE2_start:
      000910 FF FF                  556 	.dw	0xffff
      000912 FF FF                  557 	.dw	0xffff
      000914 01                     558 	.db	1
      000915 00                     559 	.db	0
      000916 01                     560 	.uleb128	1
      000917 7F                     561 	.sleb128	-1
      000918 09                     562 	.db	9
      000919 0C                     563 	.db	12
      00091A 08                     564 	.uleb128	8
      00091B 02                     565 	.uleb128	2
      00091C 89                     566 	.db	137
      00091D 01                     567 	.uleb128	1
      00091E                        568 Ldebug_CIE2_end:
      00091E 00 00 00 13            569 	.dw	0,19
      000922 00 00 09 0C            570 	.dw	0,(Ldebug_CIE2_start-4)
      000926 00 00 87 65            571 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)	;initial loc
      00092A 00 00 00 05            572 	.dw	0,Sstm8s_beep$BEEP_DeInit$5-Sstm8s_beep$BEEP_DeInit$1
      00092E 01                     573 	.db	1
      00092F 00 00 87 65            574 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      000933 0E                     575 	.db	14
      000934 02                     576 	.uleb128	2
