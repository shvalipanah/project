`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:29:47 04/29/2017 
// Design Name: 
// Module Name:    debounce 
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
module debounce(
	input clk,
    input resetpin,
    input debugpin,
	 input [7:0] pc,
    output reg [7:0] out
        );
	 reg [7:0] pctemp;
	 reg [18:0]timer = 19'b0;
	 reg [18:0]timerdebug = 19'b0;
	 reg flagreset = 0;
	 reg flagdebug =0;
	 always @(posedge clk)
	 begin
		if(resetpin==0)
		begin
			if ( timer == 19'b1111010000100100000)
			begin
				flagreset = 1;			
			end
			else 
			begin 
				timer = timer + 1;
			end
		end
	if(flagreset == 1 && resetpin == 1)
	begin
		timer = 0;
		flagreset = 0;
		pctemp = 0;
		out = pctemp;	
	end
	
	//******************************************************
	
	
	else if(debugpin ==0)
		begin
		if ( timerdebug == 19'b1111010000100100000)
		begin
			flagdebug = 1;			
		end
		else 
		begin 
			timerdebug = timerdebug + 1;
		end
	end
	if(flagdebug == 1 && debugpin == 1)
	begin
		timerdebug = 0;
		flagdebug = 0;
		pctemp = pc+1;
		out = pctemp;
		
	end
end
endmodule
