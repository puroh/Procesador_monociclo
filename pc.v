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
	input Saltoincond,
	input [31:0] extSigno, 
	input oZero,
    input clk,
    input reset,
	input [27:0]instru,
    output wire [31:0] direinstru
    );
    
    
	wire [31:0] sum2sum;
    wire [31:0] salSum2;
	wire FuentePC; // salida de la and, entrada del mux
	wire [31:0] sal2PC;
	reg [31:0] mux2mux;
	//wire [31:0] a; 

    parameter init = 0;
    
    assign direinstru = reset==1 ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 :sal2PC ;
    assign FuentePC = SaltoCond & oZero;
    assign salSum2 =  extSigno+ {extSigno[29:0],2'b00};
    assign sum2sum = direinstru +1;
    assign sal2PC = (Saltoincond)? {sum2sum[31:28],instru[27:0]} : mux2mux;
	 
    
    //****************************
    //REVISAR SIGUIENTE LINEA
    //assign direinstru= (direinstru==32)? 0 : direinstru;
   
 
    always @(posedge clk)
        begin
            if (FuentePC==1)
                begin
                   mux2mux = salSum2;
                end
                 
            else
				begin
                    mux2mux = sum2sum;          
				end

		
            
                     /*    
            if (direinstru == 255)
                begin
                   sum2sum = 0;
                end
            else
                   sum2sum = direinstru;*/
        end
            
    endmodule
