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
                                     11 	.globl _main
                                     12 	.globl _DS3231_GetTime
                                     13 	.globl _DS3231_Init
                                     14 	.globl _NIXIE_DisplayTime
                                     15 	.globl _NIXIE_Init
                                     16 	.globl _GPS_Init
                                     17 	.globl _CLK_DeInit
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
                                     26 ;--------------------------------------------------------
                                     27 ; Stack segment in internal ram 
                                     28 ;--------------------------------------------------------
                                     29 	.area	SSEG
      FFFFFF                         30 __start__stack:
      FFFFFF                         31 	.ds	1
                                     32 
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 
                                     38 ; default segment ordering for linker
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area CONST
                                     43 	.area INITIALIZER
                                     44 	.area CODE
                                     45 
                                     46 ;--------------------------------------------------------
                                     47 ; interrupt vector 
                                     48 ;--------------------------------------------------------
                                     49 	.area HOME
      008000                         50 __interrupt_vect:
      008000 82 00 80 57             51 	int s_GSINIT ; reset
      008004 82 00 00 00             52 	int 0x000000 ; trap
      008008 82 00 00 00             53 	int 0x000000 ; int0
      00800C 82 00 00 00             54 	int 0x000000 ; int1
      008010 82 00 00 00             55 	int 0x000000 ; int2
      008014 82 00 00 00             56 	int 0x000000 ; int3
      008018 82 00 00 00             57 	int 0x000000 ; int4
      00801C 82 00 00 00             58 	int 0x000000 ; int5
      008020 82 00 00 00             59 	int 0x000000 ; int6
      008024 82 00 00 00             60 	int 0x000000 ; int7
      008028 82 00 00 00             61 	int 0x000000 ; int8
      00802C 82 00 00 00             62 	int 0x000000 ; int9
      008030 82 00 00 00             63 	int 0x000000 ; int10
      008034 82 00 00 00             64 	int 0x000000 ; int11
      008038 82 00 00 00             65 	int 0x000000 ; int12
      00803C 82 00 00 00             66 	int 0x000000 ; int13
      008040 82 00 00 00             67 	int 0x000000 ; int14
      008044 82 00 00 00             68 	int 0x000000 ; int15
      008048 82 00 00 00             69 	int 0x000000 ; int16
      00804C 82 00 00 00             70 	int 0x000000 ; int17
      008050 82 00 8B F6             71 	int _UART1_RX_IRQHandler ; int18
                                     72 ;--------------------------------------------------------
                                     73 ; global & static initialisations
                                     74 ;--------------------------------------------------------
                                     75 	.area HOME
                                     76 	.area GSINIT
                                     77 	.area GSFINAL
                                     78 	.area GSINIT
      008057                         79 __sdcc_gs_init_startup:
      008057                         80 __sdcc_init_data:
                                     81 ; stm8_genXINIT() start
      008057 AE 00 20         [ 2]   82 	ldw x, #l_DATA
      00805A 27 07            [ 1]   83 	jreq	00002$
      00805C                         84 00001$:
      00805C 72 4F 00 00      [ 1]   85 	clr (s_DATA - 1, x)
      008060 5A               [ 2]   86 	decw x
      008061 26 F9            [ 1]   87 	jrne	00001$
      008063                         88 00002$:
      008063 AE 00 2D         [ 2]   89 	ldw	x, #l_INITIALIZER
      008066 27 09            [ 1]   90 	jreq	00004$
      008068                         91 00003$:
      008068 D6 80 7F         [ 1]   92 	ld	a, (s_INITIALIZER - 1, x)
      00806B D7 00 20         [ 1]   93 	ld	(s_INITIALIZED - 1, x), a
      00806E 5A               [ 2]   94 	decw	x
      00806F 26 F7            [ 1]   95 	jrne	00003$
      008071                         96 00004$:
                                     97 ; stm8_genXINIT() end
                                     98 	.area GSFINAL
      008071 CC 80 54         [ 2]   99 	jp	__sdcc_program_startup
                                    100 ;--------------------------------------------------------
                                    101 ; Home
                                    102 ;--------------------------------------------------------
                                    103 	.area HOME
                                    104 	.area HOME
      008054                        105 __sdcc_program_startup:
      008054 CC 80 AD         [ 2]  106 	jp	_main
                                    107 ;	return from main will return to caller
                                    108 ;--------------------------------------------------------
                                    109 ; code
                                    110 ;--------------------------------------------------------
                                    111 	.area CODE
                                    112 ;	Source/User/main.c: 3: int main(void)
                                    113 ;	-----------------------------------------
                                    114 ;	 function main
                                    115 ;	-----------------------------------------
      0080AD                        116 _main:
                                    117 ;	Source/User/main.c: 5: CLK_DeInit();//全部外设的时钟都打开了
      0080AD CD 81 52         [ 4]  118 	call	_CLK_DeInit
                                    119 ;	Source/User/main.c: 6: rim();
      0080B0 9A               [ 1]  120 	rim
                                    121 ;	Source/User/main.c: 8: GPS_Init();//PD5 PD6
      0080B1 CD 8B 70         [ 4]  122 	call	_GPS_Init
                                    123 ;	Source/User/main.c: 9: NIXIE_Init();//PC5 PC6 PC7
      0080B4 CD 87 BD         [ 4]  124 	call	_NIXIE_Init
                                    125 ;	Source/User/main.c: 10: DS3231_Init();
      0080B7 CD 8A 7D         [ 4]  126 	call	_DS3231_Init
                                    127 ;	Source/User/main.c: 11: while(1)
      0080BA                        128 00102$:
                                    129 ;	Source/User/main.c: 13: NIXIE_DisplayTime(1,2);
      0080BA 4B 02            [ 1]  130 	push	#0x02
      0080BC 4B 01            [ 1]  131 	push	#0x01
      0080BE CD 88 99         [ 4]  132 	call	_NIXIE_DisplayTime
      0080C1 85               [ 2]  133 	popw	x
                                    134 ;	Source/User/main.c: 14: DS3231_GetTime();
      0080C2 CD 8A 80         [ 4]  135 	call	_DS3231_GetTime
      0080C5 20 F3            [ 2]  136 	jra	00102$
                                    137 ;	Source/User/main.c: 16: }
      0080C7 81               [ 4]  138 	ret
                                    139 	.area CODE
                                    140 	.area CONST
                                    141 	.area INITIALIZER
                                    142 	.area CABS (ABS)
