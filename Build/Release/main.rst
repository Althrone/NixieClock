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
                                     11 	.globl _EXTI_PORTD_IRQHandler
                                     12 	.globl _EXTI_PORTC_IRQHandler
                                     13 	.globl _EXTI_PORTA_IRQHandler
                                     14 	.globl _TIM4_UPD_OVF_IRQHandler
                                     15 	.globl _main
                                     16 	.globl _DS3231_GetTime
                                     17 	.globl _DS3231_Init
                                     18 	.globl _NIXIE_DisplayTime
                                     19 	.globl _NIXIE_Init
                                     20 	.globl _GPS_Init
                                     21 	.globl _TIM4_ClearITPendingBit
                                     22 	.globl _TIM4_GetITStatus
                                     23 	.globl _TIM4_ARRPreloadConfig
                                     24 	.globl _TIM4_ITConfig
                                     25 	.globl _TIM4_Cmd
                                     26 	.globl _TIM4_TimeBaseInit
                                     27 	.globl _ITC_SetSoftwarePriority
                                     28 	.globl _GPIO_ReadInputPin
                                     29 	.globl _GPIO_Init
                                     30 	.globl _EXTI_SetExtIntSensitivity
                                     31 	.globl _CLK_ClockSwitchConfig
                                     32 	.globl _CLK_HSECmd
                                     33 	.globl _KEY_StateMachine_Enumeration
                                     34 	.globl _nixie_always_on
                                     35 	.globl _key_delay_2s
                                     36 	.globl _ir_double_click_delay
                                     37 	.globl _ir_delay
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
      000001                         42 _ir_delay::
      000001                         43 	.ds 2
      000003                         44 _ir_double_click_delay::
      000003                         45 	.ds 1
      000004                         46 _key_delay_2s::
      000004                         47 	.ds 2
                                     48 ;--------------------------------------------------------
                                     49 ; ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area INITIALIZED
      000026                         52 _nixie_always_on::
      000026                         53 	.ds 1
      000027                         54 _KEY_StateMachine_Enumeration::
      000027                         55 	.ds 1
                                     56 ;--------------------------------------------------------
                                     57 ; Stack segment in internal ram 
                                     58 ;--------------------------------------------------------
                                     59 	.area	SSEG
      FFFFFF                         60 __start__stack:
      FFFFFF                         61 	.ds	1
                                     62 
                                     63 ;--------------------------------------------------------
                                     64 ; absolute external ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area DABS (ABS)
                                     67 
                                     68 ; default segment ordering for linker
                                     69 	.area HOME
                                     70 	.area GSINIT
                                     71 	.area GSFINAL
                                     72 	.area CONST
                                     73 	.area INITIALIZER
                                     74 	.area CODE
                                     75 
                                     76 ;--------------------------------------------------------
                                     77 ; interrupt vector 
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME
      008000                         80 __interrupt_vect:
      008000 82 00 80 6B             81 	int s_GSINIT ; reset
      008004 82 00 00 00             82 	int 0x000000 ; trap
      008008 82 00 00 00             83 	int 0x000000 ; int0
      00800C 82 00 00 00             84 	int 0x000000 ; int1
      008010 82 00 00 00             85 	int 0x000000 ; int2
      008014 82 00 81 B0             86 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 00 00             87 	int 0x000000 ; int4
      00801C 82 00 81 B1             88 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 81 DD             89 	int _EXTI_PORTD_IRQHandler ; int6
      008024 82 00 00 00             90 	int 0x000000 ; int7
      008028 82 00 00 00             91 	int 0x000000 ; int8
      00802C 82 00 00 00             92 	int 0x000000 ; int9
      008030 82 00 00 00             93 	int 0x000000 ; int10
      008034 82 00 00 00             94 	int 0x000000 ; int11
      008038 82 00 00 00             95 	int 0x000000 ; int12
      00803C 82 00 00 00             96 	int 0x000000 ; int13
      008040 82 00 00 00             97 	int 0x000000 ; int14
      008044 82 00 00 00             98 	int 0x000000 ; int15
      008048 82 00 00 00             99 	int 0x000000 ; int16
      00804C 82 00 00 00            100 	int 0x000000 ; int17
      008050 82 00 93 26            101 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 00 00            102 	int 0x000000 ; int19
      008058 82 00 00 00            103 	int 0x000000 ; int20
      00805C 82 00 00 00            104 	int 0x000000 ; int21
      008060 82 00 00 00            105 	int 0x000000 ; int22
      008064 82 00 81 78            106 	int _TIM4_UPD_OVF_IRQHandler ; int23
                                    107 ;--------------------------------------------------------
                                    108 ; global & static initialisations
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area GSINIT
                                    112 	.area GSFINAL
                                    113 	.area GSINIT
      00806B                        114 __sdcc_gs_init_startup:
      00806B                        115 __sdcc_init_data:
                                    116 ; stm8_genXINIT() start
      00806B AE 00 25         [ 2]  117 	ldw x, #l_DATA
      00806E 27 07            [ 1]  118 	jreq	00002$
      008070                        119 00001$:
      008070 72 4F 00 00      [ 1]  120 	clr (s_DATA - 1, x)
      008074 5A               [ 2]  121 	decw x
      008075 26 F9            [ 1]  122 	jrne	00001$
      008077                        123 00002$:
      008077 AE 00 33         [ 2]  124 	ldw	x, #l_INITIALIZER
      00807A 27 09            [ 1]  125 	jreq	00004$
      00807C                        126 00003$:
      00807C D6 80 93         [ 1]  127 	ld	a, (s_INITIALIZER - 1, x)
      00807F D7 00 25         [ 1]  128 	ld	(s_INITIALIZED - 1, x), a
      008082 5A               [ 2]  129 	decw	x
      008083 26 F7            [ 1]  130 	jrne	00003$
      008085                        131 00004$:
                                    132 ; stm8_genXINIT() end
                                    133 	.area GSFINAL
      008085 CC 80 68         [ 2]  134 	jp	__sdcc_program_startup
                                    135 ;--------------------------------------------------------
                                    136 ; Home
                                    137 ;--------------------------------------------------------
                                    138 	.area HOME
                                    139 	.area HOME
      008068                        140 __sdcc_program_startup:
      008068 CC 80 C7         [ 2]  141 	jp	_main
                                    142 ;	return from main will return to caller
                                    143 ;--------------------------------------------------------
                                    144 ; code
                                    145 ;--------------------------------------------------------
                                    146 	.area CODE
                                    147 ;	Source/User/main.c: 32: int main(void)
                                    148 ;	-----------------------------------------
                                    149 ;	 function main
                                    150 ;	-----------------------------------------
      0080C7                        151 _main:
      0080C7 89               [ 2]  152 	pushw	x
                                    153 ;	Source/User/main.c: 35: CLK_HSECmd(ENABLE);
      0080C8 4B 01            [ 1]  154 	push	#0x01
      0080CA CD 82 A9         [ 4]  155 	call	_CLK_HSECmd
      0080CD 84               [ 1]  156 	pop	a
                                    157 ;	Source/User/main.c: 36: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz
      0080CE 4B 00            [ 1]  158 	push	#0x00
      0080D0 4B 00            [ 1]  159 	push	#0x00
      0080D2 4B B4            [ 1]  160 	push	#0xb4
      0080D4 4B 01            [ 1]  161 	push	#0x01
      0080D6 CD 82 BC         [ 4]  162 	call	_CLK_ClockSwitchConfig
      0080D9 5B 04            [ 2]  163 	addw	sp, #4
                                    164 ;	Source/User/main.c: 39: ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
      0080DB 4B 01            [ 1]  165 	push	#0x01
      0080DD 4B 06            [ 1]  166 	push	#0x06
      0080DF CD 88 F8         [ 4]  167 	call	_ITC_SetSoftwarePriority
      0080E2 85               [ 2]  168 	popw	x
                                    169 ;	Source/User/main.c: 40: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
      0080E3 4B 02            [ 1]  170 	push	#0x02
      0080E5 4B 03            [ 1]  171 	push	#0x03
      0080E7 CD 87 8A         [ 4]  172 	call	_EXTI_SetExtIntSensitivity
      0080EA 85               [ 2]  173 	popw	x
                                    174 ;	Source/User/main.c: 41: GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
      0080EB 4B 20            [ 1]  175 	push	#0x20
      0080ED 4B 04            [ 1]  176 	push	#0x04
      0080EF 4B 0F            [ 1]  177 	push	#0x0f
      0080F1 4B 50            [ 1]  178 	push	#0x50
      0080F3 CD 82 18         [ 4]  179 	call	_GPIO_Init
      0080F6 5B 04            [ 2]  180 	addw	sp, #4
                                    181 ;	Source/User/main.c: 44: GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
      0080F8 4B 60            [ 1]  182 	push	#0x60
      0080FA 4B 08            [ 1]  183 	push	#0x08
      0080FC 4B 0A            [ 1]  184 	push	#0x0a
      0080FE 4B 50            [ 1]  185 	push	#0x50
      008100 CD 82 18         [ 4]  186 	call	_GPIO_Init
      008103 5B 04            [ 2]  187 	addw	sp, #4
                                    188 ;	Source/User/main.c: 45: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
      008105 4B 02            [ 1]  189 	push	#0x02
      008107 4B 02            [ 1]  190 	push	#0x02
      008109 CD 87 8A         [ 4]  191 	call	_EXTI_SetExtIntSensitivity
      00810C 85               [ 2]  192 	popw	x
                                    193 ;	Source/User/main.c: 46: rim();
      00810D 9A               [ 1]  194 	rim
                                    195 ;	Source/User/main.c: 48: GPS_Init();//PD5 PD6
      00810E CD 91 91         [ 4]  196 	call	_GPS_Init
                                    197 ;	Source/User/main.c: 50: NIXIE_Init();//PC5 PC6 PC7
      008111 CD 8C 59         [ 4]  198 	call	_NIXIE_Init
                                    199 ;	Source/User/main.c: 51: ir_delay=DELAY_10S;
      008114 AE 09 C4         [ 2]  200 	ldw	x, #0x09c4
      008117 CF 00 01         [ 2]  201 	ldw	_ir_delay+0, x
                                    202 ;	Source/User/main.c: 53: DS3231_Init();
      00811A CD 8F 49         [ 4]  203 	call	_DS3231_Init
                                    204 ;	Source/User/main.c: 56: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
      00811D 4B FA            [ 1]  205 	push	#0xfa
      00811F 4B 07            [ 1]  206 	push	#0x07
      008121 CD 89 E1         [ 4]  207 	call	_TIM4_TimeBaseInit
      008124 85               [ 2]  208 	popw	x
                                    209 ;	Source/User/main.c: 57: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
      008125 4B 01            [ 1]  210 	push	#0x01
      008127 4B 01            [ 1]  211 	push	#0x01
      008129 CD 8A 01         [ 4]  212 	call	_TIM4_ITConfig
      00812C 85               [ 2]  213 	popw	x
                                    214 ;	Source/User/main.c: 58: TIM4_ARRPreloadConfig(ENABLE);
      00812D 4B 01            [ 1]  215 	push	#0x01
      00812F CD 8A 1E         [ 4]  216 	call	_TIM4_ARRPreloadConfig
      008132 84               [ 1]  217 	pop	a
                                    218 ;	Source/User/main.c: 59: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
      008133 4B 01            [ 1]  219 	push	#0x01
      008135 4B 17            [ 1]  220 	push	#0x17
      008137 CD 88 F8         [ 4]  221 	call	_ITC_SetSoftwarePriority
      00813A 85               [ 2]  222 	popw	x
                                    223 ;	Source/User/main.c: 60: TIM4_Cmd(ENABLE);
      00813B 4B 01            [ 1]  224 	push	#0x01
      00813D CD 89 EE         [ 4]  225 	call	_TIM4_Cmd
      008140 84               [ 1]  226 	pop	a
                                    227 ;	Source/User/main.c: 65: while(1)
      008141                        228 00105$:
                                    229 ;	Source/User/main.c: 69: NIXIE_DisplayTime(DS3231_TimeSturcture.hours,DS3231_TimeSturcture.minutes);
      008141 AE 00 07         [ 2]  230 	ldw	x, #(_DS3231_TimeSturcture + 0)+1
      008144 1F 01            [ 2]  231 	ldw	(0x01, sp), x
      008146 F6               [ 1]  232 	ld	a, (x)
      008147 97               [ 1]  233 	ld	xl, a
      008148 C6 00 08         [ 1]  234 	ld	a, _DS3231_TimeSturcture+2
      00814B 89               [ 2]  235 	pushw	x
      00814C 5B 01            [ 2]  236 	addw	sp, #1
      00814E 88               [ 1]  237 	push	a
      00814F CD 8D 78         [ 4]  238 	call	_NIXIE_DisplayTime
      008152 85               [ 2]  239 	popw	x
                                    240 ;	Source/User/main.c: 70: DS3231_GetTime();
      008153 CD 8F 4C         [ 4]  241 	call	_DS3231_GetTime
                                    242 ;	Source/User/main.c: 72: if((DS3231_TimeSturcture.minutes%10==0)&&(DS3231_TimeSturcture.seconds==0))
      008156 1E 01            [ 2]  243 	ldw	x, (0x01, sp)
      008158 F6               [ 1]  244 	ld	a, (x)
      008159 5F               [ 1]  245 	clrw	x
      00815A 97               [ 1]  246 	ld	xl, a
      00815B 4B 0A            [ 1]  247 	push	#0x0a
      00815D 4B 00            [ 1]  248 	push	#0x00
      00815F 89               [ 2]  249 	pushw	x
      008160 CD 95 EE         [ 4]  250 	call	__modsint
      008163 5B 04            [ 2]  251 	addw	sp, #4
      008165 5D               [ 2]  252 	tnzw	x
      008166 26 D9            [ 1]  253 	jrne	00105$
      008168 C6 00 06         [ 1]  254 	ld	a, _DS3231_TimeSturcture+0
      00816B 26 D4            [ 1]  255 	jrne	00105$
                                    256 ;	Source/User/main.c: 73: ir_delay=DELAY_10S;
      00816D AE 09 C4         [ 2]  257 	ldw	x, #0x09c4
      008170 CF 00 01         [ 2]  258 	ldw	_ir_delay+0, x
      008173 20 CC            [ 2]  259 	jra	00105$
                                    260 ;	Source/User/main.c: 76: }
      008175 5B 02            [ 2]  261 	addw	sp, #2
      008177 81               [ 4]  262 	ret
                                    263 ;	Source/User/main.c: 85: void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
                                    264 ;	-----------------------------------------
                                    265 ;	 function TIM4_UPD_OVF_IRQHandler
                                    266 ;	-----------------------------------------
      008178                        267 _TIM4_UPD_OVF_IRQHandler:
      008178 62               [ 2]  268 	div	x, a
                                    269 ;	Source/User/main.c: 88: if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
      008179 4B 01            [ 1]  270 	push	#0x01
      00817B CD 8A 31         [ 4]  271 	call	_TIM4_GetITStatus
      00817E 5B 01            [ 2]  272 	addw	sp, #1
      008180 4A               [ 1]  273 	dec	a
      008181 26 2C            [ 1]  274 	jrne	00110$
                                    275 ;	Source/User/main.c: 99: if(ir_double_click_delay>0)//双击计时
      008183 72 5D 00 03      [ 1]  276 	tnz	_ir_double_click_delay+0
      008187 27 04            [ 1]  277 	jreq	00102$
                                    278 ;	Source/User/main.c: 100: --ir_double_click_delay;
      008189 72 5A 00 03      [ 1]  279 	dec	_ir_double_click_delay+0
      00818D                        280 00102$:
                                    281 ;	Source/User/main.c: 106: if(ir_delay>0)
                                    282 ;	Source/User/main.c: 108: --ir_delay;
      00818D CE 00 01         [ 2]  283 	ldw	x, _ir_delay+0
      008190 27 08            [ 1]  284 	jreq	00104$
      008192 5A               [ 2]  285 	decw	x
      008193 CF 00 01         [ 2]  286 	ldw	_ir_delay+0, x
                                    287 ;	Source/User/main.c: 109: tube_state=ENABLE;
      008196 35 01 00 28      [ 1]  288 	mov	_tube_state+0, #0x01
      00819A                        289 00104$:
                                    290 ;	Source/User/main.c: 111: if((ir_delay==0)&&(nixie_always_on==RESET))
      00819A CE 00 01         [ 2]  291 	ldw	x, _ir_delay+0
      00819D 26 0A            [ 1]  292 	jrne	00106$
      00819F 72 5D 00 26      [ 1]  293 	tnz	_nixie_always_on+0
      0081A3 26 04            [ 1]  294 	jrne	00106$
                                    295 ;	Source/User/main.c: 114: tube_state=DISABLE;
      0081A5 72 5F 00 28      [ 1]  296 	clr	_tube_state+0
      0081A9                        297 00106$:
                                    298 ;	Source/User/main.c: 117: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
      0081A9 4B 01            [ 1]  299 	push	#0x01
      0081AB CD 8A 4C         [ 4]  300 	call	_TIM4_ClearITPendingBit
      0081AE 84               [ 1]  301 	pop	a
      0081AF                        302 00110$:
                                    303 ;	Source/User/main.c: 119: }
      0081AF 80               [11]  304 	iret
                                    305 ;	Source/User/main.c: 126: void EXTI_PORTA_IRQHandler(void) __interrupt(3)
                                    306 ;	-----------------------------------------
                                    307 ;	 function EXTI_PORTA_IRQHandler
                                    308 ;	-----------------------------------------
      0081B0                        309 _EXTI_PORTA_IRQHandler:
                                    310 ;	Source/User/main.c: 175: }
      0081B0 80               [11]  311 	iret
                                    312 ;	Source/User/main.c: 182: void EXTI_PORTC_IRQHandler(void) __interrupt(5)
                                    313 ;	-----------------------------------------
                                    314 ;	 function EXTI_PORTC_IRQHandler
                                    315 ;	-----------------------------------------
      0081B1                        316 _EXTI_PORTC_IRQHandler:
      0081B1 62               [ 2]  317 	div	x, a
                                    318 ;	Source/User/main.c: 184: if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
      0081B2 4B 08            [ 1]  319 	push	#0x08
      0081B4 4B 0A            [ 1]  320 	push	#0x0a
      0081B6 4B 50            [ 1]  321 	push	#0x50
      0081B8 CD 82 A2         [ 4]  322 	call	_GPIO_ReadInputPin
      0081BB 5B 03            [ 2]  323 	addw	sp, #3
      0081BD 4D               [ 1]  324 	tnz	a
      0081BE 26 08            [ 1]  325 	jrne	00104$
                                    326 ;	Source/User/main.c: 187: key_delay_2s=DELAY_2S;
      0081C0 AE 01 F4         [ 2]  327 	ldw	x, #0x01f4
      0081C3 CF 00 04         [ 2]  328 	ldw	_key_delay_2s+0, x
      0081C6 20 14            [ 2]  329 	jra	00106$
      0081C8                        330 00104$:
                                    331 ;	Source/User/main.c: 189: else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
      0081C8 4B 10            [ 1]  332 	push	#0x10
      0081CA 4B 0A            [ 1]  333 	push	#0x0a
      0081CC 4B 50            [ 1]  334 	push	#0x50
      0081CE CD 82 A2         [ 4]  335 	call	_GPIO_ReadInputPin
      0081D1 5B 03            [ 2]  336 	addw	sp, #3
      0081D3 4D               [ 1]  337 	tnz	a
      0081D4 26 06            [ 1]  338 	jrne	00106$
                                    339 ;	Source/User/main.c: 192: key_delay_2s=DELAY_2S;
      0081D6 AE 01 F4         [ 2]  340 	ldw	x, #0x01f4
      0081D9 CF 00 04         [ 2]  341 	ldw	_key_delay_2s+0, x
      0081DC                        342 00106$:
                                    343 ;	Source/User/main.c: 194: }
      0081DC 80               [11]  344 	iret
                                    345 ;	Source/User/main.c: 201: void EXTI_PORTD_IRQHandler(void) __interrupt(6)
                                    346 ;	-----------------------------------------
                                    347 ;	 function EXTI_PORTD_IRQHandler
                                    348 ;	-----------------------------------------
      0081DD                        349 _EXTI_PORTD_IRQHandler:
      0081DD 62               [ 2]  350 	div	x, a
                                    351 ;	Source/User/main.c: 203: if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
      0081DE 4B 04            [ 1]  352 	push	#0x04
      0081E0 4B 0F            [ 1]  353 	push	#0x0f
      0081E2 4B 50            [ 1]  354 	push	#0x50
      0081E4 CD 82 A2         [ 4]  355 	call	_GPIO_ReadInputPin
      0081E7 5B 03            [ 2]  356 	addw	sp, #3
      0081E9 4D               [ 1]  357 	tnz	a
      0081EA 26 20            [ 1]  358 	jrne	00107$
                                    359 ;	Source/User/main.c: 206: tube_state=ENABLE;
      0081EC 35 01 00 28      [ 1]  360 	mov	_tube_state+0, #0x01
                                    361 ;	Source/User/main.c: 208: ir_delay=DELAY_10S;
      0081F0 AE 09 C4         [ 2]  362 	ldw	x, #0x09c4
      0081F3 CF 00 01         [ 2]  363 	ldw	_ir_delay+0, x
                                    364 ;	Source/User/main.c: 209: if(ir_double_click_delay>0)//相当于20ms内又触发了红外
      0081F6 72 5D 00 03      [ 1]  365 	tnz	_ir_double_click_delay+0
      0081FA 27 0A            [ 1]  366 	jreq	00102$
                                    367 ;	Source/User/main.c: 211: nixie_always_on=~nixie_always_on;
      0081FC 72 53 00 26      [ 1]  368 	cpl	_nixie_always_on+0
                                    369 ;	Source/User/main.c: 212: ir_double_click_delay=0;
      008200 72 5F 00 03      [ 1]  370 	clr	_ir_double_click_delay+0
      008204 20 11            [ 2]  371 	jra	00109$
      008206                        372 00102$:
                                    373 ;	Source/User/main.c: 215: ir_double_click_delay=DELAY_2S;
      008206 35 F4 00 03      [ 1]  374 	mov	_ir_double_click_delay+0, #0xf4
      00820A 20 0B            [ 2]  375 	jra	00109$
      00820C                        376 00107$:
                                    377 ;	Source/User/main.c: 217: else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
      00820C 4B 08            [ 1]  378 	push	#0x08
      00820E 4B 0F            [ 1]  379 	push	#0x0f
      008210 4B 50            [ 1]  380 	push	#0x50
      008212 CD 82 A2         [ 4]  381 	call	_GPIO_ReadInputPin
      008215 5B 03            [ 2]  382 	addw	sp, #3
      008217                        383 00109$:
                                    384 ;	Source/User/main.c: 244: }
      008217 80               [11]  385 	iret
                                    386 	.area CODE
                                    387 	.area CONST
                                    388 	.area INITIALIZER
      008094                        389 __xinit__nixie_always_on:
      008094 00                     390 	.db #0x00	; 0
      008095                        391 __xinit__KEY_StateMachine_Enumeration:
      008095 00                     392 	.db #0x00	; 0
                                    393 	.area CABS (ABS)
