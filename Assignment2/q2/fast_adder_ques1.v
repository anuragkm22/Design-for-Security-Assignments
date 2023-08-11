`timescale 1ns / 1ps


module fast_adder(p,q,cin,clk,result,carry,operation);


input [63:0] p,q;
input clk,operation,cin;
output  [63:0] result;
output  carry;

wire [63:0] p_reg,q_reg;
wire [63:0] sum_wire;
wire cout_wire;

carry_chain_sum_old testdut(p_reg,q_reg,cin,sum_wire,cout_wire);

assign q_reg=(operation)?(~q+1):q;
assign p_reg=p;
assign result=sum_wire;
assign carry=cout_wire;




endmodule
