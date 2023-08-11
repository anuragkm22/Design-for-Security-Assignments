`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 13:02:52
// Design Name: 
// Module Name: multiplier_255bit
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


module multiplier_255bit(in1,in2,clk,rst,out);

input [254:0] in1,in2; 
input clk,rst;
output [254:0] out; 

reg [254:0] mul_in1;
wire [47:0] m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10; 
wire [237:0] r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10; 
wire [518:0] pp_0, pp_1, pp_2, pp_3, pp_4,pp_5, pp_6, pp_7, pp_8, pp_9,pp_10; 
wire [510:0] temp_0, temp_1, temp_2, temp_3, temp_4, temp_5, temp_6, temp_7, temp_8, temp_9,temp_10;
wire [510:0] temp_11, temp_12, temp_13, temp_14, temp_15, sum_mult, carry_mult, sum_mult_reg, carry_mult_reg;
reg [1:0]sel;
reg reg_sel; 
reg [3:0] pstate,nstate;
always@(posedge clk)
begin
if(rst)
begin
    mul_in1<=in1;
    end
else
begin
    mul_in1<={17'd0,mul_in1[254:17]};
    end
end


xbip_dsp48_macro_0 dsp1 (.CLK(clk),.SEL(sel),.A({1'd0,in2[23:0]}),.B({1'd0,mul_in1[16:0]}),.P(m0));
xbip_dsp48_macro_0 dsp2 (.CLK(clk),.SEL(sel),.A({1'd0,in2[47:24]}),.B({1'd0,mul_in1[16:0]}),.P(m1));
xbip_dsp48_macro_0 dsp3 (.CLK(clk),.SEL(sel),.A({1'd0,in2[71:48]}),.B({1'd0,mul_in1[16:0]}),.P(m2));
xbip_dsp48_macro_0 dsp4 (.CLK(clk),.SEL(sel),.A({1'd0,in2[95:72]}),.B({1'd0,mul_in1[16:0]}),.P(m3));
xbip_dsp48_macro_0 dsp5 (.CLK(clk),.SEL(sel),.A({1'd0,in2[119:96]}),.B({1'd0,mul_in1[16:0]}),.P(m4));
xbip_dsp48_macro_0 dsp6 (.CLK(clk),.SEL(sel),.A({1'd0,in2[143:120]}),.B({1'd0,mul_in1[16:0]}),.P(m5));
xbip_dsp48_macro_0 dsp7 (.CLK(clk),.SEL(sel),.A({1'd0,in2[167:144]}),.B({1'd0,mul_in1[16:0]}),.P(m6));
xbip_dsp48_macro_0 dsp8 (.CLK(clk),.SEL(sel),.A({1'd0,in2[191:168]}),.B({1'd0,mul_in1[16:0]}),.P(m7));
xbip_dsp48_macro_0 dsp9 (.CLK(clk),.SEL(sel),.A({1'd0,in2[215:192]}),.B({1'd0,mul_in1[16:0]}),.P(m8));
xbip_dsp48_macro_0 dsp10 (.CLK(clk),.SEL(sel),.A({1'd0,in2[239:216]}),.B({1'd0,mul_in1[16:0]}),.P(m9));
xbip_dsp48_macro_0 dsp11 (.CLK(clk),.SEL(sel),.A({10'd0,in2[254:240]}),.B({1'd0,mul_in1[16:0]}),.P(m10));


register_file reg1(m0[16:0], clk,rst,reg_sel,r0);
register_file reg2(m1[16:0], clk,rst,reg_sel,r1);
register_file reg3(m2[16:0], clk,rst,reg_sel,r2);
register_file reg4(m3[16:0], clk,rst,reg_sel,r3);
register_file reg5(m4[16:0], clk,rst,reg_sel,r4);
register_file reg6(m5[16:0], clk,rst,reg_sel,r5);
register_file reg7(m6[16:0], clk,rst,reg_sel,r6);
register_file reg8(m7[16:0], clk,rst,reg_sel,r7);
register_file reg9(m8[16:0], clk,rst,reg_sel,r8);
register_file reg10(m9[16:0], clk,rst,reg_sel,r9);
register_file reg11(m10[16:0], clk,rst,reg_sel,r10);

assign pp_0 = {240'h0,m0[40:0],r0[237:0]};  
assign pp_1 = {216'h0,m1[40:0],r1[237:0],24'h0};  
assign pp_2 = {192'h0,m2[40:0],r2[237:0],48'h0};  
assign pp_3 = {168'h0,m3[40:0],r3[237:0],72'h0};  
assign pp_4 = {144'h0,m4[40:0],r4[237:0],96'h0};  
assign pp_5 = {120'h0,m5[40:0],r5[237:0],120'h0};  
assign pp_6 = {96'h0,m6[40:0],r6[237:0],144'h0};  
assign pp_7 = {72'h0,m7[40:0],r3[237:0],168'h0};  
assign pp_8 = {48'h0,m8[40:0],r4[237:0],192'h0};  
assign pp_9 = {24'h0,m9[40:0],r5[237:0],216'h0}; 
assign pp_10 = {m10[40:0],r6[237:0],240'h0};  

three_two_compressor_wrapper #(.W(510)) comp1(pp_0[509:0], pp_1[509:0],pp_2[509:0],temp_0,temp_1);  

three_two_compressor_wrapper #(.W(510)) comp2(pp_3[509:0], pp_4[509:0],pp_5[509:0],temp_2,temp_3);  

three_two_compressor_wrapper #(.W(510)) comp3(pp_6[509:0], pp_7[509:0],pp_8[509:0],temp_4,temp_5);  

three_two_compressor_wrapper #(.W(510)) comp4(pp_9[509:0], pp_10[509:0],temp_0[509:0],temp_6,temp_7);  

three_two_compressor_wrapper #(.W(510)) comp5(temp_1[509:0], temp_2[509:0],temp_3[509:0],temp_8,temp_9);  

three_two_compressor_wrapper #(.W(510)) comp6(temp_4[509:0], temp_5[509:0],temp_6[509:0],temp_10,temp_11);  

three_two_compressor_wrapper #(.W(510)) comp7(temp_7[509:0], temp_8[509:0],temp_9[509:0],temp_12,temp_13);  
                                                                            
three_two_compressor_wrapper #(.W(510)) comp8(temp_10[509:0], temp_11[509:0],temp_12[509:0],temp_14,temp_15);  

three_two_compressor_wrapper #(.W(510)) comp9(temp_13[509:0], temp_14[509:0],temp_15[509:0],sum_mult,carry_mult);  
                                                                            

//Here we have to add these two sum_mult,carry_mult using simple ripple carry adder to get the final (255x255) multiplication result.
wire [510:0] product;
ripple_carry_adder ripplecarryadder(sum_mult, carry_mult, 0, product);
//assign prod=sum_mult+carry_mult;
//fast_adder_ques1 adder(sum_mult,carry_mult,clk,prod,carry);
wire carry;
//wire[254:0] c0, c1,c3;
//wire[260:0] c2;
//wire[5:0] c4;
//wire[255:0] c5;

//assign c1 = prod[510:255];
//assign c0 = prod[254:0];



wire [255:0] op;

wire[254:0] r0, r1,r3,r4;
wire [259:0] r1_temp;
wire [260:0] temp_resul;
wire [254:0] r4_temp;

wire [254:0] p=255'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;

assign r1 = product[509:255];
assign r0 = product[254:0];

assign r1_temp=(r1<<4)+(r1<<1)+r1;

assign temp_resul = (r1_temp+{5'b0,r0});

assign r4 = temp_resul[260:255];
assign r3 = temp_resul[254:0];

assign r4_temp=(r4<<4)+(r4<<1)+r4; 
assign op = r4_temp+r3;


assign out=op[254]?(op-p):op;

 
//control unit

always@(posedge clk)
begin
if(rst)
    pstate<=4'd0;
else
    pstate<=nstate;
end

always@(pstate)
begin
case(pstate)
    4'd0: begin sel<=2'd2;reg_sel<=0;end
    4'd15: begin sel<=2'd1;reg_sel<=0;end 
default: begin sel<=2'd0;reg_sel<=1;end
endcase
end

always@(pstate)
begin
case(pstate)
    4'd15: begin nstate<=4'd15;end
default: begin nstate<=pstate+1;end
endcase
end
endmodule
