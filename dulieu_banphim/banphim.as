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
# 8 "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_pwm_10bit
	FNCALL	_main,_tx_init
	FNCALL	_main,_send_string
	FNCALL	_main,___altoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,_sprintf
	FNCALL	_main,___ftge
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_printf,__doprnt
	FNCALL	_sprintf,__doprnt
	FNCALL	__doprnt,Fake
	FNCALL	__doprnt,_putch
	FNCALL	__doprnt,_isdigit
	FNCALL	__doprnt,___wmul
	FNCALL	__doprnt,___ftge
	FNCALL	__doprnt,___ftneg
	FNCALL	__doprnt,___awdiv
	FNCALL	__doprnt,_scale
	FNCALL	__doprnt,___ftmul
	FNCALL	__doprnt,_fround
	FNCALL	__doprnt,___ftadd
	FNCALL	__doprnt,___fttol
	FNCALL	__doprnt,__div_to_l_
	FNCALL	__doprnt,__tdiv_to_l_
	FNCALL	__doprnt,___lltoft
	FNCALL	__doprnt,___ftsub
	FNCALL	__doprnt,___lldiv
	FNCALL	__doprnt,___llmod
	FNCALL	_putch,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___bmul
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	___lltoft,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_send_string,_send_char
	FNCALL	_pwm_10bit,___awdiv
	FNROOT	_main
	FNCALL	_ngat,_abs
	FNCALL	intlevel1,_ngat
	global	intlevel1
	FNROOT	intlevel1
	global	__npowers_
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
	global	__powers_
	global	_dpowers
	global	_xung_old
	global	_dem
	global	_pwm_dem
	global	_v
	global	_xung
	global	_TMR1
_TMR1	set	14
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR0
_TMR0	set	1
	global	_TMR2
_TMR2	set	17
	global	_TXREG
_TXREG	set	25
	global	_DC1B0
_DC1B0	set	188
	global	_DC1B1
_DC1B1	set	189
	global	_GIE
_GIE	set	95
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
	
STR_1:	
	retlw	32	;' '
	retlw	68	;'D'
	retlw	72	;'H'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	75	;'K'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	120	;'x'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_4:	
	retlw	118	;'v'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_3:	
	retlw	118	;'v'
	retlw	0
psect	strings
STR_2	equ	STR_4+3
	file	"banphim.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_xung_old:
       ds      4

_dem:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_pwm_dem:
       ds      4

_v:
       ds      3

_xung:
       ds      4

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
	clrf	((__pbssBANK1)+10)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	__doprnt$3206
__doprnt$3206:	; 4 bytes @ 0x0
	ds	4
	global	__doprnt@integ
__doprnt@integ:	; 3 bytes @ 0x4
	ds	3
	global	__doprnt@flag
__doprnt@flag:	; 2 bytes @ 0x7
	ds	2
	global	__doprnt@exp
__doprnt@exp:	; 2 bytes @ 0x9
	ds	2
	global	__doprnt@width
__doprnt@width:	; 2 bytes @ 0xB
	ds	2
	global	__doprnt@_val
__doprnt@_val:	; 4 bytes @ 0xD
	ds	4
	global	__doprnt@fval
__doprnt@fval:	; 3 bytes @ 0x11
	ds	3
	global	__doprnt@prec
__doprnt@prec:	; 2 bytes @ 0x14
	ds	2
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x16
	ds	1
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x17
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x18
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x18
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x19
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x19
	ds	1
	global	printf@pb
printf@pb:	; 2 bytes @ 0x1A
	global	sprintf@pb
sprintf@pb:	; 2 bytes @ 0x1A
	ds	2
	global	main@data
main@data:	; 10 bytes @ 0x1C
	ds	10
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_tx_init
?_tx_init:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ngat
?_ngat:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?_abs
?_abs:	; 2 bytes @ 0x0
	global	abs@a
abs@a:	; 2 bytes @ 0x0
	ds	2
	global	??_abs
??_abs:	; 0 bytes @ 0x2
	ds	2
	global	??_ngat
??_ngat:	; 0 bytes @ 0x4
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
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	??_send_char
??_send_char:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	send_char@data
send_char@data:	; 1 bytes @ 0x0
	global	_isdigit$3716
_isdigit$3716:	; 1 bytes @ 0x0
	global	_isprint$3719
_isprint$3719:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	send_string@s
send_string@s:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x7
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___altoft
?___altoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x9
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x9
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x9
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xA
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	??___altoft
??___altoft:	; 0 bytes @ 0xC
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0xC
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0xD
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0xD
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0xD
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0xD
	ds	1
	global	?_pwm_10bit
?_pwm_10bit:	; 0 bytes @ 0xE
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xE
	global	?___fttol
?___fttol:	; 4 bytes @ 0xE
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0xE
	global	pwm_10bit@data_pwm
pwm_10bit@data_pwm:	; 2 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xE
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0xE
	ds	2
	global	??_pwm_10bit
??_pwm_10bit:	; 0 bytes @ 0x10
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x11
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x11
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x12
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x12
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x13
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x14
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x15
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x15
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x15
	ds	1
	global	?_putch
?_putch:	; 0 bytes @ 0x16
	global	putch@c
putch@c:	; 1 bytes @ 0x16
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x16
	ds	1
	global	??_putch
??_putch:	; 0 bytes @ 0x17
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x17
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x18
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1A
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1C
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1D
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1D
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x20
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x23
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x27
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2B
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x2C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2C
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x2F
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2F
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x32
	ds	1
	global	_scale$4211
_scale$4211:	; 3 bytes @ 0x33
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x35
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x36
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x36
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x37
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x38
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x38
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x38
	ds	3
	global	??_fround
??_fround:	; 0 bytes @ 0x3B
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x3B
	global	_fround$4210
_fround$4210:	; 3 bytes @ 0x3B
	ds	3
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x3E
	global	_fround$4209
_fround$4209:	; 3 bytes @ 0x3E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x41
	ds	1
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x42
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x42
	ds	1
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x43
	ds	1
	global	??__doprnt
??__doprnt:	; 0 bytes @ 0x44
	ds	5
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x49
	global	?_printf
?_printf:	; 2 bytes @ 0x49
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x49
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x4D
	global	??_printf
??_printf:	; 0 bytes @ 0x4D
	global	??_main
??_main:	; 0 bytes @ 0x4D
;;Data sizes: Strings 37, constant 118, data 0, bss 17, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80     77      77
;; BANK1           80     38      49
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), dpowers(CODE[40]), 
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_abs	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_2(CODE[6]), 
;;
;; ?_sprintf	int  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data(BANK1[10]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; sprintf@wh	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data(BANK1[10]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data(BANK1[10]), 
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_5(CODE[11]), STR_4(CODE[9]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), ?_printf(BANK0[2]), 
;;
;; pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data(BANK1[10]), 
;;
;; _doprnt@ap	PTR PTR void  size(1) Largest target is 2
;;		 -> sprintf@ap(BANK1[1]), printf@ap(BANK1[1]), 
;;
;; _doprnt@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_5(CODE[11]), STR_4(CODE[9]), STR_2(CODE[6]), 
;;
;; S3142__prbuf$func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;;		 -> Absolute function(), putch(), 
;;
;; S3142__prbuf$ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data(BANK1[10]), 
;;
;; _doprnt@pb.ptr	PTR unsigned char  size(1) Largest target is 10
;;		 -> NULL(NULL[0]), main@data(BANK1[10]), 
;;
;; _doprnt@pb	PTR struct __prbuf size(1) Largest target is 3
;;		 -> sprintf@pb(BANK1[2]), printf@pb(BANK1[2]), 
;;
;; S3188$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_3(CODE[2]), STR_1(CODE[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ngat in COMMON
;;
;;   _ngat->_abs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _main->_printf
;;   _printf->__doprnt
;;   _sprintf->__doprnt
;;   __doprnt->_fround
;;   _putch->___llmod
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___altoft->___ftpack
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___altoft
;;   ___ftadd->___ftmul
;;   _send_string->_send_char
;;   _pwm_10bit->___awdiv
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _ngat in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_sprintf
;;   _main->_printf
;;   _printf->__doprnt
;;   _sprintf->__doprnt
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
;; (0) _main                                                10    10      0   27677
;;                                             28 BANK1     10    10      0
;;                           _lcd_init
;;                          _pwm_10bit
;;                            _tx_init
;;                        _send_string
;;                           ___altoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            _sprintf
;;                             ___ftge
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                               8     4      4   12536
;;                                             73 BANK0      4     0      4
;;                                             24 BANK1      4     4      0
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                              8     4      4   12592
;;                                             73 BANK0      4     0      4
;;                                             24 BANK1      4     4      0
;;                            __doprnt
;; ---------------------------------------------------------------------------------
;; (2) __doprnt                                             35    33      2   12370
;;                                             66 BANK0      7     5      2
;;                                              0 BANK1     24    24      0
;;                   Absolute function
;;                              _putch
;;                            _isdigit
;;                             ___wmul
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (3) _putch                                                1     0      1     713
;;                                             22 BANK0      1     0      1
;;                           _lcd_putc
;;                            ___llmod (ARG)
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_putc                                             1     1      0     691
;;                                              8 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             56 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               14    11      3    1688
;;                                             44 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              13    10      3    1215
;;                                             56 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_gotoxy                                           3     2      1     313
;;                                              5 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             5     1      4     278
;;                                              8 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     347
;;                                              8 BANK0      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             15     9      6     535
;;                                             29 BANK0     15     9      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___altoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     489
;;                                             14 BANK0     15     9      6
;;                           ___ftpack
;;                           ___altoft (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             12     6      6    1049
;;                                             44 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          1     1      0      67
;;                                              1 BANK0      1     1      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _pwm_10bit                                            2     0      2     366
;;                                             14 BANK0      2     0      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (6) _lcd_busy                                             2     2      0      23
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (6) _lcd_put_byte                                         5     4      1     221
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              6     2      4     296
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             13     5      8     162
;;                                              0 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                               6     0      6     136
;;                                              0 BANK0      6     0      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 BANK0      3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                              9     1      8     159
;;                                             13 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              8     4      4     300
;;                                              6 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             13     9      4     252
;;                                             14 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftpack                                             8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (4) ___lbmod                                              5     4      1     159
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (4) ___lbdiv                                              4     3      1     162
;;                                              5 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               3     2      1      68
;;                                              9 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              0 BANK0     20    14      6
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         15     9      6     303
;;                                              0 BANK0     15     9      6
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) Absolute function(Fake)                               1     0      1       0
;;                                              0 BANK0      1     0      1
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _tx_init                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _isprint                                              2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _ngat                                                 2     2      0      66
;;                                              4 COMMON     2     2      0
;;                                _abs
;; ---------------------------------------------------------------------------------
;; (8) _abs                                                  4     2      2      66
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _pwm_10bit
;;     ___awdiv
;;       ___awmod (ARG)
;;   _tx_init
;;   _send_string
;;     _send_char
;;   ___altoft
;;     ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;     ___altoft (ARG)
;;       ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___altoft (ARG)
;;         ___ftpack
;;     ___altoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
;;     ___lbmod (ARG)
;;   _sprintf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         _lcd_putc
;;           _lcd_put_byte
;;           _lcd_busy
;;           _lcd_gotoxy
;;             _lcd_put_byte
;;             _lcd_busy
;;           _isprint
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       _fround
;;         ___lbmod
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv
;;           ___lbmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___altoft (ARG)
;;                 ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___altoft (ARG)
;;                 ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;   ___ftge
;;   _lcd_gotoxy
;;     _lcd_put_byte
;;     _lcd_busy
;;   _printf
;;     __doprnt
;;       Absolute function(Fake)
;;       _putch
;;         _lcd_putc
;;           _lcd_put_byte
;;           _lcd_busy
;;           _lcd_gotoxy
;;             _lcd_put_byte
;;             _lcd_busy
;;           _isprint
;;         ___llmod (ARG)
;;           ___lldiv (ARG)
;;         ___lldiv (ARG)
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;         ___altoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       _fround
;;         ___lbmod
;;         ___bmul
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv
;;           ___lbmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___altoft (ARG)
;;                 ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;           ___altoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___lbmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___altoft (ARG)
;;                 ___ftpack
;;             ___altoft (ARG)
;;               ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;             ___lbmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;
;; _ngat (ROOT)
;;   _abs
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       A       2        0.0%
;;ABS                  0      0      8A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4D      4D       5       96.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     26      31       7       61.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      94      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           10   28[BANK1 ] unsigned char [10]
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
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_lcd_init
;;		_pwm_10bit
;;		_tx_init
;;		_send_string
;;		___altoft
;;		___ftdiv
;;		___ftmul
;;		_sprintf
;;		___ftge
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l7755:	
;dulieubanphim.c: 21: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	22
	
l7757:	
;dulieubanphim.c: 22: lcd_init();
	fcall	_lcd_init
	line	23
	
l7759:	
;dulieubanphim.c: 23: TRISC2 =0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	25
	
l7761:	
;dulieubanphim.c: 25: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	26
	
l7763:	
;dulieubanphim.c: 26: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	27
	
l7765:	
;dulieubanphim.c: 27: PS2 = 0; PS1 = 1;PS0 = 0;
	bcf	(1034/8)^080h,(1034)&7
	
l7767:	
	bsf	(1033/8)^080h,(1033)&7
	
l7769:	
	bcf	(1032/8)^080h,(1032)&7
	line	28
	
l7771:	
;dulieubanphim.c: 28: TMR0 = 7;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	29
	
l7773:	
;dulieubanphim.c: 29: T0IE = 1; T0IF = 0; GIE = 1;
	bsf	(93/8),(93)&7
	
l7775:	
	bcf	(90/8),(90)&7
	
l7777:	
	bsf	(95/8),(95)&7
	line	31
	
l7779:	
;dulieubanphim.c: 31: TRISC0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	32
	
l7781:	
;dulieubanphim.c: 32: TMR1CS = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(129/8),(129)&7
	line	33
	
l7783:	
;dulieubanphim.c: 33: T1CKPS1 = 0; T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l7785:	
	bcf	(132/8),(132)&7
	line	34
	
l7787:	
;dulieubanphim.c: 34: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	35
	
l7789:	
;dulieubanphim.c: 35: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	36
	
l7791:	
;dulieubanphim.c: 36: TMR1GE = 0; TMR1ON = 1;
	bcf	(134/8),(134)&7
	
l7793:	
	bsf	(128/8),(128)&7
	line	38
	
l7795:	
;dulieubanphim.c: 38: T2CKPS1=0; T2CKPS0=1;
	bcf	(145/8),(145)&7
	
l7797:	
	bsf	(144/8),(144)&7
	line	39
	
l7799:	
;dulieubanphim.c: 39: TMR2 =0;
	clrf	(17)	;volatile
	line	40
	
l7801:	
;dulieubanphim.c: 40: PR2= 124;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	41
	
l7803:	
;dulieubanphim.c: 41: CCP1CON = 0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	42
	
l7805:	
;dulieubanphim.c: 42: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	43
	
l7807:	
;dulieubanphim.c: 43: pwm_dem =350;
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pwm_dem+3)^080h
	movlw	0
	movwf	(_pwm_dem+2)^080h
	movlw	01h
	movwf	(_pwm_dem+1)^080h
	movlw	05Eh
	movwf	(_pwm_dem)^080h

	line	44
	
l7809:	
;dulieubanphim.c: 44: pwm_10bit(pwm_dem);
	movlw	low(015Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_pwm_10bit)
	movlw	high(015Eh)
	movwf	((?_pwm_10bit))+1
	fcall	_pwm_10bit
	line	47
	
l7811:	
;dulieubanphim.c: 47: tx_init();
	fcall	_tx_init
	line	51
	
l7813:	
;dulieubanphim.c: 50: {
;dulieubanphim.c: 51: send_string(" DH SPKT 2022 ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	52
	
l7815:	
;dulieubanphim.c: 52: v = (xung/360.0)*10.0*60.0;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x16
	movwf	(?___ftmul+1)
	movlw	0x44
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xb4
	movwf	(?___ftdiv+1)
	movlw	0x43
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___altoft)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___altoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_v+2)^080h
	line	53
	
l7817:	
;dulieubanphim.c: 53: sprintf(data,"%3.2f",v);
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(main@data)&0ffh
	fcall	_sprintf
	line	54
	
l7819:	
;dulieubanphim.c: 54: send_string("v");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	55
	
l7821:	
;dulieubanphim.c: 55: if(v<30.000){pwm_dem++;pwm_10bit(pwm_dem);}
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xf0
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4421
	goto	u4420
u4421:
	goto	l7827
u4420:
	
l7823:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(_pwm_dem)^080h,f
	skipnz
	incf	(_pwm_dem+1)^080h,f
	skipnz
	incf	(_pwm_dem+2)^080h,f
	skipnz
	incf	(_pwm_dem+3)^080h,f
	
l7825:	
	movf	(_pwm_dem+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_pwm_10bit+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pwm_dem)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_pwm_10bit)
	fcall	_pwm_10bit
	goto	l7831
	line	56
	
l7827:	
;dulieubanphim.c: 56: else {pwm_dem--;pwm_10bit(pwm_dem);}
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	addwf	(_pwm_dem)^080h,f
	movlw	0FFh
	skipc
	addwf	(_pwm_dem+1)^080h,f
	movlw	0FFh
	skipc
	addwf	(_pwm_dem+2)^080h,f
	movlw	0FFh
	skipc
	addwf	(_pwm_dem+3)^080h,f
	goto	l7825
	line	57
	
l7831:	
;dulieubanphim.c: 57: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	58
	
l7833:	
;dulieubanphim.c: 58: printf("v: %3.2f",v);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_v+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_printf
	line	59
	
l7835:	
;dulieubanphim.c: 59: lcd_gotoxy(0,1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	60
	
l7837:	
;dulieubanphim.c: 60: printf("xung: %05d",xung);
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_xung)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_printf)

	movlw	((STR_5-__stringbase))&0ffh
	fcall	_printf
	goto	l7813
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	62
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _printf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_5(11), STR_4(9), 
;; Auto vars:     Size  Location     Type
;;  f               1   24[BANK1 ] PTR const unsigned char 
;;		 -> STR_5(11), STR_4(9), 
;;  pb              2   26[BANK1 ] struct __prbuf
;;  ap              1   25[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   73[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       4       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text643
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\printf.c"
	line	14
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 0
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	23
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@f)^080h
	
l7745:	
	clrf	(printf@pb)^080h
	line	24
	
l7747:	
	movlw	((fp__putch-fpbase))&0ffh
	movwf	(0+printf@pb+01h)^080h
	line	25
	
l7749:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	26
	
l7751:	
;	Return value of _printf is never used
	movf	(printf@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__doprnt)
	movlw	(printf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(printf@pb)&0ffh
	fcall	__doprnt
	line	28
	
l3363:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_sprintf
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1    wreg     PTR unsigned char 
;;		 -> main@data(10), 
;;  f               1   73[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(6), 
;; Auto vars:     Size  Location     Type
;;  wh              1   24[BANK1 ] PTR unsigned char 
;;		 -> main@data(10), 
;;  pb              2   26[BANK1 ] struct __prbuf
;;  ap              1   25[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   73[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       4       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text644
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\sprintf.c"
	line	14
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 0
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@wh stored from wreg
	line	31
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@wh)^080h
	
l7733:	
	movf	(sprintf@wh)^080h,w
	movwf	(sprintf@pb)^080h
	line	32
	
l7735:	
	clrf	(0+sprintf@pb+01h)^080h
	line	33
	
l7737:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	34
	
l7739:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	(?__doprnt)
	movlw	(sprintf@ap)&0ffh
	movwf	(0+?__doprnt+01h)
	movlw	(sprintf@pb)&0ffh
	fcall	__doprnt
	line	35
	
l7741:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@pb)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	38
	
l3370:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	__doprnt
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function __doprnt *****************
;; Defined at:
;;		line 455 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1    wreg     PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  f               1   66[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(11), STR_4(9), STR_2(6), 
;;  ap              1   67[BANK0 ] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  pb              1   23[BANK1 ] PTR struct __prbuf
;;		 -> sprintf@pb(2), printf@pb(2), 
;;  _val            4   13[BANK1 ] struct .
;;  fval            3   17[BANK1 ] struct .
;;  integ           3    4[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   20[BANK1 ] int 
;;  width           2   11[BANK1 ] int 
;;  exp             2    9[BANK1 ] int 
;;  flag            2    7[BANK1 ] unsigned short 
;;  c               1   22[BANK1 ] char 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0      24       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       7      24       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Absolute function
;;		_putch
;;		_isdigit
;;		___wmul
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text645
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	455
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:	
;; using string table level
	opt	stack 1
; Regs used in __doprnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;__doprnt@pb stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@pb)^080h
	line	540
	
l7359:	
	goto	l7727
	line	542
	
l7361:	
	movf	(__doprnt@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3741
	goto	u3740
u3741:
	goto	l7371
u3740:
	line	545
	
l7363:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l7367
u3750:
	
l7365:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7727
	
l7367:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	
l7369:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l7727
	line	550
	
l7371:	
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	552
	clrf	(__doprnt@flag)^080h
	clrf	(__doprnt@flag+1)^080h
	goto	l7377
	line	583
	
l2234:	
	line	584
	bsf	status, 5	;RP0=1, select bank1
	bsf	(__doprnt@flag)^080h+(2/8),(2)&7
	line	585
	
l7373:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(__doprnt@f),f
	line	555
	
l7377:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
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
	goto	l2234
	goto	l7379
	opt asmopt_on

	line	601
	
l7379:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3761
	goto	u3760
u3761:
	goto	l7389
u3760:
	line	602
	
l7381:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	604
	
l7383:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??__doprnt+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??__doprnt+0)+0
	movf	0+(??__doprnt+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(__doprnt@width)^080h
	
l7385:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(__doprnt@f),f
	line	605
	
l7387:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3771
	goto	u3770
u3771:
	goto	l7383
u3770:
	line	614
	
l7389:	
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l7403
u3780:
	line	615
	
l7391:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(__doprnt@flag)^080h+(14/8),(14)&7
	line	616
	
l7393:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(__doprnt@f),f
	line	624
	
l7395:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	625
	goto	l7401
	line	626
	
l7397:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??__doprnt+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??__doprnt+0)+0
	movf	0+(??__doprnt+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(__doprnt@prec)^080h
	
l7399:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(__doprnt@f),f
	line	625
	
l7401:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3791
	goto	u3790
u3791:
	goto	l7397
u3790:
	goto	l7409
	line	629
	
l7403:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	631
	
l7405:	
	bsf	(__doprnt@flag)^080h+(12/8),(12)&7
	goto	l7409
	line	665
	
l2249:	
	line	666
	bsf	(__doprnt@flag)^080h+(10/8),(10)&7
	line	667
	goto	l7411
	line	638
	
l7409:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l7729
	xorlw	100^0	; case 100
	skipnz
	goto	l7411
	xorlw	102^100	; case 102
	skipnz
	goto	l2249
	xorlw	105^102	; case 105
	skipnz
	goto	l7411
	goto	l7727
	opt asmopt_on

	line	828
	
l7411:	
	movlw	low(0700h)
	andwf	(__doprnt@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(__doprnt@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??__doprnt+0)+0
	movf	1+(??__doprnt+0)+0,w
	iorwf	0+(??__doprnt+0)+0,w
	skipnz
	goto	u3801
	goto	u3800
u3801:
	goto	l7613
u3800:
	line	830
	
l7413:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(__doprnt@flag+1)^080h,(12)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l7417
u3810:
	line	832
	
l7415:	
	movlw	06h
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	line	833
	
l7417:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	03h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(__doprnt@fval+2)^080h
	line	834
	
l7419:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3821
	goto	u3820
u3821:
	goto	l7425
u3820:
	line	835
	
l7421:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	836
	
l7423:	
	movlw	03h
	iorwf	(__doprnt@flag)^080h,f
	line	838
	
l7425:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	839
	
l7427:	
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u3831
	goto	u3830
u3831:
	goto	l7457
u3830:
	line	840
	
l7429:	
	movlw	low(__doprnt@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+0)+0+3
	movlw	0Fh
u3845:
	clrc
	rrf	(??__doprnt+0)+3,f
	rrf	(??__doprnt+0)+2,f
	rrf	(??__doprnt+0)+1,f
	rrf	(??__doprnt+0)+0,f
u3840:
	addlw	-1
	skipz
	goto	u3845
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	
l7431:	
	movlw	0FFh
	andwf	(__doprnt@exp)^080h,f
	clrf	(__doprnt@exp+1)^080h
	
l7433:	
	movlw	-126
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	841
	
l7435:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	842
	
l7437:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___wmul)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	line	843
	
l7439:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@exp)^080h
	line	844
	
l7441:	
	btfss	(__doprnt@exp+1)^080h,7
	goto	u3851
	goto	u3850
u3851:
	goto	l7445
u3850:
	line	845
	
l7443:	
	movlw	-1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	849
	
l7445:	
	decf	(__doprnt@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	850
	
l7447:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	851
	
l7449:	
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3861
	goto	u3860
u3861:
	goto	l7453
u3860:
	line	852
	
l7451:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	goto	l7457
	line	853
	
l7453:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3871
	goto	u3870
u3871:
	goto	l7457
u3870:
	line	854
	
l7455:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(__doprnt@exp)^080h,f
	skipnz
	incf	(__doprnt@exp+1)^080h,f
	line	1115
	
l7457:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3885
	movlw	low(0Dh)
	subwf	(__doprnt@prec)^080h,w
u3885:

	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l7461
u3880:
	line	1116
	
l7459:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1119
	
l7461:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3895
	movlw	low(0Ah)
	subwf	(__doprnt@exp)^080h,w
u3895:

	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l7469
u3890:
	
l7463:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval+2)^080h,w
	iorwf	(__doprnt@fval+1)^080h,w
	iorwf	(__doprnt@fval)^080h,w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l7485
u3900:
	
l7465:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l7485
u3910:
	
l7467:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3925
	movlw	low(02h)
	subwf	(__doprnt@exp)^080h,w
u3925:

	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l7485
u3920:
	line	1123
	
l7469:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3931
	goto	u3930
u3931:
	goto	l7473
u3930:
	line	1124
	
l7471:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1125
	goto	l7475
	line	1126
	
l7473:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1128
	
l7475:	
	movf	(__doprnt@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@integ+2)^080h
	line	1129
	
l7479:	
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3206+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3206+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3206+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt$3206)^080h

	
l7481:	
	movf	(__doprnt$3206+3)^080h,w
	movwf	(__doprnt@_val+3)^080h
	movf	(__doprnt$3206+2)^080h,w
	movwf	(__doprnt@_val+2)^080h
	movf	(__doprnt$3206+1)^080h,w
	movwf	(__doprnt@_val+1)^080h
	movf	(__doprnt$3206)^080h,w
	movwf	(__doprnt@_val)^080h

	line	1132
	
l7483:	
	clrf	(__doprnt@fval)^080h
	clrf	(__doprnt@fval+1)^080h
	clrf	(__doprnt@fval+2)^080h
	line	1133
	goto	l7489
	line	1134
	
l7485:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1135
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@fval+2)^080h
	line	1136
	
l7487:	
	clrf	(__doprnt@exp)^080h
	clrf	(__doprnt@exp+1)^080h
	line	1139
	
l7489:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1140
	
l7495:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u3945
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u3945
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u3945
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val)^080h,w
u3945:
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l7499
u3940:
	goto	l7503
	line	1139
	
l7499:	
	incf	(__doprnt@c)^080h,f
	
l7501:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l7495
u3950:
	line	1145
	
l7503:	
	movf	(__doprnt@prec)^080h,w
	addwf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	skipnc
	incf	(__doprnt@prec+1)^080h,w
	addlw	0
	btfsc	(__doprnt@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??__doprnt+0)+0,w
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@exp+1)^080h,w
	skipnc
	incf	(__doprnt@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??__doprnt+0)+0,w
	movwf	1+(??__doprnt+2)+0
	movf	0+(??__doprnt+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	line	1150
	
l7505:	
	movf	(__doprnt@prec+1)^080h,w
	iorwf	(__doprnt@prec)^080h,w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l7509
u3960:
	line	1151
	
l7507:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1152
	
l7509:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l7513
u3970:
	line	1153
	
l7511:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1156
	
l7513:	
	btfss	(__doprnt@flag)^080h,(2)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l7539
u3980:
	goto	l7527
	line	1170
	
l7517:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u3991
	goto	u3990
u3991:
	goto	l7521
u3990:
	
l7519:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7525
	
l7521:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l7523:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1171
	
l7525:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1169
	
l7527:	
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4005
	movlw	low(01h)
	subwf	(__doprnt@width)^080h,w
u4005:

	skipnc
	goto	u4001
	goto	u4000
u4001:
	goto	l7517
u4000:
	goto	l7559
	line	1182
	
l7529:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4011
	goto	u4010
u4011:
	goto	l7533
u4010:
	
l7531:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7537
	
l7533:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l7535:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1183
	
l7537:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1181
	
l7539:	
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4025
	movlw	low(01h)
	subwf	(__doprnt@width)^080h,w
u4025:

	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l7529
u4020:
	line	1189
	
l7541:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l7559
u4030:
	line	1191
	
l7543:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4041
	goto	u4040
u4041:
	goto	l7547
u4040:
	
l7545:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7559
	
l7547:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l7549:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l7559
	line	1201
	
l7551:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4051
	goto	u4050
u4051:
	goto	l7555
u4050:
	
l7553:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7559
	
l7555:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	goto	l7549
	line	1197
	
l7559:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l7551
u4060:
	goto	l7571
	line	1205
	
l7561:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4071
	goto	u4070
u4071:
	goto	l7565
u4070:
	
l7563:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7569
	
l7565:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l7567:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1206
	
l7569:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@exp)^080h,f
	skipc
	decf	(__doprnt@exp+1)^080h,f
	line	1204
	
l7571:	
	movf	(__doprnt@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4085
	movlw	low(01h)
	subwf	(__doprnt@exp)^080h,w
u4085:

	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l7561
u4080:
	line	1208
	
l7573:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4095
	movlw	low(09h)
	subwf	(__doprnt@prec)^080h,w
u4095:

	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l7577
u4090:
	line	1209
	
l7575:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(__doprnt@c)^080h
	goto	l2304
	line	1211
	
l7577:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(__doprnt@c)^080h
	
l2304:	
	line	1212
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@prec+1)^080h,f
	subwf	(__doprnt@prec+1)^080h,f
	line	1216
	movf	(__doprnt@c)^080h,w
	skipz
	goto	u4100
	goto	l7587
u4100:
	line	1218
	
l7579:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l7583
u4110:
	
l7581:	
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7587
	
l7583:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Eh)
	movwf	indf
	
l7585:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1224
	
l7587:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	goto	l7599
	line	1226
	
l7589:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4121
	goto	u4120
u4121:
	goto	l7593
u4120:
	
l7591:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7597
	
l7593:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??__doprnt+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??__doprnt+1)+0,w
	movwf	indf
	
l7595:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1227
	
l7597:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h

	line	1225
	
l7599:	
	decf	(__doprnt@c)^080h,f
	incf	((__doprnt@c)^080h),w
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l7589
u4130:
	goto	l7611
	line	1231
	
l7601:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4141
	goto	u4140
u4141:
	goto	l7605
u4140:
	
l7603:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7609
	
l7605:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l7607:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1232
	
l7609:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	line	1230
	
l7611:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l7601
u4150:
	goto	l7727
	line	1254
	
l7613:	
	movf	(__doprnt@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	((??__doprnt+0)+0)
	movlw	02h
	addwf	indf,f
	movf	((??__doprnt+0)+0),w
	movwf	fsr0
	movf	indf,w
	movwf	(??__doprnt+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__doprnt+1)+0+1
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@_val+1)^080h
	movlw	0
	btfsc	(__doprnt@_val+1)^080h,7
	movlw	255
	movwf	(__doprnt@_val+2)^080h
	movwf	(__doprnt@_val+3)^080h
	line	1256
	
l7615:	
	btfss	(__doprnt@_val+3)^080h,7
	goto	u4161
	goto	u4160
u4161:
	goto	l7621
u4160:
	line	1257
	
l7617:	
	movlw	03h
	iorwf	(__doprnt@flag)^080h,f
	line	1258
	
l7619:	
	comf	(__doprnt@_val)^080h,f
	comf	(__doprnt@_val+1)^080h,f
	comf	(__doprnt@_val+2)^080h,f
	comf	(__doprnt@_val+3)^080h,f
	incf	(__doprnt@_val)^080h,f
	skipnz
	incf	(__doprnt@_val+1)^080h,f
	skipnz
	incf	(__doprnt@_val+2)^080h,f
	skipnz
	incf	(__doprnt@_val+3)^080h,f
	line	1285
	
l7621:	
	movf	((__doprnt@prec+1)^080h),w
	iorwf	((__doprnt@prec)^080h),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l7627
u4170:
	
l7623:	
	movf	(__doprnt@_val+3)^080h,w
	iorwf	(__doprnt@_val+2)^080h,w
	iorwf	(__doprnt@_val+1)^080h,w
	iorwf	(__doprnt@_val)^080h,w
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l7627
u4180:
	line	1286
	
l7625:	
	incf	(__doprnt@prec)^080h,f
	skipnz
	incf	(__doprnt@prec+1)^080h,f
	line	1300
	
l7627:	
	clrf	(__doprnt@c)^080h
	incf	(__doprnt@c)^080h,f
	line	1301
	
l7633:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??__doprnt+1)+0)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+1)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+2)
	fcall	stringdir
	movwf	((??__doprnt+1)+0+3)
	movf	3+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+3)^080h,w
	skipz
	goto	u4195
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+2)^080h,w
	skipz
	goto	u4195
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val+1)^080h,w
	skipz
	goto	u4195
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??__doprnt+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@_val)^080h,w
u4195:
	skipnc
	goto	u4191
	goto	u4190
u4191:
	goto	l7637
u4190:
	goto	l7641
	line	1300
	
l7637:	
	incf	(__doprnt@c)^080h,f
	
l7639:	
	movf	(__doprnt@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l7633
u4200:
	line	1334
	
l7641:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u4215
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??__doprnt+0)+0,w
u4215:

	skipnc
	goto	u4211
	goto	u4210
u4211:
	goto	l7645
u4210:
	line	1335
	
l7643:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	movwf	(__doprnt@c)^080h
	goto	l7649
	line	1336
	
l7645:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+2)+0
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u4225
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@prec)^080h,w
u4225:

	skipnc
	goto	u4221
	goto	u4220
u4221:
	goto	l7649
u4220:
	line	1337
	
l7647:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	movwf	(__doprnt@prec)^080h
	clrf	(__doprnt@prec+1)^080h
	btfsc	(__doprnt@prec)^080h,7
	decf	(__doprnt@prec+1)^080h,f
	line	1340
	
l7649:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u4231
	goto	u4230
u4231:
	goto	l7655
u4230:
	
l7651:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l7655
u4240:
	line	1341
	
l7653:	
	movlw	-1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	line	1343
	
l7655:	
	btfss	(__doprnt@flag+1)^080h,(14)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l7663
u4250:
	line	1344
	
l7657:	
	movf	(__doprnt@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??__doprnt+0)+0,w
	skipz
	goto	u4265
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width)^080h,w
	subwf	(__doprnt@prec)^080h,w
u4265:

	skipnc
	goto	u4261
	goto	u4260
u4261:
	goto	l7661
u4260:
	line	1345
	
l7659:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@prec)^080h,w
	subwf	(__doprnt@width)^080h,f
	movf	(__doprnt@prec+1)^080h,w
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	goto	l7663
	line	1347
	
l7661:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	1376
	
l7663:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	1+(??__doprnt+0)+0,w
	xorlw	80h
	movwf	(??__doprnt+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??__doprnt+2)+0,w
	skipz
	goto	u4275
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??__doprnt+0)+0,w
u4275:

	skipnc
	goto	u4271
	goto	u4270
u4271:
	goto	l7667
u4270:
	line	1377
	
l7665:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrf	(??__doprnt+0)+0+1
	btfsc	(??__doprnt+0)+0,7
	decf	(??__doprnt+0)+0+1,f
	movf	0+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(__doprnt@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??__doprnt+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(__doprnt@width+1)^080h,f
	subwf	(__doprnt@width+1)^080h,f
	goto	l7669
	line	1379
	
l7667:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(__doprnt@width)^080h
	clrf	(__doprnt@width+1)^080h
	line	1382
	
l7669:	
	btfss	(__doprnt@flag)^080h,(2)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l7693
u4280:
	line	1387
	
l7671:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l7681
u4290:
	line	1388
	
l7673:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4301
	goto	u4300
u4301:
	goto	l7677
u4300:
	
l7675:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7681
	
l7677:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l7679:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1410
	
l7681:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u4311
	goto	u4310
u4311:
	goto	l7725
u4310:
	line	1412
	
l7683:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4321
	goto	u4320
u4321:
	goto	l7687
u4320:
	
l7685:	
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7691
	
l7687:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(030h)
	movwf	indf
	
l7689:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1413
	
l7691:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	movf	(((__doprnt@width+1)^080h)),w
	iorwf	(((__doprnt@width)^080h)),w
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l7683
u4330:
	goto	l7725
	line	1423
	
l7693:	
	movf	(__doprnt@width+1)^080h,w
	iorwf	(__doprnt@width)^080h,w
	skipnz
	goto	u4341
	goto	u4340
u4341:
	goto	l7705
u4340:
	line	1425
	
l7695:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4351
	goto	u4350
u4351:
	goto	l7699
u4350:
	
l7697:	
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7703
	
l7699:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(020h)
	movwf	indf
	
l7701:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	line	1426
	
l7703:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@width)^080h,f
	skipc
	decf	(__doprnt@width+1)^080h,f
	movf	(((__doprnt@width+1)^080h)),w
	iorwf	(((__doprnt@width)^080h)),w
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l7695
u4360:
	line	1433
	
l7705:	
	movf	(__doprnt@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l7725
u4370:
	line	1434
	
l7707:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l7711
u4380:
	
l7709:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7725
	
l7711:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movlw	(02Dh)
	movwf	indf
	
l7713:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	incf	indf,f
	goto	l7725
	line	1484
	
l7715:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??__doprnt+0)+0
	clrc
	rlf	(??__doprnt+0)+0,f
	clrc
	rlf	(??__doprnt+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@c)^080h
	line	1516
	
l7717:	
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l7721
u4390:
	
l7719:	
	movf	(__doprnt@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_putch)
	bsf	status, 5	;RP0=1, select bank1
	movf	(__doprnt@pb)^080h,w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	fcall	fptable
	goto	l7725
	
l7721:	
	movf	(__doprnt@pb)^080h,w
	movwf	fsr0
	movf	indf,w
	movwf	fsr0
	movf	(__doprnt@c)^080h,w
	movwf	indf
	goto	l7713
	line	1469
	
l7725:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(__doprnt@prec)^080h,f
	skipc
	decf	(__doprnt@prec+1)^080h,f
	incf	((__doprnt@prec)^080h),w
	skipnz
	incf	((__doprnt@prec+1)^080h),w

	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l7715
u4400:
	line	540
	
l7727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__doprnt@f),w
	incf	(__doprnt@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(__doprnt@c)^080h
	movf	((__doprnt@c)^080h),f
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l7361
u4410:
	line	1532
	
l7729:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?__doprnt)
	clrf	(?__doprnt+1)
	line	1533
	
l2356:	
	return
	opt stack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
;; =============== function __doprnt ends ============

	signat	__doprnt,12410
	global	_putch
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function _putch *****************
;; Defined at:
;;		line 105 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
;; Parameters:    Size  Location     Type
;;  c               1   22[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	105
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 0
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	106
	
l7357:	
;dulieubanphim.c: 106: lcd_putc(c);
	bcf	status, 5	;RP0=0, select bank0
	movf	(putch@c),w
	fcall	_lcd_putc
	line	107
	
l2194:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
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
psect	text647
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l7339:	
;lcd(16).c: 144: switch(c){
	goto	l7355
	line	146
	
l7341:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7343:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l7343
u3710:
	goto	l1082
	line	150
	
l7345:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l1082
	line	153
	
l7347:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u3721
	goto	u3720
u3721:
	goto	l1082
u3720:
	line	154
	
l7349:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7351:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l7351
u3730:
	goto	l1082
	line	144
	
l7355:	
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
	goto	l7345
	xorlw	12^10	; case 12
	skipnz
	goto	l7341
	goto	l7347
	opt asmopt_on

	line	159
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	___ftsub
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   56[BANK0 ] float 
;;  f1              3   59[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   56[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text648
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 1
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7333:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7335:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	20
	
l3462:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   54[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text649
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 1
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l7293:	
	btfss	(scale@scl),7
	goto	u3661
	goto	u3660
u3661:
	goto	l7315
u3660:
	line	425
	
l7295:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l7297:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l7305
u3670:
	line	427
	
l7299:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$4211)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4211+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4211+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$4211),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4211+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4211+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2219
	line	428
	
l7305:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l7311
u3680:
	line	429
	
l7307:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2219
	line	430
	
l7311:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l2219
	line	432
	
l7315:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l7323
u3690:
	line	433
	
l7317:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$4211)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4211+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4211+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$4211),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4211+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4211+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2219
	line	434
	
l7323:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l7329
u3700:
	line	435
	
l7325:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2219
	line	436
	
l7329:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	line	437
	
l2219:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   65[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   56[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text650
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 1
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l7271:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l7281
u3640:
	line	410
	
l7273:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movlw	(064h)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(064h)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4209)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4209+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4209+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$4209),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4209+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4209+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4210)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4210+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4210+2)
	
l7275:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4210),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4210+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4210+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2212
	line	411
	
l7281:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l7289
u3650:
	line	412
	
l7283:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4209)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4209+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4209+2)
	
l7285:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4209),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4209+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4209+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2212
	line	413
	
l7289:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	line	414
	
l2212:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
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
psect	text651
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 0
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l7259:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u3620
	goto	l7263
u3620:
	line	166
	
l7261:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7265
	line	168
	
l7263:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7265:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7267:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7269:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l7269
u3630:
	line	173
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
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
psect	text652
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l7221:	
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
	
l7223:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u4437:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4437
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4437
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4437
	nop2
opt asmopt_on

	line	21
	
l7225:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l7227:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u4447:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4447
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4447
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4447
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
	
l7229:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u4457:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4457
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4457
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4457
	nop2
opt asmopt_on

	line	25
	
l7231:	
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
u4467:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4467
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4467
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4467
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
u4477:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4477
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4477
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4477
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
u4487:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4487
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4487
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u4487
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l7233:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l7233
u3550:
	line	31
	
l7235:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l7237:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l7237
u3560:
	line	34
	
l7239:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l7241:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l7241
u3570:
	line	36
	
l7243:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l7245:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l7245
u3580:
	line	39
	
l7247:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l7249:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l7249
u3590:
	line	41
	
l7251:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l7253:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l7253
u3600:
	line	43
	
l7255:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l7257:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l7257
u3610:
	line	45
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text653,local,class=CODE,delta=2
global __ptext653
__ptext653:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text653
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 2
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7211:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l7215
	line	42
	
l7213:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l7215:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l7213
u3540:
	line	45
	
l7217:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l3619:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text654,local,class=CODE,delta=2
global __ptext654
__ptext654:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;;  exp             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text654
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 4
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l7195:	
	clrf	(___altoft@sign)
	line	46
	
l7197:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l7199:	
	btfss	(___altoft@c+3),7
	goto	u3521
	goto	u3520
u3521:
	goto	l7205
u3520:
	line	48
	
l7201:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l7205
	line	53
	
l7203:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l7205:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l7203
u3530:
	line	56
	
l7207:	
	movf	(___altoft@c),w
	movwf	(?___ftpack)
	movf	(___altoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___altoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___altoft@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___altoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	line	57
	
l3611:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text655,local,class=CODE,delta=2
global __ptext655
__ptext655:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   29[BANK0 ] float 
;;  f2              3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   39[BANK0 ] unsigned um
;;  sign            1   43[BANK0 ] unsigned char 
;;  cntr            1   42[BANK0 ] unsigned char 
;;  exp             1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   29[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text655
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l7139:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l7145
u3440:
	line	57
	
l7141:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3478
	line	58
	
l7145:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l7151
u3450:
	line	59
	
l7147:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3478
	line	60
	
l7151:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l7153:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l7155:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l7157:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l7159:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l7161:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l7163:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l7165:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l7167:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l7169:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l7173
u3460:
	line	72
	
l7171:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3471
	addwf	(___ftmul@f3_as_product+1),f
u3471:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3472
	addwf	(___ftmul@f3_as_product+2),f
u3472:

	line	73
	
l7173:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l7175:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l7177:	
	decfsz	(___ftmul@cntr),f
	goto	u3481
	goto	u3480
u3481:
	goto	l7169
u3480:
	line	76
	
l7179:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l7181:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l7185
u3490:
	line	79
	
l7183:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3501
	addwf	(___ftmul@f3_as_product+1),f
u3501:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3502
	addwf	(___ftmul@f3_as_product+2),f
u3502:

	line	80
	
l7185:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l7187:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l7189:	
	decfsz	(___ftmul@cntr),f
	goto	u3511
	goto	u3510
u3511:
	goto	l7181
u3510:
	line	83
	
l7191:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l3478:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text656,local,class=CODE,delta=2
global __ptext656
__ptext656:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   14[BANK0 ] float 
;;  f1              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   24[BANK0 ] float 
;;  sign            1   28[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
;;  cntr            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text656
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l7095:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l7101
u3400:
	line	56
	
l7097:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3468
	line	57
	
l7101:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l3469
u3410:
	line	58
	
l7103:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3468
	
l3469:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l7107:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l7109:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l7111:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l7113:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l7115:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l7117:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l7119:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l7121:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l7123:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l7125:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3425
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3425
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3425:
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l7131
u3420:
	line	72
	
l7127:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l7129:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l7131:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l7133:	
	decfsz	(___ftdiv@cntr),f
	goto	u3431
	goto	u3430
u3431:
	goto	l7125
u3430:
	line	77
	
l7135:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	78
	
l3468:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text657,local,class=CODE,delta=2
global __ptext657
__ptext657:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK0 ] float 
;;  f2              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   55[BANK0 ] unsigned char 
;;  exp2            1   54[BANK0 ] unsigned char 
;;  sign            1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		__doprnt
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text657
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l7017:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l7019:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3200
	goto	l7025
u3200:
	
l7021:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l7029
u3210:
	
l7023:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l7029
u3220:
	line	93
	
l7025:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3426
	line	94
	
l7029:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3230
	goto	l3429
u3230:
	
l7031:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l7035
u3240:
	
l7033:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l7035
u3250:
	
l3429:	
	line	95
	goto	l3426
	line	96
	
l7035:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l7037:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3430
u3260:
	line	98
	
l7039:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3430:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l3431
u3270:
	line	100
	
l7041:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3431:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l7043:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l7045:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l7057
u3280:
	line	110
	
l7047:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l7049:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l7055
u3290:
	
l7051:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l7047
u3300:
	goto	l7055
	line	114
	
l7053:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l7055:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l7053
u3310:
	goto	l3440
	line	117
	
l7057:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l3440
u3320:
	line	121
	
l7059:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l7061:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3331
	goto	u3330
u3331:
	goto	l7067
u3330:
	
l7063:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l7059
u3340:
	goto	l7067
	line	125
	
l7065:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l7067:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l7065
u3350:
	line	129
	
l3440:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l7073
u3360:
	line	131
	
l7069:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l7071:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l7073:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l7079
u3370:
	line	136
	
l7075:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l7077:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l7079:	
	clrf	(___ftadd@sign)
	line	140
	
l7081:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3381
	addwf	(___ftadd@f2+1),f
u3381:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3382
	addwf	(___ftadd@f2+2),f
u3382:

	line	141
	
l7083:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l7091
u3390:
	line	142
	
l7085:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l7087:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l7089:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l7091:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l3426:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_send_string
psect	text658,local,class=CODE,delta=2
global __ptext658
__ptext658:

;; *************** function _send_string *****************
;; Defined at:
;;		line 90 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_3(2), STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  s               1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(2), STR_1(15), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
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
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text658
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	90
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 4
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(send_string@s)
	line	91
	
l7009:	
;dulieubanphim.c: 91: while(*s){send_char(*s++);}
	goto	l7015
	
l7011:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l7013:	
	incf	(send_string@s),f
	
l7015:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l7011
u3190:
	line	92
	
l2188:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_pwm_10bit
psect	text659,local,class=CODE,delta=2
global __ptext659
__ptext659:

;; *************** function _pwm_10bit *****************
;; Defined at:
;;		line 78 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
;; Parameters:    Size  Location     Type
;;  data_pwm        2   14[BANK0 ] int 
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
psect	text659
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	78
	global	__size_of_pwm_10bit
	__size_of_pwm_10bit	equ	__end_of_pwm_10bit-_pwm_10bit
	
_pwm_10bit:	
	opt	stack 4
; Regs used in _pwm_10bit: [wreg+status,2+status,0+pclath+cstack]
	line	79
	
l6999:	
;dulieubanphim.c: 79: CCPR1L = data_pwm/4;
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
	line	80
	
l7001:	
;dulieubanphim.c: 80: DC1B1 = DC1B0 = 0;
	bcf	(188/8),(188)&7
	bcf	(189/8),(189)&7
	line	81
	
l7003:	
;dulieubanphim.c: 81: if((data_pwm &2 ) ==1) DC1B1 = 1;
	movf	(pwm_10bit@data_pwm),w
	andlw	02h
	xorlw	01h
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l2174
u3170:
	
l7005:	
	bsf	(189/8),(189)&7
	
l2174:	
	line	82
;dulieubanphim.c: 82: if((data_pwm &1 ) ==1) DC1B0 = 1;
	btfss	(pwm_10bit@data_pwm),(0)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l2176
u3180:
	
l7007:	
	bsf	(188/8),(188)&7
	line	83
	
l2176:	
	return
	opt stack 0
GLOBAL	__end_of_pwm_10bit
	__end_of_pwm_10bit:
;; =============== function _pwm_10bit ends ============

	signat	_pwm_10bit,4216
	global	_lcd_busy
psect	text660,local,class=CODE,delta=2
global __ptext660
__ptext660:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
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
psect	text660
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6985:	
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
	
l6987:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4497:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4497
opt asmopt_on

	line	58
	
l6989:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4507:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4507
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
	
l6991:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4517:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4517
opt asmopt_on

	line	65
	
l6993:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u4527:
decfsz	(??_lcd_busy+0)+0,f
	goto	u4527
opt asmopt_on

	line	67
	
l6995:	
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
psect	text661,local,class=CODE,delta=2
global __ptext661
__ptext661:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
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
psect	text661
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dulieu_banphim\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l6949:	
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
	
l6951:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u3000
	goto	l6955
u3000:
	
l6953:	
	bsf	(65/8),(65)&7
	line	117
	
l6955:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4537:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4537
opt asmopt_on

	line	118
	
l6957:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4547:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4547
opt asmopt_on

	line	120
	
l6959:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6961:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3011
	goto	u3010
	
u3011:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3024
u3010:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3024:
	line	126
	
l6963:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3031
	goto	u3030
	
u3031:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3044
u3030:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3044:
	line	127
	
l6965:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3051
	goto	u3050
	
u3051:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3064
u3050:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3064:
	line	128
	
l6967:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3071
	goto	u3070
	
u3071:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3084
u3070:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3084:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4557:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4557
opt asmopt_on

	line	130
	
l6969:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4567:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4567
opt asmopt_on

	line	132
	
l6971:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6973:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3091
	goto	u3090
	
u3091:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u3104
u3090:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u3104:
	line	135
	
l6975:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u3111
	goto	u3110
	
u3111:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u3124
u3110:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u3124:
	line	136
	
l6977:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3131
	goto	u3130
	
u3131:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u3144
u3130:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u3144:
	line	137
	
l6979:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u3151
	goto	u3150
	
u3151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u3164
u3150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u3164:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4577:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4577
opt asmopt_on

	line	139
	
l6981:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u4587:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u4587
opt asmopt_on

	line	141
	
l6983:	
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
	global	___awmod
psect	text662,local,class=CODE,delta=2
global __ptext662
__ptext662:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text662
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6913:	
	clrf	(___awmod@sign)
	line	9
	
l6915:	
	btfss	(___awmod@dividend+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l6921
u2930:
	line	10
	
l6917:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6919:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6921:	
	btfss	(___awmod@divisor+1),7
	goto	u2941
	goto	u2940
u2941:
	goto	l6925
u2940:
	line	14
	
l6923:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6925:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l6941
u2950:
	line	16
	
l6927:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6931
	line	18
	
l6929:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6931:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l6929
u2960:
	line	22
	
l6933:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2975
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2975:
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l6937
u2970:
	line	23
	
l6935:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6937:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6939:	
	decfsz	(___awmod@counter),f
	goto	u2981
	goto	u2980
u2981:
	goto	l6933
u2980:
	line	27
	
l6941:	
	movf	(___awmod@sign),w
	skipz
	goto	u2990
	goto	l6945
u2990:
	line	28
	
l6943:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6945:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3597:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text663,local,class=CODE,delta=2
global __ptext663
__ptext663:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[BANK0 ] unsigned long 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text663
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l6887:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l6889:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2891
	goto	u2890
u2891:
	goto	l6909
u2890:
	line	11
	
l6891:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l6895
	line	13
	
l6893:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l6895:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l6893
u2900:
	line	17
	
l6897:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l6899:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2915
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2915
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2915
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2915:
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l6905
u2910:
	line	19
	
l6901:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l6903:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l6905:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l6907:	
	decfsz	(___lldiv@counter),f
	goto	u2921
	goto	u2920
u2921:
	goto	l6897
u2920:
	line	25
	
l6909:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3558:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text664,local,class=CODE,delta=2
global __ptext664
__ptext664:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
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
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text664
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6867:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l6871
u2860:
	line	7
	
l6869:	
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
	
l6871:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l6875
u2870:
	line	9
	
l6873:	
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
	
l6875:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6877:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6879:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2885
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2885
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2885:
	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l6883
u2880:
	
l6881:	
	clrc
	
	goto	l3548
	
l6883:	
	setc
	
	line	13
	
l3548:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text665,local,class=CODE,delta=2
global __ptext665
__ptext665:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text665
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l6859:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l6863
u2850:
	line	18
	
l6861:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l6863:	
	line	20
	
l3543:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text666,local,class=CODE,delta=2
global __ptext666
__ptext666:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   13[BANK0 ] unsigned long 
;;  dividend        4   17[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text666
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 3
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l6839:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l6855
u2810:
	line	9
	
l6841:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l6845
	line	11
	
l6843:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l6845:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l6843
u2820:
	line	15
	
l6847:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2835
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2835
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2835
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l6851
u2830:
	line	16
	
l6849:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	17
	
l6851:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l6853:	
	decfsz	(___llmod@counter),f
	goto	u2841
	goto	u2840
u2841:
	goto	l6847
u2840:
	line	20
	
l6855:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3539:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text667,local,class=CODE,delta=2
global __ptext667
__ptext667:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
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
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text667
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6795:	
	clrf	(___awdiv@sign)
	line	10
	
l6797:	
	btfss	(___awdiv@divisor+1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l6803
u2740:
	line	11
	
l6799:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6801:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6803:	
	btfss	(___awdiv@dividend+1),7
	goto	u2751
	goto	u2750
u2751:
	goto	l6809
u2750:
	line	15
	
l6805:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6807:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6809:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6811:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l6831
u2760:
	line	20
	
l6813:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6817
	line	22
	
l6815:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6817:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l6815
u2770:
	line	26
	
l6819:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6821:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2785
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2785:
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l6827
u2780:
	line	28
	
l6823:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6825:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6827:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6829:	
	decfsz	(___awdiv@counter),f
	goto	u2791
	goto	u2790
u2791:
	goto	l6819
u2790:
	line	34
	
l6831:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2800
	goto	l6835
u2800:
	line	35
	
l6833:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6835:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3529:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text668,local,class=CODE,delta=2
global __ptext668
__ptext668:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   22[BANK0 ] unsigned long 
;;  exp1            1   26[BANK0 ] unsigned char 
;;  sign1           1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text668
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6757:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l6761
u2660:
	line	50
	
l6759:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3489
	line	51
	
l6761:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2675:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2670:
	addlw	-1
	skipz
	goto	u2675
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6763:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6765:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6767:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6769:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6771:	
	btfss	(___fttol@exp1),7
	goto	u2681
	goto	u2680
u2681:
	goto	l6781
u2680:
	line	57
	
l6773:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2691
	goto	u2690
u2691:
	goto	l6777
u2690:
	goto	l6759
	line	60
	
l6777:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6779:	
	incfsz	(___fttol@exp1),f
	goto	u2701
	goto	u2700
u2701:
	goto	l6777
u2700:
	goto	l6787
	line	63
	
l6781:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l3496
u2710:
	goto	l6759
	line	66
	
l6785:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3496:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l6785
u2720:
	line	70
	
l6787:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2730
	goto	l6791
u2730:
	line	71
	
l6789:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l6791:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3489:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text669,local,class=CODE,delta=2
global __ptext669
__ptext669:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___altoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text669
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6729:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2590
	goto	l6733
u2590:
	
l6731:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l6739
u2600:
	line	65
	
l6733:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3748
	line	67
	
l6737:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6739:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l6737
u2610:
	goto	l6743
	line	71
	
l6741:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l6743:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l6741
u2620:
	goto	l6747
	line	76
	
l6745:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6747:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l6745
u2630:
	
l3757:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l3758
u2640:
	line	80
	
l6749:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3758:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6751:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6753:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2650
	goto	l3759
u2650:
	line	84
	
l6755:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3759:	
	line	85
	line	86
	
l3748:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text670,local,class=CODE,delta=2
global __ptext670
__ptext670:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  rem             1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text670
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 2
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l6711:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6713:	
	clrf	(___lbmod@rem)
	line	12
	
l6715:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2565:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2565
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6717:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6719:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l6723
u2570:
	line	15
	
l6721:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6723:	
	decfsz	(___lbmod@counter),f
	goto	u2581
	goto	u2580
u2581:
	goto	l6715
u2580:
	line	17
	
l6725:	
	movf	(___lbmod@rem),w
	line	18
	
l3418:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text671,local,class=CODE,delta=2
global __ptext671
__ptext671:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    6[BANK0 ] unsigned char 
;;  quotient        1    8[BANK0 ] unsigned char 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text671
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 2
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l6687:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6689:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2520
	goto	l6707
u2520:
	line	11
	
l6691:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6695
	
l3407:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6693:	
	incf	(___lbdiv@counter),f
	line	12
	
l6695:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l3407
u2530:
	line	16
	
l3409:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6697:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l6703
u2540:
	line	19
	
l6699:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6701:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6703:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6705:	
	decfsz	(___lbdiv@counter),f
	goto	u2551
	goto	u2550
u2551:
	goto	l3409
u2550:
	line	25
	
l6707:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3412:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text672,local,class=CODE,delta=2
global __ptext672
__ptext672:

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
;;		_fround
;;		_scale
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text672
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6671:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6673:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l6677
u2500:
	line	8
	
l6675:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6677:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6679:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6681:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l6673
u2510:
	line	12
	
l6683:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3382:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text673,local,class=CODE,delta=2
global __ptext673
__ptext673:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   11[BANK0 ] unsigned char 
;;  product         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text673
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l6655:	
	clrf	(___bmul@product)
	line	7
	
l6657:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l6661
u2480:
	line	8
	
l6659:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l6661:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l6663:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l6665:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l6657
u2490:
	line	12
	
l6667:	
	movf	(___bmul@product),w
	line	13
	
l3376:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text674,local,class=CODE,delta=2
global __ptext674
__ptext674:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] unsigned char 
;;  f2              3    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4   14[BANK0 ] unsigned long 
;;  exp1            1   19[BANK0 ] unsigned char 
;;  cntr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text674
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 3
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6609:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l6613
u2390:
	line	67
	
l6611:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3666
	line	68
	
l6613:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l6617
u2400:
	goto	l6611
	line	70
	
l6617:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l6619:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6621:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6623:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6625:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6627:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6629:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u2415
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2415
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2415
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2415:
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l3669
u2410:
	line	81
	
l6631:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l6633:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3669:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	line	85
	
l6635:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2421
	goto	u2420
u2421:
	goto	l6627
u2420:
	
l3670:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l6645
u2430:
	line	87
	
l6637:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l6641
u2440:
	goto	l6611
	line	90
	
l6641:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6643:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2451
	goto	u2450
u2451:
	goto	l6641
u2450:
	goto	l6651
	line	93
	
l6645:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l3677
u2460:
	goto	l6611
	line	96
	
l6649:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3677:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l6649
u2470:
	line	100
	
l6651:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3666:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text675,local,class=CODE,delta=2
global __ptext675
__ptext675:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    9[BANK0 ] unsigned long 
;;  exp1            1   14[BANK0 ] unsigned char 
;;  cntr            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text675
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 3
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6561:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l6565
u2300:
	line	67
	
l6563:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3623
	line	68
	
l6565:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l3624
u2310:
	goto	l6563
	line	69
	
l3624:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6569:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6571:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6573:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6575:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6577:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6579:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6581:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2325
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2325
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2325:
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l6587
u2320:
	line	81
	
l6583:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l6585:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6587:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6589:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2331
	goto	u2330
u2331:
	goto	l6579
u2330:
	
l3627:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l6599
u2340:
	line	87
	
l6591:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2351
	goto	u2350
u2351:
	goto	l6595
u2350:
	goto	l6563
	line	90
	
l6595:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6597:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2361
	goto	u2360
u2361:
	goto	l6595
u2360:
	goto	l6605
	line	93
	
l6599:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3634
u2370:
	goto	l6563
	line	96
	
l6603:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3634:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l6603
u2380:
	line	100
	
l6605:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3623:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text676,local,class=CODE,delta=2
global __ptext676
__ptext676:

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
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text676
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l6549:	
	clrf	(_isdigit$3716)
	
l6551:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l6557
u2280:
	
l6553:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l6557
u2290:
	
l6555:	
	clrf	(_isdigit$3716)
	incf	(_isdigit$3716),f
	
l6557:	
	rrf	(_isdigit$3716),w
	
	line	15
	
l3345:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_send_char
psect	text677,local,class=CODE,delta=2
global __ptext677
__ptext677:

;; *************** function _send_char *****************
;; Defined at:
;;		line 85 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
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
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text677
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	85
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 4
; Regs used in _send_char: [wreg]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	86
	
l6545:	
;dulieubanphim.c: 86: while(TXIF ==0){}
	
l2179:	
	btfss	(100/8),(100)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2179
u2270:
	line	87
	
l6547:	
;dulieubanphim.c: 87: TXREG = data;
	movf	(send_char@data),w
	movwf	(25)	;volatile
	line	88
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_tx_init
psect	text678,local,class=CODE,delta=2
global __ptext678
__ptext678:

;; *************** function _tx_init *****************
;; Defined at:
;;		line 96 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
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
psect	text678
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	96
	global	__size_of_tx_init
	__size_of_tx_init	equ	__end_of_tx_init-_tx_init
	
_tx_init:	
	opt	stack 5
; Regs used in _tx_init: [wreg]
	line	97
	
l6509:	
;dulieubanphim.c: 97: SPBRGH = 0x02 ;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(154)^080h	;volatile
	line	98
;dulieubanphim.c: 98: SPBRG = 0x08 ;
	movlw	(08h)
	movwf	(153)^080h	;volatile
	line	99
	
l6511:	
;dulieubanphim.c: 99: SYNC = 0; BRGH =1; BRG16 = 1;
	bcf	(1220/8)^080h,(1220)&7
	
l6513:	
	bsf	(1218/8)^080h,(1218)&7
	
l6515:	
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	100
	
l6517:	
;dulieubanphim.c: 100: TX9 =0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	101
	
l6519:	
;dulieubanphim.c: 101: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	102
	
l6521:	
;dulieubanphim.c: 102: SPEN =1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	line	103
	
l2191:	
	return
	opt stack 0
GLOBAL	__end_of_tx_init
	__end_of_tx_init:
;; =============== function _tx_init ends ============

	signat	_tx_init,88
	global	_isprint
psect	text679,local,class=CODE,delta=2
global __ptext679
__ptext679:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text679
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 1
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	movwf	(isprint@c)
	line	14
	
l6497:	
	clrf	(_isprint$3719)
	
l6499:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l6505
u2220:
	
l6501:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l6505
u2230:
	
l6503:	
	clrf	(_isprint$3719)
	incf	(_isprint$3719),f
	
l6505:	
	rrf	(_isprint$3719),w
	
	line	15
	
l3350:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text680,local,class=CODE,delta=2
global __ptext680
__ptext680:

;; *************** function _ngat *****************
;; Defined at:
;;		line 64 in file "C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
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
;;		_abs
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text680
	file	"C:\Users\DELL\Desktop\vxl\mp\dulieubanphim.c"
	line	64
	global	__size_of_ngat
	__size_of_ngat	equ	__end_of_ngat-_ngat
	
_ngat:	
	opt	stack 0
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
psect	text680
	line	65
	
i1l6523:	
;dulieubanphim.c: 65: if(T0IF)
	btfss	(90/8),(90)&7
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l6535
u224_20:
	line	67
	
i1l6525:	
;dulieubanphim.c: 66: {
;dulieubanphim.c: 67: dem++;
	incf	(_dem),f
	skipnz
	incf	(_dem+1),f
	line	68
	
i1l6527:	
;dulieubanphim.c: 68: if(dem == 250)
		movf	(_dem),w
	xorlw	250
	iorwf	(_dem+1),w

	skipz
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l6535
u225_20:
	line	69
	
i1l6529:	
;dulieubanphim.c: 69: {dem= 0;
	clrf	(_dem)
	clrf	(_dem+1)
	line	70
	
i1l6531:	
;dulieubanphim.c: 70: xung=abs(TMR1-xung_old);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14+1),w	;volatile
	movwf	(?_abs+1)
	movf	(14),w	;volatile
	movwf	(?_abs)
	movf	(_xung_old),w
	subwf	(?_abs),f
	movf	(_xung_old+1),w
	skipc
	decf	(?_abs+1),f
	subwf	(?_abs+1),f
	fcall	_abs
	movf	(0+(?_abs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_xung)^080h
	movf	(1+(?_abs)),w
	movwf	(_xung+1)^080h
	movlw	0
	btfsc	(_xung+1)^080h,7
	movlw	255
	movwf	(_xung+2)^080h
	movwf	(_xung+3)^080h
	line	71
	
i1l6533:	
;dulieubanphim.c: 71: xung_old=TMR1;}
	bcf	status, 5	;RP0=0, select bank0
	movf	(14),w	;volatile
	movwf	(_xung_old)
	movf	(14+1),w	;volatile
	movwf	((_xung_old))+1
	clrf	2+((_xung_old))
	clrf	3+((_xung_old))
	line	73
	
i1l6535:	
;dulieubanphim.c: 72: }
;dulieubanphim.c: 73: TMR0 = 6;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	74
	
i1l6537:	
;dulieubanphim.c: 74: T0IF = 0;
	bcf	(90/8),(90)&7
	line	75
	
i1l2171:	
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
	global	_abs
psect	text681,local,class=CODE,delta=2
global __ptext681
__ptext681:

;; *************** function _abs *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ngat
;; This function uses a non-reentrant model
;;
psect	text681
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\abs.c"
	line	5
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
	opt	stack 0
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
i1l6539:	
	btfss	(abs@a+1),7
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l3339
u226_20:
	line	7
	
i1l6541:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	goto	i1l3340
	
i1l3339:	
	line	8
	line	9
	
i1l3340:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
;; =============== function _abs ends ============

	signat	_abs,4218
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__putch:
	ljmp	_putch
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
