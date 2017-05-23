#ifndef F_CPU
#define F_CPU 1600000UL
#endif
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

void init_io();
uint16_t read_adc(unsigned char adc_input);
uint16_t temp = 0;
int main()
{
	init_io();
	while (1)
	{
		temp = read_adc(0)/2;
		
		while((UCSRA & (1<<UDRE)) == 0);
		printf("%d",temp);
		UDR = temp;
	//	while((UCSRA & (1<<UDRE)) == 0);
	//	UDR = temp<<4;
		_delay_ms(200);// it's just a guess yet
	}
/*	//uint16_t adc_result0;
	//int temp;
	//char buffer[10];
	

	// initialize ad//c and l//cd
	//adc_init();
//	lcd_init(LCD_DISP_ON_CURSOR);

	
//	lcd_clrscr();
//	lcd_gotoxy(0,0);
	
	

	//_delay_ms(50);

	while(1)
	{
		adc_result0 = adc_read(0);      // read a//dc value at PA0
		
		temp=adc_result0/2.0;   // finding the temperature
		
		
		
	//	lcd_gotoxy(0,0);
	//	lcd_puts("A//dc=");
		itoa(adc_result0,buffer,10);   //display ADC value
	//	lcd_puts(buffer);
		
	//	lcd_gotoxy(0,1);
		itoa(temp,buffer,10);
	//	lcd_puts("Temperature=");   //display temperature
	//	lcd_puts(buffer);
		_delay_ms(50);
		
	}*/
}

void init_io()
{
	UCSRA = 0x00;
	UCSRB = 0x08;
	UCSRC = 0x86;
	UBRRH = 0x00;
	UBRRL = 0x33;
	// AREF = AVcc
	ADMUX = (1<<REFS0); // chose adc0 with av//cc voltage

	//ADC Enable and pre//scaler of 128
	
	ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1);
}

uint16_t read_adc(unsigned char adc_input)
{
	// select the corresponding channel 0~7
	
	ADMUX = ADMUX |adc_input;
	// start single conversion
	// write '1' to ADSC
	_delay_us(20);
	ADCSRA |= 0x40;
	// wait for conversion to complete
	// ADSC becomes '0' again
	
	while((ADCSRA & 0x10)== 0);
	ADCSRA |= 0x10;
	printf("produse");
	return (ADC);
}


