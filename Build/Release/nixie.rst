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
                                     21 	.globl _aaaa
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
      000021                         33 _aaaa::
      000021                         34 	.ds 2
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
                                     64 ;	Source/Device/Src/nixie.c: 48: void delay(void)
                                     65 ;	-----------------------------------------
                                     66 ;	 function delay
                                     67 ;	-----------------------------------------
      0087B2                         68 _delay:
                                     69 ;	Source/Device/Src/nixie.c: 57: for (int i = 0; i < 300; i++);//这个比较合适
      0087B2 5F               [ 1]   70 	clrw	x
      0087B3                         71 00103$:
      0087B3 A3 01 2C         [ 2]   72 	cpw	x, #0x012c
      0087B6 2F 01            [ 1]   73 	jrslt	00118$
      0087B8 81               [ 4]   74 	ret
      0087B9                         75 00118$:
      0087B9 5C               [ 1]   76 	incw	x
      0087BA 20 F7            [ 2]   77 	jra	00103$
                                     78 ;	Source/Device/Src/nixie.c: 58: }
      0087BC 81               [ 4]   79 	ret
                                     80 ;	Source/Device/Src/nixie.c: 63: void NIXIE_Init(void)
                                     81 ;	-----------------------------------------
                                     82 ;	 function NIXIE_Init
                                     83 ;	-----------------------------------------
      0087BD                         84 _NIXIE_Init:
                                     85 ;	Source/Device/Src/nixie.c: 65: GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_LOW_FAST);//PC5 SHCP 复用功能
      0087BD 4B E0            [ 1]   86 	push	#0xe0
      0087BF 4B 20            [ 1]   87 	push	#0x20
      0087C1 4B 0A            [ 1]   88 	push	#0x0a
      0087C3 4B 50            [ 1]   89 	push	#0x50
      0087C5 CD 80 C8         [ 4]   90 	call	_GPIO_Init
      0087C8 5B 04            [ 2]   91 	addw	sp, #4
                                     92 ;	Source/Device/Src/nixie.c: 66: GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_LOW_FAST);//PC6 DATA 复用功能
      0087CA 4B E0            [ 1]   93 	push	#0xe0
      0087CC 4B 40            [ 1]   94 	push	#0x40
      0087CE 4B 0A            [ 1]   95 	push	#0x0a
      0087D0 4B 50            [ 1]   96 	push	#0x50
      0087D2 CD 80 C8         [ 4]   97 	call	_GPIO_Init
      0087D5 5B 04            [ 2]   98 	addw	sp, #4
                                     99 ;	Source/Device/Src/nixie.c: 67: GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);//PC7 STCP 普通IO口
      0087D7 4B E0            [ 1]  100 	push	#0xe0
      0087D9 4B 80            [ 1]  101 	push	#0x80
      0087DB 4B 0A            [ 1]  102 	push	#0x0a
      0087DD 4B 50            [ 1]  103 	push	#0x50
      0087DF CD 80 C8         [ 4]  104 	call	_GPIO_Init
      0087E2 5B 04            [ 2]  105 	addw	sp, #4
                                    106 ;	Source/Device/Src/nixie.c: 68: SPI_DeInit();
      0087E4 CD 81 D9         [ 4]  107 	call	_SPI_DeInit
                                    108 ;	Source/Device/Src/nixie.c: 70: SPI_Init(SPI_FIRSTBIT_LSB,
      0087E7 4B 07            [ 1]  109 	push	#0x07
      0087E9 4B 02            [ 1]  110 	push	#0x02
      0087EB 4B C0            [ 1]  111 	push	#0xc0
      0087ED 4B 00            [ 1]  112 	push	#0x00
      0087EF 4B 00            [ 1]  113 	push	#0x00
      0087F1 4B 04            [ 1]  114 	push	#0x04
      0087F3 4B 00            [ 1]  115 	push	#0x00
      0087F5 4B 80            [ 1]  116 	push	#0x80
      0087F7 CD 81 EE         [ 4]  117 	call	_SPI_Init
      0087FA 5B 08            [ 2]  118 	addw	sp, #8
                                    119 ;	Source/Device/Src/nixie.c: 78: SPI_Cmd(ENABLE);
      0087FC 4B 01            [ 1]  120 	push	#0x01
      0087FE CD 82 2C         [ 4]  121 	call	_SPI_Cmd
      008801 84               [ 1]  122 	pop	a
                                    123 ;	Source/Device/Src/nixie.c: 79: }
      008802 81               [ 4]  124 	ret
                                    125 ;	Source/Device/Src/nixie.c: 89: uint16_t NIXIE_DisplayChar(uint8_t tubeNum,char* character,FunctionalState tubeState)
                                    126 ;	-----------------------------------------
                                    127 ;	 function NIXIE_DisplayChar
                                    128 ;	-----------------------------------------
      008803                        129 _NIXIE_DisplayChar:
      008803 52 05            [ 2]  130 	sub	sp, #5
                                    131 ;	Source/Device/Src/nixie.c: 91: uint16_t tmp=0;
      008805 5F               [ 1]  132 	clrw	x
      008806 1F 03            [ 2]  133 	ldw	(0x03, sp), x
                                    134 ;	Source/Device/Src/nixie.c: 94: if(strchr(character,'.')!=NULL)
      008808 4B 2E            [ 1]  135 	push	#0x2e
      00880A 4B 00            [ 1]  136 	push	#0x00
      00880C 1E 0B            [ 2]  137 	ldw	x, (0x0b, sp)
      00880E 89               [ 2]  138 	pushw	x
      00880F CD 8E 18         [ 4]  139 	call	_strchr
      008812 5B 04            [ 2]  140 	addw	sp, #4
      008814 5D               [ 2]  141 	tnzw	x
      008815 27 05            [ 1]  142 	jreq	00118$
                                    143 ;	Source/Device/Src/nixie.c: 95: tmp|=1<<11;
      008817 AE 08 00         [ 2]  144 	ldw	x, #0x0800
      00881A 1F 03            [ 2]  145 	ldw	(0x03, sp), x
                                    146 ;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
      00881C                        147 00118$:
      00881C 0F 05            [ 1]  148 	clr	(0x05, sp)
      00881E                        149 00111$:
      00881E 7B 05            [ 1]  150 	ld	a, (0x05, sp)
      008820 A1 09            [ 1]  151 	cp	a, #0x09
      008822 24 2E            [ 1]  152 	jrnc	00105$
                                    153 ;	Source/Device/Src/nixie.c: 98: if(strchr(character,'1'+i)!=NULL)
      008824 7B 05            [ 1]  154 	ld	a, (0x05, sp)
      008826 5F               [ 1]  155 	clrw	x
      008827 97               [ 1]  156 	ld	xl, a
      008828 1C 00 31         [ 2]  157 	addw	x, #0x0031
      00882B 89               [ 2]  158 	pushw	x
      00882C 1E 0B            [ 2]  159 	ldw	x, (0x0b, sp)
      00882E 89               [ 2]  160 	pushw	x
      00882F CD 8E 18         [ 4]  161 	call	_strchr
      008832 5B 04            [ 2]  162 	addw	sp, #4
      008834 1F 01            [ 2]  163 	ldw	(0x01, sp), x
      008836 27 16            [ 1]  164 	jreq	00112$
                                    165 ;	Source/Device/Src/nixie.c: 99: tmp|=1<<10-i;
      008838 A6 0A            [ 1]  166 	ld	a, #0x0a
      00883A 10 05            [ 1]  167 	sub	a, (0x05, sp)
      00883C 5F               [ 1]  168 	clrw	x
      00883D 5C               [ 1]  169 	incw	x
      00883E 4D               [ 1]  170 	tnz	a
      00883F 27 04            [ 1]  171 	jreq	00150$
      008841                        172 00149$:
      008841 58               [ 2]  173 	sllw	x
      008842 4A               [ 1]  174 	dec	a
      008843 26 FC            [ 1]  175 	jrne	00149$
      008845                        176 00150$:
      008845 9F               [ 1]  177 	ld	a, xl
      008846 1A 04            [ 1]  178 	or	a, (0x04, sp)
      008848 02               [ 1]  179 	rlwa	x
      008849 1A 03            [ 1]  180 	or	a, (0x03, sp)
      00884B 95               [ 1]  181 	ld	xh, a
      00884C 1F 03            [ 2]  182 	ldw	(0x03, sp), x
      00884E                        183 00112$:
                                    184 ;	Source/Device/Src/nixie.c: 96: for(uint8_t i=0;i<9;++i)
      00884E 0C 05            [ 1]  185 	inc	(0x05, sp)
      008850 20 CC            [ 2]  186 	jra	00111$
      008852                        187 00105$:
                                    188 ;	Source/Device/Src/nixie.c: 101: if(strchr(character,'0')!=NULL)
      008852 4B 30            [ 1]  189 	push	#0x30
      008854 4B 00            [ 1]  190 	push	#0x00
      008856 1E 0B            [ 2]  191 	ldw	x, (0x0b, sp)
      008858 89               [ 2]  192 	pushw	x
      008859 CD 8E 18         [ 4]  193 	call	_strchr
      00885C 5B 04            [ 2]  194 	addw	sp, #4
      00885E 5D               [ 2]  195 	tnzw	x
      00885F 27 0A            [ 1]  196 	jreq	00107$
                                    197 ;	Source/Device/Src/nixie.c: 102: tmp|=1<<1;
      008861 7B 04            [ 1]  198 	ld	a, (0x04, sp)
      008863 AA 02            [ 1]  199 	or	a, #0x02
      008865 97               [ 1]  200 	ld	xl, a
      008866 7B 03            [ 1]  201 	ld	a, (0x03, sp)
      008868 95               [ 1]  202 	ld	xh, a
      008869 1F 03            [ 2]  203 	ldw	(0x03, sp), x
      00886B                        204 00107$:
                                    205 ;	Source/Device/Src/nixie.c: 103: if(tubeState==ENABLE)
      00886B 7B 0B            [ 1]  206 	ld	a, (0x0b, sp)
      00886D 4A               [ 1]  207 	dec	a
      00886E 26 07            [ 1]  208 	jrne	00109$
                                    209 ;	Source/Device/Src/nixie.c: 104: tmp|=1<<0;
      008870 1E 03            [ 2]  210 	ldw	x, (0x03, sp)
      008872 54               [ 2]  211 	srlw	x
      008873 99               [ 1]  212 	scf
      008874 59               [ 2]  213 	rlcw	x
      008875 1F 03            [ 2]  214 	ldw	(0x03, sp), x
      008877                        215 00109$:
                                    216 ;	Source/Device/Src/nixie.c: 106: output=(tmp&0xAAA)>>1;
      008877 1E 03            [ 2]  217 	ldw	x, (0x03, sp)
      008879 9F               [ 1]  218 	ld	a, xl
      00887A A4 AA            [ 1]  219 	and	a, #0xaa
      00887C 90 97            [ 1]  220 	ld	yl, a
      00887E 9E               [ 1]  221 	ld	a, xh
      00887F A4 0A            [ 1]  222 	and	a, #0x0a
      008881 90 95            [ 1]  223 	ld	yh, a
      008883 90 54            [ 2]  224 	srlw	y
                                    225 ;	Source/Device/Src/nixie.c: 107: output|=(tmp&0x555)<<1;
      008885 9F               [ 1]  226 	ld	a, xl
      008886 A4 55            [ 1]  227 	and	a, #0x55
      008888 02               [ 1]  228 	rlwa	x
      008889 A4 05            [ 1]  229 	and	a, #0x05
      00888B 95               [ 1]  230 	ld	xh, a
      00888C 58               [ 2]  231 	sllw	x
      00888D 17 04            [ 2]  232 	ldw	(0x04, sp), y
      00888F 9F               [ 1]  233 	ld	a, xl
      008890 1A 05            [ 1]  234 	or	a, (0x05, sp)
      008892 02               [ 1]  235 	rlwa	x
      008893 1A 04            [ 1]  236 	or	a, (0x04, sp)
                                    237 ;	Source/Device/Src/nixie.c: 109: return output;
      008895 95               [ 1]  238 	ld	xh, a
                                    239 ;	Source/Device/Src/nixie.c: 110: }
      008896 5B 05            [ 2]  240 	addw	sp, #5
      008898 81               [ 4]  241 	ret
                                    242 ;	Source/Device/Src/nixie.c: 120: void NIXIE_DisplayTime(uint8_t hour,uint8_t min)
                                    243 ;	-----------------------------------------
                                    244 ;	 function NIXIE_DisplayTime
                                    245 ;	-----------------------------------------
      008899                        246 _NIXIE_DisplayTime:
      008899 52 11            [ 2]  247 	sub	sp, #17
                                    248 ;	Source/Device/Src/nixie.c: 124: char tube1s[]="0",tube2s[]="0",tube3s[]="0",tube4s[]="0";
      00889B A6 30            [ 1]  249 	ld	a, #0x30
      00889D 6B 01            [ 1]  250 	ld	(0x01, sp), a
      00889F 96               [ 1]  251 	ldw	x, sp
      0088A0 6F 02            [ 1]  252 	clr	(2, x)
      0088A2 A6 30            [ 1]  253 	ld	a, #0x30
      0088A4 6B 03            [ 1]  254 	ld	(0x03, sp), a
      0088A6 96               [ 1]  255 	ldw	x, sp
      0088A7 6F 04            [ 1]  256 	clr	(4, x)
      0088A9 A6 30            [ 1]  257 	ld	a, #0x30
      0088AB 6B 05            [ 1]  258 	ld	(0x05, sp), a
      0088AD 96               [ 1]  259 	ldw	x, sp
      0088AE 6F 06            [ 1]  260 	clr	(6, x)
      0088B0 A6 30            [ 1]  261 	ld	a, #0x30
      0088B2 6B 07            [ 1]  262 	ld	(0x07, sp), a
      0088B4 96               [ 1]  263 	ldw	x, sp
      0088B5 6F 08            [ 1]  264 	clr	(8, x)
                                    265 ;	Source/Device/Src/nixie.c: 126: uint8_t tmp=aaaa/1000;
      0088B7 4B E8            [ 1]  266 	push	#0xe8
      0088B9 4B 03            [ 1]  267 	push	#0x03
      0088BB CE 00 21         [ 2]  268 	ldw	x, _aaaa+0
      0088BE 89               [ 2]  269 	pushw	x
      0088BF CD 8E D0         [ 4]  270 	call	__divsint
      0088C2 5B 04            [ 2]  271 	addw	sp, #4
                                    272 ;	Source/Device/Src/nixie.c: 127: tube1s[0]+=tmp;
      0088C4 7B 01            [ 1]  273 	ld	a, (0x01, sp)
      0088C6 89               [ 2]  274 	pushw	x
      0088C7 1B 02            [ 1]  275 	add	a, (2, sp)
      0088C9 85               [ 2]  276 	popw	x
      0088CA 6B 01            [ 1]  277 	ld	(0x01, sp), a
                                    278 ;	Source/Device/Src/nixie.c: 129: tmp=aaaa%1000/100;
      0088CC 4B E8            [ 1]  279 	push	#0xe8
      0088CE 4B 03            [ 1]  280 	push	#0x03
      0088D0 CE 00 21         [ 2]  281 	ldw	x, _aaaa+0
      0088D3 89               [ 2]  282 	pushw	x
      0088D4 CD 8E 3E         [ 4]  283 	call	__modsint
      0088D7 5B 04            [ 2]  284 	addw	sp, #4
      0088D9 4B 64            [ 1]  285 	push	#0x64
      0088DB 4B 00            [ 1]  286 	push	#0x00
      0088DD 89               [ 2]  287 	pushw	x
      0088DE CD 8E D0         [ 4]  288 	call	__divsint
      0088E1 5B 04            [ 2]  289 	addw	sp, #4
                                    290 ;	Source/Device/Src/nixie.c: 130: tube2s[0]+=tmp;
      0088E3 7B 03            [ 1]  291 	ld	a, (0x03, sp)
      0088E5 89               [ 2]  292 	pushw	x
      0088E6 1B 02            [ 1]  293 	add	a, (2, sp)
      0088E8 85               [ 2]  294 	popw	x
      0088E9 6B 03            [ 1]  295 	ld	(0x03, sp), a
                                    296 ;	Source/Device/Src/nixie.c: 132: tmp=aaaa%100/10;
      0088EB 4B 64            [ 1]  297 	push	#0x64
      0088ED 4B 00            [ 1]  298 	push	#0x00
      0088EF CE 00 21         [ 2]  299 	ldw	x, _aaaa+0
      0088F2 89               [ 2]  300 	pushw	x
      0088F3 CD 8E 3E         [ 4]  301 	call	__modsint
      0088F6 5B 04            [ 2]  302 	addw	sp, #4
      0088F8 4B 0A            [ 1]  303 	push	#0x0a
      0088FA 4B 00            [ 1]  304 	push	#0x00
      0088FC 89               [ 2]  305 	pushw	x
      0088FD CD 8E D0         [ 4]  306 	call	__divsint
      008900 5B 04            [ 2]  307 	addw	sp, #4
                                    308 ;	Source/Device/Src/nixie.c: 133: tube3s[0]+=tmp;
      008902 7B 05            [ 1]  309 	ld	a, (0x05, sp)
      008904 89               [ 2]  310 	pushw	x
      008905 1B 02            [ 1]  311 	add	a, (2, sp)
      008907 85               [ 2]  312 	popw	x
      008908 6B 05            [ 1]  313 	ld	(0x05, sp), a
                                    314 ;	Source/Device/Src/nixie.c: 135: tmp=aaaa%10;
      00890A 4B 0A            [ 1]  315 	push	#0x0a
      00890C 4B 00            [ 1]  316 	push	#0x00
      00890E CE 00 21         [ 2]  317 	ldw	x, _aaaa+0
      008911 89               [ 2]  318 	pushw	x
      008912 CD 8E 3E         [ 4]  319 	call	__modsint
      008915 5B 04            [ 2]  320 	addw	sp, #4
                                    321 ;	Source/Device/Src/nixie.c: 136: tube4s[0]+=tmp;
      008917 7B 07            [ 1]  322 	ld	a, (0x07, sp)
      008919 89               [ 2]  323 	pushw	x
      00891A 1B 02            [ 1]  324 	add	a, (2, sp)
      00891C 85               [ 2]  325 	popw	x
      00891D 6B 07            [ 1]  326 	ld	(0x07, sp), a
                                    327 ;	Source/Device/Src/nixie.c: 138: tube1=NIXIE_DisplayChar(1,tube1s,ENABLE);
      00891F 4B 01            [ 1]  328 	push	#0x01
      008921 96               [ 1]  329 	ldw	x, sp
      008922 5C               [ 1]  330 	incw	x
      008923 5C               [ 1]  331 	incw	x
      008924 89               [ 2]  332 	pushw	x
      008925 4B 01            [ 1]  333 	push	#0x01
      008927 CD 88 03         [ 4]  334 	call	_NIXIE_DisplayChar
      00892A 5B 04            [ 2]  335 	addw	sp, #4
      00892C 1F 09            [ 2]  336 	ldw	(0x09, sp), x
                                    337 ;	Source/Device/Src/nixie.c: 139: tube2=NIXIE_DisplayChar(2,tube2s,ENABLE);
      00892E 4B 01            [ 1]  338 	push	#0x01
      008930 96               [ 1]  339 	ldw	x, sp
      008931 1C 00 04         [ 2]  340 	addw	x, #4
      008934 89               [ 2]  341 	pushw	x
      008935 4B 02            [ 1]  342 	push	#0x02
      008937 CD 88 03         [ 4]  343 	call	_NIXIE_DisplayChar
      00893A 5B 04            [ 2]  344 	addw	sp, #4
      00893C 1F 0B            [ 2]  345 	ldw	(0x0b, sp), x
                                    346 ;	Source/Device/Src/nixie.c: 140: tube3=NIXIE_DisplayChar(3,tube3s,ENABLE);
      00893E 4B 01            [ 1]  347 	push	#0x01
      008940 96               [ 1]  348 	ldw	x, sp
      008941 1C 00 06         [ 2]  349 	addw	x, #6
      008944 89               [ 2]  350 	pushw	x
      008945 4B 03            [ 1]  351 	push	#0x03
      008947 CD 88 03         [ 4]  352 	call	_NIXIE_DisplayChar
      00894A 5B 04            [ 2]  353 	addw	sp, #4
      00894C 1F 0D            [ 2]  354 	ldw	(0x0d, sp), x
                                    355 ;	Source/Device/Src/nixie.c: 141: tube4=NIXIE_DisplayChar(4,tube4s,ENABLE);
      00894E 4B 01            [ 1]  356 	push	#0x01
      008950 96               [ 1]  357 	ldw	x, sp
      008951 1C 00 08         [ 2]  358 	addw	x, #8
      008954 89               [ 2]  359 	pushw	x
      008955 4B 04            [ 1]  360 	push	#0x04
      008957 CD 88 03         [ 4]  361 	call	_NIXIE_DisplayChar
      00895A 5B 04            [ 2]  362 	addw	sp, #4
      00895C 1F 0F            [ 2]  363 	ldw	(0x0f, sp), x
                                    364 ;	Source/Device/Src/nixie.c: 144: ++aaaa;
      00895E CE 00 21         [ 2]  365 	ldw	x, _aaaa+0
      008961 5C               [ 1]  366 	incw	x
                                    367 ;	Source/Device/Src/nixie.c: 145: if(aaaa==9999)
      008962 CF 00 21         [ 2]  368 	ldw	_aaaa+0, x
      008965 A3 27 0F         [ 2]  369 	cpw	x, #0x270f
      008968 26 04            [ 1]  370 	jrne	00102$
                                    371 ;	Source/Device/Src/nixie.c: 146: aaaa=0;
      00896A 5F               [ 1]  372 	clrw	x
      00896B CF 00 21         [ 2]  373 	ldw	_aaaa+0, x
      00896E                        374 00102$:
                                    375 ;	Source/Device/Src/nixie.c: 157: GPIO_WriteLow(GPIOC,GPIO_PIN_7);//595的输出线拉低
      00896E 4B 80            [ 1]  376 	push	#0x80
      008970 4B 0A            [ 1]  377 	push	#0x0a
      008972 4B 50            [ 1]  378 	push	#0x50
      008974 CD 81 44         [ 4]  379 	call	_GPIO_WriteLow
      008977 5B 03            [ 2]  380 	addw	sp, #3
                                    381 ;	Source/Device/Src/nixie.c: 162: tmp1=(uint8_t)((tube4&0b11111110)>>1);
      008979 1E 0F            [ 2]  382 	ldw	x, (0x0f, sp)
      00897B 54               [ 2]  383 	srlw	x
      00897C 58               [ 2]  384 	sllw	x
      00897D 4F               [ 1]  385 	clr	a
      00897E 95               [ 1]  386 	ld	xh, a
      00897F 54               [ 2]  387 	srlw	x
                                    388 ;	Source/Device/Src/nixie.c: 163: tmp2=(uint8_t)((tube4&0b00000001)<<7);
      008980 7B 10            [ 1]  389 	ld	a, (0x10, sp)
      008982 A4 01            [ 1]  390 	and	a, #0x01
      008984 4E               [ 1]  391 	swap	a
      008985 A4 F0            [ 1]  392 	and	a, #0xf0
      008987 48               [ 1]  393 	sll	a
      008988 48               [ 1]  394 	sll	a
      008989 48               [ 1]  395 	sll	a
                                    396 ;	Source/Device/Src/nixie.c: 164: tmp1=tmp1|tmp2;
      00898A 89               [ 2]  397 	pushw	x
      00898B 1A 02            [ 1]  398 	or	a, (2, sp)
      00898D 85               [ 2]  399 	popw	x
                                    400 ;	Source/Device/Src/nixie.c: 165: SPI_SendData(tmp1);
      00898E 88               [ 1]  401 	push	a
      00898F CD 82 3F         [ 4]  402 	call	_SPI_SendData
      008992 84               [ 1]  403 	pop	a
                                    404 ;	Source/Device/Src/nixie.c: 167: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008993                        405 00103$:
      008993 4B 02            [ 1]  406 	push	#0x02
      008995 CD 82 46         [ 4]  407 	call	_SPI_GetFlagStatus
      008998 5B 01            [ 2]  408 	addw	sp, #1
      00899A 4D               [ 1]  409 	tnz	a
      00899B 27 F6            [ 1]  410 	jreq	00103$
                                    411 ;	Source/Device/Src/nixie.c: 169: tmp1=(uint8_t)((tube3&0b1111)<<4);
      00899D 7B 0E            [ 1]  412 	ld	a, (0x0e, sp)
      00899F A4 0F            [ 1]  413 	and	a, #0x0f
      0089A1 4E               [ 1]  414 	swap	a
      0089A2 A4 F0            [ 1]  415 	and	a, #0xf0
      0089A4 6B 11            [ 1]  416 	ld	(0x11, sp), a
                                    417 ;	Source/Device/Src/nixie.c: 170: tmp2=(uint8_t)(tube4>>8);
      0089A6 7B 0F            [ 1]  418 	ld	a, (0x0f, sp)
      0089A8 5F               [ 1]  419 	clrw	x
                                    420 ;	Source/Device/Src/nixie.c: 171: tmp1=tmp1|tmp2;
      0089A9 1A 11            [ 1]  421 	or	a, (0x11, sp)
                                    422 ;	Source/Device/Src/nixie.c: 172: tmp2=(tmp1&0b00000001)<<7;
      0089AB 97               [ 1]  423 	ld	xl, a
      0089AC A4 01            [ 1]  424 	and	a, #0x01
      0089AE 4E               [ 1]  425 	swap	a
      0089AF A4 F0            [ 1]  426 	and	a, #0xf0
      0089B1 48               [ 1]  427 	sll	a
      0089B2 48               [ 1]  428 	sll	a
      0089B3 48               [ 1]  429 	sll	a
      0089B4 6B 11            [ 1]  430 	ld	(0x11, sp), a
                                    431 ;	Source/Device/Src/nixie.c: 173: tmp1=(tmp1>>1)|tmp2;
      0089B6 9F               [ 1]  432 	ld	a, xl
      0089B7 44               [ 1]  433 	srl	a
      0089B8 1A 11            [ 1]  434 	or	a, (0x11, sp)
                                    435 ;	Source/Device/Src/nixie.c: 174: SPI_SendData(tmp1);
      0089BA 88               [ 1]  436 	push	a
      0089BB CD 82 3F         [ 4]  437 	call	_SPI_SendData
      0089BE 84               [ 1]  438 	pop	a
                                    439 ;	Source/Device/Src/nixie.c: 176: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      0089BF                        440 00106$:
      0089BF 4B 02            [ 1]  441 	push	#0x02
      0089C1 CD 82 46         [ 4]  442 	call	_SPI_GetFlagStatus
      0089C4 5B 01            [ 2]  443 	addw	sp, #1
      0089C6 4D               [ 1]  444 	tnz	a
      0089C7 27 F6            [ 1]  445 	jreq	00106$
                                    446 ;	Source/Device/Src/nixie.c: 178: tmp1=(uint8_t)(tube3>>5);
      0089C9 1E 0D            [ 2]  447 	ldw	x, (0x0d, sp)
      0089CB A6 20            [ 1]  448 	ld	a, #0x20
      0089CD 62               [ 2]  449 	div	x, a
      0089CE 41               [ 1]  450 	exg	a, xl
      0089CF 6B 11            [ 1]  451 	ld	(0x11, sp), a
      0089D1 41               [ 1]  452 	exg	a, xl
                                    453 ;	Source/Device/Src/nixie.c: 179: tmp2=(uint8_t)(((tube3&0b10000)>>4)<<7);
      0089D2 16 0D            [ 2]  454 	ldw	y, (0x0d, sp)
      0089D4 5F               [ 1]  455 	clrw	x
      0089D5 90 9F            [ 1]  456 	ld	a, yl
      0089D7 A4 10            [ 1]  457 	and	a, #0x10
      0089D9 97               [ 1]  458 	ld	xl, a
      0089DA A6 10            [ 1]  459 	ld	a, #0x10
      0089DC 62               [ 2]  460 	div	x, a
      0089DD 9F               [ 1]  461 	ld	a, xl
      0089DE 4E               [ 1]  462 	swap	a
      0089DF A4 F0            [ 1]  463 	and	a, #0xf0
      0089E1 48               [ 1]  464 	sll	a
      0089E2 48               [ 1]  465 	sll	a
      0089E3 48               [ 1]  466 	sll	a
                                    467 ;	Source/Device/Src/nixie.c: 180: tmp1=tmp1|tmp2;
      0089E4 1A 11            [ 1]  468 	or	a, (0x11, sp)
                                    469 ;	Source/Device/Src/nixie.c: 181: SPI_SendData(tmp1);
      0089E6 88               [ 1]  470 	push	a
      0089E7 CD 82 3F         [ 4]  471 	call	_SPI_SendData
      0089EA 84               [ 1]  472 	pop	a
                                    473 ;	Source/Device/Src/nixie.c: 183: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      0089EB                        474 00109$:
      0089EB 4B 02            [ 1]  475 	push	#0x02
      0089ED CD 82 46         [ 4]  476 	call	_SPI_GetFlagStatus
      0089F0 5B 01            [ 2]  477 	addw	sp, #1
      0089F2 4D               [ 1]  478 	tnz	a
      0089F3 27 F6            [ 1]  479 	jreq	00109$
                                    480 ;	Source/Device/Src/nixie.c: 186: tmp1=(uint8_t)((tube2&0b11111110)>>1);
      0089F5 1E 0B            [ 2]  481 	ldw	x, (0x0b, sp)
      0089F7 54               [ 2]  482 	srlw	x
      0089F8 58               [ 2]  483 	sllw	x
      0089F9 4F               [ 1]  484 	clr	a
      0089FA 95               [ 1]  485 	ld	xh, a
      0089FB 54               [ 2]  486 	srlw	x
                                    487 ;	Source/Device/Src/nixie.c: 187: tmp2=(uint8_t)((tube2&0b00000001)<<7);
      0089FC 7B 0C            [ 1]  488 	ld	a, (0x0c, sp)
      0089FE A4 01            [ 1]  489 	and	a, #0x01
      008A00 4E               [ 1]  490 	swap	a
      008A01 A4 F0            [ 1]  491 	and	a, #0xf0
      008A03 48               [ 1]  492 	sll	a
      008A04 48               [ 1]  493 	sll	a
      008A05 48               [ 1]  494 	sll	a
                                    495 ;	Source/Device/Src/nixie.c: 188: tmp1=tmp1|tmp2;
      008A06 89               [ 2]  496 	pushw	x
      008A07 1A 02            [ 1]  497 	or	a, (2, sp)
      008A09 85               [ 2]  498 	popw	x
                                    499 ;	Source/Device/Src/nixie.c: 189: SPI_SendData(tmp1);
      008A0A 88               [ 1]  500 	push	a
      008A0B CD 82 3F         [ 4]  501 	call	_SPI_SendData
      008A0E 84               [ 1]  502 	pop	a
                                    503 ;	Source/Device/Src/nixie.c: 191: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A0F                        504 00112$:
      008A0F 4B 02            [ 1]  505 	push	#0x02
      008A11 CD 82 46         [ 4]  506 	call	_SPI_GetFlagStatus
      008A14 5B 01            [ 2]  507 	addw	sp, #1
      008A16 4D               [ 1]  508 	tnz	a
      008A17 27 F6            [ 1]  509 	jreq	00112$
                                    510 ;	Source/Device/Src/nixie.c: 193: tmp1=(uint8_t)((tube1&0b1111)<<4);
      008A19 7B 0A            [ 1]  511 	ld	a, (0x0a, sp)
      008A1B A4 0F            [ 1]  512 	and	a, #0x0f
      008A1D 4E               [ 1]  513 	swap	a
      008A1E A4 F0            [ 1]  514 	and	a, #0xf0
      008A20 6B 11            [ 1]  515 	ld	(0x11, sp), a
                                    516 ;	Source/Device/Src/nixie.c: 194: tmp2=(uint8_t)(tube2>>8);
      008A22 7B 0B            [ 1]  517 	ld	a, (0x0b, sp)
      008A24 5F               [ 1]  518 	clrw	x
                                    519 ;	Source/Device/Src/nixie.c: 195: tmp1=tmp1|tmp2;
      008A25 1A 11            [ 1]  520 	or	a, (0x11, sp)
                                    521 ;	Source/Device/Src/nixie.c: 196: tmp2=(tmp1&0b00000001)<<7;
      008A27 97               [ 1]  522 	ld	xl, a
      008A28 A4 01            [ 1]  523 	and	a, #0x01
      008A2A 4E               [ 1]  524 	swap	a
      008A2B A4 F0            [ 1]  525 	and	a, #0xf0
      008A2D 48               [ 1]  526 	sll	a
      008A2E 48               [ 1]  527 	sll	a
      008A2F 48               [ 1]  528 	sll	a
      008A30 6B 11            [ 1]  529 	ld	(0x11, sp), a
                                    530 ;	Source/Device/Src/nixie.c: 197: tmp1=(tmp1>>1)|tmp2;
      008A32 9F               [ 1]  531 	ld	a, xl
      008A33 44               [ 1]  532 	srl	a
      008A34 1A 11            [ 1]  533 	or	a, (0x11, sp)
                                    534 ;	Source/Device/Src/nixie.c: 198: SPI_SendData(tmp1);
      008A36 88               [ 1]  535 	push	a
      008A37 CD 82 3F         [ 4]  536 	call	_SPI_SendData
      008A3A 84               [ 1]  537 	pop	a
                                    538 ;	Source/Device/Src/nixie.c: 200: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A3B                        539 00115$:
      008A3B 4B 02            [ 1]  540 	push	#0x02
      008A3D CD 82 46         [ 4]  541 	call	_SPI_GetFlagStatus
      008A40 5B 01            [ 2]  542 	addw	sp, #1
      008A42 4D               [ 1]  543 	tnz	a
      008A43 27 F6            [ 1]  544 	jreq	00115$
                                    545 ;	Source/Device/Src/nixie.c: 202: tmp1=(uint8_t)(tube1>>5);
      008A45 1E 09            [ 2]  546 	ldw	x, (0x09, sp)
      008A47 A6 20            [ 1]  547 	ld	a, #0x20
      008A49 62               [ 2]  548 	div	x, a
      008A4A 41               [ 1]  549 	exg	a, xl
      008A4B 6B 11            [ 1]  550 	ld	(0x11, sp), a
      008A4D 41               [ 1]  551 	exg	a, xl
                                    552 ;	Source/Device/Src/nixie.c: 203: tmp2=(uint8_t)(((tube1&0b10000)>>4)<<7);
      008A4E 16 09            [ 2]  553 	ldw	y, (0x09, sp)
      008A50 5F               [ 1]  554 	clrw	x
      008A51 90 9F            [ 1]  555 	ld	a, yl
      008A53 A4 10            [ 1]  556 	and	a, #0x10
      008A55 97               [ 1]  557 	ld	xl, a
      008A56 A6 10            [ 1]  558 	ld	a, #0x10
      008A58 62               [ 2]  559 	div	x, a
      008A59 9F               [ 1]  560 	ld	a, xl
      008A5A 4E               [ 1]  561 	swap	a
      008A5B A4 F0            [ 1]  562 	and	a, #0xf0
      008A5D 48               [ 1]  563 	sll	a
      008A5E 48               [ 1]  564 	sll	a
      008A5F 48               [ 1]  565 	sll	a
                                    566 ;	Source/Device/Src/nixie.c: 204: tmp1=tmp1|tmp2;
      008A60 1A 11            [ 1]  567 	or	a, (0x11, sp)
                                    568 ;	Source/Device/Src/nixie.c: 205: SPI_SendData(tmp1);
      008A62 88               [ 1]  569 	push	a
      008A63 CD 82 3F         [ 4]  570 	call	_SPI_SendData
      008A66 84               [ 1]  571 	pop	a
                                    572 ;	Source/Device/Src/nixie.c: 207: while(SPI_GetFlagStatus(SPI_FLAG_TXE)==RESET);
      008A67                        573 00118$:
      008A67 4B 02            [ 1]  574 	push	#0x02
      008A69 CD 82 46         [ 4]  575 	call	_SPI_GetFlagStatus
      008A6C 5B 01            [ 2]  576 	addw	sp, #1
      008A6E 4D               [ 1]  577 	tnz	a
      008A6F 27 F6            [ 1]  578 	jreq	00118$
                                    579 ;	Source/Device/Src/nixie.c: 209: GPIO_WriteHigh(GPIOC,GPIO_PIN_7);//更新所有595输出
      008A71 4B 80            [ 1]  580 	push	#0x80
      008A73 4B 0A            [ 1]  581 	push	#0x0a
      008A75 4B 50            [ 1]  582 	push	#0x50
      008A77 CD 81 3D         [ 4]  583 	call	_GPIO_WriteHigh
                                    584 ;	Source/Device/Src/nixie.c: 210: }
      008A7A 5B 14            [ 2]  585 	addw	sp, #20
      008A7C 81               [ 4]  586 	ret
                                    587 	.area CODE
                                    588 	.area CONST
                                    589 	.area INITIALIZER
      008080                        590 __xinit__aaaa:
      008080 00 00                  591 	.dw #0x0000
                                    592 	.area CABS (ABS)
