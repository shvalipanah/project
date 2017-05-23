
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:21 03/10/2017 
// Design Name: 
// Module Name:    sevenSegDriver 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sevenSegDriver(
    input clk,
    input [7:0] input_data,
    output reg latch,
    output reg out_data
    );
	
///////////////////////// set binary to bcd

reg [3:0] tousend;
reg [3:0] hundred;
reg [3:0] ten;
reg [3:0] one;

reg [15:0] Thousands;
reg [15:0] Hundreds;
reg [15:0] Tens;
reg [15:0] Ones;
reg [15:0] temp_in;
reg [5:0] counter;
 initial 
	counter = 0;
always @(input_data)
	begin
	
	one = input_data[3:0];
	ten = input_data[7:4];
	/* tousend = 0;
	 hundred = 0;
	 ten = 0;
	 one = 0;
	 
	 for(i=12;i>=0;i=i-1)////2^12 is in 5 7-seg
		begin
			//add 3 if >5
			if(tousend >=5)
				tousend = tousend+3;
			if(hundred >= 5)
				hundred=hundred+3;
			if(ten >= 5)
				ten = ten + 3;
			if(one >= 5)
				one = one + 3;
				//shift left one
				tousend = tousend << 1;
				tousend[0] = hundred[3];
				hundred = hundred << 1;
				hundred[0] = ten[3];
				ten = ten << 1;
				ten[0] = one[3];
				one = one << 1;
			 one[0] = data_in[i];
				//one[0] = temp_in[i];	
				
		end*/
end
always@(posedge clk)
	begin
    /*  case(tousend) 
		   4'b0000: Thousands = 16'b11101110_00000100; //0
			4'b0001: Thousands = 16'b01001000_00000100; //1
			4'b0010: Thousands = 16'b00111110_00000100; //2
			4'b0011: Thousands = 16'b01111100_00000100; //3
			4'b0100:	Thousands = 16'b11011000_00000100; //4
			4'b0101: Thousands = 16'b11110100_00000100; //5
			4'b0110: Thousands = 16'b11110110_00000100; //6
			4'b0111: Thousands = 16'b01101000_00000100; //7
			4'b1000: Thousands = 16'b11111110_00000100; //8
			4'b1001: Thousands = 16'b11111100_00000100; //9
		endcase

		case(hundred)
		   4'b0000: Hundreds = 16'b11101110_00001000; //0
			4'b0001: Hundreds = 16'b01001000_00001000; //1
			4'b0010: Hundreds = 16'b00111110_00001000; //2
			4'b0011: Hundreds = 16'b01111100_00001000; //3
			4'b0100:	Hundreds = 16'b11011000_00001000; //4
			4'b0101: Hundreds = 16'b11110100_00001000; //5
			4'b0110: Hundreds = 16'b11110110_00001000; //6
			4'b0111: Hundreds = 16'b01101000_00001000; //7
			4'b1000: Hundreds = 16'b11111110_00001000; //8
			4'b1001: Hundreds = 16'b11111100_00001000; //9
		endcase*/

		case(ten)
		   4'b0000: Tens = 16'b100000011101110; //0
			4'b0001: Tens = 16'b100000001001000; //1
			4'b0010: Tens = 16'b100000000111110; //2
			4'b0011: Tens = 16'b100000001111100; //3
			4'b0100:	Tens = 16'b100000011011000; //4
			4'b0101: Tens = 16'b100000011110100; //5
			4'b0110: Tens = 16'b100000011110110; //6
			4'b0111: Tens = 16'b100000001101000; //7
			4'b1000: Tens = 16'b100000011111110; //8
			4'b1001: Tens = 16'b100000011111100; //9
			
			4'b1010: Tens = 16'b100000011111010; //10
			4'b1011: Tens = 16'b100000011010110; //11
			4'b1100: Tens = 16'b100000010100110; //12
			4'b1101: Tens = 16'b100000001011110; //13
			4'b1110: Tens = 16'b100000010110110; //14
			4'b1111: Tens = 16'b100000010110010; //15
		endcase
		
		case(one)
		   4'b0000: Ones = 16'b010000011101110; //0/////g
			4'b0001: Ones = 16'b010000001001000; //1
			4'b0010: Ones = 16'b010000000111110; //2
			4'b0011: Ones = 16'b010000001111100; //3
			4'b0100:	Ones = 16'b010000011011000; //4
			4'b0101: Ones = 16'b010000011110100; //5
			4'b0110: Ones = 16'b010000011110110; //6
			4'b0111: Ones = 16'b010000001101000; //7
			4'b1000: Ones = 16'b010000011111110; //8
			4'b1001: Ones = 16'b010000011111100; //9
			
			4'b1010: Ones = 16'b010000011111010; //10
			4'b1011: Ones = 16'b010000011010110; //11
			4'b1100: Ones = 16'b010000010100110; //12
			4'b1101: Ones = 16'b010000001011110; //13
			4'b1110: Ones = 16'b010000010110110; //14
			4'b1111: Ones = 16'b010000010110010; //15
		endcase

	
		////////////////////////////////////////////////////////////////////////
			 if ( counter < 15 && counter >= 0)   
			   begin
				   latch = 1;
					out_data = Ones[0];
					Ones = Ones >> 1'b1;
					counter = counter + 1;
					
			   end
			if( counter == 15) //////////////
						   begin
								out_data = Ones[0];
								Ones = Ones >> 1'b1;
								counter = counter + 1;
								latch = 0;
							end	
							
			if( counter < 31 && counter >= 16)
					begin
					   latch = 1;
						out_data = Tens[0];
						Tens = Tens >> 1'b1;
						counter = counter + 1;
					end
					
			if( counter == 31) //////////////
						   begin
								out_data = Tens[0];
								Tens = Tens >> 1'b1;
								counter = counter + 1;
								latch = 0;
								counter = 0;
							end	
						
			/*if( counter < 47 && counter >= 32)
						begin
						   latch = 1;
							data_out = Hundreds[0];
							Hundreds = Hundreds >> 1'b1;
							counter = counter + 1;
						end
			if( counter == 47) //////////////
						   begin
								data_out = Hundreds[0];
								Hundreds = Hundreds >> 1'b1;
								counter = counter + 1;
								latch = 0;
							end
						
						if( counter < 64 && counter >= 48)
							begin
							   latch = 1;
								data_out = Thousands[0];
								Thousands = Thousands >> 1'b1;
								counter = counter + 1;
							end
						
							if( counter == 63)
								begin
									data_out = Thousands[0];
									Thousands = Thousands >> 1'b1;
									counter = 0;
									latch = 0;
								end*/								
	end	
endmodule




