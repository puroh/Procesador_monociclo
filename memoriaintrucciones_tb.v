`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2017 15:38:23
// Design Name: 
// Module Name: memoria_instrucciones_tb
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


module memoriaintrucciones_tb;

   reg [5:0] direinstru;
   wire [31:0] instru;
    
memoriaintrucciones uut1(
    .direinstru(direinstru),
    .instru(instru)
 );
    
initial begin

direinstru = 6'b000000;
#50;
direinstru = 6'b000001;
#50;
direinstru = 6'b000010;
#50;



end

endmodule
