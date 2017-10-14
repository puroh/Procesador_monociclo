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

reg [31:0] iA;
reg [31:0] iB;
reg [2:0] ctrl;
reg clk;
wire oCarry;
wire oZero;
wire [31:0]out;

alu32 uut(.iA(iA),.iB(iB),.ctrl(ctrl),.clk(clk),.oCarry(oCarry),.oZero(oZero),.out(out));

always begin

#50 clk = 1'b1;
#50 clk = 1'b0;
end



initial begin

    iA = 32'b11111111_11111111_11111111_11111111;
    iB = 32'b11111111_11111111_11111111_11111111;

ctrl = 3'b000;

#100; 


iA = 32'b11111111_11111111_11111111_11111111;
iB = 32'b00000000_00000000_00000000_00000000;

ctrl = 3'b000;

#100;


end 


endmodule