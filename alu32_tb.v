`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2017 09:56:51
// Design Name: 
// Module Name: ALU_tb
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


module alu32_tb();

reg [31:0] data1;
reg [31:0] data2;
reg [2:0] ctrl;
reg clk;
wire oCarry;
wire oZero;
wire [31:0]out;

alu32 uut(
	.data1(data1),
	.data2(data2),
	.ctrl(ctrl),
	.clk(clk),
	.oCarry(oCarry),
	.oZero(oZero),
	.out(out)
	);

always begin

#50 clk = 1'b1;
#50 clk = 1'b0;
end



initial begin

    data1 = 32'b11111111_11111111_11111111_11111111;
    data2 = 32'b11111111_11111111_11111111_11111111;
	ctrl = 3'b000;//suma

	#100; 


	data1 = 32'b11111111_11111111_11111111_11111111;
	data2 = 32'b00000000_00000000_00000000_00000001;
	ctrl = 3'b000;//suma

	#100;//200
	
	data1 = 32'b11111111_11111111_11111111_11111111;
    data2 = 32'b11111111_11111111_11111111_11111111;
	ctrl = 3'b001;//resta

	#100; //300


	data1 = 32'b11111111_11111111_11111111_11111111;
	data2 = 32'b00000000_00000000_00000000_00000001;
	ctrl = 3'b001;//resta

	#100;//400

	data1 = 32'b00000000_00000000_00000000_00000000;
	data2 = 32'b00000000_00000000_00000000_00000000;
	ctrl = 3'b001;//resta

	#100; //500

	data1 = 32'b11111111_11111111_11111111_11111111;
    data2 = 32'b11111111_11111111_11111111_11111111;
	ctrl = 3'b010;//and

	#100; //600


	data1 = 32'b11111111_11111111_11111111_11111111;
	data2 = 32'b00000000_00001000_00000000_00000000;
	ctrl = 3'b010;//and

	#100;//700

	data1 = 32'b11111111_11111111_11111111_11111111;
    data2 = 32'b11111111_11111111_11111111_11111111;
	ctrl = 3'b011;//xor

	#100; //800


	data1 = 32'b11111111_11111111_11111111_11111111;
	data2 = 32'b00000000_00000000_00000000_00000000;
	ctrl = 3'b011;//xor

	#100; //900

	data1 = 32'b11111111_11111111_11111111_11111111;
    data2 = 32'b11111111_11111111_11111111_11111111;
	ctrl = 3'b100;//or

	#100; //1000


	data1 = 32'b11111111_11111111_11111111_11111110;
	data2 = 32'b00000000_00000000_00000000_00000000;
	ctrl = 3'b100;//or

	#100; //1100


end 


endmodule
