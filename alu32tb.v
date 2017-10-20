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


module alu32tb();

reg [31:0] iA;
reg [31:0] iB;
reg [2:0] ctrl;

wire [31:0]out;
wire oCarry;

alu32 uut(.iA(iA),.iB(iB),.ctrl(ctrl),.out(out),.oCarry(oCarry));

initial begin

    iA = 32'b1;
    iB = 32'b1;

ctrl = 3'b000;

#100; 

iA = 32'b1;
iB = 32'b0;

ctrl = 3'b000;

#100;
$finish;
end 


endmodule
