`timescale 1ns/1ps

module testbench;


square_root_finder square_root_finder1();




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

  end







endmodule
