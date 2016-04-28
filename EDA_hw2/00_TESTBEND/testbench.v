`timescale 50ns/1ps
`define CLK 10

module testbench;

reg clk ,rst;
reg  [15:0]in;
wire [15:0]sqrt;

square_root_finder square_root_finder1(.clk(clk), .rst(rst), .in(in), .sqrt(sqrt));

always begin #(`CLK/2) clk = ~ clk; end
    initial begin
    clk = 1'b1;
    rst = 1'b0;
    in = 16'd00;
    // up = in;
    // low = 19'd00;
    // g = 19'd03072;
    #20 in = 16'd4;
    #20 rst = 1'b1;


    `ifdef RTL
	    $fsdbDumpfile("square_root_finder.fsdb");
		$fsdbDumpvars;
		`endif
    `ifdef GATE
	    $sdf_annotate("../02_SYN/Netlist/square_root_finder_syn.sdf" , square_root_finder1);
        $fsdbDumpfile("square_root_finder_syn.fsdb");
        $fsdbDumpvars;
	    `endif
    # 300 $finish;
  end
endmodule