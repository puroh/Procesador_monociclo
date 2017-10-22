`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2017 10:51:16
// Design Name: 
// Module Name: controlALU_tb
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


module controlALU_tb();
    reg [1:0]ALUop;
    reg [5:0]instru;
    reg clk;
    wire [2:0] contALU;
    
 controlALU uut(
 		.ALUop(ALUop),
		.instru(instru),
		.clk(clk),
		.contALU(contALU)
 );
	always begin

		clk=1'b1;
		#100;
		clk=1'b0;
		#100;

		end

initial begin
	ALUop=2'b10;
	instru=6'bxxxxxx;
	#100;
	ALUop=2'b10;
	instru=6'bxxxxxx;
	#100;
	ALUop=2'b10;
	instru=6'b1xxxxx;
	#100;
    ALUop=2'b10;
    instru=6'b101010;
end
endmodule
