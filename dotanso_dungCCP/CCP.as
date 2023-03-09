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
# 8 "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
	dw 0xFFFA & 0xFFF7 & 0xFFEF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFFFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,___altoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftdiv
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_printf
	FNCALL	_printf,_putch
	FNCALL	_printf,_isdigit
	FNCALL	_printf,___wmul
	FNCALL	_printf,___ftge
	FNCALL	_printf,___ftneg
	FNCALL	_printf,___awdiv
	FNCALL	_printf,_scale
	FNCALL	_printf,___ftmul
	FNCALL	_printf,_fround
	FNCALL	_printf,___ftadd
	FNCALL	_printf,___fttol
	FNCALL	_printf,__div_to_l_
	FNCALL	_printf,__tdiv_to_l_
	FNCALL	_printf,___lltoft
	FNCALL	_printf,___ftsub
	FNCALL	_printf,___lldiv
	FNCALL	_printf,___llmod
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
	global	_xung
	global	_f
	global	_ccp1_old
	global	_t
	global	_CCPR1
_CCPR1	set	21
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1H
_CCPR1H	set	22
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CCP1IF
_CCP1IF	set	98
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
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
	global	_RE0
_RE0	set	72
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1GE
_TMR1GE	set	134
	global	_TMR1ON
_TMR1ON	set	128
	global	_CCP1IE
_CCP1IE	set	1122
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
	global	_TRISE0
_TRISE0	set	1096
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
STR_1:	
	retlw	120	;'x'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	117	;'u'
	retlw	0
psect	strings
	
STR_2:	
	retlw	102	;'f'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"CCP.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ccp1_old:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_xung:
       ds      4

_f:
       ds      3

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_t:
       ds      3

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
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_printf$3160
_printf$3160:	; 4 bytes @ 0x0
	ds	4
	global	printf@ap
printf@ap:	; 1 bytes @ 0x4
	ds	1
	global	printf@integ
printf@integ:	; 3 bytes @ 0x5
	ds	3
	global	printf@_val
printf@_val:	; 4 bytes @ 0x8
	ds	4
	global	printf@f
printf@f:	; 1 bytes @ 0xC
	ds	1
	global	printf@flag
printf@flag:	; 2 bytes @ 0xD
	ds	2
	global	printf@exp
printf@exp:	; 2 bytes @ 0xF
	ds	2
	global	printf@width
printf@width:	; 2 bytes @ 0x11
	ds	2
	global	printf@fval
printf@fval:	; 3 bytes @ 0x13
	ds	3
	global	printf@prec
printf@prec:	; 2 bytes @ 0x16
	ds	2
	global	printf@c
printf@c:	; 1 bytes @ 0x18
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_isprint
?_isprint:	; 1 bit 
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
	global	?_putch
?_putch:	; 0 bytes @ 0x0
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
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	??_isprint
??_isprint:	; 0 bytes @ 0x6
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x6
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x6
	global	??_main
??_main:	; 0 bytes @ 0x6
	global	??_putch
??_putch:	; 0 bytes @ 0x6
	global	??_fround
??_fround:	; 0 bytes @ 0x6
	global	??___bmul
??___bmul:	; 0 bytes @ 0x6
	global	??___wmul
??___wmul:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x6
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	global	??___llmod
??___llmod:	; 0 bytes @ 0x6
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x6
	global	??___awmod
??___awmod:	; 0 bytes @ 0x6
	global	??___altoft
??___altoft:	; 0 bytes @ 0x6
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
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
	global	_isdigit$3670
_isdigit$3670:	; 1 bytes @ 0x0
	global	_isprint$3673
_isprint$3673:	; 1 bytes @ 0x0
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
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
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
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
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
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
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
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x9
	global	putch@c
putch@c:	; 1 bytes @ 0x9
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x9
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x9
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	1
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
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xE
	global	?___fttol
?___fttol:	; 4 bytes @ 0xE
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0xE
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xE
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0xE
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x11
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x11
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x12
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x12
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x12
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x13
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x15
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x15
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x15
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x16
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x16
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1A
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1B
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1E
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x21
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x24
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x25
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x28
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x29
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x2A
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x2A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x2A
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x2D
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2D
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x30
	ds	1
	global	_scale$4114
_scale$4114:	; 3 bytes @ 0x31
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x33
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x34
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x34
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x35
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x36
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x36
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x36
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x39
	global	_fround$4113
_fround$4113:	; 3 bytes @ 0x39
	ds	3
	global	_fround$4112
_fround$4112:	; 3 bytes @ 0x3C
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x3F
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x40
	ds	4
	global	??_printf
??_printf:	; 0 bytes @ 0x44
	ds	5
;;Data sizes: Strings 20, constant 118, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       8
;; BANK0           80     73      80
;; BANK1           80     25      28
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; ?___ftadd	float  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; ?___ftneg	float  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> dpowers(CODE[40]), t(BANK1[3]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?_abs	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; printf@f	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_2(CODE[9]), STR_1(CODE[11]), 
;;
;; ?_printf	int  size(1) Largest target is 3
;;		 -> t(BANK1[3]), 
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(BANK0[2]), 
;;
;; S3149$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
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
;;   _main->_printf
;;   _printf->_fround
;;   _putch->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   _lcd_gotoxy->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   ___lltoft->___ftpack
;;   ___altoft->___ftpack
;;   ___ftmul->___fttol
;;   ___ftdiv->___ftpack
;;   ___ftadd->___ftmul
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
;;   _main->_printf
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
;; (0) _main                                                 0     0      0   15487
;;                           _lcd_init
;;                           ___altoft
;;                            ___ftmul
;;                            ___ftdiv
;;                         _lcd_gotoxy
;;                             _printf
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              38    34      4   13460
;;                                             64 BANK0      9     5      4
;;                                              0 BANK1     25    25      0
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
;; (2) _putch                                                1     1      0     813
;;                                              9 BANK0      1     1      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (3) _lcd_putc                                             1     1      0     782
;;                                              8 BANK0      1     1      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1114
;;                                             54 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    2218
;;                                             42 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1461
;;                                             54 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_gotoxy                                           3     2      1     346
;;                                              5 BANK0      3     2      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             4     4      0     244
;;                                              5 BANK0      3     3      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     311
;;                                              8 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___altoft                                             6     2      4     413
;;                                              8 BANK0      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     535
;;                                             27 BANK0     15     9      6
;;                           ___ftpack
;;                           ___altoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             15     9      6     489
;;                                              8 BANK0     15     9      6
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             42 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _lcd_busy                                             2     2      0      23
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _lcd_put_byte                                         5     4      1     221
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     433
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     241
;;                                              0 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     198
;;                                              0 BANK0      6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      65
;;                                              0 BANK0      3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     232
;;                                             13 BANK0      9     1      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     445
;;                                              6 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                             14 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     241
;;                                              5 BANK0      4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1     108
;;                                              9 BANK0      3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              0 BANK0     20    14      6
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              0 BANK0     15     9      6
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      99
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _isprint                                              2     2      0      99
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ngat                                                 2     2      0      66
;;                                              4 COMMON     2     2      0
;;                                _abs
;; ---------------------------------------------------------------------------------
;; (7) _abs                                                  4     2      2      66
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   ___altoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
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
;;   ___ftdiv
;;     ___ftpack
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
;;     ___ftge
;;     ___ftneg
;;     ___awdiv
;;       ___awmod (ARG)
;;     _scale
;;       ___awmod
;;       ___awdiv
;;         ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
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
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___altoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
;;     _fround
;;       ___lbmod
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv
;;         ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
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
;;       ___ftadd (ARG)
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
;;     ___ftadd
;;       ___ftpack
;;       ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
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
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     __div_to_l_
;;     __tdiv_to_l_
;;     ___lltoft
;;       ___ftpack
;;     ___ftsub
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
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
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
;;COMMON               E      6       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       9       2        0.0%
;;ABS                  0      0      74       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     49      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     19      1C       7       35.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      7D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
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
;;		On exit  : 60/20
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
;;		___altoft
;;		___ftmul
;;		___ftdiv
;;		_lcd_gotoxy
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l8036:	
;dotansodungCCP.c: 16: ANSEL = ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	clrf	(392)^0180h	;volatile
	line	17
	
l8038:	
;dotansodungCCP.c: 17: lcd_init();
	fcall	_lcd_init
	line	18
	
l8040:	
;dotansodungCCP.c: 18: TRISE0 = 0; RE0 =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1096/8)^080h,(1096)&7
	
l8042:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(72/8),(72)&7
	line	20
	
l8044:	
;dotansodungCCP.c: 20: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	21
	
l8046:	
;dotansodungCCP.c: 21: CCP1CON = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	22
	
l8048:	
;dotansodungCCP.c: 22: CCPR1H = CCPR1L = 0;
	clrf	(21)	;volatile
	clrf	(22)	;volatile
	line	23
	
l8050:	
;dotansodungCCP.c: 23: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1122/8)^080h,(1122)&7
	line	24
	
l8052:	
;dotansodungCCP.c: 24: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(98/8),(98)&7
	line	25
	
l8054:	
;dotansodungCCP.c: 25: PEIE = 1;
	bsf	(94/8),(94)&7
	line	26
	
l8056:	
;dotansodungCCP.c: 26: GIE = 1;
	bsf	(95/8),(95)&7
	line	28
	
l8058:	
;dotansodungCCP.c: 28: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	29
	
l8060:	
;dotansodungCCP.c: 29: T1CKPS1 = 0; T1CKPS0 = 0;
	bcf	(133/8),(133)&7
	
l8062:	
	bcf	(132/8),(132)&7
	line	30
	
l8064:	
;dotansodungCCP.c: 30: T1SYNC = 1;
	bsf	(130/8),(130)&7
	line	31
	
l8066:	
;dotansodungCCP.c: 31: TMR1H = 0; TMR1L = 0;
	clrf	(15)	;volatile
	
l8068:	
	clrf	(14)	;volatile
	line	32
	
l8070:	
;dotansodungCCP.c: 32: TMR1GE = 0;
	bcf	(134/8),(134)&7
	line	33
	
l8072:	
;dotansodungCCP.c: 33: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	36
	
l8074:	
;dotansodungCCP.c: 35: {
;dotansodungCCP.c: 36: t= xung*(1.0/5000000.0);
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0x56
	movwf	(?___ftmul+1)
	movlw	0x34
	movwf	(?___ftmul+2)
	movf	(_xung+3),w
	movwf	(?___altoft+3)
	movf	(_xung+2),w
	movwf	(?___altoft+2)
	movf	(_xung+1),w
	movwf	(?___altoft+1)
	movf	(_xung),w
	movwf	(?___altoft)

	fcall	___altoft
	movf	(0+(?___altoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___altoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___altoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_t)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_t+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_t+2)^080h
	line	37
	
l8076:	
;dotansodungCCP.c: 37: f = 4.0/t;
	movf	(_t)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftdiv)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_t+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_t+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	0+(?___ftdiv)+03h
	movlw	0x80
	movwf	1+(?___ftdiv)+03h
	movlw	0x40
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(_f)
	movf	(1+(?___ftdiv)),w
	movwf	(_f+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_f+2)
	line	38
	
l8078:	
;dotansodungCCP.c: 38: lcd_gotoxy(0,0);
	clrf	(?_lcd_gotoxy)
	movlw	(0)
	fcall	_lcd_gotoxy
	line	39
	
l8080:	
;dotansodungCCP.c: 39: printf("xung: %05u",xung);
	movf	(_xung+3),w
	movwf	(?_printf+3)
	movf	(_xung+2),w
	movwf	(?_printf+2)
	movf	(_xung+1),w
	movwf	(?_printf+1)
	movf	(_xung),w
	movwf	(?_printf)

	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	40
	
l8082:	
;dotansodungCCP.c: 40: lcd_gotoxy(0,1);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	41
	
l8084:	
;dotansodungCCP.c: 41: printf("f: %3.2f",f);
	movf	(_f),w
	movwf	(?_printf)
	movf	(_f+1),w
	movwf	(?_printf+1)
	movf	(_f+2),w
	movwf	(?_printf+2)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l8074
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	43
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  f               1   12[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(9), STR_1(11), 
;;  _val            4    8[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  width           2   17[BANK1 ] int 
;;  exp             2   15[BANK1 ] int 
;;  flag            2   13[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   64[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       9      25       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text757
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 1
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printf@f stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@f)^080h
	
l7756:	
	movlw	(?_printf)&0ffh
	movwf	(printf@ap)^080h
	line	540
	goto	l8034
	line	542
	
l7758:	
	movf	(printf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4541
	goto	u4540
u4541:
	goto	l7762
u4540:
	line	545
	
l7760:	
	movf	(printf@c)^080h,w
	fcall	_putch
	line	546
	goto	l8034
	line	550
	
l7762:	
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	552
	clrf	(printf@flag)^080h
	clrf	(printf@flag+1)^080h
	goto	l7768
	line	583
	
l2197:	
	line	584
	bsf	(printf@flag)^080h+(2/8),(2)&7
	line	585
	
l7764:	
	incf	(printf@f)^080h,f
	line	555
	
l7768:	
	movf	(printf@f)^080h,w
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
	goto	l2197
	goto	l7770
	opt asmopt_on

	line	601
	
l7770:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u4551
	goto	u4550
u4551:
	goto	l7780
u4550:
	line	602
	
l7772:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	604
	
l7774:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(printf@width)^080h
	
l7776:	
	incf	(printf@f)^080h,f
	line	605
	
l7778:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4561
	goto	u4560
u4561:
	goto	l7774
u4560:
	line	614
	
l7780:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l7794
u4570:
	line	615
	
l7782:	
	bsf	(printf@flag)^080h+(14/8),(14)&7
	line	616
	
l7784:	
	incf	(printf@f)^080h,f
	line	624
	
l7786:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	625
	goto	l7792
	line	626
	
l7788:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	addwf	(0+(?___wmul)),w
	movwf	(??_printf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_printf+0)+0
	movf	0+(??_printf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(printf@prec)^080h
	
l7790:	
	incf	(printf@f)^080h,f
	line	625
	
l7792:	
	movf	(printf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4581
	goto	u4580
u4581:
	goto	l7788
u4580:
	goto	l7802
	line	629
	
l7794:	
	clrf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	631
	
l7796:	
	bsf	(printf@flag)^080h+(12/8),(12)&7
	goto	l7802
	line	665
	
l2212:	
	line	666
	bsf	(printf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l7804
	line	821
	
l7798:	
	movlw	0C0h
	iorwf	(printf@flag)^080h,f
	line	822
	goto	l7804
	line	638
	
l7802:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2291
	xorlw	102^0	; case 102
	skipnz
	goto	l2212
	xorlw	117^102	; case 117
	skipnz
	goto	l7798
	goto	l8034
	opt asmopt_on

	line	828
	
l7804:	
	movlw	low(0700h)
	andwf	(printf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(printf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_printf+0)+0
	movf	1+(??_printf+0)+0,w
	iorwf	0+(??_printf+0)+0,w
	skipnz
	goto	u4591
	goto	u4590
u4591:
	goto	l7956
u4590:
	line	830
	
l7806:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(printf@flag+1)^080h,(12)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l7810
u4600:
	line	832
	
l7808:	
	movlw	06h
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	line	833
	
l7810:	
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(printf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(printf@fval+2)^080h
	
l7812:	
	movlw	(03h)
	addwf	(printf@ap)^080h,f
	line	834
	
l7814:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4611
	goto	u4610
u4611:
	goto	l7820
u4610:
	line	835
	
l7816:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	836
	
l7818:	
	movlw	03h
	iorwf	(printf@flag)^080h,f
	line	838
	
l7820:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	839
	
l7822:	
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4621
	goto	u4620
u4621:
	goto	l7852
u4620:
	line	840
	
l7824:	
	movlw	low(printf@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+3
	movlw	0Fh
u4635:
	clrc
	rrf	(??_printf+0)+3,f
	rrf	(??_printf+0)+2,f
	rrf	(??_printf+0)+1,f
	rrf	(??_printf+0)+0,f
u4630:
	addlw	-1
	skipz
	goto	u4635
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	
l7826:	
	movlw	0FFh
	andwf	(printf@exp)^080h,f
	clrf	(printf@exp+1)^080h
	
l7828:	
	movlw	-126
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	841
	
l7830:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	842
	
l7832:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___wmul)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	line	843
	
l7834:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@exp)^080h
	line	844
	
l7836:	
	btfss	(printf@exp+1)^080h,7
	goto	u4641
	goto	u4640
u4641:
	goto	l7840
u4640:
	line	845
	
l7838:	
	movlw	-1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	849
	
l7840:	
	decf	(printf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	850
	
l7842:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	851
	
l7844:	
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
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
	goto	u4651
	goto	u4650
u4651:
	goto	l7848
u4650:
	line	852
	
l7846:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	goto	l7852
	line	853
	
l7848:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
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
	goto	u4661
	goto	u4660
u4661:
	goto	l7852
u4660:
	line	854
	
l7850:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(printf@exp)^080h,f
	skipnz
	incf	(printf@exp+1)^080h,f
	line	1115
	
l7852:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4675
	movlw	low(0Dh)
	subwf	(printf@prec)^080h,w
u4675:

	skipnc
	goto	u4671
	goto	u4670
u4671:
	goto	l7856
u4670:
	line	1116
	
l7854:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	1119
	
l7856:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4685
	movlw	low(0Ah)
	subwf	(printf@exp)^080h,w
u4685:

	skipnc
	goto	u4681
	goto	u4680
u4681:
	goto	l7864
u4680:
	
l7858:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval+2)^080h,w
	iorwf	(printf@fval+1)^080h,w
	iorwf	(printf@fval)^080h,w
	skipnz
	goto	u4691
	goto	u4690
u4691:
	goto	l7880
u4690:
	
l7860:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l7880
u4700:
	
l7862:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4715
	movlw	low(02h)
	subwf	(printf@exp)^080h,w
u4715:

	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l7880
u4710:
	line	1123
	
l7864:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
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
	goto	u4721
	goto	u4720
u4721:
	goto	l7868
u4720:
	line	1124
	
l7866:	
	movlw	-9
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1125
	goto	l7870
	line	1126
	
l7868:	
	movlw	-8
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1128
	
l7870:	
	movf	(printf@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@integ+2)^080h
	line	1129
	
l7874:	
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?__tdiv_to_l_+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?__tdiv_to_l_)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3160+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3160+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3160+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_printf$3160)^080h

	
l7876:	
	movf	(_printf$3160+3)^080h,w
	movwf	(printf@_val+3)^080h
	movf	(_printf$3160+2)^080h,w
	movwf	(printf@_val+2)^080h
	movf	(_printf$3160+1)^080h,w
	movwf	(printf@_val+1)^080h
	movf	(_printf$3160)^080h,w
	movwf	(printf@_val)^080h

	line	1132
	
l7878:	
	clrf	(printf@fval)^080h
	clrf	(printf@fval+1)^080h
	clrf	(printf@fval+2)^080h
	line	1133
	goto	l7884
	line	1134
	
l7880:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1135
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
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
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@fval+2)^080h
	line	1136
	
l7882:	
	clrf	(printf@exp)^080h
	clrf	(printf@exp+1)^080h
	line	1139
	
l7884:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1140
	
l7890:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)+0)
	fcall	stringdir
	movwf	((??_printf+1)+0+1)
	fcall	stringdir
	movwf	((??_printf+1)+0+2)
	fcall	stringdir
	movwf	((??_printf+1)+0+3)
	movf	3+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u4735
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u4735
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u4735
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u4735:
	skipnc
	goto	u4731
	goto	u4730
u4731:
	goto	l7894
u4730:
	goto	l7898
	line	1139
	
l7894:	
	incf	(printf@c)^080h,f
	
l7896:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l7890
u4740:
	line	1145
	
l7898:	
	movf	(printf@prec)^080h,w
	addwf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	skipnc
	incf	(printf@prec+1)^080h,w
	addlw	0
	btfsc	(printf@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_printf+0)+0,w
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@exp+1)^080h,w
	skipnc
	incf	(printf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??_printf+0)+0,w
	movwf	1+(??_printf+2)+0
	movf	0+(??_printf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	line	1150
	
l7900:	
	movf	(printf@prec+1)^080h,w
	iorwf	(printf@prec)^080h,w
	skipnz
	goto	u4751
	goto	u4750
u4751:
	goto	l7904
u4750:
	line	1151
	
l7902:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1152
	
l7904:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l7908
u4760:
	line	1153
	
l7906:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1156
	
l7908:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l7922
u4770:
	goto	l7916
	line	1170
	
l7912:	
	movlw	(030h)
	fcall	_putch
	line	1171
	
l7914:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1169
	
l7916:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4785
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u4785:

	skipnc
	goto	u4781
	goto	u4780
u4781:
	goto	l7912
u4780:
	goto	l7930
	line	1182
	
l7918:	
	movlw	(020h)
	fcall	_putch
	line	1183
	
l7920:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1181
	
l7922:	
	movf	(printf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4795
	movlw	low(01h)
	subwf	(printf@width)^080h,w
u4795:

	skipnc
	goto	u4791
	goto	u4790
u4791:
	goto	l7918
u4790:
	line	1189
	
l7924:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l7930
u4800:
	line	1191
	
l7926:	
	movlw	(02Dh)
	fcall	_putch
	goto	l7930
	line	1201
	
l7928:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
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
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
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
	fcall	_putch
	line	1197
	
l7930:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l7928
u4810:
	goto	l7936
	line	1205
	
l7932:	
	movlw	(030h)
	fcall	_putch
	line	1206
	
l7934:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@exp)^080h,f
	skipc
	decf	(printf@exp+1)^080h,f
	line	1204
	
l7936:	
	movf	(printf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4825
	movlw	low(01h)
	subwf	(printf@exp)^080h,w
u4825:

	skipnc
	goto	u4821
	goto	u4820
u4821:
	goto	l7932
u4820:
	line	1208
	
l7938:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4835
	movlw	low(09h)
	subwf	(printf@prec)^080h,w
u4835:

	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l7942
u4830:
	line	1209
	
l7940:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printf@c)^080h
	goto	l2256
	line	1211
	
l7942:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	
l2256:	
	line	1212
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@prec+1)^080h,f
	subwf	(printf@prec+1)^080h,f
	line	1216
	movf	(printf@c)^080h,w
	skipz
	goto	u4840
	goto	l2257
u4840:
	line	1218
	
l7944:	
	movlw	(02Eh)
	fcall	_putch
	
l2257:	
	line	1224
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@fval+2)^080h,w
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
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1225
	goto	l7948
	line	1226
	
l7946:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
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
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
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
	fcall	_putch
	line	1227
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
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
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h

	line	1225
	
l7948:	
	decf	(printf@c)^080h,f
	incf	((printf@c)^080h),w
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l7946
u4850:
	goto	l7954
	line	1231
	
l7950:	
	movlw	(030h)
	fcall	_putch
	line	1232
	
l7952:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	line	1230
	
l7954:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u4861
	goto	u4860
u4861:
	goto	l7950
u4860:
	goto	l8034
	line	1281
	
l7956:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_printf+0)+0+1
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printf@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((printf@_val)^080h)+1
	clrf	2+((printf@_val)^080h)
	clrf	3+((printf@_val)^080h)
	
l7958:	
	incf	(printf@ap)^080h,f
	incf	(printf@ap)^080h,f
	line	1285
	
l7960:	
	movf	((printf@prec+1)^080h),w
	iorwf	((printf@prec)^080h),w
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l7966
u4870:
	
l7962:	
	movf	(printf@_val+3)^080h,w
	iorwf	(printf@_val+2)^080h,w
	iorwf	(printf@_val+1)^080h,w
	iorwf	(printf@_val)^080h,w
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l7966
u4880:
	line	1286
	
l7964:	
	incf	(printf@prec)^080h,f
	skipnz
	incf	(printf@prec+1)^080h,f
	line	1300
	
l7966:	
	clrf	(printf@c)^080h
	incf	(printf@c)^080h,f
	line	1301
	
l7972:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_printf+1)+0)
	fcall	stringdir
	movwf	((??_printf+1)+0+1)
	fcall	stringdir
	movwf	((??_printf+1)+0+2)
	fcall	stringdir
	movwf	((??_printf+1)+0+3)
	movf	3+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+3)^080h,w
	skipz
	goto	u4895
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+2)^080h,w
	skipz
	goto	u4895
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val+1)^080h,w
	skipz
	goto	u4895
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_printf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@_val)^080h,w
u4895:
	skipnc
	goto	u4891
	goto	u4890
u4891:
	goto	l7976
u4890:
	goto	l7980
	line	1300
	
l7976:	
	incf	(printf@c)^080h,f
	
l7978:	
	movf	(printf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l7972
u4900:
	line	1334
	
l7980:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+2)+0,w
	skipz
	goto	u4915
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u4915:

	skipnc
	goto	u4911
	goto	u4910
u4911:
	goto	l7984
u4910:
	line	1335
	
l7982:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	movwf	(printf@c)^080h
	goto	l7988
	line	1336
	
l7984:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+2)+0
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	subwf	(??_printf+2)+0,w
	skipz
	goto	u4925
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@prec)^080h,w
u4925:

	skipnc
	goto	u4921
	goto	u4920
u4921:
	goto	l7988
u4920:
	line	1337
	
l7986:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	movwf	(printf@prec)^080h
	clrf	(printf@prec+1)^080h
	btfsc	(printf@prec)^080h,7
	decf	(printf@prec+1)^080h,f
	line	1340
	
l7988:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u4931
	goto	u4930
u4931:
	goto	l7994
u4930:
	
l7990:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l7994
u4940:
	line	1341
	
l7992:	
	movlw	-1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	line	1343
	
l7994:	
	btfss	(printf@flag+1)^080h,(14)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l8002
u4950:
	line	1344
	
l7996:	
	movf	(printf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+0)+0,w
	skipz
	goto	u4965
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	subwf	(printf@prec)^080h,w
u4965:

	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l8000
u4960:
	line	1345
	
l7998:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@prec)^080h,w
	subwf	(printf@width)^080h,f
	movf	(printf@prec+1)^080h,w
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8002
	line	1347
	
l8000:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1376
	
l8002:	
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	1+(??_printf+0)+0,w
	xorlw	80h
	movwf	(??_printf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_printf+2)+0,w
	skipz
	goto	u4975
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_printf+0)+0,w
u4975:

	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l8006
u4970:
	line	1377
	
l8004:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(printf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrf	(??_printf+0)+0+1
	btfsc	(??_printf+0)+0,7
	decf	(??_printf+0)+0+1,f
	movf	0+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(printf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_printf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(printf@width+1)^080h,f
	subwf	(printf@width+1)^080h,f
	goto	l8008
	line	1379
	
l8006:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(printf@width)^080h
	clrf	(printf@width+1)^080h
	line	1382
	
l8008:	
	btfss	(printf@flag)^080h,(2)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l8020
u4980:
	line	1387
	
l8010:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l8014
u4990:
	line	1388
	
l8012:	
	movlw	(02Dh)
	fcall	_putch
	line	1410
	
l8014:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5001
	goto	u5000
u5001:
	goto	l8032
u5000:
	line	1412
	
l8016:	
	movlw	(030h)
	fcall	_putch
	line	1413
	
l8018:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l8016
u5010:
	goto	l8032
	line	1423
	
l8020:	
	movf	(printf@width+1)^080h,w
	iorwf	(printf@width)^080h,w
	skipnz
	goto	u5021
	goto	u5020
u5021:
	goto	l8026
u5020:
	line	1425
	
l8022:	
	movlw	(020h)
	fcall	_putch
	line	1426
	
l8024:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@width)^080h,f
	skipc
	decf	(printf@width+1)^080h,f
	movf	(((printf@width+1)^080h)),w
	iorwf	(((printf@width)^080h)),w
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l8022
u5030:
	line	1433
	
l8026:	
	movf	(printf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l8032
u5040:
	line	1434
	
l8028:	
	movlw	(02Dh)
	fcall	_putch
	goto	l8032
	line	1484
	
l8030:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printf+0)+0
	clrc
	rlf	(??_printf+0)+0,f
	clrc
	rlf	(??_printf+0)+0,w
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
	movf	(printf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___lldiv)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@_val)^080h,w
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
	movwf	(printf@c)^080h
	line	1516
	movf	(printf@c)^080h,w
	fcall	_putch
	line	1469
	
l8032:	
	movlw	-1
	bsf	status, 5	;RP0=1, select bank1
	addwf	(printf@prec)^080h,f
	skipc
	decf	(printf@prec+1)^080h,f
	incf	((printf@prec)^080h),w
	skipnz
	incf	((printf@prec+1)^080h),w

	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l8030
u5050:
	line	540
	
l8034:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(printf@f)^080h,w
	incf	(printf@f)^080h,f
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)^080h
	movf	((printf@c)^080h),f
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l7758
u5060:
	line	1533
	
l2291:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text758,local,class=CODE,delta=2
global __ptext758
__ptext758:

;; *************** function _putch *****************
;; Defined at:
;;		line 55 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
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
psect	text758
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
	line	55
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 1
; Regs used in _putch: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@c)
	line	56
	
l7754:	
;dotansodungCCP.c: 56: lcd_putc(c);
	movf	(putch@c),w
	fcall	_lcd_putc
	line	57
	
l2155:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_putc
psect	text759,local,class=CODE,delta=2
global __ptext759
__ptext759:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
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
psect	text759
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 1
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	movwf	(lcd_putc@c)
	line	144
	
l7736:	
;lcd(16).c: 144: switch(c){
	goto	l7752
	line	146
	
l7738:	
;lcd(16).c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd(16).c: 147: while(lcd_busy());
	
l7740:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l7740
u4510:
	goto	l1082
	line	150
	
l7742:	
;lcd(16).c: 150: lcd_gotoxy(0, 1);
	clrf	(?_lcd_gotoxy)
	incf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd(16).c: 151: break;
	goto	l1082
	line	153
	
l7744:	
;lcd(16).c: 153: if(isprint(c)){
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u4521
	goto	u4520
u4521:
	goto	l1082
u4520:
	line	154
	
l7746:	
;lcd(16).c: 154: lcd_put_byte(1, c);
	movf	(lcd_putc@c),w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd(16).c: 155: while(lcd_busy());
	
l7748:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l7748
u4530:
	goto	l1082
	line	144
	
l7752:	
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
	goto	l7742
	xorlw	12^10	; case 12
	skipnz
	goto	l7738
	goto	l7744
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
psect	text760,local,class=CODE,delta=2
global __ptext760
__ptext760:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   54[BANK0 ] float 
;;  f1              3   57[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] float 
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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text760
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 2
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7730:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7732:	
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
	
l3381:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text761,local,class=CODE,delta=2
global __ptext761
__ptext761:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   52[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] char 
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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text761
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 2
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l7690:	
	btfss	(scale@scl),7
	goto	u4461
	goto	u4460
u4461:
	goto	l7712
u4460:
	line	425
	
l7692:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l7694:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l7702
u4470:
	line	427
	
l7696:	
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
	movwf	(_scale$4114)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4114+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4114+2)
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
	movf	(_scale$4114),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4114+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4114+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2184
	line	428
	
l7702:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l7708
u4480:
	line	429
	
l7704:	
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
	goto	l2184
	line	430
	
l7708:	
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
	goto	l2184
	line	432
	
l7712:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l7720
u4490:
	line	433
	
l7714:	
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
	movwf	(_scale$4114)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$4114+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$4114+2)
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
	movf	(_scale$4114),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$4114+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$4114+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l2184
	line	434
	
l7720:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4501
	goto	u4500
u4501:
	goto	l7726
u4500:
	line	435
	
l7722:	
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
	goto	l2184
	line	436
	
l7726:	
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
	
l2184:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text762,local,class=CODE,delta=2
global __ptext762
__ptext762:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   63[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] unsigned char 
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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text762
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 2
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l7668:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l7678
u4440:
	line	410
	
l7670:	
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
	movwf	(_fround$4112)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4112+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4112+2)
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
	movf	(_fround$4112),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4112+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4112+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$4113)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4113+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4113+2)
	
l7672:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4113),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4113+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4113+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2177
	line	411
	
l7678:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l7686
u4450:
	line	412
	
l7680:	
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
	movwf	(_fround$4112)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$4112+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$4112+2)
	
l7682:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$4112),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$4112+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$4112+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l2177
	line	413
	
l7686:	
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
	
l2177:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_gotoxy
psect	text763,local,class=CODE,delta=2
global __ptext763
__ptext763:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
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
psect	text763
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 1
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	movwf	(lcd_gotoxy@col)
	
l7656:	
;lcd(16).c: 163: unsigned char address;
;lcd(16).c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u4420
	goto	l7660
u4420:
	line	166
	
l7658:	
;lcd(16).c: 166: address=0x40;
	movlw	(040h)
	movwf	(lcd_gotoxy@address)
	goto	l7662
	line	168
	
l7660:	
;lcd(16).c: 167: else
;lcd(16).c: 168: address=0;
	clrf	(lcd_gotoxy@address)
	line	170
	
l7662:	
;lcd(16).c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l7664:	
;lcd(16).c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd(16).c: 172: while(lcd_busy());
	
l7666:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l7666
u4430:
	line	173
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_lcd_init
psect	text764,local,class=CODE,delta=2
global __ptext764
__ptext764:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
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
psect	text764
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l6794:	
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
	
l6796:	
;lcd(16).c: 18: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_lcd_init+0)+0+2),f
movlw	138
movwf	((??_lcd_init+0)+0+1),f
	movlw	86
movwf	((??_lcd_init+0)+0),f
u5077:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5077
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5077
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5077
	nop2
opt asmopt_on

	line	21
	
l6798:	
;lcd(16).c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l6800:	
;lcd(16).c: 22: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5087:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5087
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5087
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5087
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
	
l6802:	
;lcd(16).c: 24: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_lcd_init+0)+0+2),f
movlw	69
movwf	((??_lcd_init+0)+0+1),f
	movlw	169
movwf	((??_lcd_init+0)+0),f
u5097:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5097
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5097
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5097
	nop2
opt asmopt_on

	line	25
	
l6804:	
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
u5107:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5107
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5107
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5107
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
u5117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5117
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5117
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
u5127:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5127
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5127
	decfsz	((??_lcd_init+0)+0+2),f
	goto	u5127
	nop2
opt asmopt_on

	line	30
;lcd(16).c: 30: while(lcd_busy());
	
l6806:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l6806
u3290:
	line	31
	
l6808:	
;lcd(16).c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd(16).c: 32: while(lcd_busy());
	
l6810:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l6810
u3300:
	line	34
	
l6812:	
;lcd(16).c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd(16).c: 35: while(lcd_busy());
	
l6814:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l6814
u3310:
	line	36
	
l6816:	
;lcd(16).c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd(16).c: 37: while(lcd_busy());
	
l6818:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l6818
u3320:
	line	39
	
l6820:	
;lcd(16).c: 39: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd(16).c: 40: while(lcd_busy());
	
l6822:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l6822
u3330:
	line	41
	
l6824:	
;lcd(16).c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd(16).c: 42: while(lcd_busy());
	
l6826:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l6826
u3340:
	line	43
	
l6828:	
;lcd(16).c: 43: lcd_put_byte(0,0x01);
	clrf	(?_lcd_put_byte)
	incf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd(16).c: 44: while(lcd_busy());
	
l6830:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l6830
u3350:
	line	45
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lltoft
psect	text765,local,class=CODE,delta=2
global __ptext765
__ptext765:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text765
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 3
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7646:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l7650
	line	42
	
l7648:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l7650:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l7648
u4410:
	line	45
	
l7652:	
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
	
l3538:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text766,local,class=CODE,delta=2
global __ptext766
__ptext766:

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
psect	text766
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 4
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l7630:	
	clrf	(___altoft@sign)
	line	46
	
l7632:	
	movlw	(08Eh)
	movwf	(___altoft@exp)
	line	47
	
l7634:	
	btfss	(___altoft@c+3),7
	goto	u4391
	goto	u4390
u4391:
	goto	l7640
u4390:
	line	48
	
l7636:	
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
	goto	l7640
	line	53
	
l7638:	
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	line	54
	incf	(___altoft@exp),f
	line	52
	
l7640:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l7638
u4400:
	line	56
	
l7642:	
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
	
l3530:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___ftmul
psect	text767,local,class=CODE,delta=2
global __ptext767
__ptext767:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[BANK0 ] float 
;;  f2              3   30[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   37[BANK0 ] unsigned um
;;  sign            1   41[BANK0 ] unsigned char 
;;  cntr            1   40[BANK0 ] unsigned char 
;;  exp             1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[BANK0 ] float 
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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text767
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6712:	
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
	goto	u3181
	goto	u3180
u3181:
	goto	l6718
u3180:
	line	57
	
l6714:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3397
	line	58
	
l6718:	
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
	goto	u3191
	goto	u3190
u3191:
	goto	l6724
u3190:
	line	59
	
l6720:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l3397
	line	60
	
l6724:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l6726:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l6728:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l6730:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l6732:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6734:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6736:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6738:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l6740:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l6742:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l6746
u3200:
	line	72
	
l6744:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3211
	addwf	(___ftmul@f3_as_product+1),f
u3211:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3212
	addwf	(___ftmul@f3_as_product+2),f
u3212:

	line	73
	
l6746:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l6748:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l6750:	
	decfsz	(___ftmul@cntr),f
	goto	u3221
	goto	u3220
u3221:
	goto	l6742
u3220:
	line	76
	
l6752:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l6754:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l6758
u3230:
	line	79
	
l6756:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3241
	addwf	(___ftmul@f3_as_product+1),f
u3241:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3242
	addwf	(___ftmul@f3_as_product+2),f
u3242:

	line	80
	
l6758:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l6760:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l6762:	
	decfsz	(___ftmul@cntr),f
	goto	u3251
	goto	u3250
u3251:
	goto	l6754
u3250:
	line	83
	
l6764:	
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
	
l3397:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[BANK0 ] float 
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   18[BANK0 ] float 
;;  sign            1   22[BANK0 ] unsigned char 
;;  exp             1   21[BANK0 ] unsigned char 
;;  cntr            1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
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
psect	text768
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6668:	
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
	goto	u3141
	goto	u3140
u3141:
	goto	l6674
u3140:
	line	56
	
l6670:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3387
	line	57
	
l6674:	
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
	goto	u3151
	goto	u3150
u3151:
	goto	l3388
u3150:
	line	58
	
l6676:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l3387
	
l3388:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l6680:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6682:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l6684:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6686:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l6688:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l6690:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6692:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l6694:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l6696:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l6698:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3165
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3165
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3165:
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l6704
u3160:
	line	72
	
l6700:	
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
	
l6702:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l6704:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l6706:	
	decfsz	(___ftdiv@cntr),f
	goto	u3171
	goto	u3170
u3171:
	goto	l6698
u3170:
	line	77
	
l6708:	
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
	
l3387:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   42[BANK0 ] float 
;;  f2              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   53[BANK0 ] unsigned char 
;;  exp2            1   52[BANK0 ] unsigned char 
;;  sign            1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
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
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text769
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6590:	
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
	
l6592:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2940
	goto	l6598
u2940:
	
l6594:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l6602
u2950:
	
l6596:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l6602
u2960:
	line	93
	
l6598:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l3345
	line	94
	
l6602:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2970
	goto	l3348
u2970:
	
l6604:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l6608
u2980:
	
l6606:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l6608
u2990:
	
l3348:	
	line	95
	goto	l3345
	line	96
	
l6608:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l6610:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l3349
u3000:
	line	98
	
l6612:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l3349:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l3350
u3010:
	line	100
	
l6614:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l3350:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6616:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6618:	
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
	goto	u3021
	goto	u3020
u3021:
	goto	l6630
u3020:
	line	110
	
l6620:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l6622:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3031
	goto	u3030
u3031:
	goto	l6628
u3030:
	
l6624:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l6620
u3040:
	goto	l6628
	line	114
	
l6626:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l6628:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l6626
u3050:
	goto	l3359
	line	117
	
l6630:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l3359
u3060:
	line	121
	
l6632:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l6634:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l6640
u3070:
	
l6636:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l6632
u3080:
	goto	l6640
	line	125
	
l6638:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l6640:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l6638
u3090:
	line	129
	
l3359:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l6646
u3100:
	line	131
	
l6642:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l6644:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l6646:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l6652
u3110:
	line	136
	
l6648:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l6650:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l6652:	
	clrf	(___ftadd@sign)
	line	140
	
l6654:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3121
	addwf	(___ftadd@f2+1),f
u3121:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3122
	addwf	(___ftadd@f2+2),f
u3122:

	line	141
	
l6656:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l6664
u3130:
	line	142
	
l6658:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l6660:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l6662:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l6664:	
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
	
l3345:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
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
psect	text770
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 1
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6576:	
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
	
l6578:	
;lcd(16).c: 57: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5137:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5137
opt asmopt_on

	line	58
	
l6580:	
;lcd(16).c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd(16).c: 59: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5147:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5147
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
	
l6582:	
;lcd(16).c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd(16).c: 64: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5157:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5157
opt asmopt_on

	line	65
	
l6584:	
;lcd(16).c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd(16).c: 66: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_busy+0)+0,f
u5167:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5167
opt asmopt_on

	line	67
	
l6586:	
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
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
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
psect	text771
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\lcd(16).c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 1
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	movwf	(lcd_put_byte@rs)
	
l6540:	
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
	
l6542:	
;lcd(16).c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u2770
	goto	l6546
u2770:
	
l6544:	
	bsf	(65/8),(65)&7
	line	117
	
l6546:	
;lcd(16).c: 117: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5177:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5177
opt asmopt_on

	line	118
	
l6548:	
;lcd(16).c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd(16).c: 119: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5187:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5187
opt asmopt_on

	line	120
	
l6550:	
;lcd(16).c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd(16).c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6552:	
;lcd(16).c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2781
	goto	u2780
	
u2781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2794
u2780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2794:
	line	126
	
l6554:	
;lcd(16).c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2801
	goto	u2800
	
u2801:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2814
u2800:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2814:
	line	127
	
l6556:	
;lcd(16).c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2821
	goto	u2820
	
u2821:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2834
u2820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2834:
	line	128
	
l6558:	
;lcd(16).c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2841
	goto	u2840
	
u2841:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2854
u2840:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2854:
	line	129
;lcd(16).c: 129: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5197:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5197
opt asmopt_on

	line	130
	
l6560:	
;lcd(16).c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd(16).c: 131: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5207:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5207
opt asmopt_on

	line	132
	
l6562:	
;lcd(16).c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6564:	
;lcd(16).c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2861
	goto	u2860
	
u2861:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u2874
u2860:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u2874:
	line	135
	
l6566:	
;lcd(16).c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u2881
	goto	u2880
	
u2881:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u2894
u2880:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u2894:
	line	136
	
l6568:	
;lcd(16).c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2901
	goto	u2900
	
u2901:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u2914
u2900:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u2914:
	line	137
	
l6570:	
;lcd(16).c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u2921
	goto	u2920
	
u2921:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u2934
u2920:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u2934:
	line	138
;lcd(16).c: 138: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5217:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5217
opt asmopt_on

	line	139
	
l6572:	
;lcd(16).c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd(16).c: 140: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_lcd_put_byte+0)+0,f
u5227:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5227
opt asmopt_on

	line	141
	
l6574:	
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
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

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
psect	text772
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l7594:	
	clrf	(___awmod@sign)
	line	9
	
l7596:	
	btfss	(___awmod@dividend+1),7
	goto	u4321
	goto	u4320
u4321:
	goto	l7602
u4320:
	line	10
	
l7598:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l7600:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l7602:	
	btfss	(___awmod@divisor+1),7
	goto	u4331
	goto	u4330
u4331:
	goto	l7606
u4330:
	line	14
	
l7604:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l7606:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4341
	goto	u4340
u4341:
	goto	l7622
u4340:
	line	16
	
l7608:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l7612
	line	18
	
l7610:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l7612:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l7610
u4350:
	line	22
	
l7614:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4365
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4365:
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l7618
u4360:
	line	23
	
l7616:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l7618:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l7620:	
	decfsz	(___awmod@counter),f
	goto	u4371
	goto	u4370
u4371:
	goto	l7614
u4370:
	line	27
	
l7622:	
	movf	(___awmod@sign),w
	skipz
	goto	u4380
	goto	l7626
u4380:
	line	28
	
l7624:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l7626:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l3516:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text773
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l7568:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l7570:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u4281
	goto	u4280
u4281:
	goto	l7590
u4280:
	line	11
	
l7572:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l7576
	line	13
	
l7574:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l7576:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l7574
u4290:
	line	17
	
l7578:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l7580:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u4305
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u4305
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u4305
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u4305:
	skipc
	goto	u4301
	goto	u4300
u4301:
	goto	l7586
u4300:
	line	19
	
l7582:	
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
	
l7584:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l7586:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l7588:	
	decfsz	(___lldiv@counter),f
	goto	u4311
	goto	u4310
u4311:
	goto	l7578
u4310:
	line	25
	
l7590:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l3477:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text774
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l7548:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l7552
u4250:
	line	7
	
l7550:	
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
	
l7552:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l7556
u4260:
	line	9
	
l7554:	
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
	
l7556:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l7558:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l7560:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4275
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4275
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4275:
	skipnc
	goto	u4271
	goto	u4270
u4271:
	goto	l7564
u4270:
	
l7562:	
	clrc
	
	goto	l3467
	
l7564:	
	setc
	
	line	13
	
l3467:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text775
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l7540:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4241
	goto	u4240
u4241:
	goto	l7544
u4240:
	line	18
	
l7542:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l7544:	
	line	20
	
l3462:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text776
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l7520:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u4201
	goto	u4200
u4201:
	goto	l7536
u4200:
	line	9
	
l7522:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l7526
	line	11
	
l7524:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l7526:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l7524
u4210:
	line	15
	
l7528:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u4225
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u4225
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u4225
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u4225:
	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l7532
u4220:
	line	16
	
l7530:	
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
	
l7532:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l7534:	
	decfsz	(___llmod@counter),f
	goto	u4231
	goto	u4230
u4231:
	goto	l7528
u4230:
	line	20
	
l7536:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l3458:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

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
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text777
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l7476:	
	clrf	(___awdiv@sign)
	line	10
	
l7478:	
	btfss	(___awdiv@divisor+1),7
	goto	u4131
	goto	u4130
u4131:
	goto	l7484
u4130:
	line	11
	
l7480:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l7482:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l7484:	
	btfss	(___awdiv@dividend+1),7
	goto	u4141
	goto	u4140
u4141:
	goto	l7490
u4140:
	line	15
	
l7486:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l7488:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l7490:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l7492:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4151
	goto	u4150
u4151:
	goto	l7512
u4150:
	line	20
	
l7494:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l7498
	line	22
	
l7496:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l7498:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l7496
u4160:
	line	26
	
l7500:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l7502:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4175
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4175:
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l7508
u4170:
	line	28
	
l7504:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l7506:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l7508:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l7510:	
	decfsz	(___awdiv@counter),f
	goto	u4181
	goto	u4180
u4181:
	goto	l7500
u4180:
	line	34
	
l7512:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4190
	goto	l7516
u4190:
	line	35
	
l7514:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l7516:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l3448:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text778
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6348:	
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
	goto	u2431
	goto	u2430
u2431:
	goto	l6352
u2430:
	line	50
	
l6350:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l3408
	line	51
	
l6352:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2445:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2440:
	addlw	-1
	skipz
	goto	u2445
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6354:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6356:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6358:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6360:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6362:	
	btfss	(___fttol@exp1),7
	goto	u2451
	goto	u2450
u2451:
	goto	l6372
u2450:
	line	57
	
l6364:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l6368
u2460:
	goto	l6350
	line	60
	
l6368:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l6370:	
	incfsz	(___fttol@exp1),f
	goto	u2471
	goto	u2470
u2471:
	goto	l6368
u2470:
	goto	l6378
	line	63
	
l6372:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l3415
u2480:
	goto	l6350
	line	66
	
l6376:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l3415:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l6376
u2490:
	line	70
	
l6378:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2500
	goto	l6382
u2500:
	line	71
	
l6380:	
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
	
l6382:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l3408:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

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
psect	text779
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6320:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2360
	goto	l6324
u2360:
	
l6322:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l6330
u2370:
	line	65
	
l6324:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l3667
	line	67
	
l6328:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l6330:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l6328
u2380:
	goto	l6334
	line	71
	
l6332:	
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
	
l6334:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l6332
u2390:
	goto	l6338
	line	76
	
l6336:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l6338:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l6336
u2400:
	
l3676:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l3677
u2410:
	line	80
	
l6340:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l3677:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l6342:	
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
	
l6344:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2420
	goto	l3678
u2420:
	line	84
	
l6346:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3678:	
	line	85
	line	86
	
l3667:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

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
psect	text780
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 3
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l6302:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6304:	
	clrf	(___lbmod@rem)
	line	12
	
l6306:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2335:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2335
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6308:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6310:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l6314
u2340:
	line	15
	
l6312:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6314:	
	decfsz	(___lbmod@counter),f
	goto	u2351
	goto	u2350
u2351:
	goto	l6306
u2350:
	line	17
	
l6316:	
	movf	(___lbmod@rem),w
	line	18
	
l3337:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

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
psect	text781
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 3
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l7452:	
	clrf	(___lbdiv@quotient)
	line	10
	
l7454:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u4090
	goto	l7472
u4090:
	line	11
	
l7456:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l7460
	
l3326:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l7458:	
	incf	(___lbdiv@counter),f
	line	12
	
l7460:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l3326
u4100:
	line	16
	
l3328:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l7462:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l7468
u4110:
	line	19
	
l7464:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l7466:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l7468:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l7470:	
	decfsz	(___lbdiv@counter),f
	goto	u4121
	goto	u4120
u4121:
	goto	l3328
u4120:
	line	25
	
l7472:	
	movf	(___lbdiv@quotient),w
	line	26
	
l3331:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text782
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l7436:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l7438:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l7442
u4070:
	line	8
	
l7440:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l7442:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l7444:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l7446:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l7438
u4080:
	line	12
	
l7448:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l3301:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

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
psect	text783
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l7420:	
	clrf	(___bmul@product)
	line	7
	
l7422:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l7426
u4050:
	line	8
	
l7424:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l7426:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l7428:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l7430:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l7422
u4060:
	line	12
	
l7432:	
	movf	(___bmul@product),w
	line	13
	
l3295:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text784
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 4
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l6200:	
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
	goto	u2161
	goto	u2160
u2161:
	goto	l6204
u2160:
	line	67
	
l6202:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l3585
	line	68
	
l6204:	
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
	goto	u2171
	goto	u2170
u2171:
	goto	l6208
u2170:
	goto	l6202
	line	70
	
l6208:	
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
	
l6210:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l6212:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l6214:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l6216:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l6218:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l6220:	
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
	goto	u2185
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2185
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2185
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2185:
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l3588
u2180:
	line	81
	
l6222:	
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
	
l6224:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l3588:	
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
	
l6226:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2191
	goto	u2190
u2191:
	goto	l6218
u2190:
	
l3589:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l6236
u2200:
	line	87
	
l6228:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l6232
u2210:
	goto	l6202
	line	90
	
l6232:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l6234:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2221
	goto	u2220
u2221:
	goto	l6232
u2220:
	goto	l6242
	line	93
	
l6236:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l3596
u2230:
	goto	l6202
	line	96
	
l6240:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l3596:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l6240
u2240:
	line	100
	
l6242:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l3585:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

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
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text785
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 4
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l6152:	
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
	goto	u2071
	goto	u2070
u2071:
	goto	l6156
u2070:
	line	67
	
l6154:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l3542
	line	68
	
l6156:	
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
	goto	u2081
	goto	u2080
u2081:
	goto	l3543
u2080:
	goto	l6154
	line	69
	
l3543:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l6160:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l6162:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l6164:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l6166:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l6168:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l6170:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l6172:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2095
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2095
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2095:
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l6178
u2090:
	line	81
	
l6174:	
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
	
l6176:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l6178:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l6180:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u2101
	goto	u2100
u2101:
	goto	l6170
u2100:
	
l3546:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2111
	goto	u2110
u2111:
	goto	l6190
u2110:
	line	87
	
l6182:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2121
	goto	u2120
u2121:
	goto	l6186
u2120:
	goto	l6154
	line	90
	
l6186:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l6188:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2131
	goto	u2130
u2131:
	goto	l6186
u2130:
	goto	l6196
	line	93
	
l6190:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l3553
u2140:
	goto	l6154
	line	96
	
l6194:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l3553:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l6194
u2150:
	line	100
	
l6196:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l3542:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

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
;;		On entry : 60/20
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
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l7408:	
	clrf	(_isdigit$3670)
	
l7410:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l7416
u4030:
	
l7412:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l7416
u4040:
	
l7414:	
	clrf	(_isdigit$3670)
	incf	(_isdigit$3670),f
	
l7416:	
	rrf	(_isdigit$3670),w
	
	line	15
	
l3280:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_isprint
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

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
psect	text787
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
	
l7396:	
	clrf	(_isprint$3673)
	
l7398:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l7404
u4010:
	
l7400:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l7404
u4020:
	
l7402:	
	clrf	(_isprint$3673)
	incf	(_isprint$3673),f
	
l7404:	
	rrf	(_isprint$3673),w
	
	line	15
	
l3285:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_ngat
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

;; *************** function _ngat *****************
;; Defined at:
;;		line 45 in file "C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
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
psect	text788
	file	"C:\Users\DELL\Desktop\baitap_ttvxl\dotanso_dungCCP\dotansodungCCP.c"
	line	45
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
psect	text788
	line	46
	
i1l6126:	
;dotansodungCCP.c: 46: if( CCP1IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(98/8),(98)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l6132
u203_20:
	line	48
	
i1l6128:	
;dotansodungCCP.c: 47: {
;dotansodungCCP.c: 48: xung = abs(CCPR1 - ccp1_old);
	movf	(21+1),w	;volatile
	movwf	(?_abs+1)
	movf	(21),w	;volatile
	movwf	(?_abs)
	movf	(_ccp1_old),w
	subwf	(?_abs),f
	movf	(_ccp1_old+1),w
	skipc
	decf	(?_abs+1),f
	subwf	(?_abs+1),f
	fcall	_abs
	movf	(0+(?_abs)),w
	movwf	(_xung)
	movf	(1+(?_abs)),w
	movwf	(_xung+1)
	movlw	0
	btfsc	(_xung+1),7
	movlw	255
	movwf	(_xung+2)
	movwf	(_xung+3)
	line	49
	
i1l6130:	
;dotansodungCCP.c: 49: ccp1_old = CCPR1;
	movf	(21+1),w	;volatile
	movwf	(_ccp1_old+1)	;volatile
	movf	(21),w	;volatile
	movwf	(_ccp1_old)	;volatile
	line	51
	
i1l6132:	
;dotansodungCCP.c: 50: }
;dotansodungCCP.c: 51: CCP1IF = 0;
	bcf	(98/8),(98)&7
	line	52
	
i1l2152:	
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
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

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
psect	text789
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\abs.c"
	line	5
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
	opt	stack 1
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
i1l6134:	
	btfss	(abs@a+1),7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l3274
u204_20:
	line	7
	
i1l6136:	
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
	goto	i1l3275
	
i1l3274:	
	line	8
	line	9
	
i1l3275:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
;; =============== function _abs ends ============

	signat	_abs,4218
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
