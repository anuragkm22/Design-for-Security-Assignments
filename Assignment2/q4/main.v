`timescale 1ns / 1ps

module mainmodule(p,q,rst,clk,result,c1,c2);
    input [255:0]p; input [255:0]q; input rst;
    input clk;
    output reg[255:0]result;
    output wire c1,c2;
    reg cin1,cin2;
    reg[255:0]storage1,storage2;
    reg[255:0]p_reg,q_reg;
    reg [255:0 ]prime = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
    reg [2:0]counter;
    reg [255:0]prime_reg;
    wire [63:0] storage1_wire, storage2_wire;
    fast_adder_ques1 d1(p_reg[63:0],q_reg[63:0],cin1,clk,storage1_wire,c1,0);
    fast_adder_ques1 d2(prime_reg[63:0],storage1[255:192],cin2,clk,storage2_wire,c2,1);

    always@(posedge clk)
    begin
    if(rst)
    begin
    p_reg<=p;
    q_reg<=q;
    prime_reg<=prime;
    storage1<=0;
    storage2<=0;
    cin1=1'd0;
    cin2=1'd0;
    counter<=3'b000;
    $display("%h",result);
    end
    else begin
     p_reg<=p_reg>>64;
     q_reg<=q_reg>>64;
     cin1<=c1;
     cin2<=c2;
   
     storage1<= {storage1_wire,storage1[255:64]};
     storage2<={storage2_wire,storage2[255:64]};
     if(counter>1) begin
     prime_reg<=prime_reg>>64;
     end
     counter<=counter+1;
     if(counter==3'b100)
     begin
         result<=storage2[255]?storage1:storage2;
     end
     end
    end

     
endmodule
