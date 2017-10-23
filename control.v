`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2017 12:13:15
// Design Name: 
// Module Name: control
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


module control(instru,clk,RegDest,SaltoCond,LeerMem,MemaReg,ALUOp,EscrMem,FuenteALU,EscrReg);

input [5:0]instru;
input clk;
output wire RegDest;
output wire SaltoCond;
output wire LeerMem;
output wire MemaReg;
output wire [1:0]ALUOp;
output wire EscrMem;
output wire FuenteALU;
output wire EscrReg;

reg [8:0]aux;


always @ (posedge clk)
begin 
    case(instru)
        6'b000_000: aux=9'b100_100_010;
        6'b100_011: aux=9'b0_1111_0000;//lectura
        6'b101_011: aux=9'bx1x001000;//carga
        6'b000_100: aux=9'bx0x000101;
        default:  aux=9'b100_100_010;        
    endcase

end

assign RegDest      = aux[8];
assign FuenteALU    = aux[7];//
assign MemaReg      = aux[6];
assign EscrReg      = aux[5];
assign LeerMem      = aux[4];//
assign EscrMem      = aux[3];
assign SaltoCond    = aux[2];
assign ALUOp        = aux[1:0];

endmodule
