`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2017 08:53:47
// Design Name: 
// Module Name: pc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pcBlock_tb;
	reg [31:0] in;
	reg [31:0] out;
	reg clk;

pc uut(
	.in(in),
	.out(out),
	.clk(clk)
);

always
begin
	clk=1'b0;
	#50;
	clk=1'b1;
	#50;
end

initial 
begin
	in=32'b1000_1000_1000_1000_1000_1000_1000_1000;
	#100;
	in=32'b1100_1000_1000_1000_1000_1000_1000_1000;
	#100;
	in=32'b0000_1000_1000_1000_1000_1000_1000_1000;
	#100;
end

endmodule

