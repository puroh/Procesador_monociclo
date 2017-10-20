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
	wire [31:0] salida;
	reg clk;

pcBlock uut(
	.in(in),
	.salida(salida),
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
	in=32'b0000_0000_0000_0000_0000_0000_0000_0100;
	#100;
	in=32'b0000_0000_0000_0000_0000_0000_0000_0100;
    #100;
    in=32'b0000_0000_0000_0000_0000_0000_0000_0100;
    #100;
	/*
	in=32'b1100_1000_1000_1000_1000_1000_1000_1000;
	#100;
	in=32'b0000_1000_1000_1000_1000_1000_1000_1000;
	#100;
	
	in=32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx;
	#100;
	in=32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx;
    #100;*/
end

endmodule

