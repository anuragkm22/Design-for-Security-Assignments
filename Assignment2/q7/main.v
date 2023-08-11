`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 16:27:18
// Design Name: 
// Module Name: monto
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


module monto(p,q,clk,rst,result,finish);
input [254:0]p,q;
input clk,rst;
reg [254:0 ]prime= 255'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
output [254:0]result;
output finish;
reg[254:0]k;
integer counter;
wire [254:0]r,r1,r2,r3,k_temp,k_temp2;
reg [254:0] r4;

// multiplier


always @(posedge clk)
begin
if(rst)
begin
k<=0;
counter<=0;
r4<=p;
end
else
begin
k<=k_temp3;
r4<=r4>>1;
counter=counter+1;
end
end

assign r={255{r4[0]}};
assign r1=r&q;
assign k_temp=k+r1;

assign r2={255{k_temp[0]}};
assign r3=r2&p;
assign k_temp2=k_temp+r3;
assign k_temp3=k_temp2>>1;

assign result=(k>=prime)?(k-prime):k;

assign finish=(counter==255)?1:0;




endmodule


