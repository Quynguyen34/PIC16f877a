#include<htc.h>
#include<stdio.h>
#include<stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
//FOSC_INTRC_NOCLKOUT
//OSCCON = 0b01100001;
unsigned char maled[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void quetled (char chuc_t, char donvi_t);
int dem;
int count, count1, count2,count_old;
long int xung;
float t,f,d;
float res;
void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();
	TRISE0 = 0;TRISE1 = 0; RE1 =0;
	TRISC0 =1;
//timer 1 set up
	TMR1CS = 0;
	T1CKPS1 = 0;T1CKPS0 = 0; //1:1
	T1SYNC = 1;
	TMR1GE = 0;
	TMR1H = 0; TMR1L = 0;
	TMR1ON = 0;
// ccp1 set up 
	//TRISC2 = 1; //input 
//	TRISC1 = 1; //input
//	CCP1CON = 0b00000101;  // capture 1 rissing
//	CCP2CON = 0b00000100;  // capture 1 falling
	
	TRISB1 = 1;
	IOCB = 0b00000010;
	RBIE = 1;
	RBIF = 0;
	
//	CCP1IE = 1;
//	CCP1IF = 0;
	
//	CCP2IE = 1;
//	CCP2IF = 0;

	PEIE = 1;
	GIE = 1;
	while(1)
	{	/// tao xung chan trig
		__delay_ms(100);
		RE1 = 1;
		__delay_ms(1);
		RE1 = 0;
      ////// 
		xung = TMR1;
		t = xung*(1.0/5000000.0);
		d = (17000.0*t);
		TMR1 = 0;
		lcd_gotoxy(0,0);
		printf("xung: %08u",xung);
		lcd_gotoxy(0,1);
		printf("f: %5.2f",d);
	}	
}
void interrupt ngat()
{
	if(RB1 == 1) {TMR1ON = 1;}
	if(RB1 == 0) {TMR1ON = 0;}
	RBIF = 0;
}

void putch(char c)
{
	lcd_putc(c);
}