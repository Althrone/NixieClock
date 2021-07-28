;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_PORTD_IRQHandler
	.globl _EXTI_PORTC_IRQHandler
	.globl _EXTI_PORTA_IRQHandler
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _main
	.globl _DS3231_GetTime
	.globl _DS3231_Init
	.globl _NIXIE_DisplayTime
	.globl _NIXIE_Init
	.globl _GPS_Init
	.globl _TIM4_ClearITPendingBit
	.globl _TIM4_GetITStatus
	.globl _TIM4_ARRPreloadConfig
	.globl _TIM4_ITConfig
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _ITC_SetSoftwarePriority
	.globl _GPIO_ReadInputPin
	.globl _GPIO_Init
	.globl _EXTI_SetExtIntSensitivity
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_HSECmd
	.globl _KEY_StateMachine_Enumeration
	.globl _nixie_always_on
	.globl _key_delay_2s
	.globl _ir_double_click_delay
	.globl _ir_delay
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
G$ir_delay$0_0$0==.
_ir_delay::
	.ds 2
G$ir_double_click_delay$0_0$0==.
_ir_double_click_delay::
	.ds 1
G$key_delay_2s$0_0$0==.
_key_delay_2s::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$nixie_always_on$0_0$0==.
_nixie_always_on::
	.ds 1
G$KEY_StateMachine_Enumeration$0_0$0==.
_KEY_StateMachine_Enumeration::
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int _EXTI_PORTA_IRQHandler ; int3
	int 0x000000 ; int4
	int _EXTI_PORTC_IRQHandler ; int5
	int _EXTI_PORTD_IRQHandler ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int 0x000000 ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int _UART1_RX_IRQHandler ; int18
	int 0x000000 ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int 0x000000 ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$main$0 ==.
;	Source/User/main.c: 32: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	Smain$main$1 ==.
	pushw	x
	Smain$main$2 ==.
	Smain$main$3 ==.
;	Source/User/main.c: 35: CLK_HSECmd(ENABLE);
	push	#0x01
	Smain$main$4 ==.
	call	_CLK_HSECmd
	pop	a
	Smain$main$5 ==.
	Smain$main$6 ==.
;	Source/User/main.c: 36: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz
	push	#0x00
	Smain$main$7 ==.
	push	#0x00
	Smain$main$8 ==.
	push	#0xb4
	Smain$main$9 ==.
	push	#0x01
	Smain$main$10 ==.
	call	_CLK_ClockSwitchConfig
	addw	sp, #4
	Smain$main$11 ==.
	Smain$main$12 ==.
;	Source/User/main.c: 39: ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
	push	#0x01
	Smain$main$13 ==.
	push	#0x06
	Smain$main$14 ==.
	call	_ITC_SetSoftwarePriority
	popw	x
	Smain$main$15 ==.
	Smain$main$16 ==.
;	Source/User/main.c: 40: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	Smain$main$17 ==.
	push	#0x03
	Smain$main$18 ==.
	call	_EXTI_SetExtIntSensitivity
	popw	x
	Smain$main$19 ==.
	Smain$main$20 ==.
;	Source/User/main.c: 41: GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
	push	#0x20
	Smain$main$21 ==.
	push	#0x04
	Smain$main$22 ==.
	push	#0x0f
	Smain$main$23 ==.
	push	#0x50
	Smain$main$24 ==.
	call	_GPIO_Init
	addw	sp, #4
	Smain$main$25 ==.
	Smain$main$26 ==.
;	Source/User/main.c: 44: GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
	push	#0x60
	Smain$main$27 ==.
	push	#0x08
	Smain$main$28 ==.
	push	#0x0a
	Smain$main$29 ==.
	push	#0x50
	Smain$main$30 ==.
	call	_GPIO_Init
	addw	sp, #4
	Smain$main$31 ==.
	Smain$main$32 ==.
;	Source/User/main.c: 45: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	Smain$main$33 ==.
	push	#0x02
	Smain$main$34 ==.
	call	_EXTI_SetExtIntSensitivity
	popw	x
	Smain$main$35 ==.
	Smain$main$36 ==.
;	Source/User/main.c: 46: rim();
	rim
	Smain$main$37 ==.
;	Source/User/main.c: 48: GPS_Init();//PD5 PD6
	call	_GPS_Init
	Smain$main$38 ==.
;	Source/User/main.c: 50: NIXIE_Init();//PC5 PC6 PC7
	call	_NIXIE_Init
	Smain$main$39 ==.
;	Source/User/main.c: 51: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
	Smain$main$40 ==.
;	Source/User/main.c: 53: DS3231_Init();
	call	_DS3231_Init
	Smain$main$41 ==.
;	Source/User/main.c: 56: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
	push	#0xfa
	Smain$main$42 ==.
	push	#0x07
	Smain$main$43 ==.
	call	_TIM4_TimeBaseInit
	popw	x
	Smain$main$44 ==.
	Smain$main$45 ==.
;	Source/User/main.c: 57: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
	push	#0x01
	Smain$main$46 ==.
	push	#0x01
	Smain$main$47 ==.
	call	_TIM4_ITConfig
	popw	x
	Smain$main$48 ==.
	Smain$main$49 ==.
;	Source/User/main.c: 58: TIM4_ARRPreloadConfig(ENABLE);
	push	#0x01
	Smain$main$50 ==.
	call	_TIM4_ARRPreloadConfig
	pop	a
	Smain$main$51 ==.
	Smain$main$52 ==.
;	Source/User/main.c: 59: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
	push	#0x01
	Smain$main$53 ==.
	push	#0x17
	Smain$main$54 ==.
	call	_ITC_SetSoftwarePriority
	popw	x
	Smain$main$55 ==.
	Smain$main$56 ==.
;	Source/User/main.c: 60: TIM4_Cmd(ENABLE);
	push	#0x01
	Smain$main$57 ==.
	call	_TIM4_Cmd
	pop	a
	Smain$main$58 ==.
	Smain$main$59 ==.
;	Source/User/main.c: 65: while(1)
00105$:
	Smain$main$60 ==.
	Smain$main$61 ==.
;	Source/User/main.c: 69: NIXIE_DisplayTime(DS3231_TimeSturcture.hours,DS3231_TimeSturcture.minutes);
	ldw	x, #(_DS3231_TimeSturcture + 0)+1
	ldw	(0x01, sp), x
	ld	a, (x)
	ld	xl, a
	ld	a, _DS3231_TimeSturcture+2
	pushw	x
	Smain$main$62 ==.
	addw	sp, #1
	Smain$main$63 ==.
	push	a
	Smain$main$64 ==.
	call	_NIXIE_DisplayTime
	popw	x
	Smain$main$65 ==.
	Smain$main$66 ==.
;	Source/User/main.c: 70: DS3231_GetTime();
	call	_DS3231_GetTime
	Smain$main$67 ==.
;	Source/User/main.c: 72: if((DS3231_TimeSturcture.minutes%10==0)&&(DS3231_TimeSturcture.seconds==0))
	ldw	x, (0x01, sp)
	ld	a, (x)
	clrw	x
	ld	xl, a
	Smain$main$68 ==.
	push	#0x0a
	Smain$main$69 ==.
	push	#0x00
	Smain$main$70 ==.
	pushw	x
	Smain$main$71 ==.
	call	__modsint
	addw	sp, #4
	Smain$main$72 ==.
	tnzw	x
	jrne	00105$
	ld	a, _DS3231_TimeSturcture+0
	jrne	00105$
	Smain$main$73 ==.
;	Source/User/main.c: 73: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
	jra	00105$
	Smain$main$74 ==.
;	Source/User/main.c: 76: }
	addw	sp, #2
	Smain$main$75 ==.
	Smain$main$76 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$77 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$78 ==.
;	Source/User/main.c: 85: void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
	div	x, a
	Smain$TIM4_UPD_OVF_IRQHandler$79 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$80 ==.
;	Source/User/main.c: 88: if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
	push	#0x01
	Smain$TIM4_UPD_OVF_IRQHandler$81 ==.
	call	_TIM4_GetITStatus
	addw	sp, #1
	Smain$TIM4_UPD_OVF_IRQHandler$82 ==.
	dec	a
	jreq	00139$
	jp	00110$
00139$:
	Smain$TIM4_UPD_OVF_IRQHandler$83 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$84 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$85 ==.
;	Source/User/main.c: 99: if(ir_double_click_delay>0)//双击计时
	tnz	_ir_double_click_delay+0
	jreq	00102$
	Smain$TIM4_UPD_OVF_IRQHandler$86 ==.
;	Source/User/main.c: 100: --ir_double_click_delay;
	dec	_ir_double_click_delay+0
00102$:
	Smain$TIM4_UPD_OVF_IRQHandler$87 ==.
;	Source/User/main.c: 106: if(ir_delay>0)
	ldw	x, _ir_delay+0
	jreq	00104$
	Smain$TIM4_UPD_OVF_IRQHandler$88 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$89 ==.
;	Source/User/main.c: 108: --ir_delay;
	ldw	x, _ir_delay+0
	decw	x
	ldw	_ir_delay+0, x
	Smain$TIM4_UPD_OVF_IRQHandler$90 ==.
;	Source/User/main.c: 109: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
	Smain$TIM4_UPD_OVF_IRQHandler$91 ==.
00104$:
	Smain$TIM4_UPD_OVF_IRQHandler$92 ==.
;	Source/User/main.c: 111: if((ir_delay==0)&&(nixie_always_on==RESET))
	ldw	x, _ir_delay+0
	jrne	00106$
	tnz	_nixie_always_on+0
	jrne	00106$
	Smain$TIM4_UPD_OVF_IRQHandler$93 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$94 ==.
;	Source/User/main.c: 114: tube_state=DISABLE;
	clr	_tube_state+0
	Smain$TIM4_UPD_OVF_IRQHandler$95 ==.
00106$:
	Smain$TIM4_UPD_OVF_IRQHandler$96 ==.
;	Source/User/main.c: 117: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	push	#0x01
	Smain$TIM4_UPD_OVF_IRQHandler$97 ==.
	call	_TIM4_ClearITPendingBit
	pop	a
	Smain$TIM4_UPD_OVF_IRQHandler$98 ==.
	Smain$TIM4_UPD_OVF_IRQHandler$99 ==.
00110$:
	Smain$TIM4_UPD_OVF_IRQHandler$100 ==.
;	Source/User/main.c: 119: }
	Smain$TIM4_UPD_OVF_IRQHandler$101 ==.
	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
	iret
	Smain$TIM4_UPD_OVF_IRQHandler$102 ==.
	Smain$EXTI_PORTA_IRQHandler$103 ==.
;	Source/User/main.c: 126: void EXTI_PORTA_IRQHandler(void) __interrupt(3)
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
_EXTI_PORTA_IRQHandler:
	Smain$EXTI_PORTA_IRQHandler$104 ==.
	Smain$EXTI_PORTA_IRQHandler$105 ==.
;	Source/User/main.c: 175: }
	Smain$EXTI_PORTA_IRQHandler$106 ==.
	XG$EXTI_PORTA_IRQHandler$0$0 ==.
	iret
	Smain$EXTI_PORTA_IRQHandler$107 ==.
	Smain$EXTI_PORTC_IRQHandler$108 ==.
;	Source/User/main.c: 182: void EXTI_PORTC_IRQHandler(void) __interrupt(5)
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
	div	x, a
	Smain$EXTI_PORTC_IRQHandler$109 ==.
	Smain$EXTI_PORTC_IRQHandler$110 ==.
;	Source/User/main.c: 184: if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
	push	#0x08
	Smain$EXTI_PORTC_IRQHandler$111 ==.
	push	#0x0a
	Smain$EXTI_PORTC_IRQHandler$112 ==.
	push	#0x50
	Smain$EXTI_PORTC_IRQHandler$113 ==.
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$EXTI_PORTC_IRQHandler$114 ==.
	tnz	a
	jrne	00104$
	Smain$EXTI_PORTC_IRQHandler$115 ==.
	Smain$EXTI_PORTC_IRQHandler$116 ==.
;	Source/User/main.c: 187: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
	Smain$EXTI_PORTC_IRQHandler$117 ==.
	jra	00106$
00104$:
	Smain$EXTI_PORTC_IRQHandler$118 ==.
;	Source/User/main.c: 189: else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
	push	#0x10
	Smain$EXTI_PORTC_IRQHandler$119 ==.
	push	#0x0a
	Smain$EXTI_PORTC_IRQHandler$120 ==.
	push	#0x50
	Smain$EXTI_PORTC_IRQHandler$121 ==.
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$EXTI_PORTC_IRQHandler$122 ==.
	tnz	a
	jrne	00106$
	Smain$EXTI_PORTC_IRQHandler$123 ==.
	Smain$EXTI_PORTC_IRQHandler$124 ==.
;	Source/User/main.c: 192: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
	Smain$EXTI_PORTC_IRQHandler$125 ==.
00106$:
	Smain$EXTI_PORTC_IRQHandler$126 ==.
;	Source/User/main.c: 194: }
	Smain$EXTI_PORTC_IRQHandler$127 ==.
	XG$EXTI_PORTC_IRQHandler$0$0 ==.
	iret
	Smain$EXTI_PORTC_IRQHandler$128 ==.
	Smain$EXTI_PORTD_IRQHandler$129 ==.
;	Source/User/main.c: 201: void EXTI_PORTD_IRQHandler(void) __interrupt(6)
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
_EXTI_PORTD_IRQHandler:
	div	x, a
	Smain$EXTI_PORTD_IRQHandler$130 ==.
	Smain$EXTI_PORTD_IRQHandler$131 ==.
;	Source/User/main.c: 203: if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
	push	#0x04
	Smain$EXTI_PORTD_IRQHandler$132 ==.
	push	#0x0f
	Smain$EXTI_PORTD_IRQHandler$133 ==.
	push	#0x50
	Smain$EXTI_PORTD_IRQHandler$134 ==.
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$EXTI_PORTD_IRQHandler$135 ==.
	tnz	a
	jrne	00107$
	Smain$EXTI_PORTD_IRQHandler$136 ==.
	Smain$EXTI_PORTD_IRQHandler$137 ==.
;	Source/User/main.c: 206: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
	Smain$EXTI_PORTD_IRQHandler$138 ==.
;	Source/User/main.c: 208: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
	Smain$EXTI_PORTD_IRQHandler$139 ==.
;	Source/User/main.c: 209: if(ir_double_click_delay>0)//相当于20ms内又触发了红外
	tnz	_ir_double_click_delay+0
	jreq	00102$
	Smain$EXTI_PORTD_IRQHandler$140 ==.
	Smain$EXTI_PORTD_IRQHandler$141 ==.
;	Source/User/main.c: 211: nixie_always_on=~nixie_always_on;
	cpl	_nixie_always_on+0
	Smain$EXTI_PORTD_IRQHandler$142 ==.
;	Source/User/main.c: 212: ir_double_click_delay=0;
	clr	_ir_double_click_delay+0
	Smain$EXTI_PORTD_IRQHandler$143 ==.
	jra	00109$
00102$:
	Smain$EXTI_PORTD_IRQHandler$144 ==.
;	Source/User/main.c: 215: ir_double_click_delay=DELAY_2S;
	mov	_ir_double_click_delay+0, #0xf4
	Smain$EXTI_PORTD_IRQHandler$145 ==.
	jra	00109$
00107$:
	Smain$EXTI_PORTD_IRQHandler$146 ==.
;	Source/User/main.c: 217: else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
	push	#0x08
	Smain$EXTI_PORTD_IRQHandler$147 ==.
	push	#0x0f
	Smain$EXTI_PORTD_IRQHandler$148 ==.
	push	#0x50
	Smain$EXTI_PORTD_IRQHandler$149 ==.
	call	_GPIO_ReadInputPin
	addw	sp, #3
	Smain$EXTI_PORTD_IRQHandler$150 ==.
00109$:
	Smain$EXTI_PORTD_IRQHandler$151 ==.
;	Source/User/main.c: 244: }
	Smain$EXTI_PORTD_IRQHandler$152 ==.
	XG$EXTI_PORTD_IRQHandler$0$0 ==.
	iret
	Smain$EXTI_PORTD_IRQHandler$153 ==.
	.area CODE
	.area CONST
	.area INITIALIZER
Fmain$__xinit_nixie_always_on$0_0$0 == .
__xinit__nixie_always_on:
	.db #0x00	; 0
Fmain$__xinit_KEY_StateMachine_Enumeration$0_0$0 == .
__xinit__KEY_StateMachine_Enumeration:
	.db #0x00	; 0
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "C:\Program Files\SDCC\bin\..\include\stm8"
	.db	0
	.ascii "C:\Program Files\SDCC\bin\..\include"
	.db	0
	.db	0
	.ascii "Source/User/main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$0)
	.db	3
	.sleb128	31
	.db	1
	.db	9
	.dw	Smain$main$3-Smain$main$0
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$6-Smain$main$3
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$12-Smain$main$6
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$16-Smain$main$12
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$20-Smain$main$16
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$26-Smain$main$20
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$32-Smain$main$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$36-Smain$main$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$37-Smain$main$36
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$38-Smain$main$37
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$39-Smain$main$38
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$40-Smain$main$39
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$41-Smain$main$40
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$main$45-Smain$main$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$49-Smain$main$45
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$52-Smain$main$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$56-Smain$main$52
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$59-Smain$main$56
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Smain$main$61-Smain$main$59
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	Smain$main$66-Smain$main$61
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$67-Smain$main$66
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$main$73-Smain$main$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$74-Smain$main$73
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	1+Smain$main$76-Smain$main$74
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$78)
	.db	3
	.sleb128	84
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$80-Smain$TIM4_UPD_OVF_IRQHandler$78
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$85-Smain$TIM4_UPD_OVF_IRQHandler$80
	.db	3
	.sleb128	11
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$86-Smain$TIM4_UPD_OVF_IRQHandler$85
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$87-Smain$TIM4_UPD_OVF_IRQHandler$86
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$89-Smain$TIM4_UPD_OVF_IRQHandler$87
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$90-Smain$TIM4_UPD_OVF_IRQHandler$89
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$92-Smain$TIM4_UPD_OVF_IRQHandler$90
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$94-Smain$TIM4_UPD_OVF_IRQHandler$92
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$96-Smain$TIM4_UPD_OVF_IRQHandler$94
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$TIM4_UPD_OVF_IRQHandler$100-Smain$TIM4_UPD_OVF_IRQHandler$96
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$TIM4_UPD_OVF_IRQHandler$101-Smain$TIM4_UPD_OVF_IRQHandler$100
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$EXTI_PORTA_IRQHandler$103)
	.db	3
	.sleb128	125
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTA_IRQHandler$105-Smain$EXTI_PORTA_IRQHandler$103
	.db	3
	.sleb128	49
	.db	1
	.db	9
	.dw	1+Smain$EXTI_PORTA_IRQHandler$106-Smain$EXTI_PORTA_IRQHandler$105
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$108)
	.db	3
	.sleb128	181
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTC_IRQHandler$110-Smain$EXTI_PORTC_IRQHandler$108
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTC_IRQHandler$116-Smain$EXTI_PORTC_IRQHandler$110
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTC_IRQHandler$118-Smain$EXTI_PORTC_IRQHandler$116
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTC_IRQHandler$124-Smain$EXTI_PORTC_IRQHandler$118
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTC_IRQHandler$126-Smain$EXTI_PORTC_IRQHandler$124
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$EXTI_PORTC_IRQHandler$127-Smain$EXTI_PORTC_IRQHandler$126
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$129)
	.db	3
	.sleb128	200
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$131-Smain$EXTI_PORTD_IRQHandler$129
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$137-Smain$EXTI_PORTD_IRQHandler$131
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$138-Smain$EXTI_PORTD_IRQHandler$137
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$139-Smain$EXTI_PORTD_IRQHandler$138
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$141-Smain$EXTI_PORTD_IRQHandler$139
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$142-Smain$EXTI_PORTD_IRQHandler$141
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$144-Smain$EXTI_PORTD_IRQHandler$142
	.db	3
	.sleb128	3
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$146-Smain$EXTI_PORTD_IRQHandler$144
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Smain$EXTI_PORTD_IRQHandler$151-Smain$EXTI_PORTD_IRQHandler$146
	.db	3
	.sleb128	27
	.db	1
	.db	9
	.dw	1+Smain$EXTI_PORTD_IRQHandler$152-Smain$EXTI_PORTD_IRQHandler$151
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$150)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$153)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$149)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$150)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$148)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$149)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$147)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$148)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$135)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$147)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$134)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$135)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$133)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$134)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$132)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$133)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$130)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$132)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$122)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$128)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$121)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$122)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$120)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$121)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$119)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$120)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$114)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$119)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$113)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$114)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$112)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$113)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$111)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$112)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$109)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$111)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$EXTI_PORTA_IRQHandler$104)
	.dw	0,(Smain$EXTI_PORTA_IRQHandler$107)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$98)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$102)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$97)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$98)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$83)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$97)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$82)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$83)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$81)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$82)
	.dw	2
	.db	120
	.sleb128	2
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$79)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$81)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$main$75)
	.dw	0,(Smain$main$77)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$main$72)
	.dw	0,(Smain$main$75)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$71)
	.dw	0,(Smain$main$72)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$main$70)
	.dw	0,(Smain$main$71)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$69)
	.dw	0,(Smain$main$70)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$65)
	.dw	0,(Smain$main$69)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$64)
	.dw	0,(Smain$main$65)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$63)
	.dw	0,(Smain$main$64)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$62)
	.dw	0,(Smain$main$63)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$58)
	.dw	0,(Smain$main$62)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$57)
	.dw	0,(Smain$main$58)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$55)
	.dw	0,(Smain$main$57)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$54)
	.dw	0,(Smain$main$55)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$53)
	.dw	0,(Smain$main$54)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$51)
	.dw	0,(Smain$main$53)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$50)
	.dw	0,(Smain$main$51)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$48)
	.dw	0,(Smain$main$50)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$47)
	.dw	0,(Smain$main$48)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$46)
	.dw	0,(Smain$main$47)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$44)
	.dw	0,(Smain$main$46)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$43)
	.dw	0,(Smain$main$44)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$42)
	.dw	0,(Smain$main$43)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$35)
	.dw	0,(Smain$main$42)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$34)
	.dw	0,(Smain$main$35)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$33)
	.dw	0,(Smain$main$34)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$31)
	.dw	0,(Smain$main$33)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$30)
	.dw	0,(Smain$main$31)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$main$29)
	.dw	0,(Smain$main$30)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$main$28)
	.dw	0,(Smain$main$29)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$27)
	.dw	0,(Smain$main$28)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$25)
	.dw	0,(Smain$main$27)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$24)
	.dw	0,(Smain$main$25)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$main$23)
	.dw	0,(Smain$main$24)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$main$22)
	.dw	0,(Smain$main$23)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$21)
	.dw	0,(Smain$main$22)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$19)
	.dw	0,(Smain$main$21)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$18)
	.dw	0,(Smain$main$19)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$17)
	.dw	0,(Smain$main$18)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$15)
	.dw	0,(Smain$main$17)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$14)
	.dw	0,(Smain$main$15)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$13)
	.dw	0,(Smain$main$14)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$11)
	.dw	0,(Smain$main$13)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$10)
	.dw	0,(Smain$main$11)
	.dw	2
	.db	120
	.sleb128	7
	.dw	0,(Smain$main$9)
	.dw	0,(Smain$main$10)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Smain$main$8)
	.dw	0,(Smain$main$9)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$main$7)
	.dw	0,(Smain$main$8)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$5)
	.dw	0,(Smain$main$7)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$4)
	.dw	0,(Smain$main$5)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Smain$main$2)
	.dw	0,(Smain$main$4)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Smain$main$1)
	.dw	0,(Smain$main$2)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	8
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	60
	.uleb128	12
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	13
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.uleb128	19
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "Source/User/main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.0 #11528"
	.db	0
	.uleb128	2
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	3
	.dw	0,106
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+332)
	.dw	0,62
	.uleb128	4
	.dw	0,(Smain$main$60)
	.dw	0,(Smain$main$68)
	.uleb128	0
	.uleb128	5
	.dw	0,178
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+252)
	.uleb128	6
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$84)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$99)
	.uleb128	4
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$88)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$91)
	.uleb128	4
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$93)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$95)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.ascii "EXTI_PORTA_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTA_IRQHandler)
	.dw	0,(XG$EXTI_PORTA_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+232)
	.uleb128	5
	.dw	0,275
	.ascii "EXTI_PORTC_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTC_IRQHandler)
	.dw	0,(XG$EXTI_PORTC_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+116)
	.uleb128	4
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$115)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$117)
	.uleb128	4
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$123)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$125)
	.uleb128	0
	.uleb128	5
	.dw	0,336
	.ascii "EXTI_PORTD_IRQHandler"
	.db	0
	.dw	0,(_EXTI_PORTD_IRQHandler)
	.dw	0,(XG$EXTI_PORTD_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	6
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$136)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$145)
	.uleb128	4
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$140)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$143)
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_nixie_always_on)
	.ascii "nixie_always_on"
	.db	0
	.db	1
	.dw	0,336
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_KEY_StateMachine_Enumeration)
	.ascii "KEY_StateMachine_Enumeration"
	.db	0
	.db	1
	.dw	0,336
	.uleb128	2
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	9
	.dw	0,554
	.ascii "__00000010"
	.db	0
	.db	8
	.uleb128	10
	.ascii "seconds"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,336
	.uleb128	10
	.ascii "minutes"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,336
	.uleb128	10
	.ascii "hours"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,336
	.uleb128	10
	.ascii "day"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,336
	.uleb128	10
	.ascii "date"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,336
	.uleb128	10
	.ascii "month"
	.db	0
	.db	2
	.db	35
	.uleb128	5
	.dw	0,336
	.uleb128	10
	.ascii "year"
	.db	0
	.db	2
	.db	35
	.uleb128	6
	.dw	0,422
	.uleb128	0
	.uleb128	11
	.db	5
	.db	3
	.dw	0,(_DS3231_TimeSturcture)
	.ascii "DS3231_TimeSturcture"
	.db	0
	.db	1
	.db	1
	.dw	0,438
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_ir_delay)
	.ascii "ir_delay"
	.db	0
	.db	1
	.dw	0,422
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_ir_double_click_delay)
	.ascii "ir_double_click_delay"
	.db	0
	.db	1
	.dw	0,336
	.uleb128	8
	.db	5
	.db	3
	.dw	0,(_key_delay_2s)
	.ascii "key_delay_2s"
	.db	0
	.db	1
	.dw	0,422
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,69
	.ascii "main"
	.db	0
	.dw	0,106
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,178
	.ascii "EXTI_PORTA_IRQHandler"
	.db	0
	.dw	0,215
	.ascii "EXTI_PORTC_IRQHandler"
	.db	0
	.dw	0,275
	.ascii "EXTI_PORTD_IRQHandler"
	.db	0
	.dw	0,353
	.ascii "nixie_always_on"
	.db	0
	.dw	0,381
	.ascii "KEY_StateMachine_Enumeration"
	.db	0
	.dw	0,554
	.ascii "DS3231_TimeSturcture"
	.db	0
	.dw	0,588
	.ascii "ir_delay"
	.db	0
	.dw	0,609
	.ascii "ir_double_click_delay"
	.db	0
	.dw	0,643
	.ascii "key_delay_2s"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,75
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$130)	;initial loc
	.dw	0,Smain$EXTI_PORTD_IRQHandler$153-Smain$EXTI_PORTD_IRQHandler$130
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$130)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$132)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$133)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$134)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$135)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$147)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$148)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$149)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Smain$EXTI_PORTD_IRQHandler$150)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,75
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$109)	;initial loc
	.dw	0,Smain$EXTI_PORTC_IRQHandler$128-Smain$EXTI_PORTC_IRQHandler$109
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$109)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$111)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$112)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$113)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$114)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$119)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$120)
	.db	14
	.uleb128	11
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$121)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Smain$EXTI_PORTC_IRQHandler$122)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$EXTI_PORTA_IRQHandler$104)	;initial loc
	.dw	0,Smain$EXTI_PORTA_IRQHandler$107-Smain$EXTI_PORTA_IRQHandler$104
	.db	1
	.dw	0,(Smain$EXTI_PORTA_IRQHandler$104)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,54
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$79)	;initial loc
	.dw	0,Smain$TIM4_UPD_OVF_IRQHandler$102-Smain$TIM4_UPD_OVF_IRQHandler$79
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$79)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$81)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$82)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$83)
	.db	14
	.uleb128	9
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$97)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Smain$TIM4_UPD_OVF_IRQHandler$98)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,362
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Smain$main$1)	;initial loc
	.dw	0,Smain$main$77-Smain$main$1
	.db	1
	.dw	0,(Smain$main$1)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$main$2)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$4)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$5)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$7)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$8)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$9)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$main$10)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$main$11)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$13)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$14)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$15)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$17)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$18)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$19)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$21)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$22)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$23)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$main$24)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$main$25)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$27)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$28)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$29)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Smain$main$30)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$main$31)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$33)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$34)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$35)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$42)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$43)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$44)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$46)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$47)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$48)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$50)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$51)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$53)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$54)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$55)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$57)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$58)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$62)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$63)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$64)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$65)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$69)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Smain$main$70)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$main$71)
	.db	14
	.uleb128	8
	.db	1
	.dw	0,(Smain$main$72)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Smain$main$75)
	.db	14
	.uleb128	2
