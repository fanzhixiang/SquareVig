`timescale 1ns/1ps

`define CLK 50

module testbench;

reg clk ,rst;
reg  [15:0]in;
wire [31:0]sqrt;

square_root_finder square_root_finder1(.clk(clk), .rst(rst), .in(in), .sqrt(sqrt));

always begin #(`CLK/2) clk = ~ clk; end

initial begin
    clk = 1'b0;
    rst = 1'b1;
    in =  16'd0;
    #170 in = 16'd3; rst = 1'b0;
    #100 rst = 1'b1;

    #1500 in = 16'd7; rst = 1'b0;
    #100 rst = 1'b1;

    #1500 in = 16'd11; rst = 1'b0;
    #100 rst = 1'b1;

    #1500 $finish;
end




 initial begin
    `ifdef RTL
	    $fsdbDumpfile("square_root_finder.fsdb");
		$fsdbDumpvars;
		`endif
    `ifdef GATE
	    $sdf_annotate("../02_SYN/Netlist/square_root_finder_syn.sdf" , square_root_finder1);
        $fsdbDumpfile("square_root_finder_syn.fsdb");
        $fsdbDumpvars;
	    `endif
    #6000 $finish;
  end
endmodule
