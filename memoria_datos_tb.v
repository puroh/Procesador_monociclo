`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2017 19:59:43
// Design Name: 
// Module Name: memoria_datos_tb
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


module memoria_datos_tb();
	reg clk;
    reg EscrMem;
    reg [7:0] Direc;
    reg [31:0] Datain;
    reg LeerMem;
    wire [31:0] Dataout;

	memoria_datos uut(
		.clk(clk),
		.EscrMem(EscrMem),
		.Direc(Direc),
		.Datain(Datain),
		.LeerMem(LeerMem),
		.Dataout(Dataout)
		);

always
	begin
		clk = 1'b0;
        #50;
        clk = 1'b1;
        #50;
	end

initial begin
	EscrMem	=	1'b1;
	Direc 	=	8'b0000_0001;
	Datain	=	32'b0000_0000_0000_0000_0000_0000_0110_0000;
	LeerMem	=	1'b0;
	#100
	EscrMem	=	1'b0;
	Direc 	=	8'b0000_0001;
	Datain	=	32'b0000_0000_0000_0000_0000_0000_0000_0011;
	LeerMem	=	1'b1;
	#100
	EscrMem	=	1'b1;
	Direc 	=	8'b0000_0010;
	Datain	=	32'b0000_0000_0000_0000_0000_0000_0000_1100;
	LeerMem	=	1'b0;
	#100
	EscrMem	=	1'b0;
	Direc 	=	8'b0000_0011;
	Datain	=	32'b0000_0000_0000_0000_0000_0000_1100_0000;
	LeerMem	=	1'b0;
	#100;
end


    
endmodule
