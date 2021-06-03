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
      008577                         56 _BEEP_DeInit:
                           000000    57 	Sstm8s_beep$BEEP_DeInit$1 ==.
                           000000    58 	Sstm8s_beep$BEEP_DeInit$2 ==.
                                     59 ;	Source/Std_Lib/Src/stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
      008577 35 1F 50 F3      [ 1]   60 	mov	0x50f3+0, #0x1f
                           000004    61 	Sstm8s_beep$BEEP_DeInit$3 ==.
                                     62 ;	Source/Std_Lib/Src/stm8s_beep.c: 57: }
                           000004    63 	Sstm8s_beep$BEEP_DeInit$4 ==.
                           000004    64 	XG$BEEP_DeInit$0$0 ==.
      00857B 81               [ 4]   65 	ret
                           000005    66 	Sstm8s_beep$BEEP_DeInit$5 ==.
                           000005    67 	Sstm8s_beep$BEEP_Init$6 ==.
                                     68 ;	Source/Std_Lib/Src/stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
                                     69 ;	-----------------------------------------
                                     70 ;	 function BEEP_Init
                                     71 ;	-----------------------------------------
      00857C                         72 _BEEP_Init:
                           000005    73 	Sstm8s_beep$BEEP_Init$7 ==.
                           000005    74 	Sstm8s_beep$BEEP_Init$8 ==.
                                     75 ;	Source/Std_Lib/Src/stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
      00857C C6 50 F3         [ 1]   76 	ld	a, 0x50f3
      00857F A4 1F            [ 1]   77 	and	a, #0x1f
      008581 A1 1F            [ 1]   78 	cp	a, #0x1f
      008583 26 10            [ 1]   79 	jrne	00102$
                           00000E    80 	Sstm8s_beep$BEEP_Init$9 ==.
                           00000E    81 	Sstm8s_beep$BEEP_Init$10 ==.
                           00000E    82 	Sstm8s_beep$BEEP_Init$11 ==.
                                     83 ;	Source/Std_Lib/Src/stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      008585 C6 50 F3         [ 1]   84 	ld	a, 0x50f3
      008588 A4 E0            [ 1]   85 	and	a, #0xe0
      00858A C7 50 F3         [ 1]   86 	ld	0x50f3, a
                           000016    87 	Sstm8s_beep$BEEP_Init$12 ==.
                                     88 ;	Source/Std_Lib/Src/stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
      00858D C6 50 F3         [ 1]   89 	ld	a, 0x50f3
      008590 AA 0B            [ 1]   90 	or	a, #0x0b
      008592 C7 50 F3         [ 1]   91 	ld	0x50f3, a
                           00001E    92 	Sstm8s_beep$BEEP_Init$13 ==.
      008595                         93 00102$:
                           00001E    94 	Sstm8s_beep$BEEP_Init$14 ==.
                                     95 ;	Source/Std_Lib/Src/stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
      008595 C6 50 F3         [ 1]   96 	ld	a, 0x50f3
      008598 A4 3F            [ 1]   97 	and	a, #0x3f
      00859A C7 50 F3         [ 1]   98 	ld	0x50f3, a
                           000026    99 	Sstm8s_beep$BEEP_Init$15 ==.
                                    100 ;	Source/Std_Lib/Src/stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
      00859D C6 50 F3         [ 1]  101 	ld	a, 0x50f3
      0085A0 1A 03            [ 1]  102 	or	a, (0x03, sp)
      0085A2 C7 50 F3         [ 1]  103 	ld	0x50f3, a
                           00002E   104 	Sstm8s_beep$BEEP_Init$16 ==.
                                    105 ;	Source/Std_Lib/Src/stm8s_beep.c: 82: }
                           00002E   106 	Sstm8s_beep$BEEP_Init$17 ==.
                           00002E   107 	XG$BEEP_Init$0$0 ==.
      0085A5 81               [ 4]  108 	ret
                           00002F   109 	Sstm8s_beep$BEEP_Init$18 ==.
                           00002F   110 	Sstm8s_beep$BEEP_Cmd$19 ==.
                                    111 ;	Source/Std_Lib/Src/stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
                                    112 ;	-----------------------------------------
                                    113 ;	 function BEEP_Cmd
                                    114 ;	-----------------------------------------
      0085A6                        115 _BEEP_Cmd:
                           00002F   116 	Sstm8s_beep$BEEP_Cmd$20 ==.
                           00002F   117 	Sstm8s_beep$BEEP_Cmd$21 ==.
                                    118 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      0085A6 C6 50 F3         [ 1]  119 	ld	a, 0x50f3
                           000032   120 	Sstm8s_beep$BEEP_Cmd$22 ==.
                                    121 ;	Source/Std_Lib/Src/stm8s_beep.c: 93: if (NewState != DISABLE)
      0085A9 0D 03            [ 1]  122 	tnz	(0x03, sp)
      0085AB 27 07            [ 1]  123 	jreq	00102$
                           000036   124 	Sstm8s_beep$BEEP_Cmd$23 ==.
                           000036   125 	Sstm8s_beep$BEEP_Cmd$24 ==.
                                    126 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      0085AD AA 20            [ 1]  127 	or	a, #0x20
      0085AF C7 50 F3         [ 1]  128 	ld	0x50f3, a
                           00003B   129 	Sstm8s_beep$BEEP_Cmd$25 ==.
      0085B2 20 05            [ 2]  130 	jra	00104$
      0085B4                        131 00102$:
                           00003D   132 	Sstm8s_beep$BEEP_Cmd$26 ==.
                           00003D   133 	Sstm8s_beep$BEEP_Cmd$27 ==.
                                    134 ;	Source/Std_Lib/Src/stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
      0085B4 A4 DF            [ 1]  135 	and	a, #0xdf
      0085B6 C7 50 F3         [ 1]  136 	ld	0x50f3, a
                           000042   137 	Sstm8s_beep$BEEP_Cmd$28 ==.
      0085B9                        138 00104$:
                           000042   139 	Sstm8s_beep$BEEP_Cmd$29 ==.
                                    140 ;	Source/Std_Lib/Src/stm8s_beep.c: 103: }
                           000042   141 	Sstm8s_beep$BEEP_Cmd$30 ==.
                           000042   142 	XG$BEEP_Cmd$0$0 ==.
      0085B9 81               [ 4]  143 	ret
                           000043   144 	Sstm8s_beep$BEEP_Cmd$31 ==.
                                    145 	.area CODE
                                    146 	.area CONST
                                    147 	.area INITIALIZER
                                    148 	.area CABS (ABS)
                                    149 
                                    150 	.area .debug_line (NOLOAD)
      000886 00 00 01 06            151 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00088A                        152 Ldebug_line_start:
      00088A 00 02                  153 	.dw	2
      00088C 00 00 00 80            154 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000890 01                     155 	.db	1
      000891 01                     156 	.db	1
      000892 FB                     157 	.db	-5
      000893 0F                     158 	.db	15
      000894 0A                     159 	.db	10
      000895 00                     160 	.db	0
      000896 01                     161 	.db	1
      000897 01                     162 	.db	1
      000898 01                     163 	.db	1
      000899 01                     164 	.db	1
      00089A 00                     165 	.db	0
      00089B 00                     166 	.db	0
      00089C 00                     167 	.db	0
      00089D 01                     168 	.db	1
      00089E 43 3A 5C 50 72 6F 67   169 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      0008C6 00                     170 	.db	0
      0008C7 43 3A 5C 50 72 6F 67   171 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      0008EA 00                     172 	.db	0
      0008EB 00                     173 	.db	0
      0008EC 53 6F 75 72 63 65 2F   174 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      00090B 00                     175 	.db	0
      00090C 00                     176 	.uleb128	0
      00090D 00                     177 	.uleb128	0
      00090E 00                     178 	.uleb128	0
      00090F 00                     179 	.db	0
      000910                        180 Ldebug_line_stmt:
      000910 00                     181 	.db	0
      000911 05                     182 	.uleb128	5
      000912 02                     183 	.db	2
      000913 00 00 85 77            184 	.dw	0,(Sstm8s_beep$BEEP_DeInit$0)
      000917 03                     185 	.db	3
      000918 35                     186 	.sleb128	53
      000919 01                     187 	.db	1
      00091A 09                     188 	.db	9
      00091B 00 00                  189 	.dw	Sstm8s_beep$BEEP_DeInit$2-Sstm8s_beep$BEEP_DeInit$0
      00091D 03                     190 	.db	3
      00091E 02                     191 	.sleb128	2
      00091F 01                     192 	.db	1
      000920 09                     193 	.db	9
      000921 00 04                  194 	.dw	Sstm8s_beep$BEEP_DeInit$3-Sstm8s_beep$BEEP_DeInit$2
      000923 03                     195 	.db	3
      000924 01                     196 	.sleb128	1
      000925 01                     197 	.db	1
      000926 09                     198 	.db	9
      000927 00 01                  199 	.dw	1+Sstm8s_beep$BEEP_DeInit$4-Sstm8s_beep$BEEP_DeInit$3
      000929 00                     200 	.db	0
      00092A 01                     201 	.uleb128	1
      00092B 01                     202 	.db	1
      00092C 00                     203 	.db	0
      00092D 05                     204 	.uleb128	5
      00092E 02                     205 	.db	2
      00092F 00 00 85 7C            206 	.dw	0,(Sstm8s_beep$BEEP_Init$6)
      000933 03                     207 	.db	3
      000934 C2 00                  208 	.sleb128	66
      000936 01                     209 	.db	1
      000937 09                     210 	.db	9
      000938 00 00                  211 	.dw	Sstm8s_beep$BEEP_Init$8-Sstm8s_beep$BEEP_Init$6
      00093A 03                     212 	.db	3
      00093B 06                     213 	.sleb128	6
      00093C 01                     214 	.db	1
      00093D 09                     215 	.db	9
      00093E 00 09                  216 	.dw	Sstm8s_beep$BEEP_Init$11-Sstm8s_beep$BEEP_Init$8
      000940 03                     217 	.db	3
      000941 02                     218 	.sleb128	2
      000942 01                     219 	.db	1
      000943 09                     220 	.db	9
      000944 00 08                  221 	.dw	Sstm8s_beep$BEEP_Init$12-Sstm8s_beep$BEEP_Init$11
      000946 03                     222 	.db	3
      000947 01                     223 	.sleb128	1
      000948 01                     224 	.db	1
      000949 09                     225 	.db	9
      00094A 00 08                  226 	.dw	Sstm8s_beep$BEEP_Init$14-Sstm8s_beep$BEEP_Init$12
      00094C 03                     227 	.db	3
      00094D 04                     228 	.sleb128	4
      00094E 01                     229 	.db	1
      00094F 09                     230 	.db	9
      000950 00 08                  231 	.dw	Sstm8s_beep$BEEP_Init$15-Sstm8s_beep$BEEP_Init$14
      000952 03                     232 	.db	3
      000953 01                     233 	.sleb128	1
      000954 01                     234 	.db	1
      000955 09                     235 	.db	9
      000956 00 08                  236 	.dw	Sstm8s_beep$BEEP_Init$16-Sstm8s_beep$BEEP_Init$15
      000958 03                     237 	.db	3
      000959 01                     238 	.sleb128	1
      00095A 01                     239 	.db	1
      00095B 09                     240 	.db	9
      00095C 00 01                  241 	.dw	1+Sstm8s_beep$BEEP_Init$17-Sstm8s_beep$BEEP_Init$16
      00095E 00                     242 	.db	0
      00095F 01                     243 	.uleb128	1
      000960 01                     244 	.db	1
      000961 00                     245 	.db	0
      000962 05                     246 	.uleb128	5
      000963 02                     247 	.db	2
      000964 00 00 85 A6            248 	.dw	0,(Sstm8s_beep$BEEP_Cmd$19)
      000968 03                     249 	.db	3
      000969 DA 00                  250 	.sleb128	90
      00096B 01                     251 	.db	1
      00096C 09                     252 	.db	9
      00096D 00 00                  253 	.dw	Sstm8s_beep$BEEP_Cmd$21-Sstm8s_beep$BEEP_Cmd$19
      00096F 03                     254 	.db	3
      000970 05                     255 	.sleb128	5
      000971 01                     256 	.db	1
      000972 09                     257 	.db	9
      000973 00 03                  258 	.dw	Sstm8s_beep$BEEP_Cmd$22-Sstm8s_beep$BEEP_Cmd$21
      000975 03                     259 	.db	3
      000976 7D                     260 	.sleb128	-3
      000977 01                     261 	.db	1
      000978 09                     262 	.db	9
      000979 00 04                  263 	.dw	Sstm8s_beep$BEEP_Cmd$24-Sstm8s_beep$BEEP_Cmd$22
      00097B 03                     264 	.db	3
      00097C 03                     265 	.sleb128	3
      00097D 01                     266 	.db	1
      00097E 09                     267 	.db	9
      00097F 00 07                  268 	.dw	Sstm8s_beep$BEEP_Cmd$27-Sstm8s_beep$BEEP_Cmd$24
      000981 03                     269 	.db	3
      000982 05                     270 	.sleb128	5
      000983 01                     271 	.db	1
      000984 09                     272 	.db	9
      000985 00 05                  273 	.dw	Sstm8s_beep$BEEP_Cmd$29-Sstm8s_beep$BEEP_Cmd$27
      000987 03                     274 	.db	3
      000988 02                     275 	.sleb128	2
      000989 01                     276 	.db	1
      00098A 09                     277 	.db	9
      00098B 00 01                  278 	.dw	1+Sstm8s_beep$BEEP_Cmd$30-Sstm8s_beep$BEEP_Cmd$29
      00098D 00                     279 	.db	0
      00098E 01                     280 	.uleb128	1
      00098F 01                     281 	.db	1
      000990                        282 Ldebug_line_end:
                                    283 
                                    284 	.area .debug_loc (NOLOAD)
      0005B8                        285 Ldebug_loc_start:
      0005B8 00 00 85 A6            286 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0005BC 00 00 85 BA            287 	.dw	0,(Sstm8s_beep$BEEP_Cmd$31)
      0005C0 00 02                  288 	.dw	2
      0005C2 78                     289 	.db	120
      0005C3 01                     290 	.sleb128	1
      0005C4 00 00 00 00            291 	.dw	0,0
      0005C8 00 00 00 00            292 	.dw	0,0
      0005CC 00 00 85 85            293 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0005D0 00 00 85 A6            294 	.dw	0,(Sstm8s_beep$BEEP_Init$18)
      0005D4 00 02                  295 	.dw	2
      0005D6 78                     296 	.db	120
      0005D7 01                     297 	.sleb128	1
      0005D8 00 00 85 7C            298 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      0005DC 00 00 85 85            299 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      0005E0 00 02                  300 	.dw	2
      0005E2 78                     301 	.db	120
      0005E3 01                     302 	.sleb128	1
      0005E4 00 00 00 00            303 	.dw	0,0
      0005E8 00 00 00 00            304 	.dw	0,0
      0005EC 00 00 85 77            305 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      0005F0 00 00 85 7C            306 	.dw	0,(Sstm8s_beep$BEEP_DeInit$5)
      0005F4 00 02                  307 	.dw	2
      0005F6 78                     308 	.db	120
      0005F7 01                     309 	.sleb128	1
      0005F8 00 00 00 00            310 	.dw	0,0
      0005FC 00 00 00 00            311 	.dw	0,0
                                    312 
                                    313 	.area .debug_abbrev (NOLOAD)
      000234                        314 Ldebug_abbrev:
      000234 04                     315 	.uleb128	4
      000235 05                     316 	.uleb128	5
      000236 00                     317 	.db	0
      000237 02                     318 	.uleb128	2
      000238 0A                     319 	.uleb128	10
      000239 03                     320 	.uleb128	3
      00023A 08                     321 	.uleb128	8
      00023B 49                     322 	.uleb128	73
      00023C 13                     323 	.uleb128	19
      00023D 00                     324 	.uleb128	0
      00023E 00                     325 	.uleb128	0
      00023F 03                     326 	.uleb128	3
      000240 2E                     327 	.uleb128	46
      000241 01                     328 	.db	1
      000242 01                     329 	.uleb128	1
      000243 13                     330 	.uleb128	19
      000244 03                     331 	.uleb128	3
      000245 08                     332 	.uleb128	8
      000246 11                     333 	.uleb128	17
      000247 01                     334 	.uleb128	1
      000248 12                     335 	.uleb128	18
      000249 01                     336 	.uleb128	1
      00024A 3F                     337 	.uleb128	63
      00024B 0C                     338 	.uleb128	12
      00024C 40                     339 	.uleb128	64
      00024D 06                     340 	.uleb128	6
      00024E 00                     341 	.uleb128	0
      00024F 00                     342 	.uleb128	0
      000250 01                     343 	.uleb128	1
      000251 11                     344 	.uleb128	17
      000252 01                     345 	.db	1
      000253 03                     346 	.uleb128	3
      000254 08                     347 	.uleb128	8
      000255 10                     348 	.uleb128	16
      000256 06                     349 	.uleb128	6
      000257 13                     350 	.uleb128	19
      000258 0B                     351 	.uleb128	11
      000259 25                     352 	.uleb128	37
      00025A 08                     353 	.uleb128	8
      00025B 00                     354 	.uleb128	0
      00025C 00                     355 	.uleb128	0
      00025D 05                     356 	.uleb128	5
      00025E 0B                     357 	.uleb128	11
      00025F 00                     358 	.db	0
      000260 11                     359 	.uleb128	17
      000261 01                     360 	.uleb128	1
      000262 12                     361 	.uleb128	18
      000263 01                     362 	.uleb128	1
      000264 00                     363 	.uleb128	0
      000265 00                     364 	.uleb128	0
      000266 02                     365 	.uleb128	2
      000267 2E                     366 	.uleb128	46
      000268 00                     367 	.db	0
      000269 03                     368 	.uleb128	3
      00026A 08                     369 	.uleb128	8
      00026B 11                     370 	.uleb128	17
      00026C 01                     371 	.uleb128	1
      00026D 12                     372 	.uleb128	18
      00026E 01                     373 	.uleb128	1
      00026F 3F                     374 	.uleb128	63
      000270 0C                     375 	.uleb128	12
      000271 40                     376 	.uleb128	64
      000272 06                     377 	.uleb128	6
      000273 00                     378 	.uleb128	0
      000274 00                     379 	.uleb128	0
      000275 07                     380 	.uleb128	7
      000276 2E                     381 	.uleb128	46
      000277 01                     382 	.db	1
      000278 03                     383 	.uleb128	3
      000279 08                     384 	.uleb128	8
      00027A 11                     385 	.uleb128	17
      00027B 01                     386 	.uleb128	1
      00027C 12                     387 	.uleb128	18
      00027D 01                     388 	.uleb128	1
      00027E 3F                     389 	.uleb128	63
      00027F 0C                     390 	.uleb128	12
      000280 40                     391 	.uleb128	64
      000281 06                     392 	.uleb128	6
      000282 00                     393 	.uleb128	0
      000283 00                     394 	.uleb128	0
      000284 06                     395 	.uleb128	6
      000285 24                     396 	.uleb128	36
      000286 00                     397 	.db	0
      000287 03                     398 	.uleb128	3
      000288 08                     399 	.uleb128	8
      000289 0B                     400 	.uleb128	11
      00028A 0B                     401 	.uleb128	11
      00028B 3E                     402 	.uleb128	62
      00028C 0B                     403 	.uleb128	11
      00028D 00                     404 	.uleb128	0
      00028E 00                     405 	.uleb128	0
      00028F 00                     406 	.uleb128	0
                                    407 
                                    408 	.area .debug_info (NOLOAD)
      000A90 00 00 00 ED            409 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000A94                        410 Ldebug_info_start:
      000A94 00 02                  411 	.dw	2
      000A96 00 00 02 34            412 	.dw	0,(Ldebug_abbrev)
      000A9A 04                     413 	.db	4
      000A9B 01                     414 	.uleb128	1
      000A9C 53 6F 75 72 63 65 2F   415 	.ascii "Source/Std_Lib/Src/stm8s_beep.c"
             53 74 64 5F 4C 69 62
             2F 53 72 63 2F 73 74
             6D 38 73 5F 62 65 65
             70 2E 63
      000ABB 00                     416 	.db	0
      000ABC 00 00 08 86            417 	.dw	0,(Ldebug_line_start+-4)
      000AC0 01                     418 	.db	1
      000AC1 53 44 43 43 20 76 65   419 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      000ADA 00                     420 	.db	0
      000ADB 02                     421 	.uleb128	2
      000ADC 42 45 45 50 5F 44 65   422 	.ascii "BEEP_DeInit"
             49 6E 69 74
      000AE7 00                     423 	.db	0
      000AE8 00 00 85 77            424 	.dw	0,(_BEEP_DeInit)
      000AEC 00 00 85 7C            425 	.dw	0,(XG$BEEP_DeInit$0$0+1)
      000AF0 01                     426 	.db	1
      000AF1 00 00 05 EC            427 	.dw	0,(Ldebug_loc_start+52)
      000AF5 03                     428 	.uleb128	3
      000AF6 00 00 00 A2            429 	.dw	0,162
      000AFA 42 45 45 50 5F 49 6E   430 	.ascii "BEEP_Init"
             69 74
      000B03 00                     431 	.db	0
      000B04 00 00 85 7C            432 	.dw	0,(_BEEP_Init)
      000B08 00 00 85 A6            433 	.dw	0,(XG$BEEP_Init$0$0+1)
      000B0C 01                     434 	.db	1
      000B0D 00 00 05 CC            435 	.dw	0,(Ldebug_loc_start+20)
      000B11 04                     436 	.uleb128	4
      000B12 02                     437 	.db	2
      000B13 91                     438 	.db	145
      000B14 02                     439 	.sleb128	2
      000B15 42 45 45 50 5F 46 72   440 	.ascii "BEEP_Frequency"
             65 71 75 65 6E 63 79
      000B23 00                     441 	.db	0
      000B24 00 00 00 A2            442 	.dw	0,162
      000B28 05                     443 	.uleb128	5
      000B29 00 00 85 85            444 	.dw	0,(Sstm8s_beep$BEEP_Init$10)
      000B2D 00 00 85 95            445 	.dw	0,(Sstm8s_beep$BEEP_Init$13)
      000B31 00                     446 	.uleb128	0
      000B32 06                     447 	.uleb128	6
      000B33 75 6E 73 69 67 6E 65   448 	.ascii "unsigned char"
             64 20 63 68 61 72
      000B40 00                     449 	.db	0
      000B41 01                     450 	.db	1
      000B42 08                     451 	.db	8
      000B43 07                     452 	.uleb128	7
      000B44 42 45 45 50 5F 43 6D   453 	.ascii "BEEP_Cmd"
             64
      000B4C 00                     454 	.db	0
      000B4D 00 00 85 A6            455 	.dw	0,(_BEEP_Cmd)
      000B51 00 00 85 BA            456 	.dw	0,(XG$BEEP_Cmd$0$0+1)
      000B55 01                     457 	.db	1
      000B56 00 00 05 B8            458 	.dw	0,(Ldebug_loc_start)
      000B5A 04                     459 	.uleb128	4
      000B5B 02                     460 	.db	2
      000B5C 91                     461 	.db	145
      000B5D 02                     462 	.sleb128	2
      000B5E 4E 65 77 53 74 61 74   463 	.ascii "NewState"
             65
      000B66 00                     464 	.db	0
      000B67 00 00 00 A2            465 	.dw	0,162
      000B6B 05                     466 	.uleb128	5
      000B6C 00 00 85 AD            467 	.dw	0,(Sstm8s_beep$BEEP_Cmd$23)
      000B70 00 00 85 B2            468 	.dw	0,(Sstm8s_beep$BEEP_Cmd$25)
      000B74 05                     469 	.uleb128	5
      000B75 00 00 85 B4            470 	.dw	0,(Sstm8s_beep$BEEP_Cmd$26)
      000B79 00 00 85 B9            471 	.dw	0,(Sstm8s_beep$BEEP_Cmd$28)
      000B7D 00                     472 	.uleb128	0
      000B7E 00                     473 	.uleb128	0
      000B7F 00                     474 	.uleb128	0
      000B80 00                     475 	.uleb128	0
      000B81                        476 Ldebug_info_end:
                                    477 
                                    478 	.area .debug_pubnames (NOLOAD)
      0001F4 00 00 00 39            479 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0001F8                        480 Ldebug_pubnames_start:
      0001F8 00 02                  481 	.dw	2
      0001FA 00 00 0A 90            482 	.dw	0,(Ldebug_info_start-4)
      0001FE 00 00 00 F1            483 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000202 00 00 00 4B            484 	.dw	0,75
      000206 42 45 45 50 5F 44 65   485 	.ascii "BEEP_DeInit"
             49 6E 69 74
      000211 00                     486 	.db	0
      000212 00 00 00 65            487 	.dw	0,101
      000216 42 45 45 50 5F 49 6E   488 	.ascii "BEEP_Init"
             69 74
      00021F 00                     489 	.db	0
      000220 00 00 00 B3            490 	.dw	0,179
      000224 42 45 45 50 5F 43 6D   491 	.ascii "BEEP_Cmd"
             64
      00022C 00                     492 	.db	0
      00022D 00 00 00 00            493 	.dw	0,0
      000231                        494 Ldebug_pubnames_end:
                                    495 
                                    496 	.area .debug_frame (NOLOAD)
      0005BE 00 00                  497 	.dw	0
      0005C0 00 0E                  498 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      0005C2                        499 Ldebug_CIE0_start:
      0005C2 FF FF                  500 	.dw	0xffff
      0005C4 FF FF                  501 	.dw	0xffff
      0005C6 01                     502 	.db	1
      0005C7 00                     503 	.db	0
      0005C8 01                     504 	.uleb128	1
      0005C9 7F                     505 	.sleb128	-1
      0005CA 09                     506 	.db	9
      0005CB 0C                     507 	.db	12
      0005CC 08                     508 	.uleb128	8
      0005CD 02                     509 	.uleb128	2
      0005CE 89                     510 	.db	137
      0005CF 01                     511 	.uleb128	1
      0005D0                        512 Ldebug_CIE0_end:
      0005D0 00 00 00 13            513 	.dw	0,19
      0005D4 00 00 05 BE            514 	.dw	0,(Ldebug_CIE0_start-4)
      0005D8 00 00 85 A6            515 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)	;initial loc
      0005DC 00 00 00 14            516 	.dw	0,Sstm8s_beep$BEEP_Cmd$31-Sstm8s_beep$BEEP_Cmd$20
      0005E0 01                     517 	.db	1
      0005E1 00 00 85 A6            518 	.dw	0,(Sstm8s_beep$BEEP_Cmd$20)
      0005E5 0E                     519 	.db	14
      0005E6 02                     520 	.uleb128	2
                                    521 
                                    522 	.area .debug_frame (NOLOAD)
      0005E7 00 00                  523 	.dw	0
      0005E9 00 0E                  524 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      0005EB                        525 Ldebug_CIE1_start:
      0005EB FF FF                  526 	.dw	0xffff
      0005ED FF FF                  527 	.dw	0xffff
      0005EF 01                     528 	.db	1
      0005F0 00                     529 	.db	0
      0005F1 01                     530 	.uleb128	1
      0005F2 7F                     531 	.sleb128	-1
      0005F3 09                     532 	.db	9
      0005F4 0C                     533 	.db	12
      0005F5 08                     534 	.uleb128	8
      0005F6 02                     535 	.uleb128	2
      0005F7 89                     536 	.db	137
      0005F8 01                     537 	.uleb128	1
      0005F9                        538 Ldebug_CIE1_end:
      0005F9 00 00 00 1A            539 	.dw	0,26
      0005FD 00 00 05 E7            540 	.dw	0,(Ldebug_CIE1_start-4)
      000601 00 00 85 7C            541 	.dw	0,(Sstm8s_beep$BEEP_Init$7)	;initial loc
      000605 00 00 00 2A            542 	.dw	0,Sstm8s_beep$BEEP_Init$18-Sstm8s_beep$BEEP_Init$7
      000609 01                     543 	.db	1
      00060A 00 00 85 7C            544 	.dw	0,(Sstm8s_beep$BEEP_Init$7)
      00060E 0E                     545 	.db	14
      00060F 02                     546 	.uleb128	2
      000610 01                     547 	.db	1
      000611 00 00 85 85            548 	.dw	0,(Sstm8s_beep$BEEP_Init$9)
      000615 0E                     549 	.db	14
      000616 02                     550 	.uleb128	2
                                    551 
                                    552 	.area .debug_frame (NOLOAD)
      000617 00 00                  553 	.dw	0
      000619 00 0E                  554 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00061B                        555 Ldebug_CIE2_start:
      00061B FF FF                  556 	.dw	0xffff
      00061D FF FF                  557 	.dw	0xffff
      00061F 01                     558 	.db	1
      000620 00                     559 	.db	0
      000621 01                     560 	.uleb128	1
      000622 7F                     561 	.sleb128	-1
      000623 09                     562 	.db	9
      000624 0C                     563 	.db	12
      000625 08                     564 	.uleb128	8
      000626 02                     565 	.uleb128	2
      000627 89                     566 	.db	137
      000628 01                     567 	.uleb128	1
      000629                        568 Ldebug_CIE2_end:
      000629 00 00 00 13            569 	.dw	0,19
      00062D 00 00 06 17            570 	.dw	0,(Ldebug_CIE2_start-4)
      000631 00 00 85 77            571 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)	;initial loc
      000635 00 00 00 05            572 	.dw	0,Sstm8s_beep$BEEP_DeInit$5-Sstm8s_beep$BEEP_DeInit$1
      000639 01                     573 	.db	1
      00063A 00 00 85 77            574 	.dw	0,(Sstm8s_beep$BEEP_DeInit$1)
      00063E 0E                     575 	.db	14
      00063F 02                     576 	.uleb128	2
