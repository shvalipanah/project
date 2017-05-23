
.CSEG
.ORG 0x00

main:

ldi r17,10

ldi r16,0xff
out DDRC,r16
out DDRB,r16
out DDRA,r16

ldi r16,0x00
out UCSRA,r16

ldi r16,0x10
out UCSRB,r16

ldi r16,0x86
out UCSRC,r16

ldi r16,0x00
out UBRRH,r16

ldi r16,0x33
out UBRRL,r16

loop :
	loop1:
		sbis UCSRA,RXC
		rjmp loop1
	in r16,UDR
	ldi r18,0
	add r18,r16
	out PORTA,r18
	clr r1
	loop2: // r16<-digit0,r1<- digit1
		inc r1
		subi r16,10
		brge loop2
	dec r1
	add r16,r17
	lsl r1
	lsl r16
	// find number for 7-seg
	ldi r31,HIGH(code7seg<<1)// shift left 1 position = Multipliziere* 2 ; Z high byte
	ldi r30,LOW(code7seg<<1)
	clr r2	; set the pointer to z+r1
	add r30, r1
	adc r31, r2
	lpm r1,Z;7seg 
	out PORTB,r1

	ldi r31,HIGH(code7seg<<1)// shift left 1 position = Multipliziere* 2 ; Z high byte
	ldi r30,LOW(code7seg<<1)
	clr r2	; set the pointer to z+r1
	add r30, r16
	adc r31, r2
	lpm r16,Z;7seg 
	out PORTC,r16
	jmp loop

.ORG 0x0064
code7seg:
.DW 0x03,0xf3,0x25,0x0d,0x99,0x49,0x41,0x1f,0x01,0x09//
	
		
		
		