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
    input [31:0] Direc;
    input [31:0] Datain;
    input LeerMem;//bit
    output reg [31:0] Dataout;
    
reg [255:0] ROM [31:0];
wire [31:0] Dataout1;
reg CSram1;
reg CSram2;
wire CSrom;
 
sram sram1(.clk(clk),
           .CSram(CSram1),
           .Direc(Direc),
           .Datain(Datain),
           .LeerMem(LeerMem),
           .Dataout(Dataout1),
           .EscrMem(EscrMem)
           );
sram sram2(.clk(clk),
           .CSram(CSram2),
           .Direc(Direc),
           .Datain(Datain),
           .LeerMem(LeerMem),
           .Dataout(Dataout1),
           .EscrMem(EscrMem)
           );

assign CSrom = (Direc[8])&EscrMem; 
         
always @ (posedge clk) 
begin

if(Direc[31:8]==24'b1111_1111_1111_1111_1111_1111)
    begin
        CSram1=1'b1;
        CSram2=1'b0;
    end
else if(Direc[31:8]==24'b1111_1111_1111_1111_1111_1110)
    begin
        CSram1=1'b0;
        CSram2=1'b1;
    end
else
    begin
         CSram1=1'b0;
         CSram2=1'b0;
    end
      
    if (CSrom==1)
        begin
            Dataout = ROM[Direc[7:0]];
        end
    else
        begin
        
            Dataout = Dataout1;
        end
   end
endmodule

