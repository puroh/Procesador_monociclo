`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2017 14:13:13
// Design Name: 
// Module Name: mux4
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


module mux4(
    input [31:0] inMem,
    input [31:0] inALU,
    input inControl,
    
    output wire [31:0] out
    );
    
    assign out = (inControl==1)?inMem:inALU;
    /*always @(inControl)
        begin
            if (inControl==1)
                out=inMem;
            else
                out=inALU;
        end

	always @(inControl) begin  
  		$display("mux presente out=%h, inControl=%h",out,inControl);
	end*/
endmodule
