`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 01:44:16
// Design Name: 
// Module Name: pcBlock
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


module pcBlock(
    input [31:0]in,
    input clk,
    output  [31:0] salida    
    );
    //reg [31:0] aux;
    assign salida=in;
   /* always @(posedge clk)
        begin
            salida = in;
            
        end*/
endmodule
