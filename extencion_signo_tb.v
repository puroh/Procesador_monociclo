`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2017 16:07:16
// Design Name: 
// Module Name: extencion_signo_tb
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


module extencion_signo_tb;
    
    reg [15:0] instr;
    wire [31:0] oinstr;
    
    extencion_signo uut2 (
        .instr(instr),
        .oinstr(oinstr)
    );
    
    initial begin 
    
    instr = 16'b1111111111111111;
    #50;
    
    instr = 16'b0111111111111111;
    #50;
    
    
    end
    
endmodule
