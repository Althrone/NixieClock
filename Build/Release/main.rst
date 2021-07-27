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
                                     34 	.globl _ir_always_on
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
      000026                         52 _ir_always_on::
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
      008014 82 00 81 C7             86 	int _EXTI_PORTA_IRQHandler ; int3
      008018 82 00 00 00             87 	int 0x000000 ; int4
      00801C 82 00 81 C8             88 	int _EXTI_PORTC_IRQHandler ; int5
      008020 82 00 81 F4             89 	int _EXTI_PORTD_IRQHandler ; int6
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
      008050 82 00 91 B0            101 	int _UART1_RX_IRQHandler ; int18
      008054 82 00 00 00            102 	int 0x000000 ; int19
      008058 82 00 00 00            103 	int 0x000000 ; int20
      00805C 82 00 00 00            104 	int 0x000000 ; int21
      008060 82 00 00 00            105 	int 0x000000 ; int22
      008064 82 00 81 93            106 	int _TIM4_UPD_OVF_IRQHandler ; int23
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
      008077 AE 00 2E         [ 2]  124 	ldw	x, #l_INITIALIZER
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
      008068 CC 80 C2         [ 2]  141 	jp	_main
                                    142 ;	return from main will return to caller
                                    143 ;--------------------------------------------------------
                                    144 ; code
                                    145 ;--------------------------------------------------------
                                    146 	.area CODE
                                    147 ;	Source/User/main.c: 15: int main(void)
                                    148 ;	-----------------------------------------
                                    149 ;	 function main
                                    150 ;	-----------------------------------------
      0080C2                        151 _main:
      0080C2 52 03            [ 2]  152 	sub	sp, #3
                                    153 ;	Source/User/main.c: 18: CLK_HSECmd(ENABLE);
      0080C4 4B 01            [ 1]  154 	push	#0x01
      0080C6 CD 82 C0         [ 4]  155 	call	_CLK_HSECmd
      0080C9 84               [ 1]  156 	pop	a
                                    157 ;	Source/User/main.c: 19: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz
      0080CA 4B 00            [ 1]  158 	push	#0x00
      0080CC 4B 00            [ 1]  159 	push	#0x00
      0080CE 4B B4            [ 1]  160 	push	#0xb4
      0080D0 4B 01            [ 1]  161 	push	#0x01
      0080D2 CD 82 D3         [ 4]  162 	call	_CLK_ClockSwitchConfig
      0080D5 5B 04            [ 2]  163 	addw	sp, #4
                                    164 ;	Source/User/main.c: 22: ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
      0080D7 4B 01            [ 1]  165 	push	#0x01
      0080D9 4B 06            [ 1]  166 	push	#0x06
      0080DB CD 89 0F         [ 4]  167 	call	_ITC_SetSoftwarePriority
      0080DE 85               [ 2]  168 	popw	x
                                    169 ;	Source/User/main.c: 23: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
      0080DF 4B 02            [ 1]  170 	push	#0x02
      0080E1 4B 03            [ 1]  171 	push	#0x03
      0080E3 CD 87 A1         [ 4]  172 	call	_EXTI_SetExtIntSensitivity
      0080E6 85               [ 2]  173 	popw	x
                                    174 ;	Source/User/main.c: 24: GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
      0080E7 4B 20            [ 1]  175 	push	#0x20
      0080E9 4B 04            [ 1]  176 	push	#0x04
      0080EB 4B 0F            [ 1]  177 	push	#0x0f
      0080ED 4B 50            [ 1]  178 	push	#0x50
      0080EF CD 82 2F         [ 4]  179 	call	_GPIO_Init
      0080F2 5B 04            [ 2]  180 	addw	sp, #4
                                    181 ;	Source/User/main.c: 27: GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
      0080F4 4B 60            [ 1]  182 	push	#0x60
      0080F6 4B 08            [ 1]  183 	push	#0x08
      0080F8 4B 0A            [ 1]  184 	push	#0x0a
      0080FA 4B 50            [ 1]  185 	push	#0x50
      0080FC CD 82 2F         [ 4]  186 	call	_GPIO_Init
      0080FF 5B 04            [ 2]  187 	addw	sp, #4
                                    188 ;	Source/User/main.c: 28: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
      008101 4B 02            [ 1]  189 	push	#0x02
      008103 4B 02            [ 1]  190 	push	#0x02
      008105 CD 87 A1         [ 4]  191 	call	_EXTI_SetExtIntSensitivity
      008108 85               [ 2]  192 	popw	x
                                    193 ;	Source/User/main.c: 29: rim();
      008109 9A               [ 1]  194 	rim
                                    195 ;	Source/User/main.c: 31: GPS_Init();//PD5 PD6
      00810A CD 90 1B         [ 4]  196 	call	_GPS_Init
                                    197 ;	Source/User/main.c: 33: NIXIE_Init();//PC5 PC6 PC7
      00810D CD 8C 7B         [ 4]  198 	call	_NIXIE_Init
                                    199 ;	Source/User/main.c: 35: for(uint8_t i=0;i<10;++i)
      008110 0F 01            [ 1]  200 	clr	(0x01, sp)
      008112                        201 00114$:
      008112 7B 01            [ 1]  202 	ld	a, (0x01, sp)
      008114 A1 0A            [ 1]  203 	cp	a, #0x0a
      008116 24 37            [ 1]  204 	jrnc	00103$
                                    205 ;	Source/User/main.c: 37: tube_state=ENABLE;
      008118 35 01 00 28      [ 1]  206 	mov	_tube_state+0, #0x01
                                    207 ;	Source/User/main.c: 38: NIXIE_DisplayTime(i*10+i,i*10+i);
      00811C 7B 01            [ 1]  208 	ld	a, (0x01, sp)
      00811E 97               [ 1]  209 	ld	xl, a
      00811F A6 0A            [ 1]  210 	ld	a, #0x0a
      008121 42               [ 4]  211 	mul	x, a
      008122 7B 01            [ 1]  212 	ld	a, (0x01, sp)
      008124 89               [ 2]  213 	pushw	x
      008125 1B 02            [ 1]  214 	add	a, (2, sp)
      008127 85               [ 2]  215 	popw	x
      008128 88               [ 1]  216 	push	a
      008129 88               [ 1]  217 	push	a
      00812A CD 8D 57         [ 4]  218 	call	_NIXIE_DisplayTime
      00812D 85               [ 2]  219 	popw	x
                                    220 ;	Source/User/main.c: 39: for(uint16_t k=0;k<100;++k)
      00812E 5F               [ 1]  221 	clrw	x
      00812F 1F 02            [ 2]  222 	ldw	(0x02, sp), x
      008131                        223 00111$:
      008131 1E 02            [ 2]  224 	ldw	x, (0x02, sp)
      008133 A3 00 64         [ 2]  225 	cpw	x, #0x0064
      008136 24 13            [ 1]  226 	jrnc	00115$
                                    227 ;	Source/User/main.c: 41: for(uint16_t j=0;j<1000;++j);
      008138 5F               [ 1]  228 	clrw	x
      008139                        229 00108$:
      008139 90 93            [ 1]  230 	ldw	y, x
      00813B 90 A3 03 E8      [ 2]  231 	cpw	y, #0x03e8
      00813F 24 03            [ 1]  232 	jrnc	00112$
      008141 5C               [ 1]  233 	incw	x
      008142 20 F5            [ 2]  234 	jra	00108$
      008144                        235 00112$:
                                    236 ;	Source/User/main.c: 39: for(uint16_t k=0;k<100;++k)
      008144 1E 02            [ 2]  237 	ldw	x, (0x02, sp)
      008146 5C               [ 1]  238 	incw	x
      008147 1F 02            [ 2]  239 	ldw	(0x02, sp), x
      008149 20 E6            [ 2]  240 	jra	00111$
      00814B                        241 00115$:
                                    242 ;	Source/User/main.c: 35: for(uint8_t i=0;i<10;++i)
      00814B 0C 01            [ 1]  243 	inc	(0x01, sp)
      00814D 20 C3            [ 2]  244 	jra	00114$
      00814F                        245 00103$:
                                    246 ;	Source/User/main.c: 44: ir_delay=DELAY_10S;
      00814F AE 09 C4         [ 2]  247 	ldw	x, #0x09c4
      008152 CF 00 01         [ 2]  248 	ldw	_ir_delay+0, x
                                    249 ;	Source/User/main.c: 46: DS3231_Init();
      008155 CD 8F 28         [ 4]  250 	call	_DS3231_Init
                                    251 ;	Source/User/main.c: 49: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
      008158 4B FA            [ 1]  252 	push	#0xfa
      00815A 4B 07            [ 1]  253 	push	#0x07
      00815C CD 89 F8         [ 4]  254 	call	_TIM4_TimeBaseInit
      00815F 85               [ 2]  255 	popw	x
                                    256 ;	Source/User/main.c: 50: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
      008160 4B 01            [ 1]  257 	push	#0x01
      008162 4B 01            [ 1]  258 	push	#0x01
      008164 CD 8A 18         [ 4]  259 	call	_TIM4_ITConfig
      008167 85               [ 2]  260 	popw	x
                                    261 ;	Source/User/main.c: 51: TIM4_ARRPreloadConfig(ENABLE);
      008168 4B 01            [ 1]  262 	push	#0x01
      00816A CD 8A 35         [ 4]  263 	call	_TIM4_ARRPreloadConfig
      00816D 84               [ 1]  264 	pop	a
                                    265 ;	Source/User/main.c: 52: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
      00816E 4B 01            [ 1]  266 	push	#0x01
      008170 4B 17            [ 1]  267 	push	#0x17
      008172 CD 89 0F         [ 4]  268 	call	_ITC_SetSoftwarePriority
      008175 85               [ 2]  269 	popw	x
                                    270 ;	Source/User/main.c: 53: TIM4_Cmd(ENABLE);
      008176 4B 01            [ 1]  271 	push	#0x01
      008178 CD 8A 05         [ 4]  272 	call	_TIM4_Cmd
      00817B 84               [ 1]  273 	pop	a
                                    274 ;	Source/User/main.c: 55: while(1)
      00817C                        275 00105$:
                                    276 ;	Source/User/main.c: 58: NIXIE_DisplayTime(GPS_TimeDataSturcture.hour,GPS_TimeDataSturcture.min);
      00817C C6 00 21         [ 1]  277 	ld	a, _GPS_TimeDataSturcture+19
      00817F 97               [ 1]  278 	ld	xl, a
      008180 C6 00 20         [ 1]  279 	ld	a, _GPS_TimeDataSturcture+18
      008183 89               [ 2]  280 	pushw	x
      008184 5B 01            [ 2]  281 	addw	sp, #1
      008186 88               [ 1]  282 	push	a
      008187 CD 8D 57         [ 4]  283 	call	_NIXIE_DisplayTime
      00818A 85               [ 2]  284 	popw	x
                                    285 ;	Source/User/main.c: 60: DS3231_GetTime();
      00818B CD 8F 2B         [ 4]  286 	call	_DS3231_GetTime
      00818E 20 EC            [ 2]  287 	jra	00105$
                                    288 ;	Source/User/main.c: 63: }
      008190 5B 03            [ 2]  289 	addw	sp, #3
      008192 81               [ 4]  290 	ret
                                    291 ;	Source/User/main.c: 72: void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
                                    292 ;	-----------------------------------------
                                    293 ;	 function TIM4_UPD_OVF_IRQHandler
                                    294 ;	-----------------------------------------
      008193                        295 _TIM4_UPD_OVF_IRQHandler:
      008193 62               [ 2]  296 	div	x, a
                                    297 ;	Source/User/main.c: 75: if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
      008194 4B 01            [ 1]  298 	push	#0x01
      008196 CD 8A 48         [ 4]  299 	call	_TIM4_GetITStatus
      008199 5B 01            [ 2]  300 	addw	sp, #1
      00819B 4A               [ 1]  301 	dec	a
      00819C 26 28            [ 1]  302 	jrne	00110$
                                    303 ;	Source/User/main.c: 86: if(ir_double_click_delay>0)//双击计时
      00819E 72 5D 00 03      [ 1]  304 	tnz	_ir_double_click_delay+0
      0081A2 27 04            [ 1]  305 	jreq	00102$
                                    306 ;	Source/User/main.c: 87: --ir_double_click_delay;
      0081A4 72 5A 00 03      [ 1]  307 	dec	_ir_double_click_delay+0
      0081A8                        308 00102$:
                                    309 ;	Source/User/main.c: 93: if(ir_delay>0)
                                    310 ;	Source/User/main.c: 94: --ir_delay;
      0081A8 CE 00 01         [ 2]  311 	ldw	x, _ir_delay+0
      0081AB 27 04            [ 1]  312 	jreq	00104$
      0081AD 5A               [ 2]  313 	decw	x
      0081AE CF 00 01         [ 2]  314 	ldw	_ir_delay+0, x
      0081B1                        315 00104$:
                                    316 ;	Source/User/main.c: 95: if((ir_delay==0)&&(ir_always_on==RESET))
      0081B1 CE 00 01         [ 2]  317 	ldw	x, _ir_delay+0
      0081B4 26 0A            [ 1]  318 	jrne	00106$
      0081B6 72 5D 00 26      [ 1]  319 	tnz	_ir_always_on+0
      0081BA 26 04            [ 1]  320 	jrne	00106$
                                    321 ;	Source/User/main.c: 98: tube_state=DISABLE;
      0081BC 72 5F 00 28      [ 1]  322 	clr	_tube_state+0
      0081C0                        323 00106$:
                                    324 ;	Source/User/main.c: 101: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
      0081C0 4B 01            [ 1]  325 	push	#0x01
      0081C2 CD 8A 63         [ 4]  326 	call	_TIM4_ClearITPendingBit
      0081C5 84               [ 1]  327 	pop	a
      0081C6                        328 00110$:
                                    329 ;	Source/User/main.c: 103: }
      0081C6 80               [11]  330 	iret
                                    331 ;	Source/User/main.c: 110: void EXTI_PORTA_IRQHandler(void) __interrupt(3)
                                    332 ;	-----------------------------------------
                                    333 ;	 function EXTI_PORTA_IRQHandler
                                    334 ;	-----------------------------------------
      0081C7                        335 _EXTI_PORTA_IRQHandler:
                                    336 ;	Source/User/main.c: 159: }
      0081C7 80               [11]  337 	iret
                                    338 ;	Source/User/main.c: 166: void EXTI_PORTC_IRQHandler(void) __interrupt(5)
                                    339 ;	-----------------------------------------
                                    340 ;	 function EXTI_PORTC_IRQHandler
                                    341 ;	-----------------------------------------
      0081C8                        342 _EXTI_PORTC_IRQHandler:
      0081C8 62               [ 2]  343 	div	x, a
                                    344 ;	Source/User/main.c: 168: if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
      0081C9 4B 08            [ 1]  345 	push	#0x08
      0081CB 4B 0A            [ 1]  346 	push	#0x0a
      0081CD 4B 50            [ 1]  347 	push	#0x50
      0081CF CD 82 B9         [ 4]  348 	call	_GPIO_ReadInputPin
      0081D2 5B 03            [ 2]  349 	addw	sp, #3
      0081D4 4D               [ 1]  350 	tnz	a
      0081D5 26 08            [ 1]  351 	jrne	00104$
                                    352 ;	Source/User/main.c: 171: key_delay_2s=DELAY_2S;
      0081D7 AE 01 F4         [ 2]  353 	ldw	x, #0x01f4
      0081DA CF 00 04         [ 2]  354 	ldw	_key_delay_2s+0, x
      0081DD 20 14            [ 2]  355 	jra	00106$
      0081DF                        356 00104$:
                                    357 ;	Source/User/main.c: 173: else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
      0081DF 4B 10            [ 1]  358 	push	#0x10
      0081E1 4B 0A            [ 1]  359 	push	#0x0a
      0081E3 4B 50            [ 1]  360 	push	#0x50
      0081E5 CD 82 B9         [ 4]  361 	call	_GPIO_ReadInputPin
      0081E8 5B 03            [ 2]  362 	addw	sp, #3
      0081EA 4D               [ 1]  363 	tnz	a
      0081EB 26 06            [ 1]  364 	jrne	00106$
                                    365 ;	Source/User/main.c: 176: key_delay_2s=DELAY_2S;
      0081ED AE 01 F4         [ 2]  366 	ldw	x, #0x01f4
      0081F0 CF 00 04         [ 2]  367 	ldw	_key_delay_2s+0, x
      0081F3                        368 00106$:
                                    369 ;	Source/User/main.c: 178: }
      0081F3 80               [11]  370 	iret
                                    371 ;	Source/User/main.c: 185: void EXTI_PORTD_IRQHandler(void) __interrupt(6)
                                    372 ;	-----------------------------------------
                                    373 ;	 function EXTI_PORTD_IRQHandler
                                    374 ;	-----------------------------------------
      0081F4                        375 _EXTI_PORTD_IRQHandler:
      0081F4 62               [ 2]  376 	div	x, a
                                    377 ;	Source/User/main.c: 187: if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
      0081F5 4B 04            [ 1]  378 	push	#0x04
      0081F7 4B 0F            [ 1]  379 	push	#0x0f
      0081F9 4B 50            [ 1]  380 	push	#0x50
      0081FB CD 82 B9         [ 4]  381 	call	_GPIO_ReadInputPin
      0081FE 5B 03            [ 2]  382 	addw	sp, #3
      008200 4D               [ 1]  383 	tnz	a
      008201 26 20            [ 1]  384 	jrne	00107$
                                    385 ;	Source/User/main.c: 190: tube_state=ENABLE;
      008203 35 01 00 28      [ 1]  386 	mov	_tube_state+0, #0x01
                                    387 ;	Source/User/main.c: 192: ir_delay=DELAY_10S;
      008207 AE 09 C4         [ 2]  388 	ldw	x, #0x09c4
      00820A CF 00 01         [ 2]  389 	ldw	_ir_delay+0, x
                                    390 ;	Source/User/main.c: 193: if(ir_double_click_delay>0)//相当于20ms内又触发了红外
      00820D 72 5D 00 03      [ 1]  391 	tnz	_ir_double_click_delay+0
      008211 27 0A            [ 1]  392 	jreq	00102$
                                    393 ;	Source/User/main.c: 195: ir_always_on=~ir_always_on;
      008213 72 53 00 26      [ 1]  394 	cpl	_ir_always_on+0
                                    395 ;	Source/User/main.c: 196: ir_double_click_delay=0;
      008217 72 5F 00 03      [ 1]  396 	clr	_ir_double_click_delay+0
      00821B 20 11            [ 2]  397 	jra	00109$
      00821D                        398 00102$:
                                    399 ;	Source/User/main.c: 199: ir_double_click_delay=DELAY_2S;
      00821D 35 F4 00 03      [ 1]  400 	mov	_ir_double_click_delay+0, #0xf4
      008221 20 0B            [ 2]  401 	jra	00109$
      008223                        402 00107$:
                                    403 ;	Source/User/main.c: 201: else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
      008223 4B 08            [ 1]  404 	push	#0x08
      008225 4B 0F            [ 1]  405 	push	#0x0f
      008227 4B 50            [ 1]  406 	push	#0x50
      008229 CD 82 B9         [ 4]  407 	call	_GPIO_ReadInputPin
      00822C 5B 03            [ 2]  408 	addw	sp, #3
      00822E                        409 00109$:
                                    410 ;	Source/User/main.c: 228: }
      00822E 80               [11]  411 	iret
                                    412 	.area CODE
                                    413 	.area CONST
                                    414 	.area INITIALIZER
      008094                        415 __xinit__ir_always_on:
      008094 00                     416 	.db #0x00	; 0
      008095                        417 __xinit__KEY_StateMachine_Enumeration:
      008095 00                     418 	.db #0x00	; 0
                                    419 	.area CABS (ABS)
