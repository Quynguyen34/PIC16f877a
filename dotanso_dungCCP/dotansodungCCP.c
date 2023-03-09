#include<htc.h>
#include<stdio.h>
#include <stdlib.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
int dem,ccp1_old;
long int xung;
int adc;
float v,f,t;
void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();
	TRISE0 =  0; RE0 =1;
	//////////
	TRISC2 = 1;//input ccp1
	CCP1CON = 0b00000101;
	CCPR1H = CCPR1L = 0;
	CCP1IE = 1;
	CCP1IF = 0;
	PEIE = 1;
	GIE = 1;	
	//timer 1- timer mode
	TMR1CS = 0;
	T1CKPS1 = 0; T1CKPS0 = 0;  //1:1
	T1SYNC = 1;
	TMR1H = 0; TMR1L = 0;
	TMR1GE = 0;
	TMR1ON = 1;
	while(1)
	{
	    t= xung*(1.0/5000000.0);
		f = 4.0/t;
		lcd_gotoxy(0,0);
		printf("xung: %05u",xung);
		lcd_gotoxy(0,1);
		printf("f: %3.2f",f);
	}	
}
void interrupt ngat()
{	
 if( CCP1IF)
	{
		xung = abs(CCPR1 - ccp1_old);
		ccp1_old = CCPR1;
	}
	CCP1IF = 0;
}

void putch(char c)
{
	lcd_putc(c);
}