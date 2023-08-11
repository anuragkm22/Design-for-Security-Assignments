`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 01:57:28
// Design Name: 
// Module Name: 64_bit_adder
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


module a64_bit_adder(p,q,clk,result,carry );

input [63:0] p,q;
input clk;
output reg [63:0] result;
output reg carry;

reg [63:0] a_reg,b_reg;
wire [63:0] sum_wire;
wire cout_wire;

carryadder cad(a_reg,b_reg,1'd0,sum_wire,cout_wire);

always@(posedge clk)
begin
a_reg<=p;
b_reg<=q;
result<=sum_wire;
carry<=cout_wire;
end

carry_lookahead_adder carryadder(a_reg,b_reg,1'd0,sum_wire,cout_wire);

endmodule

