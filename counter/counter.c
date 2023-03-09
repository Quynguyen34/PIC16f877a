#include<htc.h>
#include<stdio.h>
#include "lcd(16).h"

#define _XTAL_FREQ 20000000

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF & CPD_OFF 
 & BOREN_ON & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
int dem;
int adc;
float res;
void main()
{
 	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();

	TRISE0 =  0;
	T0CS = 1;

	T0SE = 1;
	PSA = 1;
//	PS2 = 0; PS1 = 1; PS0 =0; 
	TMR0 = 0;
	T0IE = 1;
	T0IF = 0;
	GIE = 1;
    int count, count1, count2;
	float v;
	while(1)
	{
		count1  = TMR0 + dem*256;
		__delay_ms(500);
		count2  = TMR0 + dem*256;
		count = count2 - count1;
		v = (count/360.0)*2.0*60.0;
		lcd_gotoxy(0,1);
		printf("v:%3.2f",v);
	}	
}
void interrupt ngat()
{
//	TMR0 = 6;
	if(T0IF)
	{
		dem++;
	}
		T0IF= 0;
}


void putch(char c)
{
	lcd_putc(c);
}