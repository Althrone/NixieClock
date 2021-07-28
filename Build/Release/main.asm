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
_ir_delay::
	.ds 2
_ir_double_click_delay::
	.ds 1
_key_delay_2s::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_nixie_always_on::
	.ds 1
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
;	Source/User/main.c: 32: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	pushw	x
;	Source/User/main.c: 35: CLK_HSECmd(ENABLE);
	push	#0x01
	call	_CLK_HSECmd
	pop	a
;	Source/User/main.c: 36: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz
	push	#0x00
	push	#0x00
	push	#0xb4
	push	#0x01
	call	_CLK_ClockSwitchConfig
	addw	sp, #4
;	Source/User/main.c: 39: ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
	push	#0x01
	push	#0x06
	call	_ITC_SetSoftwarePriority
	popw	x
;	Source/User/main.c: 40: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x03
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	Source/User/main.c: 41: GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
	push	#0x20
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/User/main.c: 44: GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
	push	#0x60
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/User/main.c: 45: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	Source/User/main.c: 46: rim();
	rim
;	Source/User/main.c: 48: GPS_Init();//PD5 PD6
	call	_GPS_Init
;	Source/User/main.c: 50: NIXIE_Init();//PC5 PC6 PC7
	call	_NIXIE_Init
;	Source/User/main.c: 51: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
;	Source/User/main.c: 53: DS3231_Init();
	call	_DS3231_Init
;	Source/User/main.c: 56: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
	push	#0xfa
	push	#0x07
	call	_TIM4_TimeBaseInit
	popw	x
;	Source/User/main.c: 57: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM4_ITConfig
	popw	x
;	Source/User/main.c: 58: TIM4_ARRPreloadConfig(ENABLE);
	push	#0x01
	call	_TIM4_ARRPreloadConfig
	pop	a
;	Source/User/main.c: 59: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
	push	#0x01
	push	#0x17
	call	_ITC_SetSoftwarePriority
	popw	x
;	Source/User/main.c: 60: TIM4_Cmd(ENABLE);
	push	#0x01
	call	_TIM4_Cmd
	pop	a
;	Source/User/main.c: 65: while(1)
00105$:
;	Source/User/main.c: 69: NIXIE_DisplayTime(DS3231_TimeSturcture.hours,DS3231_TimeSturcture.minutes);
	ldw	x, #(_DS3231_TimeSturcture + 0)+1
	ldw	(0x01, sp), x
	ld	a, (x)
	ld	xl, a
	ld	a, _DS3231_TimeSturcture+2
	pushw	x
	addw	sp, #1
	push	a
	call	_NIXIE_DisplayTime
	popw	x
;	Source/User/main.c: 70: DS3231_GetTime();
	call	_DS3231_GetTime
;	Source/User/main.c: 72: if((DS3231_TimeSturcture.minutes%10==0)&&(DS3231_TimeSturcture.seconds==0))
	ldw	x, (0x01, sp)
	ld	a, (x)
	clrw	x
	ld	xl, a
	push	#0x0a
	push	#0x00
	pushw	x
	call	__modsint
	addw	sp, #4
	tnzw	x
	jrne	00105$
	ld	a, _DS3231_TimeSturcture+0
	jrne	00105$
;	Source/User/main.c: 73: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
	jra	00105$
;	Source/User/main.c: 76: }
	addw	sp, #2
	ret
;	Source/User/main.c: 85: void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
	div	x, a
;	Source/User/main.c: 88: if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
	push	#0x01
	call	_TIM4_GetITStatus
	addw	sp, #1
	dec	a
	jrne	00110$
;	Source/User/main.c: 99: if(ir_double_click_delay>0)//双击计时
	tnz	_ir_double_click_delay+0
	jreq	00102$
;	Source/User/main.c: 100: --ir_double_click_delay;
	dec	_ir_double_click_delay+0
00102$:
;	Source/User/main.c: 106: if(ir_delay>0)
;	Source/User/main.c: 108: --ir_delay;
	ldw	x, _ir_delay+0
	jreq	00104$
	decw	x
	ldw	_ir_delay+0, x
;	Source/User/main.c: 109: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
00104$:
;	Source/User/main.c: 111: if((ir_delay==0)&&(nixie_always_on==RESET))
	ldw	x, _ir_delay+0
	jrne	00106$
	tnz	_nixie_always_on+0
	jrne	00106$
;	Source/User/main.c: 114: tube_state=DISABLE;
	clr	_tube_state+0
00106$:
;	Source/User/main.c: 117: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	push	#0x01
	call	_TIM4_ClearITPendingBit
	pop	a
00110$:
;	Source/User/main.c: 119: }
	iret
;	Source/User/main.c: 126: void EXTI_PORTA_IRQHandler(void) __interrupt(3)
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
_EXTI_PORTA_IRQHandler:
;	Source/User/main.c: 175: }
	iret
;	Source/User/main.c: 182: void EXTI_PORTC_IRQHandler(void) __interrupt(5)
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
	div	x, a
;	Source/User/main.c: 184: if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00104$
;	Source/User/main.c: 187: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
	jra	00106$
00104$:
;	Source/User/main.c: 189: else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
	push	#0x10
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00106$
;	Source/User/main.c: 192: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
00106$:
;	Source/User/main.c: 194: }
	iret
;	Source/User/main.c: 201: void EXTI_PORTD_IRQHandler(void) __interrupt(6)
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
_EXTI_PORTD_IRQHandler:
	div	x, a
;	Source/User/main.c: 203: if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00107$
;	Source/User/main.c: 206: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
;	Source/User/main.c: 208: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
;	Source/User/main.c: 209: if(ir_double_click_delay>0)//相当于20ms内又触发了红外
	tnz	_ir_double_click_delay+0
	jreq	00102$
;	Source/User/main.c: 211: nixie_always_on=~nixie_always_on;
	cpl	_nixie_always_on+0
;	Source/User/main.c: 212: ir_double_click_delay=0;
	clr	_ir_double_click_delay+0
	jra	00109$
00102$:
;	Source/User/main.c: 215: ir_double_click_delay=DELAY_2S;
	mov	_ir_double_click_delay+0, #0xf4
	jra	00109$
00107$:
;	Source/User/main.c: 217: else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
	push	#0x08
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
00109$:
;	Source/User/main.c: 244: }
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__nixie_always_on:
	.db #0x00	; 0
__xinit__KEY_StateMachine_Enumeration:
	.db #0x00	; 0
	.area CABS (ABS)
