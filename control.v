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
parameter [8:0] op1 = 9'b100100010; 
parameter [8:0] op2 = 9'b011110000; 
parameter [8:0] op3 = 9'bx1x001000; 
parameter [8:0] op4 = 9'bx0x000101; 

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
        6'b000000: aux=op1;
        6'b100011: aux=op2;
        6'b101011: aux=op3;
        6'b000100: aux=op4;
        default:   aux=op1;        
    endcase

end

assign RegDest      = aux[8];
assign FuenteALU    = aux[7];
assign MemaReg      = aux[6];
assign EscrReg      = aux[5];
assign LeerMem      = aux[4];
assign EscrMem      = aux[3];
assign SaltoCond    = aux[2];
assign ALUOp        = aux[1:0];

endmodule
