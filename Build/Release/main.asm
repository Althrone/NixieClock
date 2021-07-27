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
	.globl _ir_always_on
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
_ir_always_on::
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
;	Source/User/main.c: 15: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	sub	sp, #3
;	Source/User/main.c: 18: CLK_HSECmd(ENABLE);
	push	#0x01
	call	_CLK_HSECmd
	pop	a
;	Source/User/main.c: 19: CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO,CLK_SOURCE_HSE,DISABLE,CLK_CURRENTCLOCKSTATE_DISABLE);//8MHz
	push	#0x00
	push	#0x00
	push	#0xb4
	push	#0x01
	call	_CLK_ClockSwitchConfig
	addw	sp, #4
;	Source/User/main.c: 22: ITC_SetSoftwarePriority(ITC_IRQ_PORTD,ITC_PRIORITYLEVEL_1);
	push	#0x01
	push	#0x06
	call	_ITC_SetSoftwarePriority
	popw	x
;	Source/User/main.c: 23: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x03
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	Source/User/main.c: 24: GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_IN_FL_IT);
	push	#0x20
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/User/main.c: 27: GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_IT);//GPIO_PIN_3
	push	#0x60
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	Source/User/main.c: 28: EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC,EXTI_SENSITIVITY_FALL_ONLY);
	push	#0x02
	push	#0x02
	call	_EXTI_SetExtIntSensitivity
	popw	x
;	Source/User/main.c: 29: rim();
	rim
;	Source/User/main.c: 31: GPS_Init();//PD5 PD6
	call	_GPS_Init
;	Source/User/main.c: 33: NIXIE_Init();//PC5 PC6 PC7
	call	_NIXIE_Init
;	Source/User/main.c: 35: for(uint8_t i=0;i<10;++i)
	clr	(0x01, sp)
00114$:
	ld	a, (0x01, sp)
	cp	a, #0x0a
	jrnc	00103$
;	Source/User/main.c: 37: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
;	Source/User/main.c: 38: NIXIE_DisplayTime(i*10+i,i*10+i);
	ld	a, (0x01, sp)
	ld	xl, a
	ld	a, #0x0a
	mul	x, a
	ld	a, (0x01, sp)
	pushw	x
	add	a, (2, sp)
	popw	x
	push	a
	push	a
	call	_NIXIE_DisplayTime
	popw	x
;	Source/User/main.c: 39: for(uint16_t k=0;k<100;++k)
	clrw	x
	ldw	(0x02, sp), x
00111$:
	ldw	x, (0x02, sp)
	cpw	x, #0x0064
	jrnc	00115$
;	Source/User/main.c: 41: for(uint16_t j=0;j<1000;++j);
	clrw	x
00108$:
	ldw	y, x
	cpw	y, #0x03e8
	jrnc	00112$
	incw	x
	jra	00108$
00112$:
;	Source/User/main.c: 39: for(uint16_t k=0;k<100;++k)
	ldw	x, (0x02, sp)
	incw	x
	ldw	(0x02, sp), x
	jra	00111$
00115$:
;	Source/User/main.c: 35: for(uint8_t i=0;i<10;++i)
	inc	(0x01, sp)
	jra	00114$
00103$:
;	Source/User/main.c: 44: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
;	Source/User/main.c: 46: DS3231_Init();
	call	_DS3231_Init
;	Source/User/main.c: 49: TIM4_TimeBaseInit(TIM4_PRESCALER_128,250);//4ms
	push	#0xfa
	push	#0x07
	call	_TIM4_TimeBaseInit
	popw	x
;	Source/User/main.c: 50: TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
	push	#0x01
	push	#0x01
	call	_TIM4_ITConfig
	popw	x
;	Source/User/main.c: 51: TIM4_ARRPreloadConfig(ENABLE);
	push	#0x01
	call	_TIM4_ARRPreloadConfig
	pop	a
;	Source/User/main.c: 52: ITC_SetSoftwarePriority(ITC_IRQ_TIM4_OVF,ITC_PRIORITYLEVEL_1);
	push	#0x01
	push	#0x17
	call	_ITC_SetSoftwarePriority
	popw	x
;	Source/User/main.c: 53: TIM4_Cmd(ENABLE);
	push	#0x01
	call	_TIM4_Cmd
	pop	a
;	Source/User/main.c: 55: while(1)
00105$:
;	Source/User/main.c: 58: NIXIE_DisplayTime(GPS_TimeDataSturcture.hour,GPS_TimeDataSturcture.min);
	ld	a, _GPS_TimeDataSturcture+19
	ld	xl, a
	ld	a, _GPS_TimeDataSturcture+18
	pushw	x
	addw	sp, #1
	push	a
	call	_NIXIE_DisplayTime
	popw	x
;	Source/User/main.c: 60: DS3231_GetTime();
	call	_DS3231_GetTime
	jra	00105$
;	Source/User/main.c: 63: }
	addw	sp, #3
	ret
;	Source/User/main.c: 72: void TIM4_UPD_OVF_IRQHandler(void) __interrupt(23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
	div	x, a
;	Source/User/main.c: 75: if(TIM4_GetITStatus(TIM4_IT_UPDATE)==SET)
	push	#0x01
	call	_TIM4_GetITStatus
	addw	sp, #1
	dec	a
	jrne	00110$
;	Source/User/main.c: 86: if(ir_double_click_delay>0)//双击计时
	tnz	_ir_double_click_delay+0
	jreq	00102$
;	Source/User/main.c: 87: --ir_double_click_delay;
	dec	_ir_double_click_delay+0
00102$:
;	Source/User/main.c: 93: if(ir_delay>0)
;	Source/User/main.c: 94: --ir_delay;
	ldw	x, _ir_delay+0
	jreq	00104$
	decw	x
	ldw	_ir_delay+0, x
00104$:
;	Source/User/main.c: 95: if((ir_delay==0)&&(ir_always_on==RESET))
	ldw	x, _ir_delay+0
	jrne	00106$
	tnz	_ir_always_on+0
	jrne	00106$
;	Source/User/main.c: 98: tube_state=DISABLE;
	clr	_tube_state+0
00106$:
;	Source/User/main.c: 101: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	push	#0x01
	call	_TIM4_ClearITPendingBit
	pop	a
00110$:
;	Source/User/main.c: 103: }
	iret
;	Source/User/main.c: 110: void EXTI_PORTA_IRQHandler(void) __interrupt(3)
;	-----------------------------------------
;	 function EXTI_PORTA_IRQHandler
;	-----------------------------------------
_EXTI_PORTA_IRQHandler:
;	Source/User/main.c: 159: }
	iret
;	Source/User/main.c: 166: void EXTI_PORTC_IRQHandler(void) __interrupt(5)
;	-----------------------------------------
;	 function EXTI_PORTC_IRQHandler
;	-----------------------------------------
_EXTI_PORTC_IRQHandler:
	div	x, a
;	Source/User/main.c: 168: if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_3)==RESET)
	push	#0x08
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00104$
;	Source/User/main.c: 171: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
	jra	00106$
00104$:
;	Source/User/main.c: 173: else if(GPIO_ReadInputPin(GPIOC,GPIO_PIN_4)==RESET)
	push	#0x10
	push	#0x0a
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00106$
;	Source/User/main.c: 176: key_delay_2s=DELAY_2S;
	ldw	x, #0x01f4
	ldw	_key_delay_2s+0, x
00106$:
;	Source/User/main.c: 178: }
	iret
;	Source/User/main.c: 185: void EXTI_PORTD_IRQHandler(void) __interrupt(6)
;	-----------------------------------------
;	 function EXTI_PORTD_IRQHandler
;	-----------------------------------------
_EXTI_PORTD_IRQHandler:
	div	x, a
;	Source/User/main.c: 187: if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_2)==RESET)
	push	#0x04
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
	tnz	a
	jrne	00107$
;	Source/User/main.c: 190: tube_state=ENABLE;
	mov	_tube_state+0, #0x01
;	Source/User/main.c: 192: ir_delay=DELAY_10S;
	ldw	x, #0x09c4
	ldw	_ir_delay+0, x
;	Source/User/main.c: 193: if(ir_double_click_delay>0)//相当于20ms内又触发了红外
	tnz	_ir_double_click_delay+0
	jreq	00102$
;	Source/User/main.c: 195: ir_always_on=~ir_always_on;
	cpl	_ir_always_on+0
;	Source/User/main.c: 196: ir_double_click_delay=0;
	clr	_ir_double_click_delay+0
	jra	00109$
00102$:
;	Source/User/main.c: 199: ir_double_click_delay=DELAY_2S;
	mov	_ir_double_click_delay+0, #0xf4
	jra	00109$
00107$:
;	Source/User/main.c: 201: else if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_3)==RESET)//key1
	push	#0x08
	push	#0x0f
	push	#0x50
	call	_GPIO_ReadInputPin
	addw	sp, #3
00109$:
;	Source/User/main.c: 228: }
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__ir_always_on:
	.db #0x00	; 0
__xinit__KEY_StateMachine_Enumeration:
	.db #0x00	; 0
	.area CABS (ABS)
