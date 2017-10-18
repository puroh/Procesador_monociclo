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


module pc(
    input  SaltoCond,
	input [31:0] extSigno,
	input oZero,
    input clk,
    output wire [31:0] direinstrux 
    );
    wire [31:0] ext2;
	wire [31:0] sum2sum;
    wire [31:0] salSum2;
	wire FuentePC; // salida de la and
	wire [31:0] toPC;
	//wire [3:0] varCuatro;
	
	
	parameter varCuatro=3'b100;
	
	sumador sum2(
                .a(sum2sum),
                .b(ext2),
                .s(salSum2)
                );
     mux4 mod_mux(
                 .inMem(salSum2),
                 .inALU(sum2sum),
                 .inControl(FuentePC),
                 .out(toPC)//(toPC)                
                   );
                  
      pcBlock pcu(
            .in(toPC),
            .clk(clk),
            .salida(direinstrux)
            );
      sumador sum1(
                .a(direinstrux),
                .b(varCuatro),
                .s(sum2sum)
                   );
	assign ext2=extSigno<<2;
                   
    assign FuentePC= SaltoCond & oZero;

       
endmodule