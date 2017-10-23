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
    
    
	wire [31:0] sum2sum;
    wire [31:0] salSum2;
	wire FuentePC; // salida de la and, entrada del mux
	reg [31:0] aux;
	//wire [31:0] auxx; 

    parameter init = 0;
    
    assign direinstru = reset==1 ? 32'b0000_0000_0000_0000_0000_0000_0000_0000 : aux;
    assign FuentePC = SaltoCond & oZero;
    assign salSum2 =  extSigno+ {extSigno[29:0],2'b00};
    assign sum2sum = direinstru +1;
    
    //****************************
    //REVISAR SIGUIENTE LINEA
    //assign direinstru= (direinstru==32)? 0 : direinstru;
   
 
    always @(posedge clk)
        begin
            if (FuentePC==1)
                begin
                   aux = salSum2;
                end
                 
            else
				begin
                    aux = sum2sum;          
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
