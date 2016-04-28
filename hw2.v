`timescale  1ns/10ps

module betterGuess(x, g, out);
    input [1 : 0] x, g;
    output [1 : 0] out;
    reg [1 : 0] out;            // output must be register
    always                     //since this is an intial block, must have reg
                                // also: wire is for connection outside the begin end block while rwg is for the inside.
        begin
            out = ((g + x/g) / 2);
        end

endmodule //


// bool closeEnough(double a, double x) {
// 	return (fabs(a - x) < 0.001);
// }

// module closeEnough(a, x, out, clk);
//     input [1 : 0] a, x;
//     output [1 : 0] out;
//     reg [1 : 0] out;
//     always@(clk)
//         begin
//             if ((a - x) < 0.001)
//                 out = 1;
//             else
//                 out = 0;
//         end
// endmodule
