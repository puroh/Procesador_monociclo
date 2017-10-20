`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 01:44:16
// Design Name: 
// Module Name: pcBlock
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


module pcBlock(
    input [31:0] in,
    input clk,
    output reg [31:0] salida    
    );
    //reg [31:0] aux;
    //assign salida=in;
	//parameter aux=0;
   /* always @(posedge clk)
        begin
			if (in==32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx)
				begin
            	   salida = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
				end
			else
				begin
				    salida = in;
				end
            
        end*/
	
	always @(posedge clk)
		begin
			salida=in;
 			$display("pc block presente in=%h, salida=%h",in,salida);

		end
endmodule
