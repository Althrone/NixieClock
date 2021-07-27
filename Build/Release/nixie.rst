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
                                     11 	.globl _delay
                                     12 	.globl _strchr
                                     13 	.globl _SPI_GetFlagStatus
                                     14 	.globl _SPI_SendData
                                     15 	.globl _SPI_Cmd
                                     16 	.globl _SPI_Init
                                     17 	.globl _SPI_DeInit
                                     18 	.globl _GPIO_WriteLow
                                     19 	.globl _GPIO_WriteHigh
                                     20 	.globl _GPIO_Init
                                     21 	.globl _tube_state
                                     22 	.globl _NIXIE_Init
                                     23 	.globl _NIXIE_DisplayChar
                                     24 	.globl _NIXIE_DisplayTime
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area INITIALIZED
      000028                         33 _tube_state::
      000028                         34 	.ds 1
                                     35 ;--------------------------------------------------------
                                     36 ; absolute external ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DABS (ABS)
                                     39 
                                     40 ; default segment ordering for linker
                                     41 	.area HOME
                                     42 	.area GSINIT
                                     43 	.area GSFINAL
                                     44 	.area CONST
                                     45 	.area INITIALIZER
                                     46 	.area CODE
                                     47 
                                     48 ;--------------------------------------------------------
                                     49 ; global & static initialisations
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area GSINIT
                                     55 ;--------------------------------------------------------
                                     56 ; Home
                                     57 ;--------------------------------------------------------
                                     58 	.area HOME
                                     59 	.area HOME
                                     60 ;--------------------------------------------------------
                                     61 ; code
                                     62 ;--------------------------------------------------------
                                     63 	.area CODE
                                     64 ;	Source/Device/Src/nixie.c: 51: void delay(void)
                                     65 ;	-----------------------------------------
                                     66 ;	 function delay
                                     67 ;	-----------------------------------------
      008C70                         68 _delay:
                                     69 ;	Source/Device/Src/nixie.c: 60: for (int i = 0; i < 300; i++);//这个比较合适
      008C70 5F               [ 1]   70 	clrw	x
      008C71                         71 00103$:
      008C71 A3 01 2C         [ 2]   72 	cpw	x, #0x012c
      008C74 2F 01            [ 1]   73 	jrslt	00118$
      008C76 81               [ 4]   74 	ret
      008C77                         75 00118$:
      008C77 5C               [ 1]   76 	incw	x
      008C78 20 F7            [ 2]   77 	jra	00103$
                                     78 ;	Source/Device/Src/nixie.c: 61: }
      008C7A 81               [ 4]   79 	ret
                                     80 ;	Source/Device/Src/nixie.c: 66: void NIXIE_Init(void)
                                     81 ;	-----------------------------------------
                                     82 ;	 function NIXIE_Init
                                     83 ;	-----------------------------------------
      008C7B                         84 _NIXIE_Init:
                                     85 ;	Source/Device/Src/nixie.c: 68: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      008C7B 4B E0            [ 1]   86 	push	#0xe0
      008C7D 4B 20            [ 1]   87 	push	#0x20
      008C7F 4B 0A            [ 1]   88 	push	#0x0a
      008C81 4B 50            [ 1]   89 	push	#0x50
      008C83 CD 82 2F         [ 4]   90 	call	_GPIO_Init
      008C86 5B 04            [ 2]   91 	addw	sp, #4
                                     92 ;	Source/Device/Src/nixie.c: 69: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      008C88 4B E0            [ 1]   93 	push	#0xe0
      008C8A 4B 40            [ 1]   94 	push	#0x40
      008C8C 4B 0A            [ 1]   95 	push	#0x0a
      008C8E 4B 50            [ 1]   96 	push	#0x50
      008C90 CD 82 2F         [ 4]   97 	call	_GPIO_Init
      008C93 5B 04            [ 2]   98 	addw	sp, #4
                                     99 ;	Source/Device/Src/nixie.c: 70: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      008C95 4B E0            [ 1]  100 	push	#0xe0
      008C97 4B 80            [ 1]  101 	push	#0x80
      008C99 4B 0A            [ 1]  102 	push	#0x0a
      008C9B 4B 50            [ 1]  103 	push	#0x50
      008C9D CD 82 2F         [ 4]  104 	call	_GPIO_Init
      008CA0 5B 04            [ 2]  105 	addw	sp, #4
                                    106 ;	Source/Device/Src/nixie.c: 71: SPI_DeInit();
      008CA2 CD 83 CE         [ 4]  107 	call	_SPI_DeInit
                                    108 ;	Source/Device/Src/nixie.c: 73: SPI_Init(SPI_FIRSTBIT_LSB,
      008CA5 4B 07            [ 1]  109 	push	#0x07
      008CA7 4B 02            [ 1]  110 	push	#0x02
      008CA9 4B C0            [ 1]  111 	push	#0xc0
      008CAB 4B 00            [ 1]  112 	push	#0x00
      008CAD 4B 00            [ 1]  113 	push	#0x00
      008CAF 4B 04            [ 1]  114 	push	#0x04
      008CB1 4B 00            [ 1]  115 	push	#0x00
      008CB3 4B 80            [ 1]  116 	push	#0x80
      008CB5 CD 83 E3         [ 4]  117 	call	_SPI_Init
      008CB8 5B 08            [ 2]  118 	addw	sp, #8
                                    119 ;	Source/Device/Src/nixie.c: 81: SPI_Cmd(ENABLE);
      008CBA 4B 01            [ 1]  120 	push	#0x01
      008CBC CD 84 21         [ 4]  121 	call	_SPI_Cmd
      008CBF 84               [ 1]  122 	pop	a
                                    123 ;	Source/Device/Src/nixie.c: 82: }
      008CC0 81               [ 4]  124 	ret
                                    125 ;	Source/Device/Src/nixie.c: 92: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    126 ;	-----------------------------------------
                                    127 ;	 function NIXIE_DisplayChar
                                    128 ;	-----------------------------------------
      008CC1                        129 _NIXIE_DisplayChar:
      008CC1 52 05            [ 2]  130 	sub	sp, #5
                                    131 ;	Source/Device/Src/nixie.c: 94: uint16_t tmp=0;
      008CC3 5F               [ 1]  132 	clrw	x
      008CC4 1F 03            [ 2]  133 	ldw	(0x03, sp), x
                                    134 ;	Source/Device/Src/nixie.c: 97: if(strchr(character,'.')!=NULL)
      008CC6 4B 2E            [ 1]  135 	push	#0x2e
      008CC8 4B 00            [ 1]  136 	push	#0x00
      008CCA 1E 0B            [ 2]  137 	ldw	x, (0x0b, sp)
      008CCC 89               [ 2]  138 	pushw	x
      008CCD CD 93 D2         [ 4]  139 	call	_strchr
      008CD0 5B 04            [ 2]  140 	addw	sp, #4
      008CD2 5D               [ 2]  141 	tnzw	x
      008CD3 27 05            [ 1]  142 	jreq	00118$
                                    143 ;	Source/Device/Src/nixie.c: 98: tmp|=1<<11;
      008CD5 AE 08 00         [ 2]  144 	ldw	x, #0x0800
      008CD8 1F 03            [ 2]  145 	ldw	(0x03, sp), x
                                    146 ;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
      008CDA                        147 00118$:
      008CDA 0F 05            [ 1]  148 	clr	(0x05, sp)
      008CDC                        149 00111$:
      008CDC 7B 05            [ 1]  150 	ld	a, (0x05, sp)
      008CDE A1 09            [ 1]  151 	cp	a, #0x09
      008CE0 24 2E            [ 1]  152 	jrnc	00105$
                                    153 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'1'+i)!=NULL)
      008CE2 7B 05            [ 1]  154 	ld	a, (0x05, sp)
      008CE4 5F               [ 1]  155 	clrw	x
      008CE5 97               [ 1]  156 	ld	xl, a
      008CE6 1C 00 31         [ 2]  157 	addw	x, #0x0031
      008CE9 89               [ 2]  158 	pushw	x
      008CEA 1E 0B            [ 2]  159 	ldw	x, (0x0b, sp)
      008CEC 89               [ 2]  160 	pushw	x
      008CED CD 93 D2         [ 4]  161 	call	_strchr
      008CF0 5B 04            [ 2]  162 	addw	sp, #4
      008CF2 1F 01            [ 2]  163 	ldw	(0x01, sp), x
      008CF4 27 16            [ 1]  164 	jreq	00112$
                                    165 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<10-i;
      008CF6 A6 0A            [ 1]  166 	ld	a, #0x0a
      008CF8 10 05            [ 1]  167 	sub	a, (0x05, sp)
      008CFA 5F               [ 1]  168 	clrw	x
      008CFB 5C               [ 1]  169 	incw	x
      008CFC 4D               [ 1]  170 	tnz	a
      008CFD 27 04            [ 1]  171 	jreq	00150$
      008CFF                        172 00149$:
      008CFF 58               [ 2]  173 	sllw	x
      008D00 4A               [ 1]  174 	dec	a
      008D01 26 FC            [ 1]  175 	jrne	00149$
      008D03                        176 00150$:
      008D03 9F               [ 1]  177 	ld	a, xl
      008D04 1A 04            [ 1]  178 	or	a, (0x04, sp)
      008D06 02               [ 1]  179 	rlwa	x
      008D07 1A 03            [ 1]  180 	or	a, (0x03, sp)
      008D09 95               [ 1]  181 	ld	xh, a
      008D0A 1F 03            [ 2]  182 	ldw	(0x03, sp), x
      008D0C                        183 00112$:
                                    184 ;	Source/Device/Src/nixie.c: 99: for(uint8_t i=0;i<9;++i)
      008D0C 0C 05            [ 1]  185 	inc	(0x05, sp)
      008D0E 20 CC            [ 2]  186 	jra	00111$
      008D10                        187 00105$:
                                    188 ;	Source/Device/Src/nixie.c: 104: if(strchr(character,'0')!=NULL)
      008D10 4B 30            [ 1]  189 	push	#0x30
      008D12 4B 00            [ 1]  190 	push	#0x00
      008D14 1E 0B            [ 2]  191 	ldw	x, (0x0b, sp)
      008D16 89               [ 2]  192 	pushw	x
      008D17 CD 93 D2         [ 4]  193 	call	_strchr
      008D1A 5B 04            [ 2]  194 	addw	sp, #4
      008D1C 5D               [ 2]  195 	tnzw	x
      008D1D 27 0A            [ 1]  196 	jreq	00107$
                                    197 ;	Source/Device/Src/nixie.c: 105: tmp|=1<<1;
      008D1F 7B 04            [ 1]  198 	ld	a, (0x04, sp)
      008D21 AA 02            [ 1]  199 	or	a, #0x02
      008D23 97               [ 1]  200 	ld	xl, a
      008D24 7B 03            [ 1]  201 	ld	a, (0x03, sp)
      008D26 95               [ 1]  202 	ld	xh, a
      008D27 1F 03            [ 2]  203 	ldw	(0x03, sp), x
      008D29                        204 00107$:
                                    205 ;	Source/Device/Src/nixie.c: 106: if(tubeState==ENABLE)
      008D29 7B 0B            [ 1]  206 	ld	a, (0x0b, sp)
      008D2B 4A               [ 1]  207 	dec	a
      008D2C 26 07            [ 1]  208 	jrne	00109$
                                    209 ;	Source/Device/Src/nixie.c: 107: tmp|=1<<0;
      008D2E 1E 03            [ 2]  210 	ldw	x, (0x03, sp)
      008D30 54               [ 2]  211 	srlw	x
      008D31 99               [ 1]  212 	scf
      008D32 59               [ 2]  213 	rlcw	x
      008D33 1F 03            [ 2]  214 	ldw	(0x03, sp), x
      008D35                        215 00109$:
                                    216 ;	Source/Device/Src/nixie.c: 109: output=(tmp&0xAAA)>>1;
      008D35 1E 03            [ 2]  217 	ldw	x, (0x03, sp)
      008D37 9F               [ 1]  218 	ld	a, xl
      008D38 A4 AA            [ 1]  219 	and	a, #0xaa
      008D3A 90 97            [ 1]  220 	ld	yl, a
      008D3C 9E               [ 1]  221 	ld	a, xh
      008D3D A4 0A            [ 1]  222 	and	a, #0x0a
      008D3F 90 95            [ 1]  223 	ld	yh, a
      008D41 90 54            [ 2]  224 	srlw	y
                                    225 ;	Source/Device/Src/nixie.c: 110: output|=(tmp&0x555)<<1;
      008D43 9F               [ 1]  226 	ld	a, xl
      008D44 A4 55            [ 1]  227 	and	a, #0x55
      008D46 02               [ 1]  228 	rlwa	x
      008D47 A4 05            [ 1]  229 	and	a, #0x05
      008D49 95               [ 1]  230 	ld	xh, a
      008D4A 58               [ 2]  231 	sllw	x
      008D4B 17 04            [ 2]  232 	ldw	(0x04, sp), y
      008D4D 9F               [ 1]  233 	ld	a, xl
      008D4E 1A 05            [ 1]  234 	or	a, (0x05, sp)
      008D50 02               [ 1]  235 	rlwa	x
      008D51 1A 04            [ 1]  236 	or	a, (0x04, sp)
                                    237 ;	Source/Device/Src/nixie.c: 112: return output;
      008D53 95               [ 1]  238 	ld	xh, a
                                    239 ;	Source/Device/Src/nixie.c: 113: }
      008D54 5B 05            [ 2]  240 	addw	sp, #5
      008D56 81               [ 4]  241 	ret
                                    242 ;	Source/Device/Src/nixie.c: 121: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    243 ;	-----------------------------------------
                                    244 ;	 function NIXIE_DisplayTime
                                    245 ;	-----------------------------------------
      008D57                        246 _NIXIE_DisplayTime:
      008D57 52 12            [ 2]  247 	sub	sp, #18
                                    248 ;	Source/Device/Src/nixie.c: 125: char tube1s[]="0",tube2s[]="0",tube3s[]="0.",tube4s[]="0";
      008D59 A6 30            [ 1]  249 	ld	a, #0x30
      008D5B 6B 01            [ 1]  250 	ld	(0x01, sp), a
      008D5D 96               [ 1]  251 	ldw	x, sp
      008D5E 6F 02            [ 1]  252 	clr	(2, x)
      008D60 A6 30            [ 1]  253 	ld	a, #0x30
      008D62 6B 03            [ 1]  254 	ld	(0x03, sp), a
      008D64 96               [ 1]  255 	ldw	x, sp
      008D65 6F 04            [ 1]  256 	clr	(4, x)
      008D67 A6 30            [ 1]  257 	ld	a, #0x30
      008D69 6B 05            [ 1]  258 	ld	(0x05, sp), a
      008D6B 96               [ 1]  259 	ldw	x, sp
      008D6C A6 2E            [ 1]  260 	ld	a, #0x2e
      008D6E E7 06            [ 1]  261 	ld	(6, x), a
      008D70 96               [ 1]  262 	ldw	x, sp
      008D71 6F 07            [ 1]  263 	clr	(7, x)
      008D73 A6 30            [ 1]  264 	ld	a, #0x30
      008D75 6B 08            [ 1]  265 	ld	(0x08, sp), a
      008D77 96               [ 1]  266 	ldw	x, sp
      008D78 6F 09            [ 1]  267 	clr	(9, x)
                                    268 ;	Source/Device/Src/nixie.c: 127: uint8_t tmp=hour/10;
      008D7A 7B 15            [ 1]  269 	ld	a, (0x15, sp)
      008D7C 6B 12            [ 1]  270 	ld	(0x12, sp), a
      008D7E 0F 11            [ 1]  271 	clr	(0x11, sp)
      008D80 4B 0A            [ 1]  272 	push	#0x0a
      008D82 4B 00            [ 1]  273 	push	#0x00
      008D84 1E 13            [ 2]  274 	ldw	x, (0x13, sp)
      008D86 89               [ 2]  275 	pushw	x
      008D87 CD 94 8A         [ 4]  276 	call	__divsint
      008D8A 5B 04            [ 2]  277 	addw	sp, #4
                                    278 ;	Source/Device/Src/nixie.c: 128: tube1s[0]+=tmp;
      008D8C 7B 01            [ 1]  279 	ld	a, (0x01, sp)
      008D8E 89               [ 2]  280 	pushw	x
      008D8F 1B 02            [ 1]  281 	add	a, (2, sp)
      008D91 85               [ 2]  282 	popw	x
      008D92 6B 01            [ 1]  283 	ld	(0x01, sp), a
                                    284 ;	Source/Device/Src/nixie.c: 130: tmp=hour%10;
      008D94 4B 0A            [ 1]  285 	push	#0x0a
      008D96 4B 00            [ 1]  286 	push	#0x00
      008D98 1E 13            [ 2]  287 	ldw	x, (0x13, sp)
      008D9A 89               [ 2]  288 	pushw	x
      008D9B CD 93 F8         [ 4]  289 	call	__modsint
      008D9E 5B 04            [ 2]  290 	addw	sp, #4
                                    291 ;	Source/Device/Src/nixie.c: 131: tube2s[0]+=tmp;
      008DA0 7B 03            [ 1]  292 	ld	a, (0x03, sp)
      008DA2 89               [ 2]  293 	pushw	x
      008DA3 1B 02            [ 1]  294 	add	a, (2, sp)
      008DA5 85               [ 2]  295 	popw	x
      008DA6 6B 03            [ 1]  296 	ld	(0x03, sp), a
                                    297 ;	Source/Device/Src/nixie.c: 133: tmp=min/10;
      008DA8 7B 16            [ 1]  298 	ld	a, (0x16, sp)
      008DAA 6B 12            [ 1]  299 	ld	(0x12, sp), a
      008DAC 0F 11            [ 1]  300 	clr	(0x11, sp)
      008DAE 4B 0A            [ 1]  301 	push	#0x0a
      008DB0 4B 00            [ 1]  302 	push	#0x00
      008DB2 1E 13            [ 2]  303 	ldw	x, (0x13, sp)
      008DB4 89               [ 2]  304 	pushw	x
      008DB5 CD 94 8A         [ 4]  305 	call	__divsint
      008DB8 5B 04            [ 2]  306 	addw	sp, #4
                                    307 ;	Source/Device/Src/nixie.c: 134: tube3s[0]+=tmp;
      008DBA 7B 05            [ 1]  308 	ld	a, (0x05, sp)
      008DBC 89               [ 2]  309 	pushw	x
      008DBD 1B 02            [ 1]  310 	add	a, (2, sp)
      008DBF 85               [ 2]  311 	popw	x
      008DC0 6B 05            [ 1]  312 	ld	(0x05, sp), a
                                    313 ;	Source/Device/Src/nixie.c: 136: tmp=min%10;
      008DC2 4B 0A            [ 1]  314 	push	#0x0a
      008DC4 4B 00            [ 1]  315 	push	#0x00
      008DC6 1E 13            [ 2]  316 	ldw	x, (0x13, sp)
      008DC8 89               [ 2]  317 	pushw	x
      008DC9 CD 93 F8         [ 4]  318 	call	__modsint
      008DCC 5B 04            [ 2]  319 	addw	sp, #4
                                    320 ;	Source/Device/Src/nixie.c: 137: tube4s[0]+=tmp;
      008DCE 7B 08            [ 1]  321 	ld	a, (0x08, sp)
      008DD0 89               [ 2]  322 	pushw	x
      008DD1 1B 02            [ 1]  323 	add	a, (2, sp)
      008DD3 85               [ 2]  324 	popw	x
      008DD4 6B 08            [ 1]  325 	ld	(0x08, sp), a
                                    326 ;	Source/Device/Src/nixie.c: 139: tube1=NIXIE_DisplayChar(1,tube1s,tube_state);
      008DD6 3B 00 28         [ 1]  327 	push	_tube_state+0
      008DD9 96               [ 1]  328 	ldw	x, sp
      008DDA 5C               [ 1]  329 	incw	x
      008DDB 5C               [ 1]  330 	incw	x
      008DDC 89               [ 2]  331 	pushw	x
      008DDD 4B 01            [ 1]  332 	push	#0x01
      008DDF CD 8C C1         [ 4]  333 	call	_NIXIE_DisplayChar
      008DE2 5B 04            [ 2]  334 	addw	sp, #4
      008DE4 1F 0A            [ 2]  335 	ldw	(0x0a, sp), x
                                    336 ;	Source/Device/Src/nixie.c: 140: tube2=NIXIE_DisplayChar(2,tube2s,tube_state);
      008DE6 3B 00 28         [ 1]  337 	push	_tube_state+0
      008DE9 96               [ 1]  338 	ldw	x, sp
      008DEA 1C 00 04         [ 2]  339 	addw	x, #4
      008DED 89               [ 2]  340 	pushw	x
      008DEE 4B 02            [ 1]  341 	push	#0x02
      008DF0 CD 8C C1         [ 4]  342 	call	_NIXIE_DisplayChar
      008DF3 5B 04            [ 2]  343 	addw	sp, #4
      008DF5 1F 0C            [ 2]  344 	ldw	(0x0c, sp), x
                                    345 ;	Source/Device/Src/nixie.c: 141: tube3=NIXIE_DisplayChar(3,tube3s,tube_state);
      008DF7 3B 00 28         [ 1]  346 	push	_tube_state+0
      008DFA 96               [ 1]  347 	ldw	x, sp
      008DFB 1C 00 06         [ 2]  348 	addw	x, #6
      008DFE 89               [ 2]  349 	pushw	x
      008DFF 4B 03            [ 1]  350 	push	#0x03
      008E01 CD 8C C1         [ 4]  351 	call	_NIXIE_DisplayChar
      008E04 5B 04            [ 2]  352 	addw	sp, #4
      008E06 1F 0E            [ 2]  353 	ldw	(0x0e, sp), x
                                    354 ;	Source/Device/Src/nixie.c: 142: tube4=NIXIE_DisplayChar(4,tube4s,tube_state);
      008E08 3B 00 28         [ 1]  355 	push	_tube_state+0
      008E0B 96               [ 1]  356 	ldw	x, sp
      008E0C 1C 00 09         [ 2]  357 	addw	x, #9
      008E0F 89               [ 2]  358 	pushw	x
      008E10 4B 04            [ 1]  359 	push	#0x04
      008E12 CD 8C C1         [ 4]  360 	call	_NIXIE_DisplayChar
      008E15 5B 04            [ 2]  361 	addw	sp, #4
      008E17 1F 10            [ 2]  362 	ldw	(0x10, sp), x
                                    363 ;	Source/Device/Src/nixie.c: 146: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      008E19 4B 80            [ 1]  364 	push	#0x80
      008E1B 4B 0A            [ 1]  365 	push	#0x0a
      008E1D 4B 50            [ 1]  366 	push	#0x50
      008E1F CD 82 AB         [ 4]  367 	call	_GPIO_WriteLow
      008E22 5B 03            [ 2]  368 	addw	sp, #3
                                    369 ;	Source/Device/Src/nixie.c: 151: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008E24 1E 10            [ 2]  370 	ldw	x, (0x10, sp)
      008E26 54               [ 2]  371 	srlw	x
      008E27 58               [ 2]  372 	sllw	x
      008E28 4F               [ 1]  373 	clr	a
      008E29 95               [ 1]  374 	ld	xh, a
      008E2A 54               [ 2]  375 	srlw	x
                                    376 ;	Source/Device/Src/nixie.c: 152: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      008E2B 7B 11            [ 1]  377 	ld	a, (0x11, sp)
      008E2D A4 01            [ 1]  378 	and	a, #0x01
      008E2F 4E               [ 1]  379 	swap	a
      008E30 A4 F0            [ 1]  380 	and	a, #0xf0
      008E32 48               [ 1]  381 	sll	a
      008E33 48               [ 1]  382 	sll	a
      008E34 48               [ 1]  383 	sll	a
                                    384 ;	Source/Device/Src/nixie.c: 153: tmp1=tmp1|tmp2;
      008E35 89               [ 2]  385 	pushw	x
      008E36 1A 02            [ 1]  386 	or	a, (2, sp)
      008E38 85               [ 2]  387 	popw	x
                                    388 ;	Source/Device/Src/nixie.c: 154: SPI_SendData(tmp1);
      008E39 88               [ 1]  389 	push	a
      008E3A CD 84 34         [ 4]  390 	call	_SPI_SendData
      008E3D 84               [ 1]  391 	pop	a
                                    392 ;	Source/Device/Src/nixie.c: 156: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E3E                        393 00101$:
      008E3E 4B 02            [ 1]  394 	push	#0x02
      008E40 CD 84 3B         [ 4]  395 	call	_SPI_GetFlagStatus
      008E43 5B 01            [ 2]  396 	addw	sp, #1
      008E45 4D               [ 1]  397 	tnz	a
      008E46 27 F6            [ 1]  398 	jreq	00101$
                                    399 ;	Source/Device/Src/nixie.c: 158: tmp1=(uint8_t)((tube3&0b1111)<<4);
      008E48 7B 0F            [ 1]  400 	ld	a, (0x0f, sp)
      008E4A A4 0F            [ 1]  401 	and	a, #0x0f
      008E4C 4E               [ 1]  402 	swap	a
      008E4D A4 F0            [ 1]  403 	and	a, #0xf0
      008E4F 6B 12            [ 1]  404 	ld	(0x12, sp), a
                                    405 ;	Source/Device/Src/nixie.c: 159: tmp2=(uint8_t)(tube4>>8);
      008E51 7B 10            [ 1]  406 	ld	a, (0x10, sp)
      008E53 5F               [ 1]  407 	clrw	x
                                    408 ;	Source/Device/Src/nixie.c: 160: tmp1=tmp1|tmp2;
      008E54 1A 12            [ 1]  409 	or	a, (0x12, sp)
                                    410 ;	Source/Device/Src/nixie.c: 161: tmp2=(tmp1&0b00000001)<<7;
      008E56 97               [ 1]  411 	ld	xl, a
      008E57 A4 01            [ 1]  412 	and	a, #0x01
      008E59 4E               [ 1]  413 	swap	a
      008E5A A4 F0            [ 1]  414 	and	a, #0xf0
      008E5C 48               [ 1]  415 	sll	a
      008E5D 48               [ 1]  416 	sll	a
      008E5E 48               [ 1]  417 	sll	a
      008E5F 6B 12            [ 1]  418 	ld	(0x12, sp), a
                                    419 ;	Source/Device/Src/nixie.c: 162: tmp1=(tmp1>>1)|tmp2;
      008E61 9F               [ 1]  420 	ld	a, xl
      008E62 44               [ 1]  421 	srl	a
      008E63 1A 12            [ 1]  422 	or	a, (0x12, sp)
                                    423 ;	Source/Device/Src/nixie.c: 163: SPI_SendData(tmp1);
      008E65 88               [ 1]  424 	push	a
      008E66 CD 84 34         [ 4]  425 	call	_SPI_SendData
      008E69 84               [ 1]  426 	pop	a
                                    427 ;	Source/Device/Src/nixie.c: 165: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E6A                        428 00104$:
      008E6A 4B 02            [ 1]  429 	push	#0x02
      008E6C CD 84 3B         [ 4]  430 	call	_SPI_GetFlagStatus
      008E6F 5B 01            [ 2]  431 	addw	sp, #1
      008E71 4D               [ 1]  432 	tnz	a
      008E72 27 F6            [ 1]  433 	jreq	00104$
                                    434 ;	Source/Device/Src/nixie.c: 167: tmp1=(uint8_t)(tube3>>5);
      008E74 1E 0E            [ 2]  435 	ldw	x, (0x0e, sp)
      008E76 A6 20            [ 1]  436 	ld	a, #0x20
      008E78 62               [ 2]  437 	div	x, a
      008E79 41               [ 1]  438 	exg	a, xl
      008E7A 6B 12            [ 1]  439 	ld	(0x12, sp), a
      008E7C 41               [ 1]  440 	exg	a, xl
                                    441 ;	Source/Device/Src/nixie.c: 168: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      008E7D 16 0E            [ 2]  442 	ldw	y, (0x0e, sp)
      008E7F 5F               [ 1]  443 	clrw	x
      008E80 90 9F            [ 1]  444 	ld	a, yl
      008E82 A4 10            [ 1]  445 	and	a, #0x10
      008E84 97               [ 1]  446 	ld	xl, a
      008E85 A6 10            [ 1]  447 	ld	a, #0x10
      008E87 62               [ 2]  448 	div	x, a
      008E88 9F               [ 1]  449 	ld	a, xl
      008E89 4E               [ 1]  450 	swap	a
      008E8A A4 F0            [ 1]  451 	and	a, #0xf0
      008E8C 48               [ 1]  452 	sll	a
      008E8D 48               [ 1]  453 	sll	a
      008E8E 48               [ 1]  454 	sll	a
                                    455 ;	Source/Device/Src/nixie.c: 169: tmp1=tmp1|tmp2;
      008E8F 1A 12            [ 1]  456 	or	a, (0x12, sp)
                                    457 ;	Source/Device/Src/nixie.c: 170: SPI_SendData(tmp1);
      008E91 88               [ 1]  458 	push	a
      008E92 CD 84 34         [ 4]  459 	call	_SPI_SendData
      008E95 84               [ 1]  460 	pop	a
                                    461 ;	Source/Device/Src/nixie.c: 172: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008E96                        462 00107$:
      008E96 4B 02            [ 1]  463 	push	#0x02
      008E98 CD 84 3B         [ 4]  464 	call	_SPI_GetFlagStatus
      008E9B 5B 01            [ 2]  465 	addw	sp, #1
      008E9D 4D               [ 1]  466 	tnz	a
      008E9E 27 F6            [ 1]  467 	jreq	00107$
                                    468 ;	Source/Device/Src/nixie.c: 175: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      008EA0 1E 0C            [ 2]  469 	ldw	x, (0x0c, sp)
      008EA2 54               [ 2]  470 	srlw	x
      008EA3 58               [ 2]  471 	sllw	x
      008EA4 4F               [ 1]  472 	clr	a
      008EA5 95               [ 1]  473 	ld	xh, a
      008EA6 54               [ 2]  474 	srlw	x
                                    475 ;	Source/Device/Src/nixie.c: 176: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      008EA7 7B 0D            [ 1]  476 	ld	a, (0x0d, sp)
      008EA9 A4 01            [ 1]  477 	and	a, #0x01
      008EAB 4E               [ 1]  478 	swap	a
      008EAC A4 F0            [ 1]  479 	and	a, #0xf0
      008EAE 48               [ 1]  480 	sll	a
      008EAF 48               [ 1]  481 	sll	a
      008EB0 48               [ 1]  482 	sll	a
                                    483 ;	Source/Device/Src/nixie.c: 177: tmp1=tmp1|tmp2;
      008EB1 89               [ 2]  484 	pushw	x
      008EB2 1A 02            [ 1]  485 	or	a, (2, sp)
      008EB4 85               [ 2]  486 	popw	x
                                    487 ;	Source/Device/Src/nixie.c: 178: SPI_SendData(tmp1);
      008EB5 88               [ 1]  488 	push	a
      008EB6 CD 84 34         [ 4]  489 	call	_SPI_SendData
      008EB9 84               [ 1]  490 	pop	a
                                    491 ;	Source/Device/Src/nixie.c: 180: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EBA                        492 00110$:
      008EBA 4B 02            [ 1]  493 	push	#0x02
      008EBC CD 84 3B         [ 4]  494 	call	_SPI_GetFlagStatus
      008EBF 5B 01            [ 2]  495 	addw	sp, #1
      008EC1 4D               [ 1]  496 	tnz	a
      008EC2 27 F6            [ 1]  497 	jreq	00110$
                                    498 ;	Source/Device/Src/nixie.c: 182: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008EC4 7B 0B            [ 1]  499 	ld	a, (0x0b, sp)
      008EC6 A4 0F            [ 1]  500 	and	a, #0x0f
      008EC8 4E               [ 1]  501 	swap	a
      008EC9 A4 F0            [ 1]  502 	and	a, #0xf0
      008ECB 6B 12            [ 1]  503 	ld	(0x12, sp), a
                                    504 ;	Source/Device/Src/nixie.c: 183: tmp2=(uint8_t)(tube2>>8);
      008ECD 7B 0C            [ 1]  505 	ld	a, (0x0c, sp)
      008ECF 5F               [ 1]  506 	clrw	x
                                    507 ;	Source/Device/Src/nixie.c: 184: tmp1=tmp1|tmp2;
      008ED0 1A 12            [ 1]  508 	or	a, (0x12, sp)
                                    509 ;	Source/Device/Src/nixie.c: 185: tmp2=(tmp1&0b00000001)<<7;
      008ED2 97               [ 1]  510 	ld	xl, a
      008ED3 A4 01            [ 1]  511 	and	a, #0x01
      008ED5 4E               [ 1]  512 	swap	a
      008ED6 A4 F0            [ 1]  513 	and	a, #0xf0
      008ED8 48               [ 1]  514 	sll	a
      008ED9 48               [ 1]  515 	sll	a
      008EDA 48               [ 1]  516 	sll	a
      008EDB 6B 12            [ 1]  517 	ld	(0x12, sp), a
                                    518 ;	Source/Device/Src/nixie.c: 186: tmp1=(tmp1>>1)|tmp2;
      008EDD 9F               [ 1]  519 	ld	a, xl
      008EDE 44               [ 1]  520 	srl	a
      008EDF 1A 12            [ 1]  521 	or	a, (0x12, sp)
                                    522 ;	Source/Device/Src/nixie.c: 187: SPI_SendData(tmp1);
      008EE1 88               [ 1]  523 	push	a
      008EE2 CD 84 34         [ 4]  524 	call	_SPI_SendData
      008EE5 84               [ 1]  525 	pop	a
                                    526 ;	Source/Device/Src/nixie.c: 189: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008EE6                        527 00113$:
      008EE6 4B 02            [ 1]  528 	push	#0x02
      008EE8 CD 84 3B         [ 4]  529 	call	_SPI_GetFlagStatus
      008EEB 5B 01            [ 2]  530 	addw	sp, #1
      008EED 4D               [ 1]  531 	tnz	a
      008EEE 27 F6            [ 1]  532 	jreq	00113$
                                    533 ;	Source/Device/Src/nixie.c: 191: tmp1=(uint8_t)(tube1>>5);
      008EF0 1E 0A            [ 2]  534 	ldw	x, (0x0a, sp)
      008EF2 A6 20            [ 1]  535 	ld	a, #0x20
      008EF4 62               [ 2]  536 	div	x, a
      008EF5 41               [ 1]  537 	exg	a, xl
      008EF6 6B 12            [ 1]  538 	ld	(0x12, sp), a
      008EF8 41               [ 1]  539 	exg	a, xl
                                    540 ;	Source/Device/Src/nixie.c: 192: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008EF9 16 0A            [ 2]  541 	ldw	y, (0x0a, sp)
      008EFB 5F               [ 1]  542 	clrw	x
      008EFC 90 9F            [ 1]  543 	ld	a, yl
      008EFE A4 10            [ 1]  544 	and	a, #0x10
      008F00 97               [ 1]  545 	ld	xl, a
      008F01 A6 10            [ 1]  546 	ld	a, #0x10
      008F03 62               [ 2]  547 	div	x, a
      008F04 9F               [ 1]  548 	ld	a, xl
      008F05 4E               [ 1]  549 	swap	a
      008F06 A4 F0            [ 1]  550 	and	a, #0xf0
      008F08 48               [ 1]  551 	sll	a
      008F09 48               [ 1]  552 	sll	a
      008F0A 48               [ 1]  553 	sll	a
                                    554 ;	Source/Device/Src/nixie.c: 193: tmp1=tmp1|tmp2;
      008F0B 1A 12            [ 1]  555 	or	a, (0x12, sp)
                                    556 ;	Source/Device/Src/nixie.c: 194: SPI_SendData(tmp1);
      008F0D 88               [ 1]  557 	push	a
      008F0E CD 84 34         [ 4]  558 	call	_SPI_SendData
      008F11 84               [ 1]  559 	pop	a
                                    560 ;	Source/Device/Src/nixie.c: 196: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008F12                        561 00116$:
      008F12 4B 02            [ 1]  562 	push	#0x02
      008F14 CD 84 3B         [ 4]  563 	call	_SPI_GetFlagStatus
      008F17 5B 01            [ 2]  564 	addw	sp, #1
      008F19 4D               [ 1]  565 	tnz	a
      008F1A 27 F6            [ 1]  566 	jreq	00116$
                                    567 ;	Source/Device/Src/nixie.c: 198: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008F1C 4B 80            [ 1]  568 	push	#0x80
      008F1E 4B 0A            [ 1]  569 	push	#0x0a
      008F20 4B 50            [ 1]  570 	push	#0x50
      008F22 CD 82 A4         [ 4]  571 	call	_GPIO_WriteHigh
                                    572 ;	Source/Device/Src/nixie.c: 199: }
      008F25 5B 15            [ 2]  573 	addw	sp, #21
      008F27 81               [ 4]  574 	ret
                                    575 	.area CODE
                                    576 	.area CONST
                                    577 	.area INITIALIZER
      008096                        578 __xinit__tube_state:
      008096 00                     579 	.db #0x00	; 0
                                    580 	.area CABS (ABS)
