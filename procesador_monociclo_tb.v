`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2017 03:04:53
// Design Name: 
// Module Name: procesador_monociclo_tb
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


module procesador_monociclo_tb();
    reg clk;
    reg reset;

	procesador_monociclo uut(
		.clk(clk),
		.reset(reset)
	);

	always begin
		clk=1'b1; 
		#5;
		clk=1'b0;
		#5;
	end

initial begin
	reset=1'b1;
	#11;
	reset=1'b0;
	#11;
	

end
	
endmodule
