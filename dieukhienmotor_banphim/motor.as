opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 8 "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_tx_init
	FNCALL	_main,_rx_init
	FNCALL	_main,_sendstring
	FNCALL	_main,_pwm_10bit
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_pwm_10bit,___awdiv
	FNCALL	_sendstring,_sendchar
	FNROOT	_main
	FNCALL	_ngat,___ftge
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_v
	global	_rx_data
	global	_dem
	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_RCREG
_RCREG	set	26
	global	_TMR0
_TMR0	set	1
	global	_TMR2
_TMR2	set	17
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RCIF
_RCIF	set	101
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_TMR2ON
_TMR2ON	set	146
	global	_TXIF
_TXIF	set	100
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_BRGH
_BRGH	set	1218
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BRG16
_BRG16	set	3131
	
STR_3:	
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	49	;'1'
	retlw	76	;'L'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	117	;'u'
	retlw	0
psect	strings
	
STR_2:	
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_1:	
	retlw	49	;'1'
	retlw	0
psect	strings
	file	"motor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_dem:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_v:
       ds      3

_rx_data:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_tx_init
?_tx_init:	; 0 bytes @ 0x0
	global	?_rx_init
?_rx_init:	; 0 bytes @ 0x0
	global	?_sendstring
?_sendstring:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_sendchar
?_sendchar:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	3
	global	??_ngat
??_ngat:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
	global	??_isprint
??_isprint:	; 0 bytes @ 0x0
	global	??_tx_init
??_tx_init:	; 0 bytes @ 0x0
	global	??_rx_init
??_rx_init:	; 0 bytes @ 0x0
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	??_sendchar
??_sendchar:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	sendchar@data
sendchar@data:	; 1 bytes @ 0x0
	global	_isdigit$3673
_isdigit$3673:	; 1 bytes @ 0x0
	global	_isprint$3676
_isprint$3676:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	??_sendstring
??_sendstring:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	sendstring@s
sendstring@s:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0x8
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x8
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x8
	global	pwm_10bit@data_pwm
pwm_10bit@data_pwm:	; 2 bytes @ 0x8
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x9
	global	putch@c
putch@c:	; 1 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0xA
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0xC
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0xE
	ds	3
	global	printf@ap
printf@ap:	; 1 bytes @ 0x11
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x12
	ds	1
	global	printf@_val
printf@_val:	; 4 bytes @ 0x13
	ds	4
	global	printf@prec
printf@prec:	; 1 bytes @ 0x17
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x18
	ds	1
	global	printf@width
printf@width:	; 2 bytes @ 0x19
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x1B
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1C
;;Data sizes: Strings 17, constant 10, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      10
;; BANK0           80     28      32
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_3(CODE[13]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3155$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; sendstring@s	PTR const unsigned char  size(1) Largest target is 2
;;		 -> STR_2(CODE[2]), STR_1(CODE[2]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   _ngat->___ftge
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_printf
;;   _printf->___lwmod
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _pwm_10bit->___awdiv
;;   _sendstring->_sendchar
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ngat in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    2797
;;                           _lcd_init
;;                            _tx_init
;;                            _rx_init
;;                         _sendstring
;;                          _pwm_10bit
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              16    14      2    1807
;;                                             12 BANK0     16    14      2
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0     713
;;                                              9 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     691
;;                                              8 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     313
;;                                              5 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit                                            2     0      2     366
;;                                              8 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _sendstring                                           1     1      0      67
;;                                              1 BANK0      1     1      0
;;                           _sendchar
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     300
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 BANK0      5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _sendchar                                             1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ngat                                                 2     2      0     136
;;                                              6 COMMON     2     2      0
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (7) ___ftge                                               6     0      6     136
;;                                              0 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _tx_init
;;   _rx_init
;;   _sendstring
;;     _sendchar
;;   _pwm_10bit
;;     ___awdiv
;;   _lcd_gotoxy
;;     _lcd_put_byte
;;     _lcd_busy
;;   _printf
;;     _putch
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     _isdigit
;;     ___wmul
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;
;; _ngat (ROOT)
;;   ___ftge
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       9       2        0.0%
;;ABS                  0      0      2A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1C      20       5       40.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      33      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_init
;;		_tx_init
;;		_rx_init
;;		_sendstring
;;		_pwm_10bit
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l4653:	
;mophong_motor.c: 27: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	28
	
l4655:	
;mophong_motor.c: 28: lcd_init();
	fcall	_lcd_init
	line	29
	
l4657:	
;mophong_motor.c: 29: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	30
	
l4659:	
;mophong_motor.c: 30: TRISB0=0; TRISB1=0;
	bcf	(1072/8)^080h,(1072)&7
	
l4661:	
	bcf	(1073/8)^080h,(1073)&7
	line	31
	
l4663:	
;mophong_motor.c: 31: RB0=0; RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7
	
l4665:	
	bcf	(49/8),(49)&7
	line	32
	
l4667:	
;mophong_motor.c: 32: tx_init();
	fcall	_tx_init
	line	33
	
l4669:	
;mophong_motor.c: 33: rx_init();
	fcall	_rx_init
	line	35
	
l4671:	
;mophong_motor.c: 35: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	36
	
l4673:	
;mophong_motor.c: 36: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	37
	
l4675:	
;mophong_motor.c: 37: PS2 = 0; PS1 = 1; PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l4677:	
	bsf	(1033/8)^080h,(1033)&7
	
l4679:	
	bcf	(1032/8)^080h,(1032)&7
	line	38
	
l4681:	
;mophong_motor.c: 38: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	39
	
l4683:	
;mophong_motor.c: 39: T0IE = 1;
	bsf	(93/8),(93)&7
	line	40
	
l4685:	
;mophong_motor.c: 40: T0IF = 0;
	bcf	(90/8),(90)&7
	line	41
	
l4687:	
;mophong_motor.c: 41: GIE = 1;
	bsf	(95/8),(95)&7
	line	43
	
l4689:	
;mophong_motor.c: 43: TRISC0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	44
	
l4691:	
;mophong_motor.c: 44: TMR1CS = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(129/8),(129)&7
	line	45
	
l4693:	
;mophong_motor.c: 45: T1CKPS1 = 0; T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l4695:	
	bcf	(132/8),(132)&7
	line	46
	
l4697:	
;mophong_motor.c: 46: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	47
	
l4699:	
;mophong_motor.c: 47: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	48
	
l4701:	
;mophong_motor.c: 48: TMR1GE = 0;
	bcf	(134/8),(134)&7
	line	49
	
l4703:	
;mophong_motor.c: 49: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	51
	
l4705:	
;mophong_motor.c: 51: T2CKPS1=0; T2CKPS0=1;
	bcf	(145/8),(145)&7
	
l4707:	
	bsf	(144/8),(144)&7
	line	52
	
l4709:	
;mophong_motor.c: 52: TMR2 =0;
	clrf	(17)	;volatile
	line	53
	
l4711:	
;mophong_motor.c: 53: PR2= 249;
	movlw	(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	54
	
l4713:	
;mophong_motor.c: 54: CCP1CON=0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	55
	
l4715:	
;mophong_motor.c: 55: CCPR1L=124;
	movlw	(07Ch)
	movwf	(21)	;volatile
	line	56
	
l4717:	
;mophong_motor.c: 56: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	59
	
l4719:	
;mophong_motor.c: 58: {
;mophong_motor.c: 59: if (rx_data=='1') {RB0=1;RB1=0;sendstring("1");}
	movf	(_rx_data),w
	xorlw	031h
	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l2166
u1500:
	
l4721:	
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	
l4723:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_sendstring
	goto	l4727
	line	60
	
l2166:	
;mophong_motor.c: 60: else {RB0=0;RB1=1;sendstring("0");}
	bcf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	
l4725:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_sendstring
	line	62
	
l4727:	
;mophong_motor.c: 62: pwm_10bit(100);
	movlw	064h
	movwf	(?_pwm_10bit)
	clrf	(?_pwm_10bit+1)
	fcall	_pwm_10bit
	line	64
	
l4729:	
;mophong_motor.c: 64: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	65
	
l4731:	
;mophong_motor.c: 65: printf("CCPR1L: %05u",CCPR1L);
	movf	(21),w	;volatile
	movwf	(?_printf)
	clrf	(?_printf+1)
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_printf
	goto	l4719
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	69
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_3(13), 
;; Auto vars:     Size  Location     Type
;;  f               1   24[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(13), 
;;  _val            4   19[BANK0 ] struct .
;;  width           2   25[BANK0 ] int 
;;  c               1   27[BANK0 ] char 
;;  prec            1   23[BANK0 ] char 
;;  flag            1   18[BANK0 ] unsigned char 
;;  ap              1   17[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_putch
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l4577:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)
	line	540
	goto	l4651
	line	542
	
l4579:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u1371
	goto	u1370
u1371:
	goto	l4583
u1370:
	line	545
	
l4581:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l4651
	line	550
	
l4583:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	552
	clrf	(printf@flag)
	goto	l4589
	line	583
	
l2222:	
	line	584
	bsf	(printf@flag)+(2/8),(2)&7
	line	585
	
l4585:	
	incf	(printf@f),f
	line	555
	
l4589:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l2222
	goto	l4591
	opt asmopt_on

	line	601
	
l4591:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1381
	goto	u1380
u1381:
	goto	l4605
u1380:
	line	602
	
l4593:	
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	604
	
l4595:	
	movf	(printf@width+1),w
	movwf	(?___wmul+1)
	movf	(printf@width),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(printf@width)
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(printf@width)
	
l4597:	
	incf	(printf@f),f
	line	605
	
l4599:	
	movf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1391
	goto	u1390
u1391:
	goto	l4595
u1390:
	goto	l4605
	line	821
	
l4601:	
	movlw	(0C0h)
	iorwf	(printf@flag),f
	line	822
	goto	l4607
	line	638
	
l4605:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2252
	xorlw	117^0	; case 117
	skipnz
	goto	l4601
	goto	l4651
	opt asmopt_on

	line	1281
	
l4607:	
	movf	(printf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@_val+1)
	
l4609:	
	incf	(printf@ap),f
	incf	(printf@ap),f
	line	1300
	
l4611:	
	clrf	(printf@c)
	incf	(printf@c),f
	line	1301
	
l4617:	
	clrc
	rlf	(printf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	fcall	stringdir
	movwf	(??_printf+0)+0+1
	movf	1+(??_printf+0)+0,w
	subwf	(printf@_val+1),w
	skipz
	goto	u1405
	movf	0+(??_printf+0)+0,w
	subwf	(printf@_val),w
u1405:
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l4621
u1400:
	goto	l4625
	line	1300
	
l4621:	
	incf	(printf@c),f
	
l4623:	
	movf	(printf@c),w
	xorlw	05h
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l4617
u1410:
	line	1376
	
l4625:	
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	movf	(printf@width+1),w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u1425
	movf	(printf@width),w
	subwf	0+(??_printf+0)+0,w
u1425:

	skipnc
	goto	u1421
	goto	u1420
u1421:
	goto	l4629
u1420:
	line	1377
	
l4627:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printf@c),w
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	subwf	(printf@width),f
	movf	1+(??_printf+0)+0,w
	skipc
	decf	(printf@width+1),f
	subwf	(printf@width+1),f
	goto	l4631
	line	1379
	
l4629:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(printf@width)
	clrf	(printf@width+1)
	line	1382
	
l4631:	
	btfss	(printf@flag),(2)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l4639
u1430:
	line	1410
	
l4633:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1441
	goto	u1440
u1441:
	goto	l4645
u1440:
	line	1412
	
l4635:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l4637:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l4635
u1450:
	goto	l4645
	line	1423
	
l4639:	
	movf	(printf@width+1),w
	iorwf	(printf@width),w
	skipnz
	goto	u1461
	goto	u1460
u1461:
	goto	l4645
u1460:
	line	1425
	
l4641:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l4643:	
	movlw	-1
	addwf	(printf@width),f
	skipc
	decf	(printf@width+1),f
	movf	(((printf@width+1))),w
	iorwf	(((printf@width))),w
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l4641
u1470:
	line	1467
	
l4645:	
	movf	(printf@c),w
	movwf	(printf@prec)
	line	1469
	goto	l4649
	line	1484
	
l4647:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(printf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(printf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(printf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(printf@c)
	line	1516
	movf	(printf@c),w
	fcall	_putch
	line	1469
	
l4649:	
	decf	(printf@prec),f
	incf	((printf@prec)),w
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l4647
u1480:
	line	540
	
l4651:	
	movf	(printf@f),w
	incf	(printf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l4579
u1490:
	line	1533
	
l2252:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _putch *****************
;; Defined at:
;;		line 112 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	112
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	movwf	(putch@c)
	line	113
	
l4575:	
;mophong_motor.c: 113: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	114
	
l2198:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l4557:	
;lcd(16).c: 144: switch(c){
	goto	l4573
	line	146
	
l4559:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l4561:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1341
	goto	u1340
u1341:
	goto	l4561
u1340:
	goto	l1082
	line	150
	
l4563:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l1082
	line	153
	
l4565:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u1351
	goto	u1350
u1351:
	goto	l1082
u1350:
	line	154
	
l4567:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l4569:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1361
	goto	u1360
u1361:
	goto	l4569
u1360:
	goto	l1082
	line	144
	
l4573:	
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l4563
	xorlw	12^10	; case 12
	skipnz
	goto	l4559
	goto	l4565
	opt asmopt_on

	line	159
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_gotoxy
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    6[BANK0 ] unsigned char 
;;  address         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_lcd_putc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 1
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l4545:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u1320
	goto	l4549
u1320:
	line	166
	
l4547:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l4551
	line	168
	
l4549:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l4551:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l4553:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l4555:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l4555
u1330:
	line	173
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/60
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l4507:	
;lcd(16).c: 6: unsigned char i;
;lcd(16).c: 7: TRISD3 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	8
;lcd(16).c: 8: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	9
;lcd(16).c: 9: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	10
;lcd(16).c: 10: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	11
;lcd(16).c: 11: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	12
;lcd(16).c: 12: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	13
;lcd(16).c: 13: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	14
;lcd(16).c: 14: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	line	15
;lcd(16).c: 15: RD1 = 0;
	bcf	(65/8),(65)&7
	line	16
;lcd(16).c: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l4509:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1517:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1517
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1517
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1517
	nop2
opt asmopt_on

	line	21
	
l4511:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l4513:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1527:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1527
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1527
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1527
	nop2
opt asmopt_on

	line	23
;lcd(16).c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l4515:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u1537:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1537
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1537
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1537
	nop2
opt asmopt_on

	line	25
	
l4517:	
;lcd(16).c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd(16).c: 26: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1547:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1547
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1547
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1547
	nop2
opt asmopt_on

	line	27
;lcd(16).c: 27: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1557:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1557
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1557
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1557
	nop2
opt asmopt_on

	line	28
;lcd(16).c: 28: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u1567:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1567
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1567
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u1567
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l4519:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l4519
u1250:
	line	31
	
l4521:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l4523:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l4523
u1260:
	line	34
	
l4525:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l4527:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l4527
u1270:
	line	36
	
l4529:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l4531:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l4531
u1280:
	line	39
	
l4533:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l4535:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l4535
u1290:
	line	41
	
l4537:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l4539:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1301
	goto	u1300
u1301:
	goto	l4539
u1300:
	line	43
	
l4541:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l4543:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u1311
	goto	u1310
u1311:
	goto	l4543
u1310:
	line	45
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_pwm_10bit
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 105 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	105
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 4
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l4497:	
;mophong_motor.c: 106: CCPR1L=data_pwm/4;
	movlw	04h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(pwm_10bit@data_pwm+1),w
	movwf	1+(?___awdiv)+02h
	movf	(pwm_10bit@data_pwm),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	107
	
l4499:	
;mophong_motor.c: 107: DC1B1=DC1B0=0;
	bcf	(188/8),(188)&7
	bcf	(189/8),(189)&7
	line	108
	
l4501:	
;mophong_motor.c: 108: if((data_pwm &2) ==1) DC1B1 = 1;
	movf	(pwm_10bit@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l2193
u1230:
	
l4503:	
	bsf	(189/8),(189)&7
	
l2193:	
	line	109
;mophong_motor.c: 109: if((data_pwm &1) ==1) DC1B0 = 1;
	btfss	(pwm_10bit@data_pwm),(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l2195
u1240:
	
l4505:	
	bsf	(188/8),(188)&7
	line	110
	
l2195:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	_sendstring
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _sendstring *****************
;; Defined at:
;;		line 75 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(2), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  s               1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(2), STR_1(2), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_sendchar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	75
	global	__size_of_sendstring
	__size_of_sendstring	equ	__end_of_sendstring-_sendstring
	
_sendstring:	
	opt	stack 4
; Regs used in _sendstring: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;sendstring@s stored from wreg
	movwf	(sendstring@s)
	line	76
	
l4489:	
;mophong_motor.c: 76: while(*s){
	goto	l4495
	line	77
	
l4491:	
;mophong_motor.c: 77: sendchar(*s++);
	movf	(sendstring@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_sendchar
	
l4493:	
	incf	(sendstring@s),f
	line	76
	
l4495:	
	movf	(sendstring@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l4491
u1220:
	line	79
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of_sendstring
	__end_of_sendstring:
;; =============== function _sendstring ends ============

	signat	_sendstring,4216
	global	_lcd_busy
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 1
; Regs used in _lcd_busy: [wreg]
	line	50
	
l4475:	
;lcd(16).c: 48: unsigned char busy;
;lcd(16).c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd(16).c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd(16).c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd(16).c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd(16).c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd(16).c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
l4477:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1577:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1577
opt asmopt_on

	line	58
	
l4479:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1587:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1587
opt asmopt_on

	line	61
;lcd(16).c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(lcd_busy@busy)
	line	63
	
l4481:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1597:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1597
opt asmopt_on

	line	65
	
l4483:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u1607:
decfsz	(??_lcd_busy+0)+0,f
	goto	u1607
opt asmopt_on

	line	67
	
l4485:	
;lcd(16).c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd(16).c: 70: return busy;
	movf	(lcd_busy@busy),w
	line	71
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[BANK0 ] unsigned char 
;;  temp            1    4[BANK0 ] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 1
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l4439:	
;lcd(16).c: 107: BYTE_VAL temp;
;lcd(16).c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd(16).c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd(16).c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd(16).c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd(16).c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
l4441:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u1050
	goto	l4445
u1050:
	
l4443:	
	bsf	(65/8),(65)&7
	line	117
	
l4445:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1617:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1617
opt asmopt_on

	line	118
	
l4447:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1627:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1627
opt asmopt_on

	line	120
	
l4449:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l4451:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1061
	goto	u1060
	
u1061:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1074
u1060:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1074:
	line	126
	
l4453:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1081
	goto	u1080
	
u1081:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1094
u1080:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1094:
	line	127
	
l4455:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1101
	goto	u1100
	
u1101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1114
u1100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1114:
	line	128
	
l4457:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1121
	goto	u1120
	
u1121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1134
u1120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1134:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1637:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1637
opt asmopt_on

	line	130
	
l4459:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1647:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1647
opt asmopt_on

	line	132
	
l4461:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l4463:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1141
	goto	u1140
	
u1141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u1154
u1140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u1154:
	line	135
	
l4465:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u1161
	goto	u1160
	
u1161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u1174
u1160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u1174:
	line	136
	
l4467:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1181
	goto	u1180
	
u1181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u1194
u1180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u1194:
	line	137
	
l4469:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u1201
	goto	u1200
	
u1201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u1214
u1200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u1214:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1657:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1657
opt asmopt_on

	line	139
	
l4471:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u1667:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u1667
opt asmopt_on

	line	141
	
l4473:	
;lcd(16).c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	___awdiv
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pwm_10bit
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4375:	
	clrf	(___awdiv@sign)
	line	10
	
l4377:	
	btfss	(___awdiv@divisor+1),7
	goto	u951
	goto	u950
u951:
	goto	l4383
u950:
	line	11
	
l4379:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l4381:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l4383:	
	btfss	(___awdiv@dividend+1),7
	goto	u961
	goto	u960
u961:
	goto	l4389
u960:
	line	15
	
l4385:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4387:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l4389:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l4391:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l4411
u970:
	line	20
	
l4393:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l4397
	line	22
	
l4395:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l4397:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u981
	goto	u980
u981:
	goto	l4395
u980:
	line	26
	
l4399:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l4401:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u995
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u995:
	skipc
	goto	u991
	goto	u990
u991:
	goto	l4407
u990:
	line	28
	
l4403:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4405:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l4407:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l4409:	
	decfsz	(___awdiv@counter),f
	goto	u1001
	goto	u1000
u1001:
	goto	l4399
u1000:
	line	34
	
l4411:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1010
	goto	l4415
u1010:
	line	35
	
l4413:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l4415:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3401:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] unsigned int 
;;  dividend        2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4355:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l4371
u910:
	line	9
	
l4357:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4361
	line	11
	
l4359:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4361:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u921
	goto	u920
u921:
	goto	l4359
u920:
	line	15
	
l4363:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u935
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u935:
	skipc
	goto	u931
	goto	u930
u931:
	goto	l4367
u930:
	line	16
	
l4365:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4367:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4369:	
	decfsz	(___lwmod@counter),f
	goto	u941
	goto	u940
u941:
	goto	l4363
u940:
	line	20
	
l4371:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l3274:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[BANK0 ] unsigned int 
;;  counter         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4329:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4331:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u871
	goto	u870
u871:
	goto	l4351
u870:
	line	11
	
l4333:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l4337
	line	13
	
l4335:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l4337:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u881
	goto	u880
u881:
	goto	l4335
u880:
	line	17
	
l4339:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l4341:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u895
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u895:
	skipc
	goto	u891
	goto	u890
u891:
	goto	l4347
u890:
	line	19
	
l4343:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4345:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l4347:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l4349:	
	decfsz	(___lwdiv@counter),f
	goto	u901
	goto	u900
u901:
	goto	l4339
u900:
	line	25
	
l4351:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l3264:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4313:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4315:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u851
	goto	u850
u851:
	goto	l4319
u850:
	line	8
	
l4317:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l4319:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4321:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4323:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l4315
u860:
	line	12
	
l4325:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3254:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text368
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l4301:	
	clrf	(_isdigit$3673)
	
l4303:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u831
	goto	u830
u831:
	goto	l4309
u830:
	
l4305:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u841
	goto	u840
u841:
	goto	l4309
u840:
	
l4307:	
	clrf	(_isdigit$3673)
	incf	(_isdigit$3673),f
	
l4309:	
	rrf	(_isdigit$3673),w
	
	line	15
	
l3237:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_sendchar
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:

;; *************** function _sendchar *****************
;; Defined at:
;;		line 70 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sendstring
;; This function uses a non-reentrant model
;;
psect	text369
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	70
	global	__size_of_sendchar
	__size_of_sendchar	equ	__end_of_sendchar-_sendchar
	
_sendchar:	
	opt	stack 4
; Regs used in _sendchar: [wreg]
;sendchar@data stored from wreg
	movwf	(sendchar@data)
	line	71
	
l4269:	
;mophong_motor.c: 71: while (TXIF==0){}
	
l2173:	
	btfss	(100/8),(100)&7
	goto	u781
	goto	u780
u781:
	goto	l2173
u780:
	line	72
	
l4271:	
;mophong_motor.c: 72: TXREG = data;
	movf	(sendchar@data),w
	movwf	(25)	;volatile
	line	73
	
l2176:	
	return
	opt stack 0
GLOBAL	__end_of_sendchar
	__end_of_sendchar:
;; =============== function _sendchar ends ============

	signat	_sendchar,4216
	global	_rx_init
psect	text370,local,class=CODE,delta=2
global __ptext370
__ptext370:

;; *************** function _rx_init *****************
;; Defined at:
;;		line 126 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text370
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	126
	global	__size_of_rx_init
	__size_of_rx_init	equ	__end_of_rx_init-_rx_init
	
_rx_init:	
	opt	stack 5
; Regs used in _rx_init: [wreg]
	line	127
	
l4257:	
;mophong_motor.c: 127: SPBRGH = 0x02 ;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	128
;mophong_motor.c: 128: SPBRG = 0x08 ;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	129
	
l4259:	
;mophong_motor.c: 129: SYNC = 0; BRGH =1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l4261:	
	bsf	(1218/8)^080h,(1218)&7
	
l4263:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	130
	
l4265:	
;mophong_motor.c: 130: RX9 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	131
	
l4267:	
;mophong_motor.c: 131: SPEN =1;
	bsf	(199/8),(199)&7
	line	132
	
l2204:	
	return
	opt stack 0
GLOBAL	__end_of_rx_init
	__end_of_rx_init:
;; =============== function _rx_init ends ============

	signat	_rx_init,88
	global	_tx_init
psect	text371,local,class=CODE,delta=2
global __ptext371
__ptext371:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 116 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text371
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	116
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 5
; Regs used in _tx_init: [wreg]
	line	117
	
l4241:	
;mophong_motor.c: 117: SPBRGH = 0x02 ;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	118
;mophong_motor.c: 118: SPBRG = 0x08 ;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	119
	
l4243:	
;mophong_motor.c: 119: SYNC = 0; BRGH =1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l4245:	
	bsf	(1218/8)^080h,(1218)&7
	
l4247:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	120
	
l4249:	
;mophong_motor.c: 120: TX9 =0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	121
	
l4251:	
;mophong_motor.c: 121: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	122
	
l4253:	
;mophong_motor.c: 122: SPEN =1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	123
	
l4255:	
;mophong_motor.c: 123: CREN=1;
	bsf	(196/8),(196)&7
	line	124
	
l2201:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_isprint
psect	text372,local,class=CODE,delta=2
global __ptext372
__ptext372:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text372
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 2
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l4229:	
	clrf	(_isprint$3676)
	
l4231:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u761
	goto	u760
u761:
	goto	l4237
u760:
	
l4233:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l4237
u770:
	
l4235:	
	clrf	(_isprint$3676)
	incf	(_isprint$3676),f
	
l4237:	
	rrf	(_isprint$3676),w
	
	line	15
	
l3242:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text373,local,class=CODE,delta=2
global __ptext373
__ptext373:

;; *************** function _ngat *****************
;; Defined at:
;;		line 81 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text373
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dieukhienmotor_banphim\mophong_motor.c"
	line	81
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 1
; Regs used in _ngat: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ngat+0)
	movf	pclath,w
	movwf	(??_ngat+1)
	ljmp	_ngat
psect	text373
	line	82
	
i1l4273:	
;mophong_motor.c: 82: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u79_21
	goto	u79_20
u79_21:
	goto	i1l4291
u79_20:
	line	84
	
i1l4275:	
;mophong_motor.c: 83: {
;mophong_motor.c: 84: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	85
	
i1l4277:	
;mophong_motor.c: 85: if(dem ==250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l4291
u80_20:
	line	87
	
i1l4279:	
;mophong_motor.c: 86: {
;mophong_motor.c: 87: dem=0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	88
	
i1l4281:	
;mophong_motor.c: 88: xung=TMR1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	movf	(14+1),w	;volatile
	line	89
	
i1l4283:	
;mophong_motor.c: 89: if(v<20.0){CCPR1L=CCPR1L+2;}
	movf	(_v),w
	movwf	(?___ftge)
	movf	(_v+1),w
	movwf	(?___ftge+1)
	movf	(_v+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xa0
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l4287
u81_20:
	
i1l4285:	
	incf	(21),f
	incf	(21),f	;volatile
	goto	i1l4289
	line	90
	
i1l4287:	
;mophong_motor.c: 90: else{CCPR1L=CCPR1L-2;}
	movlw	(0FEh)
	addwf	(21),f	;volatile
	line	91
	
i1l4289:	
;mophong_motor.c: 91: TMR1=0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	94
	
i1l4291:	
;mophong_motor.c: 92: }
;mophong_motor.c: 93: }
;mophong_motor.c: 94: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l4295
u82_20:
	line	96
	
i1l4293:	
;mophong_motor.c: 95: {
;mophong_motor.c: 96: rx_data=RCREG;
	movf	(26),w	;volatile
	movwf	(_rx_data)
	line	98
	
i1l4295:	
;mophong_motor.c: 97: }
;mophong_motor.c: 98: RCIF=0;
	bcf	(101/8),(101)&7
	line	99
;mophong_motor.c: 99: TMR0 = 6;
	movlw	(06h)
	movwf	(1)	;volatile
	line	100
	
i1l4297:	
;mophong_motor.c: 100: T0IF = 0;
	bcf	(90/8),(90)&7
	line	101
;mophong_motor.c: 101: TMR0=7;
	movlw	(07h)
	movwf	(1)	;volatile
	line	102
	
i1l4299:	
;mophong_motor.c: 102: T0IF=0;
	bcf	(90/8),(90)&7
	line	103
	
i1l2190:	
	movf	(??_ngat+1),w
	movwf	pclath
	swapf	(??_ngat+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ngat
	__end_of_ngat:
;; =============== function _ngat ends ============

	signat	_ngat,88
	global	___ftge
psect	text374,local,class=CODE,delta=2
global __ptext374
__ptext374:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text374
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 1
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l4419:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u102_21
	goto	u102_20
u102_21:
	goto	i1l4423
u102_20:
	line	7
	
i1l4421:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
i1l4423:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u103_21
	goto	u103_20
u103_21:
	goto	i1l4427
u103_20:
	line	9
	
i1l4425:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
i1l4427:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l4429:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l4431:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u104_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u104_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u104_25:
	skipnc
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l4435
u104_20:
	
i1l4433:	
	clrc
	
	goto	i1l3420
	
i1l4435:	
	setc
	
	line	13
	
i1l3420:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
