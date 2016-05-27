`timescale 1ns/1ps

module testbench;
reg [7:0] A_in, B_in;
reg clk, rst_n;
wire [7:0] out;
wire done;

gcd U1(.A_in(A_in),.B_in(B_in),.out(out),.clk(clk),.rst_n(rst_n),.done(done));

parameter CYCLE = 100;
always #(CYCLE/2.0) clk=~clk;

initial
begin
clk=0;
A_in=8'd70;
B_in=8'd140;
rst_n=0;
#300 rst_n=1;
#5000 A_in=8'd18;
    B_in=8'd170;
    rst_n=0;
#300  rst_n=1;
#5000 A_in=8'd180;
    B_in=8'd160;
    rst_n=0;
#300  rst_n=1;
#5000 $finish;
end

initial $sdf_annotate("../run/gcd.sdf", U1);

initial
begin
$fsdbDumpfile("gcd.fsdb");
$fsdbDumpvars;
end
endmodule

