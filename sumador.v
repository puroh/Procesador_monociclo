`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2017 08:53:47
// Design Name: 
// Module Name: sumador
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

module sumador(
	input [31:0] a,
	input [31:0] b,
	//input cIn,
	//output cOut,
	output [31:0] s
	);
assign s = a + b;
//assign s = ~a & ~b & cIn + ~a & b & ~cIn + a & ~b & ~cIn + a & b & cIn;

//assign cOut = b & cIn + a & cIn + ab;

endmodule
