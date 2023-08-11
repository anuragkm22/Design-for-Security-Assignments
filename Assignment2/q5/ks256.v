module ks256(p,q,prod,result);
//module ks256(a,b,prod);

input  [255:0] p, q;
output [510:0] prod;
output [232:0] result;
wire   [510:0] prod;
wire [232:0] result;
wire [255:0] r0,r1,r2,temp;
wire[510:0] a,b,c;
wire[510:0] t;

 

ks128 first(p[127:0],q[127:0],r0);
ks128 second(p[255:128],q[255:128], r1);
ks128 third(p[127:0]^q[127:0],p[255:128]^q[255:128],r2);
assign temp = r0^r1^r2;

assign a = {256'b0,r0};
assign b = {256'b0,r1};
assign c = {256'b0,r2};

assign b = b<<128;
assign c = c<<256;

assign prod = ((a^b)^c);
assign result=(((prod[232:0]^{1'b0,prod[464:233]})^{prod[391:233],73'b0})^{159'b0,prod[464:392]})^{85'b0,prod[464:392],74'b0};

	
endmodule