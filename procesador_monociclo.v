`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2017 16:26:18
// Design Name: 
// Module Name: procesador_monociclo
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


module procesador_monociclo(

);

 reg clk;
 reg [5:0] direinstru;
 wire [31:0] instru;
 
 wire RegDest;
 wire SaltoCond;
 wire LeerMem;
 wire MemaReg;
 wire [1:0]ALUOp;
 wire  EscrMem;
 wire FuenteALU;
 wire EscrReg;
 wire [31:0] data1;
 wire [31:0] data2;
 wire [31:0] datain;
 wire [31:0] oinstru;
 wire ctrl;
 wire oCarry;
 wire oZero;
 wire [31:0] out;
 wire [31:0] Dataout;
 
 //Para los mux
 wire [5:0] RegEscr1;
 wire [31:0] data21;
 wire [31:0] dataEscr;
 
 //para pc
  wire [31:0] ext2;
  wire [31:0] sum2sum;
  wire [31:0] salSum2;
  wire FuentePC;
  wire [31:0] toPC;
  wire [31:0]direinstrux;
  wire reset;
 parameter varCuatro=3'b100;
 
 
 memoriaintrucciones memoriainstru(
            .direinstru(direinstrux),
            .instru(instru),
			.clk(clk)			
             );
 
 control control(.instru(instru[31:26]),
                 .clk(clk),
                 .RegDest(RegDest),
                 .SaltoCond(SaltoCond),
                 .LeerMem(LeerMem),
                 .MemaReg(MemaReg),
                 .ALUOp(ALUOp),
                 .EscrMem(EscrMem),
                 .FuenteALU(FuenteALU),
                 .EscrReg(EscrReg)          
                 );
 
 bankregister registros(.RegLe1(instru[25:21]),
                        .RegLe2(instru[20:16]),
                        .RegEscr(RegEscr1), //mux
                        .EscrReg(EscrReg),
                        .clk(clk),
                        .datain(dataEscr), // Mux
                        .data1(data1),
                        .data2(data2)           
                        );
                        
 extencion_signo extencion(.instr(instru[15:0]),
                           .oinstr(oinstru)                        
                           ); 
   
 alu32 alu(.data1(data1),
           .data2(data21), //mux
           .ctrl(ctrl),
           .clk(clk),
           .oCarry(oCarry),
           .oZero(oZero),
           .out(out)   
           );
 
 memoria_datos datos(.clk(clk),
                     .EscrMem(EscrMem),
                     .Direc(out), 
                     .Datain(data2),
                     .LeerMem(LeerMem),
                     .Dataout(Dataout)
                     );
   pc pro_counter(
           .SaltoCond(SaltoCond),
            .extSigno(oinstru),
            .oZero(oZero),
            .direinstru(direinstrux),
            .clk(clk),   
            .reset(reset)           
   );
   
   controlALU contrALU(
        .ALUop(ALUOp),
        .instru(instru),
        .contALU(ctrl),
        .clk(clk)
        );


assign RegEscr1 = RegDest ? instru[15:11]: instru[20:16];
assign data21 = FuenteALU ? oinstru : data2;                         
assign dataEscr = MemaReg ? Dataout : out;

endmodule
