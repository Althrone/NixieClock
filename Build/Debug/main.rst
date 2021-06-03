                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _DS3231_GetTime
                                     13 	.globl _DS3231_Init
                                     14 	.globl _NIXIE_DisplayTime
                                     15 	.globl _NIXIE_Init
                                     16 	.globl _GPS_Init
                                     17 	.globl _CLK_DeInit
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
                                     26 ;--------------------------------------------------------
                                     27 ; Stack segment in internal ram 
                                     28 ;--------------------------------------------------------
                                     29 	.area	SSEG
      FFFFFF                         30 __start__stack:
      FFFFFF                         31 	.ds	1
                                     32 
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; interrupt vector 
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
      008000                         50 __interrupt_vect:
      008000 82 00 80 57             51 	int s_GSINIT ; reset
      008004 82 00 00 00             52 	int 0x000000 ; trap
      008008 82 00 00 00             53 	int 0x000000 ; int0
      00800C 82 00 00 00             54 	int 0x000000 ; int1
      008010 82 00 00 00             55 	int 0x000000 ; int2
      008014 82 00 00 00             56 	int 0x000000 ; int3
      008018 82 00 00 00             57 	int 0x000000 ; int4
      00801C 82 00 00 00             58 	int 0x000000 ; int5
      008020 82 00 00 00             59 	int 0x000000 ; int6
      008024 82 00 00 00             60 	int 0x000000 ; int7
      008028 82 00 00 00             61 	int 0x000000 ; int8
      00802C 82 00 00 00             62 	int 0x000000 ; int9
      008030 82 00 00 00             63 	int 0x000000 ; int10
      008034 82 00 00 00             64 	int 0x000000 ; int11
      008038 82 00 00 00             65 	int 0x000000 ; int12
      00803C 82 00 00 00             66 	int 0x000000 ; int13
      008040 82 00 00 00             67 	int 0x000000 ; int14
      008044 82 00 00 00             68 	int 0x000000 ; int15
      008048 82 00 00 00             69 	int 0x000000 ; int16
      00804C 82 00 00 00             70 	int 0x000000 ; int17
      008050 82 00 8C 18             71 	int _UART1_RX_IRQHandler ; int18
                                     72 ;--------------------------------------------------------
                                     73 ; global & static initialisations
                                     74 ;--------------------------------------------------------
                                     75 	.area HOME
                                     76 	.area GSINIT
                                     77 	.area GSFINAL
                                     78 	.area GSINIT
      008057                         79 __sdcc_gs_init_startup:
      008057                         80 __sdcc_init_data:
                                     81 ; stm8_genXINIT() start
      008057 AE 00 20         [ 2]   82 	ldw x, #l_DATA
      00805A 27 07            [ 1]   83 	jreq	00002$
      00805C                         84 00001$:
      00805C 72 4F 00 00      [ 1]   85 	clr (s_DATA - 1, x)
      008060 5A               [ 2]   86 	decw x
      008061 26 F9            [ 1]   87 	jrne	00001$
      008063                         88 00002$:
      008063 AE 00 2D         [ 2]   89 	ldw	x, #l_INITIALIZER
      008066 27 09            [ 1]   90 	jreq	00004$
      008068                         91 00003$:
      008068 D6 80 7F         [ 1]   92 	ld	a, (s_INITIALIZER - 1, x)
      00806B D7 00 20         [ 1]   93 	ld	(s_INITIALIZED - 1, x), a
      00806E 5A               [ 2]   94 	decw	x
      00806F 26 F7            [ 1]   95 	jrne	00003$
      008071                         96 00004$:
                                     97 ; stm8_genXINIT() end
                                     98 	.area GSFINAL
      008071 CC 80 54         [ 2]   99 	jp	__sdcc_program_startup
                                    100 ;--------------------------------------------------------
                                    101 ; Home
                                    102 ;--------------------------------------------------------
                                    103 	.area HOME
                                    104 	.area HOME
      008054                        105 __sdcc_program_startup:
      008054 CC 80 AD         [ 2]  106 	jp	_main
                                    107 ;	return from main will return to caller
                                    108 ;--------------------------------------------------------
                                    109 ; code
                                    110 ;--------------------------------------------------------
                                    111 	.area CODE
                           000000   112 	Smain$main$0 ==.
                                    113 ;	Source/User/main.c: 3: int main(void)
                                    114 ;	-----------------------------------------
                                    115 ;	 function main
                                    116 ;	-----------------------------------------
      0080AD                        117 _main:
                           000000   118 	Smain$main$1 ==.
                           000000   119 	Smain$main$2 ==.
                                    120 ;	Source/User/main.c: 5: CLK_DeInit();//全部外设的时钟都打开了
      0080AD CD 81 52         [ 4]  121 	call	_CLK_DeInit
                           000003   122 	Smain$main$3 ==.
                                    123 ;	Source/User/main.c: 6: rim();
      0080B0 9A               [ 1]  124 	rim
                           000004   125 	Smain$main$4 ==.
                                    126 ;	Source/User/main.c: 8: GPS_Init();//PD5 PD6
      0080B1 CD 8B 92         [ 4]  127 	call	_GPS_Init
                           000007   128 	Smain$main$5 ==.
                                    129 ;	Source/User/main.c: 9: NIXIE_Init();//PC5 PC6 PC7
      0080B4 CD 87 D7         [ 4]  130 	call	_NIXIE_Init
                           00000A   131 	Smain$main$6 ==.
                                    132 ;	Source/User/main.c: 10: DS3231_Init();
      0080B7 CD 8A 9E         [ 4]  133 	call	_DS3231_Init
                           00000D   134 	Smain$main$7 ==.
                                    135 ;	Source/User/main.c: 11: while(1)
      0080BA                        136 00102$:
                           00000D   137 	Smain$main$8 ==.
                           00000D   138 	Smain$main$9 ==.
                                    139 ;	Source/User/main.c: 13: NIXIE_DisplayTime(1,2);
      0080BA 4B 02            [ 1]  140 	push	#0x02
                           00000F   141 	Smain$main$10 ==.
      0080BC 4B 01            [ 1]  142 	push	#0x01
                           000011   143 	Smain$main$11 ==.
      0080BE CD 88 B3         [ 4]  144 	call	_NIXIE_DisplayTime
      0080C1 85               [ 2]  145 	popw	x
                           000015   146 	Smain$main$12 ==.
                           000015   147 	Smain$main$13 ==.
                                    148 ;	Source/User/main.c: 14: DS3231_GetTime();
      0080C2 CD 8A A2         [ 4]  149 	call	_DS3231_GetTime
                           000018   150 	Smain$main$14 ==.
      0080C5 20 F3            [ 2]  151 	jra	00102$
                           00001A   152 	Smain$main$15 ==.
                                    153 ;	Source/User/main.c: 16: }
                           00001A   154 	Smain$main$16 ==.
                           00001A   155 	XG$main$0$0 ==.
      0080C7 81               [ 4]  156 	ret
                           00001B   157 	Smain$main$17 ==.
                                    158 	.area CODE
                                    159 	.area CONST
                                    160 	.area INITIALIZER
                                    161 	.area CABS (ABS)
                                    162 
                                    163 	.area .debug_line (NOLOAD)
      000000 00 00 00 BF            164 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        165 Ldebug_line_start:
      000004 00 02                  166 	.dw	2
      000006 00 00 00 73            167 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     168 	.db	1
      00000B 01                     169 	.db	1
      00000C FB                     170 	.db	-5
      00000D 0F                     171 	.db	15
      00000E 0A                     172 	.db	10
      00000F 00                     173 	.db	0
      000010 01                     174 	.db	1
      000011 01                     175 	.db	1
      000012 01                     176 	.db	1
      000013 01                     177 	.db	1
      000014 00                     178 	.db	0
      000015 00                     179 	.db	0
      000016 00                     180 	.db	0
      000017 01                     181 	.db	1
      000018 43 3A 5C 50 72 6F 67   182 	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
             5C 73 74 6D 38
      000040 00                     183 	.db	0
      000041 43 3A 5C 50 72 6F 67   184 	.ascii "C:\Program Files\SDCC\bin\..\include"
             72 61 6D 20 46 69 6C
             65 73 5C 53 44 43 43
             08 69 6E 5C 2E 2E 5C
             69 6E 63 6C 75 64 65
      000064 00                     185 	.db	0
      000065 00                     186 	.db	0
      000066 53 6F 75 72 63 65 2F   187 	.ascii "Source/User/main.c"
             55 73 65 72 2F 6D 61
             69 6E 2E 63
      000078 00                     188 	.db	0
      000079 00                     189 	.uleb128	0
      00007A 00                     190 	.uleb128	0
      00007B 00                     191 	.uleb128	0
      00007C 00                     192 	.db	0
      00007D                        193 Ldebug_line_stmt:
      00007D 00                     194 	.db	0
      00007E 05                     195 	.uleb128	5
      00007F 02                     196 	.db	2
      000080 00 00 80 AD            197 	.dw	0,(Smain$main$0)
      000084 03                     198 	.db	3
      000085 02                     199 	.sleb128	2
      000086 01                     200 	.db	1
      000087 09                     201 	.db	9
      000088 00 00                  202 	.dw	Smain$main$2-Smain$main$0
      00008A 03                     203 	.db	3
      00008B 02                     204 	.sleb128	2
      00008C 01                     205 	.db	1
      00008D 09                     206 	.db	9
      00008E 00 03                  207 	.dw	Smain$main$3-Smain$main$2
      000090 03                     208 	.db	3
      000091 01                     209 	.sleb128	1
      000092 01                     210 	.db	1
      000093 09                     211 	.db	9
      000094 00 01                  212 	.dw	Smain$main$4-Smain$main$3
      000096 03                     213 	.db	3
      000097 02                     214 	.sleb128	2
      000098 01                     215 	.db	1
      000099 09                     216 	.db	9
      00009A 00 03                  217 	.dw	Smain$main$5-Smain$main$4
      00009C 03                     218 	.db	3
      00009D 01                     219 	.sleb128	1
      00009E 01                     220 	.db	1
      00009F 09                     221 	.db	9
      0000A0 00 03                  222 	.dw	Smain$main$6-Smain$main$5
      0000A2 03                     223 	.db	3
      0000A3 01                     224 	.sleb128	1
      0000A4 01                     225 	.db	1
      0000A5 09                     226 	.db	9
      0000A6 00 03                  227 	.dw	Smain$main$7-Smain$main$6
      0000A8 03                     228 	.db	3
      0000A9 01                     229 	.sleb128	1
      0000AA 01                     230 	.db	1
      0000AB 09                     231 	.db	9
      0000AC 00 00                  232 	.dw	Smain$main$9-Smain$main$7
      0000AE 03                     233 	.db	3
      0000AF 02                     234 	.sleb128	2
      0000B0 01                     235 	.db	1
      0000B1 09                     236 	.db	9
      0000B2 00 08                  237 	.dw	Smain$main$13-Smain$main$9
      0000B4 03                     238 	.db	3
      0000B5 01                     239 	.sleb128	1
      0000B6 01                     240 	.db	1
      0000B7 09                     241 	.db	9
      0000B8 00 05                  242 	.dw	Smain$main$15-Smain$main$13
      0000BA 03                     243 	.db	3
      0000BB 02                     244 	.sleb128	2
      0000BC 01                     245 	.db	1
      0000BD 09                     246 	.db	9
      0000BE 00 01                  247 	.dw	1+Smain$main$16-Smain$main$15
      0000C0 00                     248 	.db	0
      0000C1 01                     249 	.uleb128	1
      0000C2 01                     250 	.db	1
      0000C3                        251 Ldebug_line_end:
                                    252 
                                    253 	.area .debug_loc (NOLOAD)
      000000                        254 Ldebug_loc_start:
      000000 00 00 80 C2            255 	.dw	0,(Smain$main$12)
      000004 00 00 80 C8            256 	.dw	0,(Smain$main$17)
      000008 00 02                  257 	.dw	2
      00000A 78                     258 	.db	120
      00000B 01                     259 	.sleb128	1
      00000C 00 00 80 BE            260 	.dw	0,(Smain$main$11)
      000010 00 00 80 C2            261 	.dw	0,(Smain$main$12)
      000014 00 02                  262 	.dw	2
      000016 78                     263 	.db	120
      000017 03                     264 	.sleb128	3
      000018 00 00 80 BC            265 	.dw	0,(Smain$main$10)
      00001C 00 00 80 BE            266 	.dw	0,(Smain$main$11)
      000020 00 02                  267 	.dw	2
      000022 78                     268 	.db	120
      000023 02                     269 	.sleb128	2
      000024 00 00 80 AD            270 	.dw	0,(Smain$main$1)
      000028 00 00 80 BC            271 	.dw	0,(Smain$main$10)
      00002C 00 02                  272 	.dw	2
      00002E 78                     273 	.db	120
      00002F 01                     274 	.sleb128	1
      000030 00 00 00 00            275 	.dw	0,0
      000034 00 00 00 00            276 	.dw	0,0
                                    277 
                                    278 	.area .debug_abbrev (NOLOAD)
      000000                        279 Ldebug_abbrev:
      000000 03                     280 	.uleb128	3
      000001 2E                     281 	.uleb128	46
      000002 01                     282 	.db	1
      000003 03                     283 	.uleb128	3
      000004 08                     284 	.uleb128	8
      000005 11                     285 	.uleb128	17
      000006 01                     286 	.uleb128	1
      000007 12                     287 	.uleb128	18
      000008 01                     288 	.uleb128	1
      000009 3F                     289 	.uleb128	63
      00000A 0C                     290 	.uleb128	12
      00000B 40                     291 	.uleb128	64
      00000C 06                     292 	.uleb128	6
      00000D 49                     293 	.uleb128	73
      00000E 13                     294 	.uleb128	19
      00000F 00                     295 	.uleb128	0
      000010 00                     296 	.uleb128	0
      000011 01                     297 	.uleb128	1
      000012 11                     298 	.uleb128	17
      000013 01                     299 	.db	1
      000014 03                     300 	.uleb128	3
      000015 08                     301 	.uleb128	8
      000016 10                     302 	.uleb128	16
      000017 06                     303 	.uleb128	6
      000018 13                     304 	.uleb128	19
      000019 0B                     305 	.uleb128	11
      00001A 25                     306 	.uleb128	37
      00001B 08                     307 	.uleb128	8
      00001C 00                     308 	.uleb128	0
      00001D 00                     309 	.uleb128	0
      00001E 04                     310 	.uleb128	4
      00001F 0B                     311 	.uleb128	11
      000020 00                     312 	.db	0
      000021 11                     313 	.uleb128	17
      000022 01                     314 	.uleb128	1
      000023 12                     315 	.uleb128	18
      000024 01                     316 	.uleb128	1
      000025 00                     317 	.uleb128	0
      000026 00                     318 	.uleb128	0
      000027 02                     319 	.uleb128	2
      000028 24                     320 	.uleb128	36
      000029 00                     321 	.db	0
      00002A 03                     322 	.uleb128	3
      00002B 08                     323 	.uleb128	8
      00002C 0B                     324 	.uleb128	11
      00002D 0B                     325 	.uleb128	11
      00002E 3E                     326 	.uleb128	62
      00002F 0B                     327 	.uleb128	11
      000030 00                     328 	.uleb128	0
      000031 00                     329 	.uleb128	0
      000032 00                     330 	.uleb128	0
                                    331 
                                    332 	.area .debug_info (NOLOAD)
      000000 00 00 00 65            333 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                        334 Ldebug_info_start:
      000004 00 02                  335 	.dw	2
      000006 00 00 00 00            336 	.dw	0,(Ldebug_abbrev)
      00000A 04                     337 	.db	4
      00000B 01                     338 	.uleb128	1
      00000C 53 6F 75 72 63 65 2F   339 	.ascii "Source/User/main.c"
             55 73 65 72 2F 6D 61
             69 6E 2E 63
      00001E 00                     340 	.db	0
      00001F 00 00 00 00            341 	.dw	0,(Ldebug_line_start+-4)
      000023 01                     342 	.db	1
      000024 53 44 43 43 20 76 65   343 	.ascii "SDCC version 4.0.0 #11528"
             72 73 69 6F 6E 20 34
             2E 30 2E 30 20 23 31
             31 35 32 38
      00003D 00                     344 	.db	0
      00003E 02                     345 	.uleb128	2
      00003F 69 6E 74               346 	.ascii "int"
      000042 00                     347 	.db	0
      000043 02                     348 	.db	2
      000044 05                     349 	.db	5
      000045 03                     350 	.uleb128	3
      000046 6D 61 69 6E            351 	.ascii "main"
      00004A 00                     352 	.db	0
      00004B 00 00 80 AD            353 	.dw	0,(_main)
      00004F 00 00 80 C8            354 	.dw	0,(XG$main$0$0+1)
      000053 01                     355 	.db	1
      000054 00 00 00 00            356 	.dw	0,(Ldebug_loc_start)
      000058 00 00 00 3E            357 	.dw	0,62
      00005C 04                     358 	.uleb128	4
      00005D 00 00 80 BA            359 	.dw	0,(Smain$main$8)
      000061 00 00 80 C5            360 	.dw	0,(Smain$main$14)
      000065 00                     361 	.uleb128	0
      000066 00                     362 	.uleb128	0
      000067 00                     363 	.uleb128	0
      000068 00                     364 	.uleb128	0
      000069                        365 Ldebug_info_end:
                                    366 
                                    367 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 17            368 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                        369 Ldebug_pubnames_start:
      000004 00 02                  370 	.dw	2
      000006 00 00 00 00            371 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 00 69            372 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 00 45            373 	.dw	0,69
      000012 6D 61 69 6E            374 	.ascii "main"
      000016 00                     375 	.db	0
      000017 00 00 00 00            376 	.dw	0,0
      00001B                        377 Ldebug_pubnames_end:
                                    378 
                                    379 	.area .debug_frame (NOLOAD)
      000000 00 00                  380 	.dw	0
      000002 00 0E                  381 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                        382 Ldebug_CIE0_start:
      000004 FF FF                  383 	.dw	0xffff
      000006 FF FF                  384 	.dw	0xffff
      000008 01                     385 	.db	1
      000009 00                     386 	.db	0
      00000A 01                     387 	.uleb128	1
      00000B 7F                     388 	.sleb128	-1
      00000C 09                     389 	.db	9
      00000D 0C                     390 	.db	12
      00000E 08                     391 	.uleb128	8
      00000F 02                     392 	.uleb128	2
      000010 89                     393 	.db	137
      000011 01                     394 	.uleb128	1
      000012                        395 Ldebug_CIE0_end:
      000012 00 00 00 28            396 	.dw	0,40
      000016 00 00 00 00            397 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 80 AD            398 	.dw	0,(Smain$main$1)	;initial loc
      00001E 00 00 00 1B            399 	.dw	0,Smain$main$17-Smain$main$1
      000022 01                     400 	.db	1
      000023 00 00 80 AD            401 	.dw	0,(Smain$main$1)
      000027 0E                     402 	.db	14
      000028 02                     403 	.uleb128	2
      000029 01                     404 	.db	1
      00002A 00 00 80 BC            405 	.dw	0,(Smain$main$10)
      00002E 0E                     406 	.db	14
      00002F 03                     407 	.uleb128	3
      000030 01                     408 	.db	1
      000031 00 00 80 BE            409 	.dw	0,(Smain$main$11)
      000035 0E                     410 	.db	14
      000036 04                     411 	.uleb128	4
      000037 01                     412 	.db	1
      000038 00 00 80 C2            413 	.dw	0,(Smain$main$12)
      00003C 0E                     414 	.db	14
      00003D 02                     415 	.uleb128	2
