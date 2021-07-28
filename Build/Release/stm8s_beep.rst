                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_beep
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _BEEP_DeInit
                                     12 	.globl _BEEP_Init
                                     13 	.globl _BEEP_Cmd
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
                                     51 ;	Source/Std_Lib/Src/stm8s_beep.c: 54: void BEEP_DeInit(void)
                                     52 ;	-----------------------------------------
                                     53 ;	 function BEEP_DeInit
                                     54 ;	-----------------------------------------
      008748                         55 _BEEP_DeInit:
                                     56 ;	Source/Std_Lib/Src/stm8s_beep.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
      008748 35 1F 50 F3      [ 1]   57 	mov	0x50f3+0, #0x1f
                                     58 ;	Source/Std_Lib/Src/stm8s_beep.c: 57: }
      00874C 81               [ 4]   59 	ret
                                     60 ;	Source/Std_Lib/Src/stm8s_beep.c: 67: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
                                     61 ;	-----------------------------------------
                                     62 ;	 function BEEP_Init
                                     63 ;	-----------------------------------------
      00874D                         64 _BEEP_Init:
                                     65 ;	Source/Std_Lib/Src/stm8s_beep.c: 73: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
      00874D C6 50 F3         [ 1]   66 	ld	a, 0x50f3
      008750 A4 1F            [ 1]   67 	and	a, #0x1f
      008752 A1 1F            [ 1]   68 	cp	a, #0x1f
      008754 26 10            [ 1]   69 	jrne	00102$
                                     70 ;	Source/Std_Lib/Src/stm8s_beep.c: 75: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
      008756 C6 50 F3         [ 1]   71 	ld	a, 0x50f3
      008759 A4 E0            [ 1]   72 	and	a, #0xe0
      00875B C7 50 F3         [ 1]   73 	ld	0x50f3, a
                                     74 ;	Source/Std_Lib/Src/stm8s_beep.c: 76: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
      00875E C6 50 F3         [ 1]   75 	ld	a, 0x50f3
      008761 AA 0B            [ 1]   76 	or	a, #0x0b
      008763 C7 50 F3         [ 1]   77 	ld	0x50f3, a
      008766                         78 00102$:
                                     79 ;	Source/Std_Lib/Src/stm8s_beep.c: 80: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
      008766 C6 50 F3         [ 1]   80 	ld	a, 0x50f3
      008769 A4 3F            [ 1]   81 	and	a, #0x3f
      00876B C7 50 F3         [ 1]   82 	ld	0x50f3, a
                                     83 ;	Source/Std_Lib/Src/stm8s_beep.c: 81: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
      00876E C6 50 F3         [ 1]   84 	ld	a, 0x50f3
      008771 1A 03            [ 1]   85 	or	a, (0x03, sp)
      008773 C7 50 F3         [ 1]   86 	ld	0x50f3, a
                                     87 ;	Source/Std_Lib/Src/stm8s_beep.c: 82: }
      008776 81               [ 4]   88 	ret
                                     89 ;	Source/Std_Lib/Src/stm8s_beep.c: 91: void BEEP_Cmd(FunctionalState NewState)
                                     90 ;	-----------------------------------------
                                     91 ;	 function BEEP_Cmd
                                     92 ;	-----------------------------------------
      008777                         93 _BEEP_Cmd:
                                     94 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      008777 C6 50 F3         [ 1]   95 	ld	a, 0x50f3
                                     96 ;	Source/Std_Lib/Src/stm8s_beep.c: 93: if (NewState != DISABLE)
      00877A 0D 03            [ 1]   97 	tnz	(0x03, sp)
      00877C 27 06            [ 1]   98 	jreq	00102$
                                     99 ;	Source/Std_Lib/Src/stm8s_beep.c: 96: BEEP->CSR |= BEEP_CSR_BEEPEN;
      00877E AA 20            [ 1]  100 	or	a, #0x20
      008780 C7 50 F3         [ 1]  101 	ld	0x50f3, a
      008783 81               [ 4]  102 	ret
      008784                        103 00102$:
                                    104 ;	Source/Std_Lib/Src/stm8s_beep.c: 101: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
      008784 A4 DF            [ 1]  105 	and	a, #0xdf
      008786 C7 50 F3         [ 1]  106 	ld	0x50f3, a
                                    107 ;	Source/Std_Lib/Src/stm8s_beep.c: 103: }
      008789 81               [ 4]  108 	ret
                                    109 	.area CODE
                                    110 	.area CONST
                                    111 	.area INITIALIZER
                                    112 	.area CABS (ABS)
