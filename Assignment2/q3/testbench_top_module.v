`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 12:36:51
// Design Name: 
// Module Name: testbench_top_module
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


module testbench_top_module;
reg[63:0] p;
reg[63:0] q;
reg clk;
wire[63:0] result;
wire carry;

a64_bit_adder dut(.p(p), .q(q), .clk(clk), .result(result), .carry(carry));

initial begin
 $monitor($time," result=%b, carry=%b",result,carry);
 end
 
initial begin
clk=0;
end

  always #5 clk = ~clk;
  
  initial begin
 
  #5 p=64'h0000000000000111;
  #5 q=64'h0000000000000011;
  end

    initial begin
    #500
    $finish;
    end


endmodule
