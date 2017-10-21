`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2017 04:04:41
// Design Name: 
// Module Name: controlALU
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


module controlALU(
    input [1:0] ALUop,
    input [5:0] instru,
    input clk,
    output reg [2:0]contALU
    );
    
    always @(posedge clk)
    begin
        case ({ALUop,instru})
            
                8'b00xxxxxx:contALU=   3'b010;
                8'b00xxxxxx:contALU=   3'b010;
                8'b01xxxxxx:contALU=   3'b110;                                
                8'b10100000:contALU=   3'b010;
                8'b10100010:contALU=   3'b110;
                8'b10100100:contALU=   3'b000;
                8'b10100101:contALU=   3'b001;
                8'b10101010:contALU=   3'b111;
                default:    contALU=   3'b101;
                                  
        endcase   
            
        
    end
endmodule
