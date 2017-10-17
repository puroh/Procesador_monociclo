`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2017 13:19:42
// Design Name: 
// Module Name: memoria_datos
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


module memoria_datos(clk,EscrMem,Direc,Datain,LeerMem,Dataout);
    input clk;
    input EscrMem;//bit
    input [7:0] Direc;
    input [31:0] Datain;
    input LeerMem;//bit
    output reg [31:0] Dataout;
    
reg [255:0] ROM [31:0];

always @ (posedge clk) 
begin

    if (EscrMem==1)
        begin
            ROM[Direc] = Datain;
        end
    else if (LeerMem==1)
        begin
            Dataout = ROM[Direc];
        end
    else
        begin
        end
            Dataout = Dataout;
        end
   
endmodule
