
`timescale 1ns / 1ps

module mainmodule_tb;

    // Inputs
    reg [255:0] p;
    reg [255:0] q;
    reg rst;
    reg clk;

    // Outputs
    wire [255:0] result;
    wire c1,c2;

    // Instantiate the design under test (DUT)
    mainmodule test (
        .p(p),
        .q(q),
        .rst(rst),
        .clk(clk),
        .result(result),
        .c1(c1),
        .c2(c2)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset generation
    initial begin
        rst = 1;
        #10 rst = 0;
    end

    // Test case 1
    initial begin
//        // Input values
       p = 256'h0000000000000000000000000000000000000000000000000000000000000101;
        q = 256'h0000000000000000000000000000000000000000000000000000000000000001;
      #20 $display("Result: %h", result);
       
  end

//    // Test case 2
//     initial begin
//         // Input values
//        a = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//         b = 256'h0000000000000000000000000000000000000000000000000000000000000001;
//        #20 $display("Sum: %h", sum);
////        // Expected output
////        //assert(sum === 256'h0000000000000000000000000000000000000000000000000000000000000000);
////        //assert(carry === 1'b1);
//    end

    // Test case 3
//    initial begin
//        // Input values
//        a = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//        b = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
//        #20 $display("Sum: %h, Carry: %b", sum, carry);
//        // Expected output
//        //assert(sum === 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE);
//        //assert(carry === 1'b1);
//    end

    // Test case 4
//    initial begin
//        // Input values
//        a = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
//        b = 256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED;
//        #20 $display("Sum: %h, Carry: %b", sum, carry);
//        // Expected output
//        //assert(sum === 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA);
//        //assert(carry === 1'b0);
//    end

endmodule