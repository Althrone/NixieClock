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
                                     14 	.globl _GPIO_ReadInputPin
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; absolute external ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DABS (ABS)
                                     27 
                                     28 ; default segment ordering for linker
                                     29 	.area HOME
                                     30 	.area GSINIT
                                     31 	.area GSFINAL
                                     32 	.area CONST
                                     33 	.area INITIALIZER
                                     34 	.area CODE
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area CODE
                                     52 ;	Source/Std_Lib/Src/stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     53 ;	-----------------------------------------
                                     54 ;	 function GPIO_Init
                                     55 ;	-----------------------------------------
      008218                         56 _GPIO_Init:
      008218 52 05            [ 2]   57 	sub	sp, #5
                                     58 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00821A 16 08            [ 2]   59 	ldw	y, (0x08, sp)
      00821C 93               [ 1]   60 	ldw	x, y
      00821D 1C 00 04         [ 2]   61 	addw	x, #0x0004
      008220 1F 01            [ 2]   62 	ldw	(0x01, sp), x
      008222 F6               [ 1]   63 	ld	a, (x)
      008223 88               [ 1]   64 	push	a
      008224 7B 0B            [ 1]   65 	ld	a, (0x0b, sp)
      008226 43               [ 1]   66 	cpl	a
      008227 6B 04            [ 1]   67 	ld	(0x04, sp), a
      008229 84               [ 1]   68 	pop	a
      00822A 14 03            [ 1]   69 	and	a, (0x03, sp)
      00822C 1E 01            [ 2]   70 	ldw	x, (0x01, sp)
      00822E F7               [ 1]   71 	ld	(x), a
                                     72 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00822F 93               [ 1]   73 	ldw	x, y
      008230 5C               [ 1]   74 	incw	x
      008231 5C               [ 1]   75 	incw	x
      008232 1F 04            [ 2]   76 	ldw	(0x04, sp), x
                                     77 ;	Source/Std_Lib/Src/stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008234 0D 0B            [ 1]   78 	tnz	(0x0b, sp)
      008236 2A 1E            [ 1]   79 	jrpl	00105$
                                     80 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008238 90 F6            [ 1]   81 	ld	a, (y)
                                     82 ;	Source/Std_Lib/Src/stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      00823A 88               [ 1]   83 	push	a
      00823B 7B 0C            [ 1]   84 	ld	a, (0x0c, sp)
      00823D A5 10            [ 1]   85 	bcp	a, #0x10
      00823F 84               [ 1]   86 	pop	a
      008240 27 06            [ 1]   87 	jreq	00102$
                                     88 ;	Source/Std_Lib/Src/stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008242 1A 0A            [ 1]   89 	or	a, (0x0a, sp)
      008244 90 F7            [ 1]   90 	ld	(y), a
      008246 20 04            [ 2]   91 	jra	00103$
      008248                         92 00102$:
                                     93 ;	Source/Std_Lib/Src/stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008248 14 03            [ 1]   94 	and	a, (0x03, sp)
      00824A 90 F7            [ 1]   95 	ld	(y), a
      00824C                         96 00103$:
                                     97 ;	Source/Std_Lib/Src/stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00824C 1E 04            [ 2]   98 	ldw	x, (0x04, sp)
      00824E F6               [ 1]   99 	ld	a, (x)
      00824F 1A 0A            [ 1]  100 	or	a, (0x0a, sp)
      008251 1E 04            [ 2]  101 	ldw	x, (0x04, sp)
      008253 F7               [ 1]  102 	ld	(x), a
      008254 20 08            [ 2]  103 	jra	00106$
      008256                        104 00105$:
                                    105 ;	Source/Std_Lib/Src/stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008256 1E 04            [ 2]  106 	ldw	x, (0x04, sp)
      008258 F6               [ 1]  107 	ld	a, (x)
      008259 14 03            [ 1]  108 	and	a, (0x03, sp)
      00825B 1E 04            [ 2]  109 	ldw	x, (0x04, sp)
      00825D F7               [ 1]  110 	ld	(x), a
      00825E                        111 00106$:
                                    112 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00825E 93               [ 1]  113 	ldw	x, y
      00825F 1C 00 03         [ 2]  114 	addw	x, #0x0003
      008262 F6               [ 1]  115 	ld	a, (x)
                                    116 ;	Source/Std_Lib/Src/stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008263 88               [ 1]  117 	push	a
      008264 7B 0C            [ 1]  118 	ld	a, (0x0c, sp)
      008266 A5 40            [ 1]  119 	bcp	a, #0x40
      008268 84               [ 1]  120 	pop	a
      008269 27 05            [ 1]  121 	jreq	00108$
                                    122 ;	Source/Std_Lib/Src/stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00826B 1A 0A            [ 1]  123 	or	a, (0x0a, sp)
      00826D F7               [ 1]  124 	ld	(x), a
      00826E 20 03            [ 2]  125 	jra	00109$
      008270                        126 00108$:
                                    127 ;	Source/Std_Lib/Src/stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008270 14 03            [ 1]  128 	and	a, (0x03, sp)
      008272 F7               [ 1]  129 	ld	(x), a
      008273                        130 00109$:
                                    131 ;	Source/Std_Lib/Src/stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008273 1E 01            [ 2]  132 	ldw	x, (0x01, sp)
      008275 F6               [ 1]  133 	ld	a, (x)
                                    134 ;	Source/Std_Lib/Src/stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008276 88               [ 1]  135 	push	a
      008277 7B 0C            [ 1]  136 	ld	a, (0x0c, sp)
      008279 A5 20            [ 1]  137 	bcp	a, #0x20
      00827B 84               [ 1]  138 	pop	a
      00827C 27 07            [ 1]  139 	jreq	00111$
                                    140 ;	Source/Std_Lib/Src/stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00827E 1A 0A            [ 1]  141 	or	a, (0x0a, sp)
      008280 1E 01            [ 2]  142 	ldw	x, (0x01, sp)
      008282 F7               [ 1]  143 	ld	(x), a
      008283 20 05            [ 2]  144 	jra	00113$
      008285                        145 00111$:
                                    146 ;	Source/Std_Lib/Src/stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008285 14 03            [ 1]  147 	and	a, (0x03, sp)
      008287 1E 01            [ 2]  148 	ldw	x, (0x01, sp)
      008289 F7               [ 1]  149 	ld	(x), a
      00828A                        150 00113$:
                                    151 ;	Source/Std_Lib/Src/stm8s_gpio.c: 131: }
      00828A 5B 05            [ 2]  152 	addw	sp, #5
      00828C 81               [ 4]  153 	ret
                                    154 ;	Source/Std_Lib/Src/stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    155 ;	-----------------------------------------
                                    156 ;	 function GPIO_WriteHigh
                                    157 ;	-----------------------------------------
      00828D                        158 _GPIO_WriteHigh:
                                    159 ;	Source/Std_Lib/Src/stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      00828D 1E 03            [ 2]  160 	ldw	x, (0x03, sp)
      00828F F6               [ 1]  161 	ld	a, (x)
      008290 1A 05            [ 1]  162 	or	a, (0x05, sp)
      008292 F7               [ 1]  163 	ld	(x), a
                                    164 ;	Source/Std_Lib/Src/stm8s_gpio.c: 157: }
      008293 81               [ 4]  165 	ret
                                    166 ;	Source/Std_Lib/Src/stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    167 ;	-----------------------------------------
                                    168 ;	 function GPIO_WriteLow
                                    169 ;	-----------------------------------------
      008294                        170 _GPIO_WriteLow:
      008294 88               [ 1]  171 	push	a
                                    172 ;	Source/Std_Lib/Src/stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008295 1E 04            [ 2]  173 	ldw	x, (0x04, sp)
      008297 F6               [ 1]  174 	ld	a, (x)
      008298 6B 01            [ 1]  175 	ld	(0x01, sp), a
      00829A 7B 06            [ 1]  176 	ld	a, (0x06, sp)
      00829C 43               [ 1]  177 	cpl	a
      00829D 14 01            [ 1]  178 	and	a, (0x01, sp)
      00829F F7               [ 1]  179 	ld	(x), a
                                    180 ;	Source/Std_Lib/Src/stm8s_gpio.c: 170: }
      0082A0 84               [ 1]  181 	pop	a
      0082A1 81               [ 4]  182 	ret
                                    183 ;	Source/Std_Lib/Src/stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    184 ;	-----------------------------------------
                                    185 ;	 function GPIO_ReadInputPin
                                    186 ;	-----------------------------------------
      0082A2                        187 _GPIO_ReadInputPin:
                                    188 ;	Source/Std_Lib/Src/stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      0082A2 1E 03            [ 2]  189 	ldw	x, (0x03, sp)
      0082A4 E6 01            [ 1]  190 	ld	a, (0x1, x)
      0082A6 14 05            [ 1]  191 	and	a, (0x05, sp)
                                    192 ;	Source/Std_Lib/Src/stm8s_gpio.c: 216: }
      0082A8 81               [ 4]  193 	ret
                                    194 	.area CODE
                                    195 	.area CONST
                                    196 	.area INITIALIZER
                                    197 	.area CABS (ABS)
