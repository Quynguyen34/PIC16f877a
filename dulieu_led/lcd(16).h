#ifndef _LCD_H_
#define _LCD_H_

#include <htc.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ	20000000
#endif


/* Display ON/OFF Control defines */
#define DON         0b00001111  /* Display on      */
#define DOFF        0b00001011  /* Display off     */
#define CURSOR_ON   0b00001111  /* Cursor on       */
#define CURSOR_OFF  0b00001101  /* Cursor off      */
#define BLINK_ON    0b00001111  /* Cursor Blink    */
#define BLINK_OFF   0b00001110  /* Cursor No Blink */

/* Cursor or Display Shift defines */
#define SHIFT_CUR_LEFT    0b00000100  /* Cursor shifts to the left   */
#define SHIFT_CUR_RIGHT   0b00000101  /* Cursor shifts to the right  */
#define SHIFT_DISP_LEFT   0b00000110  /* Display shifts to the left  */
#define SHIFT_DISP_RIGHT  0b00000111  /* Display shifts to the right */

/* Function Set defines */
#define FOUR_BIT   0b00101100  /* 4-bit Interface               */
#define EIGHT_BIT  0b00111100  /* 8-bit Interface               */
#define LINE_5X7   0b00110000  /* 5x7 characters, single line   */
#define LINE_5X10  0b00110100  /* 5x10 characters               */
#define LINES_5X7  0b00111000  /* 5x7 characters, multiple line */


/* Pins mapping */
#ifndef		LCD_RS
#define	LCD_RS		RD1
#define	LCD_EN		RD3
#define	LCD_RW		RD2
#define	LCD_DATA4	RD4
#define	LCD_DATA5	RD5
#define	LCD_DATA6	RD6
#define	LCD_DATA7	RD7

#define	LCD_RS_TRIS		TRISD1
#define	LCD_EN_TRIS		TRISD3
#define	LCD_RW_TRIS		TRISD2
#define	LCD_DATA4_TRIS	TRISD4
#define	LCD_DATA5_TRIS	TRISD5
#define	LCD_DATA6_TRIS	TRISD6
#define	LCD_DATA7_TRIS	TRISD7
#endif

//typedef unsigned char		unsigned char;				// 8-bit unsigned

typedef union _BYTE_VAL
{
    unsigned char Val;
    struct
    {
        unsigned char b0:1;
        unsigned char b1:1;
        unsigned char b2:1;
        unsigned char b3:1;
        unsigned char b4:1;
        unsigned char b5:1;
        unsigned char b6:1;
        unsigned char b7:1;
    } bits;
} BYTE_VAL;

void lcd_init();
unsigned char lcd_busy();
unsigned char lcd_get_byte(unsigned char rs);
void lcd_put_byte(unsigned char a,unsigned char b);
void lcd_gotoxy(unsigned char col, unsigned char row);
void lcd_putc(char c);
void lcd_puts(const char* s);
#endif