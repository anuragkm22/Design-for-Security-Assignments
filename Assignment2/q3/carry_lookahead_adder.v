`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 02:05:40
// Design Name: 
// Module Name: carry_lookahead_adder
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


module carryadder(a,b,c_in,sum,c_out);


input [63:0] a,b;
input c_in;
output [63:0] sum;
output c_out;


wire[3:0] g,p;

four_bit_lookahead_carry_generator generation(g[3:0],p[3:0],c_in,G_4,P_4,c1,c2,c3,c4);

generate_16_bit_adder first(a[15:0],b[15:0],c_in,g[0],p[0],sum[15:0]);
generate_16_bit_adder second(a[31:16],b[31:16],c1,g[1],p[1],sum[31:16]);
generate_16_bit_adder third(a[47:32],b[47:32],c2,g[2],p[2],sum[47:32]);
generate_16_bit_adder fourth(a[63:48],b[63:48],c3,g[3],p[3],sum[63:48]);






assign c_out = c4;


endmodule
