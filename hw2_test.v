`timescale  1ns/10ps
`define cycle 1

module betterGuess_test;

// wire and reg
// reg clk;
reg [1:0]a, b;
reg clk;
wire [1:0]out;

// clock gen
// initial  clk = 0;
// always begin
//     #(`cycle/2) clk = ~clk;
//     end
initial  clk = 0;
always #(`cycle/2) clk = ~clk;
betterGuess X1(a, b, out);
initial begin
    @(posedge clk)
        a = 1'b0;
        b = 1'b0;
        begin $display($time,"a=%b, b=%b, out=%b", a, b, out);
        $finish; end
    @(posedge clk)
        a = 1'b1;
        b = 1'b1;
        begin $display($time,"a=%b, b=%b, out=%b", a, b, out);
        $finish; end
    end
initial begin
    `ifdef RTL
	    $fsdbDumpfile("hw2.fsdb");
		$fsdbDumpvars;
		`endif
    // `ifdef GATE
	//     $sdf_annotate("../02_SYN/Netlist/hw2_test.sdf" , square_root_finder1);
    //     $fsdbDumpfile("square_root_finder_syn.fsdb");
    //     $fsdbDumpvars;
	//     `endif
endmodule
