`timescale 1ns / 1ps
module BCD2SEVEN (
    input clk,
    input [3:0] Dig_one,
    input [3:0] Dig_two,
    input [3:0] Dig_three,
    input [3:0] Dig_four,
    output  [15:0] Seg_Out
    );

reg [6:0] Seg;
reg [7:0] Count = 0;
reg [4:0] Count_Latch = 5'b00000;
reg [4:0] temp;

always @(posedge clk) 
begin
    if (Count == 48)
    begin
        temp = 5'b10000;

        if (Dig_one == 0) 
        begin
            Seg = 7'b1110111;
        end
        else if (Dig_one == 1) 
        begin
            Seg = 7'b0100100;
        end
        else if (Dig_one == 2) 
        begin
            Seg = 7'b0011111;
        end
        else if (Dig_one == 3) 
        begin
            Seg = 7'b0111110;
        end
        else if (Dig_one == 4) 
        begin
            Seg = 7'b1101100;
        end
        else if (Dig_one == 5) 
        begin
            Seg = 7'b1111010;
        end
        else if (Dig_one == 6) 
        begin
            Seg = 7'b1111011;
        end
        else if (Dig_one == 7) 
        begin
            Seg = 7'b0110100;
        end
        else if (Dig_one == 8) 
        begin
            Seg = 7'b1111111;
        end
        else if (Dig_one == 9) 
        begin
            Seg = 7'b1111110;
        end
		  else if (Dig_one == 10) 
        begin
            Seg = 7'b1111101;
        end
		  else if (Dig_one == 11) 
        begin
            Seg = 7'b1101011;
        end
		  else if (Dig_one == 12) 
        begin
            Seg = 7'b1010011;
        end
		  else if (Dig_one == 13) 
        begin
            Seg = 7'b0101111;
        end
		  else if (Dig_one == 14) 
        begin
            Seg = 7'b1011011;
        end
		  else if (Dig_one == 15) 
        begin
            Seg = 7'b1011001;
        end
    end
    else if (Count == 32) 
    begin
    	temp = 5'b01000;

        if (Dig_two == 0) 
        begin
            Seg = 7'b1110111;
        end
        else if (Dig_two == 1) 
        begin
            Seg = 7'b0100100;
        end
        else if (Dig_two == 2) 
        begin
            Seg = 7'b0011111;
        end
        else if (Dig_two == 3) 
        begin
            Seg = 7'b0111110;
        end
        else if (Dig_two == 4) 
        begin
            Seg = 7'b1101100;
        end
        else if (Dig_two == 5) 
        begin
            Seg = 7'b1111010;
        end
        else if (Dig_two == 6) 
        begin
            Seg = 7'b1111011;
        end
        else if (Dig_two == 7) 
        begin
            Seg = 7'b0110100;
        end
        else if (Dig_two == 8) 
        begin
            Seg = 7'b1111111;
        end
        else if (Dig_two == 9) 
        begin
            Seg = 7'b1111110;
        end
		  else if (Dig_one == 10) 
        begin
            Seg = 7'b1111101;
        end
		  else if (Dig_one == 11) 
        begin
            Seg = 7'b1101011;
        end
		  else if (Dig_one == 12) 
        begin
            Seg = 7'b1010011;
        end
		  else if (Dig_one == 13) 
        begin
            Seg = 7'b0101111;
        end
		  else if (Dig_one == 14) 
        begin
            Seg = 7'b1011011;
        end
		  else if (Dig_one == 15) 
        begin
            Seg = 7'b1011001;
        end
    end
    else if (Count == 16) 
    begin
        temp = 5'b00010;

        if (Dig_three == 0) 
        begin
            Seg = 7'b1110111;
        end
        else if (Dig_three == 1) 
        begin
            Seg = 7'b0100100;
        end
        else if (Dig_three == 2) 
        begin
            Seg = 7'b0011111;
        end
        else if (Dig_three == 3) 
        begin
            Seg = 7'b0111110;
        end
        else if (Dig_three == 4) 
        begin
            Seg = 7'b1101100;
        end
        else if (Dig_three == 5) 
        begin
            Seg = 7'b1111010;
        end
        else if (Dig_three == 6) 
        begin
            Seg = 7'b1111011;
        end
        else if (Dig_three == 7) 
        begin
            Seg = 7'b0110100;
        end
        else if (Dig_three == 8) 
        begin
            Seg = 7'b1111111;
        end
        else if (Dig_three == 9) 
        begin
            Seg = 7'b1111110;
        end
		  else if (Dig_one == 10) 
        begin
            Seg = 7'b1111101;
        end
		  else if (Dig_one == 11) 
        begin
            Seg = 7'b1101011;
        end
		  else if (Dig_one == 12) 
        begin
            Seg = 7'b1010011;
        end
		  else if (Dig_one == 13) 
        begin
            Seg = 7'b0101111;
        end
		  else if (Dig_one == 14) 
        begin
            Seg = 7'b1011011;
        end
		  else if (Dig_one == 15) 
        begin
            Seg = 7'b1011001;
        end
    end
    else if (Count == 0) 
    begin
        temp = 5'b00001;

        if (Dig_four == 0) 
        begin
            Seg = 7'b1110111;
        end
        else if (Dig_four == 1) 
        begin
            Seg = 7'b0100100;
        end
        else if (Dig_four == 2) 
        begin
            Seg = 7'b0011111;
        end
        else if (Dig_four == 3) 
        begin
            Seg = 7'b0111110;
        end
        else if (Dig_four == 4) 
        begin
            Seg = 7'b1101100;
        end
        else if (Dig_four == 5) 
        begin
            Seg = 7'b1111010;
        end
        else if (Dig_four == 6) 
        begin
            Seg = 7'b1111011;
        end
        else if (Dig_four == 7) 
        begin
            Seg = 7'b0110100;
        end
        else if (Dig_four == 8) 
        begin
            Seg = 7'b1111111;
        end
        else if (Dig_four == 9) 
        begin
            Seg = 7'b1111110;
        end
		  else if (Dig_one == 10) 
        begin
            Seg = 7'b1111101;
        end
		  else if (Dig_one == 11) 
        begin
            Seg = 7'b1101011;
        end
		  else if (Dig_one == 12) 
        begin
            Seg = 7'b1010011;
        end
		  else if (Dig_one == 13) 
        begin
            Seg = 7'b0101111;
        end
		  else if (Dig_one == 14) 
        begin
            Seg = 7'b1011011;
        end
		  else if (Dig_one == 15) 
        begin
            Seg = 7'b1011001;
        end
    end

    Count = Count + 1;
    
    if (Count == 64)
    begin
        Count = 0;
    end
end

assign Seg_Out[0] = 0;
assign Seg_Out[8] = 0;
assign Seg_Out[9] = 0;
assign Seg_Out[15] = 0;
assign Seg_Out[7:1] = Seg;
assign Seg_Out[14:10] = temp;
                
endmodule