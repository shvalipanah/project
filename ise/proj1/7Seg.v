`timescale 1ns / 1ps
module 7Seg(input clk,
input [12:0],
output o_SEGData,
output o_SEGLatch);

wire [15:0]bcdData;
wire [15:0]bcd_out;
 BCD BCD_instance (
         .Binary(i_dataPiso),   //13 bit
        .Thousands(bcdData[15:12]),
        .Hundreds(bcdData[11:8]),
        .Tens(bcdData[7:4]),
        .Ones(bcdData[3:0])
    
);


 BCD2SEVEN Seven_Seg_instance (
    .clk(clk),
    .Dig_one(bcdData[3:0]),
    .Dig_two(bcdData[7:4]),
    .Dig_three(bcdData[11:8]),
    .Dig_four(bcdData[15:12]),
    .Seg_Out(bcd_out)
    );

LED_Drive led_Drive(  
     .data(bcd_out),
    .clk(clk),
    .ledData(o_SEGData),
    .ledLatch(o_SEGLatch));



endmodule
