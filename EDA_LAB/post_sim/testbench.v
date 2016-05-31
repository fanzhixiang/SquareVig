`timescale 1ns/1ps

`define CLK 21.6

module testbench;

reg clk ,rst;
reg  [15:0]in;
wire [31:0]sqrt;

square_root_finder square_root_finder1(.clk(clk), .rst(rst), .in(in), .sqrt(sqrt));

always begin #(`CLK/2) clk = ~ clk; end

initial begin
    clk = 1'b0;
    rst = 1'b0;
    in =  16'd0;
    #170 in = 16'd3; rst = 1'b1;
    #100 rst = 1'b1;

    #1500 in = 16'd7; rst = 1'b0;
    #100 rst = 1'b1;

    #1500 in = 16'd11; rst = 1'b0;
    #100 rst = 1'b1;

    #1500 $finish;
end




 initial begin
$sdf_annotate("./square_root_finder.sdf", square_root_finder1);
        $fsdbDumpfile("square_root_finder_syn.fsdb");
        $fsdbDumpvars;
//    #6000 $finish;
  end

endmodule
