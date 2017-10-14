`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2017 09:04:37
// Design Name: 
// Module Name: bankregister_tb
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


module bankregister_tb;

    reg [5:0] RegLe1;
    reg [5:0] RegLe2;
    reg [5:0] RegEscr;
    reg EscrReg;
    reg clk;
    reg [31:0] datain;
    wire [31:0] data1;
    wire [31:0] data2;
    
    bankregister uut(
    .RegLe1(RegLe1),
    .RegLe2(RegLe2),
    .RegEscr(RegEscr),
    .EscrReg(EscrReg),
    .clk(clk),
    .datain(datain),
    .data1(data1),
    .data2(data2)
    );
    
    always 
        begin
            clk = 1'b0;
            #50;
            clk = 1'b1;
            #50;
        end          
        
initial begin

RegLe1 = 6'b000000;
RegLe2 = 6'b000001;
RegEscr = 6'b000000;
EscrReg = 1'b0;
datain = 32'b00000000_00000000_00000000_00000000;

#50;

RegLe1 = 6'b000000;
RegLe2 = 6'b000001;
RegEscr = 6'b000000;
EscrReg = 1'b1;
datain = 32'b00000000_00000000_00000000_00000001;

#50;

RegLe1 = 6'b000000;
RegLe2 = 6'b000001;
RegEscr = 6'b000000;
EscrReg = 1'b0;
datain = 32'b00000000_00000000_00000000_00000001;

#50;

end
    
endmodule
