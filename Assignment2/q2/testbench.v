`timescale 1ns / 1ps



module test;
reg[63:0] p;
reg[63:0] q;
reg clk;
reg cin;
wire[63:0] result;
wire carry;
reg operation;


fast_adder addsub(.p(p), .q(q),.cin(cin), .clk(clk), .result(result), .carry(carry),.operation(operation));

initial begin
 $monitor($time ," result=%h, carry=%b",result,carry);
 end
 
initial begin
clk=0;
end
always #5 clk=~clk;
  
  initial begin
 
 #5 p=64'h0000000000001111; #5 q=64'h0000000000000101;
 #5 cin=1'b0;
 #5 operation=1'b1;
  
 #5 p=64'h0000000000001111; #5 q=64'h0000000000000101;
 #5 cin=1'b0;
 #5 operation=1'b0;

  end

    initial begin
    #500 $finish;
    end


endmodule

       