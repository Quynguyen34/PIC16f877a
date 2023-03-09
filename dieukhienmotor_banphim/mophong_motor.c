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
long int xung, pwm_dem;
float t,f,d,v;
void pwm_10bit(int data_pwm);
float res;
char rx_data;
void sendchar (char data);
void sendstring (const char* s);
void tx_init(); // khai bao ket  noi terminal
void rx_init(); // khai bao ket  noi terminal
void main()
{
	ANSEL = ANSELH = 0;  // diasble analog all I/O
	lcd_init();
	TRISC2 = 0;
	TRISB0=0; TRISB1=0;
	RB0=0; RB1=0;
tx_init();
rx_init();
/////TIMER0
	T0CS = 0;
	PSA = 0;	
	PS2 = 0; PS1 = 1; PS0 = 0; 
	TMR0 = 7;
	T0IE = 1;
	T0IF = 0;
	GIE = 1;
	//timer 1- counter mode
	TRISC0 = 1; //input
	TMR1CS = 1;
	T1CKPS1 = 0; T1CKPS0 = 0;  //1:1
	T1SYNC = 1;
	TMR1 = 0; 
	TMR1GE = 0;
	TMR1ON = 1;
//////TIMER2
	T2CKPS1=0; T2CKPS0=1;
	TMR2 =0;
	PR2= 249;//Cho phép timer 2 h?at d?ng
	CCP1CON=0b00001110;
	CCPR1L=124;
	TMR2ON=1;
	while(1)
	{
if (rx_data=='1') {RB0=1;RB1=0;sendstring("1");}
else {RB0=0;RB1=1;sendstring("0");}
		pwm_dem++;
		pwm_10bit(100);
//		v=(xung/360.0)*10.0*60.0;
		lcd_gotoxy(0,0);
		printf("CCPR1L: %05u",CCPR1L);
//		lcd_gotoxy(0,1);
//		printf("v: %3.2f",v);
	}
}
void sendchar (char data){		
	while (TXIF==0){}
	TXREG = data;
}

void sendstring (const char* s){
	while(*s){
		sendchar(*s++);
	}
}
void interrupt ngat()
{	
	if(T0IF)
	{	
		dem++;
		if(dem ==250)
			{
				dem=0;
				xung=TMR1;
				if(v<20.0){CCPR1L=CCPR1L+2;}
				else{CCPR1L=CCPR1L-2;}
				TMR1=0;
			}
	}
if(RCIF)
	{
		rx_data=RCREG;
	}
	RCIF=0;
	TMR0 = 6;
	T0IF = 0;	
	TMR0=7;
	T0IF=0;
} 
void pwm_10bit(int data_pwm)
{
CCPR1L=data_pwm/4;
DC1B1=DC1B0=0;
if((data_pwm &2) ==1) DC1B1 = 1;
if((data_pwm &1) ==1) DC1B0 = 1;
}
void putch(char c)
{
	lcd_putc(c);
}
void tx_init()  //ham gui du lieu
{
	SPBRGH = 0x02 ;
	SPBRG =  0x08 ;
	SYNC = 0; BRGH =1; BRG16 = 1;
	TX9 =0; 
	TXEN = 1;
	SPEN =1;
	CREN=1;
}
void rx_init()  //ham nhan du lieu
{
	SPBRGH = 0x02 ;
	SPBRG =  0x08 ;
	SYNC = 0; BRGH =1; BRG16 = 1;
	RX9 =0; 
	SPEN =1;
}
