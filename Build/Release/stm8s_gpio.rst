                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_Init
                                     12 	.globl _GPIO_WriteHigh
                                     13 	.globl _GPIO_WriteLow
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
                                     51 ;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     52 ;	-----------------------------------------
                                     53 ;	 function GPIO_Init
                                     54 ;	-----------------------------------------
      0080C8                         55 _GPIO_Init:
      0080C8 52 05            [ 2]   56 	sub	sp, #5
                                     57 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0080CA 16 08            [ 2]   58 	ldw	y, (0x08, sp)
      0080CC 93               [ 1]   59 	ldw	x, y
      0080CD 1C 00 04         [ 2]   60 	addw	x, #0x0004
      0080D0 1F 01            [ 2]   61 	ldw	(0x01, sp), x
      0080D2 F6               [ 1]   62 	ld	a, (x)
      0080D3 88               [ 1]   63 	push	a
      0080D4 7B 0B            [ 1]   64 	ld	a, (0x0b, sp)
      0080D6 43               [ 1]   65 	cpl	a
      0080D7 6B 04            [ 1]   66 	ld	(0x04, sp), a
      0080D9 84               [ 1]   67 	pop	a
      0080DA 14 03            [ 1]   68 	and	a, (0x03, sp)
      0080DC 1E 01            [ 2]   69 	ldw	x, (0x01, sp)
      0080DE F7               [ 1]   70 	ld	(x), a
                                     71 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080DF 93               [ 1]   72 	ldw	x, y
      0080E0 5C               [ 1]   73 	incw	x
      0080E1 5C               [ 1]   74 	incw	x
      0080E2 1F 04            [ 2]   75 	ldw	(0x04, sp), x
                                     76 ;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0080E4 0D 0B            [ 1]   77 	tnz	(0x0b, sp)
      0080E6 2A 1E            [ 1]   78 	jrpl	00105$
                                     79 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080E8 90 F6            [ 1]   80 	ld	a, (y)
                                     81 ;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0080EA 88               [ 1]   82 	push	a
      0080EB 7B 0C            [ 1]   83 	ld	a, (0x0c, sp)
      0080ED A5 10            [ 1]   84 	bcp	a, #0x10
      0080EF 84               [ 1]   85 	pop	a
      0080F0 27 06            [ 1]   86 	jreq	00102$
                                     87 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080F2 1A 0A            [ 1]   88 	or	a, (0x0a, sp)
      0080F4 90 F7            [ 1]   89 	ld	(y), a
      0080F6 20 04            [ 2]   90 	jra	00103$
      0080F8                         91 00102$:
                                     92 ;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0080F8 14 03            [ 1]   93 	and	a, (0x03, sp)
      0080FA 90 F7            [ 1]   94 	ld	(y), a
      0080FC                         95 00103$:
                                     96 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080FC 1E 04            [ 2]   97 	ldw	x, (0x04, sp)
      0080FE F6               [ 1]   98 	ld	a, (x)
      0080FF 1A 0A            [ 1]   99 	or	a, (0x0a, sp)
      008101 1E 04            [ 2]  100 	ldw	x, (0x04, sp)
      008103 F7               [ 1]  101 	ld	(x), a
      008104 20 08            [ 2]  102 	jra	00106$
      008106                        103 00105$:
                                    104 ;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008106 1E 04            [ 2]  105 	ldw	x, (0x04, sp)
      008108 F6               [ 1]  106 	ld	a, (x)
      008109 14 03            [ 1]  107 	and	a, (0x03, sp)
      00810B 1E 04            [ 2]  108 	ldw	x, (0x04, sp)
      00810D F7               [ 1]  109 	ld	(x), a
      00810E                        110 00106$:
                                    111 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00810E 93               [ 1]  112 	ldw	x, y
      00810F 1C 00 03         [ 2]  113 	addw	x, #0x0003
      008112 F6               [ 1]  114 	ld	a, (x)
                                    115 ;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008113 88               [ 1]  116 	push	a
      008114 7B 0C            [ 1]  117 	ld	a, (0x0c, sp)
      008116 A5 40            [ 1]  118 	bcp	a, #0x40
      008118 84               [ 1]  119 	pop	a
      008119 27 05            [ 1]  120 	jreq	00108$
                                    121 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00811B 1A 0A            [ 1]  122 	or	a, (0x0a, sp)
      00811D F7               [ 1]  123 	ld	(x), a
      00811E 20 03            [ 2]  124 	jra	00109$
      008120                        125 00108$:
                                    126 ;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008120 14 03            [ 1]  127 	and	a, (0x03, sp)
      008122 F7               [ 1]  128 	ld	(x), a
      008123                        129 00109$:
                                    130 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008123 1E 01            [ 2]  131 	ldw	x, (0x01, sp)
      008125 F6               [ 1]  132 	ld	a, (x)
                                    133 ;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008126 88               [ 1]  134 	push	a
      008127 7B 0C            [ 1]  135 	ld	a, (0x0c, sp)
      008129 A5 20            [ 1]  136 	bcp	a, #0x20
      00812B 84               [ 1]  137 	pop	a
      00812C 27 07            [ 1]  138 	jreq	00111$
                                    139 ;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00812E 1A 0A            [ 1]  140 	or	a, (0x0a, sp)
      008130 1E 01            [ 2]  141 	ldw	x, (0x01, sp)
      008132 F7               [ 1]  142 	ld	(x), a
      008133 20 05            [ 2]  143 	jra	00113$
      008135                        144 00111$:
                                    145 ;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008135 14 03            [ 1]  146 	and	a, (0x03, sp)
      008137 1E 01            [ 2]  147 	ldw	x, (0x01, sp)
      008139 F7               [ 1]  148 	ld	(x), a
      00813A                        149 00113$:
                                    150 ;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
      00813A 5B 05            [ 2]  151 	addw	sp, #5
      00813C 81               [ 4]  152 	ret
                                    153 ;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    154 ;	-----------------------------------------
                                    155 ;	 function GPIO_WriteHigh
                                    156 ;	-----------------------------------------
      00813D                        157 _GPIO_WriteHigh:
                                    158 ;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00813D 1E 03            [ 2]  159 	ldw	x, (0x03, sp)
      00813F F6               [ 1]  160 	ld	a, (x)
      008140 1A 05            [ 1]  161 	or	a, (0x05, sp)
      008142 F7               [ 1]  162 	ld	(x), a
                                    163 ;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
      008143 81               [ 4]  164 	ret
                                    165 ;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    166 ;	-----------------------------------------
                                    167 ;	 function GPIO_WriteLow
                                    168 ;	-----------------------------------------
      008144                        169 _GPIO_WriteLow:
      008144 88               [ 1]  170 	push	a
                                    171 ;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008145 1E 04            [ 2]  172 	ldw	x, (0x04, sp)
      008147 F6               [ 1]  173 	ld	a, (x)
      008148 6B 01            [ 1]  174 	ld	(0x01, sp), a
      00814A 7B 06            [ 1]  175 	ld	a, (0x06, sp)
      00814C 43               [ 1]  176 	cpl	a
      00814D 14 01            [ 1]  177 	and	a, (0x01, sp)
      00814F F7               [ 1]  178 	ld	(x), a
                                    179 ;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
      008150 84               [ 1]  180 	pop	a
      008151 81               [ 4]  181 	ret
                                    182 	.area CODE
                                    183 	.area CONST
                                    184 	.area INITIALIZER
                                    185 	.area CABS (ABS)
