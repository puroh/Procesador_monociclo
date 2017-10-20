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
    input reset,
    output wire [31:0] direinstru
    );
    
    
	reg [31:0] sum2sum;
    wire [31:0] salSum2;
	wire FuentePC; // salida de la and
	reg [31:0] aux;
	wire [31:0] auxx; 

    parameter init = 0;
    
    assign direinstru = reset==1 ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 : aux;
    //assign sum2sum = reset==1 ? 32'b0000_0000_0000_0000_0000_0000_0000_0000:sum2sum;
    //assign salSum2 = (reset==1) ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 : salSum2;
    
    //assign aux = (~FuentePC) ? salSum2 : sum2sum;
    assign FuentePC = SaltoCond & oZero;
    assign salSum2 =  extSigno+ auxx;
    assign auxx=({extSigno[29:0],2'b00});
 
    always @(posedge clk)
        begin
            if (FuentePC==1)
                begin
                   aux <= salSum2;
                end
                 
                else
                    aux <= sum2sum;
                        
            
        end
      
    always @(posedge clk)
        begin
            
            sum2sum <= direinstru +1;
            
             
            
            if (direinstru == 255)
                begin
                   sum2sum = 0;
                end
            else
                   sum2sum = direinstru;
        end
        /*
        initial begin
            //direinstru=0;
            //salSum2=0;
            sum2sum=32'b0000_0000_0000_0000_0000_0000_0000_0000;
            end*/
            
    endmodule