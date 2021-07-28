                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module nixie
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strchr
                                     12 	.globl _SPI_GetFlagStatus
                                     13 	.globl _SPI_SendData
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_Init
                                     16 	.globl _SPI_DeInit
                                     17 	.globl _GPIO_WriteLow
                                     18 	.globl _GPIO_WriteHigh
                                     19 	.globl _GPIO_Init
                                     20 	.globl _nixie_tube4
                                     21 	.globl _nixie_tube3
                                     22 	.globl _nixie_tube2
                                     23 	.globl _nixie_tube1
                                     24 	.globl _tube_state
                                     25 	.globl _NIXIE_Init
                                     26 	.globl _NIXIE_DisplayChar
                                     27 	.globl _NIXIE_DisplayTime
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DATA
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
      000028                         36 _tube_state::
      000028                         37 	.ds 1
      000029                         38 _nixie_tube1::
      000029                         39 	.ds 1
      00002A                         40 _nixie_tube2::
      00002A                         41 	.ds 1
      00002B                         42 _nixie_tube3::
      00002B                         43 	.ds 1
      00002C                         44 _nixie_tube4::
      00002C                         45 	.ds 1
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 
                                     51 ; default segment ordering for linker
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area CONST
                                     56 	.area INITIALIZER
                                     57 	.area CODE
                                     58 
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area HOME
                                     63 	.area GSINIT
                                     64 	.area GSFINAL
                                     65 	.area GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area HOME
                                     70 	.area HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area CODE
                                     75 ;	Source/Device/Src/nixie.c: 58: void NIXIE_Init(void)
                                     76 ;	-----------------------------------------
                                     77 ;	 function NIXIE_Init
                                     78 ;	-----------------------------------------
      008C59                         79 _NIXIE_Init:
      008C59 52 03            [ 2]   80 	sub	sp, #3
                                     81 ;	Source/Device/Src/nixie.c: 60: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      008C5B 4B E0            [ 1]   82 	push	#0xe0
      008C5D 4B 20            [ 1]   83 	push	#0x20
      008C5F 4B 0A            [ 1]   84 	push	#0x0a
      008C61 4B 50            [ 1]   85 	push	#0x50
      008C63 CD 82 18         [ 4]   86 	call	_GPIO_Init
      008C66 5B 04            [ 2]   87 	addw	sp, #4
                                     88 ;	Source/Device/Src/nixie.c: 61: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      008C68 4B E0            [ 1]   89 	push	#0xe0
      008C6A 4B 40            [ 1]   90 	push	#0x40
      008C6C 4B 0A            [ 1]   91 	push	#0x0a
      008C6E 4B 50            [ 1]   92 	push	#0x50
      008C70 CD 82 18         [ 4]   93 	call	_GPIO_Init
      008C73 5B 04            [ 2]   94 	addw	sp, #4
                                     95 ;	Source/Device/Src/nixie.c: 62: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      008C75 4B E0            [ 1]   96 	push	#0xe0
      008C77 4B 80            [ 1]   97 	push	#0x80
      008C79 4B 0A            [ 1]   98 	push	#0x0a
      008C7B 4B 50            [ 1]   99 	push	#0x50
      008C7D CD 82 18         [ 4]  100 	call	_GPIO_Init
      008C80 5B 04            [ 2]  101 	addw	sp, #4
                                    102 ;	Source/Device/Src/nixie.c: 63: SPI_DeInit();
      008C82 CD 83 B7         [ 4]  103 	call	_SPI_DeInit
                                    104 ;	Source/Device/Src/nixie.c: 65: SPI_Init(SPI_FIRSTBIT_LSB,
      008C85 4B 07            [ 1]  105 	push	#0x07
      008C87 4B 02            [ 1]  106 	push	#0x02
      008C89 4B C0            [ 1]  107 	push	#0xc0
      008C8B 4B 00            [ 1]  108 	push	#0x00
      008C8D 4B 00            [ 1]  109 	push	#0x00
      008C8F 4B 04            [ 1]  110 	push	#0x04
      008C91 4B 00            [ 1]  111 	push	#0x00
      008C93 4B 80            [ 1]  112 	push	#0x80
      008C95 CD 83 CC         [ 4]  113 	call	_SPI_Init
      008C98 5B 08            [ 2]  114 	addw	sp, #8
                                    115 ;	Source/Device/Src/nixie.c: 73: SPI_Cmd(ENABLE);
      008C9A 4B 01            [ 1]  116 	push	#0x01
      008C9C CD 84 0A         [ 4]  117 	call	_SPI_Cmd
      008C9F 84               [ 1]  118 	pop	a
                                    119 ;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
      008CA0 0F 01            [ 1]  120 	clr	(0x01, sp)
      008CA2                        121 00111$:
      008CA2 7B 01            [ 1]  122 	ld	a, (0x01, sp)
      008CA4 A1 0A            [ 1]  123 	cp	a, #0x0a
      008CA6 24 37            [ 1]  124 	jrnc	00113$
                                    125 ;	Source/Device/Src/nixie.c: 78: tube_state=ENABLE;
      008CA8 35 01 00 28      [ 1]  126 	mov	_tube_state+0, #0x01
                                    127 ;	Source/Device/Src/nixie.c: 79: NIXIE_DisplayTime(i*10+i,i*10+i);
      008CAC 7B 01            [ 1]  128 	ld	a, (0x01, sp)
      008CAE 97               [ 1]  129 	ld	xl, a
      008CAF A6 0A            [ 1]  130 	ld	a, #0x0a
      008CB1 42               [ 4]  131 	mul	x, a
      008CB2 7B 01            [ 1]  132 	ld	a, (0x01, sp)
      008CB4 89               [ 2]  133 	pushw	x
      008CB5 1B 02            [ 1]  134 	add	a, (2, sp)
      008CB7 85               [ 2]  135 	popw	x
      008CB8 88               [ 1]  136 	push	a
      008CB9 88               [ 1]  137 	push	a
      008CBA CD 8D 78         [ 4]  138 	call	_NIXIE_DisplayTime
      008CBD 85               [ 2]  139 	popw	x
                                    140 ;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
      008CBE 5F               [ 1]  141 	clrw	x
      008CBF 1F 02            [ 2]  142 	ldw	(0x02, sp), x
      008CC1                        143 00108$:
      008CC1 1E 02            [ 2]  144 	ldw	x, (0x02, sp)
      008CC3 A3 00 64         [ 2]  145 	cpw	x, #0x0064
      008CC6 24 13            [ 1]  146 	jrnc	00112$
                                    147 ;	Source/Device/Src/nixie.c: 82: for(uint16_t j=0;j<1000;++j);
      008CC8 5F               [ 1]  148 	clrw	x
      008CC9                        149 00105$:
      008CC9 90 93            [ 1]  150 	ldw	y, x
      008CCB 90 A3 03 E8      [ 2]  151 	cpw	y, #0x03e8
      008CCF 24 03            [ 1]  152 	jrnc	00109$
      008CD1 5C               [ 1]  153 	incw	x
      008CD2 20 F5            [ 2]  154 	jra	00105$
      008CD4                        155 00109$:
                                    156 ;	Source/Device/Src/nixie.c: 80: for(uint16_t k=0;k<100;++k)
      008CD4 1E 02            [ 2]  157 	ldw	x, (0x02, sp)
      008CD6 5C               [ 1]  158 	incw	x
      008CD7 1F 02            [ 2]  159 	ldw	(0x02, sp), x
      008CD9 20 E6            [ 2]  160 	jra	00108$
      008CDB                        161 00112$:
                                    162 ;	Source/Device/Src/nixie.c: 76: for(uint8_t i=0;i<10;++i)
      008CDB 0C 01            [ 1]  163 	inc	(0x01, sp)
      008CDD 20 C3            [ 2]  164 	jra	00111$
      008CDF                        165 00113$:
                                    166 ;	Source/Device/Src/nixie.c: 85: }
      008CDF 5B 03            [ 2]  167 	addw	sp, #3
      008CE1 81               [ 4]  168 	ret
                                    169 ;	Source/Device/Src/nixie.c: 96: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function NIXIE_DisplayChar
                                    172 ;	-----------------------------------------
      008CE2                        173 _NIXIE_DisplayChar:
      008CE2 52 05            [ 2]  174 	sub	sp, #5
                                    175 ;	Source/Device/Src/nixie.c: 98: uint16_t tmp=0;
      008CE4 5F               [ 1]  176 	clrw	x
      008CE5 1F 03            [ 2]  177 	ldw	(0x03, sp), x
                                    178 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'.')!=NULL)
      008CE7 4B 2E            [ 1]  179 	push	#0x2e
      008CE9 4B 00            [ 1]  180 	push	#0x00
      008CEB 1E 0B            [ 2]  181 	ldw	x, (0x0b, sp)
      008CED 89               [ 2]  182 	pushw	x
      008CEE CD 95 4C         [ 4]  183 	call	_strchr
      008CF1 5B 04            [ 2]  184 	addw	sp, #4
      008CF3 5D               [ 2]  185 	tnzw	x
      008CF4 27 05            [ 1]  186 	jreq	00118$
                                    187 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<11;
      008CF6 AE 08 00         [ 2]  188 	ldw	x, #0x0800
      008CF9 1F 03            [ 2]  189 	ldw	(0x03, sp), x
                                    190 ;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
      008CFB                        191 00118$:
      008CFB 0F 05            [ 1]  192 	clr	(0x05, sp)
      008CFD                        193 00111$:
      008CFD 7B 05            [ 1]  194 	ld	a, (0x05, sp)
      008CFF A1 09            [ 1]  195 	cp	a, #0x09
      008D01 24 2E            [ 1]  196 	jrnc	00105$
                                    197 ;	Source/Device/Src/nixie.c: 105: if(strchr(character,'1'+i)!=NULL)
      008D03 7B 05            [ 1]  198 	ld	a, (0x05, sp)
      008D05 5F               [ 1]  199 	clrw	x
      008D06 97               [ 1]  200 	ld	xl, a
      008D07 1C 00 31         [ 2]  201 	addw	x, #0x0031
      008D0A 89               [ 2]  202 	pushw	x
      008D0B 1E 0B            [ 2]  203 	ldw	x, (0x0b, sp)
      008D0D 89               [ 2]  204 	pushw	x
      008D0E CD 95 4C         [ 4]  205 	call	_strchr
      008D11 5B 04            [ 2]  206 	addw	sp, #4
      008D13 1F 01            [ 2]  207 	ldw	(0x01, sp), x
      008D15 27 16            [ 1]  208 	jreq	00112$
                                    209 ;	Source/Device/Src/nixie.c: 106: tmp|=1<<10-i;
      008D17 A6 0A            [ 1]  210 	ld	a, #0x0a
      008D19 10 05            [ 1]  211 	sub	a, (0x05, sp)
      008D1B 5F               [ 1]  212 	clrw	x
      008D1C 5C               [ 1]  213 	incw	x
      008D1D 4D               [ 1]  214 	tnz	a
      008D1E 27 04            [ 1]  215 	jreq	00150$
      008D20                        216 00149$:
      008D20 58               [ 2]  217 	sllw	x
      008D21 4A               [ 1]  218 	dec	a
      008D22 26 FC            [ 1]  219 	jrne	00149$
      008D24                        220 00150$:
      008D24 9F               [ 1]  221 	ld	a, xl
      008D25 1A 04            [ 1]  222 	or	a, (0x04, sp)
      008D27 02               [ 1]  223 	rlwa	x
      008D28 1A 03            [ 1]  224 	or	a, (0x03, sp)
      008D2A 95               [ 1]  225 	ld	xh, a
      008D2B 1F 03            [ 2]  226 	ldw	(0x03, sp), x
      008D2D                        227 00112$:
                                    228 ;	Source/Device/Src/nixie.c: 103: for(uint8_t i=0;i<9;++i)
      008D2D 0C 05            [ 1]  229 	inc	(0x05, sp)
      008D2F 20 CC            [ 2]  230 	jra	00111$
      008D31                        231 00105$:
                                    232 ;	Source/Device/Src/nixie.c: 108: if(strchr(character,'0')!=NULL)
      008D31 4B 30            [ 1]  233 	push	#0x30
      008D33 4B 00            [ 1]  234 	push	#0x00
      008D35 1E 0B            [ 2]  235 	ldw	x, (0x0b, sp)
      008D37 89               [ 2]  236 	pushw	x
      008D38 CD 95 4C         [ 4]  237 	call	_strchr
      008D3B 5B 04            [ 2]  238 	addw	sp, #4
      008D3D 5D               [ 2]  239 	tnzw	x
      008D3E 27 0A            [ 1]  240 	jreq	00107$
                                    241 ;	Source/Device/Src/nixie.c: 109: tmp|=1<<1;
      008D40 7B 04            [ 1]  242 	ld	a, (0x04, sp)
      008D42 AA 02            [ 1]  243 	or	a, #0x02
      008D44 97               [ 1]  244 	ld	xl, a
      008D45 7B 03            [ 1]  245 	ld	a, (0x03, sp)
      008D47 95               [ 1]  246 	ld	xh, a
      008D48 1F 03            [ 2]  247 	ldw	(0x03, sp), x
      008D4A                        248 00107$:
                                    249 ;	Source/Device/Src/nixie.c: 110: if(tubeState==ENABLE)
      008D4A 7B 0B            [ 1]  250 	ld	a, (0x0b, sp)
      008D4C 4A               [ 1]  251 	dec	a
      008D4D 26 07            [ 1]  252 	jrne	00109$
                                    253 ;	Source/Device/Src/nixie.c: 111: tmp|=1<<0;
      008D4F 1E 03            [ 2]  254 	ldw	x, (0x03, sp)
      008D51 54               [ 2]  255 	srlw	x
      008D52 99               [ 1]  256 	scf
      008D53 59               [ 2]  257 	rlcw	x
      008D54 1F 03            [ 2]  258 	ldw	(0x03, sp), x
      008D56                        259 00109$:
                                    260 ;	Source/Device/Src/nixie.c: 113: output=(tmp&0xAAA)>>1;
      008D56 1E 03            [ 2]  261 	ldw	x, (0x03, sp)
      008D58 9F               [ 1]  262 	ld	a, xl
      008D59 A4 AA            [ 1]  263 	and	a, #0xaa
      008D5B 90 97            [ 1]  264 	ld	yl, a
      008D5D 9E               [ 1]  265 	ld	a, xh
      008D5E A4 0A            [ 1]  266 	and	a, #0x0a
      008D60 90 95            [ 1]  267 	ld	yh, a
      008D62 90 54            [ 2]  268 	srlw	y
                                    269 ;	Source/Device/Src/nixie.c: 114: output|=(tmp&0x555)<<1;
      008D64 9F               [ 1]  270 	ld	a, xl
      008D65 A4 55            [ 1]  271 	and	a, #0x55
      008D67 02               [ 1]  272 	rlwa	x
      008D68 A4 05            [ 1]  273 	and	a, #0x05
      008D6A 95               [ 1]  274 	ld	xh, a
      008D6B 58               [ 2]  275 	sllw	x
      008D6C 17 04            [ 2]  276 	ldw	(0x04, sp), y
      008D6E 9F               [ 1]  277 	ld	a, xl
      008D6F 1A 05            [ 1]  278 	or	a, (0x05, sp)
      008D71 02               [ 1]  279 	rlwa	x
      008D72 1A 04            [ 1]  280 	or	a, (0x04, sp)
                                    281 ;	Source/Device/Src/nixie.c: 116: return output;
      008D74 95               [ 1]  282 	ld	xh, a
                                    283 ;	Source/Device/Src/nixie.c: 117: }
      008D75 5B 05            [ 2]  284 	addw	sp, #5
      008D77 81               [ 4]  285 	ret
                                    286 ;	Source/Device/Src/nixie.c: 135: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    287 ;	-----------------------------------------
                                    288 ;	 function NIXIE_DisplayTime
                                    289 ;	-----------------------------------------
      008D78                        290 _NIXIE_DisplayTime:
      008D78 52 12            [ 2]  291 	sub	sp, #18
                                    292 ;	Source/Device/Src/nixie.c: 139: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
      008D7A A6 30            [ 1]  293 	ld	a, #0x30
      008D7C 6B 01            [ 1]  294 	ld	(0x01, sp), a
      008D7E 96               [ 1]  295 	ldw	x, sp
      008D7F 6F 02            [ 1]  296 	clr	(2, x)
      008D81 A6 30            [ 1]  297 	ld	a, #0x30
      008D83 6B 03            [ 1]  298 	ld	(0x03, sp), a
      008D85 96               [ 1]  299 	ldw	x, sp
      008D86 6F 04            [ 1]  300 	clr	(4, x)
      008D88 A6 30            [ 1]  301 	ld	a, #0x30
      008D8A 6B 05            [ 1]  302 	ld	(0x05, sp), a
      008D8C 96               [ 1]  303 	ldw	x, sp
      008D8D A6 2E            [ 1]  304 	ld	a, #0x2e
      008D8F E7 06            [ 1]  305 	ld	(6, x), a
      008D91 96               [ 1]  306 	ldw	x, sp
      008D92 6F 07            [ 1]  307 	clr	(7, x)
      008D94 A6 30            [ 1]  308 	ld	a, #0x30
      008D96 6B 08            [ 1]  309 	ld	(0x08, sp), a
      008D98 96               [ 1]  310 	ldw	x, sp
      008D99 6F 09            [ 1]  311 	clr	(9, x)
                                    312 ;	Source/Device/Src/nixie.c: 141: uint8_t tmp=hour/10;
      008D9B 7B 15            [ 1]  313 	ld	a, (0x15, sp)
      008D9D 6B 12            [ 1]  314 	ld	(0x12, sp), a
      008D9F 0F 11            [ 1]  315 	clr	(0x11, sp)
      008DA1 4B 0A            [ 1]  316 	push	#0x0a
      008DA3 4B 00            [ 1]  317 	push	#0x00
      008DA5 1E 13            [ 2]  318 	ldw	x, (0x13, sp)
      008DA7 89               [ 2]  319 	pushw	x
      008DA8 CD 96 04         [ 4]  320 	call	__divsint
      008DAB 5B 04            [ 2]  321 	addw	sp, #4
                                    322 ;	Source/Device/Src/nixie.c: 142: tube1s[0]+=tmp;
      008DAD 7B 01            [ 1]  323 	ld	a, (0x01, sp)
      008DAF 89               [ 2]  324 	pushw	x
      008DB0 1B 02            [ 1]  325 	add	a, (2, sp)
      008DB2 85               [ 2]  326 	popw	x
      008DB3 6B 01            [ 1]  327 	ld	(0x01, sp), a
                                    328 ;	Source/Device/Src/nixie.c: 144: tmp=hour%10;
      008DB5 4B 0A            [ 1]  329 	push	#0x0a
      008DB7 4B 00            [ 1]  330 	push	#0x00
      008DB9 1E 13            [ 2]  331 	ldw	x, (0x13, sp)
      008DBB 89               [ 2]  332 	pushw	x
      008DBC CD 95 EE         [ 4]  333 	call	__modsint
      008DBF 5B 04            [ 2]  334 	addw	sp, #4
                                    335 ;	Source/Device/Src/nixie.c: 145: tube2s[0]+=tmp;
      008DC1 7B 03            [ 1]  336 	ld	a, (0x03, sp)
      008DC3 89               [ 2]  337 	pushw	x
      008DC4 1B 02            [ 1]  338 	add	a, (2, sp)
      008DC6 85               [ 2]  339 	popw	x
      008DC7 6B 03            [ 1]  340 	ld	(0x03, sp), a
                                    341 ;	Source/Device/Src/nixie.c: 147: tmp=min/10;
      008DC9 7B 16            [ 1]  342 	ld	a, (0x16, sp)
      008DCB 6B 12            [ 1]  343 	ld	(0x12, sp), a
      008DCD 0F 11            [ 1]  344 	clr	(0x11, sp)
      008DCF 4B 0A            [ 1]  345 	push	#0x0a
      008DD1 4B 00            [ 1]  346 	push	#0x00
      008DD3 1E 13            [ 2]  347 	ldw	x, (0x13, sp)
      008DD5 89               [ 2]  348 	pushw	x
      008DD6 CD 96 04         [ 4]  349 	call	__divsint
      008DD9 5B 04            [ 2]  350 	addw	sp, #4
                                    351 ;	Source/Device/Src/nixie.c: 148: tube3s[0]+=tmp;
      008DDB 7B 05            [ 1]  352 	ld	a, (0x05, sp)
      008DDD 89               [ 2]  353 	pushw	x
      008DDE 1B 02            [ 1]  354 	add	a, (2, sp)
      008DE0 85               [ 2]  355 	popw	x
      008DE1 6B 05            [ 1]  356 	ld	(0x05, sp), a
                                    357 ;	Source/Device/Src/nixie.c: 150: tmp=min%10;
      008DE3 4B 0A            [ 1]  358 	push	#0x0a
      008DE5 4B 00            [ 1]  359 	push	#0x00
      008DE7 1E 13            [ 2]  360 	ldw	x, (0x13, sp)
      008DE9 89               [ 2]  361 	pushw	x
      008DEA CD 95 EE         [ 4]  362 	call	__modsint
      008DED 5B 04            [ 2]  363 	addw	sp, #4
                                    364 ;	Source/Device/Src/nixie.c: 151: tube4s[0]+=tmp;
      008DEF 7B 08            [ 1]  365 	ld	a, (0x08, sp)
      008DF1 89               [ 2]  366 	pushw	x
      008DF2 1B 02            [ 1]  367 	add	a, (2, sp)
      008DF4 85               [ 2]  368 	popw	x
      008DF5 6B 08            [ 1]  369 	ld	(0x08, sp), a
                                    370 ;	Source/Device/Src/nixie.c: 153: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
      008DF7 3B 00 28         [ 1]  371 	push	_tube_state+0
      008DFA 96               [ 1]  372 	ldw	x, sp
      008DFB 5C               [ 1]  373 	incw	x
      008DFC 5C               [ 1]  374 	incw	x
      008DFD 89               [ 2]  375 	pushw	x
      008DFE 4B 01            [ 1]  376 	push	#0x01
      008E00 CD 8C E2         [ 4]  377 	call	_NIXIE_DisplayChar
      008E03 5B 04            [ 2]  378 	addw	sp, #4
      008E05 1F 0A            [ 2]  379 	ldw	(0x0a, sp), x
                                    380 ;	Source/Device/Src/nixie.c: 154: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
      008E07 3B 00 28         [ 1]  381 	push	_tube_state+0
      008E0A 96               [ 1]  382 	ldw	x, sp
      008E0B 1C 00 04         [ 2]  383 	addw	x, #4
      008E0E 89               [ 2]  384 	pushw	x
      008E0F 4B 02            [ 1]  385 	push	#0x02
      008E11 CD 8C E2         [ 4]  386 	call	_NIXIE_DisplayChar
      008E14 5B 04            [ 2]  387 	addw	sp, #4
      008E16 1F 0C            [ 2]  388 	ldw	(0x0c, sp), x
                                    389 ;	Source/Device/Src/nixie.c: 155: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
      008E18 3B 00 28         [ 1]  390 	push	_tube_state+0
      008E1B 96               [ 1]  391 	ldw	x, sp
      008E1C 1C 00 06         [ 2]  392 	addw	x, #6
      008E1F 89               [ 2]  393 	pushw	x
      008E20 4B 03            [ 1]  394 	push	#0x03
      008E22 CD 8C E2         [ 4]  395 	call	_NIXIE_DisplayChar
      008E25 5B 04            [ 2]  396 	addw	sp, #4
      008E27 1F 0E            [ 2]  397 	ldw	(0x0e, sp), x
                                    398 ;	Source/Device/Src/nixie.c: 156: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
      008E29 3B 00 28         [ 1]  399 	push	_tube_state+0
      008E2C 96               [ 1]  400 	ldw	x, sp
      008E2D 1C 00 09         [ 2]  401 	addw	x, #9
      008E30 89               [ 2]  402 	pushw	x
      008E31 4B 04            [ 1]  403 	push	#0x04
      008E33 CD 8C E2         [ 4]  404 	call	_NIXIE_DisplayChar
      008E36 5B 04            [ 2]  405 	addw	sp, #4
      008E38 1F 10            [ 2]  406 	ldw	(0x10, sp), x
                                    407 ;	Source/Device/Src/nixie.c: 160: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      008E3A 4B 80            [ 1]  408 	push	#0x80
      008E3C 4B 0A            [ 1]  409 	push	#0x0a
      008E3E 4B 50            [ 1]  410 	push	#0x50
      008E40 CD 82 94         [ 4]  411 	call	_GPIO_WriteLow
      008E43 5B 03            [ 2]  412 	addw	sp, #3
                                    413 ;	Source/Device/Src/nixie.c: 165: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008E45 1E 10            [ 2]  414 	ldw	x, (0x10, sp)
      008E47 54               [ 2]  415 	srlw	x
      008E48 58               [ 2]  416 	sllw	x
      008E49 4F               [ 1]  417 	clr	a
      008E4A 95               [ 1]  418 	ld	xh, a
      008E4B 54               [ 2]  419 	srlw	x
                                    420 ;	Source/Device/Src/nixie.c: 166: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      008E4C 7B 11            [ 1]  421 	ld	a, (0x11, sp)
      008E4E A4 01            [ 1]  422 	and	a, #0x01
      008E50 4E               [ 1]  423 	swap	a
      008E51 A4 F0            [ 1]  424 	and	a, #0xf0
      008E53 48               [ 1]  425 	sll	a
      008E54 48               [ 1]  426 	sll	a
      008E55 48               [ 1]  427 	sll	a
                                    428 ;	Source/Device/Src/nixie.c: 167: tmp1=tmp1|tmp2;
      008E56 89               [ 2]  429 	pushw	x
      008E57 1A 02            [ 1]  430 	or	a, (2, sp)
      008E59 85               [ 2]  431 	popw	x
                                    432 ;	Source/Device/Src/nixie.c: 168: SPI_SendData(tmp1);
      008E5A 88               [ 1]  433 	push	a
      008E5B CD 84 1D         [ 4]  434 	call	_SPI_SendData
      008E5E 84               [ 1]  435 	pop	a
                                    436 ;	Source/Device/Src/nixie.c: 170: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E5F                        437 00101$:
      008E5F 4B 02            [ 1]  438 	push	#0x02
      008E61 CD 84 24         [ 4]  439 	call	_SPI_GetFlagStatus
      008E64 5B 01            [ 2]  440 	addw	sp, #1
      008E66 4D               [ 1]  441 	tnz	a
      008E67 27 F6            [ 1]  442 	jreq	00101$
                                    443 ;	Source/Device/Src/nixie.c: 172: tmp1=(uint8_t)((tube3&0b1111)<<4);
      008E69 7B 0F            [ 1]  444 	ld	a, (0x0f, sp)
      008E6B A4 0F            [ 1]  445 	and	a, #0x0f
      008E6D 4E               [ 1]  446 	swap	a
      008E6E A4 F0            [ 1]  447 	and	a, #0xf0
      008E70 6B 12            [ 1]  448 	ld	(0x12, sp), a
                                    449 ;	Source/Device/Src/nixie.c: 173: tmp2=(uint8_t)(tube4>>8);
      008E72 7B 10            [ 1]  450 	ld	a, (0x10, sp)
      008E74 5F               [ 1]  451 	clrw	x
                                    452 ;	Source/Device/Src/nixie.c: 174: tmp1=tmp1|tmp2;
      008E75 1A 12            [ 1]  453 	or	a, (0x12, sp)
                                    454 ;	Source/Device/Src/nixie.c: 175: tmp2=(tmp1&0b00000001)<<7;
      008E77 97               [ 1]  455 	ld	xl, a
      008E78 A4 01            [ 1]  456 	and	a, #0x01
      008E7A 4E               [ 1]  457 	swap	a
      008E7B A4 F0            [ 1]  458 	and	a, #0xf0
      008E7D 48               [ 1]  459 	sll	a
      008E7E 48               [ 1]  460 	sll	a
      008E7F 48               [ 1]  461 	sll	a
      008E80 6B 12            [ 1]  462 	ld	(0x12, sp), a
                                    463 ;	Source/Device/Src/nixie.c: 176: tmp1=(tmp1>>1)|tmp2;
      008E82 9F               [ 1]  464 	ld	a, xl
      008E83 44               [ 1]  465 	srl	a
      008E84 1A 12            [ 1]  466 	or	a, (0x12, sp)
                                    467 ;	Source/Device/Src/nixie.c: 177: SPI_SendData(tmp1);
      008E86 88               [ 1]  468 	push	a
      008E87 CD 84 1D         [ 4]  469 	call	_SPI_SendData
      008E8A 84               [ 1]  470 	pop	a
                                    471 ;	Source/Device/Src/nixie.c: 179: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E8B                        472 00104$:
      008E8B 4B 02            [ 1]  473 	push	#0x02
      008E8D CD 84 24         [ 4]  474 	call	_SPI_GetFlagStatus
      008E90 5B 01            [ 2]  475 	addw	sp, #1
      008E92 4D               [ 1]  476 	tnz	a
      008E93 27 F6            [ 1]  477 	jreq	00104$
                                    478 ;	Source/Device/Src/nixie.c: 181: tmp1=(uint8_t)(tube3>>5);
      008E95 1E 0E            [ 2]  479 	ldw	x, (0x0e, sp)
      008E97 A6 20            [ 1]  480 	ld	a, #0x20
      008E99 62               [ 2]  481 	div	x, a
      008E9A 41               [ 1]  482 	exg	a, xl
      008E9B 6B 12            [ 1]  483 	ld	(0x12, sp), a
      008E9D 41               [ 1]  484 	exg	a, xl
                                    485 ;	Source/Device/Src/nixie.c: 182: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      008E9E 16 0E            [ 2]  486 	ldw	y, (0x0e, sp)
      008EA0 5F               [ 1]  487 	clrw	x
      008EA1 90 9F            [ 1]  488 	ld	a, yl
      008EA3 A4 10            [ 1]  489 	and	a, #0x10
      008EA5 97               [ 1]  490 	ld	xl, a
      008EA6 A6 10            [ 1]  491 	ld	a, #0x10
      008EA8 62               [ 2]  492 	div	x, a
      008EA9 9F               [ 1]  493 	ld	a, xl
      008EAA 4E               [ 1]  494 	swap	a
      008EAB A4 F0            [ 1]  495 	and	a, #0xf0
      008EAD 48               [ 1]  496 	sll	a
      008EAE 48               [ 1]  497 	sll	a
      008EAF 48               [ 1]  498 	sll	a
                                    499 ;	Source/Device/Src/nixie.c: 183: tmp1=tmp1|tmp2;
      008EB0 1A 12            [ 1]  500 	or	a, (0x12, sp)
                                    501 ;	Source/Device/Src/nixie.c: 184: SPI_SendData(tmp1);
      008EB2 88               [ 1]  502 	push	a
      008EB3 CD 84 1D         [ 4]  503 	call	_SPI_SendData
      008EB6 84               [ 1]  504 	pop	a
                                    505 ;	Source/Device/Src/nixie.c: 186: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EB7                        506 00107$:
      008EB7 4B 02            [ 1]  507 	push	#0x02
      008EB9 CD 84 24         [ 4]  508 	call	_SPI_GetFlagStatus
      008EBC 5B 01            [ 2]  509 	addw	sp, #1
      008EBE 4D               [ 1]  510 	tnz	a
      008EBF 27 F6            [ 1]  511 	jreq	00107$
                                    512 ;	Source/Device/Src/nixie.c: 189: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      008EC1 1E 0C            [ 2]  513 	ldw	x, (0x0c, sp)
      008EC3 54               [ 2]  514 	srlw	x
      008EC4 58               [ 2]  515 	sllw	x
      008EC5 4F               [ 1]  516 	clr	a
      008EC6 95               [ 1]  517 	ld	xh, a
      008EC7 54               [ 2]  518 	srlw	x
                                    519 ;	Source/Device/Src/nixie.c: 190: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      008EC8 7B 0D            [ 1]  520 	ld	a, (0x0d, sp)
      008ECA A4 01            [ 1]  521 	and	a, #0x01
      008ECC 4E               [ 1]  522 	swap	a
      008ECD A4 F0            [ 1]  523 	and	a, #0xf0
      008ECF 48               [ 1]  524 	sll	a
      008ED0 48               [ 1]  525 	sll	a
      008ED1 48               [ 1]  526 	sll	a
                                    527 ;	Source/Device/Src/nixie.c: 191: tmp1=tmp1|tmp2;
      008ED2 89               [ 2]  528 	pushw	x
      008ED3 1A 02            [ 1]  529 	or	a, (2, sp)
      008ED5 85               [ 2]  530 	popw	x
                                    531 ;	Source/Device/Src/nixie.c: 192: SPI_SendData(tmp1);
      008ED6 88               [ 1]  532 	push	a
      008ED7 CD 84 1D         [ 4]  533 	call	_SPI_SendData
      008EDA 84               [ 1]  534 	pop	a
                                    535 ;	Source/Device/Src/nixie.c: 194: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EDB                        536 00110$:
      008EDB 4B 02            [ 1]  537 	push	#0x02
      008EDD CD 84 24         [ 4]  538 	call	_SPI_GetFlagStatus
      008EE0 5B 01            [ 2]  539 	addw	sp, #1
      008EE2 4D               [ 1]  540 	tnz	a
      008EE3 27 F6            [ 1]  541 	jreq	00110$
                                    542 ;	Source/Device/Src/nixie.c: 196: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008EE5 7B 0B            [ 1]  543 	ld	a, (0x0b, sp)
      008EE7 A4 0F            [ 1]  544 	and	a, #0x0f
      008EE9 4E               [ 1]  545 	swap	a
      008EEA A4 F0            [ 1]  546 	and	a, #0xf0
      008EEC 6B 12            [ 1]  547 	ld	(0x12, sp), a
                                    548 ;	Source/Device/Src/nixie.c: 197: tmp2=(uint8_t)(tube2>>8);
      008EEE 7B 0C            [ 1]  549 	ld	a, (0x0c, sp)
      008EF0 5F               [ 1]  550 	clrw	x
                                    551 ;	Source/Device/Src/nixie.c: 198: tmp1=tmp1|tmp2;
      008EF1 1A 12            [ 1]  552 	or	a, (0x12, sp)
                                    553 ;	Source/Device/Src/nixie.c: 199: tmp2=(tmp1&0b00000001)<<7;
      008EF3 97               [ 1]  554 	ld	xl, a
      008EF4 A4 01            [ 1]  555 	and	a, #0x01
      008EF6 4E               [ 1]  556 	swap	a
      008EF7 A4 F0            [ 1]  557 	and	a, #0xf0
      008EF9 48               [ 1]  558 	sll	a
      008EFA 48               [ 1]  559 	sll	a
      008EFB 48               [ 1]  560 	sll	a
      008EFC 6B 12            [ 1]  561 	ld	(0x12, sp), a
                                    562 ;	Source/Device/Src/nixie.c: 200: tmp1=(tmp1>>1)|tmp2;
      008EFE 9F               [ 1]  563 	ld	a, xl
      008EFF 44               [ 1]  564 	srl	a
      008F00 1A 12            [ 1]  565 	or	a, (0x12, sp)
                                    566 ;	Source/Device/Src/nixie.c: 201: SPI_SendData(tmp1);
      008F02 88               [ 1]  567 	push	a
      008F03 CD 84 1D         [ 4]  568 	call	_SPI_SendData
      008F06 84               [ 1]  569 	pop	a
                                    570 ;	Source/Device/Src/nixie.c: 203: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F07                        571 00113$:
      008F07 4B 02            [ 1]  572 	push	#0x02
      008F09 CD 84 24         [ 4]  573 	call	_SPI_GetFlagStatus
      008F0C 5B 01            [ 2]  574 	addw	sp, #1
      008F0E 4D               [ 1]  575 	tnz	a
      008F0F 27 F6            [ 1]  576 	jreq	00113$
                                    577 ;	Source/Device/Src/nixie.c: 205: tmp1=(uint8_t)(tube1>>5);
      008F11 1E 0A            [ 2]  578 	ldw	x, (0x0a, sp)
      008F13 A6 20            [ 1]  579 	ld	a, #0x20
      008F15 62               [ 2]  580 	div	x, a
      008F16 41               [ 1]  581 	exg	a, xl
      008F17 6B 12            [ 1]  582 	ld	(0x12, sp), a
      008F19 41               [ 1]  583 	exg	a, xl
                                    584 ;	Source/Device/Src/nixie.c: 206: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008F1A 16 0A            [ 2]  585 	ldw	y, (0x0a, sp)
      008F1C 5F               [ 1]  586 	clrw	x
      008F1D 90 9F            [ 1]  587 	ld	a, yl
      008F1F A4 10            [ 1]  588 	and	a, #0x10
      008F21 97               [ 1]  589 	ld	xl, a
      008F22 A6 10            [ 1]  590 	ld	a, #0x10
      008F24 62               [ 2]  591 	div	x, a
      008F25 9F               [ 1]  592 	ld	a, xl
      008F26 4E               [ 1]  593 	swap	a
      008F27 A4 F0            [ 1]  594 	and	a, #0xf0
      008F29 48               [ 1]  595 	sll	a
      008F2A 48               [ 1]  596 	sll	a
      008F2B 48               [ 1]  597 	sll	a
                                    598 ;	Source/Device/Src/nixie.c: 207: tmp1=tmp1|tmp2;
      008F2C 1A 12            [ 1]  599 	or	a, (0x12, sp)
                                    600 ;	Source/Device/Src/nixie.c: 208: SPI_SendData(tmp1);
      008F2E 88               [ 1]  601 	push	a
      008F2F CD 84 1D         [ 4]  602 	call	_SPI_SendData
      008F32 84               [ 1]  603 	pop	a
                                    604 ;	Source/Device/Src/nixie.c: 210: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F33                        605 00116$:
      008F33 4B 02            [ 1]  606 	push	#0x02
      008F35 CD 84 24         [ 4]  607 	call	_SPI_GetFlagStatus
      008F38 5B 01            [ 2]  608 	addw	sp, #1
      008F3A 4D               [ 1]  609 	tnz	a
      008F3B 27 F6            [ 1]  610 	jreq	00116$
                                    611 ;	Source/Device/Src/nixie.c: 212: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008F3D 4B 80            [ 1]  612 	push	#0x80
      008F3F 4B 0A            [ 1]  613 	push	#0x0a
      008F41 4B 50            [ 1]  614 	push	#0x50
      008F43 CD 82 8D         [ 4]  615 	call	_GPIO_WriteHigh
                                    616 ;	Source/Device/Src/nixie.c: 213: }
      008F46 5B 15            [ 2]  617 	addw	sp, #21
      008F48 81               [ 4]  618 	ret
                                    619 	.area CODE
                                    620 	.area CONST
                                    621 	.area INITIALIZER
      008096                        622 __xinit__tube_state:
      008096 00                     623 	.db #0x00	; 0
      008097                        624 __xinit__nixie_tube1:
      008097 00                     625 	.db #0x00	; 0
      008098                        626 __xinit__nixie_tube2:
      008098 00                     627 	.db #0x00	; 0
      008099                        628 __xinit__nixie_tube3:
      008099 00                     629 	.db #0x00	; 0
      00809A                        630 __xinit__nixie_tube4:
      00809A 00                     631 	.db #0x00	; 0
                                    632 	.area CABS (ABS)
