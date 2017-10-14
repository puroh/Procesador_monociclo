`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2017 12:05:16
// Design Name: 
// Module Name: memoria_intrucciones
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


module memoriaintrucciones(direinstru,instru);

input [31:0] direinstru;
output wire [31:0] instru;

reg [255:0] registro_rom [31:0];


assign instru = registro_rom[direinstru];
 
initial begin

registro_rom[0] = 32'b00000000_00000000_00000000_00000000;
registro_rom[1] = 32'b00000000_00000000_00000000_00000001;
registro_rom[2] = 32'b00000000_00000000_00000000_00000010;




end
 
endmodule
