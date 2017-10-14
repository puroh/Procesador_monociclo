`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2017 16:39:46
// Design Name: 
// Module Name: bankregister
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


module bankregister(
    input [5:0] RegLe1,
    input [5:0] RegLe2,
    input [5:0] RegEscr,
    input EscrReg,
    input clk,
    input [31:0] datain,
    output reg [31:0] data1,
    output reg [31:0] data2
    );
    
reg [31:0] register [31:0];
wire [31:0] aux;

always @(posedge clk)
    begin    
    data1 = register[RegLe1];
    data2 = register[RegLe2];
    register[RegEscr] = aux;    

    end
    
    
initial begin

register[0] = 32'b00000000_00000000_00000000_00000000;
register[1] = 32'b00000000_00000000_00000000_00000001;
register[2] = 32'b00000000_00000000_00000000_00000001;
register[3] = 32'b00000000_00000000_00000000_00000001;
register[4] = 32'b00000000_00000000_00000000_00000001;
register[6] = 32'b00000000_00000000_00000000_00000001;
register[7] = 32'b00000000_00000000_00000000_00000001;
register[8] = 32'b00000000_00000000_00000000_00000001;
end   
 
assign aux = EscrReg ? datain : register[RegEscr];

endmodule
