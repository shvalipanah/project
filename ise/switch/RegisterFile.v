`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:52 05/05/2017 
// Design Name: 
// Module Name:    RegisterFile 
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
/////////////////////////////////////////////////////s/////////////////////////////
module RegisterFile(
	 input clk,
    input [2:0] op1,
    input [2:0] op2,
    input [7:0] data,
	 input en_write,
    output reg [7:0] out1,
    output reg [7:0] out2
    );
	 reg [7:0]registers [7:0];
	 initial 
	 begin 
	 registers[0]=8'b00000000;
	 registers[1]=8'b00000000;
	 registers[2]=8'b00000000;
	 registers[3]=8'b00000000;
	 registers[4]=8'b00000000;
	 registers[5]=8'b00000000;
	 registers[6]=8'b00000000;
	 registers[7]=8'b00000000; 
	 end
	 always @(posedge clk)
	 begin
		if (en_write)
			registers[op1] = data;
	 end
	 always @(op1 or op2)
	 begin
		 out1 = registers[op1];
		 out2 = registers[op2];
	 end
	 
	 


endmodule
